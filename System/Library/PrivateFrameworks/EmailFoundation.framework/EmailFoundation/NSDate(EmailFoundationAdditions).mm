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
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:126 fromDate:self];
  v4 = [currentCalendar dateFromComponents:v3];

  return v4;
}

- (uint64_t)ef_isDateNextDayOrLater:()EmailFoundationAdditions
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF00];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [v4 _ef_gregorianCalendarForTimeZone:localTimeZone];

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
    [self timeIntervalSinceDate:v4];
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
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  _ef_morningDateComponents = [self _ef_morningDateComponents];
  hour = [_ef_morningDateComponents hour];
  minute = [_ef_morningDateComponents minute];
  second = [_ef_morningDateComponents second];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v3 dateBySettingHour:hour minute:minute second:second ofDate:v8 options:0];

  return v9;
}

+ (id)ef_tonight
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  _ef_nightDateComponents = [self _ef_nightDateComponents];
  hour = [_ef_nightDateComponents hour];
  minute = [_ef_nightDateComponents minute];
  second = [_ef_nightDateComponents second];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v3 dateBySettingHour:hour minute:minute second:second ofDate:v8 options:0];

  return v9;
}

+ (id)ef_inOneHour
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [v3 dateByAddingUnit:64 value:60 toDate:v4 options:0];

  return v5;
}

+ (id)ef_tomorrowNight
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  _ef_nightDateComponents = [self _ef_nightDateComponents];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v3 dateByAddingUnit:16 value:1 toDate:v5 options:0];

  v7 = [v3 dateBySettingHour:objc_msgSend(_ef_nightDateComponents minute:"hour") second:objc_msgSend(_ef_nightDateComponents ofDate:"minute") options:{objc_msgSend(_ef_nightDateComponents, "second"), v6, 0}];

  return v7;
}

+ (id)ef_tomorrowMorning
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  _ef_morningDateComponents = [self _ef_morningDateComponents];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v3 dateByAddingUnit:16 value:1 toDate:v5 options:0];

  v7 = [v3 dateBySettingHour:objc_msgSend(_ef_morningDateComponents minute:"hour") second:objc_msgSend(_ef_morningDateComponents ofDate:"minute") options:{objc_msgSend(_ef_morningDateComponents, "second"), v6, 0}];

  return v7;
}

+ (id)ef_nextWeekMorning
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  _ef_morningDateComponents = [self _ef_morningDateComponents];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v3 dateByAddingUnit:16 value:7 toDate:v5 options:0];

  v7 = [v3 dateBySettingHour:objc_msgSend(_ef_morningDateComponents minute:"hour") second:objc_msgSend(_ef_morningDateComponents ofDate:"minute") options:{objc_msgSend(_ef_morningDateComponents, "second"), v6, 0}];

  return v7;
}

+ (id)ef_midnightInNdays:()EmailFoundationAdditions
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [v6 dateByAddingUnit:16 value:a3 toDate:v7 options:0];

  v9 = [v6 dateBySettingHour:0 minute:0 second:0 ofDate:v8 options:0];

  return v9;
}

+ (id)ef_dateHoursAgo:()EmailFoundationAdditions
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [v6 dateByAddingUnit:32 value:-a3 toDate:v7 options:0];

  ef_dateWithTruncatedSeconds = [v8 ef_dateWithTruncatedSeconds];

  return ef_dateWithTruncatedSeconds;
}

+ (id)ef_dateSecondsAgo:()EmailFoundationAdditions
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [v6 dateByAddingUnit:128 value:-a3 toDate:v7 options:0];

  return v8;
}

+ (id)ef_thisWeekday:()EmailFoundationAdditions hour:minute:second:
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v12 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  date = [MEMORY[0x1E695DF00] date];
  v14 = [v12 dateByAddingUnit:16 value:a3 - objc_msgSend(v12 toDate:"component:fromDate:" options:{512, date), date, 0}];
  v15 = [v12 dateBySettingHour:a4 minute:a5 second:a6 ofDate:v14 options:0];

  return v15;
}

+ (id)ef_nextWeekday:()EmailFoundationAdditions
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  date = [MEMORY[0x1E695DF00] date];
  v8 = [v6 dateByAddingUnit:16 value:a3 - objc_msgSend(v6 toDate:"component:fromDate:" options:{512, date), date, 0}];

  return v8;
}

+ (id)ef_localCombinedDate:()EmailFoundationAdditions time:timeZone:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v12 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

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
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v6 = [self _ef_gregorianCalendarForTimeZone:localTimeZone];

  v7 = [v6 components:512 fromDate:v4];
  weekday = [v7 weekday];

  return weekday;
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