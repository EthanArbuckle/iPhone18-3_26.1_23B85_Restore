@interface HKInteractiveChartAudioLevelStatFormatter
- (id)_attributedCurrentAudioExposureClassificationForChartData:(id)data;
- (id)_formatDuration:(double)duration;
- (id)_formatQuantityAudioData:(id)data;
- (id)_formattedCurrentValueForChartData:(id)data;
- (id)_formattedStringWithValue:(double)value unit:(id)unit showUnit:(BOOL)showUnit;
- (id)_majorAttributes;
- (id)_minorAttributes;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (id)initForDisplayType:(id)type timeScope:(int64_t)scope;
- (int64_t)_numberOfDaysVisibleInRange:(id)range;
@end

@implementation HKInteractiveChartAudioLevelStatFormatter

- (id)initForDisplayType:(id)type timeScope:(int64_t)scope
{
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = HKInteractiveChartAudioLevelStatFormatter;
  v7 = [(HKInteractiveChartAudioLevelStatFormatter *)&v15 init];
  if (v7)
  {
    chartingRules = [typeCopy chartingRules];
    if ([chartingRules chartStyleForTimeScope:scope] == 3)
    {
    }

    else
    {
      chartingRules2 = [typeCopy chartingRules];
      v10 = [chartingRules2 chartStyleForTimeScope:scope];

      if (v10 != 9)
      {
        objectType = [typeCopy objectType];
        aggregationStyle = [objectType aggregationStyle];

        if (aggregationStyle)
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

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  dataCopy = data;
  v7 = dataCopy;
  if (!dataCopy || ![dataCopy count])
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_15;
  }

  firstObject = [v7 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    firstObject2 = [v7 firstObject];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if ((v11 & 1) == 0)
    {
      v16.receiver = self;
      v16.super_class = HKInteractiveChartAudioLevelStatFormatter;
      v10 = [(HKInteractiveChartGenericStatFormatter *)&v16 formattedSelectedRangeLabelDataWithChartData:v7 context:context];
      goto LABEL_14;
    }

    v13 = v7;
    if ([(HKInteractiveChartAudioLevelStatFormatter *)self showsClassificationInCurrentValueView])
    {
      if (context == 1)
      {
        v14 = [(HKInteractiveChartAudioLevelStatFormatter *)self _formattedCurrentValueForChartData:v13];
        goto LABEL_11;
      }

      if (context)
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

- (id)_formattedCurrentValueForChartData:(id)data
{
  v9[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [[HKSelectedRangeData alloc] initWithStatisticsType:4];
  v6 = [(HKInteractiveChartAudioLevelStatFormatter *)self _attributedCurrentAudioExposureClassificationForChartData:dataCopy];

  [(HKSelectedRangeData *)v5 setAttributedString:v6];
  [(HKSelectedRangeData *)v5 setValueAsNumber:0];
  v9[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v7;
}

- (id)_attributedCurrentAudioExposureClassificationForChartData:(id)data
{
  dataCopy = data;
  v5 = [HKDateCache alloc];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [(HKDateCache *)v5 initWithCalendar:currentCalendar];

  lastObject = [dataCopy lastObject];
  endDate = [lastObject endDate];

  chartRangeProvider = [(HKInteractiveChartGenericStatFormatter *)self chartRangeProvider];
  effectiveVisibleRangeActive = [chartRangeProvider effectiveVisibleRangeActive];
  v12 = [(HKInteractiveChartAudioLevelStatFormatter *)self _numberOfDaysVisibleInRange:effectiveVisibleRangeActive];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __103__HKInteractiveChartAudioLevelStatFormatter__attributedCurrentAudioExposureClassificationForChartData___block_invoke;
  v22[3] = &unk_1E81B6FA0;
  v22[4] = &v23;
  v13 = [dataCopy hk_map:v22];
  v14 = [MEMORY[0x1E696BF20] computeLEQFromAudioExposureValues:v13];
  v15 = [HKAudioExposureDataProviderCurrentValue alloc];
  v16 = [(HKAudioExposureDataProviderCurrentValue *)v15 initWithLEQQuantity:v14 secondsListened:v12 daysAggregated:endDate date:v24[3]];
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v20 = [(HKAudioExposureDataProviderCurrentValue *)v16 attributedStringWithDisplayType:displayType unitController:unitController valueFont:majorFont unitFont:0 dateCache:v7];

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
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v7[0] = majorFont;
  v6[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v7[1] = hk_chartLollipopValueColor;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)_minorAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E69DB648];
  minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
  v7[0] = minorFont;
  v6[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v7[1] = hk_chartLollipopLabelColor;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)_formattedStringWithValue:(double)value unit:(id)unit showUnit:(BOOL)showUnit
{
  showUnitCopy = showUnit;
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AD98];
  unitCopy = unit;
  v10 = [v8 numberWithDouble:value];
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  if (displayType)
  {
    displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
    presentation = [displayType2 presentation];
    v14 = [presentation adjustedValueForDaemonValue:v10];
  }

  else
  {
    v14 = v10;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v16 = [(HKInteractiveChartDataFormatter *)self unitStringFromUnit:unitCopy number:v15];

  v17 = [(HKInteractiveChartDataFormatter *)self valueStringFromNumber:v14];
  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  _majorAttributes = [(HKInteractiveChartAudioLevelStatFormatter *)self _majorAttributes];
  v20 = [v18 initWithString:v17 attributes:_majorAttributes];

  if (showUnitCopy && [v16 length])
  {
    v21 = objc_alloc(MEMORY[0x1E696AAB0]);
    v32 = *MEMORY[0x1E69DB648];
    minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
    v33[0] = minorFont;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v24 = [v21 initWithString:@" " attributes:v23];

    v25 = objc_alloc(MEMORY[0x1E696AAB0]);
    _minorAttributes = [(HKInteractiveChartAudioLevelStatFormatter *)self _minorAttributes];
    v27 = [v25 initWithString:v16 attributes:_minorAttributes];

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

- (int64_t)_numberOfDaysVisibleInRange:(id)range
{
  rangeCopy = range;
  startDate = [rangeCopy startDate];
  if (startDate && (v5 = startDate, [rangeCopy endDate], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    startDate2 = [rangeCopy startDate];
    endDate = [rangeCopy endDate];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [currentCalendar components:16 fromDate:startDate2 toDate:endDate options:0];

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

- (id)_formatQuantityAudioData:(id)data
{
  v49 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  decibelAWeightedSoundPressureLevelUnit = [MEMORY[0x1E696C510] decibelAWeightedSoundPressureLevelUnit];
  v6 = [dataCopy count];
  firstObject = [dataCopy firstObject];
  v8 = firstObject;
  if (v6 < 2)
  {
    overviewData = [firstObject overviewData];
    if (overviewData)
    {
      overviewData2 = [v8 overviewData];
      [overviewData2 averageLEQ];
      v25 = v24;
    }

    else
    {
      [v8 averageLEQ];
      v25 = v28;
    }

    overviewData3 = [v8 overviewData];
    if (overviewData3)
    {
      overviewData4 = [v8 overviewData];
      [overviewData4 duration];
      v32 = v31;
    }

    else
    {
      [v8 duration];
      v32 = v33;
    }

    overrideStatFormatterItemOptions = [(HKInteractiveChartGenericStatFormatter *)self overrideStatFormatterItemOptions];
    v35 = [overrideStatFormatterItemOptions count];

    if (v35 == 1)
    {
      overrideStatFormatterItemOptions2 = [(HKInteractiveChartGenericStatFormatter *)self overrideStatFormatterItemOptions];
      firstObject2 = [overrideStatFormatterItemOptions2 firstObject];
      v38 = [(HKInteractiveChartGenericStatFormatter *)HKInteractiveChartAudioLevelStatFormatter mapSingleItemToStatisticsType:firstObject2];
    }

    else
    {
      v38 = 4;
    }

    v26 = [[HKSelectedRangeData alloc] initWithStatisticsType:v38];
    v39 = [(HKInteractiveChartAudioLevelStatFormatter *)self _formattedStringWithValue:decibelAWeightedSoundPressureLevelUnit unit:1 showUnit:v25];
    [(HKSelectedRangeData *)v26 setAttributedString:v39];

    v40 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
    [(HKSelectedRangeData *)v26 setValueAsNumber:v40];

    v27 = [(HKInteractiveChartAudioLevelStatFormatter *)self _formatDuration:v32];
  }

  else
  {
    [firstObject averageLEQ];
    v10 = v9;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = dataCopy;
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

    v26 = [(HKInteractiveChartGenericStatFormatter *)self _formatMin:decibelAWeightedSoundPressureLevelUnit max:v16 unit:v10];
    v27 = [(HKInteractiveChartAudioLevelStatFormatter *)self _formatDuration:v15];
  }

  v47[0] = v26;
  v47[1] = v27;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:{2, v43}];

  return v41;
}

- (id)_formatDuration:(double)duration
{
  v5 = [[HKSelectedRangeData alloc] initWithStatisticsType:10];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  v9 = HKTimePeriodStringWithFonts(majorFont, minorFont, v8, 0x14uLL);
  [(HKSelectedRangeData *)v5 setAttributedString:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [(HKSelectedRangeData *)v5 setValueAsNumber:v10];

  return v5;
}

@end