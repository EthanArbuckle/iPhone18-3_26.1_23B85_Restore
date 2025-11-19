@interface NSDate(EmailFoundationAdditions)
+ (id)_ef_gregorianCalendarForTimeZone:()EmailFoundationAdditions;
+ (id)_ef_morningDateComponents;
+ (id)_ef_nightDateComponents;
+ (id)ef_dateHoursAgo:()EmailFoundationAdditions;
+ (id)ef_dateSecondsAgo:()EmailFoundationAdditions;
+ (id)ef_inOneHour;
+ (id)ef_localCombinedDate:()EmailFoundationAdditions time:timeZone:;
+ (id)ef_midnightInNdays:()EmailFoundationAdditions;
+ (id)ef_morning;
+ (id)ef_nextWeekMorning;
+ (id)ef_nextWeekday:()EmailFoundationAdditions;
+ (id)ef_thisWeekday:()EmailFoundationAdditions hour:minute:second:;
+ (id)ef_tomorrowMorning;
+ (id)ef_tomorrowNight;
+ (id)ef_tonight;
+ (uint64_t)ef_weekDayForDate:()EmailFoundationAdditions;
- (double)ef_timeIntervalSinceDate:()EmailFoundationAdditions;
- (id)ef_dateWithTruncatedSeconds;
- (uint64_t)ef_isDateNextDayOrLater:()EmailFoundationAdditions;
@end

@implementation NSDate(EmailFoundationAdditions)

- (id)ef_dateWithTruncatedSeconds
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:126 fromDate:a1];
  v4 = [v2 dateFromComponents:v3];

  return v4;
}

- (uint64_t)ef_isDateNextDayOrLater:()EmailFoundationAdditions
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF00];
  v5 = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [v4 _ef_gregorianCalendarForTimeZone:v5];

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [v6 dateByAddingUnit:16 value:1 toDate:v7 options:0];

  v9 = [v6 dateBySettingHour:0 minute:0 second:0 ofDate:v8 options:0];
  v10 = [v3 ef_isLaterThanOrEqualDate:v9];

  return v10;
}

- (double)ef_timeIntervalSinceDate:()EmailFoundationAdditions
{
  v4 = a3;
  if (v4)
  {
    [a1 timeIntervalSinceDate:v4];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

+ (id)ef_morning
{
  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [a1 _ef_gregorianCalendarForTimeZone:v2];

  v4 = [a1 _ef_morningDateComponents];
  v5 = [v4 hour];
  v6 = [v4 minute];
  v7 = [v4 second];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v3 dateBySettingHour:v5 minute:v6 second:v7 ofDate:v8 options:0];

  return v9;
}

+ (id)ef_tonight
{
  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [a1 _ef_gregorianCalendarForTimeZone:v2];

  v4 = [a1 _ef_nightDateComponents];
  v5 = [v4 hour];
  v6 = [v4 minute];
  v7 = [v4 second];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v3 dateBySettingHour:v5 minute:v6 second:v7 ofDate:v8 options:0];

  return v9;
}

+ (id)ef_inOneHour
{
  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [a1 _ef_gregorianCalendarForTimeZone:v2];

  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [v3 dateByAddingUnit:64 value:60 toDate:v4 options:0];

  return v5;
}

+ (id)ef_tomorrowNight
{
  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [a1 _ef_gregorianCalendarForTimeZone:v2];

  v4 = [a1 _ef_nightDateComponents];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v3 dateByAddingUnit:16 value:1 toDate:v5 options:0];

  v7 = [v3 dateBySettingHour:objc_msgSend(v4 minute:"hour") second:objc_msgSend(v4 ofDate:"minute") options:{objc_msgSend(v4, "second"), v6, 0}];

  return v7;
}

+ (id)ef_tomorrowMorning
{
  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [a1 _ef_gregorianCalendarForTimeZone:v2];

  v4 = [a1 _ef_morningDateComponents];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v3 dateByAddingUnit:16 value:1 toDate:v5 options:0];

  v7 = [v3 dateBySettingHour:objc_msgSend(v4 minute:"hour") second:objc_msgSend(v4 ofDate:"minute") options:{objc_msgSend(v4, "second"), v6, 0}];

  return v7;
}

+ (id)ef_nextWeekMorning
{
  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [a1 _ef_gregorianCalendarForTimeZone:v2];

  v4 = [a1 _ef_morningDateComponents];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v3 dateByAddingUnit:16 value:7 toDate:v5 options:0];

  v7 = [v3 dateBySettingHour:objc_msgSend(v4 minute:"hour") second:objc_msgSend(v4 ofDate:"minute") options:{objc_msgSend(v4, "second"), v6, 0}];

  return v7;
}

+ (id)ef_midnightInNdays:()EmailFoundationAdditions
{
  v5 = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [a1 _ef_gregorianCalendarForTimeZone:v5];

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [v6 dateByAddingUnit:16 value:a3 toDate:v7 options:0];

  v9 = [v6 dateBySettingHour:0 minute:0 second:0 ofDate:v8 options:0];

  return v9;
}

+ (id)ef_dateHoursAgo:()EmailFoundationAdditions
{
  v5 = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [a1 _ef_gregorianCalendarForTimeZone:v5];

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [v6 dateByAddingUnit:32 value:-a3 toDate:v7 options:0];

  v9 = [v8 ef_dateWithTruncatedSeconds];

  return v9;
}

+ (id)ef_dateSecondsAgo:()EmailFoundationAdditions
{
  v5 = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [a1 _ef_gregorianCalendarForTimeZone:v5];

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [v6 dateByAddingUnit:128 value:-a3 toDate:v7 options:0];

  return v8;
}

+ (id)ef_thisWeekday:()EmailFoundationAdditions hour:minute:second:
{
  v11 = [MEMORY[0x1E695DFE8] localTimeZone];
  v12 = [a1 _ef_gregorianCalendarForTimeZone:v11];

  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [v12 dateByAddingUnit:16 value:a3 - objc_msgSend(v12 toDate:"component:fromDate:" options:{512, v13), v13, 0}];
  v15 = [v12 dateBySettingHour:a4 minute:a5 second:a6 ofDate:v14 options:0];

  return v15;
}

+ (id)ef_nextWeekday:()EmailFoundationAdditions
{
  v5 = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [a1 _ef_gregorianCalendarForTimeZone:v5];

  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v6 dateByAddingUnit:16 value:a3 - objc_msgSend(v6 toDate:"component:fromDate:" options:{512, v7), v7, 0}];

  return v8;
}

+ (id)ef_localCombinedDate:()EmailFoundationAdditions time:timeZone:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DFE8] localTimeZone];
  v12 = [a1 _ef_gregorianCalendarForTimeZone:v11];

  v13 = [v12 components:28 fromDate:v8];
  v14 = [v12 components:96 fromDate:v9];
  [v13 setSecond:0];
  [v13 setHour:{objc_msgSend(v14, "hour")}];
  [v13 setMinute:{objc_msgSend(v14, "minute")}];
  if (v10)
  {
    [v13 setTimeZone:v10];
  }

  v15 = [v12 dateFromComponents:v13];

  return v15;
}

+ (uint64_t)ef_weekDayForDate:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [a1 _ef_gregorianCalendarForTimeZone:v5];

  v7 = [v6 components:512 fromDate:v4];
  v8 = [v7 weekday];

  return v8;
}

+ (id)_ef_nightDateComponents
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v0 setHour:21];
  [v0 setMinute:0];
  [v0 setSecond:0];

  return v0;
}

+ (id)_ef_morningDateComponents
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v0 setHour:8];
  [v0 setMinute:0];
  [v0 setSecond:0];

  return v0;
}

+ (id)_ef_gregorianCalendarForTimeZone:()EmailFoundationAdditions
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DEE8]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  }

  [v5 setTimeZone:v6];
  if (!v3)
  {
  }

  return v5;
}

@end