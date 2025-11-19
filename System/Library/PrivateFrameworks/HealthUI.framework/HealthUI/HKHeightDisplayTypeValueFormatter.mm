@interface HKHeightDisplayTypeValueFormatter
- (BOOL)_unitsAreFeetWithDisplayType:(id)a3 unitController:(id)a4;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7 formatForChart:(BOOL)a8;
- (id)stringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5;
@end

@implementation HKHeightDisplayTypeValueFormatter

- (BOOL)_unitsAreFeetWithDisplayType:(id)a3 unitController:(id)a4
{
  v4 = [a4 unitForDisplayType:a3];
  v5 = [MEMORY[0x1E696C510] footUnit];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7 formatForChart:(BOOL)a8
{
  v8 = a8;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a3;
  if ([(HKHeightDisplayTypeValueFormatter *)self _unitsAreFeetWithDisplayType:v14 unitController:v15])
  {
    [v18 doubleValue];
    v20 = v19;

    v28 = HKFormattedFeetAndInches(v20);
    v21 = HKGenerateAttributedStringsWithUnitValue(v28, &stru_1F42FFBE0, v16, v17, 0, v8);
    v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
    [v21 addObject:v22];
    v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
    [v21 addObject:v23];
    v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v25 = [v24 localizedStringForKey:@"QUANTITY_VALUE_FORMAT_STRING" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v26 = HKUIJoinAttributedStringsWithFormat(v21, v25);
  }

  else
  {
    v29.receiver = self;
    v29.super_class = HKHeightDisplayTypeValueFormatter;
    v26 = [(HKDisplayTypeValueFormatter *)&v29 attributedStringFromValue:v18 displayType:v14 unitController:v15 valueFont:v16 unitFont:v17 formatForChart:v8];
  }

  return v26;
}

- (id)stringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(HKHeightDisplayTypeValueFormatter *)self _unitsAreFeetWithDisplayType:v9 unitController:v10])
  {
    v11 = [MEMORY[0x1E69DB878] systemFontOfSize:0.0];
    v12 = [(HKHeightDisplayTypeValueFormatter *)self attributedStringFromValue:v8 displayType:v9 unitController:v10 valueFont:v11 unitFont:v11];
    v13 = [v12 string];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HKHeightDisplayTypeValueFormatter;
    v13 = [(HKDisplayTypeValueFormatter *)&v15 stringFromValue:v8 displayType:v9 unitController:v10];
  }

  return v13;
}

@end