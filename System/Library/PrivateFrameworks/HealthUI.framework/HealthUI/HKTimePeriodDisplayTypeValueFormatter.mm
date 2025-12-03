@interface HKTimePeriodDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont;
- (id)attributedStringFromValue:(id)value displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart;
- (id)attributedStringFromValue:(id)value roundToHours:(BOOL)hours displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)self0;
- (id)attributedStringFromValue:(id)value roundToHours:(BOOL)hours displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)self0 usePerDayFormatting:(BOOL)self1;
- (id)attributedStringFromValue:(id)value roundToHours:(BOOL)hours displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart;
- (id)attributedStringFromValue:(id)value roundToHours:(BOOL)hours displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart usePerDayFormatting:(BOOL)self0;
@end

@implementation HKTimePeriodDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)value roundToHours:(BOOL)hours displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart
{
  hoursCopy = hours;
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  typeCopy = type;
  valueCopy = value;
  v20 = [controllerCopy unitForDisplayType:typeCopy];
  LOBYTE(v23) = chart;
  v21 = [(HKTimePeriodDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy roundToHours:hoursCopy displayType:typeCopy unit:v20 unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v23];

  return v21;
}

- (id)attributedStringFromValue:(id)value roundToHours:(BOOL)hours displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart usePerDayFormatting:(BOOL)self0
{
  hoursCopy = hours;
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  typeCopy = type;
  valueCopy = value;
  v21 = [controllerCopy unitForDisplayType:typeCopy];
  LOWORD(v24) = __PAIR16__(formatting, chart);
  v22 = [(HKTimePeriodDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy roundToHours:hoursCopy displayType:typeCopy unit:v21 unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v24 usePerDayFormatting:?];

  return v22;
}

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
    secondUnit = [MEMORY[0x1E696C510] secondUnit];

    if (secondUnit != unitCopy)
    {
      _HKInitializeLogging();
      v21 = HKLogInfrastructure();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [HKTimePeriodDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  LOBYTE(v24) = 1;
  v22 = [(HKTimePeriodDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy roundToHours:0 displayType:typeCopy unit:unitCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v24];

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
    secondUnit = [MEMORY[0x1E696C510] secondUnit];

    if (secondUnit != unitCopy)
    {
      _HKInitializeLogging();
      v22 = HKLogInfrastructure();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [HKTimePeriodDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  LOBYTE(v25) = chart;
  v23 = [(HKTimePeriodDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy roundToHours:0 displayType:typeCopy unit:unitCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v25];

  return v23;
}

- (id)attributedStringFromValue:(id)value roundToHours:(BOOL)hours displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)self0
{
  hoursCopy = hours;
  valueCopy = value;
  typeCopy = type;
  unitCopy = unit;
  controllerCopy = controller;
  fontCopy = font;
  unitFontCopy = unitFont;
  if (unitCopy)
  {
    secondUnit = [MEMORY[0x1E696C510] secondUnit];

    if (secondUnit != unitCopy)
    {
      _HKInitializeLogging();
      v23 = HKLogInfrastructure();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [HKTimePeriodDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  LOWORD(v26) = chart;
  v24 = [(HKTimePeriodDisplayTypeValueFormatter *)self attributedStringFromValue:valueCopy roundToHours:hoursCopy displayType:typeCopy unit:unitCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v26 usePerDayFormatting:?];

  return v24;
}

- (id)attributedStringFromValue:(id)value roundToHours:(BOOL)hours displayType:(id)type unit:(id)unit unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)self0 usePerDayFormatting:(BOOL)self1
{
  valueCopy = value;
  typeCopy = type;
  unitCopy = unit;
  controllerCopy = controller;
  fontCopy = font;
  unitFontCopy = unitFont;
  if (unitCopy)
  {
    secondUnit = [MEMORY[0x1E696C510] secondUnit];

    if (secondUnit != unitCopy)
    {
      _HKInitializeLogging();
      v21 = HKLogInfrastructure();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [HKTimePeriodDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  presentation = [typeCopy presentation];
  [presentation useSecondsWhenDisplayingDuration];

  [valueCopy doubleValue];
  v67 = valueCopy;
  v64 = controllerCopy;
  v65 = unitCopy;
  HKSeparateTimeIntervalComponents();
  presentation2 = [typeCopy presentation];
  [presentation2 useSecondsWhenDisplayingDuration];

  v71 = unitFontCopy;
  v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = HKIntegerFormatter();
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v26 = [v24 stringFromNumber:v25];

  v27 = MEMORY[0x1E696AEC0];
  v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v29 = [v28 localizedStringForKey:@"MINUTES_PAIR_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v30 = [v27 localizedStringWithFormat:v29, v26];

  v31 = fontCopy;
  v32 = [v30 stringByReplacingOccurrencesOfString:@" " withString:@"\uFFFC"];

  [v68 addObject:v32];
  v33 = [v68 count];
  v66 = typeCopy;
  switch(v33)
  {
    case 3:
      v41 = MEMORY[0x1E696AEC0];
      v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v36 = v42;
      if (formatting)
      {
        v43 = @"TIME_DISPLAY_3_DAY";
      }

      else
      {
        v43 = @"TIME_DISPLAY_3";
      }

      v45 = [v42 localizedStringForKey:v43 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v46 = [v68 objectAtIndexedSubscript:0];
      v48 = [v68 objectAtIndexedSubscript:1];
      v49 = [v68 objectAtIndexedSubscript:2];
      v44 = [v41 localizedStringWithFormat:v45, v46, v48, v49, controllerCopy, v65, v66, v67];

      v31 = fontCopy;
      break;
    case 2:
      v38 = MEMORY[0x1E696AEC0];
      v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v36 = v39;
      if (formatting)
      {
        v40 = @"TIME_DISPLAY_2_DAY";
      }

      else
      {
        v40 = @"TIME_DISPLAY_2";
      }

      v45 = [v39 localizedStringForKey:v40 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v46 = [v68 objectAtIndexedSubscript:0];
      v47 = [v68 objectAtIndexedSubscript:1];
      v44 = [v38 localizedStringWithFormat:v45, v46, v47];

      break;
    case 1:
      v34 = MEMORY[0x1E696AEC0];
      v35 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v36 = v35;
      if (formatting)
      {
        v37 = @"TIME_DISPLAY_1_DAY";
      }

      else
      {
        v37 = @"TIME_DISPLAY_1";
      }

      v45 = [v35 localizedStringForKey:v37 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v46 = [v68 objectAtIndexedSubscript:0];
      v44 = [v34 localizedStringWithFormat:v45, v46];
      break;
    default:
      v44 = @"<error>";
      goto LABEL_23;
  }

LABEL_23:
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v51 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v44];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v53 = [(__CFString *)v44 length];
  if (v53 >= 1)
  {
    v55 = v53;
    v56 = 0;
    v57 = *MEMORY[0x1E69DB648];
    v58 = *MEMORY[0x1E69DB650];
    do
    {
      if ([decimalDigitCharacterSet characterIsMember:{-[__CFString characterAtIndex:](v44, "characterAtIndex:", v56)}])
      {
        if (v31)
        {
          [v51 addAttribute:v57 value:v31 range:{v56, 1}];
        }

        v54 = hk_chartLollipopValueColor;
        if (!chart)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v71)
        {
          [v51 addAttribute:v57 value:v71 range:{v56, 1}];
        }

        v54 = hk_chartLollipopLabelColor;
        if (!chart)
        {
          goto LABEL_30;
        }
      }

      [v51 addAttribute:v58 value:v54 range:{v56, 1}];
LABEL_30:
      ++v56;
    }

    while (v55 != v56);
  }

  v59 = [MEMORY[0x1E696AAB0] hk_attributedStringForSpacing:{1, v54}];
  if ([v51 length])
  {
    v60 = 0;
    do
    {
      string = [v51 string];
      v62 = [string characterAtIndex:v60];

      if (v62 == 65532)
      {
        [v51 replaceCharactersInRange:v60 withAttributedString:{objc_msgSend(@"\uFFFC", "length"), v59}];
        v60 += [v59 length];
      }

      ++v60;
    }

    while (v60 < [v51 length]);
  }

  return v51;
}

@end