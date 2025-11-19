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
  if ([a1 isAbsolute])
  {
    v7 = [a1 absoluteDate];
    v8 = v7;
    if (a3)
    {
      CUIKLongStringForDateAndTime(v7);
    }

    else
    {
      CUIKStringForDateAndTime(v7);
    }
    v13 = ;
  }

  else
  {
    v8 = [a1 owner];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 travelTime];
      v10 = v9 > 0.0;
      v11 = [v8 defaultAlarms];
      v12 = [v11 anyObject];
    }

    else
    {
      v12 = 0;
      v10 = 0;
    }

    [a1 relativeOffset];
    v15 = v14;
    if ([a1 isDefaultAlarm] && v12)
    {
      [v12 relativeOffset];
      v15 = v16;
    }

    v13 = CUIKStringForRelativeOffset(a4, v10, v15);
    if ([a1 isDefaultAlarm])
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [MEMORY[0x1E6966950] cuik_defaultDesignator];
      v19 = [v17 localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%@" error:0, v13];

      v13 = v19;
    }
  }

  return v13;
}

@end