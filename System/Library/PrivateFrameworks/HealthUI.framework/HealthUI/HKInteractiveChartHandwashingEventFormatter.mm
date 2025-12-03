@interface HKInteractiveChartHandwashingEventFormatter
- (id)_formattedSelectedRangeLabelDataWithChartData:(id)data items:(id)items;
@end

@implementation HKInteractiveChartHandwashingEventFormatter

- (id)_formattedSelectedRangeLabelDataWithChartData:(id)data items:(id)items
{
  v54 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  itemsCopy = items;
  if (dataCopy && [dataCopy count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v36 = dataCopy;
    v8 = dataCopy;
    v9 = [v8 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v45;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 += [*(*(&v44 + 1) + 8 * i) recordCount];
        }

        v10 = [v8 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:@"WASHES_NUMBERLESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v34 = v16;
    v38 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v16, v11];
    array = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v35 = itemsCopy;
    v17 = itemsCopy;
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      v21 = 5;
      if (v11 == 1)
      {
        v21 = 0;
      }

      v37 = v21;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          integerValue = [*(*(&v40 + 1) + 8 * j) integerValue];
          if (integerValue == 0x40000)
          {
            if ([v8 count])
            {
              v24 = [[HKSelectedRangeData alloc] initWithStatisticsType:8 * (v11 != 1)];
              [(HKSelectedRangeData *)v24 setDataType:0];
              v28 = (v11 / [v8 count]);
              v29 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
              [(HKSelectedRangeData *)v24 setValueAsNumber:v29];

              selfCopy2 = self;
              v27 = v28;
              goto LABEL_25;
            }

            _HKInitializeLogging();
            v24 = HKLogWellnessDashboard();
            if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_ERROR))
            {
              v31 = objc_opt_class();
              *buf = 138412546;
              v49 = v31;
              v50 = 2112;
              v51 = v8;
              v32 = v31;
              _os_log_error_impl(&dword_1C3942000, &v24->super, OS_LOG_TYPE_ERROR, "[%@]: Unable to compute daily average with 0 records: %@", buf, 0x16u);
            }
          }

          else
          {
            if (integerValue == 0x20000)
            {
              v24 = [[HKSelectedRangeData alloc] initWithStatisticsType:v37];
              [(HKSelectedRangeData *)v24 setDataType:0];
              v25 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
              [(HKSelectedRangeData *)v24 setValueAsNumber:v25];

              selfCopy2 = self;
              v27 = v11;
LABEL_25:
              v30 = [(HKInteractiveChartDataFormatter *)selfCopy2 formattedStringWithValue:v38 unitString:1 showUnit:v27];
              [(HKSelectedRangeData *)v24 setAttributedString:v30];

              [array addObject:v24];
              goto LABEL_29;
            }

            v39.receiver = self;
            v39.super_class = HKInteractiveChartHandwashingEventFormatter;
            v24 = [(HKInteractiveChartTimePeriodFormatter *)&v39 formattedSelectedRangeLabelDataWithChartData:v8 items:v17];
            [array addObjectsFromArray:v24];
          }

LABEL_29:
        }

        v19 = [v17 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v19);
    }

    itemsCopy = v35;
    dataCopy = v36;
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

@end