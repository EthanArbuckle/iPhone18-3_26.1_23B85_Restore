@interface HKInteractiveChartDataFormatter
- (HKDisplayType)displayType;
- (id)_formattedPercentageStringWithValue:(double)value unitString:(id)string showUnit:(BOOL)unit;
- (id)attributedStringForValue:(id)value;
- (id)attributedStringWithValue:(double)value unit:(id)unit showUnit:(BOOL)showUnit;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (id)formattedStringWithValue:(double)value unitString:(id)string showUnit:(BOOL)unit;
- (id)unitStringFromUnit:(id)unit number:(id)number;
- (id)valueStringFromNumber:(id)number;
@end

@implementation HKInteractiveChartDataFormatter

- (id)formattedStringWithValue:(double)value unitString:(id)string showUnit:(BOOL)unit
{
  unitCopy = unit;
  v27[2] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  if (displayType)
  {
    displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
    presentation = [displayType2 presentation];
    [presentation adjustedDoubleForDaemonDouble:value];
    value = v12;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v14 = [(HKInteractiveChartDataFormatter *)self attributedStringForValue:v13];

  if (unitCopy && [stringCopy length])
  {
    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26[0] = *MEMORY[0x1E69DB648];
    minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
    v27[0] = minorFont;
    v26[1] = *MEMORY[0x1E69DB650];
    hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v27[1] = hk_chartLollipopLabelColor;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v19 = [v15 initWithString:stringCopy attributes:v18];

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

- (id)_formattedPercentageStringWithValue:(double)value unitString:(id)string showUnit:(BOOL)unit
{
  unitCopy = unit;
  v28[2] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v9 = stringCopy;
  if (unitCopy && [stringCopy length])
  {
    displayType = [(HKInteractiveChartDataFormatter *)self displayType];
    if (displayType)
    {
      displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
      presentation = [displayType2 presentation];
      [presentation adjustedDoubleForDaemonDouble:value];
      value = v13;
    }

    v14 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    v15 = [(HKInteractiveChartDataFormatter *)self attributedStringForValue:v14];

    v16 = objc_alloc(MEMORY[0x1E696AAB0]);
    v27[0] = *MEMORY[0x1E69DB648];
    minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
    v28[0] = minorFont;
    v27[1] = *MEMORY[0x1E69DB650];
    hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v28[1] = hk_chartLollipopLabelColor;
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
    v24 = [(HKInteractiveChartDataFormatter *)self formattedStringWithValue:v9 unitString:unitCopy showUnit:value];
  }

  return v24;
}

- (id)unitStringFromUnit:(id)unit number:(id)number
{
  numberCopy = number;
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  if (unit)
  {
    [unitController localizedDisplayNameForDisplayType:displayType value:numberCopy];
  }

  else
  {
    HKUIUnitDisplayName(unitController, displayType, numberCopy);
  }
  v9 = ;

  return v9;
}

- (id)attributedStringWithValue:(double)value unit:(id)unit showUnit:(BOOL)showUnit
{
  showUnitCopy = showUnit;
  v8 = MEMORY[0x1E696AD98];
  unitCopy = unit;
  v10 = [v8 numberWithDouble:value];
  v11 = [(HKInteractiveChartDataFormatter *)self unitStringFromUnit:unitCopy number:v10];

  percentUnit = [MEMORY[0x1E696C510] percentUnit];
  v13 = [unitCopy isEqual:percentUnit];

  if (v13)
  {
    [(HKInteractiveChartDataFormatter *)self _formattedPercentageStringWithValue:v11 unitString:showUnitCopy showUnit:value];
  }

  else
  {
    [(HKInteractiveChartDataFormatter *)self formattedStringWithValue:v11 unitString:showUnitCopy showUnit:value];
  }
  v14 = ;

  return v14;
}

- (id)attributedStringForValue:(id)value
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [(HKInteractiveChartDataFormatter *)self valueStringFromNumber:value];
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11[0] = *MEMORY[0x1E69DB648];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v12[0] = majorFont;
  v11[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v12[1] = hk_chartLollipopValueColor;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v5 initWithString:v4 attributes:v8];

  return v9;
}

- (id)valueStringFromNumber:(id)number
{
  numberCopy = number;
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  v7 = HKFormattedStringFromValue(numberCopy, displayType, unitController, 0, 0);

  return v7;
}

- (HKDisplayType)displayType
{
  WeakRetained = objc_loadWeakRetained(&self->_displayType);

  return WeakRetained;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return MEMORY[0x1E695E0F0];
}

@end