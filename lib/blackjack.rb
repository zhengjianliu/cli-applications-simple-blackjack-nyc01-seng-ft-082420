require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game
  # code #end_game here(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  fc = deal_card
  sc = deal_card
  sum = fc + sc
  display_card_total(sum)
  sum
end

def hit?(sum)
  # code hit? here
  prompt_user
  input = get_user_input
  if input =="h"
    sum += deal_card
  elsif input =="s"
    sum = sum
  else
    invalid_command
    prompt_user
    input = get_user_input
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  while total <= 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
