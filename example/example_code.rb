# Run `yardoc -e ../lib/yard-rspec example_code.rb`


class String
  # Pig latin of a String
  def pig_latin
    self[1..-1] + self[0] + "ay"
  end
end

# 
# Specs
# 
describe String do
  context 'monkey patch for pig latin' do

    describe '#pig_latin' do
      it "should be a pig!" do
        "hello".pig_latin.should == "ellohay"
      end

      it "should fail to be a pig!" do
        "hello".pig_latin.should == "hello"
      end

      context " with a context" do
        it "should fail to be a pig! in context" do
          "hello".pig_latin.should == "hellob"
        end
        context " with a context in a context" do
          it "should fail to be a pig! in context in a context " do
            "hello".pig_latin.should == "hellob"
          end
        end
      end
    end
  end
end
