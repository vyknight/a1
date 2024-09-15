module A1 where

{-
CSC324 — 2024F — Assignment 1

Intruoduction to Haskell, Recursion, Pattern Matching

Tasks

1. Small haskell functions: 
  (a) celsiusToFahrenheit
  (b) removeSecond
2. Recursive functions: 
  (a) collatz
  (b) betterFibonacci
    - Implement fibonacciHelper.
    - Answer 2 short answer questions.
  (c) factorialTail
3. Pattern Matching:
  (a) areaOrVolume
  [See Racket file for (b).]

Replace all "func = undefined" with a valid definition (or definitions) for "func".

IMPORTANT: You are NOT allowed to modify existing imports or add new imports.
-}

{-
CSC324 — 2024F — Assignment 1

Intruoduction to Haskell, Recursion, Pattern Matching

Tasks

1. Small haskell functions: 
  (a) celsiusToFahrenheit
  (b) removeSecond
2. Recursive functions: 
  (a) collatz
  (b) betterFibonacci
    - Implement fibonacciHelper.
    - Answer 2 short answer questions.
  (c) factorialTail
3. Pattern Matching:
  (a) areaOrVolume
  [See Racket file for (b).]

Replace all "func = undefined" with a valid definition (or definitions) for "func".

IMPORTANT: You are NOT allowed to modify existing imports or add new imports.
-}
{-
CSC324 — 2024F — Assignment 1

Intruoduction to Haskell, Recursion, Pattern Matching

Tasks

1. Small haskell functions: 
  (a) celsiusToFahrenheit
  (b) removeSecond
2. Recursive functions: 
  (a) collatz
  (b) betterFibonacci
    - Implement fibonacciHelper.
    - Answer 2 short answer questions.
  (c) factorialTail
3. Pattern Matching:
  (a) areaOrVolume
  [See Racket file for (b).]

Replace all "func = undefined" with a valid definition (or definitions) for "func".

IMPORTANT: You are NOT allowed to modify existing imports or add new imports.
-}

{-
CSC324 — 2024F — Assignment 1

Intruoduction to Haskell, Recursion, Pattern Matching

Tasks

1. Small haskell functions: 
  (a) celsiusToFahrenheit
  (b) removeSecond
2. Recursive functions: 
  (a) collatz
  (b) betterFibonacci
    - Implement fibonacciHelper.
    - Answer 2 short answer questions.
  (c) factorialTail
3. Pattern Matching:
  (a) areaOrVolume
  [See Racket file for (b).]

Replace all "func = undefined" with a valid definition (or definitions) for "func".

IMPORTANT: You are NOT allowed to modify existing imports or add new imports.
-}
{-
CSC324 — 2024F — Assignment 1

Intruoduction to Haskell, Recursion, Pattern Matching

Tasks

1. Small haskell functions: 
  (a) celsiusToFahrenheit
  (b) removeSecond
2. Recursive functions: 
  (a) collatz
  (b) betterFibonacci
    - Implement fibonacciHelper.
    - Answer 2 short answer questions.
  (c) factorialTail
3. Pattern Matching:
  (a) areaOrVolume
  [See Racket file for (b).]

Replace all "func = undefined" with a valid definition (or definitions) for "func".

IMPORTANT: You are NOT allowed to modify existing imports or add new imports.
-}

{-
CSC324 — 2024F — Assignment 1

Intruoduction to Haskell, Recursion, Pattern Matching

Tasks

1. Small haskell functions: 
  (a) celsiusToFahrenheit
  (b) removeSecond
2. Recursive functions: 
  (a) collatz
  (b) betterFibonacci
    - Implement fibonacciHelper.
    - Answer 2 short answer questions.
  (c) factorialTail
3. Pattern Matching:
  (a) areaOrVolume
  [See Racket file for (b).]

Replace all "func = undefined" with a valid definition (or definitions) for "func".

IMPORTANT: You are NOT allowed to modify existing imports or add new imports.
-}
{-
CSC324 — 2024F — Assignment 1

Intruoduction to Haskell, Recursion, Pattern Matching

Tasks

1. Small haskell functions: 
  (a) celsiusToFahrenheit
  (b) removeSecond
2. Recursive functions: 
  (a) collatz
  (b) betterFibonacci
    - Implement fibonacciHelper.
    - Answer 2 short answer questions.
  (c) factorialTail
3. Pattern Matching:
  (a) areaOrVolume
  [See Racket file for (b).]

Replace all "func = undefined" with a valid definition (or definitions) for "func".

IMPORTANT: You are NOT allowed to modify existing imports or add new imports.
-}

{-
CSC324 — 2024F — Assignment 1

Intruoduction to Haskell, Recursion, Pattern Matching

Tasks

1. Small haskell functions: 
  (a) celsiusToFahrenheit
  (b) removeSecond
2. Recursive functions: 
  (a) collatz
  (b) betterFibonacci
    - Implement fibonacciHelper.
    - Answer 2 short answer questions.
  (c) factorialTail
3. Pattern Matching:
  (a) areaOrVolume
  [See Racket file for (b).]

Replace all "func = undefined" with a valid definition (or definitions) for "func".

IMPORTANT: You are NOT allowed to modify existing imports or add new imports.
-}
import Prelude (undefined, show, ($), (.), Float, Int, String, Fractional, (+), (-), (*), (/), (**), div, even, odd,
                round, head, tail, fst, snd, (++)) 

{-
-------------------------------------------------------------------------------
 * Task 1: Small haskell functions *
-------------------------------------------------------------------------------
Relavant Tutorial: https://learnyouahaskell.com/starting-out

(a) celsiusToFahrenheit

`celsiusToFahrenheit` takes a temperature in degrees Celsius and returns the equivalent temperature in degrees 
fahrenheit, rounded to the nearest integer. Use `round` for rounding to the nearest integer.
-}

celsiusToFarenheit :: Float -> Int
celsiusToFarenheit temp = round ((temp * 9/5) + 32)

-- >>> celsiusToFarenheit (-20.0)
-- >>> celsiusToFarenheit 0
-- >>> celsiusToFarenheit 8
-- -4
-- 32
-- 46


{-
(b) removeSecond

`removeSecond` takes a list as input, removes the second element of the list, and returns the resulting list. 
If the inputted list has less than 2 elements, `removeSecond` returns the list without modifying it.
-}

-- literally couldn't figure out a way to check the length of the list without null or length unless I use pattern matching
removeSecond :: [a] -> [a]
removeSecond lst = 
  case lst of  
    [] -> [] 
    [_] -> lst
    _ -> head lst : tail (tail lst)


-- >>> removeSecond [2, 1, 3, 1]
-- >>> removeSecond ['a', 'b', 'c']
-- >>> removeSecond [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']]
-- >>> removeSecond ["first", "second"]
-- >>> removeSecond ["only"]
-- [2,3,1]
-- "ac"
-- ["abc","ghi"]
-- ["first"]
-- ["only"]



{-
-------------------------------------------------------------------------------
* Task 2: Recursive functions *
-------------------------------------------------------------------------------

(a) collatz

`collatz` takes a positive integer `n` and returns the collatz conjecture sequence as described in the handout, 
starting at `n` and ending at 1. (The sequence starting at `n` is guaranteed to reach 1).

Note: If you get type errors for dividing an even integer by 2, use `div` (including the backticks) instead of /.
-}

collatz :: Int -> [Int]
collatz n = helper n []
  where
  helper 1 sequence = sequence ++ [1]
  helper num sequence =
      if even num
        then helper (num `div` 2) (sequence ++ [num])
        else helper (3 * num + 1) (sequence ++ [num])

-- >>> collatz 5
-- >>> collatz 12
-- >>> collatz 8
-- >>> collatz 1
-- [5,16,8,4,2,1]
-- [12,6,3,10,5,16,8,4,2,1]
-- [8,4,2,1]
-- [1]

{-
(b) betterFibonacci

`fibonacci` takes a non-negative integer `n` and returns the n-th element of the fibonacci sequence. 

See below for a simple implementation of `fibonacci`.
-}

fibonacci :: Int -> Int
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci n = fibonacci (n - 2) + fibonacci (n - 1)

{-
Now, we will implement `fibonacci` more efficiently. `betterFibonacci` has the same behaviour as `fibonacci`.
In particular, `betterFibonacci` takes a non-negative integer `n` and returns the n-th element of the fibonacci sequence. 

`betterFibonacci` uses a helper function called `fibonacciHelper`, which takes an integer `n` and returns a pair of the
(n-1)-th and n-th elements of the fibonacci sequence.
For simplicity, (fibonacciHelper 0) returns (cons 1 1).

Hint: `let` or `where` might be useful: https://wiki.haskell.org/Let_vs._Where
-}

fibonacciHelper :: Int -> (Int, Int)
fibonacciHelper 0 = (0, 1)
fibonacciHelper 1 = (1, 1)
fibonacciHelper n = let val = fibonacciHelper (n - 1)
                    in (snd val, fst val + snd val)


{-
`betterFibonacci` is implemented for you. Note that if `fibonacciHelper` is implemented correctly, this simple 
implementation of `betterFibonacci` works.
-}

betterFibonacci :: Int -> Int
betterFibonacci n = snd (fibonacciHelper n)

-- >>> betterFibonacci 0
-- >>> betterFibonacci 2
-- >>> betterFibonacci 4
-- >>> betterFibonacci 6
-- 1
-- 2
-- 5
-- 13

{-
Note that fibonacciHelper could be implemented as a nested function:
  betterFibonacci n = snd (fibonacciHelper n)
    where fibonacciHelper = ...
Here we have implemented it as a separate function so we can test it separately.
-}

{-
(c) factorialTail

; Consider the following simple implementation of `factorial`. This implementation does NOT use tail recursion.
-}

factorial :: Int -> Int
factorial 1 = 1
factorial n = n * factorial (n - 1)

{-
Implement `factorialTail` using TAIL RECURSION.

Hint: You should use an "accumulator" input, which keeps track of the result "up to now". 
The starter code below includes an additional input `acc` to reflect this.
You may assume that in all tests, the value of input `acc` is 1. (However, if your implementation
is correct, the value of `acc` will be greater than 1 in some recursive calls.)
-} 

factorialTail :: Int -> Int -> Int
factorialTail 1 acc = acc
factorialTail n acc = factorialTail (n - 1) (n * acc)

-- >>> factorialTail 1 1
-- >>> factorialTail 3 1
-- >>> factorialTail 5 1
-- 1
-- 6
-- 120

{-
-------------------------------------------------------------------------------
 * Task 3: Pattern Matching *
-------------------------------------------------------------------------------

(a) areaOrVolume -}

data Shape = Circle Float   -- keyword "Circle", radius
  | Triangle Float Float    -- keyword "Triangle", base, height
  | Square Float            -- keyword "Square", side
  | Rectangle Float Float   -- keyword "Rectangle", width, height
  | Sphere Float            -- keyword "Sphere", radius
  | Cube Float              -- keyword "Cube", side
  | Prism Shape Float       -- keyword "Prism", base, height

{-
The definition of Shape above is an Algebraic Data Type in Haskell. We will see more of this later on, but for now, 
all you need to know is how to pattern match values of such a type.

As an example, see `shapeToText` defined below. (`show` is a built-in function for converting Floats to Strings.)
-}

shapeToText :: Shape -> String
shapeToText (Circle r) = "Circle with radius " ++ show r
shapeToText (Triangle b h) = "Triangle with base " ++ show b ++ " and height " ++ show h
shapeToText (Square a) = "Square with side " ++ show a
shapeToText (Rectangle a b) = "Rectangle with sides " ++ show a ++ " and " ++ show b
shapeToText (Sphere r) = "Sphere with radius " ++ show r
shapeToText (Cube a) = "Sphere with side " ++ show a
shapeToText (Prism base h) = "Prism with height " ++ show h ++ " and base (" ++ shapeToText base ++ ")"

{-
`areaOrVolume` takes a `shape` (described as above). If `shape` is a 2d Shape, `areaOrVolume` returns its area.
If `shape` is a 3d Shape, `areaOrVolume` returns its volume.

IMPORTANT: Assume pi = 3.
-}

areaOrVolume :: Fractional a => Shape -> a
areaOrVolume (Circle r) = 3.0 * r * r
areaOrVolume (Triangle b h) = 0.5 * b * h
areaOrVolume (Square a) = a * a
areaOrVolume (Rectangle a b) = a * b
areaOrVolume (Sphere r) = 3.0 * r * r * r
areaOrVolume (Cube a) = a * a * a
areaOrVolume (Prism base h) = areaOrVolume base * h

-- >>> areaOrVolume (Circle 2)

