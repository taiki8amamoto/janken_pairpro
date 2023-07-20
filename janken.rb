class Player
  def hand
    puts "0~2の数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"

    input_hand = gets.chomp

    while true
			if input_hand == "0" || input_hand == "1" || input_hand == "2"
				return input_hand.to_i
			else
				puts "0~2の数字を入力してください。"
				puts "0:グー, 1:チョキ, 2:パー"
				input_hand = gets.chomp
			end
		end
		# player_hand = input_hand.to_i
  end
end
# player = Player.new
# puts player
class Enemy
	def hand
		rand(0..2)
	end
end

class Janken
	def pon(player_hand, enemy_hand)
		janken = ["グー", "チョキ", "パー"]
		puts "相手の手は#{janken[enemy_hand]}です。"
		if player_hand == enemy_hand
			puts "あいこ"
		elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
			puts "あなたの勝ちです"
      exit
		else
			puts "あなたの負けです"
      exit
		end
	end
end

class GameStart
  def self.jankenpon
    player = Player.new
    enemy = Enemy.new
    janken = Janken.new
    while true
      next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end
GameStart.jankenpon