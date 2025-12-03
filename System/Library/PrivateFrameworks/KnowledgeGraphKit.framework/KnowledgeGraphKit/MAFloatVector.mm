@interface MAFloatVector
+ (id)meanVectorWithFloatVectors:(id)vectors;
+ (id)onesOfCount:(int64_t)count;
+ (id)vectorRepeatingFloat:(float)float count:(int64_t)count;
+ (id)zerosOfCount:(int64_t)count;
- (BOOL)_isArrayOfFloats:(id)floats;
- (BOOL)isApproximatelyEqualTo:(id)to;
- (BOOL)isApproximatelyEqualTo:(id)to epsilon:(float)epsilon;
- (BOOL)isEqual:(id)equal;
- (MAFloatVector)init;
- (MAFloatVector)initWithArray:(id)array;
- (MAFloatVector)initWithData:(id)data;
- (MAFloatVector)initWithFloats:(const float *)floats count:(int64_t)count;
- (MAFloatVector)initWithWrapper:(id)wrapper;
- (float)dotProductWithVector:(id)vector;
- (float)floatAtIndex:(int64_t)index;
- (float)mean;
- (float)standardDeviation;
- (float)sum;
- (float)sumOfSquares;
- (id)array;
- (id)data;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)sliceFromStart:(int64_t)start toEnd:(int64_t)end;
- (id)vectorByAddingScalar:(float)scalar;
- (id)vectorByAddingVector:(id)vector;
- (id)vectorByAppendingArray:(id)array;
- (id)vectorByAppendingDoubles:(const double *)doubles count:(int64_t)count;
- (id)vectorByAppendingFloat:(float)float;
- (id)vectorByAppendingFloats:(const float *)floats count:(int64_t)count;
- (id)vectorByAppendingVector:(id)vector;
- (id)vectorByDividingByScalar:(float)scalar;
- (id)vectorByElementwiseMultiplyingByVector:(id)vector;
- (id)vectorByElementwiseNaturalLogarithm;
- (id)vectorByElementwiseNaturalLogarithmIfPositive;
- (id)vectorByElementwiseRaisingToExponent:(float)exponent;
- (id)vectorByMultiplyingByScalar:(float)scalar;
- (id)vectorBySubtractingScalar:(float)scalar;
- (id)vectorBySubtractingVector:(id)vector;
- (int64_t)count;
- (unint64_t)hash;
@end

@implementation MAFloatVector

- (BOOL)_isArrayOfFloats:(id)floats
{
  floatsCopy = floats;
  if ([floatsCopy count])
  {
    firstObject = [floatsCopy firstObject];
    objCType = [firstObject objCType];
    v6 = *objCType;
    if (v6 == 102)
    {
      v7 = -objCType[1];
    }

    else
    {
      v7 = 102 - v6;
    }

    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)debugDescription
{
  wrapper = [(MAFloatVector *)self wrapper];
  v3 = [wrapper debugDescription];

  return v3;
}

- (id)description
{
  wrapper = [(MAFloatVector *)self wrapper];
  v3 = [wrapper description];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MAMutableFloatVector allocWithZone:zone];
  wrapper = [(MAFloatVector *)self wrapper];
  v6 = [wrapper mutableCopy];
  v7 = [(MAFloatVector *)v4 initWithWrapper:v6];

  return v7;
}

+ (id)meanVectorWithFloatVectors:(id)vectors
{
  v21 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  v4 = [vectorsCopy count];
  v5 = [vectorsCopy objectAtIndexedSubscript:0];
  v6 = [v5 count];

  v7 = [(MAFloatVector *)MAMutableFloatVector zerosOfCount:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = vectorsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addVector:{*(*(&v16 + 1) + 8 * i), v16}];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  *&v13 = v4;
  [v7 divideByScalar:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)vectorRepeatingFloat:(float)float count:(int64_t)count
{
  v7 = [self alloc];
  wrapperClass = [self wrapperClass];
  *&v9 = float;
  v10 = [wrapperClass repeatingFloat:count count:v9];
  v11 = [v7 initWithWrapper:v10];

  return v11;
}

+ (id)onesOfCount:(int64_t)count
{
  v5 = [self alloc];
  v6 = [objc_msgSend(self "wrapperClass")];
  v7 = [v5 initWithWrapper:v6];

  return v7;
}

+ (id)zerosOfCount:(int64_t)count
{
  v5 = [self alloc];
  v6 = [objc_msgSend(self "wrapperClass")];
  v7 = [v5 initWithWrapper:v6];

  return v7;
}

- (unint64_t)hash
{
  wrapper = [(MAFloatVector *)self wrapper];
  v3 = [wrapper hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      wrapper = [(MAFloatVector *)self wrapper];
      wrapper2 = [(MAFloatVector *)v5 wrapper];

      v8 = [wrapper isEqual:wrapper2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isApproximatelyEqualTo:(id)to epsilon:(float)epsilon
{
  toCopy = to;
  if (toCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = toCopy;
      wrapper = [(MAFloatVector *)self wrapper];
      wrapper2 = [(MAFloatVector *)v7 wrapper];

      *&v10 = epsilon;
      v11 = [wrapper isApproximatelyEqualTo:wrapper2 epsilon:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)isApproximatelyEqualTo:(id)to
{
  toCopy = to;
  if (toCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = toCopy;
      wrapper = [(MAFloatVector *)self wrapper];
      wrapper2 = [(MAFloatVector *)v5 wrapper];

      v8 = [wrapper isApproximatelyEqualTo:wrapper2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)sliceFromStart:(int64_t)start toEnd:(int64_t)end
{
  wrapper = [(MAFloatVector *)self wrapper];
  v7 = [wrapper sliceFromStart:start toEnd:end];

  v8 = [[MAFloatVector alloc] initWithWrapper:v7];

  return v8;
}

- (id)vectorByAppendingArray:(id)array
{
  arrayCopy = array;
  wrapper = [(MAFloatVector *)self wrapper];
  v6 = [wrapper mutableCopy];

  [v6 appendArray:arrayCopy];
  v7 = [[MAFloatVector alloc] initWithWrapper:v6];

  return v7;
}

- (id)vectorByAppendingVector:(id)vector
{
  vectorCopy = vector;
  wrapper = [(MAFloatVector *)self wrapper];
  v6 = [wrapper mutableCopy];

  wrapper2 = [vectorCopy wrapper];

  [v6 appendVector:wrapper2];
  v8 = [[MAFloatVector alloc] initWithWrapper:v6];

  return v8;
}

- (id)vectorByAppendingDoubles:(const double *)doubles count:(int64_t)count
{
  wrapper = [(MAFloatVector *)self wrapper];
  v7 = [wrapper mutableCopy];

  [v7 appendDoubles:doubles count:count];
  v8 = [[MAFloatVector alloc] initWithWrapper:v7];

  return v8;
}

- (id)vectorByAppendingFloats:(const float *)floats count:(int64_t)count
{
  wrapper = [(MAFloatVector *)self wrapper];
  v7 = [wrapper mutableCopy];

  [v7 appendFloats:floats count:count];
  v8 = [[MAFloatVector alloc] initWithWrapper:v7];

  return v8;
}

- (id)vectorByAppendingFloat:(float)float
{
  wrapper = [(MAFloatVector *)self wrapper];
  v5 = [wrapper mutableCopy];

  *&v6 = float;
  [v5 appendFloat:v6];
  v7 = [[MAFloatVector alloc] initWithWrapper:v5];

  return v7;
}

- (id)vectorByElementwiseNaturalLogarithmIfPositive
{
  v3 = [MAFloatVector alloc];
  wrapper = [(MAFloatVector *)self wrapper];
  naturalLogarithmIfPositive = [wrapper naturalLogarithmIfPositive];
  v6 = [(MAFloatVector *)v3 initWithWrapper:naturalLogarithmIfPositive];

  return v6;
}

- (id)vectorByElementwiseNaturalLogarithm
{
  v3 = [MAFloatVector alloc];
  wrapper = [(MAFloatVector *)self wrapper];
  naturalLogarithm = [wrapper naturalLogarithm];
  v6 = [(MAFloatVector *)v3 initWithWrapper:naturalLogarithm];

  return v6;
}

- (id)vectorByElementwiseRaisingToExponent:(float)exponent
{
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatVector *)self wrapper];
  *&v7 = exponent;
  v8 = [wrapper vectorByElementwiseRaisingToExponent:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (float)dotProductWithVector:(id)vector
{
  vectorCopy = vector;
  wrapper = [(MAFloatVector *)self wrapper];
  wrapper2 = [vectorCopy wrapper];

  [wrapper dotProductWithWrapper:wrapper2];
  v8 = v7;

  return v8;
}

- (id)vectorByElementwiseMultiplyingByVector:(id)vector
{
  vectorCopy = vector;
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatVector *)self wrapper];
  wrapper2 = [vectorCopy wrapper];

  v8 = [wrapper vectorByElementwiseMultiplyingByWrapper:wrapper2];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorByDividingByScalar:(float)scalar
{
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatVector *)self wrapper];
  *&v7 = scalar;
  v8 = [wrapper vectorByDividingByScalar:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorByMultiplyingByScalar:(float)scalar
{
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatVector *)self wrapper];
  *&v7 = scalar;
  v8 = [wrapper vectorByMultiplyingByScalar:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorByAddingScalar:(float)scalar
{
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatVector *)self wrapper];
  *&v7 = scalar;
  v8 = [wrapper vectorByAddingScalar:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorBySubtractingScalar:(float)scalar
{
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatVector *)self wrapper];
  *&v7 = scalar;
  v8 = [wrapper vectorBySubtractingScalar:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorByAddingVector:(id)vector
{
  vectorCopy = vector;
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatVector *)self wrapper];
  wrapper2 = [vectorCopy wrapper];

  v8 = [wrapper vectorByAddingVector:wrapper2];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorBySubtractingVector:(id)vector
{
  vectorCopy = vector;
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatVector *)self wrapper];
  wrapper2 = [vectorCopy wrapper];

  v8 = [wrapper vectorBySubtractingVector:wrapper2];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)data
{
  wrapper = [(MAFloatVector *)self wrapper];
  data = [wrapper data];

  return data;
}

- (id)array
{
  wrapper = [(MAFloatVector *)self wrapper];
  array = [wrapper array];

  return array;
}

- (float)floatAtIndex:(int64_t)index
{
  wrapper = [(MAFloatVector *)self wrapper];
  [wrapper floatAtIndex:index];
  v6 = v5;

  return v6;
}

- (float)standardDeviation
{
  wrapper = [(MAFloatVector *)self wrapper];
  [wrapper standardDeviation];
  v4 = v3;

  return v4;
}

- (float)mean
{
  wrapper = [(MAFloatVector *)self wrapper];
  [wrapper mean];
  v4 = v3;

  return v4;
}

- (float)sumOfSquares
{
  wrapper = [(MAFloatVector *)self wrapper];
  [wrapper sumOfSquares];
  v4 = v3;

  return v4;
}

- (float)sum
{
  wrapper = [(MAFloatVector *)self wrapper];
  [wrapper sum];
  v4 = v3;

  return v4;
}

- (int64_t)count
{
  wrapper = [(MAFloatVector *)self wrapper];
  v3 = [wrapper count];

  return v3;
}

- (MAFloatVector)initWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  return [(MAFloatVector *)self initWithFloats:bytes count:v8 >> 2];
}

- (MAFloatVector)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = MAFloatVector;
  v5 = [(MAFloatVector *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "wrapperClass"))];
    wrapper = v5->_wrapper;
    v5->_wrapper = v6;
  }

  return v5;
}

- (MAFloatVector)initWithFloats:(const float *)floats count:(int64_t)count
{
  v10.receiver = self;
  v10.super_class = MAFloatVector;
  v6 = [(MAFloatVector *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(objc_msgSend(objc_opt_class() "wrapperClass"))];
    wrapper = v6->_wrapper;
    v6->_wrapper = v7;
  }

  return v6;
}

- (MAFloatVector)initWithWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9.receiver = self;
  v9.super_class = MAFloatVector;
  v6 = [(MAFloatVector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapper, wrapper);
  }

  return v7;
}

- (MAFloatVector)init
{
  v6.receiver = self;
  v6.super_class = MAFloatVector;
  v2 = [(MAFloatVector *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init([objc_opt_class() wrapperClass]);
    wrapper = v2->_wrapper;
    v2->_wrapper = v3;
  }

  return v2;
}

@end