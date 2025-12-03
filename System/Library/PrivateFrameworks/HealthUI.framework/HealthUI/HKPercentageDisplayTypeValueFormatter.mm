@interface HKPercentageDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont;
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart;
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0;
- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller;
@end

@implementation HKPercentageDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont
{
  valueCopy = value;
  typeCopy = type;
  unitCopy = unit;
  controllerCopy = controller;
  fontCopy = font;
  unitFontCopy = unitFont;
  if (unitCopy)
  {
    percentUnit = [MEMORY[0x1E696C510] percentUnit];

    if (percentUnit != unitCopy)
    {
      _HKInitializeLogging();
      v21 = HKLogInfrastructure();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [HKPercentageDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  LOBYTE(v24) = 1;
  v22 = [(HKPercentageDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v24];

  return v22;
}

- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart
{
  valueCopy = value;
  typeCopy = type;
  unitCopy = unit;
  controllerCopy = controller;
  fontCopy = font;
  unitFontCopy = unitFont;
  if (unitCopy)
  {
    percentUnit = [MEMORY[0x1E696C510] percentUnit];

    if (percentUnit != unitCopy)
    {
      _HKInitializeLogging();
      v22 = HKLogInfrastructure();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [HKPercentageDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  LOBYTE(v25) = chart;
  v23 = [(HKPercentageDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v25 unitFormatString:0];

  return v23;
}

- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart unitFormatString:(id)self0
{
  valueCopy = value;
  typeCopy = type;
  unitCopy = unit;
  controllerCopy = controller;
  fontCopy = font;
  unitFontCopy = unitFont;
  stringCopy = string;
  if (unitCopy)
  {
    percentUnit = [MEMORY[0x1E696C510] percentUnit];

    if (percentUnit != unitCopy)
    {
      _HKInitializeLogging();
      v23 = HKLogInfrastructure();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [HKPercentageDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v25 = [v24 localizedStringForKey:@"PERCENTAGE_QUANTITY_VALUE_FORMAT_STRING" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  LOBYTE(v28) = chart;
  v26 = [(HKQuantityDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v28 unitFormatString:stringCopy formatString:v25];

  return v26;
}

- (id)stringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller
{
  valueCopy = value;
  typeCopy = type;
  unitCopy = unit;
  controllerCopy = controller;
  if (unitCopy)
  {
    percentUnit = [MEMORY[0x1E696C510] percentUnit];

    if (percentUnit != unitCopy)
    {
      _HKInitializeLogging();
      v15 = HKLogInfrastructure();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [HKPercentageDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:@"PERCENTAGE_QUANTITY_TYPE_DISPLAY_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v18 = [(HKQuantityDisplayTypeValueFormatter *)self stringFromValue:valueCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy formatString:v17];

  return v18;
}

@end