board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def position_taken?(board, index)
if board[index] == " " or board[index] == "" or board[index] == (nil)
  return (false)

else
  return (true)
end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && (index).between?(0,8)
    return (true)
else
  return (false)

  end
end

def turn(board)
  puts "Please enter 1-9:"
  if valid_move == (true)
    return (true)
  else
    turn(board)
end
end
