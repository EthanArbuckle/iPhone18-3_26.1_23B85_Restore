@interface HKTieredDecimalPrecisionRule
- (id)numberFormatter;
- (int64_t)decimalPrecisionForValue:(double)value;
@end

@implementation HKTieredDecimalPrecisionRule

- (int64_t)decimalPrecisionForValue:(double)value
{
  if (value >= 1.0)
  {
    return value < 100.0;
  }

  else
  {
    return 2;
  }
}

- (id)numberFormatter
{
  v2 = objc_opt_class();

  return [v2 numberFormatter];
}

@end