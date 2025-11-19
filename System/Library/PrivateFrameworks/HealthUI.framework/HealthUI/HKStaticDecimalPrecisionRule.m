@interface HKStaticDecimalPrecisionRule
- (HKStaticDecimalPrecisionRule)initWithDecimalPrecision:(int64_t)a3;
@end

@implementation HKStaticDecimalPrecisionRule

- (HKStaticDecimalPrecisionRule)initWithDecimalPrecision:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HKStaticDecimalPrecisionRule;
  result = [(HKStaticDecimalPrecisionRule *)&v5 init];
  if (result)
  {
    result->_decimalPrecision = a3;
  }

  return result;
}

@end