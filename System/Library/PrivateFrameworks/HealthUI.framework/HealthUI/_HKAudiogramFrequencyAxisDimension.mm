@interface _HKAudiogramFrequencyAxisDimension
- (id)stringForLocation:(id)location formatterForStepSize:(id)size;
@end

@implementation _HKAudiogramFrequencyAxisDimension

- (id)stringForLocation:(id)location formatterForStepSize:(id)size
{
  [location doubleValue];
  v5 = v4;
  if (v4 < 0.0 || v4 > 6.0)
  {
    v7 = &stru_1F42FFBE0;
    goto LABEL_13;
  }

  [HKAudiogramChartPoint frequencyFromAxisValue:v4];
  v9 = v8;
  v10 = HKNumberFormatterFromTemplate(1);
  if (v9 / 1000.0 >= 1.0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9 / 1000.0];
    v7 = [v10 stringFromNumber:v13];

    v12 = @"KILOHERTZ_NUMBERLESS_UNIT";
    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v7 = [v10 stringFromNumber:v11];

  if (v5 == 0.0)
  {
    v12 = @"HERTZ_NUMBERLESS_UNIT";
LABEL_11:
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:v12 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v16 = [(__CFString *)v7 stringByAppendingString:v15];

    v7 = v16;
  }

LABEL_13:

  return v7;
}

@end