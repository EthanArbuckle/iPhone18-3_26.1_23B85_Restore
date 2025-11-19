@interface MIORangeAsValue
+ (id)valueWithMIORange:(_MIORange)a3;
- (_MIORange)MIORangeValue;
@end

@implementation MIORangeAsValue

+ (id)valueWithMIORange:(_MIORange)a3
{
  upperBound = a3.upperBound;
  lowerBound = a3.lowerBound;
  v5 = [objc_allocWithZone(a1) init];
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