@interface HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter
- (id)_attributedBreathingDisturbancesClassification:(id)a3;
- (id)_formattedAnnotationValueForChartData:(id)a3;
- (id)_formattedCurrentValueForChartData:(id)a3;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
- (int64_t)_statisticsTypeForChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v7 = a3;
  v8 = v7;
  if (!v7 || ![v7 count])
  {
    v4 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  v9 = [v8 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter;
    v10 = [(HKInteractiveChartGenericStatFormatter *)&v12 formattedSelectedRangeLabelDataWithChartData:v8 context:a4];
    goto LABEL_10;
  }

  if (a4 == 1)
  {
    v10 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _formattedCurrentValueForChartData:v8];
    goto LABEL_10;
  }

  if (!a4)
  {
    v10 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _formattedAnnotationValueForChartData:v8];
LABEL_10:
    v4 = v10;
  }

LABEL_12:

  return v4;
}

- (id)_formattedAnnotationValueForChartData:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [HKSleepApneaUtilities averageBreathingDisturbancesForChartData:v4];
  v6 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _statisticsTypeForChartData:v4 context:0];

  v7 = [[HKSelectedRangeData alloc] initWithStatisticsType:v6];
  v8 = HKAppleSleepingBreathingDisturbancesClassificationForQuantity();
  v9 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _attributedBreathingDisturbancesClassification:v8];
  [(HKSelectedRangeData *)v7 setAttributedString:v9];

  v10 = MEMORY[0x1E696AD98];
  v11 = [MEMORY[0x1E696C510] countUnit];
  [v5 doubleValueForUnit:v11];
  v12 = [v10 numberWithDouble:?];
  [(HKSelectedRangeData *)v7 setValueAsNumber:v12];

  v15[0] = v7;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  return v13;
}

- (id)_formattedCurrentValueForChartData:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [HKSleepApneaUtilities mostFrequentBreathingDisturbancesClassificationForChartData:v4];
  v6 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _statisticsTypeForChartData:v4 context:1];

  v7 = [[HKSelectedRangeData alloc] initWithStatisticsType:v6];
  v8 = [(HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter *)self _attributedBreathingDisturbancesClassification:v5];
  [(HKSelectedRangeData *)v7 setAttributedString:v8];

  [(HKSelectedRangeData *)v7 setValueAsNumber:0];
  v11[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v9;
}

- (id)_attributedBreathingDisturbancesClassification:(id)a3
{
  v4 = a3;
  v5 = [HKDateCache alloc];
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [(HKDateCache *)v5 initWithCalendar:v6];

  v8 = [(HKInteractiveChartGenericStatFormatter *)self chartRangeProvider];
  v9 = [v8 effectiveVisibleRangeActive];
  v10 = [v9 endDate];

  if (v4)
  {
    v11 = -[_HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider initWithBreathingDisturbancesClassification:date:]([_HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider alloc], "initWithBreathingDisturbancesClassification:date:", [v4 intValue], v10);
  }

  else
  {
    v11 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
  }

  v12 = v11;
  v13 = [(HKInteractiveChartDataFormatter *)self displayType];
  v14 = [(HKInteractiveChartDataFormatter *)self unitController];
  v15 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v16 = [(_HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider *)v12 attributedStringWithDisplayType:v13 unitController:v14 valueFont:v15 unitFont:0 dateCache:v7];

  return v16;
}

- (int64_t)_statisticsTypeForChartData:(id)a3 context:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v8 += [*(*(&v15 + 1) + 8 * i) recordCount];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  if (a4 == 1)
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