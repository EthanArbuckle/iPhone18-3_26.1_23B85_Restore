@interface HKInteractiveChartHearingSensitivityFormatter
- (HKInteractiveChartHearingSensitivityFormatter)initWithUnitController:(id)a3;
- (id)_attributedStringWithChartData:(id)a3;
- (id)_clampedUnitStringForChartData:(id)a3;
- (id)_formattedFrequencyValue:(double)a3;
- (id)_formattedTitleWithSensitivityData:(id)a3 isLeftEar:(BOOL)a4;
- (id)_selectedRangeDataForSensitivityData:(id)a3 isLeftEar:(BOOL)a4;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
- (id)unitStringFromUnit:(id)a3 number:(id)a4;
- (id)valueStringFromNumber:(id)a3;
@end

@implementation HKInteractiveChartHearingSensitivityFormatter

- (HKInteractiveChartHearingSensitivityFormatter)initWithUnitController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKInteractiveChartHearingSensitivityFormatter;
  v5 = [(HKInteractiveChartHearingSensitivityFormatter *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    [(HKInteractiveChartDataFormatter *)v5 setMajorFont:v6];

    v7 = [MEMORY[0x1E69DB878] hk_chartCurrentValueKindFont];
    [(HKInteractiveChartDataFormatter *)v5 setMinorFont:v7];

    [(HKInteractiveChartDataFormatter *)v5 setUnitController:v4];
    [(HKInteractiveChartDataFormatter *)v5 setDisplayType:0];
  }

  return v5;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 isLeftEar];
          if (v14)
          {
            v15 = v9;
          }

          else
          {
            v15 = v8;
          }

          if (v14)
          {
            v9 = v13;
          }

          else
          {
            v8 = v13;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)unitStringFromUnit:(id)a3 number:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKInteractiveChartDataFormatter *)self unitController];
  v9 = [v8 localizedDisplayNameForUnit:v7 value:v6];

  return v9;
}

- (id)valueStringFromNumber:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  [a3 doubleValue];
  v5 = [v3 numberWithDouble:HKRoundWithPositiveZeroForDoubleValue(v4)];
  v6 = HKIntegerFormatter();
  v7 = [v6 stringFromNumber:v5];

  return v7;
}

- (id)_selectedRangeDataForSensitivityData:(id)a3 isLeftEar:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    v8 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    v9 = v8;
    if (v4)
    {
      v10 = 7;
    }

    else
    {
      v10 = 8;
    }

    [(HKSelectedRangeData *)v8 setDataType:v10];
    v11 = [MEMORY[0x1E696C608] sharedBehavior];
    v12 = [v11 features];
    v13 = [v12 yodel];

    if (v13)
    {
      v14 = [(HKInteractiveChartHearingSensitivityFormatter *)self _formattedTitleWithSensitivityData:v6 isLeftEar:v4];
      [(HKSelectedRangeData *)v9 setTitleOverride:v14];

      v15 = [(HKInteractiveChartHearingSensitivityFormatter *)self _attributedStringWithChartData:v6];
      [(HKSelectedRangeData *)v9 setAttributedString:v15];

      v16 = [v6 clampedSensitivityDBHL];
      if (v16)
      {
        [(HKSelectedRangeData *)v9 setValueAsNumber:v16];
      }

      else
      {
        v20 = MEMORY[0x1E696AD98];
        [v6 sensitivityDBHL];
        v21 = [v20 numberWithDouble:?];
        [(HKSelectedRangeData *)v9 setValueAsNumber:v21];
      }

      v19 = [(HKInteractiveChartHearingSensitivityFormatter *)self _selectedRangeMetadataWithSensitivityData:v6];
      [(HKSelectedRangeData *)v9 setMetadata:v19];
    }

    else
    {
      [v6 sensitivityDBHL];
      v17 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v7 unit:1 showUnit:?];
      [(HKSelectedRangeData *)v9 setAttributedString:v17];

      v18 = MEMORY[0x1E696AD98];
      [v6 sensitivityDBHL];
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

- (id)_attributedStringWithChartData:(id)a3
{
  v4 = a3;
  v5 = [v4 clampedSensitivityDBHL];

  if (v5)
  {
    v6 = [(HKInteractiveChartHearingSensitivityFormatter *)self _clampedUnitStringForChartData:v4];
    v7 = [v4 clampedSensitivityDBHL];
    [v7 doubleValue];
    v8 = [(HKInteractiveChartDataFormatter *)self formattedStringWithValue:v6 unitString:1 showUnit:?];
  }

  else
  {
    [v4 sensitivityDBHL];
    v10 = v9;
    v6 = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    v8 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v6 unit:1 showUnit:v10];
  }

  return v8;
}

- (id)_clampedUnitStringForChartData:(id)a3
{
  v3 = a3;
  v4 = [v3 lowerClampedSensitivityDBHL];
  if (v4 && (v5 = v4, [v3 clampedSensitivityDBHL], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "doubleValue"), v8 = v7, objc_msgSend(v3, "lowerClampedSensitivityDBHL"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "doubleValue"), v11 = v10, v9, v6, v5, v8 <= v11))
  {
    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v20 = v22;
    v23 = @"DECIBEL_HEARING_LEVEL_NUMBERLESS_UNIT_CLAMPED_FROM_BELOW";
  }

  else
  {
    v12 = [v3 upperClampedSensitivityDBHL];
    if (!v12 || (v13 = v12, [v3 clampedSensitivityDBHL], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "doubleValue"), v16 = v15, objc_msgSend(v3, "upperClampedSensitivityDBHL"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "doubleValue"), v19 = v18, v17, v14, v13, v16 < v19))
    {
      v20 = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
      v21 = [v20 unitString];
      goto LABEL_9;
    }

    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v20 = v22;
    v23 = @"DECIBEL_HEARING_LEVEL_NUMBERLESS_UNIT_CLAMPED_FROM_ABOVE";
  }

  v21 = [v22 localizedStringForKey:v23 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
LABEL_9:
  v24 = v21;

  return v24;
}

- (id)_formattedTitleWithSensitivityData:(id)a3 isLeftEar:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 frequencyHertz];
  v7 = [(HKInteractiveChartHearingSensitivityFormatter *)self _formattedFrequencyValue:?];
  v8 = [v6 isMasked];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = v9;
  if (v8)
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
  if (v4)
  {
    v16 = @"LEFT_ABBREVIATED_WITH_MASKING_AND_FREQUENCY";
  }

  else
  {
    v16 = @"RIGHT_ABBREVIATED_WITH_MASKING_AND_FREQUENCY";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  v18 = [v13 stringWithFormat:v17, v12, v7];

  v19 = [v18 localizedUppercaseString];

  return v19;
}

- (id)_formattedFrequencyValue:(double)a3
{
  v4 = HKNumberFormatterWithDecimalPrecision(5, 0);
  v5 = a3 / 1000.0;
  if (a3 / 1000.0 >= 1.0)
  {
    v6 = @"KILOHERTZ_NUMBERLESS_UNIT";
  }

  else
  {
    v5 = a3;
    v6 = @"HERTZ_NUMBERLESS_UNIT";
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v8 = [v4 stringFromNumber:v7];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = HKFormatValueAndUnit(v8, v10);

  return v11;
}

@end