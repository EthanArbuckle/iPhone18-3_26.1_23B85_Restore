@interface HKInteractiveChartDataFormatter
- (HKDisplayType)displayType;
- (id)_formattedPercentageStringWithValue:(double)a3 unitString:(id)a4 showUnit:(BOOL)a5;
- (id)attributedStringForValue:(id)a3;
- (id)attributedStringWithValue:(double)a3 unit:(id)a4 showUnit:(BOOL)a5;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
- (id)formattedStringWithValue:(double)a3 unitString:(id)a4 showUnit:(BOOL)a5;
- (id)unitStringFromUnit:(id)a3 number:(id)a4;
- (id)valueStringFromNumber:(id)a3;
@end

@implementation HKInteractiveChartDataFormatter

- (id)formattedStringWithValue:(double)a3 unitString:(id)a4 showUnit:(BOOL)a5
{
  v5 = a5;
  v27[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(HKInteractiveChartDataFormatter *)self displayType];
  if (v9)
  {
    v10 = [(HKInteractiveChartDataFormatter *)self displayType];
    v11 = [v10 presentation];
    [v11 adjustedDoubleForDaemonDouble:a3];
    a3 = v12;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v14 = [(HKInteractiveChartDataFormatter *)self attributedStringForValue:v13];

  if (v5 && [v8 length])
  {
    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26[0] = *MEMORY[0x1E69DB648];
    v16 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v27[0] = v16;
    v26[1] = *MEMORY[0x1E69DB650];
    v17 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v27[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v19 = [v15 initWithString:v8 attributes:v18];

    v25[0] = v14;
    v25[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v22 = [v21 localizedStringForKey:@"QUANTITY_TYPE_DISPLAY_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v23 = HKUIJoinAttributedStringsWithFormat(v20, v22);
  }

  else
  {
    v23 = v14;
  }

  return v23;
}

- (id)_formattedPercentageStringWithValue:(double)a3 unitString:(id)a4 showUnit:(BOOL)a5
{
  v5 = a5;
  v28[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = v8;
  if (v5 && [v8 length])
  {
    v10 = [(HKInteractiveChartDataFormatter *)self displayType];
    if (v10)
    {
      v11 = [(HKInteractiveChartDataFormatter *)self displayType];
      v12 = [v11 presentation];
      [v12 adjustedDoubleForDaemonDouble:a3];
      a3 = v13;
    }

    v14 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v15 = [(HKInteractiveChartDataFormatter *)self attributedStringForValue:v14];

    v16 = objc_alloc(MEMORY[0x1E696AAB0]);
    v27[0] = *MEMORY[0x1E69DB648];
    v17 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v28[0] = v17;
    v27[1] = *MEMORY[0x1E69DB650];
    v18 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v28[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v20 = [v16 initWithString:v9 attributes:v19];

    v26[0] = v15;
    v26[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = [v22 localizedStringForKey:@"PERCENTAGE_QUANTITY_TYPE_DISPLAY_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v24 = HKUIJoinAttributedStringsWithFormat(v21, v23);
  }

  else
  {
    v24 = [(HKInteractiveChartDataFormatter *)self formattedStringWithValue:v9 unitString:v5 showUnit:a3];
  }

  return v24;
}

- (id)unitStringFromUnit:(id)a3 number:(id)a4
{
  v6 = a4;
  v7 = [(HKInteractiveChartDataFormatter *)self unitController];
  v8 = [(HKInteractiveChartDataFormatter *)self displayType];
  if (a3)
  {
    [v7 localizedDisplayNameForDisplayType:v8 value:v6];
  }

  else
  {
    HKUIUnitDisplayName(v7, v8, v6);
  }
  v9 = ;

  return v9;
}

- (id)attributedStringWithValue:(double)a3 unit:(id)a4 showUnit:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithDouble:a3];
  v11 = [(HKInteractiveChartDataFormatter *)self unitStringFromUnit:v9 number:v10];

  v12 = [MEMORY[0x1E696C510] percentUnit];
  v13 = [v9 isEqual:v12];

  if (v13)
  {
    [(HKInteractiveChartDataFormatter *)self _formattedPercentageStringWithValue:v11 unitString:v5 showUnit:a3];
  }

  else
  {
    [(HKInteractiveChartDataFormatter *)self formattedStringWithValue:v11 unitString:v5 showUnit:a3];
  }
  v14 = ;

  return v14;
}

- (id)attributedStringForValue:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [(HKInteractiveChartDataFormatter *)self valueStringFromNumber:a3];
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11[0] = *MEMORY[0x1E69DB648];
  v6 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v12[0] = v6;
  v11[1] = *MEMORY[0x1E69DB650];
  v7 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v5 initWithString:v4 attributes:v8];

  return v9;
}

- (id)valueStringFromNumber:(id)a3
{
  v4 = a3;
  v5 = [(HKInteractiveChartDataFormatter *)self displayType];
  v6 = [(HKInteractiveChartDataFormatter *)self unitController];
  v7 = HKFormattedStringFromValue(v4, v5, v6, 0, 0);

  return v7;
}

- (HKDisplayType)displayType
{
  WeakRetained = objc_loadWeakRetained(&self->_displayType);

  return WeakRetained;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return MEMORY[0x1E695E0F0];
}

@end