@interface HKInteractiveChartAudioLevelStatFormatter
- (id)_attributedCurrentAudioExposureClassificationForChartData:(id)a3;
- (id)_formatDuration:(double)a3;
- (id)_formatQuantityAudioData:(id)a3;
- (id)_formattedCurrentValueForChartData:(id)a3;
- (id)_formattedStringWithValue:(double)a3 unit:(id)a4 showUnit:(BOOL)a5;
- (id)_majorAttributes;
- (id)_minorAttributes;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
- (id)initForDisplayType:(id)a3 timeScope:(int64_t)a4;
- (int64_t)_numberOfDaysVisibleInRange:(id)a3;
@end

@implementation HKInteractiveChartAudioLevelStatFormatter

- (id)initForDisplayType:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = HKInteractiveChartAudioLevelStatFormatter;
  v7 = [(HKInteractiveChartAudioLevelStatFormatter *)&v15 init];
  if (v7)
  {
    v8 = [v6 chartingRules];
    if ([v8 chartStyleForTimeScope:a4] == 3)
    {
    }

    else
    {
      v9 = [v6 chartingRules];
      v10 = [v9 chartStyleForTimeScope:a4];

      if (v10 != 9)
      {
        v12 = [v6 objectType];
        v13 = [v12 aggregationStyle];

        if (v13)
        {
          v11 = &unk_1F43811B0;
        }

        else
        {
          v11 = &unk_1F4381198;
        }

        goto LABEL_9;
      }
    }

    v11 = &unk_1F4381180;
LABEL_9:
    [(HKInteractiveChartGenericStatFormatter *)v7 setOverrideStatFormatterItemOptions:v11];
  }

  return v7;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_15;
  }

  v8 = [v7 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v12 = [v7 firstObject];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if ((v11 & 1) == 0)
    {
      v16.receiver = self;
      v16.super_class = HKInteractiveChartAudioLevelStatFormatter;
      v10 = [(HKInteractiveChartGenericStatFormatter *)&v16 formattedSelectedRangeLabelDataWithChartData:v7 context:a4];
      goto LABEL_14;
    }

    v13 = v7;
    if ([(HKInteractiveChartAudioLevelStatFormatter *)self showsClassificationInCurrentValueView])
    {
      if (a4 == 1)
      {
        v14 = [(HKInteractiveChartAudioLevelStatFormatter *)self _formattedCurrentValueForChartData:v13];
        goto LABEL_11;
      }

      if (a4)
      {
LABEL_12:

        goto LABEL_15;
      }
    }

    v14 = [(HKInteractiveChartGenericStatFormatter *)self _formattedAnnotationForDistributionChartData:v13];
LABEL_11:
    v11 = v14;
    goto LABEL_12;
  }

  v10 = [(HKInteractiveChartAudioLevelStatFormatter *)self _formatQuantityAudioData:v7];
LABEL_14:
  v11 = v10;
LABEL_15:

  return v11;
}

- (id)_formattedCurrentValueForChartData:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[HKSelectedRangeData alloc] initWithStatisticsType:4];
  v6 = [(HKInteractiveChartAudioLevelStatFormatter *)self _attributedCurrentAudioExposureClassificationForChartData:v4];

  [(HKSelectedRangeData *)v5 setAttributedString:v6];
  [(HKSelectedRangeData *)v5 setValueAsNumber:0];
  v9[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v7;
}

- (id)_attributedCurrentAudioExposureClassificationForChartData:(id)a3
{
  v4 = a3;
  v5 = [HKDateCache alloc];
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [(HKDateCache *)v5 initWithCalendar:v6];

  v8 = [v4 lastObject];
  v9 = [v8 endDate];

  v10 = [(HKInteractiveChartGenericStatFormatter *)self chartRangeProvider];
  v11 = [v10 effectiveVisibleRangeActive];
  v12 = [(HKInteractiveChartAudioLevelStatFormatter *)self _numberOfDaysVisibleInRange:v11];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __103__HKInteractiveChartAudioLevelStatFormatter__attributedCurrentAudioExposureClassificationForChartData___block_invoke;
  v22[3] = &unk_1E81B6FA0;
  v22[4] = &v23;
  v13 = [v4 hk_map:v22];
  v14 = [MEMORY[0x1E696BF20] computeLEQFromAudioExposureValues:v13];
  v15 = [HKAudioExposureDataProviderCurrentValue alloc];
  v16 = [(HKAudioExposureDataProviderCurrentValue *)v15 initWithLEQQuantity:v14 secondsListened:v12 daysAggregated:v9 date:v24[3]];
  v17 = [(HKInteractiveChartDataFormatter *)self displayType];
  v18 = [(HKInteractiveChartDataFormatter *)self unitController];
  v19 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v20 = [(HKAudioExposureDataProviderCurrentValue *)v16 attributedStringWithDisplayType:v17 unitController:v18 valueFont:v19 unitFont:0 dateCache:v7];

  _Block_object_dispose(&v23, 8);

  return v20;
}

id __103__HKInteractiveChartAudioLevelStatFormatter__attributedCurrentAudioExposureClassificationForChartData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 duration];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
  v5 = objc_alloc(MEMORY[0x1E696BF28]);
  [v3 averageValue];
  v7 = v6;
  [v3 duration];
  v9 = v8;

  v10 = [v5 initWithValue:v7 duration:v9];

  return v10;
}

- (id)_majorAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E69DB648];
  v2 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v7[0] = v2;
  v6[1] = *MEMORY[0x1E69DB650];
  v3 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)_minorAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E69DB648];
  v2 = [(HKInteractiveChartDataFormatter *)self minorFont];
  v7[0] = v2;
  v6[1] = *MEMORY[0x1E69DB650];
  v3 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)_formattedStringWithValue:(double)a3 unit:(id)a4 showUnit:(BOOL)a5
{
  v5 = a5;
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithDouble:a3];
  v11 = [(HKInteractiveChartDataFormatter *)self displayType];
  if (v11)
  {
    v12 = [(HKInteractiveChartDataFormatter *)self displayType];
    v13 = [v12 presentation];
    v14 = [v13 adjustedValueForDaemonValue:v10];
  }

  else
  {
    v14 = v10;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v16 = [(HKInteractiveChartDataFormatter *)self unitStringFromUnit:v9 number:v15];

  v17 = [(HKInteractiveChartDataFormatter *)self valueStringFromNumber:v14];
  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v19 = [(HKInteractiveChartAudioLevelStatFormatter *)self _majorAttributes];
  v20 = [v18 initWithString:v17 attributes:v19];

  if (v5 && [v16 length])
  {
    v21 = objc_alloc(MEMORY[0x1E696AAB0]);
    v32 = *MEMORY[0x1E69DB648];
    v22 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v33[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v24 = [v21 initWithString:@" " attributes:v23];

    v25 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26 = [(HKInteractiveChartAudioLevelStatFormatter *)self _minorAttributes];
    v27 = [v25 initWithString:v16 attributes:v26];

    v31[0] = v20;
    v31[1] = v24;
    v31[2] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    v29 = HKUIJoinAttributedStringsForLocale(v28);
  }

  else
  {
    v29 = v20;
  }

  return v29;
}

- (int64_t)_numberOfDaysVisibleInRange:(id)a3
{
  v3 = a3;
  v4 = [v3 startDate];
  if (v4 && (v5 = v4, [v3 endDate], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v3 startDate];
    v8 = [v3 endDate];
    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [v9 components:16 fromDate:v7 toDate:v8 options:0];

    if ([v10 day] < 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v10 day];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_formatQuantityAudioData:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696C510] decibelAWeightedSoundPressureLevelUnit];
  v6 = [v4 count];
  v7 = [v4 firstObject];
  v8 = v7;
  if (v6 < 2)
  {
    v22 = [v7 overviewData];
    if (v22)
    {
      v23 = [v8 overviewData];
      [v23 averageLEQ];
      v25 = v24;
    }

    else
    {
      [v8 averageLEQ];
      v25 = v28;
    }

    v29 = [v8 overviewData];
    if (v29)
    {
      v30 = [v8 overviewData];
      [v30 duration];
      v32 = v31;
    }

    else
    {
      [v8 duration];
      v32 = v33;
    }

    v34 = [(HKInteractiveChartGenericStatFormatter *)self overrideStatFormatterItemOptions];
    v35 = [v34 count];

    if (v35 == 1)
    {
      v36 = [(HKInteractiveChartGenericStatFormatter *)self overrideStatFormatterItemOptions];
      v37 = [v36 firstObject];
      v38 = [(HKInteractiveChartGenericStatFormatter *)HKInteractiveChartAudioLevelStatFormatter mapSingleItemToStatisticsType:v37];
    }

    else
    {
      v38 = 4;
    }

    v26 = [[HKSelectedRangeData alloc] initWithStatisticsType:v38];
    v39 = [(HKInteractiveChartAudioLevelStatFormatter *)self _formattedStringWithValue:v5 unit:1 showUnit:v25];
    [(HKSelectedRangeData *)v26 setAttributedString:v39];

    v40 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
    [(HKSelectedRangeData *)v26 setValueAsNumber:v40];

    v27 = [(HKInteractiveChartAudioLevelStatFormatter *)self _formatDuration:v32];
  }

  else
  {
    [v7 averageLEQ];
    v10 = v9;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      v15 = 0.0;
      v16 = v10;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          [v18 averageLEQ];
          if (v16 >= v19)
          {
            v16 = v19;
          }

          [v18 averageLEQ];
          if (v10 < v20)
          {
            v10 = v20;
          }

          [v18 duration];
          v15 = v15 + v21;
        }

        v13 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
      v16 = v10;
    }

    v26 = [(HKInteractiveChartGenericStatFormatter *)self _formatMin:v5 max:v16 unit:v10];
    v27 = [(HKInteractiveChartAudioLevelStatFormatter *)self _formatDuration:v15];
  }

  v47[0] = v26;
  v47[1] = v27;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:{2, v43}];

  return v41;
}

- (id)_formatDuration:(double)a3
{
  v5 = [[HKSelectedRangeData alloc] initWithStatisticsType:10];
  v6 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v7 = [(HKInteractiveChartDataFormatter *)self minorFont];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v9 = HKTimePeriodStringWithFonts(v6, v7, v8, 0x14uLL);
  [(HKSelectedRangeData *)v5 setAttributedString:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HKSelectedRangeData *)v5 setValueAsNumber:v10];

  return v5;
}

@end