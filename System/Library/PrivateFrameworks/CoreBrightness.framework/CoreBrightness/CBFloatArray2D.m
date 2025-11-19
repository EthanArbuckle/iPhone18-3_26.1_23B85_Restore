@interface CBFloatArray2D
- (CBFloatArray2D)initWithValues:(float *)a3 andCountCols:(unint64_t)a4 andRows:(unint64_t)a5;
@end

@implementation CBFloatArray2D

- (CBFloatArray2D)initWithValues:(float *)a3 andCountCols:(unint64_t)a4 andRows:(unint64_t)a5
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6.receiver = self;
  v6.super_class = CBFloatArray2D;
  v11 = [(CBFloatArray *)&v6 initWithValues:a3 andCount:a4 * a5];
  if (v11)
  {
    v11->_cols = v8;
    v11->_rows = v7;
  }

  return v11;
}

@end