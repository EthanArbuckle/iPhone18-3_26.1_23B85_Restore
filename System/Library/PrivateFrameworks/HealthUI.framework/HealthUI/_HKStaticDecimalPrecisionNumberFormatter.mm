@interface _HKStaticDecimalPrecisionNumberFormatter
+ (id)formatterWithDecimalPrecision:(int64_t)precision;
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation _HKStaticDecimalPrecisionNumberFormatter

+ (id)formatterWithDecimalPrecision:(int64_t)precision
{
  v4 = objc_alloc_init(_HKStaticDecimalPrecisionNumberFormatter);
  [(_HKStaticDecimalPrecisionNumberFormatter *)v4 setDecimalPrecision:precision];

  return v4;
}

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  decimalPrecision = self->_decimalPrecision;
  numberCopy = number;
  v8 = HKNumberFormatterWithDecimalPrecision(decimalPrecision, [type roundingMode]);
  v9 = [v8 stringFromNumber:numberCopy];

  return v9;
}

@end