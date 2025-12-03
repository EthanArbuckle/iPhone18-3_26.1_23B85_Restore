@interface SGBannerUtility
+ (id)dateForUTCDate:(id)date;
@end

@implementation SGBannerUtility

+ (id)dateForUTCDate:(id)date
{
  v3 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v7 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v6 setTimeZone:v7];

  v8 = [v6 components:1048828 fromDate:dateCopy];

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  timeZone = [currentCalendar timeZone];
  [v8 setTimeZone:timeZone];

  v11 = [v6 dateFromComponents:v8];

  return v11;
}

@end