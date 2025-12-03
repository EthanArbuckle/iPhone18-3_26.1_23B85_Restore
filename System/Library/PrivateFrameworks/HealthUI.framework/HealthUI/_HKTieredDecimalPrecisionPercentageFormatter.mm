@interface _HKTieredDecimalPrecisionPercentageFormatter
+ (id)sharedInstance;
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation _HKTieredDecimalPrecisionPercentageFormatter

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_373 != -1)
  {
    +[_HKTieredDecimalPrecisionPercentageFormatter sharedInstance];
  }

  v3 = sharedInstance_numberFormatter_372;

  return v3;
}

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  numberCopy = number;
  v8 = [(_HKTieredDecimalPrecisionNumberFormatter *)self _numberFormatterForNumber:numberCopy displayType:type];
  v9 = MEMORY[0x1E696AD98];
  [numberCopy doubleValue];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  v13 = [v8 stringFromNumber:v12];

  return v13;
}

@end