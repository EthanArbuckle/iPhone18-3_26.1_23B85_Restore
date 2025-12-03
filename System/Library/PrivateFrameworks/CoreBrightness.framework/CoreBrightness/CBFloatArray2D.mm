@interface CBFloatArray2D
- (CBFloatArray2D)initWithValues:(float *)values andCountCols:(unint64_t)cols andRows:(unint64_t)rows;
@end

@implementation CBFloatArray2D

- (CBFloatArray2D)initWithValues:(float *)values andCountCols:(unint64_t)cols andRows:(unint64_t)rows
{
  selfCopy = self;
  v10 = a2;
  valuesCopy = values;
  colsCopy = cols;
  rowsCopy = rows;
  v6.receiver = self;
  v6.super_class = CBFloatArray2D;
  selfCopy = [(CBFloatArray *)&v6 initWithValues:values andCount:cols * rows];
  if (selfCopy)
  {
    selfCopy->_cols = colsCopy;
    selfCopy->_rows = rowsCopy;
  }

  return selfCopy;
}

@end