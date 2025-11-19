@interface _HKStaticDecimalPrecisionNumberFormatter
+ (id)formatterWithDecimalPrecision:(int64_t)a3;
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
@end

@implementation _HKStaticDecimalPrecisionNumberFormatter

+ (id)formatterWithDecimalPrecision:(int64_t)a3
{
  v4 = objc_alloc_init(_HKStaticDecimalPrecisionNumberFormatter);
  [(_HKStaticDecimalPrecisionNumberFormatter *)v4 setDecimalPrecision:a3];

  return v4;
}

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  decimalPrecision = self->_decimalPrecision;
  v7 = a3;
  v8 = HKNumberFormatterWithDecimalPrecision(decimalPrecision, [a4 roundingMode]);
  v9 = [v8 stringFromNumber:v7];

  return v9;
}

@end