@interface CBFloatArray2D
- (CBFloatArray2D)initWithValues:(float *)a3 andCountCols:(unint64_t)a4 andRows:(unint64_t)a5;
@end

@implementation CBFloatArray2D

- (CBFloatArray2D)initWithValues:(float *)a3 andCountCols:(unint64_t)a4 andRows:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = CBFloatArray2D;
  result = [(CBFloatArray *)&v8 initWithValues:a3 andCount:a5 * a4];
  if (result)
  {
    result->_cols = a4;
    result->_rows = a5;
  }

  return result;
}

@end