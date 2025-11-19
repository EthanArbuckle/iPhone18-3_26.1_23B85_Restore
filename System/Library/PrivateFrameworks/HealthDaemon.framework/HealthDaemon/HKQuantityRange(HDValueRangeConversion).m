@interface HKQuantityRange(HDValueRangeConversion)
- (_HDValueRange)valueRangeWithUnit:()HDValueRangeConversion;
@end

@implementation HKQuantityRange(HDValueRangeConversion)

- (_HDValueRange)valueRangeWithUnit:()HDValueRangeConversion
{
  v4 = a3;
  v5 = [_HDValueRange alloc];
  v6 = [a1 minimum];
  [v6 doubleValueForUnit:v4];
  v8 = v7;
  v9 = [a1 maximum];
  [v9 doubleValueForUnit:v4];
  v11 = v10;

  v12 = -[_HDValueRange initWithMinimum:maximum:isMinimumInclusive:isMaximumInclusive:](v5, "initWithMinimum:maximum:isMinimumInclusive:isMaximumInclusive:", [a1 isMinimumInclusive], objc_msgSend(a1, "isMaximumInclusive"), v8, v11);

  return v12;
}

@end