@interface HKAudioExposureDataProviderCurrentValue
- (HKAudioExposureDataProviderCurrentValue)initWithLEQQuantity:(id)quantity secondsListened:(double)listened daysAggregated:(int64_t)aggregated date:(id)date;
- (id)_attributedSymbolForClassification:(unint64_t)classification font:(id)font;
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
- (id)attributedSupplementaryStringWithDisplayType:(id)type unitController:(id)controller font:(id)font;
- (id)lastUpdatedDescriptionWithDateCache:(id)cache;
- (id)lastUpdatedShortDescriptionWithDateCache:(id)cache;
- (id)stringWithDisplayType:(id)type unitController:(id)controller;
@end

@implementation HKAudioExposureDataProviderCurrentValue

- (HKAudioExposureDataProviderCurrentValue)initWithLEQQuantity:(id)quantity secondsListened:(double)listened daysAggregated:(int64_t)aggregated date:(id)date
{
  quantityCopy = quantity;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = HKAudioExposureDataProviderCurrentValue;
  v13 = [(HKAudioExposureDataProviderCurrentValue *)&v15 init];
  if (v13)
  {
    v13->_classification = [MEMORY[0x1E696BF20] classifyLEQ:quantityCopy forDuration:aggregated overDays:listened];
    objc_storeStrong(&v13->_leqQuantity, quantity);
    v13->_secondsListened = listened;
    v13->_daysAggregated = aggregated;
    objc_storeStrong(&v13->_date, date);
  }

  return v13;
}

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  v21[2] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69DB650];
  v20[0] = *MEMORY[0x1E69DB648];
  v20[1] = v8;
  v21[0] = font;
  v9 = MEMORY[0x1E69DC888];
  fontCopy = font;
  hk_chartLollipopValueColor = [v9 hk_chartLollipopValueColor];
  v21[1] = hk_chartLollipopValueColor;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = [MEMORY[0x1E696BF20] localizedDisplayNameForClassification:self->_classification];
  v14 = [(HKAudioExposureDataProviderCurrentValue *)self _attributedSymbolForClassification:self->_classification font:fontCopy];
  v15 = [v14 mutableCopy];

  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v12];
  [v15 appendAttributedString:v16];

  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = [v17 initWithString:v13 attributes:v12];
  [v15 appendAttributedString:v18];

  return v15;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)cache
{
  cacheCopy = cache;
  date = [(HKAudioExposureDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(date, cacheCopy);

  return v6;
}

- (id)lastUpdatedShortDescriptionWithDateCache:(id)cache
{
  cacheCopy = cache;
  date = [(HKAudioExposureDataProviderCurrentValue *)self date];
  v6 = HKMostRecentSampleEndDateText(date, cacheCopy, 0);

  return v6;
}

- (id)stringWithDisplayType:(id)type unitController:(id)controller
{
  if (!self->_classification)
  {
    v21 = 0;
    goto LABEL_10;
  }

  leqQuantity = self->_leqQuantity;
  v7 = MEMORY[0x1E696C510];
  controllerCopy = controller;
  typeCopy = type;
  decibelAWeightedSoundPressureLevelUnit = [v7 decibelAWeightedSoundPressureLevelUnit];
  [(HKQuantity *)leqQuantity doubleValueForUnit:decibelAWeightedSoundPressureLevelUnit];
  v12 = v11;

  v13 = [controllerCopy unitForDisplayType:typeCopy];
  v14 = [typeCopy hk_valueFormatterForUnit:v13];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v16 = [v14 stringFromValue:v15 displayType:typeCopy unitController:controllerCopy];

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

- (id)attributedSupplementaryStringWithDisplayType:(id)type unitController:(id)controller font:(id)font
{
  v17[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  v9 = [(HKAudioExposureDataProviderCurrentValue *)self stringWithDisplayType:type unitController:controller];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v11 = *MEMORY[0x1E69DB650];
  v16[0] = *MEMORY[0x1E69DB648];
  v16[1] = v11;
  v17[0] = fontCopy;
  v17[1] = secondaryLabelColor;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);

  v14 = [v13 initWithString:v9 attributes:v12];

  return v14;
}

- (id)_attributedSymbolForClassification:(unint64_t)classification font:(id)font
{
  fontCopy = font;
  if (classification)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v7 = [MEMORY[0x1E69DCAB8] hk_hearingHealthAudioExposureSymbolForClassification:classification font:fontCopy];
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