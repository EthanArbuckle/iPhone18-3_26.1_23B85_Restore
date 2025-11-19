@interface HKTimePeriodDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9;
- (id)attributedStringFromValue:(id)a3 roundToHours:(BOOL)a4 displayType:(id)a5 unit:(id)a6 unitController:(id)a7 valueFont:(id)a8 unitFont:(id)a9 formatForChart:(BOOL)a10;
- (id)attributedStringFromValue:(id)a3 roundToHours:(BOOL)a4 displayType:(id)a5 unit:(id)a6 unitController:(id)a7 valueFont:(id)a8 unitFont:(id)a9 formatForChart:(BOOL)a10 usePerDayFormatting:(BOOL)a11;
- (id)attributedStringFromValue:(id)a3 roundToHours:(BOOL)a4 displayType:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9;
- (id)attributedStringFromValue:(id)a3 roundToHours:(BOOL)a4 displayType:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 usePerDayFormatting:(BOOL)a10;
@end

@implementation HKTimePeriodDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)a3 roundToHours:(BOOL)a4 displayType:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9
{
  v12 = a4;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [v17 unitForDisplayType:v18];
  LOBYTE(v23) = a9;
  v21 = [(HKTimePeriodDisplayTypeValueFormatter *)self attributedStringFromValue:v19 roundToHours:v12 displayType:v18 unit:v20 unitController:v17 valueFont:v16 unitFont:v15 formatForChart:v23];

  return v21;
}

- (id)attributedStringFromValue:(id)a3 roundToHours:(BOOL)a4 displayType:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 usePerDayFormatting:(BOOL)a10
{
  v13 = a4;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v21 = [v18 unitForDisplayType:v19];
  LOWORD(v24) = __PAIR16__(a10, a9);
  v22 = [(HKTimePeriodDisplayTypeValueFormatter *)self attributedStringFromValue:v20 roundToHours:v13 displayType:v19 unit:v21 unitController:v18 valueFont:v17 unitFont:v16 formatForChart:v24 usePerDayFormatting:?];

  return v22;
}

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
    v20 = [MEMORY[0x1E696C510] secondUnit];

    if (v20 != v16)
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
  v22 = [(HKTimePeriodDisplayTypeValueFormatter *)self attributedStringFromValue:v14 roundToHours:0 displayType:v15 unit:v16 unitController:v17 valueFont:v18 unitFont:v19 formatForChart:v24];

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
    v21 = [MEMORY[0x1E696C510] secondUnit];

    if (v21 != v17)
    {
      _HKInitializeLogging();
      v22 = HKLogInfrastructure();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [HKTimePeriodDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  LOBYTE(v25) = a9;
  v23 = [(HKTimePeriodDisplayTypeValueFormatter *)self attributedStringFromValue:v15 roundToHours:0 displayType:v16 unit:v17 unitController:v18 valueFont:v19 unitFont:v20 formatForChart:v25];

  return v23;
}

- (id)attributedStringFromValue:(id)a3 roundToHours:(BOOL)a4 displayType:(id)a5 unit:(id)a6 unitController:(id)a7 valueFont:(id)a8 unitFont:(id)a9 formatForChart:(BOOL)a10
{
  v14 = a4;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (v18)
  {
    v22 = [MEMORY[0x1E696C510] secondUnit];

    if (v22 != v18)
    {
      _HKInitializeLogging();
      v23 = HKLogInfrastructure();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [HKTimePeriodDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  LOWORD(v26) = a10;
  v24 = [(HKTimePeriodDisplayTypeValueFormatter *)self attributedStringFromValue:v16 roundToHours:v14 displayType:v17 unit:v18 unitController:v19 valueFont:v20 unitFont:v21 formatForChart:v26 usePerDayFormatting:?];

  return v24;
}

- (id)attributedStringFromValue:(id)a3 roundToHours:(BOOL)a4 displayType:(id)a5 unit:(id)a6 unitController:(id)a7 valueFont:(id)a8 unitFont:(id)a9 formatForChart:(BOOL)a10 usePerDayFormatting:(BOOL)a11
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v69 = a8;
  v19 = a9;
  if (v17)
  {
    v20 = [MEMORY[0x1E696C510] secondUnit];

    if (v20 != v17)
    {
      _HKInitializeLogging();
      v21 = HKLogInfrastructure();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [HKTimePeriodDisplayTypeValueFormatter attributedStringFromValue:displayType:unit:unitController:valueFont:unitFont:];
      }
    }
  }

  v22 = [v16 presentation];
  [v22 useSecondsWhenDisplayingDuration];

  [v15 doubleValue];
  v67 = v15;
  v64 = v18;
  v65 = v17;
  HKSeparateTimeIntervalComponents();
  v23 = [v16 presentation];
  [v23 useSecondsWhenDisplayingDuration];

  v71 = v19;
  v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = HKIntegerFormatter();
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v26 = [v24 stringFromNumber:v25];

  v27 = MEMORY[0x1E696AEC0];
  v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v29 = [v28 localizedStringForKey:@"MINUTES_PAIR_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v30 = [v27 localizedStringWithFormat:v29, v26];

  v31 = v69;
  v32 = [v30 stringByReplacingOccurrencesOfString:@" " withString:@"\uFFFC"];

  [v68 addObject:v32];
  v33 = [v68 count];
  v66 = v16;
  switch(v33)
  {
    case 3:
      v41 = MEMORY[0x1E696AEC0];
      v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v36 = v42;
      if (a11)
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
      v44 = [v41 localizedStringWithFormat:v45, v46, v48, v49, v18, v65, v66, v67];

      v31 = v69;
      break;
    case 2:
      v38 = MEMORY[0x1E696AEC0];
      v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v36 = v39;
      if (a11)
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
      if (a11)
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
  v50 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v51 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v44];
  v70 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v52 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v53 = [(__CFString *)v44 length];
  if (v53 >= 1)
  {
    v55 = v53;
    v56 = 0;
    v57 = *MEMORY[0x1E69DB648];
    v58 = *MEMORY[0x1E69DB650];
    do
    {
      if ([v50 characterIsMember:{-[__CFString characterAtIndex:](v44, "characterAtIndex:", v56)}])
      {
        if (v31)
        {
          [v51 addAttribute:v57 value:v31 range:{v56, 1}];
        }

        v54 = v70;
        if (!a10)
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

        v54 = v52;
        if (!a10)
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
      v61 = [v51 string];
      v62 = [v61 characterAtIndex:v60];

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