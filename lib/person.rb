require 'pry'

# your code goes here
class Person

attr_reader :name, :bank_account, :happiness, :hygiene

attr_writer :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happy?
        @happiness > 7 ? true : false
    end
    
    def happiness=(value)
        if value > 10 
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else 
            @happiness = value

        end
    end

    def hygiene=(value)
        if value > 10 
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else 
            @hygiene = value

        end
    end

    def clean?
        self.hygiene >7 # full terinary not necessary
    end 

    def get_paid(amount)
        @bank_account = @bank_account + amount
        "all about the benjamins"
    end
    
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    #todo: finish take_bath, work_out

    def call_friend(friend)
    
    end
    
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather" 
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end


end
