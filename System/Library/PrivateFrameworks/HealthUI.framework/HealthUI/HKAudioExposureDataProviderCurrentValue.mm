@interface HKAudioExposureDataProviderCurrentValue
- (HKAudioExposureDataProviderCurrentValue)initWithLEQQuantity:(id)a3 secondsListened:(double)a4 daysAggregated:(int64_t)a5 date:(id)a6;
- (id)_attributedSymbolForClassification:(unint64_t)a3 font:(id)a4;
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
- (id)attributedSupplementaryStringWithDisplayType:(id)a3 unitController:(id)a4 font:(id)a5;
- (id)lastUpdatedDescriptionWithDateCache:(id)a3;
- (id)lastUpdatedShortDescriptionWithDateCache:(id)a3;
- (id)stringWithDisplayType:(id)a3 unitController:(id)a4;
@end

@implementation HKAudioExposureDataProviderCurrentValue

- (HKAudioExposureDataProviderCurrentValue)initWithLEQQuantity:(id)a3 secondsListened:(double)a4 daysAggregated:(int64_t)a5 date:(id)a6
{
  v11 = a3;
  v12 = a6;
  v15.receiver = self;
  v15.super_class = HKAudioExposureDataProviderCurrentValue;
  v13 = [(HKAudioExposureDataProviderCurrentValue *)&v15 init];
  if (v13)
  {
    v13->_classification = [MEMORY[0x1E696BF20] classifyLEQ:v11 forDuration:a5 overDays:a4];
    objc_storeStrong(&v13->_leqQuantity, a3);
    v13->_secondsListened = a4;
    v13->_daysAggregated = a5;
    objc_storeStrong(&v13->_date, a6);
  }

  return v13;
}

- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7
{
  v21[2] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69DB650];
  v20[0] = *MEMORY[0x1E69DB648];
  v20[1] = v8;
  v21[0] = a5;
  v9 = MEMORY[0x1E69DC888];
  v10 = a5;
  v11 = [v9 hk_chartLollipopValueColor];
  v21[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = [MEMORY[0x1E696BF20] localizedDisplayNameForClassification:self->_classification];
  v14 = [(HKAudioExposureDataProviderCurrentValue *)self _attributedSymbolForClassification:self->_classification font:v10];
  v15 = [v14 mutableCopy];

  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v12];
  [v15 appendAttributedString:v16];

  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = [v17 initWithString:v13 attributes:v12];
  [v15 appendAttributedString:v18];

  return v15;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)a3
{
  v4 = a3;
  v5 = [(HKAudioExposureDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(v5, v4);

  return v6;
}

- (id)lastUpdatedShortDescriptionWithDateCache:(id)a3
{
  v4 = a3;
  v5 = [(HKAudioExposureDataProviderCurrentValue *)self date];
  v6 = HKMostRecentSampleEndDateText(v5, v4, 0);

  return v6;
}

- (id)stringWithDisplayType:(id)a3 unitController:(id)a4
{
  if (!self->_classification)
  {
    v21 = 0;
    goto LABEL_10;
  }

  leqQuantity = self->_leqQuantity;
  v7 = MEMORY[0x1E696C510];
  v8 = a4;
  v9 = a3;
  v10 = [v7 decibelAWeightedSoundPressureLevelUnit];
  [(HKQuantity *)leqQuantity doubleValueForUnit:v10];
  v12 = v11;

  v13 = [v8 unitForDisplayType:v9];
  v14 = [v9 hk_valueFormatterForUnit:v13];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v16 = [v14 stringFromValue:v15 displayType:v9 unitController:v8];

  v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_secondsListened];
  v18 = HKTimePeriodString(v17, 0);

  daysAggregated = self->_daysAggregated;
  if (daysAggregated == 1)
  {
    v20 = @"AUDIO_EXPOSURE_TODAYS_AVG_DESCRIPTION";
  }

  else
  {
    v21 = 0;
    if (daysAggregated < 2 || daysAggregated > *MEMORY[0x1E696B760])
    {
      goto LABEL_9;
    }

    v20 = @"AUDIO_EXPOSURE_WEEKS_AVG_DESCRIPTION";
  }

  v22 = MEMORY[0x1E696AEC0];
  v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v24 = [v23 localizedStringForKey:v20 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v21 = [v22 stringWithFormat:v24, v16, v18];

LABEL_9:
LABEL_10:

  return v21;
}

- (id)attributedSupplementaryStringWithDisplayType:(id)a3 unitController:(id)a4 font:(id)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(HKAudioExposureDataProviderCurrentValue *)self stringWithDisplayType:a3 unitController:a4];
  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v11 = *MEMORY[0x1E69DB650];
  v16[0] = *MEMORY[0x1E69DB648];
  v16[1] = v11;
  v17[0] = v8;
  v17[1] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);

  v14 = [v13 initWithString:v9 attributes:v12];

  return v14;
}

- (id)_attributedSymbolForClassification:(unint64_t)a3 font:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v7 = [MEMORY[0x1E69DCAB8] hk_hearingHealthAudioExposureSymbolForClassification:a3 font:v5];
    [v6 setImage:v7];

    v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v9 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v6];
    [v8 appendAttributedString:v9];

    v10 = [v8 copy];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
  }

  return v10;
}

@end