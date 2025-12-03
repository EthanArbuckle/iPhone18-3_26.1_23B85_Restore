@interface CBFloatArray2D
- (CBFloatArray2D)initWithValues:(float *)values andCountCols:(unint64_t)cols andRows:(unint64_t)rows;
@end

@implementation CBFloatArray2D

- (CBFloatArray2D)initWithValues:(float *)values andCountCols:(unint64_t)cols andRows:(unint64_t)rows
{
  v8.receiver = self;
  v8.super_class = CBFloatArray2D;
  result = [(CBFloatArray *)&v8 initWithValues:values andCount:rows * cols];
  if (result)
  {
    result->_cols = cols;
    result->_rows = rows;
  }

  return result;
}

@end