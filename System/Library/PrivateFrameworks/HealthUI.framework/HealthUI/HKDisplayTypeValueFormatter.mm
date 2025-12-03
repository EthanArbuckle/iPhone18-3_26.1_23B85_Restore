@interface HKDisplayTypeValueFormatter
- (HKDisplayTypeValueFormatter)initWithNumberFormatter:(id)formatter;
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont;
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart;
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0;
- (id)attributedStringFromValue:(id)value displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont;
- (id)attributedStringFromValue:(id)value displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart;
- (id)attributedStringFromValue:(id)value displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)string;
- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller;
- (id)stringFromValue:(id)value displayType:(id)type unitController:(id)controller;
@end

@implementation HKDisplayTypeValueFormatter

- (HKDisplayTypeValueFormatter)initWithNumberFormatter:(id)formatter
{
  formatterCopy = formatter;
  v9.receiver = self;
  v9.super_class = HKDisplayTypeValueFormatter;
  v6 = [(HKDisplayTypeValueFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_numberFormatter, formatter);
  }

  return v7;
}

- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller
{
  v10 = MEMORY[0x1E69DB878];
  controllerCopy = controller;
  unitCopy = unit;
  typeCopy = type;
  valueCopy = value;
  v15 = [v10 systemFontOfSize:0.0];
  v16 = [(HKDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy valueFont:v15 unitFont:v15];

  string = [v16 string];

  return string;
}

- (id)attributedStringFromValue:(id)value displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont
{
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  typeCopy = type;
  valueCopy = value;
  v17 = [controllerCopy unitForDisplayType:typeCopy];
  v18 = [(HKDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy displayType:typeCopy unit:v17 unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy];

  return v18;
}

- (id)attributedStringFromValue:(id)value displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart
{
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  typeCopy = type;
  valueCopy = value;
  v19 = [controllerCopy unitForDisplayType:typeCopy];
  LOBYTE(v22) = chart;
  v20 = [(HKDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy displayType:typeCopy unit:v19 unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v22];

  return v20;
}

- (id)attributedStringFromValue:(id)value displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)string
{
  stringCopy = string;
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  typeCopy = type;
  valueCopy = value;
  v22 = [controllerCopy unitForDisplayType:typeCopy];
  LOBYTE(v25) = chart;
  v23 = [(HKDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy displayType:typeCopy unit:v22 unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v25 unitFormatString:stringCopy];

  return v23;
}

- (id)stringFromValue:(id)value displayType:(id)type unitController:(id)controller
{
  controllerCopy = controller;
  typeCopy = type;
  valueCopy = value;
  v11 = [controllerCopy unitForDisplayType:typeCopy];
  v12 = [(HKDisplayTypeValueFormatter *)self stringFromValue:valueCopy displayType:typeCopy unit:v11 unitController:controllerCopy];

  return v12;
}

- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont
{
  objc_opt_class();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart
{
  objc_opt_class();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0
{
  objc_opt_class();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

@end