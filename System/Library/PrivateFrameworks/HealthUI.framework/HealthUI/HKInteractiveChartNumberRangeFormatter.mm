@interface HKInteractiveChartNumberRangeFormatter
- (BOOL)_shouldRemoveUnit:(id)unit fromMaximumFormattedValue:(id)value;
- (BOOL)_shouldRemoveUnit:(id)unit fromMinimumFormattedValue:(id)value;
- (id)_attributedStringFromValue:(id)value withValueFormatter:(id)formatter displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart;
- (id)attributedStringForMinimumString:(id)string maximumString:(id)maximumString minimumUnitString:(id)unitString maximumUnitString:(id)maximumUnitString valueFont:(id)font formatForChart:(BOOL)chart resultIsASingleValue:(BOOL *)value;
- (id)attributedStringForMinimumValue:(id)value maximumValue:(id)maximumValue displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart resultIsSingleValue:(BOOL *)self0;
- (id)stringForMinimumValue:(id)value maximumValue:(id)maximumValue displayType:(id)type unitPreferenceController:(id)controller;
@end

@implementation HKInteractiveChartNumberRangeFormatter

- (id)stringForMinimumValue:(id)value maximumValue:(id)maximumValue displayType:(id)type unitPreferenceController:(id)controller
{
  v10 = MEMORY[0x1E69DB878];
  controllerCopy = controller;
  typeCopy = type;
  maximumValueCopy = maximumValue;
  valueCopy = value;
  v15 = [v10 systemFontOfSize:12.0];
  LOBYTE(v19) = 0;
  v16 = [(HKInteractiveChartNumberRangeFormatter *)self attributedStringForMinimumValue:valueCopy maximumValue:maximumValueCopy displayType:typeCopy unitController:controllerCopy valueFont:v15 unitFont:v15 formatForChart:v19];

  string = [v16 string];

  return string;
}

- (id)attributedStringForMinimumValue:(id)value maximumValue:(id)maximumValue displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart resultIsSingleValue:(BOOL *)self0
{
  valueCopy = value;
  maximumValueCopy = maximumValue;
  typeCopy = type;
  controllerCopy = controller;
  fontCopy = font;
  unitFontCopy = unitFont;
  if (!typeCopy)
  {
    [HKInteractiveChartNumberRangeFormatter attributedStringForMinimumValue:a2 maximumValue:self displayType:? unitController:? valueFont:? unitFont:? formatForChart:? resultIsSingleValue:?];
  }

  if (valueCopy | maximumValueCopy)
  {
    v34 = [controllerCopy unitForDisplayType:typeCopy];
    v23 = [typeCopy hk_valueFormatterForUnit:?];
    if (valueCopy)
    {
      LOBYTE(v31) = chart;
      v33 = [(HKInteractiveChartNumberRangeFormatter *)self _attributedStringFromValue:valueCopy withValueFormatter:v23 displayType:typeCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v31];
      v24 = [controllerCopy localizedDisplayNameForDisplayType:typeCopy value:valueCopy];
    }

    else
    {
      v33 = 0;
      v24 = 0;
    }

    v32 = v23;
    if (maximumValueCopy)
    {
      LOBYTE(v31) = chart;
      v26 = [(HKInteractiveChartNumberRangeFormatter *)self _attributedStringFromValue:maximumValueCopy withValueFormatter:v23 displayType:typeCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v31, v23];
      v27 = [controllerCopy localizedDisplayNameForDisplayType:typeCopy value:maximumValueCopy];
      chartCopy2 = chart;
      v29 = v27;
    }

    else
    {
      v26 = 0;
      chartCopy2 = chart;
      v29 = 0;
    }

    v25 = [(HKInteractiveChartNumberRangeFormatter *)self attributedStringForMinimumString:v33 maximumString:v26 minimumUnitString:v24 maximumUnitString:v29 valueFont:fontCopy formatForChart:chartCopy2 resultIsASingleValue:singleValue];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)attributedStringForMinimumString:(id)string maximumString:(id)maximumString minimumUnitString:(id)unitString maximumUnitString:(id)maximumUnitString valueFont:(id)font formatForChart:(BOOL)chart resultIsASingleValue:(BOOL *)value
{
  chartCopy = chart;
  valueCopy2 = value;
  stringCopy = string;
  maximumStringCopy = maximumString;
  unitStringCopy = unitString;
  maximumUnitStringCopy = maximumUnitString;
  fontCopy = font;
  if (!stringCopy || !maximumStringCopy)
  {
    if (stringCopy)
    {
      maximumStringCopy = stringCopy;
      v25 = 1;
      stringCopy = maximumStringCopy;
      if (!value)
      {
        goto LABEL_21;
      }
    }

    else if (maximumStringCopy)
    {
      maximumStringCopy = maximumStringCopy;
      stringCopy = 0;
      v25 = 1;
      maximumStringCopy = maximumStringCopy;
      if (!value)
      {
        goto LABEL_21;
      }
    }

    else
    {
      maximumStringCopy = 0;
      stringCopy = 0;
      v25 = 1;
      if (!value)
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    *valueCopy2 = v25;
    goto LABEL_21;
  }

  string = [stringCopy string];
  string2 = [maximumStringCopy string];
  v23 = [string isEqualToString:string2];

  if (v23)
  {
    maximumStringCopy = stringCopy;
    v25 = 1;
    stringCopy = maximumStringCopy;
  }

  else
  {
    v47 = fontCopy;
    string3 = [stringCopy string];
    v27 = [(HKInteractiveChartNumberRangeFormatter *)self _shouldRemoveUnit:unitStringCopy fromMinimumFormattedValue:string3];

    if (v27)
    {
      v28 = [stringCopy mutableCopy];
      mutableString = [v28 mutableString];
      [mutableString _hk_trimString:unitStringCopy];

      mutableString2 = [v28 mutableString];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      [mutableString2 _hk_trimCharactersInSet:whitespaceCharacterSet];

      v32 = [v28 copy];
      stringCopy = v32;
    }

    string4 = [maximumStringCopy string];
    v34 = [(HKInteractiveChartNumberRangeFormatter *)self _shouldRemoveUnit:maximumUnitStringCopy fromMaximumFormattedValue:string4];

    if (v34)
    {
      v35 = [maximumStringCopy mutableCopy];
      mutableString3 = [v35 mutableString];
      [mutableString3 _hk_trimString:maximumUnitStringCopy];

      mutableString4 = [v35 mutableString];
      whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      [mutableString4 _hk_trimCharactersInSet:whitespaceCharacterSet2];

      v39 = [v35 copy];
      maximumStringCopy = v39;
    }

    if (chartCopy)
    {
      hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
    }

    else
    {
      hk_chartLollipopValueColor = 0;
    }

    v41 = objc_alloc(MEMORY[0x1E696AAB0]);
    v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v43 = [v42 localizedStringForKey:@"OVERLAY_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v44 = HKAttributedStringAttributesForFont(fontCopy, hk_chartLollipopValueColor);
    v45 = [v41 initWithString:v43 attributes:v44];

    maximumStringCopy = [objc_alloc(MEMORY[0x1E696AAB0]) initWithFormat:v45 options:1 locale:0, stringCopy, maximumStringCopy];
    fontCopy = v47;

    v25 = 0;
  }

  valueCopy2 = value;
  if (value)
  {
    goto LABEL_20;
  }

LABEL_21:

  return maximumStringCopy;
}

- (BOOL)_shouldRemoveUnit:(id)unit fromMinimumFormattedValue:(id)value
{
  unitCopy = unit;
  valueCopy = value;
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:0] == 1)
  {
    v7 = 1;
  }

  else
  {
    v8 = [valueCopy rangeOfString:unitCopy options:4];
    v7 = v8 != 0x7FFFFFFFFFFFFFFFLL && [valueCopy length] == v8 + v9;
  }

  return v7;
}

- (BOOL)_shouldRemoveUnit:(id)unit fromMaximumFormattedValue:(id)value
{
  unitCopy = unit;
  valueCopy = value;
  v7 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:0] != 1 && objc_msgSend(valueCopy, "rangeOfString:", unitCopy) == 0;

  return v7;
}

- (id)_attributedStringFromValue:(id)value withValueFormatter:(id)formatter displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart
{
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  typeCopy = type;
  valueCopy = value;
  v18 = [formatter stringFromValue:valueCopy displayType:typeCopy unitController:controllerCopy];
  if (chart)
  {
    hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  }

  else
  {
    hk_chartLollipopValueColor = 0;
  }

  v20 = objc_alloc(MEMORY[0x1E696AD40]);
  v21 = HKAttributedStringAttributesForFont(fontCopy, hk_chartLollipopValueColor);

  v22 = [v20 initWithString:v18 attributes:v21];
  v23 = [controllerCopy localizedDisplayNameForDisplayType:typeCopy value:valueCopy];

  if (chart)
  {
    hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  }

  else
  {
    hk_chartLollipopLabelColor = 0;
  }

  v25 = HKAttributedStringAttributesForFont(unitFontCopy, hk_chartLollipopLabelColor);
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