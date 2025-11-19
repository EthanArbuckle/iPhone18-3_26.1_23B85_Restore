@interface HKQuantityDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10 formatString:(id)a11;
- (id)attributedStringFromValue:(id)a3 unit:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7 formatForChart:(BOOL)a8 unitFormatString:(id)a9 formatString:(id)a10;
- (id)attributedStringFromValueString:(id)a3 valueFont:(id)a4 unitString:(id)a5 unitFont:(id)a6 unitIcon:(id)a7 formatForChart:(BOOL)a8 formatString:(id)a9;
- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6;
- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 formatString:(id)a7;
- (id)stringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 formatString:(id)a6;
@end

@implementation HKQuantityDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10
{
  v16 = MEMORY[0x1E696AAE8];
  v17 = a10;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [v16 bundleWithIdentifier:@"com.apple.HealthUI"];
  v25 = [v24 localizedStringForKey:@"QUANTITY_VALUE_FORMAT_STRING" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  LOBYTE(v28) = a9;
  v26 = [(HKQuantityDisplayTypeValueFormatter *)self attributedStringFromValue:v23 displayType:v22 unit:v21 unitController:v20 valueFont:v19 unitFont:v18 formatForChart:v28 unitFormatString:v17 formatString:v25];

  return v26;
}

- (id)attributedStringFromValue:(id)a3 unit:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7 formatForChart:(BOOL)a8 unitFormatString:(id)a9 formatString:(id)a10
{
  v27 = a8;
  v28 = a6;
  v15 = a7;
  v16 = a9;
  v17 = a10;
  numberFormatter = self->super._numberFormatter;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = HKFormattedStringFromValueWithUnit(v21, 0, v20, v19, 1, numberFormatter);
  v23 = [v19 localizedDisplayNameForUnit:v20 value:v21];

  if (v16)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v23];

    v23 = v24;
  }

  v25 = [(HKQuantityDisplayTypeValueFormatter *)self attributedStringFromValueString:v22 valueFont:v28 unitString:v23 unitFont:v15 unitIcon:0 formatForChart:v27 formatString:v17];

  return v25;
}

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10 formatString:(id)a11
{
  v17 = a4;
  v18 = a10;
  v32 = self;
  numberFormatter = self->super._numberFormatter;
  v31 = a11;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a3;
  v25 = HKFormattedStringFromValueWithUnit(v24, v17, v23, v22, 1, numberFormatter);
  v26 = [v22 localizedDisplayNameForDisplayType:v17 unit:v23 value:v24];

  if (v18)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v18 validFormatSpecifiers:@"%@" error:0, v26];

    v26 = v27;
  }

  v28 = [v17 unitIcon];
  v29 = [(HKQuantityDisplayTypeValueFormatter *)v32 attributedStringFromValueString:v25 valueFont:v21 unitString:v26 unitFont:v20 unitIcon:v28 formatForChart:a9 formatString:v31];

  return v29;
}

- (id)attributedStringFromValueString:(id)a3 valueFont:(id)a4 unitString:(id)a5 unitFont:(id)a6 unitIcon:(id)a7 formatForChart:(BOOL)a8 formatString:(id)a9
{
  v9 = a8;
  v14 = a4;
  v15 = a7;
  v16 = a9;
  v17 = HKGenerateAttributedStringsWithUnitValue(a3, a5, v14, a6, 2, v9);
  if (v15)
  {
    [v14 ascender];
    v19 = v18;
    [v14 descender];
    v21 = v19 + v20;
    [v15 size];
    v23 = v21 - v22;
    v24 = [MEMORY[0x1E696AAB0] hk_attributedStringForSpacing:1];
    v25 = [&stru_1F42FFBE0 hk_attributedStringPrefixedWithImage:v15 baselineAdjusted:v23 spacing:0.0];
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
  }

  v26 = v25;
  [v17 addObject:v24];
  [v17 addObject:v26];
  v27 = HKUIJoinAttributedStringsWithFormat(v17, v16);

  return v27;
}

- (id)stringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 formatString:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v11 unitForDisplayType:v12];
  v15 = [(HKQuantityDisplayTypeValueFormatter *)self stringFromValue:v13 displayType:v12 unit:v14 unitController:v11 formatString:v10];

  return v15;
}

- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 formatString:(id)a7
{
  v12 = a7;
  numberFormatter = self->super._numberFormatter;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = HKFormattedStringFromValueWithUnit(v17, v16, v15, v14, 1, numberFormatter);
  v19 = [v14 localizedDisplayNameForDisplayType:v16 unit:v15 value:v17];

  if ([v19 length])
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:v12, v18, v19];
  }

  else
  {
    v20 = v18;
  }

  v21 = v20;

  return v21;
}

- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6
{
  v10 = MEMORY[0x1E696AAE8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"QUANTITY_TYPE_DISPLAY_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v17 = [(HKQuantityDisplayTypeValueFormatter *)self stringFromValue:v14 displayType:v13 unit:v12 unitController:v11 formatString:v16];

  return v17;
}

@end