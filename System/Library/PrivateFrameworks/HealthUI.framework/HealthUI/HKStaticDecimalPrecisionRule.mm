@interface HKStaticDecimalPrecisionRule
- (HKStaticDecimalPrecisionRule)initWithDecimalPrecision:(int64_t)precision;
@end

@implementation HKStaticDecimalPrecisionRule

- (HKStaticDecimalPrecisionRule)initWithDecimalPrecision:(int64_t)precision
{
  v5.receiver = self;
  v5.super_class = HKStaticDecimalPrecisionRule;
  result = [(HKStaticDecimalPrecisionRule *)&v5 init];
  if (result)
  {
    result->_decimalPrecision = precision;
  }

  return result;
}

@end