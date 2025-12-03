@interface MIORangeAsValue
+ (id)valueWithMIORange:(_MIORange)range;
- (_MIORange)MIORangeValue;
@end

@implementation MIORangeAsValue

+ (id)valueWithMIORange:(_MIORange)range
{
  upperBound = range.upperBound;
  lowerBound = range.lowerBound;
  v5 = [objc_allocWithZone(self) init];
  v5[1] = lowerBound;
  v5[2] = upperBound;

  return v5;
}

- (_MIORange)MIORangeValue
{
  p_range = &self->_range;
  lowerBound = self->_range.lowerBound;
  upperBound = p_range->upperBound;
  result.upperBound = upperBound;
  result.lowerBound = lowerBound;
  return result;
}

@end