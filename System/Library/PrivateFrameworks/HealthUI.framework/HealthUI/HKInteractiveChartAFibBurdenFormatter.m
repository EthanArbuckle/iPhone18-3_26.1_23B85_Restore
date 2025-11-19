@interface HKInteractiveChartAFibBurdenFormatter
- (HKInteractiveChartAFibBurdenFormatter)initWithStatisticsType:(int64_t)a3;
- (id)_formattedDataWithLessThan:(double)a3;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKInteractiveChartAFibBurdenFormatter

- (HKInteractiveChartAFibBurdenFormatter)initWithStatisticsType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HKInteractiveChartAFibBurdenFormatter;
  result = [(HKInteractiveChartAFibBurdenFormatter *)&v5 init];
  if (result)
  {
    result->_statisticsType = a3;
  }

  return result;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v20 = MEMORY[0x1E695E0F0];
    goto LABEL_20;
  }

  v8 = [v7 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v27.receiver = self;
    v27.super_class = HKInteractiveChartAFibBurdenFormatter;
    v19 = [(HKInteractiveChartGenericStatFormatter *)&v27 formattedSelectedRangeLabelDataWithChartData:v7 context:a4];
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
  v20 = [(HKInteractiveChartGenericStatFormatter *)&v22 formattedSelectedRangeLabelDataWithChartData:v10 context:a4];
  [(HKInteractiveChartAFibBurdenFormatter *)self statisticsType];
LABEL_20:

  return v20;
}

- (id)_formattedDataWithLessThan:(double)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  [v5 setFirstWeekday:2];
  v6 = [[HKDateCache alloc] initWithCalendar:v5];
  v7 = [(HKInteractiveChartDataFormatter *)self displayType];
  v8 = [v7 presentation];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v10 = [v8 adjustedValueForDaemonValue:v9];

  v11 = [(HKInteractiveChartGenericStatFormatter *)self chartRangeProvider];
  v12 = [v11 effectiveVisibleRangeActive];
  v13 = [v12 endDate];

  v14 = [[HKAFibBurdenDataProviderCurrentValue alloc] initWithMaxValue:v10 date:v13];
  v15 = [(HKInteractiveChartDataFormatter *)self displayType];
  v16 = [(HKInteractiveChartDataFormatter *)self unitController];
  v17 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v18 = [(HKInteractiveChartDataFormatter *)self minorFont];
  v19 = [(HKAFibBurdenDataProviderCurrentValue *)v14 attributedStringWithDisplayType:v15 unitController:v16 valueFont:v17 unitFont:v18 dateCache:v6];

  if (a3 <= 0.02)
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