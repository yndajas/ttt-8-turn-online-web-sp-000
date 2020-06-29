def input_to_index(input)
  converted_input = input.to_i - 1
  converted_input
end

def position_taken?(board,index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def valid_move?(board,index)
index.between?(0,8) && !position_taken?(board,index)
end

def move(board,index,player="X")
  board[index] = player
  board
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(board,index)
    puts "Input invalid"
    return turn(board) # until loop doesn't end without 'return' here but I'm not 100% sure why it works with return
  end
  move(board,index,player="X")
  display_board(board)
end