@interface MAFloatVector
+ (id)meanVectorWithFloatVectors:(id)a3;
+ (id)onesOfCount:(int64_t)a3;
+ (id)vectorRepeatingFloat:(float)a3 count:(int64_t)a4;
+ (id)zerosOfCount:(int64_t)a3;
- (BOOL)_isArrayOfFloats:(id)a3;
- (BOOL)isApproximatelyEqualTo:(id)a3;
- (BOOL)isApproximatelyEqualTo:(id)a3 epsilon:(float)a4;
- (BOOL)isEqual:(id)a3;
- (MAFloatVector)init;
- (MAFloatVector)initWithArray:(id)a3;
- (MAFloatVector)initWithData:(id)a3;
- (MAFloatVector)initWithFloats:(const float *)a3 count:(int64_t)a4;
- (MAFloatVector)initWithWrapper:(id)a3;
- (float)dotProductWithVector:(id)a3;
- (float)floatAtIndex:(int64_t)a3;
- (float)mean;
- (float)standardDeviation;
- (float)sum;
- (float)sumOfSquares;
- (id)array;
- (id)data;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)sliceFromStart:(int64_t)a3 toEnd:(int64_t)a4;
- (id)vectorByAddingScalar:(float)a3;
- (id)vectorByAddingVector:(id)a3;
- (id)vectorByAppendingArray:(id)a3;
- (id)vectorByAppendingDoubles:(const double *)a3 count:(int64_t)a4;
- (id)vectorByAppendingFloat:(float)a3;
- (id)vectorByAppendingFloats:(const float *)a3 count:(int64_t)a4;
- (id)vectorByAppendingVector:(id)a3;
- (id)vectorByDividingByScalar:(float)a3;
- (id)vectorByElementwiseMultiplyingByVector:(id)a3;
- (id)vectorByElementwiseNaturalLogarithm;
- (id)vectorByElementwiseNaturalLogarithmIfPositive;
- (id)vectorByElementwiseRaisingToExponent:(float)a3;
- (id)vectorByMultiplyingByScalar:(float)a3;
- (id)vectorBySubtractingScalar:(float)a3;
- (id)vectorBySubtractingVector:(id)a3;
- (int64_t)count;
- (unint64_t)hash;
@end

@implementation MAFloatVector

- (BOOL)_isArrayOfFloats:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 objCType];
    v6 = *v5;
    if (v6 == 102)
    {
      v7 = -v5[1];
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
  v2 = [(MAFloatVector *)self wrapper];
  v3 = [v2 debugDescription];

  return v3;
}

- (id)description
{
  v2 = [(MAFloatVector *)self wrapper];
  v3 = [v2 description];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MAMutableFloatVector allocWithZone:a3];
  v5 = [(MAFloatVector *)self wrapper];
  v6 = [v5 mutableCopy];
  v7 = [(MAFloatVector *)v4 initWithWrapper:v6];

  return v7;
}

+ (id)meanVectorWithFloatVectors:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v5 count];

  v7 = [(MAFloatVector *)MAMutableFloatVector zerosOfCount:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v3;
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

+ (id)vectorRepeatingFloat:(float)a3 count:(int64_t)a4
{
  v7 = [a1 alloc];
  v8 = [a1 wrapperClass];
  *&v9 = a3;
  v10 = [v8 repeatingFloat:a4 count:v9];
  v11 = [v7 initWithWrapper:v10];

  return v11;
}

+ (id)onesOfCount:(int64_t)a3
{
  v5 = [a1 alloc];
  v6 = [objc_msgSend(a1 "wrapperClass")];
  v7 = [v5 initWithWrapper:v6];

  return v7;
}

+ (id)zerosOfCount:(int64_t)a3
{
  v5 = [a1 alloc];
  v6 = [objc_msgSend(a1 "wrapperClass")];
  v7 = [v5 initWithWrapper:v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(MAFloatVector *)self wrapper];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MAFloatVector *)self wrapper];
      v7 = [(MAFloatVector *)v5 wrapper];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isApproximatelyEqualTo:(id)a3 epsilon:(float)a4
{
  v6 = a3;
  if (v6 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(MAFloatVector *)self wrapper];
      v9 = [(MAFloatVector *)v7 wrapper];

      *&v10 = a4;
      v11 = [v8 isApproximatelyEqualTo:v9 epsilon:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)isApproximatelyEqualTo:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MAFloatVector *)self wrapper];
      v7 = [(MAFloatVector *)v5 wrapper];

      v8 = [v6 isApproximatelyEqualTo:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)sliceFromStart:(int64_t)a3 toEnd:(int64_t)a4
{
  v6 = [(MAFloatVector *)self wrapper];
  v7 = [v6 sliceFromStart:a3 toEnd:a4];

  v8 = [[MAFloatVector alloc] initWithWrapper:v7];

  return v8;
}

- (id)vectorByAppendingArray:(id)a3
{
  v4 = a3;
  v5 = [(MAFloatVector *)self wrapper];
  v6 = [v5 mutableCopy];

  [v6 appendArray:v4];
  v7 = [[MAFloatVector alloc] initWithWrapper:v6];

  return v7;
}

- (id)vectorByAppendingVector:(id)a3
{
  v4 = a3;
  v5 = [(MAFloatVector *)self wrapper];
  v6 = [v5 mutableCopy];

  v7 = [v4 wrapper];

  [v6 appendVector:v7];
  v8 = [[MAFloatVector alloc] initWithWrapper:v6];

  return v8;
}

- (id)vectorByAppendingDoubles:(const double *)a3 count:(int64_t)a4
{
  v6 = [(MAFloatVector *)self wrapper];
  v7 = [v6 mutableCopy];

  [v7 appendDoubles:a3 count:a4];
  v8 = [[MAFloatVector alloc] initWithWrapper:v7];

  return v8;
}

- (id)vectorByAppendingFloats:(const float *)a3 count:(int64_t)a4
{
  v6 = [(MAFloatVector *)self wrapper];
  v7 = [v6 mutableCopy];

  [v7 appendFloats:a3 count:a4];
  v8 = [[MAFloatVector alloc] initWithWrapper:v7];

  return v8;
}

- (id)vectorByAppendingFloat:(float)a3
{
  v4 = [(MAFloatVector *)self wrapper];
  v5 = [v4 mutableCopy];

  *&v6 = a3;
  [v5 appendFloat:v6];
  v7 = [[MAFloatVector alloc] initWithWrapper:v5];

  return v7;
}

- (id)vectorByElementwiseNaturalLogarithmIfPositive
{
  v3 = [MAFloatVector alloc];
  v4 = [(MAFloatVector *)self wrapper];
  v5 = [v4 naturalLogarithmIfPositive];
  v6 = [(MAFloatVector *)v3 initWithWrapper:v5];

  return v6;
}

- (id)vectorByElementwiseNaturalLogarithm
{
  v3 = [MAFloatVector alloc];
  v4 = [(MAFloatVector *)self wrapper];
  v5 = [v4 naturalLogarithm];
  v6 = [(MAFloatVector *)v3 initWithWrapper:v5];

  return v6;
}

- (id)vectorByElementwiseRaisingToExponent:(float)a3
{
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatVector *)self wrapper];
  *&v7 = a3;
  v8 = [v6 vectorByElementwiseRaisingToExponent:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (float)dotProductWithVector:(id)a3
{
  v4 = a3;
  v5 = [(MAFloatVector *)self wrapper];
  v6 = [v4 wrapper];

  [v5 dotProductWithWrapper:v6];
  v8 = v7;

  return v8;
}

- (id)vectorByElementwiseMultiplyingByVector:(id)a3
{
  v4 = a3;
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatVector *)self wrapper];
  v7 = [v4 wrapper];

  v8 = [v6 vectorByElementwiseMultiplyingByWrapper:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorByDividingByScalar:(float)a3
{
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatVector *)self wrapper];
  *&v7 = a3;
  v8 = [v6 vectorByDividingByScalar:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorByMultiplyingByScalar:(float)a3
{
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatVector *)self wrapper];
  *&v7 = a3;
  v8 = [v6 vectorByMultiplyingByScalar:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorByAddingScalar:(float)a3
{
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatVector *)self wrapper];
  *&v7 = a3;
  v8 = [v6 vectorByAddingScalar:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorBySubtractingScalar:(float)a3
{
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatVector *)self wrapper];
  *&v7 = a3;
  v8 = [v6 vectorBySubtractingScalar:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorByAddingVector:(id)a3
{
  v4 = a3;
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatVector *)self wrapper];
  v7 = [v4 wrapper];

  v8 = [v6 vectorByAddingVector:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)vectorBySubtractingVector:(id)a3
{
  v4 = a3;
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatVector *)self wrapper];
  v7 = [v4 wrapper];

  v8 = [v6 vectorBySubtractingVector:v7];
  v9 = [(MAFloatVector *)v5 initWithWrapper:v8];

  return v9;
}

- (id)data
{
  v2 = [(MAFloatVector *)self wrapper];
  v3 = [v2 data];

  return v3;
}

- (id)array
{
  v2 = [(MAFloatVector *)self wrapper];
  v3 = [v2 array];

  return v3;
}

- (float)floatAtIndex:(int64_t)a3
{
  v4 = [(MAFloatVector *)self wrapper];
  [v4 floatAtIndex:a3];
  v6 = v5;

  return v6;
}

- (float)standardDeviation
{
  v2 = [(MAFloatVector *)self wrapper];
  [v2 standardDeviation];
  v4 = v3;

  return v4;
}

- (float)mean
{
  v2 = [(MAFloatVector *)self wrapper];
  [v2 mean];
  v4 = v3;

  return v4;
}

- (float)sumOfSquares
{
  v2 = [(MAFloatVector *)self wrapper];
  [v2 sumOfSquares];
  v4 = v3;

  return v4;
}

- (float)sum
{
  v2 = [(MAFloatVector *)self wrapper];
  [v2 sum];
  v4 = v3;

  return v4;
}

- (int64_t)count
{
  v2 = [(MAFloatVector *)self wrapper];
  v3 = [v2 count];

  return v3;
}

- (MAFloatVector)initWithData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  return [(MAFloatVector *)self initWithFloats:v7 count:v8 >> 2];
}

- (MAFloatVector)initWithArray:(id)a3
{
  v4 = a3;
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

- (MAFloatVector)initWithFloats:(const float *)a3 count:(int64_t)a4
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

- (MAFloatVector)initWithWrapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MAFloatVector;
  v6 = [(MAFloatVector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapper, a3);
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