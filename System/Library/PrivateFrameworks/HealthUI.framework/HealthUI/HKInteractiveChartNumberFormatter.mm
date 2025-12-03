@interface HKInteractiveChartNumberFormatter
- (HKInteractiveChartNumberFormatter)init;
- (id)_formattedStringWithValue:(id)value formatter:(id)formatter;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKInteractiveChartNumberFormatter

- (HKInteractiveChartNumberFormatter)init
{
  v6.receiver = self;
  v6.super_class = HKInteractiveChartNumberFormatter;
  v2 = [(HKInteractiveChartNumberFormatter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    unitFormatString = v2->_unitFormatString;
    v2->_unitFormatString = 0;
  }

  return v3;
}

- (id)_formattedStringWithValue:(id)value formatter:(id)formatter
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = [formatter stringFromNumber:value];
  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12[0] = *MEMORY[0x1E69DB648];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v13[0] = majorFont;
  v12[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v13[1] = hk_chartLollipopValueColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithString:v5 attributes:v9];

  return v10;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v45 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v7);
          }

          value = [*(*(&v36 + 1) + 8 * i) value];
          [value doubleValue];
          v11 = v11 + v14;
        }

        v9 = [v7 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v16 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    firstObject = [v7 firstObject];
    numberFormatter = [firstObject numberFormatter];
    v20 = [(HKInteractiveChartNumberFormatter *)self _formattedStringWithValue:v17 formatter:numberFormatter];

    unitFormatString = [(HKInteractiveChartNumberFormatter *)self unitFormatString];

    if (unitFormatString)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      unitFormatString2 = [(HKInteractiveChartNumberFormatter *)self unitFormatString];
      v25 = [v23 localizedStringForKey:unitFormatString2 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v26 = [v22 localizedStringWithFormat:v25, *&v11];

      v27 = objc_alloc(MEMORY[0x1E696AAB0]);
      v42[0] = *MEMORY[0x1E69DB648];
      minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
      v43[0] = minorFont;
      v42[1] = *MEMORY[0x1E69DB650];
      hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
      v43[1] = hk_chartLollipopLabelColor;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
      v31 = [v27 initWithString:v26 attributes:v30];

      v41[0] = v20;
      v41[1] = v31;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      v33 = HKUIJoinAttributedStringsWithFormat(v32, @"%1$@ %2$@");
      [(HKSelectedRangeData *)v16 setAttributedString:v33];
    }

    else
    {
      [(HKSelectedRangeData *)v16 setAttributedString:v20];
    }

    v34 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    [(HKSelectedRangeData *)v16 setValueAsNumber:v34];

    v40 = v16;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

@end