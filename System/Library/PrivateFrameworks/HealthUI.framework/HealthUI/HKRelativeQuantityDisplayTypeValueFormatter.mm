@interface HKRelativeQuantityDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0 formatString:(id)self1;
- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller;
- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller formatString:(id)string;
@end

@implementation HKRelativeQuantityDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0 formatString:(id)self1
{
  v59[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  unitCopy = unit;
  controllerCopy = controller;
  fontCopy = font;
  unitFontCopy = unitFont;
  stringCopy = string;
  formatStringCopy = formatString;
  [valueCopy doubleValue];
  if (v24 == 1.79769313e308)
  {
    v51 = objc_alloc(MEMORY[0x1E696AAB0]);
    v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    [v25 localizedStringForKey:@"ESTABLISHING_BASELINE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
    v26 = controllerCopy;
    v28 = v27 = typeCopy;
    v58 = *MEMORY[0x1E69DB648];
    v59[0] = fontCopy;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v29 = valueCopy;
    v30 = fontCopy;
    v31 = formatStringCopy;
    v32 = unitFontCopy;
    v34 = v33 = unitCopy;
    v52 = [v51 initWithString:v28 attributes:v34];

    unitCopy = v33;
    unitFontCopy = v32;
    formatStringCopy = v31;
    fontCopy = v30;
    valueCopy = v29;

    typeCopy = v27;
    controllerCopy = v26;

LABEL_5:
    v43 = stringCopy;
    goto LABEL_6;
  }

  [valueCopy doubleValue];
  if (v35 == -1.79769313e308)
  {
    v36 = objc_alloc(MEMORY[0x1E696AAB0]);
    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v37 = v50 = unitCopy;
    v38 = [v37 localizedStringForKey:@"NOT_ENOUGH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
    v56 = *MEMORY[0x1E69DB648];
    v57 = fontCopy;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v39 = unitFontCopy;
    v40 = controllerCopy;
    v42 = v41 = typeCopy;
    v52 = [v36 initWithString:v38 attributes:v42];

    typeCopy = v41;
    controllerCopy = v40;
    unitFontCopy = v39;

    unitCopy = v50;
    goto LABEL_5;
  }

  v43 = stringCopy;
  if (!stringCopy)
  {
    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v54 = unitFontCopy;
    v45 = controllerCopy;
    v46 = unitCopy;
    v48 = v47 = typeCopy;
    v43 = [v48 localizedStringForKey:@"%@_DEGREES_FROM_BASELINE_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

    typeCopy = v47;
    unitCopy = v46;
    controllerCopy = v45;
    unitFontCopy = v54;
  }

  v55.receiver = self;
  v55.super_class = HKRelativeQuantityDisplayTypeValueFormatter;
  v52 = [(HKQuantityDisplayTypeValueFormatter *)&v55 attributedStringFromValue:valueCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:chart unitFormatString:v43 formatString:formatStringCopy];
LABEL_6:

  return v52;
}

- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller formatString:(id)string
{
  valueCopy = value;
  typeCopy = type;
  unitCopy = unit;
  controllerCopy = controller;
  stringCopy = string;
  [valueCopy doubleValue];
  if (v17 == 1.79769313e308)
  {
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = v18;
    v20 = @"ESTABLISHING_BASELINE";
LABEL_5:
    v22 = [v18 localizedStringForKey:v20 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

    goto LABEL_6;
  }

  [valueCopy doubleValue];
  if (v21 == -1.79769313e308)
  {
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = v18;
    v20 = @"NOT_ENOUGH_DATA";
    goto LABEL_5;
  }

  v24.receiver = self;
  v24.super_class = HKRelativeQuantityDisplayTypeValueFormatter;
  v22 = [(HKQuantityDisplayTypeValueFormatter *)&v24 stringFromValue:valueCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy formatString:stringCopy];
LABEL_6:

  return v22;
}

- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller
{
  valueCopy = value;
  typeCopy = type;
  unitCopy = unit;
  controllerCopy = controller;
  [valueCopy doubleValue];
  if (v14 == 1.79769313e308)
  {
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = v15;
    v17 = @"ESTABLISHING_BASELINE";
LABEL_5:
    v19 = [v15 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

    goto LABEL_6;
  }

  [valueCopy doubleValue];
  if (v18 == -1.79769313e308)
  {
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = v15;
    v17 = @"NOT_ENOUGH_DATA";
    goto LABEL_5;
  }

  v21.receiver = self;
  v21.super_class = HKRelativeQuantityDisplayTypeValueFormatter;
  v19 = [(HKQuantityDisplayTypeValueFormatter *)&v21 stringFromValue:valueCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy];
LABEL_6:

  return v19;
}

@end