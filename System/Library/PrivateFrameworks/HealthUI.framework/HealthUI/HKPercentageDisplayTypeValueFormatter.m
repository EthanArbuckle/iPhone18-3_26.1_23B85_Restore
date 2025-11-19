@interface HKPercentageDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10;
- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6;
@end

@implementation HKPercentageDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v16)
  {
    v20 = [MEMORY[0x1E696C510] percentUnit];

    if (v20 != v16)
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
  v22 = [(HKPercentageDisplayTypeValueFormatter *)self attributedStringFromValue:v14 displayType:v15 unit:v16 unitController:v17 valueFont:v18 unitFont:v19 formatForChart:v24];

  return v22;
}

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v17)
  {
    v21 = [MEMORY[0x1E696C510] percentUnit];

    if (v21 != v17)
    {
      _HKInitializeLogging();
      v22 = HKLogInfrastructure();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [HKPercentageDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  LOBYTE(v25) = a9;
  v23 = [(HKPercentageDisplayTypeValueFormatter *)self attributedStringFromValue:v15 displayType:v16 unit:v17 unitController:v18 valueFont:v19 unitFont:v20 formatForChart:v25 unitFormatString:0];

  return v23;
}

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  if (v17)
  {
    v22 = [MEMORY[0x1E696C510] percentUnit];

    if (v22 != v17)
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
  LOBYTE(v28) = a9;
  v26 = [(HKQuantityDisplayTypeValueFormatter *)self attributedStringFromValue:v15 displayType:v16 unit:v17 unitController:v18 valueFont:v19 unitFont:v20 formatForChart:v28 unitFormatString:v21 formatString:v25];

  return v26;
}

- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v14 = [MEMORY[0x1E696C510] percentUnit];

    if (v14 != v12)
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
  v18 = [(HKQuantityDisplayTypeValueFormatter *)self stringFromValue:v10 displayType:v11 unit:v12 unitController:v13 formatString:v17];

  return v18;
}

@end