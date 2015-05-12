require_relative 'rg_factory'

A = Factory.new(:a, :b, :c)
a = A.new("x", "y", "z")
a[0]
a[1]
a[2]
a[3]
a[-1]
a[:a]
a[:b]
a[:c]
a[:d]
a["a"]
a["b"]
a["c"]
a["d"]

B = Factory.new(:a, :b, :c) do
  def putparam
  	"It's #{@a}!"
  end
end

B.new("x", "y", "z").putparam