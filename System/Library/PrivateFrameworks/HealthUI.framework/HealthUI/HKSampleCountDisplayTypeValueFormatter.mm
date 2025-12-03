@interface HKSampleCountDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0 formatString:(id)self1;
@end

@implementation HKSampleCountDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0 formatString:(id)self1
{
  typeCopy = type;
  stringCopy = string;
  selfCopy = self;
  numberFormatter = self->super.super._numberFormatter;
  formatStringCopy = formatString;
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  unitCopy = unit;
  valueCopy = value;
  v25 = HKFormattedStringFromValueWithUnit(valueCopy, typeCopy, unitCopy, controllerCopy, 0, numberFormatter);
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

@end