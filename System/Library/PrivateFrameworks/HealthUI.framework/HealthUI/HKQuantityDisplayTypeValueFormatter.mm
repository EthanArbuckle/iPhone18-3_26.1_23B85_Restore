@interface HKQuantityDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0;
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0 formatString:(id)self1;
- (id)attributedStringFromValue:(id)value unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)string formatString:(id)self0;
- (id)attributedStringFromValueString:(id)string valueFont:(id)font unitString:(id)unitString unitFont:(id)unitFont unitIcon:(id)icon formatForChart:(BOOL)chart formatString:(id)formatString;
- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller;
- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller formatString:(id)string;
- (id)stringFromValue:(id)value displayType:(id)type unitController:(id)controller formatString:(id)string;
@end

@implementation HKQuantityDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0
{
  v16 = MEMORY[0x1E696AAE8];
  stringCopy = string;
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  unitCopy = unit;
  typeCopy = type;
  valueCopy = value;
  v24 = [v16 bundleWithIdentifier:@"com.apple.HealthUI"];
  v25 = [v24 localizedStringForKey:@"QUANTITY_VALUE_FORMAT_STRING" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  LOBYTE(v28) = chart;
  v26 = [(HKQuantityDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v28 unitFormatString:stringCopy formatString:v25];

  return v26;
}

- (id)attributedStringFromValue:(id)value unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)string formatString:(id)self0
{
  chartCopy = chart;
  fontCopy = font;
  unitFontCopy = unitFont;
  stringCopy = string;
  formatStringCopy = formatString;
  numberFormatter = self->super._numberFormatter;
  controllerCopy = controller;
  unitCopy = unit;
  valueCopy = value;
  v22 = HKFormattedStringFromValueWithUnit(valueCopy, 0, unitCopy, controllerCopy, 1, numberFormatter);
  v23 = [controllerCopy localizedDisplayNameForUnit:unitCopy value:valueCopy];

  if (stringCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:stringCopy validFormatSpecifiers:@"%@" error:0, v23];

    v23 = v24;
  }

  v25 = [(HKQuantityDisplayTypeValueFormatter *)self attributedStringFromValueString:v22 valueFont:fontCopy unitString:v23 unitFont:unitFontCopy unitIcon:0 formatForChart:chartCopy formatString:formatStringCopy];

  return v25;
}

- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0 formatString:(id)self1
{
  typeCopy = type;
  stringCopy = string;
  selfCopy = self;
  numberFormatter = self->super._numberFormatter;
  formatStringCopy = formatString;
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  unitCopy = unit;
  valueCopy = value;
  v25 = HKFormattedStringFromValueWithUnit(valueCopy, typeCopy, unitCopy, controllerCopy, 1, numberFormatter);
  v26 = [controllerCopy localizedDisplayNameForDisplayType:typeCopy unit:unitCopy value:valueCopy];

  if (stringCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:stringCopy validFormatSpecifiers:@"%@" error:0, v26];

    v26 = v27;
  }

  unitIcon = [typeCopy unitIcon];
  v29 = [(HKQuantityDisplayTypeValueFormatter *)selfCopy attributedStringFromValueString:v25 valueFont:fontCopy unitString:v26 unitFont:unitFontCopy unitIcon:unitIcon formatForChart:chart formatString:formatStringCopy];

  return v29;
}

- (id)attributedStringFromValueString:(id)string valueFont:(id)font unitString:(id)unitString unitFont:(id)unitFont unitIcon:(id)icon formatForChart:(BOOL)chart formatString:(id)formatString
{
  chartCopy = chart;
  fontCopy = font;
  iconCopy = icon;
  formatStringCopy = formatString;
  v17 = HKGenerateAttributedStringsWithUnitValue(string, unitString, fontCopy, unitFont, 2, chartCopy);
  if (iconCopy)
  {
    [fontCopy ascender];
    v19 = v18;
    [fontCopy descender];
    v21 = v19 + v20;
    [iconCopy size];
    v23 = v21 - v22;
    v24 = [MEMORY[0x1E696AAB0] hk_attributedStringForSpacing:1];
    v25 = [&stru_1F42FFBE0 hk_attributedStringPrefixedWithImage:iconCopy baselineAdjusted:v23 spacing:0.0];
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
  }

  v26 = v25;
  [v17 addObject:v24];
  [v17 addObject:v26];
  v27 = HKUIJoinAttributedStringsWithFormat(v17, formatStringCopy);

  return v27;
}

- (id)stringFromValue:(id)value displayType:(id)type unitController:(id)controller formatString:(id)string
{
  stringCopy = string;
  controllerCopy = controller;
  typeCopy = type;
  valueCopy = value;
  v14 = [controllerCopy unitForDisplayType:typeCopy];
  v15 = [(HKQuantityDisplayTypeValueFormatter *)self stringFromValue:valueCopy displayType:typeCopy unit:v14 unitController:controllerCopy formatString:stringCopy];

  return v15;
}

- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller formatString:(id)string
{
  stringCopy = string;
  numberFormatter = self->super._numberFormatter;
  controllerCopy = controller;
  unitCopy = unit;
  typeCopy = type;
  valueCopy = value;
  v18 = HKFormattedStringFromValueWithUnit(valueCopy, typeCopy, unitCopy, controllerCopy, 1, numberFormatter);
  v19 = [controllerCopy localizedDisplayNameForDisplayType:typeCopy unit:unitCopy value:valueCopy];

  if ([v19 length])
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:stringCopy, v18, v19];
  }

  else
  {
    v20 = v18;
  }

  v21 = v20;

  return v21;
}

- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller
{
  v10 = MEMORY[0x1E696AAE8];
  controllerCopy = controller;
  unitCopy = unit;
  typeCopy = type;
  valueCopy = value;
  v15 = [v10 bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"QUANTITY_TYPE_DISPLAY_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v17 = [(HKQuantityDisplayTypeValueFormatter *)self stringFromValue:valueCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy formatString:v16];

  return v17;
}

@end