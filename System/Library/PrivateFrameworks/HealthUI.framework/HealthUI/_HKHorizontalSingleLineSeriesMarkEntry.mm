@interface _HKHorizontalSingleLineSeriesMarkEntry
- (_HKHorizontalSingleLineSeriesMarkEntry)initWithXCoord:(double)coord markStyle:(int64_t)style;
@end

@implementation _HKHorizontalSingleLineSeriesMarkEntry

- (_HKHorizontalSingleLineSeriesMarkEntry)initWithXCoord:(double)coord markStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = _HKHorizontalSingleLineSeriesMarkEntry;
  result = [(_HKHorizontalSingleLineSeriesMarkEntry *)&v7 init];
  if (result)
  {
    result->_xCoord = coord;
    result->_markStyle = style;
  }

  return result;
}

@end