# Triangle, pentagonal, and hexagonal numbers are generated by the following formulae:
#
# Triangle	 	Tn = n(n+1)/2	 	1, 3, 6, 10, 15, ...
# Pentagonal	 	Pn = n(3n−1)/2	 	1, 5, 12, 22, 35, ...
# Hexagonal	 	Hn = n(2n−1)	 	1, 6, 15, 28, 45, ...
#
# It can be verified that T285 = P165 = H143 = 40755.
#
# Find the next triangle number that is also pentagonal and hexagonal.

n = 40756
answer = 0
while answer == 0 do
  t = (n*(n+1))/2 
  
  if (1 + (8*t + 1)**0.5) % 4 == 0 && (1 + (24*t + 1)**0.5) % 6 == 0
    answer = t
    puts(answer)
  end

  n += 1
end

# Complete!
# Answer = 1533776805
