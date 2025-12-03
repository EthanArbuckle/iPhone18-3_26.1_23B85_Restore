@interface HKTimePeriodWithSecondsNumberFormatter
- (HKTimePeriodWithSecondsNumberFormatter)init;
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation HKTimePeriodWithSecondsNumberFormatter

- (HKTimePeriodWithSecondsNumberFormatter)init
{
  v3.receiver = self;
  v3.super_class = HKTimePeriodWithSecondsNumberFormatter;
  result = [(HKTimePeriodWithSecondsNumberFormatter *)&v3 init];
  if (result)
  {
    result->_secondsRoundingMode = 0;
  }

  return result;
}

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  [number doubleValue];
  v7 = v6;
  HKSeparateTimeIntervalComponents();
  if (v7 >= 2.22044605e-16 && 0.0 <= 2.22044605e-16)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    v16 = HKTimePeriodStringGenerator(v9, 0);
    goto LABEL_18;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(HKTimePeriodWithSecondsNumberFormatter *)self allowMillisecondPrecision])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = HKNumberFormatterWithDecimalPrecisionAndStyle(v10, [(HKTimePeriodWithSecondsNumberFormatter *)self secondsRoundingMode], 1);
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v13 = [v11 stringFromNumber:v12];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = &stru_1F42FFBE0;
  v17 = [v15 localizedStringForKey:@"SECONDS_PAIR_SHORT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v18 = [v14 localizedStringWithFormat:v17, v13];

  [v9 addObject:v18];
  v19 = [v9 count];
  switch(v19)
  {
    case 3:
      v26 = MEMORY[0x1E696AEC0];
      v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v22 = [v21 localizedStringForKey:@"TIME_DISPLAY_3" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v23 = [v9 objectAtIndexedSubscript:0];
      v25 = [v9 objectAtIndexedSubscript:1];
      v27 = [v9 objectAtIndexedSubscript:2];
      v16 = [v26 localizedStringWithFormat:v22, v23, v25, v27];

      goto LABEL_15;
    case 2:
      v24 = MEMORY[0x1E696AEC0];
      v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v22 = [v21 localizedStringForKey:@"TIME_DISPLAY_2" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v23 = [v9 objectAtIndexedSubscript:0];
      v25 = [v9 objectAtIndexedSubscript:1];
      v16 = [v24 localizedStringWithFormat:v22, v23, v25];
LABEL_15:

      goto LABEL_16;
    case 1:
      v20 = MEMORY[0x1E696AEC0];
      v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v22 = [v21 localizedStringForKey:@"TIME_DISPLAY_1" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v23 = [v9 objectAtIndexedSubscript:0];
      v16 = [v20 localizedStringWithFormat:v22, v23];
LABEL_16:

      break;
  }

LABEL_18:

  return v16;
}

@end