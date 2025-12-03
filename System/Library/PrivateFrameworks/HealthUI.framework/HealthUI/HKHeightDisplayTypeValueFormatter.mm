@interface HKHeightDisplayTypeValueFormatter
- (BOOL)_unitsAreFeetWithDisplayType:(id)type unitController:(id)controller;
- (id)attributedStringFromValue:(id)value displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart;
- (id)stringFromValue:(id)value displayType:(id)type unitController:(id)controller;
@end

@implementation HKHeightDisplayTypeValueFormatter

- (BOOL)_unitsAreFeetWithDisplayType:(id)type unitController:(id)controller
{
  v4 = [controller unitForDisplayType:type];
  footUnit = [MEMORY[0x1E696C510] footUnit];
  v6 = [v4 isEqual:footUnit];

  return v6;
}

- (id)attributedStringFromValue:(id)value displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart
{
  chartCopy = chart;
  typeCopy = type;
  controllerCopy = controller;
  fontCopy = font;
  unitFontCopy = unitFont;
  valueCopy = value;
  if ([(HKHeightDisplayTypeValueFormatter *)self _unitsAreFeetWithDisplayType:typeCopy unitController:controllerCopy])
  {
    [valueCopy doubleValue];
    v20 = v19;

    v28 = HKFormattedFeetAndInches(v20);
    v21 = HKGenerateAttributedStringsWithUnitValue(v28, &stru_1F42FFBE0, fontCopy, unitFontCopy, 0, chartCopy);
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
    v26 = [(HKDisplayTypeValueFormatter *)&v29 attributedStringFromValue:valueCopy displayType:typeCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:chartCopy];
  }

  return v26;
}

- (id)stringFromValue:(id)value displayType:(id)type unitController:(id)controller
{
  valueCopy = value;
  typeCopy = type;
  controllerCopy = controller;
  if ([(HKHeightDisplayTypeValueFormatter *)self _unitsAreFeetWithDisplayType:typeCopy unitController:controllerCopy])
  {
    v11 = [MEMORY[0x1E69DB878] systemFontOfSize:0.0];
    v12 = [(HKHeightDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy displayType:typeCopy unitController:controllerCopy valueFont:v11 unitFont:v11];
    string = [v12 string];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HKHeightDisplayTypeValueFormatter;
    string = [(HKDisplayTypeValueFormatter *)&v15 stringFromValue:valueCopy displayType:typeCopy unitController:controllerCopy];
  }

  return string;
}

@end