require_relative "../citizen"

describe Citizen do
  describe "#can_vote?" do
    it "returns true if the citizen is 18 years old" do
      citizen = Citizen.new("Yann", "Klein", 18)
      expect(citizen.can_vote?).to eq(true)
    end
    it "returns false if the citizen is under 18 years old" do
      citizen = Citizen.new("Yann", "Klein", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end
  describe "#full_name" do
    it "returns Doug Berkley when passed doug and berkley" do
      citizen = Citizen.new("doug", "berkley", 23)
      expect(citizen.full_name).to eq("Doug Berkley")
    end
  end
end
