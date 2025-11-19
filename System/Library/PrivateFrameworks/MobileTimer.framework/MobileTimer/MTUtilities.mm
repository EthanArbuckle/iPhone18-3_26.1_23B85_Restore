@interface MTUtilities
+ (BOOL)isCarPlayConnected;
+ (BOOL)isRunningUnitTest;
+ (BOOL)mtSBUIIsSystemApertureEnabled;
+ (id)dayAndTimeZoneOffsetStringFromDate:(id)a3 withTimeZoneOffset:(int64_t)a4 timeZoneAbbreviation:(id)a5 spaceBeforeTimeDesignator:(BOOL)a6 hoursOnly:(BOOL)a7 numericOnly:(BOOL)a8;
+ (id)mtCityFromWorldClockCity:(id)a3;
+ (id)widgetOverrideDate;
@end

@implementation MTUtilities

+ (id)dayAndTimeZoneOffsetStringFromDate:(id)a3 withTimeZoneOffset:(int64_t)a4 timeZoneAbbreviation:(id)a5 spaceBeforeTimeDesignator:(BOOL)a6 hoursOnly:(BOOL)a7 numericOnly:(BOOL)a8
{
  v8 = a8;
  v64 = a6;
  v65 = a7;
  v66 = a3;
  v11 = a5;
  v12 = a4 / 3600;
  if (!gNumberFormatter)
  {
    v13 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v14 = gNumberFormatter;
    gNumberFormatter = v13;

    [gNumberFormatter setNumberStyle:1];
    v15 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v16 = gTodayFormatter;
    gTodayFormatter = v15;

    v17 = [MEMORY[0x1E695DFE8] systemTimeZone];
    [gTodayFormatter setTimeZone:v17];
    [gTodayFormatter setDateStyle:2];
    [gTodayFormatter setTimeStyle:0];
    [gTodayFormatter setDoesRelativeDateFormatting:1];
    [gTodayFormatter setFormattingContext:4];
    v18 = objc_opt_new();
    v19 = gDateComponentsFormatter;
    gDateComponentsFormatter = v18;

    [gDateComponentsFormatter setUnitsStyle:0];
  }

  v20 = a4 % 3600;
  v21 = gTodayFormatter;
  v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a4];
  v23 = [v21 stringFromDate:v22];

  if (!v8)
  {
    if (!a4)
    {
      v32 = [gNumberFormatter stringFromNumber:&unk_1F2965EE8];
      v27 = @"DAY_FORMAT_HOURS_AHEAD";
      v28 = @"HOURS_AHEAD";
      if (!v11)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if (a4 >= 0)
    {
      v33 = a4;
    }

    else
    {
      v33 = -a4;
    }

    if (v33 > 0xE0F)
    {
      if (v33 == 3600)
      {
        v41 = @"DAY_FORMAT_ONE_HOUR_BEHIND";
        if (a4 <= 0)
        {
          v42 = @"ONE_HOUR_BEHIND";
        }

        else
        {
          v41 = @"DAY_FORMAT_ONE_HOUR_AHEAD";
          v42 = @"ONE_HOUR_AHEAD";
        }

        v27 = v41;
        v28 = v42;
        v32 = [gNumberFormatter stringFromNumber:&unk_1F2965F00];
        if (!v11)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      if (v12 < 0)
      {
        v12 = a4 / -3600;
      }

      if (!v20)
      {
        v60 = @"DAY_FORMAT_HOURS_BEHIND";
        if (a4 <= 0)
        {
          v61 = @"HOURS_BEHIND";
        }

        else
        {
          v60 = @"DAY_FORMAT_HOURS_AHEAD";
          v61 = @"HOURS_AHEAD";
        }

        v27 = v60;
        v28 = v61;
        v62 = gNumberFormatter;
        v63 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        v32 = [v62 stringFromNumber:v63];

        if (!v11)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      v48 = @"DAY_FORMAT_HOURS_MINUTES_BEHIND";
      if (a4 <= 0)
      {
        v49 = @"HOURS_MINUTES_BEHIND";
      }

      else
      {
        v48 = @"DAY_FORMAT_HOURS_MINUTES_AHEAD";
        v49 = @"HOURS_MINUTES_AHEAD";
      }

      v27 = v48;
      v28 = v49;
      v38 = objc_opt_new();
      [v38 setHour:v12];
      [v38 setMinute:(2185 * (v33 - 3600 * ((v33 / 0xE10) & 0x1FFFFFFF))) >> 17];
      v39 = [gDateComponentsFormatter stringFromDateComponents:v38];
    }

    else
    {
      v34 = @"DAY_FORMAT_MINUTES_BEHIND";
      if (a4 <= 0)
      {
        v35 = @"MINUTES_BEHIND";
      }

      else
      {
        v34 = @"DAY_FORMAT_MINUTES_AHEAD";
        v35 = @"MINUTES_AHEAD";
      }

      v27 = v34;
      v28 = v35;
      v36 = gNumberFormatter;
      if (a4 / 60 >= 0)
      {
        v37 = a4 / 60;
      }

      else
      {
        v37 = a4 / -60;
      }

      v38 = [MEMORY[0x1E696AD98] numberWithInteger:v37];
      v39 = [v36 stringFromNumber:v38];
    }

    v32 = v39;

    if (!v11)
    {
LABEL_53:
      v51 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v47 = [v51 localizedStringForKey:v27 value:&stru_1F29360E0 table:@"Localizable"];

      if (v64)
      {
        v52 = [(__CFString *)v28 stringByAppendingString:@"_SPACE"];

        v28 = v52;
      }

      v53 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v54 = [v53 localizedStringForKey:v28 value:&stru_1F29360E0 table:@"Localizable"];

      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:v54, v32];
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:v47, v23, v55, v11];
      v57 = v56;
      if (v65)
      {
        v58 = v55;
      }

      else
      {
        v58 = v56;
      }

      v40 = v58;

      goto LABEL_59;
    }

LABEL_52:
    v50 = [(__CFString *)v27 stringByAppendingString:@"_TZ"];

    v27 = v50;
    goto LABEL_53;
  }

  if (!a4)
  {
    v40 = &stru_1F29360E0;
    goto LABEL_60;
  }

  if (v20)
  {
    v24 = @"DAY_FORMAT_HOURS_MINUTES_BEHIND";
    if (a4 <= 0)
    {
      v25 = @"HOURS_MINUTES_BEHIND";
    }

    else
    {
      v24 = @"DAY_FORMAT_HOURS_MINUTES_AHEAD";
      v25 = @"HOURS_MINUTES_AHEAD";
    }

    if (a4 >= 0)
    {
      v26 = a4;
    }

    else
    {
      v26 = -a4;
    }

    v27 = v24;
    v28 = v25;
    v29 = objc_opt_new();
    v30 = v29;
    if (v12 >= 0)
    {
      v31 = a4 / 3600;
    }

    else
    {
      v31 = a4 / -3600;
    }

    [v29 setHour:v31];
    [v30 setMinute:(2185 * (v26 - 3600 * ((v26 / 0xE10) & 0x1FFFFFFF))) >> 17];
    v32 = [gDateComponentsFormatter stringFromDateComponents:v30];
  }

  else
  {
    v43 = @"HOURS_MINUTES_BEHIND";
    if (a4 > 0)
    {
      v43 = @"HOURS_MINUTES_AHEAD";
    }

    v28 = v43;
    v44 = gNumberFormatter;
    if (v12 >= 0)
    {
      v45 = a4 / 3600;
    }

    else
    {
      v45 = a4 / -3600;
    }

    v30 = [MEMORY[0x1E696AD98] numberWithInteger:v45];
    v32 = [v44 stringFromNumber:v30];
    v27 = v28;
  }

  v46 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v47 = [v46 localizedStringForKey:v28 value:&stru_1F29360E0 table:@"Localizable"];

  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:v47, v32];
LABEL_59:

LABEL_60:

  return v40;
}

+ (id)widgetOverrideDate
{
  v13 = *MEMORY[0x1E69E9840];
  if (widgetOverrideDate_onceToken != -1)
  {
    +[MTUtilities widgetOverrideDate];
  }

  if (widgetOverrideDate_internal == 1)
  {
    v3 = CFPreferencesCopyValue(@"ForceClock", @"com.apple.mobiletimer", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if ([v3 length])
    {
      v4 = objc_opt_new();
      [v4 setDateFormat:@"yyyy:MM:dd:HH:mm"];
      v5 = [v4 dateFromString:v3];
      v6 = MTLogForCategory(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543618;
        v10 = a1;
        v11 = 2114;
        v12 = v5;
        _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: widget override date: %{public}@", &v9, 0x16u);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __33__MTUtilities_widgetOverrideDate__block_invoke()
{
  result = os_variant_has_internal_content();
  widgetOverrideDate_internal = result;
  return result;
}

+ (id)mtCityFromWorldClockCity:(id)a3
{
  v3 = a3;
  v4 = [MTCity alloc];
  v5 = [v3 alCityId];
  v6 = [v5 stringValue];
  v7 = [v3 alCity];
  v8 = [v7 displayNameIncludingCountry:1];
  v9 = [(MTCity *)v4 initWithIdentifier:v6 displayString:v8];

  v10 = [v3 name];
  [(MTCity *)v9 setCityName:v10];

  v11 = [v3 timeZone];
  [(MTCity *)v9 setTimeZoneName:v11];

  v12 = MEMORY[0x1E696AD98];
  v13 = [v3 alCity];
  [v13 latitude];
  v14 = [v12 numberWithFloat:?];
  [(MTCity *)v9 setLatitude:v14];

  v15 = MEMORY[0x1E696AD98];
  v16 = [v3 alCity];
  [v16 longitude];
  v17 = [v15 numberWithFloat:?];
  [(MTCity *)v9 setLongditude:v17];

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.mobiletimer-framework"];
  v19 = [v3 alCityId];

  v20 = [v19 stringValue];
  v21 = [v18 localizedStringForKey:v20 value:&stru_1F29360E0 table:@"WorldClock"];
  [(MTCity *)v9 setAbbreviation:v21];

  return v9;
}

+ (BOOL)isCarPlayConnected
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getCARSessionStatusClass_softClass;
  v14 = getCARSessionStatusClass_softClass;
  if (!getCARSessionStatusClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCARSessionStatusClass_block_invoke;
    v16 = &unk_1E7B0C600;
    v17 = &v11;
    __getCARSessionStatusClass_block_invoke(buf);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = [v3 alloc];
  v6 = [v5 initAndWaitUntilSessionUpdated];
  v7 = [v6 currentSession];

  v8 = MTLogForCategory(10);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v7 != 0;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@: is connected to CarPlay: %d", buf, 0x12u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7 != 0;
}

+ (BOOL)mtSBUIIsSystemApertureEnabled
{
  if (mtSBUIIsSystemApertureEnabled_onceToken != -1)
  {
    +[MTUtilities mtSBUIIsSystemApertureEnabled];
  }

  return mtSBUIIsSystemApertureEnabled_apertureEnabled;
}

uint64_t __44__MTUtilities_mtSBUIIsSystemApertureEnabled__block_invoke()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSBUIIsSystemApertureEnabledSymbolLoc_ptr;
  v6 = getSBUIIsSystemApertureEnabledSymbolLoc_ptr;
  if (!getSBUIIsSystemApertureEnabledSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke;
    v2[3] = &unk_1E7B0C600;
    v2[4] = &v3;
    __getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    __44__MTUtilities_mtSBUIIsSystemApertureEnabled__block_invoke_cold_1();
  }

  result = v0();
  mtSBUIIsSystemApertureEnabled_apertureEnabled = result;
  return result;
}

+ (BOOL)isRunningUnitTest
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 environment];
  v4 = [v3 objectForKey:@"ATP"];

  LOBYTE(v2) = [v4 intValue] == 1;
  return v2;
}

void __44__MTUtilities_mtSBUIIsSystemApertureEnabled__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_SBUIIsSystemApertureEnabled(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTUtilities.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

@end