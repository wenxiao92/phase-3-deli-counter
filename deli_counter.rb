# Write your code here.
def line(deliArray)
    if deliArray == [] #deliArray.empty?
        puts "The line is currently empty."
    else
        current_line = "The line is currently:"
        deliArray.each.with_index(1) do |person, num|
            current_line << " #{num}. #{person}"
        end
        puts current_line
    end
end


def take_a_number(deliArray, lastPerson)
    deliArray << lastPerson #adds last person to the end of the array of people. At least size of 1 if array is empty initially
    puts "Welcome, #{lastPerson}. You are number #{deliArray.index(lastPerson) + 1} in line."
    #can use deliArray.length instead of .index method
end

def now_serving(deliArray)
    if deliArray.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deliArray.first}."
    end
    deliArray.shift
end