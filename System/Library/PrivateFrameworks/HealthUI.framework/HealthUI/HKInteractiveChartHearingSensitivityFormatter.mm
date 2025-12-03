@interface HKInteractiveChartHearingSensitivityFormatter
- (HKInteractiveChartHearingSensitivityFormatter)initWithUnitController:(id)controller;
- (id)_attributedStringWithChartData:(id)data;
- (id)_clampedUnitStringForChartData:(id)data;
- (id)_formattedFrequencyValue:(double)value;
- (id)_formattedTitleWithSensitivityData:(id)data isLeftEar:(BOOL)ear;
- (id)_selectedRangeDataForSensitivityData:(id)data isLeftEar:(BOOL)ear;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (id)unitStringFromUnit:(id)unit number:(id)number;
- (id)valueStringFromNumber:(id)number;
@end

@implementation HKInteractiveChartHearingSensitivityFormatter

- (HKInteractiveChartHearingSensitivityFormatter)initWithUnitController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = HKInteractiveChartHearingSensitivityFormatter;
  v5 = [(HKInteractiveChartHearingSensitivityFormatter *)&v9 init];
  if (v5)
  {
    hk_chartCurrentValueValueFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    [(HKInteractiveChartDataFormatter *)v5 setMajorFont:hk_chartCurrentValueValueFont];

    hk_chartCurrentValueKindFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueKindFont];
    [(HKInteractiveChartDataFormatter *)v5 setMinorFont:hk_chartCurrentValueKindFont];

    [(HKInteractiveChartDataFormatter *)v5 setUnitController:controllerCopy];
    [(HKInteractiveChartDataFormatter *)v5 setDisplayType:0];
  }

  return v5;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [dataCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(dataCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          isLeftEar = [v13 isLeftEar];
          if (isLeftEar)
          {
            v15 = v9;
          }

          else
          {
            v15 = v8;
          }

          if (isLeftEar)
          {
            v9 = v13;
          }

          else
          {
            v8 = v13;
          }
        }
      }

      v7 = [dataCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = [(HKInteractiveChartHearingSensitivityFormatter *)self _selectedRangeDataForSensitivityData:v9 isLeftEar:1];
  [v16 hk_addNonNilObject:v17];

  v18 = [(HKInteractiveChartHearingSensitivityFormatter *)self _selectedRangeDataForSensitivityData:v8 isLeftEar:0];
  [v16 hk_addNonNilObject:v18];

  return v16;
}

- (id)unitStringFromUnit:(id)unit number:(id)number
{
  numberCopy = number;
  unitCopy = unit;
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  v9 = [unitController localizedDisplayNameForUnit:unitCopy value:numberCopy];

  return v9;
}

- (id)valueStringFromNumber:(id)number
{
  v3 = MEMORY[0x1E696AD98];
  [number doubleValue];
  v5 = [v3 numberWithDouble:HKRoundWithPositiveZeroForDoubleValue(v4)];
  v6 = HKIntegerFormatter();
  v7 = [v6 stringFromNumber:v5];

  return v7;
}

- (id)_selectedRangeDataForSensitivityData:(id)data isLeftEar:(BOOL)ear
{
  earCopy = ear;
  dataCopy = data;
  if (dataCopy)
  {
    decibelHearingLevelUnit = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    v8 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    v9 = v8;
    if (earCopy)
    {
      v10 = 7;
    }

    else
    {
      v10 = 8;
    }

    [(HKSelectedRangeData *)v8 setDataType:v10];
    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    features = [mEMORY[0x1E696C608] features];
    yodel = [features yodel];

    if (yodel)
    {
      v14 = [(HKInteractiveChartHearingSensitivityFormatter *)self _formattedTitleWithSensitivityData:dataCopy isLeftEar:earCopy];
      [(HKSelectedRangeData *)v9 setTitleOverride:v14];

      v15 = [(HKInteractiveChartHearingSensitivityFormatter *)self _attributedStringWithChartData:dataCopy];
      [(HKSelectedRangeData *)v9 setAttributedString:v15];

      clampedSensitivityDBHL = [dataCopy clampedSensitivityDBHL];
      if (clampedSensitivityDBHL)
      {
        [(HKSelectedRangeData *)v9 setValueAsNumber:clampedSensitivityDBHL];
      }

      else
      {
        v20 = MEMORY[0x1E696AD98];
        [dataCopy sensitivityDBHL];
        v21 = [v20 numberWithDouble:?];
        [(HKSelectedRangeData *)v9 setValueAsNumber:v21];
      }

      v19 = [(HKInteractiveChartHearingSensitivityFormatter *)self _selectedRangeMetadataWithSensitivityData:dataCopy];
      [(HKSelectedRangeData *)v9 setMetadata:v19];
    }

    else
    {
      [dataCopy sensitivityDBHL];
      v17 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:decibelHearingLevelUnit unit:1 showUnit:?];
      [(HKSelectedRangeData *)v9 setAttributedString:v17];

      v18 = MEMORY[0x1E696AD98];
      [dataCopy sensitivityDBHL];
      v19 = [v18 numberWithDouble:?];
      [(HKSelectedRangeData *)v9 setValueAsNumber:v19];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_attributedStringWithChartData:(id)data
{
  dataCopy = data;
  clampedSensitivityDBHL = [dataCopy clampedSensitivityDBHL];

  if (clampedSensitivityDBHL)
  {
    decibelHearingLevelUnit = [(HKInteractiveChartHearingSensitivityFormatter *)self _clampedUnitStringForChartData:dataCopy];
    clampedSensitivityDBHL2 = [dataCopy clampedSensitivityDBHL];
    [clampedSensitivityDBHL2 doubleValue];
    v8 = [(HKInteractiveChartDataFormatter *)self formattedStringWithValue:decibelHearingLevelUnit unitString:1 showUnit:?];
  }

  else
  {
    [dataCopy sensitivityDBHL];
    v10 = v9;
    decibelHearingLevelUnit = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    v8 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:decibelHearingLevelUnit unit:1 showUnit:v10];
  }

  return v8;
}

- (id)_clampedUnitStringForChartData:(id)data
{
  dataCopy = data;
  lowerClampedSensitivityDBHL = [dataCopy lowerClampedSensitivityDBHL];
  if (lowerClampedSensitivityDBHL && (v5 = lowerClampedSensitivityDBHL, [dataCopy clampedSensitivityDBHL], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "doubleValue"), v8 = v7, objc_msgSend(dataCopy, "lowerClampedSensitivityDBHL"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "doubleValue"), v11 = v10, v9, v6, v5, v8 <= v11))
  {
    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    decibelHearingLevelUnit = v22;
    v23 = @"DECIBEL_HEARING_LEVEL_NUMBERLESS_UNIT_CLAMPED_FROM_BELOW";
  }

  else
  {
    upperClampedSensitivityDBHL = [dataCopy upperClampedSensitivityDBHL];
    if (!upperClampedSensitivityDBHL || (v13 = upperClampedSensitivityDBHL, [dataCopy clampedSensitivityDBHL], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "doubleValue"), v16 = v15, objc_msgSend(dataCopy, "upperClampedSensitivityDBHL"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "doubleValue"), v19 = v18, v17, v14, v13, v16 < v19))
    {
      decibelHearingLevelUnit = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
      unitString = [decibelHearingLevelUnit unitString];
      goto LABEL_9;
    }

    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    decibelHearingLevelUnit = v22;
    v23 = @"DECIBEL_HEARING_LEVEL_NUMBERLESS_UNIT_CLAMPED_FROM_ABOVE";
  }

  unitString = [v22 localizedStringForKey:v23 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
LABEL_9:
  v24 = unitString;

  return v24;
}

- (id)_formattedTitleWithSensitivityData:(id)data isLeftEar:(BOOL)ear
{
  earCopy = ear;
  dataCopy = data;
  [dataCopy frequencyHertz];
  v7 = [(HKInteractiveChartHearingSensitivityFormatter *)self _formattedFrequencyValue:?];
  isMasked = [dataCopy isMasked];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = v9;
  if (isMasked)
  {
    v11 = @"MASKED_AUDIOGRAM_POINT";
  }

  else
  {
    v11 = @"UNMASKED_AUDIOGRAM_POINT";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = v14;
  if (earCopy)
  {
    v16 = @"LEFT_ABBREVIATED_WITH_MASKING_AND_FREQUENCY";
  }

  else
  {
    v16 = @"RIGHT_ABBREVIATED_WITH_MASKING_AND_FREQUENCY";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  v18 = [v13 stringWithFormat:v17, v12, v7];

  localizedUppercaseString = [v18 localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)_formattedFrequencyValue:(double)value
{
  v4 = HKNumberFormatterWithDecimalPrecision(5, 0);
  valueCopy = value / 1000.0;
  if (value / 1000.0 >= 1.0)
  {
    v6 = @"KILOHERTZ_NUMBERLESS_UNIT";
  }

  else
  {
    valueCopy = value;
    v6 = @"HERTZ_NUMBERLESS_UNIT";
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:valueCopy];
  v8 = [v4 stringFromNumber:v7];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = HKFormatValueAndUnit(v8, v10);

  return v11;
}

@end