@interface NSDate(BRAdditions)
+ (id)getLastMidnightDate;
@end

@implementation NSDate(BRAdditions)

+ (id)getLastMidnightDate
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = [MEMORY[0x1E695DF00] date];
  v2 = [v0 components:28 fromDate:v1];
  [v2 setHour:0];
  [v2 setMinute:0];
  [v2 setSecond:0];
  [v2 setNanosecond:0];
  v3 = [v0 dateFromComponents:v2];

  return v3;
}

@end