@interface HKInteractiveChartAnnotationFormatter
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKInteractiveChartAnnotationFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
          v14 = objc_alloc(MEMORY[0x1E696AAB0]);
          annotation = [v12 annotation];
          v16 = [v14 initWithString:annotation];
          [(HKSelectedRangeData *)v13 setAttributedString:v16];

          [(HKSelectedRangeData *)v13 setValueAsNumber:0];
          [v6 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v5 = v18;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end