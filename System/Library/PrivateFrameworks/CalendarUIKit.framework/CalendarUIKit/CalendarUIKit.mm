void __RegisterForInvalidation_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, InvalidateFormatter, *MEMORY[0x1E6993138], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v1 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v1, 0, InvalidateFormatter, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v2 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v2, 0, InvalidateFormatter, @"com.apple.mobilecal.preference.notification.weekStart", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v3, 0, InvalidateFormatter, @"com.apple.mobilecal.preference.notification.overlayCalendarID", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v4, 0, InvalidateFormatter, @"com.apple.mobilecal.preference.notification.OverrideLocaleWeekends", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = CUIKCalendarWithoutRegisteringForInvalidation();
  v5 = [[CUIKTodayInvalidationTimerWrapper alloc] initWithCalendar:v7];
  v6 = __todayInvalidationTimerWrapper;
  __todayInvalidationTimerWrapper = v5;
}

id CUIKCalendarWithoutRegisteringForInvalidation()
{
  os_unfair_lock_lock(&lock);
  v0 = _CUIKCalendar();
  os_unfair_lock_unlock(&lock);

  return v0;
}

id CUIKNowDate()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = _CUIKNowDate();
  os_unfair_lock_unlock(&lock);

  return v0;
}

id _CUIKCalendar()
{
  if (_CUIKCalendarCache_onceToken != -1)
  {
    _CUIKCalendar_cold_1();
  }

  v0 = _CUIKCalendarCache_calendarCache;
  v1 = [v0 objectForKeyedSubscript:@"com.apple.mobilecal.calendarGeneration"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntegerValue];
    v4 = __calendarGeneration;
    if (v3 >= __calendarGeneration)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = __calendarGeneration;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  [v0 setObject:v5 forKeyedSubscript:@"com.apple.mobilecal.calendarGeneration"];

  v6 = objc_alloc(MEMORY[0x1E695DEE8]);
  v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v8 = [MEMORY[0x1E695DF58] currentLocale];
  [v7 setLocale:v8];

  v9 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  [v7 setTimeZone:v9];

  if (!__weekStartOverride && (__isWeekStartValid & 1) == 0)
  {
    _CUIKDetermineWeekStart();
  }

  [v7 setFirstWeekday:?];
  [v0 setObject:v7 forKeyedSubscript:@"com.apple.mobilecal.calendar"];

LABEL_11:
  v10 = [v0 objectForKeyedSubscript:@"com.apple.mobilecal.calendar"];

  return v10;
}

void _CUIKDetermineWeekStart()
{
  v0 = +[CUIKPreferences sharedPreferences];
  v4 = [v0 weekStart];

  v1 = [v4 longValue];
  if (!v1)
  {
    v2 = [MEMORY[0x1E695DEE8] currentCalendar];
    v1 = [v2 firstWeekday];
  }

  if (v1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1;
  }

  __weekStart = v3;
  __isWeekStartValid = 1;
}

void _CUIKComputeTodayCachesIfNeeded()
{
  v0 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  v1 = __TodayComponents;
  if (__TodayComponents)
  {
    v2 = _CUIKComputeTodayCachesIfNeeded_s_lastComputeTime == 0;
  }

  else
  {
    v2 = 1;
  }

  obj = v0;
  if (!v2)
  {
    [v0 timeIntervalSinceDate:?];
    if (v3 < 300.0)
    {
      goto LABEL_12;
    }

    v1 = __TodayComponents;
  }

  __TodayComponents = 0;

  v4 = __TodayDate;
  __TodayDate = 0;

  objc_storeStrong(&_CUIKComputeTodayCachesIfNeeded_s_lastComputeTime, obj);
  v5 = _CUIKCalendar();
  v6 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  if ([*MEMORY[0x1E69DDA98] launchedToTest])
  {
    v7 = [v5 components:30 fromDate:v6];
    [v7 setMonth:5];
    [v7 setDay:1];
    v8 = [v5 dateFromComponents:v7];

    v6 = v8;
  }

  if (!__TodayComponents)
  {
    v9 = [v5 components:30 fromDate:v6];
    v10 = __TodayComponents;
    __TodayComponents = v9;

    v11 = [v5 dateFromComponents:__TodayComponents];
    v12 = __TodayDate;
    __TodayDate = v11;
  }

LABEL_12:
}

id _CUIKNowDate()
{
  v0 = _CUIKNowComponents();
  v1 = _CUIKCalendar();
  v2 = [v1 dateFromComponents:v0];

  return v2;
}

id _CUIKNowComponents()
{
  v0 = _CUIKCalendar();
  v1 = _CUIKNowComponentsInCalendar(v0);

  return v1;
}

id _CUIKNowComponentsInCalendar(void *a1)
{
  v1 = a1;
  _CUIKComputeTodayCachesIfNeeded();
  v2 = [__TodayComponents copy];
  v3 = [v2 copy];

  if ([*MEMORY[0x1E69DDA98] launchedToTest])
  {
    [v3 setHour:11];
    [v3 setMinute:15];
    [v3 setSecond:0];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
    v5 = [v1 components:224 fromDate:v4];

    [v3 setHour:{objc_msgSend(v5, "hour")}];
    [v3 setMinute:{objc_msgSend(v5, "minute")}];
    [v3 setSecond:{objc_msgSend(v5, "second")}];
  }

  return v3;
}

void withLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v3[2]();
  os_unfair_lock_unlock(a1);
}

void sub_1CAB1C9BC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

id CUIKTodayDate()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = _CUIKTodayDate();
  os_unfair_lock_unlock(&lock);

  return v0;
}

id _CUIKTodayDate()
{
  _CUIKComputeTodayCachesIfNeeded();
  v0 = __TodayDate;

  return v0;
}

id CUIKNowComponents()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = _CUIKNowComponents();
  os_unfair_lock_unlock(&lock);

  return v0;
}

uint64_t CalSplitViewEnabled()
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return _UISolariumEnabled();
  }

  return result;
}

BOOL CUIKShouldSaveStateInPreferences()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom] != 1;

  return v2;
}

id CUIKStringForYear(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  v4 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v3, v4);
  v5 = CalCopyTimeZone();
  v6 = v5;
  v7 = _stringForFormatterInTimeZone(v2, v3, v5, 0);

  os_unfair_lock_unlock(&lock);

  return v7;
}

uint64_t _SharedDateFormatter()
{
  result = __formatter;
  if (!__formatter)
  {
    _CUIKDetermineWeekStart();
    v1 = CFLocaleCopyCurrent();
    v2 = CFDateFormatterCreate(0, v1, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    __formatter = v2;
    Current = CFAbsoluteTimeGetCurrent();
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v2, Current);
    if (StringWithAbsoluteTime)
    {
      CFRelease(StringWithAbsoluteTime);
    }

    CFRelease(v1);
    return __formatter;
  }

  return result;
}

__CFString *_stringForFormatterInTimeZone(void *a1, __CFDateFormatter *a2, const void *a3, unint64_t a4)
{
  v7 = a1;
  if (!__dateFormattersForTimeZones)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = __dateFormattersForTimeZones;
    __dateFormattersForTimeZones = v8;
  }

  Format = CFDateFormatterGetFormat(a2);
  v11 = [(__CFString *)Format stringByAppendingString:MEMORY[0x1CCAA8110](a3)];
  v12 = v11;
  if (a4)
  {
    v13 = [v11 stringByAppendingFormat:@"%ld", a4];

    v12 = v13;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
  v15 = [__dateFormattersForTimeZones objectForKey:v14];
  if (!v15)
  {
    v16 = CFLocaleCopyCurrent();
    v15 = CFDateFormatterCreate(0, v16, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFRelease(v16);
    if (v15)
    {
      CFDateFormatterSetProperty(v15, *MEMORY[0x1E695E5D8], a3);
      v17 = CFDateFormatterGetFormat(a2);
      CFDateFormatterSetFormat(v15, v17);
      if (a4)
      {
        if (a4 > 5)
        {
          v18 = 256;
        }

        else
        {
          v18 = dword_1CAD581A0[a4 - 1];
        }

        CFDateFormatterSetProperty(v15, @"kCFDateFormatterFormattingContextKey", [MEMORY[0x1E696AD98] numberWithInt:v18]);
      }

      [__dateFormattersForTimeZones setObject:v15 forKey:v14];
      CFRelease(v15);
    }
  }

  StringWithDate = CFDateFormatterCreateStringWithDate(0, v15, v7);

  return StringWithDate;
}

uint64_t CalUIKitNavBarEnabled()
{
  if (!_os_feature_enabled_impl() || !_UISolariumEnabled())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t CalCanvasPocketEnabled()
{
  if (!_UISolariumEnabled())
  {
    return 0;
  }

  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"CanvasPocketDisabled"] ^ 1;

  return v1;
}

__CFString *CUIKLocalizedStringForInteger(unint64_t a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  valuePtr = a1;
  if (a1 <= 0x1F && (__localizedIntStringLoadFlags & (1 << a1)) != 0)
  {
    StringWithNumber = __localizedIntStrings[a1];
  }

  else
  {
    v3 = CFNumberCreate(0, kCFNumberNSIntegerType, &valuePtr);
    v4 = __numberFormatter;
    if (!__numberFormatter)
    {
      v5 = CFLocaleCopyCurrent();
      __numberFormatter = CFNumberFormatterCreate(0, v5, kCFNumberFormatterDecimalStyle);
      CFRelease(v5);
      v4 = __numberFormatter;
    }

    StringWithNumber = CFNumberFormatterCreateStringWithNumber(0, v4, v3);
    CFRelease(v3);
    if (a1 <= 0x1F)
    {
      objc_storeStrong(&__localizedIntStrings[valuePtr], StringWithNumber);
      __localizedIntStringLoadFlags |= 1 << valuePtr;
    }
  }

  os_unfair_lock_unlock(&lock);

  return StringWithNumber;
}

id CUIKTodayComponents()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  _CUIKComputeTodayCachesIfNeeded();
  v0 = [__TodayComponents copy];
  os_unfair_lock_unlock(&lock);

  return v0;
}

BOOL CUIKShow24Hours()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = __Show24Hours;
  if (!__Show24Hours)
  {
    _CUIKDetermineShortTimeParameters();
    v0 = __Show24Hours;
  }

  v1 = v0 == 2;
  os_unfair_lock_unlock(&lock);
  return v1;
}

void _CUIKDetermineShortTimeParameters()
{
  v0 = CFLocaleCopyCurrent();
  if (v0)
  {
    v1 = v0;
    v2 = CFDateFormatterCreate(0, v0, kCFDateFormatterNoStyle, kCFDateFormatterFullStyle);
    if (!v2)
    {
LABEL_45:
      CFRelease(v1);
      return;
    }

    v3 = v2;
    Format = CFDateFormatterGetFormat(v2);
    v5 = *MEMORY[0x1E695E480];
    v6 = CFDateFormatterCreate(*MEMORY[0x1E695E480], v1, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
    if (v6)
    {
      v7 = v6;
      Current = CFAbsoluteTimeGetCurrent();
      StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v5, v7, Current);
      v10 = StringWithAbsoluteTime;
      if (StringWithAbsoluteTime && (v11 = malloc_type_malloc(2 * [(__CFString *)StringWithAbsoluteTime length], 0x1000040BDFB0063uLL)) != 0)
      {
        v12 = v11;
        [(__CFString *)v10 getCharacters:v11];
        ubidi_openSized();
        ubidi_setPara();
        v13 = ubidi_getParaLevel() & 1;
        ubidi_close();
        free(v12);
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v13 = 0;
    }

    v14 = CFStringFind(Format, @"a", 0);
    location = v14.location;
    if (v14.location == -1)
    {
      __DesignatorsBeforeHour = 1;
      __SpaceAroundDesignator = 1;
    }

    v16 = CFStringFind(Format, @"H", 0).location;
    if (v16 == -1)
    {
      v19 = CFStringFind(Format, @"h", 0).location;
      if (v19 != -1 || (v19 = CFStringFind(Format, @"K", 0).location, v19 != -1))
      {
        __Show24Hours = 1;
        if (v14.location >= v19 || v14.location == -1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

LABEL_29:
        __DesignatorsBeforeHour = v18;
        if (v14.location == -1)
        {
LABEL_44:
          CFRelease(v3);
          goto LABEL_45;
        }

        __SpaceAroundDesignator = 1;
        Length = CFStringGetLength(Format);
        if (v14.location && __DesignatorsBeforeHour == 1)
        {
          v22.location = 0;
          v23 = 12;
        }

        else
        {
          if (__DesignatorsBeforeHour != 2 || (v22.location = v14.location + v14.length, v14.location + v14.length == -1) || Length <= v22.location)
          {
LABEL_39:
            if (v13)
            {
              if (__DesignatorsBeforeHour == 2)
              {
                v24 = 1;
              }

              else
              {
                v24 = 2;
              }

              __DesignatorsBeforeHour = v24;
            }

            goto LABEL_44;
          }

          location = Length - v22.location;
          v23 = 8;
        }

        v22.length = location;
        if (CFStringFindWithOptions(Format, @" ", v22, v23, 0))
        {
          __SpaceAroundDesignator = 2;
        }

        goto LABEL_39;
      }

      v16 = CFStringFind(Format, @"k", 0).location;
      if (v16 == -1)
      {
        v18 = 1;
        __Show24Hours = 1;
        goto LABEL_29;
      }
    }

    __Show24Hours = 2;
    if (v14.location >= v16 || v14.location == -1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    goto LABEL_29;
  }
}

id CUIKStringForHour(unsigned int a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (!__HourSymbols)
  {
    v2 = __Show24Hours;
    if (!__Show24Hours)
    {
      _CUIKDetermineShortTimeParameters();
      v2 = __Show24Hours;
    }

    if (v2 == 2)
    {
      _initStandardTimeFormatter();
      v3 = __standardTimeFormatter;
      CFRetain(__standardTimeFormatter);
      if (!v3)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v4 = CPDateFormatStringForFormatType();
    if (v4)
    {
      v5 = _SharedDateFormatter();
      v3 = v5;
      if (v5)
      {
        CFRetain(v5);
        CFDateFormatterSetFormat(v3, v4);
      }
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
LABEL_14:
      v6 = CalTimeZoneCopyCFTimeZone();
      v7 = *MEMORY[0x1E695E5D8];
      CFDateFormatterSetProperty(v3, *MEMORY[0x1E695E5D8], v6);
      v8 = 24;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:24];
      v10 = 0x50B000007D7;
      do
      {
        CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
        StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v3, v11);
        [v9 addObject:StringWithAbsoluteTime];

        v10 += 0x1000000000000;
        --v8;
      }

      while (v8);
      if (v6)
      {
        CFRelease(v6);
      }

      v13 = CalCopySystemTimeZone();
      CFDateFormatterSetProperty(v3, v7, v13);
      CFRelease(v13);
      CFRelease(v3);
      v14 = __HourSymbols;
      __HourSymbols = v9;
    }
  }

LABEL_19:
  if (a1 <= 0x17)
  {
    v15 = a1;
  }

  else
  {
    v15 = a1 - 24;
  }

  v16 = [__HourSymbols objectAtIndex:v15];
  os_unfair_lock_unlock(&lock);

  return v16;
}

id CUIKCalendar()
{
  if (RegisterForInvalidation_onceToken == -1)
  {
  }

  else
  {
    CUIKCalendar_cold_1();
  }

  return CUIKCalendarWithoutRegisteringForInvalidation();
}

id CUIKBundle()
{
  v0 = CUIKBundle___Bundle;
  if (!CUIKBundle___Bundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarUIKit"];
    v2 = CUIKBundle___Bundle;
    CUIKBundle___Bundle = v1;

    v0 = CUIKBundle___Bundle;
  }

  return v0;
}

BOOL CUIKIsWeekdayNameFirst()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (!__IsWeekdayNameFirst)
  {
    v0 = CFLocaleCopyCurrent();
    if (v0)
    {
      v1 = v0;
      DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, @"EEEEMMMdy", 0, v0);
      if (DateFormatFromTemplate)
      {
        v3 = DateFormatFromTemplate;
        if (CFStringHasPrefix(DateFormatFromTemplate, @"E"))
        {
          v4 = 2;
        }

        else
        {
          CFStringHasSuffix(v3, @"E");
          v4 = 1;
        }

        __IsWeekdayNameFirst = v4;
        CFRelease(v3);
      }

      CFRelease(v1);
    }
  }

  v5 = __IsWeekdayNameFirst != 1;
  os_unfair_lock_unlock(&lock);
  return v5;
}

id CUIKStringForDayOfWeek(unsigned int a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = _SharedDateFormatter();
  CFDateFormatterSetProperty(v2, @"kCFDateFormatterFormattingContextKey", [MEMORY[0x1E696AD98] numberWithInt:260]);
  v3 = CFDateFormatterCopyProperty(v2, *MEMORY[0x1E695E5D0]);
  if ([v3 count] <= a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndex:a1];
  }

  CFDateFormatterSetProperty(v2, @"kCFDateFormatterFormattingContextKey", [MEMORY[0x1E696AD98] numberWithInt:256]);
  os_unfair_lock_unlock(&lock);

  return v4;
}

id CUIKStringForDateInCalendarTimezone(void *a1)
{
  v1 = a1;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = CalCopyTimeZone();
  v3 = v1;
  v4 = v2;
  v5 = _SharedDateFormatter();
  v6 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v5, v6);
  v7 = _stringForFormatterInTimeZone(v3, v5, v4, 0);

  os_unfair_lock_unlock(&lock);

  return v7;
}

id CUIKGetOverlayCalendar()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (_CUIKOverlayCalendarCache_onceToken != -1)
  {
    CUIKGetOverlayCalendar_cold_2();
  }

  v0 = _CUIKOverlayCalendarCache_overlayCalendarCache;
  v1 = [v0 objectForKeyedSubscript:@"com.apple.mobilecal.overlayCalendarGeneration"];
  v2 = v1;
  if (!v1)
  {
    v4 = __overlayCalendarGeneration;
    goto LABEL_9;
  }

  v3 = [v1 unsignedIntegerValue];
  v4 = __overlayCalendarGeneration;
  if (v3 < __overlayCalendarGeneration)
  {
LABEL_9:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [v0 setObject:v5 forKeyedSubscript:@"com.apple.mobilecal.overlayCalendarGeneration"];

    v6 = +[CUIKPreferences sharedPreferences];
    v7 = [v6 overlayCalendarID];
    v8 = [MEMORY[0x1E695DFE8] calendarTimeZone];
    v9 = [CUIKOverlayCalendar overlayCalendarForCalendarIdentifier:v7 timezone:v8];

    if (v9)
    {
      [v0 setObject:v9 forKeyedSubscript:@"com.apple.com.mobilecal.overlayCalendar"];
    }

    else
    {
      [v0 removeObjectForKey:@"com.apple.com.mobilecal.overlayCalendar"];
    }
  }

  v10 = [v0 objectForKeyedSubscript:@"com.apple.com.mobilecal.overlayCalendar"];

  os_unfair_lock_unlock(&lock);

  return v10;
}

uint64_t CUIKRoundToScreenScale(double a1)
{
  if (a1 != a1)
  {
    return UIRoundToViewScale();
  }

  return result;
}

uint64_t CUIKOneIndexedWeekStart()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = __weekStartOverride;
  if (!__weekStartOverride)
  {
    if ((__isWeekStartValid & 1) == 0)
    {
      _CUIKDetermineWeekStart();
    }

    v0 = __weekStart;
  }

  os_unfair_lock_unlock(&lock);
  return v0;
}

BOOL CUIKLocaleIsRightToLeft()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = __IsLocaleRightToLeft;
  if (!__IsLocaleRightToLeft)
  {
    v1 = [MEMORY[0x1E695DF58] currentLocale];
    v2 = MEMORY[0x1E695DF58];
    v3 = [v1 objectForKey:*MEMORY[0x1E695D9B0]];
    v4 = [v2 characterDirectionForLanguage:v3];

    if (v4 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    __IsLocaleRightToLeft = v5;

    v0 = __IsLocaleRightToLeft;
  }

  v6 = v0 == 2;
  os_unfair_lock_unlock(&lock);
  return v6;
}

void sub_1CAB1F714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CUIKStringForMonthNumber(int a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = _SharedDateFormatter();
  Locale = CFDateFormatterGetLocale(v2);
  v4 = MEMORY[0x1CCAA7FA0](Locale);
  v5 = [&unk_1F4ABED38 containsObject:v4];
  v6 = __MonthNames;
  if (!__MonthNames)
  {
    if (v5)
    {
      v7 = *MEMORY[0x1E695E590];
    }

    else
    {
      v7 = *MEMORY[0x1E695E5C0];
    }

    v8 = CFDateFormatterCopyProperty(v2, v7);
    v9 = __MonthNames;
    __MonthNames = v8;

    v6 = __MonthNames;
  }

  if ([v6 count] >= a1)
  {
    v10 = [__MonthNames objectAtIndex:a1 - 1];
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&lock);

  return v10;
}

id CUIKWeekdayVeryShortAbbreviations()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = __WeekdayVeryShortAbbreviations;
  if (!__WeekdayVeryShortAbbreviations)
  {
    v1 = _SharedDateFormatter();
    v2 = CFDateFormatterCopyProperty(v1, *MEMORY[0x1E695E600]);
    v3 = __WeekdayVeryShortAbbreviations;
    __WeekdayVeryShortAbbreviations = v2;

    v0 = __WeekdayVeryShortAbbreviations;
  }

  v4 = v0;
  os_unfair_lock_unlock(&lock);

  return v4;
}

BOOL CUIKDayOfWeekIsWeekend(int a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  _CUIKFindWeekendsIfNeeded();
  v3 = __weekendDays == a1 || HIDWORD(__weekendDays) == a1;
  os_unfair_lock_unlock(&lock);
  return v3;
}

void _CUIKFindWeekendsIfNeeded()
{
  if ((__areWeekendDaysValid & 1) == 0)
  {
    v0 = +[CUIKPreferences sharedPreferences];
    v1 = [v0 overrideLocaleWeekends];

    if (v1)
    {
      __weekendDays = 6;
    }

    else
    {
      v2 = _CUIKCalendar();
      v3 = [MEMORY[0x1E695DF00] date];
      v4 = 0;
      v5 = 1;
      do
      {
        if (v5 == 8)
        {
          break;
        }

        v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
        [v6 setWeekday:v5];
        v7 = [v2 nextDateAfterDate:v3 matchingComponents:v6 options:1024];
        if ([v2 isDateInWeekend:v7])
        {
          *(&__weekendDays + v4++) = v5 - 1;
        }

        ++v5;
      }

      while (v4 < 2);
    }

    __areWeekendDaysValid = 1;
  }
}

double CUIKScaleFactor()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v3 = v2;

  return v3;
}

CFComparisonResult __CompareCachedDays(void *a1, void *a2)
{
  v3 = CUIKOccurrenceCacheDayKey;
  v4 = a2;
  v5 = [a1 objectForKey:v3];
  v6 = [v4 objectForKey:CUIKOccurrenceCacheDayKey];

  v7 = CFDateCompare(v5, v6, 0);
  return v7;
}

uint64_t sub_1CAB20938@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, char *a3@<X8>)
{
  v69 = a3;
  v70 = a2;
  v4 = sub_1CAD4BE94();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C68);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v56 - v6;
  v72 = sub_1CAD4BC14();
  v7 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1CAD4BE14();
  v68 = *(v73 - 8);
  v9 = MEMORY[0x1EEE9AC00](v73);
  v67 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v56 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v56 - v14;
  v16 = sub_1CAD4BDF4();
  v64 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C70);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v66 = v56 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C48);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v56 - v24;
  v26 = sub_1CAD4BE24();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v31 = v30;
  v33 = v32;
  sub_1CAB23A9C(v29, v25, &qword_1EC464C48);
  if ((*(v33 + 48))(v25, 1, v31) == 1)
  {
    sub_1CAB21B68(v25, &qword_1EC464C48);
    return (*(v33 + 56))(v69, 1, 1, v31);
  }

  v60 = v7;
  v35 = *(v33 + 32);
  v35(v28, v25, v31);
  v36 = v69;
  if ((v70 & 0x100) == 0)
  {
    goto LABEL_12;
  }

  v56[0] = v35;
  v56[1] = v33 + 32;
  v58 = v33;
  v59 = v31;
  v57 = v28;
  sub_1CAD4BDE4();
  sub_1CAB23B54(&qword_1EDA5F8A8, MEMORY[0x1E69686C0]);
  sub_1CAD4E384();
  v70 = (v68 + 8);
  v37 = (v60 + 8);
  while (1)
  {
    sub_1CAD4E394();
    sub_1CAB23B54(&qword_1EDA5F8A0, MEMORY[0x1E69687E8]);
    v38 = v73;
    v39 = sub_1CAD4DED4();
    v40 = *v70;
    (*v70)(v13, v38);
    if (v39)
    {
      v44 = v73;
      v40(v15, v73);
      (*(v64 + 8))(v18, v16);
      v45 = 1;
      v47 = v67;
      v46 = v68;
      v48 = v66;
      goto LABEL_10;
    }

    v41 = sub_1CAD4E3C4();
    v41(v74, 0);
    v42 = v71;
    sub_1CAD4BC04();
    v43 = sub_1CAD4BBF4();
    (*v37)(v42, v72);
    if (v43)
    {
      break;
    }

    sub_1CAD4E3A4();
  }

  (*(v64 + 8))(v18, v16);
  v46 = v68;
  v48 = v66;
  v44 = v73;
  (*(v68 + 32))(v66, v15, v73);
  v45 = 0;
  v47 = v67;
LABEL_10:
  (*(v46 + 56))(v48, v45, 1, v44);
  v49 = v65;
  sub_1CAB23A9C(v48, v65, &qword_1EC464C70);
  if ((*(v46 + 48))(v49, 1, v44) == 1)
  {
    sub_1CAB21B68(v48, &qword_1EC464C70);
    sub_1CAB21B68(v49, &qword_1EC464C70);
    v36 = v69;
    v33 = v58;
    v31 = v59;
    v28 = v57;
    v35 = v56[0];
LABEL_12:
    v35(v36, v28, v31);
    return (*(v33 + 56))(v36, 0, 1, v31);
  }

  (*(v46 + 32))(v47, v49, v44);
  result = sub_1CAD4DED4();
  if (result)
  {
    v50 = v61;
    (*(v46 + 16))(v61, v47, v44);
    sub_1CAB23B0C(&qword_1EDA5F540, &qword_1EC464C68);
    v51 = v57;
    sub_1CAD4BE44();
    sub_1CAB21B68(v50, &qword_1EC464C68);
    v52 = v69;
    sub_1CAD4BE64();
    v40(v47, v44);
    sub_1CAB21B68(v48, &qword_1EC464C70);
    v53 = v58;
    v54 = v51;
    v55 = v59;
    (*(v58 + 8))(v54, v59);
    return (*(v53 + 56))(v52, 0, 1, v55);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t static LocationDescriptionGenerator.locationString(for:options:incomplete:leadingImageName:)(void *a1, void (**a2)(char *, uint64_t), _BYTE *a3, void **a4)
{
  v5 = v4;
  v70 = a4;
  v71 = a3;
  v8 = sub_1CAD4BE24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v58[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v73 = &v58[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C48);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v58[-v21];
  if (a1)
  {
    v23 = a1;
    v24 = [v23 uniqueID];
    if (v24)
    {

      *(&v82 + 1) = &type metadata for EKEventModelWrapper;
      v83 = sub_1CAB29AA4();
      *&v81 = v23;
      goto LABEL_6;
    }
  }

  v83 = 0;
  v81 = 0u;
  v82 = 0u;
LABEL_6:
  sub_1CAB23A9C(&v81, &v75, &qword_1EC464C30);
  if (!*(&v76 + 1))
  {
    sub_1CAB21B68(&v75, &qword_1EC464C30);
    (*(v9 + 56))(v22, 1, 1, v8);
LABEL_37:
    sub_1CAB21B68(&v81, &qword_1EC464C30);
    sub_1CAB23A9C(v22, v20, &qword_1EC464C48);
    if ((*(v9 + 48))(v20, 1, v8) == 1)
    {
      sub_1CAB21B68(v22, &qword_1EC464C48);
      return 0;
    }

    else
    {
      (*(v9 + 32))(v14, v20, v8);
      sub_1CAB23BA4();
      (*(v9 + 16))(v12, v14, v8);
      v57 = sub_1CAD4E454();
      (*(v9 + 8))(v14, v8);
      sub_1CAB21B68(v22, &qword_1EC464C48);
      return v57;
    }
  }

  v63 = v12;
  sub_1CAB284E0(&v75, v78);
  v25 = v79;
  v26 = v80;
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v67 = (*(v26 + 256))(v25, v26);
  v68 = v27;
  v28 = sub_1CAB28CB8(v78);
  if (v28[2])
  {
    v29 = v28[5];
    v72 = v28[4];
    v74 = v29;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  v62 = v22;

  v66 = v8;
  v65 = v9;
  v64 = v14;
  v61 = v20;
  v60 = v5;
  v69 = a2;
  if ((a2 & 0x10) == 0 || (v30 = v79, v31 = v80, __swift_project_boxed_opaque_existential_1(v78, v79), !(*(v31 + 416))(v30, v31)))
  {
LABEL_33:
    sub_1CAB299C0(v78, &v75);
    v59 = sub_1CAB27A8C(v73, &v75, a2);
    sub_1CAB21B68(&v75, &qword_1EC464C30);
    v47 = v79;
    v46 = v80;
    __swift_project_boxed_opaque_existential_1(v78, v79);
    v48 = *(v46 + 296);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v50 = sub_1CAD4E4D4();
    v51 = *(v50 - 8);
    MEMORY[0x1EEE9AC00](v50);
    v53 = &v58[-v52];
    v48(v47, v46);
    v54 = *(AssociatedTypeWitness - 8);
    if ((*(v54 + 48))(v53, 1, AssociatedTypeWitness) == 1)
    {
      (*(v51 + 8))(v53, v50);
      AssociatedConformanceWitness = 0;
      v75 = 0u;
      v76 = 0u;
    }

    else
    {
      *(&v76 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v75);
      (*(v54 + 32))(boxed_opaque_existential_1, v53, AssociatedTypeWitness);
    }

    v8 = v66;
    v9 = v65;
    v12 = v63;
    v20 = v61;
    v22 = v62;
    v56 = v73;
    sub_1CAB21BC8(v67, v68, v72, v74, &v75, v73, v59 & 1, v69, v62, v71, v70);

    sub_1CAB21B68(v56, &qword_1EC465450);
    sub_1CAB21B68(&v75, &qword_1EC464C38);
    __swift_destroy_boxed_opaque_existential_1(v78);
    v14 = v64;
    goto LABEL_37;
  }

  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C40);
  v32 = sub_1CAD4E784();

  v34 = *(v32 + 16);
  if (!v34)
  {

    goto LABEL_33;
  }

  v35 = 0;
  v36 = v32 + 32;
  while (v35 < *(v32 + 16))
  {
    sub_1CAB299C0(v36, &v75);
    v37 = *(&v76 + 1);
    v38 = AssociatedConformanceWitness;
    __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
    if ((*(v38 + 32))(v37, v38) == 2)
    {
      v39 = *(&v76 + 1);
      v40 = AssociatedConformanceWitness;
      __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
      v41 = (*(*(v40 + 8) + 24))(v39);
      if (v42)
      {
        if (v74)
        {
          if (v41 == v72 && v42 == v74)
          {

LABEL_31:

LABEL_32:
            a2 = v69;

            v45 = v68;

            __swift_destroy_boxed_opaque_existential_1(&v75);
            v72 = v67;
            v74 = v45;
            goto LABEL_33;
          }

          v44 = sub_1CAD4E9E4();

          if (v44)
          {
            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      else if (!v74)
      {
        goto LABEL_32;
      }
    }

    ++v35;
    result = __swift_destroy_boxed_opaque_existential_1(&v75);
    v36 += 40;
    if (v34 == v35)
    {

      a2 = v69;
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAB21B68(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CAB21BC8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, int a7@<W6>, void (**a8)(char *, uint64_t)@<X7>, char *a9@<X8>, _BYTE *a10, void **a11)
{
  LODWORD(v189) = a7;
  v191 = a6;
  v190 = a9;
  v193 = a11;
  v188 = a10;
  v206 = *MEMORY[0x1E69E9840];
  v17 = sub_1CAD4BE24();
  v192 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v176 = v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v183 = v166 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v179 = v166 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v180 = v166 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v181 = v166 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v187 = v166 - v28;
  v29 = sub_1CAD4BE84();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v182 = v166 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v166 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C48);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v186 = v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v185 = v166 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v178 = v166 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v184 = v166 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = v166 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v196 = v166 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = v166 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v195 = v166 - v51;
  v52 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v52 - 8);
  v172 = v166 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v54 - 8);
  v171 = v166 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = a8;
  v173 = a1;
  v174 = a2;
  if ((a8 & 8) != 0)
  {
    if (a4)
    {
      if (!a2 || (sub_1CAD4E124() & 1) == 0)
      {
        goto LABEL_8;
      }

      a3 = 0;
      a4 = 0;
    }

LABEL_14:
    sub_1CAB23A9C(a5, v203, &qword_1EC464C38);
    v63 = v204;
    if (v204)
    {
      v64 = v205;
      __swift_project_boxed_opaque_existential_1(v203, v204);
      v177 = sub_1CAC2F744(v63, v64);
      __swift_destroy_boxed_opaque_existential_1(v203);
      if (!a4)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1CAB21B68(v203, &qword_1EC464C38);
      v177 = 0;
      if (!a4)
      {
        goto LABEL_23;
      }
    }

    v59 = a4 & 0x2000000000000000;
    v60 = HIBYTE(a4) & 0xF;
    v61 = a3 & 0xFFFFFFFFFFFFLL;
    goto LABEL_19;
  }

  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_8:
  v175 = a5;
  v56 = v50;
  v57 = v45;
  v58 = v17;
  v59 = a4 & 0x2000000000000000;
  v60 = HIBYTE(a4) & 0xF;
  v61 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v62 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v62 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
    v17 = v58;
    v45 = v57;
    v50 = v56;
    a5 = v175;
    goto LABEL_14;
  }

  v177 = 0;
  v17 = v58;
  v45 = v57;
  v50 = v56;
  a5 = v175;
LABEL_19:
  if (v59)
  {
    v65 = v60;
  }

  else
  {
    v65 = v61;
  }

  if (!v65)
  {
LABEL_23:
    sub_1CAB23A9C(a5, &v200, &qword_1EC464C38);
    if (!v201)
    {
      sub_1CAB21B68(&v200, &qword_1EC464C38);
      if (!a4)
      {
        goto LABEL_84;
      }

      goto LABEL_75;
    }

    v167 = a3;
    v169 = v33;
    v170 = v45;
    v175 = v50;
    v168 = v17;
    sub_1CAB284E0(&v200, v203);
    v67 = v204;
    v66 = v205;
    __swift_project_boxed_opaque_existential_1(v203, v204);
    v68 = *(v66 + 80);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v70 = sub_1CAD4E4D4();
    v166[1] = v166;
    v71 = *(v70 - 8);
    MEMORY[0x1EEE9AC00](v70);
    v73 = v166 - v72;
    v68(v67, v66);
    v74 = *(AssociatedTypeWitness - 8);
    if ((*(v74 + 48))(v73, 1, AssociatedTypeWitness) == 1)
    {
      (*(v71 + 8))(v73, v70);
      __swift_destroy_boxed_opaque_existential_1(v203);
      v17 = v168;
      v50 = v175;
      v45 = v170;
      v33 = v169;
      a3 = v167;
      if (!a4)
      {
        goto LABEL_84;
      }

      goto LABEL_75;
    }

    v198 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v199 = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v197);
    (*(v74 + 32))(boxed_opaque_existential_1, v73, AssociatedTypeWitness);
    sub_1CAB284E0(&v197, &v200);
    v77 = v201;
    v78 = v202;
    __swift_project_boxed_opaque_existential_1(&v200, v201);
    v79 = (*(AssociatedConformanceWitness + 8))(v77, v78);
    v50 = v175;
    if (v79)
    {
      v17 = v168;
      v45 = v170;
      v33 = v169;
      a3 = v167;
      if (v79 != 1)
      {
        goto LABEL_34;
      }

      v80 = 4;
    }

    else
    {
      v80 = 2;
      v17 = v168;
      v45 = v170;
      v33 = v169;
      a3 = v167;
    }

    if ((v80 & v194) != 0)
    {
      goto LABEL_74;
    }

LABEL_34:

    sub_1CAB299C0(v203, &v197);
    v81 = sub_1CAC117DC(&v197);
    a4 = v82;
    sub_1CAB21B68(&v197, &qword_1EC464C38);
    if (a4)
    {
      v83 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v83 = v81 & 0xFFFFFFFFFFFFLL;
      }

      if (v83)
      {
LABEL_68:
        if ((v194 & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_73;
      }
    }

    v84 = v201;
    v85 = v202;
    __swift_project_boxed_opaque_existential_1(&v200, v201);
    v86 = (*(v85 + 32))(v84, v85);
    a4 = v174;
    if (v87)
    {
      if (v86 == 21333 && v87 == 0xE200000000000000)
      {

        goto LABEL_44;
      }

      v88 = sub_1CAD4E9E4();

      if (v88)
      {
LABEL_44:
        v89 = v201;
        v90 = v202;
        __swift_project_boxed_opaque_existential_1(&v200, v201);
        v91 = (*(v90 + 40))(v89, v90);
        if (v92)
        {
          v93 = v92;
          v94 = HIBYTE(v92) & 0xF;
          if ((v92 & 0x2000000000000000) == 0)
          {
            v94 = v91 & 0xFFFFFFFFFFFFLL;
          }

          if (v94)
          {
            v168 = v91;
            v95 = v201;
            v96 = v202;
            __swift_project_boxed_opaque_existential_1(&v200, v201);
            v97 = (*(v96 + 48))(v95, v96);
            if (v98)
            {
              v99 = v97;
              v100 = v98;
              v101 = HIBYTE(v98) & 0xF;
              if ((v98 & 0x2000000000000000) == 0)
              {
                v101 = v97 & 0xFFFFFFFFFFFFLL;
              }

              if (v101)
              {
                sub_1CAD4DEE4();
                v102 = CUIKBundle();
                sub_1CAD4C184();
                sub_1CAD4DFB4();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
                v103 = swift_allocObject();
                *(v103 + 16) = xmmword_1CAD5A0D0;
                v104 = MEMORY[0x1E69E6158];
                *(v103 + 56) = MEMORY[0x1E69E6158];
                v105 = sub_1CABC6340();
                *(v103 + 32) = v168;
                *(v103 + 40) = v93;
                *(v103 + 96) = v104;
                *(v103 + 104) = v105;
                v50 = v175;
                *(v103 + 64) = v105;
                *(v103 + 72) = v99;
                *(v103 + 80) = v100;
                v81 = sub_1CAD4DF64();
                a4 = v106;
                v45 = v170;

                v33 = v169;

                if (v194)
                {
                  goto LABEL_73;
                }

LABEL_69:
                if (!a4)
                {
                  __swift_destroy_boxed_opaque_existential_1(&v200);
                  __swift_destroy_boxed_opaque_existential_1(v203);
                  goto LABEL_84;
                }

                sub_1CAD4DEE4();
                v115 = CUIKBundle();
                sub_1CAD4C184();
                sub_1CAD4DFC4();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
                v116 = swift_allocObject();
                *(v116 + 16) = xmmword_1CAD58380;
                *(v116 + 56) = MEMORY[0x1E69E6158];
                *(v116 + 64) = sub_1CABC6340();
                *(v116 + 32) = v81;
                *(v116 + 40) = a4;
                a3 = sub_1CAD4DF64();
                a4 = v117;

LABEL_74:
                __swift_destroy_boxed_opaque_existential_1(&v200);
                __swift_destroy_boxed_opaque_existential_1(v203);
                if (a4)
                {
LABEL_75:
                  v59 = a4 & 0x2000000000000000;
                  v60 = HIBYTE(a4) & 0xF;
                  v61 = a3 & 0xFFFFFFFFFFFFLL;
                  goto LABEL_76;
                }

LABEL_84:
                v125 = 1;
                v126 = v195;
                goto LABEL_86;
              }
            }
          }
        }

        v107 = v201;
        v108 = v202;
        __swift_project_boxed_opaque_existential_1(&v200, v201);
        v109 = (*(v108 + 48))(v107, v108);
        if (v110)
        {
          v111 = HIBYTE(v110) & 0xF;
          if ((v110 & 0x2000000000000000) == 0)
          {
            v111 = v109 & 0xFFFFFFFFFFFFLL;
          }

          if (v111)
          {
LABEL_65:
            v81 = v109;
            a4 = v110;
            if (v194)
            {
              goto LABEL_73;
            }

            goto LABEL_69;
          }
        }

        v112 = v201;
        v113 = v202;
        __swift_project_boxed_opaque_existential_1(&v200, v201);
        v109 = (*(v113 + 40))(v112, v113);
        if (v110)
        {
          v114 = HIBYTE(v110) & 0xF;
          if ((v110 & 0x2000000000000000) == 0)
          {
            v114 = v109 & 0xFFFFFFFFFFFFLL;
          }

          v81 = v173;
          if (v114)
          {
            goto LABEL_65;
          }

          if ((v194 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_73:
          a3 = v81;
          goto LABEL_74;
        }
      }
    }

    v81 = v173;
    goto LABEL_68;
  }

LABEL_76:
  if (v59)
  {
    v118 = v60;
  }

  else
  {
    v118 = v61;
  }

  if (!v118)
  {
LABEL_83:

    goto LABEL_84;
  }

  v119 = a3;
  sub_1CAB23A9C(v191, v33, &qword_1EC465450);
  v120 = sub_1CAD4BFF4();
  v121 = *(v120 - 8);
  if ((*(v121 + 48))(v33, 1, v120) != 1)
  {
    v122 = sub_1CAD4BFA4();
    v124 = v123;
    (*(v121 + 8))(v33, v120);
    v203[0] = v122;
    v203[1] = v124;
    *&v200 = v119;
    *(&v200 + 1) = a4;
    sub_1CABA6054();
    LOBYTE(v122) = sub_1CAD4E594();

    if ((v122 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  sub_1CAB21B68(v33, &qword_1EC465450);
LABEL_85:
  sub_1CAD4BE74();
  v126 = v195;
  sub_1CAD4BE34();
  v125 = 0;
LABEL_86:
  v127 = v196;
  v128 = v192;
  v129 = *(v192 + 56);
  v129(v126, v125, 1, v17);
  v203[0] = 0;
  sub_1CAB23120(v191, v189 & 1, v194, v203, v188, v50);
  v191 = v203[0];
  if (v193)
  {
    v130 = *v193;
    *v193 = 0;
  }

  v189 = v129;
  v129(v127, 1, 1, v17);
  sub_1CAB23A9C(v126, v45, &qword_1EC464C48);
  v131 = *(v128 + 48);
  if (v131(v45, 1, v17) == 1)
  {
    v132 = v50;
  }

  else
  {
    v132 = v50;
    v133 = v128;
    v134 = *(v128 + 32);
    v135 = v187;
    v134(v187, v45, v17);
    v45 = v184;
    sub_1CAB23A9C(v132, v184, &qword_1EC464C48);
    if (v131(v45, 1, v17) != 1)
    {
      v175 = v132;
      v149 = v181;
      v134(v181, v45, v17);
      v150 = v179;
      sub_1CAD4BDD4();
      v151 = (v133 + 8);
      v152 = v17;
      if (v177)
      {
        v153 = v180;
        sub_1CAD4BE04();
        v154 = *v151;
        (*v151)(v150, v17);
        v155 = v178;
        v156 = v187;
        sub_1CAD4BE04();
        v154(v153, v152);
        v142 = v196;
        sub_1CAB21B68(v196, &qword_1EC464C48);
        v189(v155, 0, 1, v152);
        sub_1CAC11DCC(v155, v142);
        v141 = v191;
        if (v193)
        {
          v157 = v152;
          v158 = *v193;
          *v193 = v191;
          v159 = v141;

          v132 = v175;
          v154(v149, v157);
          v154(v156, v157);
        }

        else
        {
          v154(v149, v152);
          v154(v156, v152);
          v132 = v175;
        }
      }

      else
      {
        v162 = v180;
        v163 = v187;
        sub_1CAD4BE04();
        v164 = *v151;
        (*v151)(v150, v152);
        v165 = v178;
        sub_1CAD4BE04();
        v164(v162, v152);
        v164(v149, v152);
        v164(v163, v152);
        v142 = v196;
        sub_1CAB21B68(v196, &qword_1EC464C48);
        v189(v165, 0, 1, v152);
        sub_1CAC11DCC(v165, v142);
        v132 = v175;
        v141 = v191;
      }

      goto LABEL_105;
    }

    (*(v133 + 8))(v135, v17);
  }

  v136 = v196;
  sub_1CAB21B68(v196, &qword_1EC464C48);
  sub_1CAB21B68(v45, &qword_1EC464C48);
  v137 = v185;
  sub_1CAB23A9C(v132, v185, &qword_1EC464C48);
  v138 = v131(v137, 1, v17);
  v139 = v186;
  if (v138 == 1)
  {
    sub_1CAB21B68(v137, &qword_1EC464C48);
    sub_1CAB23A9C(v195, v139, &qword_1EC464C48);
    v140 = v131(v139, 1, v17);
    v141 = v191;
    if (v140 == 1)
    {
      sub_1CAB21B68(v139, &qword_1EC464C48);
      v142 = v196;
      v143 = v196;
      v144 = 1;
    }

    else
    {
      v160 = *(v192 + 32);
      v161 = v176;
      v160(v176, v139, v17);
      v142 = v196;
      v160(v196, v161, v17);
      v143 = v142;
      v144 = 0;
    }

    v189(v143, v144, 1, v17);
  }

  else
  {
    v145 = v192;
    v146 = v183;
    (*(v192 + 32))(v183, v137, v17);
    (*(v145 + 16))(v136, v146, v17);
    v189(v136, 0, 1, v17);
    v142 = v136;
    v141 = v191;
    if (v193)
    {
      v147 = *v193;
      *v193 = v191;
      v148 = v141;
    }

    (*(v145 + 8))(v146, v17);
  }

LABEL_105:
  sub_1CAB20938(v142, v194, v190);
  sub_1CAB21B68(v142, &qword_1EC464C48);
  sub_1CAB21B68(v132, &qword_1EC464C48);
  sub_1CAB21B68(v195, &qword_1EC464C48);
}

void sub_1CAB23120(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, void **a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  v93 = a5;
  v94 = a4;
  LODWORD(v91) = a2;
  v101 = *MEMORY[0x1E69E9840];
  v9 = sub_1CAD4BE84();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v82 - v12;
  v14 = sub_1CAD4C1D4();
  v88 = *(v14 - 8);
  v89 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1CAD4BE24();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v82 - v21;
  v23 = sub_1CAD4BFF4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v95 = v26;
  sub_1CAB23A9C(a1, v22, &qword_1EC465450);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1CAB21B68(v22, &qword_1EC465450);
LABEL_13:
    (*(v18 + 7))(a6, 1, 1, v17);
    return;
  }

  v84 = v13;
  v27 = v18;
  v28 = v95;
  (*(v24 + 32))(v95, v22, v23);
  v29 = sub_1CAD4BFA4();
  v31 = v30;

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    (*(v24 + 8))(v28, v23);
    v18 = v27;
    goto LABEL_13;
  }

  v85 = v24;
  v86 = v23;
  v100 = 0;
  v33 = v27;
  v34 = v94;
  if (v94)
  {
    v35 = *v94;
    *v94 = 0;
  }

  v36 = objc_opt_self();
  v37 = sub_1CAD4BFB4();
  v38 = [v36 synchronousTitleForURL:v37 incomplete:&v100 + 1];

  if (v38)
  {
    v39 = v36;
    v40 = sub_1CAD4DF94();
    v42 = v41;

    v43 = a3 & 0x40;
    if (!(v43 | v34))
    {
      if (v42)
      {
        sub_1CAD4BE74();
        v80 = v92;
        sub_1CAD4BE34();
        v81 = v93;
        if (!v93)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_33;
    }

    v83 = v40;
    v36 = v39;
  }

  else
  {
    v43 = a3 & 0x40;
    if (!(v43 | v34))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v42 = 0;
    v83 = 0;
  }

  v44 = sub_1CAD4BFB4();
  v98 = 0;
  v45 = [v36 synchronousOutlineIconForURL:v44 isBroadcast:v91 & 1 outImageName:&v98 incomplete:&v100];

  v46 = v98;
  if (v34)
  {
    v47 = *v34;
    *v34 = v98;
    v48 = v46;

    if (!v43)
    {
LABEL_25:
      if (v42)
      {
        sub_1CAD4BE74();
        v80 = v92;
        sub_1CAD4BE34();

        v81 = v93;
        if (!v93)
        {
LABEL_28:
          (*(v85 + 8))(v95, v86);
          (*(v33 + 4))(a6, v80, v17);
          (*(v33 + 7))(a6, 0, 1, v17);
          return;
        }

LABEL_27:
        *v81 = (HIBYTE(v100) | v100) & 1;
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v49 = v98;
    if (!v43)
    {
      goto LABEL_25;
    }
  }

  if (!v45)
  {
    goto LABEL_25;
  }

  if (!v42)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v90 = v33;
  v94 = v46;
  v91 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  [v91 setImage_];
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_1CAD4EB14();
  v50 = v98;
  v51 = v99;
  sub_1CAD4DEE4();
  v52 = CUIKBundle();
  sub_1CAD4C184();
  sub_1CAD4DFC4();
  v54 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1CAD5A0D0;
  v56 = v42;
  v57 = MEMORY[0x1E69E6158];
  *(v55 + 56) = MEMORY[0x1E69E6158];
  v58 = sub_1CABC6340();
  *(v55 + 32) = v50;
  *(v55 + 40) = v51;
  *(v55 + 96) = v57;
  *(v55 + 104) = v58;
  v59 = v83;
  *(v55 + 64) = v58;
  *(v55 + 72) = v59;
  *(v55 + 80) = v56;

  v82 = v56;

  v87 = v54;
  sub_1CAD4DF64();

  v60 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v61 = sub_1CAD4DF54();

  v62 = [v60 initWithString_];

  v63 = v62;
  v64 = [v63 string];
  v65 = sub_1CAD4DF94();
  v83 = v45;
  v67 = v66;

  v98 = v65;
  v99 = v67;
  v96 = v50;
  v97 = v51;
  v68 = v84;
  (*(v88 + 56))(v84, 1, 1, v89);
  sub_1CABA6054();
  v69 = sub_1CAD4E584();
  v71 = v70;
  LOBYTE(v51) = v72;
  sub_1CAB21B68(v68, &qword_1EC4636A8);

  if ((v51 & 1) == 0)
  {

    v98 = v69;
    v99 = v71;
    v73 = [v63 string];
    v74 = sub_1CAD4DF94();
    v76 = v75;

    v96 = v74;
    v97 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C50);
    sub_1CAB23B0C(&qword_1EC464C58, &qword_1EC464C50);
    v77 = sub_1CAD4E4B4();
    v78 = v91;
    [v63 addAttribute:*MEMORY[0x1E69DB5F8] value:v91 range:{v77, v79}];
    v80 = v92;
    sub_1CAD4BE54();

    v33 = v90;
    v81 = v93;
    if (!v93)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1CAB23A9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAB23B0C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CAB23B54(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CAB23BA4()
{
  result = qword_1EDA5F548[0];
  if (!qword_1EDA5F548[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDA5F548);
  }

  return result;
}

void sub_1CAB23F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB2481C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CUIKDisplayedTitleForEvent(void *a1)
{
  v1 = a1;
  v2 = [v1 isProposedTimeEvent];
  v3 = [v1 status] == 3;
  v4 = CUIKEventDisplaysAsDeclined(v1);
  v5 = CUIKDisplayedTitleForEventWithOptions(v1, v2, v3, v4);

  return v5;
}

uint64_t CUIKEventDisplaysAsDeclined(void *a1)
{
  v1 = a1;
  if ([v1 isProposedTimeEvent])
  {
    v2 = 0;
  }

  else
  {
    v2 = CUIKEventCommonPartStatDisplayTestsAndSpecificTest(v1, &__block_literal_global_13);
  }

  return v2;
}

uint64_t CUIKEventCommonPartStatDisplayTestsAndSpecificTest(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 hasAttendees])
  {
    v5 = v4[2](v4, [v3 selfParticipantStatus]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__CFString *CUIKDisplayedTitleForEventWithOptions(void *a1, int a2, int a3, char a4)
{
  v7 = a1;
  v8 = [v7 title];
  if (!v8 || ([v7 title], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", &stru_1F4AA8958), v9, v10))
  {

    v8 = @" ";
  }

  if ((a3 & 1) != 0 || (a4 & 1) != 0 || a2)
  {
    v11 = @"DECLINED: %@";
    if (a3)
    {
      v11 = @"CANCELED: %@";
    }

    if (a2)
    {
      v12 = @"PROPOSED: %@";
    }

    else
    {
      v12 = v11;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = CUIKBundle();
    v15 = [v14 localizedStringForKey:v12 value:&stru_1F4AA8958 table:0];
    v16 = [v13 localizedStringWithFormat:v15, v8];

    v8 = v16;
  }

  return v8;
}

void sub_1CAB24EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CUIKMultiwindowAssert(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  if (_shouldAssertOnUnknownWindow_onceToken != -1)
  {
    CUIKMultiwindowAssert_cold_1();
  }

  if (_shouldAssertOnUnknownWindow_shouldAssert == 1)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
    if ((a1 & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"CUIKDeviceCapabilities assertion failed: %@", v11}];
    }
  }
}

double CUIKCeilToScreenScale(double a1)
{
  v2 = CUIKCeilToScreenScale___scale;
  if (*&CUIKCeilToScreenScale___scale == -1.0)
  {
    *&v2 = CUIKScaleFactor();
    CUIKCeilToScreenScale___scale = v2;
  }

  if (a1 != 0.0)
  {
    return ceil(*&v2 * a1) / *&v2;
  }

  return a1;
}

id CUIKSymbolicColorWithName(void *a1)
{
  v1 = CUIKSymbolicColorWithName_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKSymbolicColorWithName_cold_1();
  }

  v3 = [CUIKSymbolicColorWithName_kColors objectForKeyedSubscript:v2];

  return v3;
}

uint64_t CUIKEventDisplaysAsNeedsReply(void *a1)
{
  v1 = a1;
  if ([v1 isSelfOrganizedInvitation])
  {
    v2 = 0;
  }

  else
  {
    v2 = CUIKEventCommonPartStatDisplayTestsAndSpecificTest(v1, &__block_literal_global_11_0);
  }

  return v2;
}

id CUIKOccurrenceTextColor(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, char a8, char a9, uint64_t a10)
{
  v17 = a1;
  v19 = v17;
  v20 = a2 | a3;
  if (a4)
  {
    v21 = CUIKOccurrenceSelectedTextColor(v17, v18, v20 | a5);
    goto LABEL_18;
  }

  if (v20)
  {
    v22 = MEMORY[0x1E69DC888];
LABEL_5:
    v21 = [v22 tertiaryLabelColor];
    goto LABEL_18;
  }

  if (a5)
  {
    v21 = CUIKInvitationTitleColor();
  }

  else
  {
    if (!a6)
    {
      if (v17)
      {
        v21 = CUIKTextColorForCalendarColorForStyle(v17, a10);
      }

      else
      {
        if (a9)
        {
          CUIKBirthdayMonthCalendarColor();
        }

        else
        {
          [MEMORY[0x1E69DC888] colorWithRed:0.0549019608 green:0.380392157 blue:0.725490196 alpha:1.0];
        }
        v21 = ;
      }

      goto LABEL_18;
    }

    v22 = MEMORY[0x1E69DC888];
    if (a7 || (a8 & 1) == 0)
    {
      goto LABEL_5;
    }

    v21 = [MEMORY[0x1E69DC888] labelColor];
  }

LABEL_18:
  v23 = v21;

  return v23;
}

id CUIKTextColorForCalendarColorForStyle(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == 1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__1;
    v15 = __Block_byref_object_dispose__1;
    v16 = 0;
    v5 = [MEMORY[0x1E69DC888] labelColor];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __CUIKTextColorForCalendarColorForStyle_block_invoke;
    v8[3] = &unk_1E83998D0;
    v10 = &v11;
    v9 = v4;
    CUIKPerformWithResolvedColorForDynamicColor(v5, 1, v8);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = CUIKAdjustedColorForColor(v3, a2);
  }

  return v6;
}

void sub_1CAB25F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CUIKPerformWithResolvedColorForDynamicColor(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = MEMORY[0x1E69DD1B8];
  v7 = a3;
  v8 = a1;
  v10 = [v6 traitCollectionWithUserInterfaceStyle:a2];
  v9 = [v8 resolvedColorWithTraitCollection:v10];

  (a3)[2](v7, v9);
}

void __CUIKTextColorForCalendarColorForStyle_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = [a2 colorWithAlphaComponent:0.5];
  v4 = CUIKBlendColorsSourceOver(v3, v7);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id CUIKBlendColorsSourceOver(void *a1, void *a2)
{
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v3 = a2;
  [a1 cuik_getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  [v3 cuik_getRed:&v9 green:&v8 blue:&v7 alpha:&v6];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:v13 * (1.0 - v6) + v9 * v6 green:(1.0 - v6) * v12 + v8 * v6 blue:(1.0 - v6) * v11 + v7 * v6 alpha:v10];

  return v4;
}

BOOL CUIKShouldShowTimezoneClarification(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = CalCopyTimeZone();
  v6 = v3 && ([v3 isUTC] & 1) == 0 && CUIKTimezonesDivergeAtDate(v3, v5, v4);

  return v6;
}

BOOL CUIKTimezonesDivergeAtDate(void *a1, void *a2, void *a3)
{
  v5 = RegisterForInvalidation_onceToken;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (v5 != -1)
  {
    CUIKCalendar_cold_1();
  }

  v9 = _CUIKTimezonesDivergeAtDate(v8, v7, v6);

  return v9;
}

BOOL _CUIKTimezonesDivergeAtDate(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [a1 secondsFromGMTForDate:v5];
  v8 = [v6 secondsFromGMTForDate:v5];

  return v7 != v8;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return NSRequestConcreteImplementation();
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id CUIKOccurrenceSecondaryTextColor(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, char a8, char a9, uint64_t a10)
{
  v17 = a1;
  v19 = v17;
  v20 = a2 | a3;
  if (a4)
  {
    v21 = CUIKOccurrenceSelectedTextColor(v17, v18, v20 | a5);
    goto LABEL_18;
  }

  if (v20)
  {
    v22 = MEMORY[0x1E69DC888];
LABEL_5:
    v21 = [v22 tertiaryLabelColor];
    goto LABEL_18;
  }

  if (a5)
  {
    v21 = CUIKInvitationTitleColor();
  }

  else
  {
    if (!a6)
    {
      if (v17)
      {
        v21 = CUIKSecondaryTextColorForCalendarColorForStyle(v17, a10);
      }

      else
      {
        if (a9)
        {
          CUIKBirthdayMonthCalendarColor();
        }

        else
        {
          [MEMORY[0x1E69DC888] colorWithRed:0.0549019608 green:0.380392157 blue:0.725490196 alpha:1.0];
        }
        v21 = ;
      }

      goto LABEL_18;
    }

    v22 = MEMORY[0x1E69DC888];
    if (a7 || (a8 & 1) == 0)
    {
      goto LABEL_5;
    }

    v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

LABEL_18:
  v23 = v21;

  return v23;
}

id CUIKSecondaryTextColorForCalendarColorForStyle(void *a1, uint64_t a2)
{
  v3 = a1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  if (a2 == 1)
  {
    v4 = [MEMORY[0x1E69DC888] labelColor];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __CUIKSecondaryTextColorForCalendarColorForStyle_block_invoke;
    v13[3] = &unk_1E83998D0;
    v15 = &v16;
    v14 = v3;
    CUIKPerformWithResolvedColorForDynamicColor(v4, 1, v13);

    v5 = v17[5];
    v6 = v14;
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] blackColor];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __CUIKSecondaryTextColorForCalendarColorForStyle_block_invoke_2;
    v9[3] = &unk_1E83998F8;
    v11 = &v16;
    v10 = v3;
    v12 = a2;
    CUIKPerformWithResolvedColorForDynamicColor(v7, a2, v9);

    v5 = v17[5];
    v6 = v10;
  }

  _Block_object_dispose(&v16, 8);

  return v5;
}

void __CUIKSecondaryTextColorForCalendarColorForStyle_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = [a2 colorWithAlphaComponent:0.25];
  v4 = CUIKBlendColorsSourceOver(v3, v7);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

double CUIKOccurrenceLeadingIconAlphaScale(uint64_t a1)
{
  result = 0.85;
  if (a1 == 2)
  {
    return 1.0;
  }

  return result;
}

double CUIKRoundRectToScreenScale(double a1, double a2, double a3, double a4)
{
  v7 = a1;
  if (a1 != a1)
  {
    UIRoundToViewScale();
    v7 = v8;
  }

  if (a2 != a2)
  {
    UIRoundToViewScale();
  }

  if (a3 != a3)
  {
    UIRoundToViewScale();
  }

  if (a4 != a4)
  {
    UIRoundToViewScale();
  }

  return v7;
}

BOOL CUIKColorIsWhite(void *a1)
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0;
  [a1 cuik_getRed:&v6 green:&v5 blue:&v4 alpha:&v3];
  v1 = v6 > 0.95;
  if (v5 <= 0.95)
  {
    v1 = 0;
  }

  return v4 > 0.95 && v1;
}

id CUIKAdjustedColorForColor(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (CUIKColorIsWhite(v3))
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
  }

  if (a2 == 2)
  {
    if (CUIKColorIsBlack(v3))
    {
      v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.25 alpha:1.0];

      v4 = v5;
    }

    v6 = CUIKAdjustColorLuminanceIfNeeded(v4);

    v4 = v6;
  }

  return v4;
}

id CUIKBaseColor(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = a1;
  v10 = v9;
  if (a3)
  {
    goto LABEL_2;
  }

  if (a4)
  {
    if (CUIKDeclinedEventBaseColor_onceToken != -1)
    {
      CUIKBaseColor_cold_1();
    }

    v11 = CUIKDeclinedEventBaseColor_sDeclinedEventBaseColor;
    goto LABEL_7;
  }

  if (!a5)
  {
    if (!v9)
    {
      v11 = [MEMORY[0x1E69DC888] colorWithRed:0.0549019608 green:0.380392157 blue:0.725490196 alpha:1.0];
      goto LABEL_7;
    }

LABEL_2:
    v11 = CUIKAdjustedColorForColor(v9, a2);
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  v14 = [MEMORY[0x1E69DC888] whiteColor];
  v12 = CUIKAdjustedColorForColor(v14, a2);

LABEL_8:

  return v12;
}

uint64_t sub_1CAB27A8C(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v75 - v10;
  v12 = sub_1CAD4BFF4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v75 - v17;
  sub_1CAB23A9C(a2, &v86, &qword_1EC464C30);
  if (v87)
  {
    v77 = v11;
    v78 = a3;
    v79 = v9;
    v76 = v16;
    v75 = v18;
    v80 = a1;
    v81 = v13;
    v82 = v12;
    sub_1CAB284E0(&v86, v89);
    v20 = v90;
    v19 = v91;
    __swift_project_boxed_opaque_existential_1(v89, v90);
    v21 = *(v19 + 248);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v23 = sub_1CAD4E4D4();
    v24 = *(v23 - 8);
    MEMORY[0x1EEE9AC00](v23);
    v26 = &v75 - v25;
    v21(v20, v19);
    v27 = *(AssociatedTypeWitness - 8);
    if ((*(v27 + 48))(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v24 + 8))(v26, v23);
LABEL_12:
      v35 = v81;
      v34 = v82;
      v36 = v78;
      v37 = v79;
      v38 = v77;
LABEL_13:
      (*(v35 + 56))(v38, 1, 1, v34);
LABEL_14:
      sub_1CAB21B68(v38, &qword_1EC465450);
      if (v36 < 0)
      {
        v54 = [objc_opt_self() isMainThread] ^ 1;
      }

      else
      {
        v54 = 1;
      }

      v55 = v90;
      v56 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      if (((*(v56 + 456))(v55, v56) & 1) != 0 || v54)
      {
        v57 = v90;
        v58 = v91;
        __swift_project_boxed_opaque_existential_1(v89, v90);
        (*(v58 + 464))(v57, v58);
        if ((*(v35 + 48))(v37, 1, v34) == 1)
        {
          sub_1CAB21B68(v37, &qword_1EC465450);
        }

        else
        {
          v60 = *(v35 + 32);
          v60(v76, v37, v34);
          v61 = sub_1CAD4BFD4();
          if (!v62 || (*&v86 = v61, *(&v86 + 1) = v62, v83[0] = 7103860, v83[1] = 0xE300000000000000, sub_1CABA6054(), v63 = sub_1CAD4E564(), , v63))
          {
            v64 = v80;
            v60(v80, v76, v34);
            (*(v35 + 56))(v64, 0, 1, v34);
            goto LABEL_22;
          }

          (*(v35 + 8))(v76, v34);
        }
      }

      (*(v35 + 56))(v80, 1, 1, v34);
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1(v89);
      goto LABEL_23;
    }

    v84 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v85 = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
    (*(v27 + 32))(boxed_opaque_existential_1, v26, AssociatedTypeWitness);
    v30 = v84;
    v31 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    if (!(*(AssociatedConformanceWitness + 32))(v30, v31))
    {
      __swift_destroy_boxed_opaque_existential_1(v83);
      goto LABEL_12;
    }

    swift_getAssociatedTypeWitness();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C78);
    v33 = sub_1CAD4E784();

    v35 = v81;
    v34 = v82;
    v36 = v78;
    v37 = v79;
    v38 = v77;
    if (!*(v33 + 16))
    {

      __swift_destroy_boxed_opaque_existential_1(v83);
      goto LABEL_13;
    }

    sub_1CAB299C0(v33 + 32, &v86);

    v39 = v87;
    v40 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    (*(v40 + 16))(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(&v86);
    __swift_destroy_boxed_opaque_existential_1(v83);
    if ((*(v35 + 48))(v38, 1, v34) == 1)
    {
      goto LABEL_14;
    }

    v79 = v32;
    v41 = v75;
    (*(v35 + 32))(v75, v38, v34);
    v42 = v80;
    (*(v35 + 16))(v80, v41, v34);
    (*(v35 + 56))(v42, 0, 1, v34);
    v43 = v90;
    v44 = v91;
    __swift_project_boxed_opaque_existential_1(v89, v90);
    v45 = *(v44 + 248);
    v46 = v35;
    v47 = swift_getAssociatedTypeWitness();
    v48 = sub_1CAD4E4D4();
    v80 = &v75;
    v49 = *(v48 - 8);
    MEMORY[0x1EEE9AC00](v48);
    v51 = &v75 - v50;
    v45(v43, v44);
    v52 = *(v47 - 8);
    if ((*(v52 + 48))(v51, 1, v47) == 1)
    {
      (*(v46 + 8))(v75, v82);
      (*(v49 + 8))(v51, v48);
LABEL_10:
      v53 = 0;
LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(v89);
      return v53 & 1;
    }

    v84 = v47;
    v65 = swift_getAssociatedConformanceWitness();
    v85 = v65;
    v66 = __swift_allocate_boxed_opaque_existential_1(v83);
    (*(v52 + 32))(v66, v51, v47);
    v67 = v84;
    v68 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v69 = (*(v65 + 32))(v67, v68);
    v53 = v69;
    if (v69)
    {
      swift_getAssociatedTypeWitness();
      v70 = sub_1CAD4E784();

      v72 = v81;
      v71 = v82;
      if (!*(v70 + 16))
      {

        (*(v72 + 8))(v75, v71);
        __swift_destroy_boxed_opaque_existential_1(v83);
        goto LABEL_10;
      }

      sub_1CAB299C0(v70 + 32, &v86);

      v73 = v87;
      v74 = v88;
      __swift_project_boxed_opaque_existential_1(&v86, v87);
      v53 = (*(v74 + 24))(v73, v74);
      (*(v72 + 8))(v75, v71);
      __swift_destroy_boxed_opaque_existential_1(&v86);
    }

    else
    {
      (*(v81 + 8))(v75, v82);
    }

    __swift_destroy_boxed_opaque_existential_1(v83);
    goto LABEL_35;
  }

  sub_1CAB21B68(&v86, &qword_1EC464C30);
  (*(v13 + 56))(a1, 1, 1, v12);
LABEL_23:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_1CAB284E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void __CUIKSymbolicColorWithName_block_invoke()
{
  v24[7] = *MEMORY[0x1E69E9840];
  v23[0] = *MEMORY[0x1E69E4060];
  v0 = MEMORY[0x1E69DC888];
  v22 = CUIKBundle();
  v21 = [v0 colorNamed:@"CalendarPurple" inBundle:v22 compatibleWithTraitCollection:0];
  v24[0] = v21;
  v23[1] = *MEMORY[0x1E69E4050];
  v1 = MEMORY[0x1E69DC888];
  v20 = CUIKBundle();
  v19 = [v1 colorNamed:@"CalendarGreen" inBundle:v20 compatibleWithTraitCollection:0];
  v24[1] = v19;
  v23[2] = *MEMORY[0x1E69E4038];
  v2 = MEMORY[0x1E69DC888];
  v3 = CUIKBundle();
  v4 = [v2 colorNamed:@"CalendarBlue" inBundle:v3 compatibleWithTraitCollection:0];
  v24[2] = v4;
  v23[3] = *MEMORY[0x1E69E4070];
  v5 = MEMORY[0x1E69DC888];
  v6 = CUIKBundle();
  v7 = [v5 colorNamed:@"CalendarYellow" inBundle:v6 compatibleWithTraitCollection:0];
  v24[3] = v7;
  v23[4] = *MEMORY[0x1E69E4040];
  v8 = MEMORY[0x1E69DC888];
  v9 = CUIKBundle();
  v10 = [v8 colorNamed:@"CalendarBrown" inBundle:v9 compatibleWithTraitCollection:0];
  v24[4] = v10;
  v23[5] = *MEMORY[0x1E69E4068];
  v11 = MEMORY[0x1E69DC888];
  v12 = CUIKBundle();
  v13 = [v11 colorNamed:@"CalendarRed" inBundle:v12 compatibleWithTraitCollection:0];
  v24[5] = v13;
  v23[6] = *MEMORY[0x1E69E4058];
  v14 = MEMORY[0x1E69DC888];
  v15 = CUIKBundle();
  v16 = [v14 colorNamed:@"CalendarOrange" inBundle:v15 compatibleWithTraitCollection:0];
  v24[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:7];
  v18 = CUIKSymbolicColorWithName_kColors;
  CUIKSymbolicColorWithName_kColors = v17;
}

uint64_t CUIKEventDisplaysAsTentative(void *a1)
{
  v1 = a1;
  if ([v1 isProposedTimeEvent])
  {
    v2 = 1;
  }

  else
  {
    v3 = [v1 calendar];
    if ([v3 isSuggestedEventCalendar])
    {
      v2 = 1;
    }

    else if ([v1 isSelfOrganizedInvitation])
    {
      v2 = 0;
    }

    else
    {
      v2 = CUIKEventCommonPartStatDisplayTestsAndSpecificTest(v1, &__block_literal_global_9_0);
    }
  }

  return v2;
}

id CUIKBackgroundColorForCalendarColorWithOpaqueForStyle(void *a1, char a2, uint64_t a3, char a4)
{
  v7 = a1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v8 = MEMORY[0x1E69DC888];
  v9 = CUIKBundle();
  v10 = [v8 colorNamed:@"backgroundColorForMixingWithOccurrenceColors" inBundle:v9 compatibleWithTraitCollection:0];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __CUIKBackgroundColorForCalendarColorWithOpaqueForStyle_block_invoke;
  v14[3] = &unk_1E8399920;
  v17 = a3;
  v18 = a2;
  v11 = v7;
  v19 = a4;
  v15 = v11;
  v16 = &v20;
  CUIKPerformWithResolvedColorForDynamicColor(v10, a3, v14);
  v12 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v12;
}

void sub_1CAB28CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1CAB28CB8(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 272))(v2, v3);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v24 = v4;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v6 + 248);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1CAD4E4D4();
  v23 = &v23;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v7(v5, v6);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v25[3] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25[4] = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    (*(v13 + 32))(boxed_opaque_existential_1);
    v17 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v25);
    if (v19)
    {
      v20 = sub_1CAD4E064();
      if (v20 >= 1)
      {
        MEMORY[0x1EEE9AC00](v20);
        v22[2] = v17;
        v22[3] = v19;
        v22[4] = a1;
        v21 = sub_1CAC1C800(sub_1CAC11E3C, v22, v24);

        return v21;
      }
    }
  }

  return v24;
}

void __CUIKBackgroundColorForCalendarColorWithOpaqueForStyle_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  if (*(a1 + 56))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = dbl_1CAD57FA0[v3 == 2];
  }

  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E69DC888];
  v7 = a2;
  v8 = CUIKBundle();
  v9 = [v6 colorNamed:@"CalendarRed" inBundle:v8 compatibleWithTraitCollection:0];
  v10 = CUIKColorMatchesColor(v5, v9);

  v11 = *(a1 + 32);
  v12 = MEMORY[0x1E69DC888];
  v13 = CUIKBundle();
  v14 = [v12 colorNamed:@"CalendarPurple" inBundle:v13 compatibleWithTraitCollection:0];
  v15 = CUIKColorMatchesColor(v11, v14);

  if ((v10 || v15) && !(*(a1 + 56) & 1 | (v3 == 2)))
  {
    v4 = 0.35;
  }

  if ((*(a1 + 57) & (v3 == 2)) != 0)
  {
    v4 = 0.8;
  }

  v20 = [*(a1 + 32) colorWithAlphaComponent:dbl_1CAD57FB0[v3 == 2]];
  v16 = CUIKBlendColorsSourceOver(v7, v20);

  v17 = [v16 colorWithAlphaComponent:v4];
  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

id CUIKColorBarColor(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v9 = a4;
  v11 = CUIKBaseColor(a1, a2, a3, a4, a5);
  v12 = v11;
  if (a6)
  {
    if (!a3 || (a7 & 1) != 0)
    {
      v13 = [MEMORY[0x1E69DC888] clearColor];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((v9 & 1) == 0 && !a7)
  {
LABEL_7:
    v13 = v11;
    goto LABEL_9;
  }

  v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.78 alpha:1.0];
LABEL_9:
  v14 = v13;

  return v14;
}

uint64_t sub_1CAB299C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1CAB29AA4()
{
  result = qword_1EC4622F8;
  if (!qword_1EC4622F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4622F8);
  }

  return result;
}

unint64_t sub_1CAB29AF8(uint64_t a1)
{
  result = sub_1CAB29B20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CAB29B20()
{
  result = qword_1EDA5F7B0[0];
  if (!qword_1EDA5F7B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA5F7B0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1CAB29BB8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1CAD4DF94();

  return v6;
}

uint64_t sub_1CAB29C1C()
{
  v1 = [*v0 locationsWithoutPrediction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CAD4E214();

  return v3;
}

id sub_1CAB29C88@<X0>(void *a1@<X8>)
{
  result = [*v1 virtualConference];
  *a1 = result;
  return result;
}

id sub_1CAB29CF8@<X0>(void *a1@<X8>)
{
  result = [*v1 preferredLocation];
  *a1 = result;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1CAB2A53C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1CAD4D034();

    return sub_1CAD4C904();
  }

  else
  {
    sub_1CAD4C984();
    swift_getWitnessTable();
    sub_1CAD4CF94();
    sub_1CAD4C904();
    sub_1CAD4E4D4();
    swift_getWitnessTable();
    sub_1CAD4C984();
    swift_getWitnessTable();
    sub_1CAD4CF94();
    return sub_1CAD4C904();
  }
}

uint64_t sub_1CAB2A6A0()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1CAD4D034();
    sub_1CAD4C904();
  }

  else
  {
    sub_1CAD4C984();
    swift_getWitnessTable();
    sub_1CAD4CF94();
    sub_1CAD4C904();
    sub_1CAD4E4D4();
    swift_getWitnessTable();
    sub_1CAD4C984();
    swift_getWitnessTable();
    sub_1CAD4CF94();
    sub_1CAD4C904();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1CAB2A8B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for TravelTimeEstimate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TravelTimeEstimate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1CAB2A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CAB2AA18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CAB2AB58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4634D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4634E0);
  swift_getTupleTypeMetadata();
  sub_1CAD4DD64();
  swift_getWitnessTable();
  sub_1CAD4DA24();
  return swift_getWitnessTable();
}

uint64_t sub_1CAB2AC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CAB2AD54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CAB2AFF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB2B060()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463568);
  sub_1CABC0B50();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CAB2B0D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463748);
  swift_getTupleTypeMetadata2();
  sub_1CAD4DD64();
  swift_getWitnessTable();
  sub_1CAD4DA24();
  sub_1CAD4C904();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1CAB2B390()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAB2B438()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CAB2B478(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1CAB2B614(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1CAB2B7B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CAB2B7EC()
{
  v1 = type metadata accessor for TimeZoneChooser(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A20);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + *(v1 + 20);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678) + 32);
  v8 = sub_1CAD4C404();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C784();
    (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 64, v2 | 7);
}

uint64_t sub_1CAB2BAC4(__int128 *a1)
{
  v2 = a1[9];
  v9[8] = a1[8];
  v9[9] = v2;
  v9[10] = a1[10];
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[7];
  v9[6] = a1[6];
  v9[7] = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  sub_1CAB23A9C(v9, &v8, &qword_1EC463C00);
  return sub_1CABCE904(a1);
}

uint64_t sub_1CAB2BB54()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAB2BB8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CAB2BBD4()
{
  v1 = sub_1CAD4C0F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CAB2BCA0()
{
  v1 = sub_1CAD4C0F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CAB2BD78()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CAB2BDB0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 112);
  if (v1 >> 60 != 15)
  {
    sub_1CABB8C1C(*(v0 + 104), v1);
  }

  if (*(v0 + 144) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t sub_1CAB2BECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1CAB2BF0C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1CAB2BF44(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1CAB2BF7C(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1CAB2BFD4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1CAB2C004()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1CAB2C034()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1CAB2C090(uint64_t a1)
{
  result = sub_1CABDAEBC(&qword_1EC463D08, type metadata accessor for EventAttendeeModelObject);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CAB2C0E8(uint64_t a1)
{
  result = sub_1CABDAEBC(&qword_1EC463D20, type metadata accessor for EventOrganizerModelObject);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CAB2C1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E10);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CAB2C2E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E10);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

__n128 sub_1CAB2C4D0(__int128 *a1)
{
  v1 = a1[9];
  v7[8] = a1[8];
  v7[9] = v1;
  v7[10] = a1[10];
  v2 = a1[5];
  v7[4] = a1[4];
  v7[5] = v2;
  v3 = a1[7];
  v7[6] = a1[6];
  v7[7] = v3;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  sub_1CACF11BC(v7);
  return result;
}

uint64_t sub_1CAB2C608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CAD4CBB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CAB2C680()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1CAB2C7F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CACEFA4C(v1, v2);
}

uint64_t sub_1CAB2C878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1CAB2C944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CAB2CA14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CAB2CA88(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CAC36BD0(v1);
}

uint64_t sub_1CAB2CAD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4642C0);
  type metadata accessor for EKShareeWithData();
  type metadata accessor for EditShareeView();
  sub_1CABF178C();
  sub_1CABF252C(&qword_1EC4642F8, type metadata accessor for EKShareeWithData);
  sub_1CABF252C(&qword_1EC464300, type metadata accessor for EditShareeView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CAB2CD40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CAD4C0F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 32);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464428);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464430);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1CAB2CED0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1CAD4C0F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 32) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464428);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464430);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1CAB2D060(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CAD4C0F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[8] + 32);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464428);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464430);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[11];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E10);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[12];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1CAB2D298(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CAD4C0F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 32) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464428);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464430);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E10);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[12];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1CAB2D4D0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1CAD4C0F4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464428);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464430);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464438);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_1CAB2D6FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
    return result;
  }

  v8 = sub_1CAD4C0F4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464428);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464430);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464438);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[12];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1CAB2D92C()
{
  sub_1CAD4C994();
  sub_1CAD4C904();
  swift_getWitnessTable();
  sub_1CAD4C9B4();
  sub_1CAD4C904();
  sub_1CAC02468();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1CAD4CF44();
  sub_1CAD4C904();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1CAB2DA78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CAD4CC64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CAB2DB24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1CAD4CC64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CAB2DBC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CAD4CC64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1CAB2DC74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1CAD4CC64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CAB2DD20@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CAD4CBD4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1CAB2DD90()
{
  v1 = type metadata accessor for CUIKWeekRow(0);
  v23 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v22 = sub_1CAD4C7A4();
  v2 = *(v22 - 8);
  v18 = *(v2 + 80);
  v19 = *(v2 + 64);

  v21 = (v23 + 24) & ~v23;
  v3 = v0 + v21;
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v21, v4);
  v7 = v1[5];
  v8 = *(v5 + 48);
  if (!v8(v0 + v21 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v9 = v1[6];
  if (!v8(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  if (*(v3 + v1[9]))
  {
  }

  v10 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C374();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  v12 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1CAD4C964();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  v14 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1CAD4C6A4();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
  }

  v16 = (v21 + v20 + v18) & ~v18;
  (*(v2 + 8))(v0 + v16, v22);

  return MEMORY[0x1EEE6BDD0](v0, v16 + v19, v23 | v18 | 7);
}

uint64_t sub_1CAB2E168()
{
  v1 = type metadata accessor for CUIKWeekRow(0);
  v24 = *(*(v1 - 1) + 80);
  v2 = (v24 + 16) & ~v24;
  v3 = *(*(v1 - 1) + 64);
  v4 = *(type metadata accessor for WeekDayViewModel(0) - 8);
  v5 = *(v4 + 80);
  v23 = *(v4 + 64);
  v25 = v0;
  v6 = v0 + v2;
  v7 = sub_1CAD4C0F4();
  v8 = *(v7 - 8);
  v26 = *(v8 + 8);
  v26(v0 + v2, v7);
  v9 = v1[5];
  v10 = *(v8 + 48);
  if (!v10(v6 + v9, 1, v7))
  {
    v26(v6 + v9, v7);
  }

  v11 = v1[6];
  if (!v10(v6 + v11, 1, v7))
  {
    v26(v6 + v11, v7);
  }

  if (*(v6 + v1[9]))
  {
  }

  v12 = v3 + v5;
  v13 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1CAD4C374();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
  }

  v15 = v2 + v12;
  v16 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1CAD4C964();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
  }

  else
  {
  }

  v18 = v15 & ~v5;
  v19 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1CAD4C6A4();
    (*(*(v20 - 8) + 8))(v6 + v19, v20);
  }

  else
  {
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0);
  if (!(*(*(v21 - 8) + 48))(v25 + v18, 1, v21))
  {
    v26(v25 + v18 + *(v21 + 160), v7);
  }

  return MEMORY[0x1EEE6BDD0](v25, v18 + v23, v24 | v5 | 7);
}

uint64_t sub_1CAB2E584()
{
  v1 = type metadata accessor for CUIKWeekLabelRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_1CAD4C7A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;
  v9 = sub_1CAD4C0F4();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C374();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  v12 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1CAD4C964();
    (*(*(v13 - 8) + 8))(v8 + v12, v13);
  }

  else
  {
  }

  v14 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v14, v4);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v7, v2 | v6 | 7);
}

uint64_t sub_1CAB2E830@<X0>(void *a1@<X8>)
{
  result = sub_1CAD4CAA4();
  *a1 = v3;
  return result;
}

uint64_t sub_1CAB2E884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CAB2E8FC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1CAB2E98C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4644C0);
  sub_1CAC03B68();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CAB2EA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1CAB2EB10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

BOOL sub_1CAB2EC38@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1CAC89054();
  *a1 = result;
  return result;
}

BOOL sub_1CAB2EC90@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1CAC87E9C();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB2ECF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CAC88DA4();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB2ED50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CAC88868();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB2EDA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CAC852FC();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB2EEE0()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1CAB2EF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 92);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CAB2EFCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 92);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CAB2F088@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CAD4CB14();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB2F0F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CAC3671C(v1, v2);
}

uint64_t sub_1CAB2F188()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CAB2F22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CAB2F2A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CAB2F320()
{
  v1 = *(type metadata accessor for SingleAttendeeInfoView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650B0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB2F400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465100);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CAB2F4CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465100);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1CAB2F5E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CAC3355C(v1);
}

uint64_t sub_1CAB2F69C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CAB2F6DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CAB2F72C()
{
  v1 = sub_1CAD4BFF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CAB2F7F0()
{
  v1 = sub_1CAD4BFF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CAB2F8C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CAB2F93C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CAB2F980()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CAB2F9C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CAB2FA14()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CAB2FA80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB2FAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAB2FB6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CAB2FBA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UIAlarm(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CAB2FC50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UIAlarm(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CAB2FCF8()
{
  v1 = type metadata accessor for AlarmPicker();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  v6 = type metadata accessor for EventAlarmModelObject();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    type metadata accessor for EventAlarmTrigger();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_1CAD4C0F4();
      (*(*(v7 - 8) + 8))(v5, v7);
    }
  }

  type metadata accessor for UIAlarm(0);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB2FE70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4654D8);
  sub_1CAB23B0C(&qword_1EC4654E0, &qword_1EC4654D8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CAB2FF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1CAB30058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CAB301A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB3022C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CABCDA6C();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB30280@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CABCDE4C();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB302D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CABCD788();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB30328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CAB303A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CAB304CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventAttachmentModelObject();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CAB30588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EventAttachmentModelObject();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

id sub_1CAB30640@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  return v2;
}

void sub_1CAB3064C(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *a1;

  *(a2 + 16) = v3;
}

uint64_t sub_1CAB307F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAD4BC94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CAB308B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CAD4BC94();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CAB30980(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CACF4540(v1, v2);
}

uint64_t sub_1CAB309D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAB30A18()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CAB30A60()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAB30A98()
{
  MEMORY[0x1CCAA94F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAB30AD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CAB30B30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1CAB30B90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CAB30BF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CAB30C34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CAB30C84()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CAB30CCC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B58);
  swift_getAssociatedTypeWitness();
  type metadata accessor for PickerMenuGroup();
  sub_1CAD4E294();
  sub_1CAD4E294();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B60);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1CAD4DB84();
  sub_1CAD4DBE4();
  swift_getWitnessTable();
  sub_1CAD4DB84();
  sub_1CAB23B0C(&qword_1EC465B68, &qword_1EC465B60);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1CAD4DA54();
  sub_1CAD4C8B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4644E0);
  sub_1CAD4C904();
  sub_1CAD4DB84();
  swift_getWitnessTable();
  sub_1CAD4DA54();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1CAD4C904();
  sub_1CAD4CE34();
  sub_1CAD4E4D4();
  sub_1CAD4CE34();
  swift_getTupleTypeMetadata2();
  sub_1CAD4DD64();
  swift_getWitnessTable();
  sub_1CAD4DA24();
  return swift_getWitnessTable();
}

uint64_t sub_1CAB310F8()
{
  sub_1CAD4C904();
  sub_1CAC2F5E0();
  return swift_getWitnessTable();
}

uint64_t sub_1CAB3115C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB311CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAB31234()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CAB3126C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CAD4CA24();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB312C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465BF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB313D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CAB31444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CAB3151C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_1CAC8C358(v4, v5);
}

uint64_t sub_1CAB3156C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  *a2 = v4;
  a2[1] = v5;
  return sub_1CAC8C358(v4, v5);
}

uint64_t sub_1CAB315BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1CAB31604(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_1CAB31818@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return sub_1CAC8CE3C(v5);
}

uint64_t sub_1CAB31878()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1CAB31904()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4643A0);
  sub_1CABF25D0();
  sub_1CAD4C864();
  return swift_getWitnessTable();
}

uint64_t sub_1CAB319E4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAB31A1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CAB31A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662A8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CAB31ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662A8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CAB31B58()
{
  v1 = *(type metadata accessor for AttendeeStatusListView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662A8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB31C30()
{
  v1 = *(type metadata accessor for AttendeeStatusListView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662A8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1CAB31D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB31DDC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663D0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[10];

  v6 = *(type metadata accessor for EventOrganizerModelObject(0) + 28);
  v7 = sub_1CAD4BFF4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB31F90()
{
  v1 = v0;
  v2 = type metadata accessor for ModernPersonCell(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  swift_weakDestroy();

  v6 = v0 + v4 + *(v2 + 28);

  v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466300) + 32);
  v8 = type metadata accessor for DisplayOrganizerPerson(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v13 = v5;

    v9 = *(type metadata accessor for EventOrganizerModelObject(0) + 28);
    v10 = sub_1CAD4BFF4();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v5 = v13;
  }

  return MEMORY[0x1EEE6BDD0](v1, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1CAB32248()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAB32280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayPerson(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CAB322EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayPerson(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CAB32378()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CAB323C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1CAB3240C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4665C0);
  sub_1CAD4C904();
  sub_1CAB23B0C(&qword_1EC4665E0, &qword_1EC4665C0);
  return swift_getWitnessTable();
}

uint64_t sub_1CAB324C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CAB32584(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CAB3263C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466670);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CAB32760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466670);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1CAB32C7C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CACF6A5C(v1);
}

id sub_1CAB32CAC@<X0>(void *a1@<X8>)
{
  result = sub_1CACAA368();
  *a1 = result;
  return result;
}

void sub_1CAB32CD8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewController);
  *(*a2 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewController) = *a1;
  v3 = v2;
}

uint64_t sub_1CAB32D28()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAB32D78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CAB32DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CAB32E8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CAB32F68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB32FD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1CAB32FE8()
{
  v1 = sub_1CAD4BFF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for AttachmentEditor() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1CAB331BC()
{
  v1 = *(type metadata accessor for AttachmentEditor() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB33398()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1CAB333D0@<X0>(void *a1@<X8>)
{
  result = sub_1CACB3E54();
  *a1 = result;
  return result;
}

void sub_1CAB333FC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl____lazy_storage___viewController);
  *(*a2 + OBJC_IVAR____TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl____lazy_storage___viewController) = *a1;
  v3 = v2;
}

uint64_t sub_1CAB3344C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CAB334C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CAB3357C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAB335FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1CAB336C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CAB33774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1CAB3383C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CAB338EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464428);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1CAB33A88(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464428);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1CAB33C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1CAB33D48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_1CAB33E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CAB33E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CAB33F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventAlarmTrigger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CAB34008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EventAlarmTrigger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1CAB340F4()
{
  v1 = (type metadata accessor for CUIKDateView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1CAD4C0F4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1CAD4C374();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB34288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAD4C0F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 64);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464428);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CAB343BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CAD4C0F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 64) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464428);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CAB344F4()
{
  v1 = (type metadata accessor for CUIKDateView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*v1 + 64);
  v4 = sub_1CAD4C7A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_1CAD4C0F4();
  (*(*(v8 - 8) + 8))(v0 + v3, v8);

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1CAD4C374();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = (v3 + v13 + v6) & ~v6;
  (*(v5 + 8))(v0 + v11, v4);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v7, v2 | v6 | 7);
}

uint64_t sub_1CAB34750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CAB34818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CAB34918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB34988()
{
  v1 = *(type metadata accessor for FamilyCalendarColorSelectionView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1CAD4C784();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB34B34()
{
  v1 = *(type metadata accessor for CreateFamilyCalendarFlow() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1CAD4C784();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB34CB0@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1CCAA5DB0]();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB34D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAB34D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CAB34E38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CAB34EFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467538);
  type metadata accessor for CreateFamilyCalendarViewModel();
  sub_1CACDF3D0();
  sub_1CACDF328(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CAB34FB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CAB34FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4646C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464DD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467638);
  swift_getTupleTypeMetadata();
  sub_1CAD4DD64();
  swift_getWitnessTable();
  sub_1CAD4DA24();
  return swift_getWitnessTable();
}

uint64_t sub_1CAB350CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CAB35194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1CAB352E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CACFAFA8(v1);
}

uint64_t sub_1CAB35318(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CACFAC38(v1, v2);
}

uint64_t sub_1CAB3575C()
{
  v1 = type metadata accessor for EventCalendarModelObject();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  if (*(v0 + v3 + 112))
  {
  }

  v6 = *(v1 + 92);
  v7 = sub_1CAD4BFF4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB35AC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1CABED120(*a1, v2);
  return sub_1CACF15E4(v1, v2);
}

uint64_t sub_1CAB35B0C(__int128 *a1)
{
  v2 = a1[9];
  v9[8] = a1[8];
  v9[9] = v2;
  v9[10] = a1[10];
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[7];
  v9[6] = a1[6];
  v9[7] = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  sub_1CAB23A9C(v9, &v8, &qword_1EC463C00);
  return sub_1CACF0E38(a1);
}

uint64_t sub_1CAB35C90()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CAB35CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CAB35E08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A88);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CAB35F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB35FA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAB36004()
{
  v1 = type metadata accessor for LocationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1CAD4C7C4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 80, v2 | 7);
}

uint64_t sub_1CAB361EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D68);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1CAB36388(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D68);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D70);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1CAB3653C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationSearchResult(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CAB3666C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocationSearchResult(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CAB367E0()
{
  v1 = type metadata accessor for LocationChooser.ResultView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(type metadata accessor for LocationSearchResult(0) + 32);
  v6 = type metadata accessor for LocationModelObject(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
      }
    }

    else
    {

      v16 = *(v5 + 72);
      if (v16 >> 60 != 15)
      {
        sub_1CABB8C1C(*(v5 + 64), v16);
      }

      if (*(v5 + 104) != 1)
      {
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
LABEL_12:

      goto LABEL_2;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_2;
      }

      goto LABEL_12;
    }

    v21 = type metadata accessor for EventVirtualConferenceModelObject(0);
    v10 = *(v21 + 40);
    v11 = sub_1CAD4BFF4();
    v12 = *(v11 - 8);
    v18 = v10;
    v20 = *(v12 + 48);
    v13 = v5 + v10;
    v14 = v11;
    if (!v20(v13, 1, v11))
    {
      (*(v12 + 8))(v5 + v18, v14);
    }

    v19 = v12;
    v15 = *(v21 + 44);
    if (!v20(v5 + v15, 1, v14))
    {
      (*(v19 + 8))(v5 + v15, v14);
    }
  }

LABEL_2:

  v7 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1CAD4C784();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB36BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1CAB36CC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E38);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1CAB36D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468060);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1CAB36E54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468060);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CAB36F04()
{
  v1 = *(type metadata accessor for LocationSearchResults(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = type metadata accessor for LocationSearchResult(0);
  if ((*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    goto LABEL_3;
  }

  v7 = v5 + *(v6 + 32);
  v8 = type metadata accessor for LocationModelObject(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    goto LABEL_3;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
      }
    }

    else
    {

      v16 = *(v7 + 72);
      if (v16 >> 60 != 15)
      {
        sub_1CABB8C1C(*(v7 + 64), v16);
      }

      if (*(v7 + 104) != 1)
      {
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
LABEL_10:

      goto LABEL_3;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    v21 = type metadata accessor for EventVirtualConferenceModelObject(0);
    v10 = *(v21 + 40);
    v11 = sub_1CAD4BFF4();
    v12 = *(v11 - 8);
    v18 = v10;
    v20 = *(v12 + 48);
    v13 = v7 + v10;
    v14 = v11;
    if (!v20(v13, 1, v11))
    {
      (*(v12 + 8))(v7 + v18, v14);
    }

    v19 = v12;
    v15 = *(v21 + 44);
    if (!v20(v7 + v15, 1, v14))
    {
      (*(v19 + 8))(v7 + v15, v14);
    }
  }

LABEL_3:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAB3726C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CAB37358@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for EventModelObject();
  *a2 = *(a1 + *(result + 108)) != 0;
  return result;
}

uint64_t sub_1CAB373A4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1CAD4C0F4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_19:
    v18 = *(v10 + 48);

    return v18(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_19;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[15];
    goto LABEL_19;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[26];
    goto LABEL_19;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[32];
    goto LABEL_19;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[34];
    goto LABEL_19;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a3[36];
    goto LABEL_19;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[37];

  return v20(v21, a2, v19);
}

uint64_t sub_1CAB376CC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1CAD4C0F4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_17:
    v18 = *(v10 + 56);

    return v18(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_17;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_17;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[26];
    goto LABEL_17;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[32];
    goto LABEL_17;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[34];
    goto LABEL_17;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[36];
    goto LABEL_17;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v20 = *(*(v19 - 8) + 56);
  v21 = v5 + a4[37];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1CAB379F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1CAB37ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1CAB37B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB37C1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB37C94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CAD4CA44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CAB37E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAB37EA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CAD4CAF4();
  *a1 = result;
  return result;
}

uint64_t sub_1CAB37F00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463760);
  sub_1CAD4C904();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4687F0);
  sub_1CAD4C904();
  sub_1CAD4C904();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4687F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468800);
  swift_getTupleTypeMetadata3();
  sub_1CAD4DD64();
  swift_getWitnessTable();
  sub_1CAD4DA94();
  sub_1CAD4C904();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1CAB380F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t CUIKSolariumIconEnabled()
{
  if (CUIKSolariumIconEnabled_onceToken != -1)
  {
    CUIKSolariumIconEnabled_cold_1();
  }

  return CUIKSolariumIconEnabled_solariumIconEnabled;
}

uint64_t __CUIKSolariumIconEnabled_block_invoke()
{
  result = CalSystemSolariumEnabled();
  if (result)
  {
    result = [MEMORY[0x1E69A8A10] instancesRespondToSelector:sel_initWithImages_];
    if (result)
    {
      result = [MEMORY[0x1E69A8A10] instancesRespondToSelector:sel_setHasLightEffects_];
      if (result)
      {
        CUIKSolariumIconEnabled_solariumIconEnabled = 1;
      }
    }
  }

  return result;
}

void sub_1CAB3F500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CUIKInvitationTitleColor()
{
  if (CUIKInvitationTitleColor_onceToken != -1)
  {
    CUIKInvitationTitleColor_cold_1();
  }

  v1 = CUIKInvitationTitleColor_sInvitationTitleColor;

  return v1;
}

void __CUIKInvitationTitleColor_block_invoke()
{
  v0 = MEMORY[0x1E69DC888];
  v3 = CUIKBundle();
  v1 = [v0 colorNamed:@"calendarInvitationTitleColor" inBundle:v3 compatibleWithTraitCollection:0];
  v2 = CUIKInvitationTitleColor_sInvitationTitleColor;
  CUIKInvitationTitleColor_sInvitationTitleColor = v1;
}

id CUIKAppTintColor()
{
  if (CUIKAppTintColor_onceToken[0] != -1)
  {
    CUIKAppTintColor_cold_1();
  }

  v1 = CUIKAppTintColor_sAppTintColor;

  return v1;
}

uint64_t __CUIKAppTintColor_block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] systemRedColor];
  v1 = CUIKAppTintColor_sAppTintColor;
  CUIKAppTintColor_sAppTintColor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id CUIKBirthdayMonthCalendarColor()
{
  if (CUIKBirthdayMonthCalendarColor_onceToken != -1)
  {
    CUIKBirthdayMonthCalendarColor_cold_1();
  }

  v1 = CUIKBirthdayMonthCalendarColor_sBirthdayMonthCalendarColor;

  return v1;
}

void __CUIKBirthdayMonthCalendarColor_block_invoke()
{
  v0 = MEMORY[0x1E69DC888];
  v3 = CUIKBundle();
  v1 = [v0 colorNamed:@"birthdayMonthCalendarColor" inBundle:v3 compatibleWithTraitCollection:0];
  v2 = CUIKBirthdayMonthCalendarColor_sBirthdayMonthCalendarColor;
  CUIKBirthdayMonthCalendarColor_sBirthdayMonthCalendarColor = v1;
}

id CUIKAllDayBackgroundColor()
{
  v0 = CUIKAllDayBackgroundColor_color;
  if (!CUIKAllDayBackgroundColor_color)
  {
    v1 = [MEMORY[0x1E69DC888] cuik_systemBackgroundColor];
    v2 = CUIKAllDayBackgroundColor_color;
    CUIKAllDayBackgroundColor_color = v1;

    v0 = CUIKAllDayBackgroundColor_color;
  }

  return v0;
}

id CUIKSelectedNeedsReplyBackgroundColor()
{
  v0 = CUIKSelectedNeedsReplyBackgroundColor_color;
  if (!CUIKSelectedNeedsReplyBackgroundColor_color)
  {
    v1 = MEMORY[0x1E69DC888];
    v2 = CUIKBundle();
    v3 = [v1 colorNamed:@"selectedNeedsReplyBGColor" inBundle:v2 compatibleWithTraitCollection:0];
    v4 = CUIKSelectedNeedsReplyBackgroundColor_color;
    CUIKSelectedNeedsReplyBackgroundColor_color = v3;

    v0 = CUIKSelectedNeedsReplyBackgroundColor_color;
  }

  return v0;
}

id CUIKNeedsReplyBackgroundColor()
{
  v0 = CUIKNeedsReplyBackgroundColor_color;
  if (!CUIKNeedsReplyBackgroundColor_color)
  {
    v1 = MEMORY[0x1E69DC888];
    v2 = CUIKBundle();
    v3 = [v1 colorNamed:@"needsReplyBGColor" inBundle:v2 compatibleWithTraitCollection:0];
    v4 = CUIKNeedsReplyBackgroundColor_color;
    CUIKNeedsReplyBackgroundColor_color = v3;

    v0 = CUIKNeedsReplyBackgroundColor_color;
  }

  return v0;
}

id CUIKSelectedNeedsReplyStripeColor()
{
  v0 = CUIKSelectedNeedsReplyStripeColor_color;
  if (!CUIKSelectedNeedsReplyStripeColor_color)
  {
    v1 = MEMORY[0x1E69DC888];
    v2 = CUIKBundle();
    v3 = [v1 colorNamed:@"selectedNeedsReplyStripeColor" inBundle:v2 compatibleWithTraitCollection:0];
    v4 = CUIKSelectedNeedsReplyStripeColor_color;
    CUIKSelectedNeedsReplyStripeColor_color = v3;

    v0 = CUIKSelectedNeedsReplyStripeColor_color;
  }

  return v0;
}

id CUIKNeedsReplyStripeColor()
{
  v0 = CUIKNeedsReplyStripeColor_color;
  if (!CUIKNeedsReplyStripeColor_color)
  {
    v1 = MEMORY[0x1E69DC888];
    v2 = CUIKBundle();
    v3 = [v1 colorNamed:@"needsReplyStripeColor" inBundle:v2 compatibleWithTraitCollection:0];
    v4 = CUIKNeedsReplyStripeColor_color;
    CUIKNeedsReplyStripeColor_color = v3;

    v0 = CUIKNeedsReplyStripeColor_color;
  }

  return v0;
}

id CUIKSelectedTentativeStripeColor()
{
  v0 = CUIKSelectedTentativeStripeColor_color;
  if (!CUIKSelectedTentativeStripeColor_color)
  {
    v1 = MEMORY[0x1E69DC888];
    v2 = CUIKBundle();
    v3 = [v1 colorNamed:@"selectedTentativeStripeColor" inBundle:v2 compatibleWithTraitCollection:0];
    v4 = CUIKSelectedTentativeStripeColor_color;
    CUIKSelectedTentativeStripeColor_color = v3;

    v0 = CUIKSelectedTentativeStripeColor_color;
  }

  return v0;
}

BOOL CUIKIsDarkColor(void *a1)
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0;
  v7 = 0.0;
  v1 = a1;
  [v1 cuik_getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v2 = v8 * 0.587000012 + v9 * 0.298999995 + v7 * 0.114;
  [v1 cuik_alphaComponent];
  v4 = v3;

  return v2 * (1.0 / v4) < 0.2;
}

double CUIKLuminance(void *a1)
{
  v5 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v2 = 0;
  [a1 cuik_getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  return v4 * 0.587000012 + v5 * 0.298999995 + v3 * 0.114;
}

BOOL CUIKColorMatchesColor(void *a1, void *a2)
{
  v10 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v3 = a2;
  [a1 cuik_getRed:&v10 green:&v9 blue:&v8 alpha:0];
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  [v3 cuik_getRed:&v7 green:&v6 blue:&v5 alpha:0];

  return v10 == v7 && v9 == v6 && v8 == v5;
}

id CUIKOccurrenceSelectedTextColor(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = v4;
  if ((a3 & 1) != 0 || (v14 = 0.0, v15 = 0.0, v12 = 0, v13 = 0.0, [v4 cuik_getRed:&v15 green:&v14 blue:&v13 alpha:&v12], v6 = v14 * 0.587000012 + v15 * 0.298999995 + v13 * 0.114, objc_msgSend(v5, "cuik_alphaComponent"), v6 * (1.0 / v7) <= 0.85))
  {
    v10 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] blackColor];
    v9 = [v8 colorWithAlphaComponent:0.6];
    v10 = CUIKBlendColorsSourceOver(v5, v9);
  }

  return v10;
}

id CUIKStrikethroughColor(int a1)
{
  if (a1)
  {
    [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.75];
  }

  else
  {
    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }
  v1 = ;

  return v1;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CUIKSecondaryTextColorForCalendarColorForStyle_block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  v10 = CUIKAdjustedColorForColor(v3, v4);
  v6 = [v5 colorWithAlphaComponent:0.2];

  v7 = CUIKBlendColorsSourceOver(v10, v6);
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

id CUIKLightStripeColorForColor(void *a1)
{
  v27 = 0.0;
  v28 = 0.0;
  v26 = 0.0;
  v1 = a1;
  [v1 cuik_getRed:&v28 green:&v27 blue:&v26 alpha:0];
  v2 = MEMORY[0x1E69DC888];
  v3 = CUIKBundle();
  v4 = [v2 colorNamed:@"CalendarRed" inBundle:v3 compatibleWithTraitCollection:0];
  v5 = CUIKColorMatchesColor(v1, v4);

  v6 = MEMORY[0x1E69DC888];
  v7 = CUIKBundle();
  v8 = [v6 colorNamed:@"CalendarBlue" inBundle:v7 compatibleWithTraitCollection:0];
  v9 = CUIKColorMatchesColor(v1, v8);

  v10 = MEMORY[0x1E69DC888];
  v11 = CUIKBundle();
  v12 = [v10 colorNamed:@"CalendarPurple" inBundle:v11 compatibleWithTraitCollection:0];
  v13 = CUIKColorMatchesColor(v1, v12);

  v14 = MEMORY[0x1E69DC888];
  v15 = CUIKBundle();
  v16 = [v14 colorNamed:@"CalendarYellow" inBundle:v15 compatibleWithTraitCollection:0];
  v17 = CUIKColorMatchesColor(v1, v16);

  v18 = MEMORY[0x1E69DC888];
  v19 = CUIKBundle();
  v20 = [v18 colorNamed:@"CalendarGreen" inBundle:v19 compatibleWithTraitCollection:0];
  v21 = CUIKColorMatchesColor(v1, v20);

  v22 = 0.133333333;
  if (v21)
  {
    v22 = 0.07;
  }

  if (v17)
  {
    v22 = 0.05;
  }

  if (v5 || v9 || v13)
  {
    v23 = 0.2;
  }

  else
  {
    v23 = v22;
  }

  v27 = 1.0 - v23 + v27 * v23;
  v28 = 1.0 - v23 + v28 * v23;
  v26 = 1.0 - v23 + v26 * v23;
  v24 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];

  return v24;
}

double CUIKGetYUVA(void *a1, double *a2, double *a3, double *a4, uint64_t a5)
{
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0.0;
  [a1 cuik_getRed:&v11 green:&v10 blue:&v9 alpha:a5];
  if (a2)
  {
    result = v10 * 0.587000012 + v11 * 0.298999995 + v9 * 0.114;
    *a2 = result;
  }

  if (a3)
  {
    result = v10 * -0.331999987 + v11 * -0.169 + v9 * 0.5 + 0.5;
    *a3 = result;
  }

  if (a4)
  {
    result = v10 * -0.419 + v11 * 0.5 + v9 * -0.0812999979 + 0.5;
    *a4 = result;
  }

  return result;
}

id CUIKAdjustColorToMinimumLuminance(void *a1, double a2)
{
  v3 = a1;
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  CUIKGetYUVA(v3, &v9, &v8, &v7, &v6);
  v4 = v3;
  if (v9 < a2)
  {
    v9 = a2;
    v4 = [MEMORY[0x1E69DC888] colorWithRed:a2 + v7 * 1.40750003 + -0.703750014 green:a2 + v8 * -0.345499992 + v7 * -0.716899991 + 0.531199992 blue:a2 + v8 * 1.77900004 + -0.889500022 alpha:v6];
  }

  return v4;
}

id CUIKAdjustColorLuminanceIfNeeded(void *a1)
{
  v1 = a1;
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0;
  v13 = 0.0;
  [v1 cuik_getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
  HIDWORD(v3) = HIDWORD(v13);
  HIDWORD(v4) = 1069362970;
  v5 = v14 * 0.587000012 + v15 * 0.298999995 + v13 * 0.114;
  v6 = v1;
  if (v5 < 0.5)
  {
    v7 = v5 + v5;
    LODWORD(v4) = 1038174126;
    LODWORD(v2) = 1061494456;
    LODWORD(v3) = 1.0;
    v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :v3 :v4 :v2];
    *&v9 = v7;
    [v8 _solveForInput:v9];
    v6 = CUIKAdjustColorToMinimumLuminance(v1, v10 * 0.5);
  }

  return v6;
}

BOOL CUIKColorIsBlack(void *a1)
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0;
  [a1 cuik_getRed:&v6 green:&v5 blue:&v4 alpha:&v3];
  v1 = v6 < 0.05;
  if (v5 >= 0.05)
  {
    v1 = 0;
  }

  return v4 < 0.05 && v1;
}

id CUIKAdjustedColorForBackgroundColor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if (CUIKColorIsWhite(v5))
  {
    v6 = v5;
    if (CUIKColorIsWhite(v4))
    {
      v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
    }
  }

  if (CUIKColorIsBlack(v5) && CUIKColorIsBlack(v4))
  {
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.25 alpha:1.0];

    v6 = v7;
  }

  return v6;
}

id CUIKSummaryColorForColor(void *a1, uint64_t a2)
{
  v3 = CUIKAdjustedColorForColor(a1, a2);
  v4 = v3;
  if (a2 == 2)
  {
    CUIKColorDarkenedToPercentageWithFinalAlpha(v3, 0.7);
  }

  else
  {
    CUIKColorLightenedToPercentageWithFinalAlpha(v3, 0.5, 1.0);
  }
  v5 = ;

  return v5;
}

id CUIKColorDarkenedToPercentageWithFinalAlpha(void *a1, double a2)
{
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  [a1 cuik_getRed:&v7 green:&v6 blue:&v5 alpha:0];
  v6 = v6 * a2;
  v7 = v7 * a2;
  v5 = v5 * a2;
  v3 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];

  return v3;
}

id CUIKColorLightenedToPercentageWithFinalAlpha(void *a1, double a2, double a3)
{
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0.0;
  [a1 cuik_getRed:&v10 green:&v9 blue:&v8 alpha:0];
  v5 = 1.0 - a2 / a3;
  v9 = v5 + v9 * (a2 / a3);
  v10 = v5 + v10 * (a2 / a3);
  v8 = v5 + v8 * (a2 / a3);
  v6 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];

  return v6;
}

void __CUIKDeclinedEventBaseColor_block_invoke()
{
  v0 = MEMORY[0x1E69DC888];
  v3 = CUIKBundle();
  v1 = [v0 colorNamed:@"declinedEventBaseColor" inBundle:v3 compatibleWithTraitCollection:0];
  v2 = CUIKDeclinedEventBaseColor_sDeclinedEventBaseColor;
  CUIKDeclinedEventBaseColor_sDeclinedEventBaseColor = v1;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CAB43600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB469D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CAB4A968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _CUIKDisplayStringForNotificationIdentity(void *a1, int a2, int a3, uint64_t a4)
{
  v7 = a1;
  if (a3)
  {
    [CUIKAttendeeUtils displayShortStringForIdentityWithDecomposedName:v7 useAddressAsFallback:1 contactIdentifier:a4 outFirstName:0 outLastName:0 outDepartment:0];
  }

  else
  {
    [CUIKAttendeeUtils displayStringForIdentityWithDecomposedName:v7 useAddressAsFallback:1 contactIdentifier:a4 outFirstName:0 outLastName:0 outDepartment:0];
  }
  v8 = ;
  if (!v8)
  {
    v9 = CUIKBundle();
    v10 = v9;
    if (a2)
    {
      v11 = @"Somebody";
    }

    else
    {
      v11 = @"somebody";
    }

    v8 = [v9 localizedStringForKey:v11 value:&stru_1F4AA8958 table:0];
  }

  return v8;
}

__CFString *CUIKMessageStringForNotification(void *a1)
{
  v1 = [a1 allDescriptionStringsWithOptions:1];
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
  }

  else
  {
    v2 = &stru_1F4AA8958;
  }

  return v2;
}

id CUIKMessageStringForEventInvitationNotification(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 type] != 3)
  {
    if ([v3 type] == 2)
    {
      v16 = 0;
    }

    else
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = [v3 startDate];
      v20 = CFLocaleCopyCurrent();
      v21 = CFDateFormatterCreate(0, v20, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
      Current = CFAbsoluteTimeGetCurrent();
      StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v21, Current);
      if (StringWithAbsoluteTime)
      {
        CFRelease(StringWithAbsoluteTime);
      }

      CFRelease(v20);
      Locale = CFDateFormatterGetLocale(v21);
      DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, @"EEEEMMMMdjma", 0, Locale);
      CFDateFormatterSetFormat(v21, DateFormatFromTemplate);
      CFRelease(DateFormatFromTemplate);
      StringWithDate = CFDateFormatterCreateStringWithDate(0, v21, v19);
      CFRelease(v21);
      v16 = [v18 stringWithFormat:@"%@\n", StringWithDate];

      v27 = [v3 location];
      if (v27)
      {
        v28 = v27;
        v29 = [v3 location];
        v30 = [v29 length];

        if (v30)
        {
          v31 = MEMORY[0x1E696AEC0];
          v32 = [v3 location];
          v33 = [v31 stringWithFormat:@"%@%@\n", v16, v32];

          v16 = v33;
        }
      }
    }

    goto LABEL_100;
  }

  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v7 = [v3 attendees];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __CUIKMessageStringForEventInvitationNotification_block_invoke;
  v80[3] = &unk_1E839A020;
  v8 = v4;
  v81 = v8;
  v9 = v5;
  v82 = v9;
  v10 = v6;
  v83 = v10;
  v84 = &v85;
  [v7 enumerateObjectsUsingBlock:v80];

  if (*(v86 + 24) == 1)
  {
    v11 = [v3 owner];
    v12 = _CUIKDisplayStringForNotificationIdentity(v11, 1, 1, a2);

    v13 = v12;
    v14 = CUIKBundle();
    v15 = [v14 localizedStringForKey:@"%@ declined to move the event to your proposed time" value:&stru_1F4AA8958 table:0];

    v16 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v15, v13];
    v17 = v13;
LABEL_4:

LABEL_97:
    goto LABEL_98;
  }

  if ([v8 count] == 1 && !objc_msgSend(v9, "count") && !objc_msgSend(v10, "count"))
  {
    v17 = [v8 firstObject];
    if (![v3 isLocationDecline])
    {
      v15 = _CUIKDisplayStringForNotificationIdentity(v17, 1, 1, a2);
      v38 = CalInviteeDeclinedLocalizedString(v15);
      goto LABEL_96;
    }

    v15 = [v17 name];
    v50 = MEMORY[0x1E696AEC0];
    v13 = CUIKBundle();
    v51 = [v13 localizedStringForKey:@"%@ is unavailable" value:&stru_1F4AA8958 table:0];
    v52 = [v50 localizedStringWithFormat:v51, v15];
    goto LABEL_94;
  }

  if (![v8 count] && objc_msgSend(v9, "count") == 1 && !objc_msgSend(v10, "count"))
  {
    v17 = [v9 firstObject];
    v15 = _CUIKDisplayStringForNotificationIdentity(v17, 1, 1, a2);
    v53 = [v17 comment];
    v13 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:v53];

    v36 = CalInviteeCommentedLocalizedString(v15, v13);
    goto LABEL_89;
  }

  if (![v8 count] && !objc_msgSend(v9, "count") && objc_msgSend(v10, "count") == 1)
  {
    v17 = [v10 firstObject];
    v15 = _CUIKDisplayStringForNotificationIdentity(v17, 1, 1, a2);
    v34 = +[CUIKDateDescriptionGenerator sharedGenerator];
    v35 = [v17 proposedStartDate];
    v13 = [v34 dateStringForDate:v35 allDay:0 standalone:0 shortFormat:0];

    v36 = CalInviteeProposedNewTimeLocalizedString(v15, v13);
LABEL_89:
    v16 = v36;
    goto LABEL_4;
  }

  if ([v8 count] < 2 || objc_msgSend(v9, "count") || objc_msgSend(v10, "count"))
  {
    if (![v8 count] && objc_msgSend(v9, "count") >= 2 && !objc_msgSend(v10, "count"))
    {
      v57 = MEMORY[0x1E696AEC0];
      v17 = CUIKBundle();
      v15 = [v17 localizedStringForKey:@"invitees_commented" value:&stru_1F4AA8958 table:0];
      v38 = [v57 localizedStringWithFormat:v15, objc_msgSend(v9, "count")];
      goto LABEL_96;
    }

    if (![v8 count] && !objc_msgSend(v9, "count") && objc_msgSend(v10, "count") >= 2)
    {
      v37 = MEMORY[0x1E696AEC0];
      v17 = CUIKBundle();
      v15 = [v17 localizedStringForKey:@"invitees_proposed_time" value:&stru_1F4AA8958 table:0];
      v38 = [v37 localizedStringWithFormat:v15, objc_msgSend(v10, "count")];
LABEL_96:
      v16 = v38;
      goto LABEL_97;
    }

    if ([v8 count] == 1 && objc_msgSend(v9, "count") == 1 && !objc_msgSend(v10, "count"))
    {
      v54 = [v8 firstObject];
      v55 = [v9 firstObject];

      if (v54 == v55)
      {
        v17 = [v8 firstObject];
        v15 = _CUIKDisplayStringForNotificationIdentity(v17, 1, 1, a2);
        v58 = [v17 comment];
        v13 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:v58];

        v36 = CalInviteeDeclinedWithCommentLocalizedString(v15, v13);
        goto LABEL_89;
      }
    }

    else
    {
      if ([v8 count] == 1 && !objc_msgSend(v9, "count") && objc_msgSend(v10, "count") == 1)
      {
        v39 = [v8 firstObject];
        v40 = [v10 firstObject];

        if (v39 == v40)
        {
          v17 = [v8 firstObject];
          v15 = _CUIKDisplayStringForNotificationIdentity(v17, 1, 1, a2);
          v68 = +[CUIKDateDescriptionGenerator sharedGenerator];
          v69 = [v17 proposedStartDate];
          v13 = [v68 dateStringForDate:v69 allDay:0 standalone:0 shortFormat:0];

          v36 = CalInviteeDeclinedAndProposedNewTimeLocalizedString(v15, v13);
          goto LABEL_89;
        }

        goto LABEL_39;
      }

      if (![v8 count] && objc_msgSend(v9, "count") == 1 && objc_msgSend(v10, "count") == 1)
      {
        v42 = [v9 firstObject];
        v43 = [v10 firstObject];

        if (v42 != v43)
        {
          goto LABEL_44;
        }

        v17 = [v9 firstObject];
        v15 = _CUIKDisplayStringForNotificationIdentity(v17, 1, 1, a2);
        v71 = +[CUIKDateDescriptionGenerator sharedGenerator];
        v72 = [v17 proposedStartDate];
        v13 = [v71 dateStringForDate:v72 allDay:0 standalone:0 shortFormat:0];

        v73 = [v17 comment];
        v51 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:v73];

        v52 = CalInviteeCommentedAndProposedNewTimeLocalizedString(v15, v13, v51);
LABEL_94:
        v16 = v52;

        goto LABEL_4;
      }

      if ([v8 count] == 1 && objc_msgSend(v9, "count") == 1 && objc_msgSend(v10, "count") == 1)
      {
        v45 = [v9 firstObject];
        v46 = [v10 firstObject];
        v47 = v46;
        if (v45 == v46)
        {
          v59 = [v8 firstObject];
          v60 = [v10 firstObject];

          if (v59 == v60)
          {
            v17 = [v9 firstObject];
            v15 = _CUIKDisplayStringForNotificationIdentity(v17, 1, 1, a2);
            v75 = [v17 comment];
            v13 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:v75];

            v76 = +[CUIKDateDescriptionGenerator sharedGenerator];
            v77 = [v17 proposedStartDate];
            v51 = [v76 dateStringForDate:v77 allDay:0 standalone:0 shortFormat:0];

            v52 = CalInviteeDeclinedCommentedAndProposedNewTimeLocalizedString(v15, v51, v13);
            goto LABEL_94;
          }
        }

        else
        {
        }

        v61 = [v9 firstObject];
        v62 = [v10 firstObject];

        if (v61 == v62)
        {
          v70 = MEMORY[0x1E696AEC0];
          v17 = CUIKBundle();
          v15 = [v17 localizedStringForKey:@"%lu invitees declined value:%lu invitees commented and proposed a new time" table:{&stru_1F4AA8958, 0}];
          v38 = [v70 localizedStringWithFormat:v15, objc_msgSend(v8, "count"), objc_msgSend(v9, "count")];
        }

        else
        {
          v63 = [v8 firstObject];
          v64 = [v10 firstObject];

          if (v63 == v64)
          {
            v74 = MEMORY[0x1E696AEC0];
            v17 = CUIKBundle();
            v15 = [v17 localizedStringForKey:@"%lu invitees commented value:%lu invitees declined and proposed a new time" table:{&stru_1F4AA8958, 0}];
            v38 = [v74 localizedStringWithFormat:v15, objc_msgSend(v9, "count"), objc_msgSend(v8, "count")];
          }

          else
          {
            v65 = [v8 firstObject];
            v66 = [v9 firstObject];

            v67 = MEMORY[0x1E696AEC0];
            CUIKBundle();
            if (v65 == v66)
              v17 = {;
              v15 = [v17 localizedStringForKey:@"%lu invitees proposed a new time value:%lu invitees declined and commented" table:{&stru_1F4AA8958, 0}];
              [v67 localizedStringWithFormat:v15, objc_msgSend(v10, "count"), objc_msgSend(v8, "count")];
            }

            else
              v17 = {;
              v15 = [v17 localizedStringForKey:@"%lu invitees declined value:%lu invitees commented table:{%lu invitees proposed a new time", &stru_1F4AA8958, 0}];
              [v67 localizedStringWithFormat:v15, objc_msgSend(v8, "count"), objc_msgSend(v9, "count"), objc_msgSend(v10, "count")];
            }
            v38 = ;
          }
        }

        goto LABEL_96;
      }

      if ([v8 count] >= 2 && !objc_msgSend(v9, "count"))
      {
LABEL_39:
        v41 = MEMORY[0x1E696AEC0];
        v17 = CUIKBundle();
        v15 = [v17 localizedStringForKey:@"%lu invitees declined value:%lu invitees proposed a new time" table:{&stru_1F4AA8958, 0}];
        v38 = [v41 localizedStringWithFormat:v15, objc_msgSend(v8, "count"), objc_msgSend(v10, "count")];
        goto LABEL_96;
      }

      if (([v8 count] < 2 || objc_msgSend(v10, "count")) && (objc_msgSend(v9, "count") < 2 || objc_msgSend(v10, "count")))
      {
        if (([v9 count] < 2 || objc_msgSend(v8, "count")) && (objc_msgSend(v10, "count") < 2 || objc_msgSend(v8, "count")))
        {
          if ([v10 count] < 2 || objc_msgSend(v9, "count"))
          {
            if ([v8 count] < 2 || objc_msgSend(v10, "count") < 2 || objc_msgSend(v9, "count") < 2)
            {
              v16 = 0;
              v49 = 0;
              goto LABEL_99;
            }

            v48 = MEMORY[0x1E696AEC0];
            v17 = CUIKBundle();
            v15 = [v17 localizedStringForKey:@"%lu invitees declined value:%lu invitees commented table:{%lu invitees proposed a new time", &stru_1F4AA8958, 0}];
            v38 = [v48 localizedStringWithFormat:v15, objc_msgSend(v8, "count"), objc_msgSend(v9, "count"), objc_msgSend(v10, "count")];
            goto LABEL_96;
          }

          goto LABEL_39;
        }

LABEL_44:
        v44 = MEMORY[0x1E696AEC0];
        v17 = CUIKBundle();
        v15 = [v17 localizedStringForKey:@"%lu invitees commented value:%lu invitees proposed a new time" table:{&stru_1F4AA8958, 0}];
        v38 = [v44 localizedStringWithFormat:v15, objc_msgSend(v9, "count"), objc_msgSend(v10, "count")];
        goto LABEL_96;
      }
    }

    v56 = MEMORY[0x1E696AEC0];
    v17 = CUIKBundle();
    v15 = [v17 localizedStringForKey:@"%lu invitees declined value:%lu invitees commented" table:{&stru_1F4AA8958, 0}];
    v38 = [v56 localizedStringWithFormat:v15, objc_msgSend(v8, "count"), objc_msgSend(v9, "count")];
    goto LABEL_96;
  }

  v16 = CalInviteesDeclinedLocalizedString([v8 count]);
LABEL_98:
  v49 = 1;
LABEL_99:

  _Block_object_dispose(&v85, 8);
  if (v49)
  {
LABEL_100:
    v16 = v16;
    v78 = v16;
    goto LABEL_102;
  }

  v78 = 0;
LABEL_102:

  return v78;
}

void sub_1CAB511F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CUIKMessageStringForEventInvitationNotification_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 statusChanged] && objc_msgSend(v9, "participantStatus") == 3)
  {
    [*(a1 + 32) addObject:v9];
  }

  v6 = [v9 comment];
  v7 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:v6];

  if ([v9 commentChanged] && objc_msgSend(v7, "length"))
  {
    [*(a1 + 40) addObject:v9];
  }

  if ([v9 proposedStartDateChanged])
  {
    v8 = [v9 proposedStartDate];

    if (v8)
    {
      [*(a1 + 48) addObject:v9];
      if ([v9 proposedStartDateDeclined])
      {
        if ([v9 isCurrentUser])
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
          *a4 = 1;
        }
      }
    }
  }
}

id CalInviteeDeclinedLocalizedString(void *a1)
{
  v1 = a1;
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"%@ declined" value:&stru_1F4AA8958 table:0];

  v4 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v3, v1];

  return v4;
}

id CalInviteeCommentedLocalizedString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = CUIKBundle();
  v6 = [v5 localizedStringForKey:@"%@: “%@”" value:&stru_1F4AA8958 table:0];

  v7 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, v4, v3];

  return v7;
}

id CalInviteeProposedNewTimeLocalizedString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = CUIKBundle();
  v6 = [v5 localizedStringForKey:@"%@ proposed moving event to %@" value:&stru_1F4AA8958 table:0];

  v7 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, v4, v3];

  return v7;
}

id CalInviteesDeclinedLocalizedString(uint64_t a1)
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"invitees_declined_long" value:&stru_1F4AA8958 table:0];

  v4 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v3, a1];

  return v4;
}

id CalInviteeDeclinedWithCommentLocalizedString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = CUIKBundle();
  v6 = [v5 localizedStringForKey:@"%@ declined: “%@”" value:&stru_1F4AA8958 table:0];

  v7 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, v4, v3];

  return v7;
}

id CalInviteeDeclinedAndProposedNewTimeLocalizedString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = CUIKBundle();
  v6 = [v5 localizedStringForKey:@"%@ declined value:but proposed moving event to %@" table:{&stru_1F4AA8958, 0}];

  v7 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, v4, v3];

  return v7;
}

id CalInviteeCommentedAndProposedNewTimeLocalizedString(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = CUIKBundle();
  v9 = [v8 localizedStringForKey:@"%@ proposed moving event to %@: “%@”" value:&stru_1F4AA8958 table:0];

  v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, v7, v6, v5];

  return v10;
}

id CalInviteeDeclinedCommentedAndProposedNewTimeLocalizedString(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = CUIKBundle();
  v9 = [v8 localizedStringForKey:@"%@ declined value:but proposed moving event to %@: “%@”" table:{&stru_1F4AA8958, 0}];

  v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, v7, v6, v5];

  return v10;
}

id CUIKLaunchURLForEvent(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 externalURL];
    if (v3)
    {
      goto LABEL_8;
    }

    v4 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CUIKLaunchURLForEvent_cold_1();
    }
  }

  else
  {
    v4 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CUIKLaunchURLForEvent_cold_2();
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

id CUIKLaunchURLForEventInvitation(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 externalURL];
    if (v3)
    {
      v4 = v3;
      v5 = MEMORY[0x1E695DFF8];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"calinvite:%@", v3];
      v7 = [v5 URLWithString:v6];

      goto LABEL_9;
    }

    v8 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CUIKLaunchURLForEventInvitation_cold_1();
    }
  }

  else
  {
    v8 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CUIKLaunchURLForEventInvitation_cold_2();
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

id CUIKNewTimeProposerForNotification(void *a1)
{
  v1 = [a1 descriptionStrings:0];
  v2 = [v1 objectForKeyedSubscript:@"ImportantAttendee"];
  v3 = v2;
  if (!v2 || ![v2 proposedStartDateChanged])
  {
    goto LABEL_5;
  }

  v4 = [v3 proposedStartDate];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 proposedStartDateDeclined];

  if ((v5 & 1) == 0)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

void sub_1CAB522C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CAB52548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB5271C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1CAB528FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB52B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB52E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1CAB53268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1CAB5E31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void locationAuthorizationsChanged()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"CUIKAlarmsViewModelTTLLocationAuthorizationStatusNeedsReloadNotification" object:0];
}

double CUIKFloorToScreenScale(double a1)
{
  v2 = CUIKFloorToScreenScale___scale;
  if (*&CUIKFloorToScreenScale___scale == -1.0)
  {
    *&v2 = CUIKScaleFactor();
    CUIKFloorToScreenScale___scale = v2;
  }

  if (a1 != 0.0)
  {
    return floor(*&v2 * a1) / *&v2;
  }

  return a1;
}

void sub_1CAB63B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CUIKEventParticipantStatusForDisplay(void *a1)
{
  v1 = a1;
  if (![v1 hasAttendees])
  {
    goto LABEL_9;
  }

  v2 = [v1 selfParticipantStatus];
  if (v2 != 3)
  {
    if ([MEMORY[0x1E6966A80] needsResponseForParticipantStatus:v2] && !objc_msgSend(v1, "isSelfOrganizedInvitation"))
    {
      v2 = 2;
      goto LABEL_10;
    }

    if (v2 == 4 && ![v1 isSelfOrganizedInvitation] || (objc_msgSend(v1, "calendar"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isSuggestedEventCalendar"), v3, v4))
    {
      v2 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v2 = 0;
  }

LABEL_10:

  return v2;
}

void CUIKAddInlineMenuItemArrayToArrayWithTitle(void *a1, uint64_t a2, __CFString *a3)
{
  v4 = MEMORY[0x1E69DCC60];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &stru_1F4AA8958;
  }

  v6 = a1;
  v7 = [v4 menuWithTitle:v5 image:0 identifier:0 options:1 children:a2];
  [v6 addObject:v7];
}

id CUIKDisplayedTitleForCalendar(void *a1)
{
  v1 = a1;
  v2 = [v1 source];
  v3 = v2;
  if (v2)
  {
    if ([v2 sourceType] == 5)
    {
      if ([v1 isSuggestedEventCalendar])
      {
        v4 = CUIKBundle();
        v5 = v4;
        v6 = @"Siri Suggestions";
LABEL_8:
        v10 = [v4 localizedStringForKey:v6 value:&stru_1F4AA8958 table:0];
        goto LABEL_26;
      }

LABEL_10:
      v10 = CUIKBirthdayCalendarLocalizedString();
      if (v10)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (([v1 isFacebookBirthdayCalendar] & 1) == 0)
    {
      v7 = [v1 source];
      v8 = [v7 constraints];
      v9 = [v8 isFacebook];

      if (v9)
      {
        v4 = CUIKBundle();
        v5 = v4;
        v6 = @"Facebook Events";
        goto LABEL_8;
      }
    }

    if ([v1 isFacebookBirthdayCalendar])
    {
      goto LABEL_10;
    }

    v11 = [v3 sourceType];
    v12 = [v1 title];
    v13 = [v3 externalID];
    v5 = v12;
    v14 = v13;
    v15 = v14;
    if (v11 == 2 && v14 && (([v5 isEqualToString:@"Work"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"Home")))
    {
      v16 = +[CUIKAccountsController sharedInstance];
      v17 = [v16 accountTypeTitleForSourceWithExternalId:v15];

      if (v17 && [v17 isEqualToString:@"iCloud"])
      {
        if ([v5 isEqualToString:@"Work"])
        {
          v18 = CUIKBundle();
          v19 = v18;
          v20 = @"Name of default iCloud 'work' calendar";
          v21 = @"Work";
LABEL_22:
          v10 = [v18 localizedStringForKey:v20 value:v21 table:0];

LABEL_25:
LABEL_26:

          if (v10)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

        if ([v5 isEqualToString:@"Home"])
        {
          v18 = CUIKBundle();
          v19 = v18;
          v20 = @"Name of default iCloud 'home' calendar";
          v21 = @"Home";
          goto LABEL_22;
        }
      }
    }

    v10 = v5;
    goto LABEL_25;
  }

LABEL_27:
  v10 = [v1 title];
LABEL_28:
  if (![v10 length])
  {
    v22 = CUIKBundle();
    v23 = [v22 localizedStringForKey:@"Untitled Calendar" value:&stru_1F4AA8958 table:0];

    v10 = v23;
  }

  return v10;
}

id CUIKBirthdayCalendarLocalizedString()
{
  v0 = CUIKBundle();
  v1 = [v0 localizedStringForKey:@"Birthdays" value:&stru_1F4AA8958 table:0];

  return v1;
}

id CUIKDisplayedTitleForSource(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[CUIKAccountsController sharedInstance];
  v5 = [v4 titleForSource:v3 forBeginningOfSentence:a2];

  return v5;
}

id CUIKDisplayedStoreTypeTitleForSource(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = +[CUIKAccountsController sharedInstance];
    v3 = [v2 accountTypeTitleForSource:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}