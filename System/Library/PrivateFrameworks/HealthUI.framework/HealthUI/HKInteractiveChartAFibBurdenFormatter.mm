@interface HKInteractiveChartAFibBurdenFormatter
- (HKInteractiveChartAFibBurdenFormatter)initWithStatisticsType:(int64_t)type;
- (id)_formattedDataWithLessThan:(double)than;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKInteractiveChartAFibBurdenFormatter

- (HKInteractiveChartAFibBurdenFormatter)initWithStatisticsType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = HKInteractiveChartAFibBurdenFormatter;
  result = [(HKInteractiveChartAFibBurdenFormatter *)&v5 init];
  if (result)
  {
    result->_statisticsType = type;
  }

  return result;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = dataCopy;
  if (!dataCopy || ![dataCopy count])
  {
    v20 = MEMORY[0x1E695E0F0];
    goto LABEL_20;
  }

  firstObject = [v7 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v27.receiver = self;
    v27.super_class = HKInteractiveChartAFibBurdenFormatter;
    v19 = [(HKInteractiveChartGenericStatFormatter *)&v27 formattedSelectedRangeLabelDataWithChartData:v7 context:context];
    goto LABEL_17;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v24;
    v15 = -1.79769313e308;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        [v17 value];
        if (v15 < v18)
        {
          v15 = v18;
        }

        v13 |= [v17 clampsLowerData];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v12);

    if (v13)
    {
      v19 = [(HKInteractiveChartAFibBurdenFormatter *)self _formattedDataWithLessThan:v15];
LABEL_17:
      v20 = v19;
      goto LABEL_20;
    }
  }

  else
  {
  }

  [(HKInteractiveChartGenericStatFormatter *)self setOverrideStatFormatterItemOptions:&unk_1F4381258];
  v22.receiver = self;
  v22.super_class = HKInteractiveChartAFibBurdenFormatter;
  v20 = [(HKInteractiveChartGenericStatFormatter *)&v22 formattedSelectedRangeLabelDataWithChartData:v10 context:context];
  [(HKInteractiveChartAFibBurdenFormatter *)self statisticsType];
LABEL_20:

  return v20;
}

- (id)_formattedDataWithLessThan:(double)than
{
  v24[1] = *MEMORY[0x1E69E9840];
  hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  [hk_gregorianCalendar setFirstWeekday:2];
  v6 = [[HKDateCache alloc] initWithCalendar:hk_gregorianCalendar];
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  presentation = [displayType presentation];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:than];
  v10 = [presentation adjustedValueForDaemonValue:v9];

  chartRangeProvider = [(HKInteractiveChartGenericStatFormatter *)self chartRangeProvider];
  effectiveVisibleRangeActive = [chartRangeProvider effectiveVisibleRangeActive];
  endDate = [effectiveVisibleRangeActive endDate];

  v14 = [[HKAFibBurdenDataProviderCurrentValue alloc] initWithMaxValue:v10 date:endDate];
  displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
  v19 = [(HKAFibBurdenDataProviderCurrentValue *)v14 attributedStringWithDisplayType:displayType2 unitController:unitController valueFont:majorFont unitFont:minorFont dateCache:v6];

  if (than <= 0.02)
  {
    v20 = 0;
  }

  else
  {
    v20 = 9;
  }

  v21 = [[HKSelectedRangeData alloc] initWithStatisticsType:v20];
  [(HKSelectedRangeData *)v21 setValueAsNumber:0];
  [(HKSelectedRangeData *)v21 setAttributedString:v19];
  v24[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];

  return v22;
}

@end