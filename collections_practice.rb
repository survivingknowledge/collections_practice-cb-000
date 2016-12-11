require 'pry'

def sort_array_asc(array)
  array.sort do |a,b|
    a <=> b
  end
end

def sort_array_desc(array)
  array.sort do | left, right|
    right <=> left
  end
end

def sort_array_char_count(array)
  array.sort do |left, right|
    left.length <=> right.length
  end
end

def swap_elements(array)
  array[1],array[2] = array[2],array[1]
  array
end

def swap_elements_from_to(array,index,dest)
  array[index], array[dest] = array[dest], array[index]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  collection = []
  array.each do |item|
    item[2] = "$"
    collection << item
  end
  collection
end

def find_a(array)
  array.find_all do |word|
    word.start_with?("a")
  end

  # using select method
    # array.select do |word|
    #   word[0] == "a"
    # end
end

def sum_array(array)
  sum = 0
  #array.each do |num|
    #sum+=num
  #end
  sum

  # using reduce method
    # array.reduce(:+)

  # using inject method (short)
     # array.inject(:+)

  # using inject method (long)
     # array.inject do |sum,x|
     #  sum + x
     # end
  # if you don't specify inject(x) it assume first value of |sum| as first element
  # sum is also a running total between each loop call
  array.inject do |sum,x|
    sum + x
  end
end

def add_s(array)
  #array.collect do |word|
    #if array[1] == word
      #word
    #else
      #word + "s"
    #end
  #end

  array.each_with_index.collect do |word,index|
    array[1] == word ? word : word << "s"
  end

end
