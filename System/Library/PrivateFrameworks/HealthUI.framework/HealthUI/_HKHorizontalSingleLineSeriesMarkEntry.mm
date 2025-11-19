@interface _HKHorizontalSingleLineSeriesMarkEntry
- (_HKHorizontalSingleLineSeriesMarkEntry)initWithXCoord:(double)a3 markStyle:(int64_t)a4;
@end

@implementation _HKHorizontalSingleLineSeriesMarkEntry

- (_HKHorizontalSingleLineSeriesMarkEntry)initWithXCoord:(double)a3 markStyle:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = _HKHorizontalSingleLineSeriesMarkEntry;
  result = [(_HKHorizontalSingleLineSeriesMarkEntry *)&v7 init];
  if (result)
  {
    result->_xCoord = a3;
    result->_markStyle = a4;
  }

  return result;
}

@end