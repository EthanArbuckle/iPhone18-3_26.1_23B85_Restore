@interface NSDate(BRAdditions)
+ (id)getLastMidnightDate;
@end

@implementation NSDate(BRAdditions)

+ (id)getLastMidnightDate
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v2 = [currentCalendar components:28 fromDate:date];
  [v2 setHour:0];
  [v2 setMinute:0];
  [v2 setSecond:0];
  [v2 setNanosecond:0];
  v3 = [currentCalendar dateFromComponents:v2];

  return v3;
}

@end