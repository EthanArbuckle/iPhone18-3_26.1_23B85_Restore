@interface NSDate(NNMKAdditions)
+ (id)nnmk_startOfCurrentDay;
- (BOOL)nnmk_isToday;
@end

@implementation NSDate(NNMKAdditions)

+ (id)nnmk_startOfCurrentDay
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v2 = [currentCalendar components:252 fromDate:date];

  [v2 setHour:0];
  [v2 setMinute:0];
  [v2 setSecond:0];
  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar2 dateFromComponents:v2];

  return v4;
}

- (BOOL)nnmk_isToday
{
  nnmk_startOfCurrentDay = [MEMORY[0x277CBEAA8] nnmk_startOfCurrentDay];
  v3 = [self compare:nnmk_startOfCurrentDay] != -1;

  return v3;
}

@end