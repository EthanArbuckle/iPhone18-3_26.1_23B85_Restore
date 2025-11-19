@interface HKInteractiveChartNumberRangeFormatter
- (BOOL)_shouldRemoveUnit:(id)a3 fromMaximumFormattedValue:(id)a4;
- (BOOL)_shouldRemoveUnit:(id)a3 fromMinimumFormattedValue:(id)a4;
- (id)_attributedStringFromValue:(id)a3 withValueFormatter:(id)a4 displayType:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9;
- (id)attributedStringForMinimumString:(id)a3 maximumString:(id)a4 minimumUnitString:(id)a5 maximumUnitString:(id)a6 valueFont:(id)a7 formatForChart:(BOOL)a8 resultIsASingleValue:(BOOL *)a9;
- (id)attributedStringForMinimumValue:(id)a3 maximumValue:(id)a4 displayType:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 resultIsSingleValue:(BOOL *)a10;
- (id)stringForMinimumValue:(id)a3 maximumValue:(id)a4 displayType:(id)a5 unitPreferenceController:(id)a6;
@end

@implementation HKInteractiveChartNumberRangeFormatter

- (id)stringForMinimumValue:(id)a3 maximumValue:(id)a4 displayType:(id)a5 unitPreferenceController:(id)a6
{
  v10 = MEMORY[0x1E69DB878];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 systemFontOfSize:12.0];
  LOBYTE(v19) = 0;
  v16 = [(HKInteractiveChartNumberRangeFormatter *)self attributedStringForMinimumValue:v14 maximumValue:v13 displayType:v12 unitController:v11 valueFont:v15 unitFont:v15 formatForChart:v19];

  v17 = [v16 string];

  return v17;
}

- (id)attributedStringForMinimumValue:(id)a3 maximumValue:(id)a4 displayType:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 resultIsSingleValue:(BOOL *)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  if (!v19)
  {
    [HKInteractiveChartNumberRangeFormatter attributedStringForMinimumValue:a2 maximumValue:self displayType:? unitController:? valueFont:? unitFont:? formatForChart:? resultIsSingleValue:?];
  }

  if (v17 | v18)
  {
    v34 = [v20 unitForDisplayType:v19];
    v23 = [v19 hk_valueFormatterForUnit:?];
    if (v17)
    {
      LOBYTE(v31) = a9;
      v33 = [(HKInteractiveChartNumberRangeFormatter *)self _attributedStringFromValue:v17 withValueFormatter:v23 displayType:v19 unitController:v20 valueFont:v21 unitFont:v22 formatForChart:v31];
      v24 = [v20 localizedDisplayNameForDisplayType:v19 value:v17];
    }

    else
    {
      v33 = 0;
      v24 = 0;
    }

    v32 = v23;
    if (v18)
    {
      LOBYTE(v31) = a9;
      v26 = [(HKInteractiveChartNumberRangeFormatter *)self _attributedStringFromValue:v18 withValueFormatter:v23 displayType:v19 unitController:v20 valueFont:v21 unitFont:v22 formatForChart:v31, v23];
      v27 = [v20 localizedDisplayNameForDisplayType:v19 value:v18];
      v28 = a9;
      v29 = v27;
    }

    else
    {
      v26 = 0;
      v28 = a9;
      v29 = 0;
    }

    v25 = [(HKInteractiveChartNumberRangeFormatter *)self attributedStringForMinimumString:v33 maximumString:v26 minimumUnitString:v24 maximumUnitString:v29 valueFont:v21 formatForChart:v28 resultIsASingleValue:a10];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)attributedStringForMinimumString:(id)a3 maximumString:(id)a4 minimumUnitString:(id)a5 maximumUnitString:(id)a6 valueFont:(id)a7 formatForChart:(BOOL)a8 resultIsASingleValue:(BOOL *)a9
{
  v9 = a8;
  v15 = a9;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  if (!v16 || !v17)
  {
    if (v16)
    {
      v24 = v16;
      v25 = 1;
      v16 = v24;
      if (!a9)
      {
        goto LABEL_21;
      }
    }

    else if (v17)
    {
      v24 = v17;
      v16 = 0;
      v25 = 1;
      v17 = v24;
      if (!a9)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v24 = 0;
      v16 = 0;
      v25 = 1;
      if (!a9)
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    *v15 = v25;
    goto LABEL_21;
  }

  v21 = [v16 string];
  v22 = [v17 string];
  v23 = [v21 isEqualToString:v22];

  if (v23)
  {
    v24 = v16;
    v25 = 1;
    v16 = v24;
  }

  else
  {
    v47 = v20;
    v26 = [v16 string];
    v27 = [(HKInteractiveChartNumberRangeFormatter *)self _shouldRemoveUnit:v18 fromMinimumFormattedValue:v26];

    if (v27)
    {
      v28 = [v16 mutableCopy];
      v29 = [v28 mutableString];
      [v29 _hk_trimString:v18];

      v30 = [v28 mutableString];
      v31 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      [v30 _hk_trimCharactersInSet:v31];

      v32 = [v28 copy];
      v16 = v32;
    }

    v33 = [v17 string];
    v34 = [(HKInteractiveChartNumberRangeFormatter *)self _shouldRemoveUnit:v19 fromMaximumFormattedValue:v33];

    if (v34)
    {
      v35 = [v17 mutableCopy];
      v36 = [v35 mutableString];
      [v36 _hk_trimString:v19];

      v37 = [v35 mutableString];
      v38 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      [v37 _hk_trimCharactersInSet:v38];

      v39 = [v35 copy];
      v17 = v39;
    }

    if (v9)
    {
      v40 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
    }

    else
    {
      v40 = 0;
    }

    v41 = objc_alloc(MEMORY[0x1E696AAB0]);
    v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v43 = [v42 localizedStringForKey:@"OVERLAY_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v44 = HKAttributedStringAttributesForFont(v20, v40);
    v45 = [v41 initWithString:v43 attributes:v44];

    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithFormat:v45 options:1 locale:0, v16, v17];
    v20 = v47;

    v25 = 0;
  }

  v15 = a9;
  if (a9)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v24;
}

- (BOOL)_shouldRemoveUnit:(id)a3 fromMinimumFormattedValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:0] == 1)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 rangeOfString:v5 options:4];
    v7 = v8 != 0x7FFFFFFFFFFFFFFFLL && [v6 length] == v8 + v9;
  }

  return v7;
}

- (BOOL)_shouldRemoveUnit:(id)a3 fromMaximumFormattedValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:0] != 1 && objc_msgSend(v6, "rangeOfString:", v5) == 0;

  return v7;
}

- (id)_attributedStringFromValue:(id)a3 withValueFormatter:(id)a4 displayType:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9
{
  v29 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  v18 = [a4 stringFromValue:v17 displayType:v16 unitController:v15];
  if (a9)
  {
    v19 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_alloc(MEMORY[0x1E696AD40]);
  v21 = HKAttributedStringAttributesForFont(v14, v19);

  v22 = [v20 initWithString:v18 attributes:v21];
  v23 = [v15 localizedDisplayNameForDisplayType:v16 value:v17];

  if (a9)
  {
    v24 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  }

  else
  {
    v24 = 0;
  }

  v25 = HKAttributedStringAttributesForFont(v29, v24);
  v26 = [v18 rangeOfString:v23];
  [v22 addAttributes:v25 range:{v26, v27}];

  return v22;
}

- (void)attributedStringForMinimumValue:(uint64_t)a1 maximumValue:(uint64_t)a2 displayType:unitController:valueFont:unitFont:formatForChart:resultIsSingleValue:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKInteractiveChartNumberRangeFormatter.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"displayType != nil"}];
}

@end