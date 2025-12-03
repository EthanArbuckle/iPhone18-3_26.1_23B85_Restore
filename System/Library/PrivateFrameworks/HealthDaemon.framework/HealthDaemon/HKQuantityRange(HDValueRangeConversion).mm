@interface HKQuantityRange(HDValueRangeConversion)
- (_HDValueRange)valueRangeWithUnit:()HDValueRangeConversion;
@end

@implementation HKQuantityRange(HDValueRangeConversion)

- (_HDValueRange)valueRangeWithUnit:()HDValueRangeConversion
{
  v4 = a3;
  v5 = [_HDValueRange alloc];
  minimum = [self minimum];
  [minimum doubleValueForUnit:v4];
  v8 = v7;
  maximum = [self maximum];
  [maximum doubleValueForUnit:v4];
  v11 = v10;

  v12 = -[_HDValueRange initWithMinimum:maximum:isMinimumInclusive:isMaximumInclusive:](v5, "initWithMinimum:maximum:isMinimumInclusive:isMaximumInclusive:", [self isMinimumInclusive], objc_msgSend(self, "isMaximumInclusive"), v8, v11);

  return v12;
}

@end