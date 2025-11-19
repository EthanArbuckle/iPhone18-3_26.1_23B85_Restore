@interface HKTieredDecimalPrecisionRule
- (id)numberFormatter;
- (int64_t)decimalPrecisionForValue:(double)a3;
@end

@implementation HKTieredDecimalPrecisionRule

- (int64_t)decimalPrecisionForValue:(double)a3
{
  if (a3 >= 1.0)
  {
    return a3 < 100.0;
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