@interface HKInteractiveChartCardioFitnessFormatter
- (id)_attributedCurrentCardioFitnessClassificationForChartData:(id)a3;
- (id)_formattedCurrentValueForChartData:(id)a3 context:(int64_t)a4;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKInteractiveChartCardioFitnessFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v7 = a3;
  v8 = v7;
  if (v7 && [v7 count])
  {
    if (a4 == 1)
    {
      v9 = [(HKInteractiveChartCardioFitnessFormatter *)self _formattedCurrentValueForChartData:v8 context:1];
    }

    else
    {
      if (a4)
      {
        goto LABEL_9;
      }

      v11.receiver = self;
      v11.super_class = HKInteractiveChartCardioFitnessFormatter;
      v9 = [(HKInteractiveChartGenericStatFormatter *)&v11 formattedSelectedRangeLabelDataWithChartData:v8 context:0];
    }

    v4 = v9;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

LABEL_9:

  return v4;
}

- (id)_formattedCurrentValueForChartData:(id)a3 context:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 += [*(*(&v19 + 1) + 8 * i) sampleCount];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v10);
      if (v11 <= 1)
      {
        v14 = 22;
      }

      else
      {
        v14 = 23;
      }
    }

    else
    {
      v14 = 22;
    }

    v16 = [[HKSelectedRangeData alloc] initWithStatisticsType:v14];
    v17 = [(HKInteractiveChartCardioFitnessFormatter *)self _attributedCurrentCardioFitnessClassificationForChartData:v8];
    [(HKSelectedRangeData *)v16 setAttributedString:v17];

    [(HKSelectedRangeData *)v16 setValueAsNumber:0];
    v24 = v16;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = HKInteractiveChartCardioFitnessFormatter;
    v15 = [(HKInteractiveChartGenericStatFormatter *)&v23 formattedSelectedRangeLabelDataWithChartData:v6 context:a4];
  }

  return v15;
}

- (id)_attributedCurrentCardioFitnessClassificationForChartData:(id)a3
{
  v4 = a3;
  v5 = [HKDateCache alloc];
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [(HKDateCache *)v5 initWithCalendar:v6];

  v8 = [(HKInteractiveChartGenericStatFormatter *)self chartRangeProvider];
  v9 = [v8 effectiveVisibleRangeActive];
  v10 = [v9 endDate];

  v11 = [HKCardioFitnessUtilities cardioFitnessLookupPropertiesForChartData:v4];

  if (v11)
  {
    v12 = [HKCardioFitnessDataProviderCurrentValue alloc];
    v13 = [v11 vo2MaxQuantity];
    v14 = -[HKCardioFitnessDataProviderCurrentValue initWithVO2MaxQuantity:biologicalSex:age:date:](v12, "initWithVO2MaxQuantity:biologicalSex:age:date:", v13, [v11 biologicalSex], objc_msgSend(v11, "age"), v10);
  }

  else
  {
    v14 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
  }

  v15 = [(HKInteractiveChartDataFormatter *)self displayType];
  v16 = [(HKInteractiveChartDataFormatter *)self unitController];
  v17 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v18 = [(HKDataProviderNoDataCurrentValue *)v14 attributedStringWithDisplayType:v15 unitController:v16 valueFont:v17 unitFont:0 dateCache:v7];

  return v18;
}

@end