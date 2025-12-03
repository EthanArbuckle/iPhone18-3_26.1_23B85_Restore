@interface HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter
- (id)_attributedBreathingDisturbancesClassification:(id)classification;
- (id)_formattedAnnotationValueForChartData:(id)data;
- (id)_formattedCurrentValueForChartData:(id)data;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (int64_t)_statisticsTypeForChartData:(id)data context:(int64_t)context;
@end

@implementation HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  dataCopy = data;
  v8 = dataCopy;
  if (!dataCopy || ![dataCopy count])
  {
    v4 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  firstObject = [v8 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter;
    v10 = [(HKInteractiveChartGenericStatFormatter *)&v12 formattedSelectedRangeLabelDataWithChartData:v8 context:context];
    goto LABEL_10;
  }

  if (context == 1)
  {
    v10 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _formattedCurrentValueForChartData:v8];
    goto LABEL_10;
  }

  if (!context)
  {
    v10 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _formattedAnnotationValueForChartData:v8];
LABEL_10:
    v4 = v10;
  }

LABEL_12:

  return v4;
}

- (id)_formattedAnnotationValueForChartData:(id)data
{
  v15[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [HKSleepApneaUtilities averageBreathingDisturbancesForChartData:dataCopy];
  v6 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _statisticsTypeForChartData:dataCopy context:0];

  v7 = [[HKSelectedRangeData alloc] initWithStatisticsType:v6];
  v8 = HKAppleSleepingBreathingDisturbancesClassificationForQuantity();
  v9 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _attributedBreathingDisturbancesClassification:v8];
  [(HKSelectedRangeData *)v7 setAttributedString:v9];

  v10 = MEMORY[0x1E696AD98];
  countUnit = [MEMORY[0x1E696C510] countUnit];
  [v5 doubleValueForUnit:countUnit];
  v12 = [v10 numberWithDouble:?];
  [(HKSelectedRangeData *)v7 setValueAsNumber:v12];

  v15[0] = v7;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  return v13;
}

- (id)_formattedCurrentValueForChartData:(id)data
{
  v11[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [HKSleepApneaUtilities mostFrequentBreathingDisturbancesClassificationForChartData:dataCopy];
  v6 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _statisticsTypeForChartData:dataCopy context:1];

  v7 = [[HKSelectedRangeData alloc] initWithStatisticsType:v6];
  v8 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _attributedBreathingDisturbancesClassification:v5];
  [(HKSelectedRangeData *)v7 setAttributedString:v8];

  [(HKSelectedRangeData *)v7 setValueAsNumber:0];
  v11[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v9;
}

- (id)_attributedBreathingDisturbancesClassification:(id)classification
{
  classificationCopy = classification;
  v5 = [HKDateCache alloc];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [(HKDateCache *)v5 initWithCalendar:currentCalendar];

  chartRangeProvider = [(HKInteractiveChartGenericStatFormatter *)self chartRangeProvider];
  effectiveVisibleRangeActive = [chartRangeProvider effectiveVisibleRangeActive];
  endDate = [effectiveVisibleRangeActive endDate];

  if (classificationCopy)
  {
    v11 = -[_HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider initWithBreathingDisturbancesClassification:date:]([_HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider alloc], "initWithBreathingDisturbancesClassification:date:", [classificationCopy intValue], endDate);
  }

  else
  {
    v11 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
  }

  v12 = v11;
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v16 = [(_HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider *)v12 attributedStringWithDisplayType:displayType unitController:unitController valueFont:majorFont unitFont:0 dateCache:v7];

  return v16;
}

- (int64_t)_statisticsTypeForChartData:(id)data context:(int64_t)context
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [dataCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(dataCopy);
        }

        v8 += [*(*(&v15 + 1) + 8 * i) recordCount];
      }

      v7 = [dataCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
    v11 = 25;
    if (v8 > 1)
    {
      v11 = 28;
    }

    v12 = 31;
    if (v8 > 1)
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = 31;
    v11 = 25;
  }

  if (context == 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

@end