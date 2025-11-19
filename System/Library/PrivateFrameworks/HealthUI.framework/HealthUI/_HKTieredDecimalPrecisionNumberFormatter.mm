@interface _HKTieredDecimalPrecisionNumberFormatter
+ (id)sharedInstance;
- (id)_numberFormatterForNumber:(id)a3 displayType:(id)a4;
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
@end

@implementation _HKTieredDecimalPrecisionNumberFormatter

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_HKTieredDecimalPrecisionNumberFormatter sharedInstance];
  }

  v3 = sharedInstance_numberFormatter;

  return v3;
}

- (id)_numberFormatterForNumber:(id)a3 displayType:(id)a4
{
  v6 = a4;
  [a3 doubleValue];
  v8 = v7;
  if (v7 >= 1.0)
  {
    v9 = [v6 roundingMode];
    v10 = [(_HKTieredDecimalPrecisionNumberFormatter *)self style];
    v11 = v8 < 100.0;
  }

  else
  {
    v9 = [v6 roundingMode];
    v10 = [(_HKTieredDecimalPrecisionNumberFormatter *)self style];
    v11 = 2;
  }

  v12 = HKNumberFormatterWithDecimalPrecisionAndStyle(v11, v9, v10);

  return v12;
}

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  v7 = a3;
  v8 = [(_HKTieredDecimalPrecisionNumberFormatter *)self _numberFormatterForNumber:v7 displayType:a4];
  v9 = [v8 stringFromNumber:v7];

  return v9;
}

@end