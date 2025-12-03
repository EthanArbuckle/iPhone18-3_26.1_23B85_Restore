@interface HKInteractiveChartCardioFitnessFormatter
- (id)_attributedCurrentCardioFitnessClassificationForChartData:(id)data;
- (id)_formattedCurrentValueForChartData:(id)data context:(int64_t)context;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKInteractiveChartCardioFitnessFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  dataCopy = data;
  v8 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    if (context == 1)
    {
      v9 = [(HKInteractiveChartCardioFitnessFormatter *)self _formattedCurrentValueForChartData:v8 context:1];
    }

    else
    {
      if (context)
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

- (id)_formattedCurrentValueForChartData:(id)data context:(int64_t)context
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  firstObject = [dataCopy firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = dataCopy;
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
    v15 = [(HKInteractiveChartGenericStatFormatter *)&v23 formattedSelectedRangeLabelDataWithChartData:dataCopy context:context];
  }

  return v15;
}

- (id)_attributedCurrentCardioFitnessClassificationForChartData:(id)data
{
  dataCopy = data;
  v5 = [HKDateCache alloc];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [(HKDateCache *)v5 initWithCalendar:currentCalendar];

  chartRangeProvider = [(HKInteractiveChartGenericStatFormatter *)self chartRangeProvider];
  effectiveVisibleRangeActive = [chartRangeProvider effectiveVisibleRangeActive];
  endDate = [effectiveVisibleRangeActive endDate];

  v11 = [HKCardioFitnessUtilities cardioFitnessLookupPropertiesForChartData:dataCopy];

  if (v11)
  {
    v12 = [HKCardioFitnessDataProviderCurrentValue alloc];
    vo2MaxQuantity = [v11 vo2MaxQuantity];
    v14 = -[HKCardioFitnessDataProviderCurrentValue initWithVO2MaxQuantity:biologicalSex:age:date:](v12, "initWithVO2MaxQuantity:biologicalSex:age:date:", vo2MaxQuantity, [v11 biologicalSex], objc_msgSend(v11, "age"), endDate);
  }

  else
  {
    v14 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
  }

  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v18 = [(HKDataProviderNoDataCurrentValue *)v14 attributedStringWithDisplayType:displayType unitController:unitController valueFont:majorFont unitFont:0 dateCache:v7];

  return v18;
}

@end