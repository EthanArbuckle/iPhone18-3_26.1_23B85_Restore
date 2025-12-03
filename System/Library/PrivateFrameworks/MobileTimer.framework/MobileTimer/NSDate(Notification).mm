@interface NSDate(Notification)
- (id)mtGreetingString:()Notification;
@end

@implementation NSDate(Notification)

- (id)mtGreetingString:()Notification
{
  v5 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v5 bs_dayPeriodForDate:self inLocale:currentLocale];

  if (v7 > 0xA)
  {
    v10 = 0;
  }

  else
  {
    if (((1 << v7) & 0x2F0) != 0)
    {
      v8 = @"DND_BEDTIME_EVENING_GREETING_LOWERCASE";
      v9 = @"DND_BEDTIME_EVENING_GREETING";
    }

    else if (((1 << v7) & 0x10C) != 0)
    {
      v8 = @"DND_BEDTIME_AFTERNOON_GREETING_LOWERCASE";
      v9 = @"DND_BEDTIME_AFTERNOON_GREETING";
    }

    else
    {
      v8 = @"DND_BEDTIME_MORNING_GREETING_LOWERCASE";
      v9 = @"DND_BEDTIME_MORNING_GREETING";
    }

    if (a3)
    {
      v8 = v9;
    }

    v10 = v8;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [currentCalendar setTimeZone:systemTimeZone];

  date = [MEMORY[0x1E695DF00] date];
  v14 = [currentCalendar component:32 fromDate:date];

  if ((v14 - 3) <= 6 && [(__CFString *)v10 hasPrefix:@"DND_BEDTIME_EVENING_GREETING"])
  {
    v15 = @"DND_BEDTIME_MORNING_GREETING_LOWERCASE";
    if (a3)
    {
      v15 = @"DND_BEDTIME_MORNING_GREETING";
    }

    v16 = v15;

    v10 = v16;
  }

  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.mobiletimer-framework"];
  v18 = [v17 localizedStringForKey:v10 value:&stru_1F29360E0 table:@"Localizable_Burrito"];

  return v18;
}

@end