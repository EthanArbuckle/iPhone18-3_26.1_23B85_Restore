@interface SGBannerUtility
+ (id)dateForUTCDate:(id)a3;
@end

@implementation SGBannerUtility

+ (id)dateForUTCDate:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v7 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v6 setTimeZone:v7];

  v8 = [v6 components:1048828 fromDate:v4];

  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v9 timeZone];
  [v8 setTimeZone:v10];

  v11 = [v6 dateFromComponents:v8];

  return v11;
}

@end