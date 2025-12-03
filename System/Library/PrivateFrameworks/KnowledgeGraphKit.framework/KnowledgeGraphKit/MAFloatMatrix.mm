@interface MAFloatMatrix
+ (id)onesWithRows:(int64_t)rows columns:(int64_t)columns;
+ (id)zerosWithRows:(int64_t)rows columns:(int64_t)columns;
- (BOOL)isApproximatelyEqualTo:(id)to;
- (BOOL)isApproximatelyEqualTo:(id)to epsilon:(float)epsilon;
- (BOOL)isEqual:(id)equal;
- (MAFloatMatrix)init;
- (MAFloatMatrix)initWithArray:(id)array;
- (MAFloatMatrix)initWithData:(id)data rows:(int64_t)rows columns:(int64_t)columns;
- (MAFloatMatrix)initWithFloats:(const float *)floats rows:(int64_t)rows columns:(int64_t)columns;
- (MAFloatMatrix)initWithWrapper:(id)wrapper;
- (float)floatAtRow:(int64_t)row column:(int64_t)column;
- (float)mean;
- (float)sum;
- (float)sumOfSquares;
- (id)array;
- (id)data;
- (id)description;
- (id)matrixByAddingScalar:(float)scalar;
- (id)matrixByAppendingColumn:(id)column;
- (id)matrixByAppendingColumnsOfMatrix:(id)matrix;
- (id)matrixByAppendingRow:(id)row;
- (id)matrixBySubtractingMatrix:(id)matrix;
- (id)matrixBySubtractingScalar:(float)scalar;
- (id)meanAlongAxis:(unint64_t)axis;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)row:(int64_t)row;
- (id)sumAlongAxis:(unint64_t)axis;
- (int64_t)columns;
- (int64_t)count;
- (int64_t)rows;
- (unint64_t)hash;
@end

@implementation MAFloatMatrix

- (id)description
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  v3 = [wrapper description];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MAMutableFloatMatrix allocWithZone:zone];
  wrapper = [(MAFloatMatrix *)self wrapper];
  v6 = [wrapper mutableCopy];
  v7 = [(MAFloatMatrix *)v4 initWithWrapper:v6];

  return v7;
}

+ (id)onesWithRows:(int64_t)rows columns:(int64_t)columns
{
  v4 = [objc_msgSend(objc_opt_class() "wrapperClass")];
  v5 = [objc_alloc(objc_opt_class()) initWithWrapper:v4];

  return v5;
}

+ (id)zerosWithRows:(int64_t)rows columns:(int64_t)columns
{
  v4 = [objc_msgSend(objc_opt_class() "wrapperClass")];
  v5 = [objc_alloc(objc_opt_class()) initWithWrapper:v4];

  return v5;
}

- (unint64_t)hash
{
  wrapper = [(MAFloatMatrix *)self wrapper];
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
      wrapper = [(MAFloatMatrix *)self wrapper];
      wrapper2 = [(MAFloatMatrix *)v5 wrapper];

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
      wrapper = [(MAFloatMatrix *)self wrapper];
      wrapper2 = [(MAFloatMatrix *)v7 wrapper];

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
      wrapper = [(MAFloatMatrix *)self wrapper];
      wrapper2 = [(MAFloatMatrix *)v5 wrapper];

      v8 = [wrapper isApproximatelyEqualTo:wrapper2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)meanAlongAxis:(unint64_t)axis
{
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatMatrix *)self wrapper];
  v7 = [wrapper meanAlongAxis:axis];
  v8 = [(MAFloatVector *)v5 initWithWrapper:v7];

  return v8;
}

- (id)sumAlongAxis:(unint64_t)axis
{
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatMatrix *)self wrapper];
  v7 = [wrapper sumAlongAxis:axis];
  v8 = [(MAFloatVector *)v5 initWithWrapper:v7];

  return v8;
}

- (id)matrixByAppendingColumnsOfMatrix:(id)matrix
{
  matrixCopy = matrix;
  v5 = [MAFloatMatrix alloc];
  wrapper = [(MAFloatMatrix *)self wrapper];
  wrapper2 = [matrixCopy wrapper];

  v8 = [wrapper matrixByAppendingColumnsOfMatrix:wrapper2];
  v9 = [(MAFloatMatrix *)v5 initWithWrapper:v8];

  return v9;
}

- (id)matrixByAppendingColumn:(id)column
{
  columnCopy = column;
  v5 = [MAFloatMatrix alloc];
  wrapper = [(MAFloatMatrix *)self wrapper];
  wrapper2 = [columnCopy wrapper];

  v8 = [wrapper matrixByAppendingColumnVector:wrapper2];
  v9 = [(MAFloatMatrix *)v5 initWithWrapper:v8];

  return v9;
}

- (id)matrixByAppendingRow:(id)row
{
  rowCopy = row;
  wrapper = [(MAFloatMatrix *)self wrapper];
  v6 = [wrapper mutableCopy];

  wrapper2 = [rowCopy wrapper];

  [v6 appendRow:wrapper2];
  v8 = [[MAFloatMatrix alloc] initWithWrapper:v6];

  return v8;
}

- (id)matrixByAddingScalar:(float)scalar
{
  v5 = [MAFloatMatrix alloc];
  wrapper = [(MAFloatMatrix *)self wrapper];
  *&v7 = scalar;
  v8 = [wrapper matrixByAddingScalar:v7];
  v9 = [(MAFloatMatrix *)v5 initWithWrapper:v8];

  return v9;
}

- (id)matrixBySubtractingScalar:(float)scalar
{
  v5 = [MAFloatMatrix alloc];
  wrapper = [(MAFloatMatrix *)self wrapper];
  *&v7 = scalar;
  v8 = [wrapper matrixBySubtractingScalar:v7];
  v9 = [(MAFloatMatrix *)v5 initWithWrapper:v8];

  return v9;
}

- (id)matrixBySubtractingMatrix:(id)matrix
{
  matrixCopy = matrix;
  v5 = [MAFloatMatrix alloc];
  wrapper = [(MAFloatMatrix *)self wrapper];
  wrapper2 = [matrixCopy wrapper];

  v8 = [wrapper matrixBySubtractingMatrix:wrapper2];
  v9 = [(MAFloatMatrix *)v5 initWithWrapper:v8];

  return v9;
}

- (id)data
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  data = [wrapper data];

  return data;
}

- (id)array
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  array = [wrapper array];

  return array;
}

- (id)row:(int64_t)row
{
  v5 = [MAFloatVector alloc];
  wrapper = [(MAFloatMatrix *)self wrapper];
  v7 = [wrapper row:row];
  v8 = [(MAFloatVector *)v5 initWithWrapper:v7];

  return v8;
}

- (float)floatAtRow:(int64_t)row column:(int64_t)column
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  [wrapper floatAtRow:row column:column];
  v8 = v7;

  return v8;
}

- (float)mean
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  [wrapper mean];
  v4 = v3;

  return v4;
}

- (float)sumOfSquares
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  [wrapper sumOfSquares];
  v4 = v3;

  return v4;
}

- (float)sum
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  [wrapper sum];
  v4 = v3;

  return v4;
}

- (int64_t)count
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  v3 = [wrapper count];

  return v3;
}

- (int64_t)columns
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  columns = [wrapper columns];

  return columns;
}

- (int64_t)rows
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  rows = [wrapper rows];

  return rows;
}

- (MAFloatMatrix)initWithData:(id)data rows:(int64_t)rows columns:(int64_t)columns
{
  dataCopy = data;
  v9 = [objc_msgSend(objc_opt_class() "wrapperClass")];

  v10 = [(MAFloatMatrix *)self initWithWrapper:v9];
  return v10;
}

- (MAFloatMatrix)initWithArray:(id)array
{
  arrayCopy = array;
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

- (MAFloatMatrix)initWithFloats:(const float *)floats rows:(int64_t)rows columns:(int64_t)columns
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

- (MAFloatMatrix)initWithWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9.receiver = self;
  v9.super_class = MAFloatMatrix;
  v6 = [(MAFloatMatrix *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapper, wrapper);
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