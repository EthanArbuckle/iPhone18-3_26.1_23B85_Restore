@interface HKRelativeQuantityDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10 formatString:(id)a11;
- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6;
- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 formatString:(id)a7;
@end

@implementation HKRelativeQuantityDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10 formatString:(id)a11
{
  v59[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v53 = a10;
  v23 = a11;
  [v17 doubleValue];
  if (v24 == 1.79769313e308)
  {
    v51 = objc_alloc(MEMORY[0x1E696AAB0]);
    v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    [v25 localizedStringForKey:@"ESTABLISHING_BASELINE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
    v26 = v20;
    v28 = v27 = v18;
    v58 = *MEMORY[0x1E69DB648];
    v59[0] = v21;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v29 = v17;
    v30 = v21;
    v31 = v23;
    v32 = v22;
    v34 = v33 = v19;
    v52 = [v51 initWithString:v28 attributes:v34];

    v19 = v33;
    v22 = v32;
    v23 = v31;
    v21 = v30;
    v17 = v29;

    v18 = v27;
    v20 = v26;

LABEL_5:
    v43 = v53;
    goto LABEL_6;
  }

  [v17 doubleValue];
  if (v35 == -1.79769313e308)
  {
    v36 = objc_alloc(MEMORY[0x1E696AAB0]);
    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v37 = v50 = v19;
    v38 = [v37 localizedStringForKey:@"NOT_ENOUGH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
    v56 = *MEMORY[0x1E69DB648];
    v57 = v21;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v39 = v22;
    v40 = v20;
    v42 = v41 = v18;
    v52 = [v36 initWithString:v38 attributes:v42];

    v18 = v41;
    v20 = v40;
    v22 = v39;

    v19 = v50;
    goto LABEL_5;
  }

  v43 = v53;
  if (!v53)
  {
    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v54 = v22;
    v45 = v20;
    v46 = v19;
    v48 = v47 = v18;
    v43 = [v48 localizedStringForKey:@"%@_DEGREES_FROM_BASELINE_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

    v18 = v47;
    v19 = v46;
    v20 = v45;
    v22 = v54;
  }

  v55.receiver = self;
  v55.super_class = HKRelativeQuantityDisplayTypeValueFormatter;
  v52 = [(HKQuantityDisplayTypeValueFormatter *)&v55 attributedStringFromValue:v17 displayType:v18 unit:v19 unitController:v20 valueFont:v21 unitFont:v22 formatForChart:a9 unitFormatString:v43 formatString:v23];
LABEL_6:

  return v52;
}

- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 formatString:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  [v12 doubleValue];
  if (v17 == 1.79769313e308)
  {
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = v18;
    v20 = @"ESTABLISHING_BASELINE";
LABEL_5:
    v22 = [v18 localizedStringForKey:v20 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

    goto LABEL_6;
  }

  [v12 doubleValue];
  if (v21 == -1.79769313e308)
  {
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = v18;
    v20 = @"NOT_ENOUGH_DATA";
    goto LABEL_5;
  }

  v24.receiver = self;
  v24.super_class = HKRelativeQuantityDisplayTypeValueFormatter;
  v22 = [(HKQuantityDisplayTypeValueFormatter *)&v24 stringFromValue:v12 displayType:v13 unit:v14 unitController:v15 formatString:v16];
LABEL_6:

  return v22;
}

- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [v10 doubleValue];
  if (v14 == 1.79769313e308)
  {
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = v15;
    v17 = @"ESTABLISHING_BASELINE";
LABEL_5:
    v19 = [v15 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

    goto LABEL_6;
  }

  [v10 doubleValue];
  if (v18 == -1.79769313e308)
  {
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = v15;
    v17 = @"NOT_ENOUGH_DATA";
    goto LABEL_5;
  }

  v21.receiver = self;
  v21.super_class = HKRelativeQuantityDisplayTypeValueFormatter;
  v19 = [(HKQuantityDisplayTypeValueFormatter *)&v21 stringFromValue:v10 displayType:v11 unit:v12 unitController:v13];
LABEL_6:

  return v19;
}

@end