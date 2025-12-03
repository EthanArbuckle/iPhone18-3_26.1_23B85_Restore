@interface EKAlarm(CalendarUIKit)
+ (id)cuik_defaultDesignator;
- (id)_localizedDescription:()CalendarUIKit isAllDay:;
@end

@implementation EKAlarm(CalendarUIKit)

+ (id)cuik_defaultDesignator
{
  v0 = CUIKBundle();
  v1 = [v0 localizedStringForKey:@"Default (%@)" value:&stru_1F4AA8958 table:0];

  return v1;
}

- (id)_localizedDescription:()CalendarUIKit isAllDay:
{
  if ([self isAbsolute])
  {
    absoluteDate = [self absoluteDate];
    owner = absoluteDate;
    if (a3)
    {
      CUIKLongStringForDateAndTime(absoluteDate);
    }

    else
    {
      CUIKStringForDateAndTime(absoluteDate);
    }
    v13 = ;
  }

  else
  {
    owner = [self owner];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [owner travelTime];
      v10 = v9 > 0.0;
      defaultAlarms = [owner defaultAlarms];
      anyObject = [defaultAlarms anyObject];
    }

    else
    {
      anyObject = 0;
      v10 = 0;
    }

    [self relativeOffset];
    v15 = v14;
    if ([self isDefaultAlarm] && anyObject)
    {
      [anyObject relativeOffset];
      v15 = v16;
    }

    v13 = CUIKStringForRelativeOffset(a4, v10, v15);
    if ([self isDefaultAlarm])
    {
      v17 = MEMORY[0x1E696AEC0];
      cuik_defaultDesignator = [MEMORY[0x1E6966950] cuik_defaultDesignator];
      v19 = [v17 localizedStringWithValidatedFormat:cuik_defaultDesignator validFormatSpecifiers:@"%@" error:0, v13];

      v13 = v19;
    }
  }

  return v13;
}

@end