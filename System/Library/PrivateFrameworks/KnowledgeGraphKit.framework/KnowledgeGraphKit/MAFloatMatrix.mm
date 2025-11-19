@interface MAFloatMatrix
+ (id)onesWithRows:(int64_t)a3 columns:(int64_t)a4;
+ (id)zerosWithRows:(int64_t)a3 columns:(int64_t)a4;
- (BOOL)isApproximatelyEqualTo:(id)a3;
- (BOOL)isApproximatelyEqualTo:(id)a3 epsilon:(float)a4;
- (BOOL)isEqual:(id)a3;
- (MAFloatMatrix)init;
- (MAFloatMatrix)initWithArray:(id)a3;
- (MAFloatMatrix)initWithData:(id)a3 rows:(int64_t)a4 columns:(int64_t)a5;
- (MAFloatMatrix)initWithFloats:(const float *)a3 rows:(int64_t)a4 columns:(int64_t)a5;
- (MAFloatMatrix)initWithWrapper:(id)a3;
- (float)floatAtRow:(int64_t)a3 column:(int64_t)a4;
- (float)mean;
- (float)sum;
- (float)sumOfSquares;
- (id)array;
- (id)data;
- (id)description;
- (id)matrixByAddingScalar:(float)a3;
- (id)matrixByAppendingColumn:(id)a3;
- (id)matrixByAppendingColumnsOfMatrix:(id)a3;
- (id)matrixByAppendingRow:(id)a3;
- (id)matrixBySubtractingMatrix:(id)a3;
- (id)matrixBySubtractingScalar:(float)a3;
- (id)meanAlongAxis:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)row:(int64_t)a3;
- (id)sumAlongAxis:(unint64_t)a3;
- (int64_t)columns;
- (int64_t)count;
- (int64_t)rows;
- (unint64_t)hash;
@end

@implementation MAFloatMatrix

- (id)description
{
  v2 = [(MAFloatMatrix *)self wrapper];
  v3 = [v2 description];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MAMutableFloatMatrix allocWithZone:a3];
  v5 = [(MAFloatMatrix *)self wrapper];
  v6 = [v5 mutableCopy];
  v7 = [(MAFloatMatrix *)v4 initWithWrapper:v6];

  return v7;
}

+ (id)onesWithRows:(int64_t)a3 columns:(int64_t)a4
{
  v4 = [objc_msgSend(objc_opt_class() "wrapperClass")];
  v5 = [objc_alloc(objc_opt_class()) initWithWrapper:v4];

  return v5;
}

+ (id)zerosWithRows:(int64_t)a3 columns:(int64_t)a4
{
  v4 = [objc_msgSend(objc_opt_class() "wrapperClass")];
  v5 = [objc_alloc(objc_opt_class()) initWithWrapper:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(MAFloatMatrix *)self wrapper];
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
      v6 = [(MAFloatMatrix *)self wrapper];
      v7 = [(MAFloatMatrix *)v5 wrapper];

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
      v8 = [(MAFloatMatrix *)self wrapper];
      v9 = [(MAFloatMatrix *)v7 wrapper];

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
      v6 = [(MAFloatMatrix *)self wrapper];
      v7 = [(MAFloatMatrix *)v5 wrapper];

      v8 = [v6 isApproximatelyEqualTo:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)meanAlongAxis:(unint64_t)a3
{
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatMatrix *)self wrapper];
  v7 = [v6 meanAlongAxis:a3];
  v8 = [(MAFloatVector *)v5 initWithWrapper:v7];

  return v8;
}

- (id)sumAlongAxis:(unint64_t)a3
{
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatMatrix *)self wrapper];
  v7 = [v6 sumAlongAxis:a3];
  v8 = [(MAFloatVector *)v5 initWithWrapper:v7];

  return v8;
}

- (id)matrixByAppendingColumnsOfMatrix:(id)a3
{
  v4 = a3;
  v5 = [MAFloatMatrix alloc];
  v6 = [(MAFloatMatrix *)self wrapper];
  v7 = [v4 wrapper];

  v8 = [v6 matrixByAppendingColumnsOfMatrix:v7];
  v9 = [(MAFloatMatrix *)v5 initWithWrapper:v8];

  return v9;
}

- (id)matrixByAppendingColumn:(id)a3
{
  v4 = a3;
  v5 = [MAFloatMatrix alloc];
  v6 = [(MAFloatMatrix *)self wrapper];
  v7 = [v4 wrapper];

  v8 = [v6 matrixByAppendingColumnVector:v7];
  v9 = [(MAFloatMatrix *)v5 initWithWrapper:v8];

  return v9;
}

- (id)matrixByAppendingRow:(id)a3
{
  v4 = a3;
  v5 = [(MAFloatMatrix *)self wrapper];
  v6 = [v5 mutableCopy];

  v7 = [v4 wrapper];

  [v6 appendRow:v7];
  v8 = [[MAFloatMatrix alloc] initWithWrapper:v6];

  return v8;
}

- (id)matrixByAddingScalar:(float)a3
{
  v5 = [MAFloatMatrix alloc];
  v6 = [(MAFloatMatrix *)self wrapper];
  *&v7 = a3;
  v8 = [v6 matrixByAddingScalar:v7];
  v9 = [(MAFloatMatrix *)v5 initWithWrapper:v8];

  return v9;
}

- (id)matrixBySubtractingScalar:(float)a3
{
  v5 = [MAFloatMatrix alloc];
  v6 = [(MAFloatMatrix *)self wrapper];
  *&v7 = a3;
  v8 = [v6 matrixBySubtractingScalar:v7];
  v9 = [(MAFloatMatrix *)v5 initWithWrapper:v8];

  return v9;
}

- (id)matrixBySubtractingMatrix:(id)a3
{
  v4 = a3;
  v5 = [MAFloatMatrix alloc];
  v6 = [(MAFloatMatrix *)self wrapper];
  v7 = [v4 wrapper];

  v8 = [v6 matrixBySubtractingMatrix:v7];
  v9 = [(MAFloatMatrix *)v5 initWithWrapper:v8];

  return v9;
}

- (id)data
{
  v2 = [(MAFloatMatrix *)self wrapper];
  v3 = [v2 data];

  return v3;
}

- (id)array
{
  v2 = [(MAFloatMatrix *)self wrapper];
  v3 = [v2 array];

  return v3;
}

- (id)row:(int64_t)a3
{
  v5 = [MAFloatVector alloc];
  v6 = [(MAFloatMatrix *)self wrapper];
  v7 = [v6 row:a3];
  v8 = [(MAFloatVector *)v5 initWithWrapper:v7];

  return v8;
}

- (float)floatAtRow:(int64_t)a3 column:(int64_t)a4
{
  v6 = [(MAFloatMatrix *)self wrapper];
  [v6 floatAtRow:a3 column:a4];
  v8 = v7;

  return v8;
}

- (float)mean
{
  v2 = [(MAFloatMatrix *)self wrapper];
  [v2 mean];
  v4 = v3;

  return v4;
}

- (float)sumOfSquares
{
  v2 = [(MAFloatMatrix *)self wrapper];
  [v2 sumOfSquares];
  v4 = v3;

  return v4;
}

- (float)sum
{
  v2 = [(MAFloatMatrix *)self wrapper];
  [v2 sum];
  v4 = v3;

  return v4;
}

- (int64_t)count
{
  v2 = [(MAFloatMatrix *)self wrapper];
  v3 = [v2 count];

  return v3;
}

- (int64_t)columns
{
  v2 = [(MAFloatMatrix *)self wrapper];
  v3 = [v2 columns];

  return v3;
}

- (int64_t)rows
{
  v2 = [(MAFloatMatrix *)self wrapper];
  v3 = [v2 rows];

  return v3;
}

- (MAFloatMatrix)initWithData:(id)a3 rows:(int64_t)a4 columns:(int64_t)a5
{
  v8 = a3;
  v9 = [objc_msgSend(objc_opt_class() "wrapperClass")];

  v10 = [(MAFloatMatrix *)self initWithWrapper:v9];
  return v10;
}

- (MAFloatMatrix)initWithArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MAFloatMatrix;
  v5 = [(MAFloatMatrix *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "wrapperClass"))];
    wrapper = v5->_wrapper;
    v5->_wrapper = v6;
  }

  return v5;
}

- (MAFloatMatrix)initWithFloats:(const float *)a3 rows:(int64_t)a4 columns:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = MAFloatMatrix;
  v8 = [(MAFloatMatrix *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(objc_msgSend(objc_opt_class() "wrapperClass"))];
    wrapper = v8->_wrapper;
    v8->_wrapper = v9;
  }

  return v8;
}

- (MAFloatMatrix)initWithWrapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MAFloatMatrix;
  v6 = [(MAFloatMatrix *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapper, a3);
  }

  return v7;
}

- (MAFloatMatrix)init
{
  v6.receiver = self;
  v6.super_class = MAFloatMatrix;
  v2 = [(MAFloatMatrix *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init([objc_opt_class() wrapperClass]);
    wrapper = v2->_wrapper;
    v2->_wrapper = v3;
  }

  return v2;
}

@end