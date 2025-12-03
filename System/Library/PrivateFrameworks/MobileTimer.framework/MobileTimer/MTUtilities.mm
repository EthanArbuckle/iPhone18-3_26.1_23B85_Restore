@interface MTUtilities
+ (BOOL)isCarPlayConnected;
+ (BOOL)isRunningUnitTest;
+ (BOOL)mtSBUIIsSystemApertureEnabled;
+ (id)dayAndTimeZoneOffsetStringFromDate:(id)date withTimeZoneOffset:(int64_t)offset timeZoneAbbreviation:(id)abbreviation spaceBeforeTimeDesignator:(BOOL)designator hoursOnly:(BOOL)only numericOnly:(BOOL)numericOnly;
+ (id)mtCityFromWorldClockCity:(id)city;
+ (id)widgetOverrideDate;
@end

@implementation MTUtilities

+ (id)dayAndTimeZoneOffsetStringFromDate:(id)date withTimeZoneOffset:(int64_t)offset timeZoneAbbreviation:(id)abbreviation spaceBeforeTimeDesignator:(BOOL)designator hoursOnly:(BOOL)only numericOnly:(BOOL)numericOnly
{
  numericOnlyCopy = numericOnly;
  designatorCopy = designator;
  onlyCopy = only;
  dateCopy = date;
  abbreviationCopy = abbreviation;
  v12 = offset / 3600;
  if (!gNumberFormatter)
  {
    v13 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v14 = gNumberFormatter;
    gNumberFormatter = v13;

    [gNumberFormatter setNumberStyle:1];
    v15 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v16 = gTodayFormatter;
    gTodayFormatter = v15;

    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    [gTodayFormatter setTimeZone:systemTimeZone];
    [gTodayFormatter setDateStyle:2];
    [gTodayFormatter setTimeStyle:0];
    [gTodayFormatter setDoesRelativeDateFormatting:1];
    [gTodayFormatter setFormattingContext:4];
    v18 = objc_opt_new();
    v19 = gDateComponentsFormatter;
    gDateComponentsFormatter = v18;

    [gDateComponentsFormatter setUnitsStyle:0];
  }

  v20 = offset % 3600;
  v21 = gTodayFormatter;
  v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:offset];
  v23 = [v21 stringFromDate:v22];

  if (!numericOnlyCopy)
  {
    if (!offset)
    {
      v32 = [gNumberFormatter stringFromNumber:&unk_1F2965EE8];
      v27 = @"DAY_FORMAT_HOURS_AHEAD";
      v28 = @"HOURS_AHEAD";
      if (!abbreviationCopy)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if (offset >= 0)
    {
      offsetCopy = offset;
    }

    else
    {
      offsetCopy = -offset;
    }

    if (offsetCopy > 0xE0F)
    {
      if (offsetCopy == 3600)
      {
        v41 = @"DAY_FORMAT_ONE_HOUR_BEHIND";
        if (offset <= 0)
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
        if (!abbreviationCopy)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      if (v12 < 0)
      {
        v12 = offset / -3600;
      }

      if (!v20)
      {
        v60 = @"DAY_FORMAT_HOURS_BEHIND";
        if (offset <= 0)
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

        if (!abbreviationCopy)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      v48 = @"DAY_FORMAT_HOURS_MINUTES_BEHIND";
      if (offset <= 0)
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
      [v38 setMinute:(2185 * (offsetCopy - 3600 * ((offsetCopy / 0xE10) & 0x1FFFFFFF))) >> 17];
      v39 = [gDateComponentsFormatter stringFromDateComponents:v38];
    }

    else
    {
      v34 = @"DAY_FORMAT_MINUTES_BEHIND";
      if (offset <= 0)
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
      if (offset / 60 >= 0)
      {
        v37 = offset / 60;
      }

      else
      {
        v37 = offset / -60;
      }

      v38 = [MEMORY[0x1E696AD98] numberWithInteger:v37];
      v39 = [v36 stringFromNumber:v38];
    }

    v32 = v39;

    if (!abbreviationCopy)
    {
LABEL_53:
      v51 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v47 = [v51 localizedStringForKey:v27 value:&stru_1F29360E0 table:@"Localizable"];

      if (designatorCopy)
      {
        v52 = [(__CFString *)v28 stringByAppendingString:@"_SPACE"];

        v28 = v52;
      }

      v53 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v54 = [v53 localizedStringForKey:v28 value:&stru_1F29360E0 table:@"Localizable"];

      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:v54, v32];
      abbreviationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v47, v23, v55, abbreviationCopy];
      v57 = abbreviationCopy;
      if (onlyCopy)
      {
        v58 = v55;
      }

      else
      {
        v58 = abbreviationCopy;
      }

      v40 = v58;

      goto LABEL_59;
    }

LABEL_52:
    v50 = [(__CFString *)v27 stringByAppendingString:@"_TZ"];

    v27 = v50;
    goto LABEL_53;
  }

  if (!offset)
  {
    v40 = &stru_1F29360E0;
    goto LABEL_60;
  }

  if (v20)
  {
    v24 = @"DAY_FORMAT_HOURS_MINUTES_BEHIND";
    if (offset <= 0)
    {
      v25 = @"HOURS_MINUTES_BEHIND";
    }

    else
    {
      v24 = @"DAY_FORMAT_HOURS_MINUTES_AHEAD";
      v25 = @"HOURS_MINUTES_AHEAD";
    }

    if (offset >= 0)
    {
      offsetCopy2 = offset;
    }

    else
    {
      offsetCopy2 = -offset;
    }

    v27 = v24;
    v28 = v25;
    v29 = objc_opt_new();
    v30 = v29;
    if (v12 >= 0)
    {
      v31 = offset / 3600;
    }

    else
    {
      v31 = offset / -3600;
    }

    [v29 setHour:v31];
    [v30 setMinute:(2185 * (offsetCopy2 - 3600 * ((offsetCopy2 / 0xE10) & 0x1FFFFFFF))) >> 17];
    v32 = [gDateComponentsFormatter stringFromDateComponents:v30];
  }

  else
  {
    v43 = @"HOURS_MINUTES_BEHIND";
    if (offset > 0)
    {
      v43 = @"HOURS_MINUTES_AHEAD";
    }

    v28 = v43;
    v44 = gNumberFormatter;
    if (v12 >= 0)
    {
      v45 = offset / 3600;
    }

    else
    {
      v45 = offset / -3600;
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
        selfCopy = self;
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

+ (id)mtCityFromWorldClockCity:(id)city
{
  cityCopy = city;
  v4 = [MTCity alloc];
  alCityId = [cityCopy alCityId];
  stringValue = [alCityId stringValue];
  alCity = [cityCopy alCity];
  v8 = [alCity displayNameIncludingCountry:1];
  v9 = [(MTCity *)v4 initWithIdentifier:stringValue displayString:v8];

  name = [cityCopy name];
  [(MTCity *)v9 setCityName:name];

  timeZone = [cityCopy timeZone];
  [(MTCity *)v9 setTimeZoneName:timeZone];

  v12 = MEMORY[0x1E696AD98];
  alCity2 = [cityCopy alCity];
  [alCity2 latitude];
  v14 = [v12 numberWithFloat:?];
  [(MTCity *)v9 setLatitude:v14];

  v15 = MEMORY[0x1E696AD98];
  alCity3 = [cityCopy alCity];
  [alCity3 longitude];
  v17 = [v15 numberWithFloat:?];
  [(MTCity *)v9 setLongditude:v17];

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.mobiletimer-framework"];
  alCityId2 = [cityCopy alCityId];

  stringValue2 = [alCityId2 stringValue];
  v21 = [v18 localizedStringForKey:stringValue2 value:&stru_1F29360E0 table:@"WorldClock"];
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
  initAndWaitUntilSessionUpdated = [v5 initAndWaitUntilSessionUpdated];
  currentSession = [initAndWaitUntilSessionUpdated currentSession];

  v8 = MTLogForCategory(10);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = currentSession != 0;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@: is connected to CarPlay: %d", buf, 0x12u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return currentSession != 0;
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
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  environment = [processInfo environment];
  v4 = [environment objectForKey:@"ATP"];

  LOBYTE(processInfo) = [v4 intValue] == 1;
  return processInfo;
}

void __44__MTUtilities_mtSBUIIsSystemApertureEnabled__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_SBUIIsSystemApertureEnabled(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTUtilities.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

@end