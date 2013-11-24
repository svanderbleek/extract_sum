require 'minitest/autorun'

class ExtractSumTest < MiniTest::Unit::TestCase
  def setup
    @sum = `cat test/test_input | bin/extract_sum`
  end

  def test_sums_numbers_in_input
    assert_equal("3029.73\n", @sum)
  end
end
