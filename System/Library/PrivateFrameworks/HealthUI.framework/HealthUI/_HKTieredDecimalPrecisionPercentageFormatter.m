@interface _HKTieredDecimalPrecisionPercentageFormatter
+ (id)sharedInstance;
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
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

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  v7 = a3;
  v8 = [(_HKTieredDecimalPrecisionNumberFormatter *)self _numberFormatterForNumber:v7 displayType:a4];
  v9 = MEMORY[0x1E696AD98];
  [v7 doubleValue];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  v13 = [v8 stringFromNumber:v12];

  return v13;
}

@end