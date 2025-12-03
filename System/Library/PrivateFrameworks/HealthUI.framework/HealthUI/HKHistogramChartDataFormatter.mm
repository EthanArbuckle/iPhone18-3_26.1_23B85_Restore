@interface HKHistogramChartDataFormatter
- (HKHistogramChartDataFormatter)initWithUnit:(id)unit;
- (id)_formattedStringWithValue:(double)value unit:(id)unit showUnit:(BOOL)showUnit;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKHistogramChartDataFormatter

- (HKHistogramChartDataFormatter)initWithUnit:(id)unit
{
  unitCopy = unit;
  v11.receiver = self;
  v11.super_class = HKHistogramChartDataFormatter;
  v6 = [(HKHistogramChartDataFormatter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unit, unit);
    hk_chartLollipopValueFont = [MEMORY[0x1E69DB878] hk_chartLollipopValueFont];
    [(HKInteractiveChartDataFormatter *)v7 setMajorFont:hk_chartLollipopValueFont];

    hk_chartLollipopKeyFont = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
    [(HKInteractiveChartDataFormatter *)v7 setMinorFont:hk_chartLollipopKeyFont];

    [(HKInteractiveChartDataFormatter *)v7 setDisplayType:0];
  }

  return v7;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = dataCopy;
  if (!dataCopy)
  {
    goto LABEL_13;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [dataCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
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
    unit = [(HKHistogramChartDataFormatter *)self unit];
    v18 = [(HKHistogramChartDataFormatter *)self _formattedStringWithValue:unit unit:1 showUnit:v16];
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

- (id)_formattedStringWithValue:(double)value unit:(id)unit showUnit:(BOOL)showUnit
{
  showUnitCopy = showUnit;
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AD98];
  unitCopy = unit;
  v10 = [v8 numberWithDouble:value];
  unitString = [unitCopy unitString];

  stringValue = [v10 stringValue];
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = *MEMORY[0x1E69DB648];
  v34 = *MEMORY[0x1E69DB648];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v35[0] = majorFont;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v17 = [v13 initWithString:stringValue attributes:v16];

  if (showUnitCopy && [unitString length])
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v32 = v14;
    minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
    v33 = minorFont;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = [v18 initWithString:@" " attributes:v20];

    v22 = objc_alloc(MEMORY[0x1E696AAB0]);
    v30 = v14;
    minorFont2 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v31 = minorFont2;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v25 = [v22 initWithString:unitString attributes:v24];

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