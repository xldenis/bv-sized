{-|
Module      : Data.BitVector.Sized
Copyright   : (c) Benjamin Selfridge, 2018
                  Galois Inc.
License     : BSD3
Maintainer  : benselfridge@galois.com
Stability   : experimental
Portability : portable

This module defines a width-parameterized 'BitVector' type and various associated
operations that assume a 2's complement representation.

For more fine-grained access to the internals (including explicit
'Data.Parameterized.NatRepr.NatRepr's), see "Data.BitVector.Sized.Internal".
-}

module Data.BitVector.Sized
  ( -- * BitVector type
    BitVector
  , bv
    -- * Variable-width operations
    -- | These are functions that involve bit vectors of different lengths.
  , bvConcat, (<:>)
  , bvExtract
  , bvZext
  , bvSext
  , bvMulFU, bvMulFS
    -- * Conversions to Integer
  , bvIntegerU
  , bvIntegerS
  ) where

import Data.BitVector.Sized.Internal
