@interface HKInteractiveChartNumberFormatter
- (HKInteractiveChartNumberFormatter)init;
- (id)_formattedStringWithValue:(id)a3 formatter:(id)a4;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
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

- (id)_formattedStringWithValue:(id)a3 formatter:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = [a4 stringFromNumber:a3];
  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12[0] = *MEMORY[0x1E69DB648];
  v7 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v13[0] = v7;
  v12[1] = *MEMORY[0x1E69DB650];
  v8 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithString:v5 attributes:v9];

  return v10;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
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

          v13 = [*(*(&v36 + 1) + 8 * i) value];
          [v13 doubleValue];
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
    v18 = [v7 firstObject];
    v19 = [v18 numberFormatter];
    v20 = [(HKInteractiveChartNumberFormatter *)self _formattedStringWithValue:v17 formatter:v19];

    v21 = [(HKInteractiveChartNumberFormatter *)self unitFormatString];

    if (v21)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v24 = [(HKInteractiveChartNumberFormatter *)self unitFormatString];
      v25 = [v23 localizedStringForKey:v24 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v26 = [v22 localizedStringWithFormat:v25, *&v11];

      v27 = objc_alloc(MEMORY[0x1E696AAB0]);
      v42[0] = *MEMORY[0x1E69DB648];
      v28 = [(HKInteractiveChartDataFormatter *)self minorFont];
      v43[0] = v28;
      v42[1] = *MEMORY[0x1E69DB650];
      v29 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
      v43[1] = v29;
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