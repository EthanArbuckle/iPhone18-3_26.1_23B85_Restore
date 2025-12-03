@interface _HKTieredDecimalPrecisionNumberFormatter
+ (id)sharedInstance;
- (id)_numberFormatterForNumber:(id)number displayType:(id)type;
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
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

- (id)_numberFormatterForNumber:(id)number displayType:(id)type
{
  typeCopy = type;
  [number doubleValue];
  v8 = v7;
  if (v7 >= 1.0)
  {
    roundingMode = [typeCopy roundingMode];
    style = [(_HKTieredDecimalPrecisionNumberFormatter *)self style];
    v11 = v8 < 100.0;
  }

  else
  {
    roundingMode = [typeCopy roundingMode];
    style = [(_HKTieredDecimalPrecisionNumberFormatter *)self style];
    v11 = 2;
  }

  v12 = HKNumberFormatterWithDecimalPrecisionAndStyle(v11, roundingMode, style);

  return v12;
}

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  numberCopy = number;
  v8 = [(_HKTieredDecimalPrecisionNumberFormatter *)self _numberFormatterForNumber:numberCopy displayType:type];
  v9 = [v8 stringFromNumber:numberCopy];

  return v9;
}

@end