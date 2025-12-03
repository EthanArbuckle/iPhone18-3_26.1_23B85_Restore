@interface CalFloatingDateHelper
+ (id)dateInFloatingTimeZoneFromDate:(id)date inTimeZone:(id)zone;
+ (id)dateInTimeZone:(id)zone fromFloatingDateInGMT:(id)t;
+ (void)_initCustomCalendar;
@end

@implementation CalFloatingDateHelper

+ (void)_initCustomCalendar
{
  v2 = objc_alloc(MEMORY[0x1E695DEE8]);
  floatingDateCustomCalendar = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];

  MEMORY[0x1EEE66BB8]();
}

+ (id)dateInTimeZone:(id)zone fromFloatingDateInGMT:(id)t
{
  zoneCopy = zone;
  tCopy = t;
  if (tCopy)
  {
    if (floatingDatePredicate != -1)
    {
      +[CalFloatingDateHelper dateInTimeZone:fromFloatingDateInGMT:];
    }

    v7 = objc_alloc(MEMORY[0x1E695DEE8]);
    v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v9 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    [v8 setTimeZone:v9];
    v10 = [v8 components:252 fromDate:tCopy];
    v11 = floatingDateCustomCalendar;
    objc_sync_enter(v11);
    [floatingDateCustomCalendar setTimeZone:zoneCopy];
    v12 = [floatingDateCustomCalendar dateFromComponents:v10];
    objc_sync_exit(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)dateInFloatingTimeZoneFromDate:(id)date inTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  if (dateCopy)
  {
    if (floatingDatePredicate != -1)
    {
      +[CalFloatingDateHelper dateInFloatingTimeZoneFromDate:inTimeZone:];
    }

    v7 = floatingDateCustomCalendar;
    objc_sync_enter(v7);
    [floatingDateCustomCalendar setTimeZone:zoneCopy];
    v8 = [floatingDateCustomCalendar components:252 fromDate:dateCopy];
    objc_sync_exit(v7);

    v9 = objc_alloc(MEMORY[0x1E695DEE8]);
    v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v11 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    [v10 setTimeZone:v11];
    v12 = [v10 dateFromComponents:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end