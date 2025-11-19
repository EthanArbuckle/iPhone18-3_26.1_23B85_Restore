@interface HKHistogramChartDataFormatter
- (HKHistogramChartDataFormatter)initWithUnit:(id)a3;
- (id)_formattedStringWithValue:(double)a3 unit:(id)a4 showUnit:(BOOL)a5;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKHistogramChartDataFormatter

- (HKHistogramChartDataFormatter)initWithUnit:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HKHistogramChartDataFormatter;
  v6 = [(HKHistogramChartDataFormatter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unit, a3);
    v8 = [MEMORY[0x1E69DB878] hk_chartLollipopValueFont];
    [(HKInteractiveChartDataFormatter *)v7 setMajorFont:v8];

    v9 = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
    [(HKInteractiveChartDataFormatter *)v7 setMinorFont:v9];

    [(HKInteractiveChartDataFormatter *)v7 setDisplayType:0];
  }

  return v7;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v22;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v21 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;

        v9 = v13;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  }

  while (v8);
  if (v9)
  {
    v14 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    [(HKSelectedRangeData *)v14 setDataType:0];
    [v9 yValue];
    v16 = v15;
    v17 = [(HKHistogramChartDataFormatter *)self unit];
    v18 = [(HKHistogramChartDataFormatter *)self _formattedStringWithValue:v17 unit:1 showUnit:v16];
    [(HKSelectedRangeData *)v14 setAttributedString:v18];

    v25 = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  }

  else
  {
LABEL_13:
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

- (id)_formattedStringWithValue:(double)a3 unit:(id)a4 showUnit:(BOOL)a5
{
  v5 = a5;
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithDouble:a3];
  v11 = [v9 unitString];

  v12 = [v10 stringValue];
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = *MEMORY[0x1E69DB648];
  v34 = *MEMORY[0x1E69DB648];
  v15 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v35[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v17 = [v13 initWithString:v12 attributes:v16];

  if (v5 && [v11 length])
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v32 = v14;
    v19 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v33 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = [v18 initWithString:@" " attributes:v20];

    v22 = objc_alloc(MEMORY[0x1E696AAB0]);
    v30 = v14;
    v23 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v31 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v25 = [v22 initWithString:v11 attributes:v24];

    v29[0] = v17;
    v29[1] = v21;
    v29[2] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    v27 = HKUIJoinAttributedStringsForLocale(v26);
  }

  else
  {
    v27 = v17;
  }

  return v27;
}

@end