@interface NSDate(NNMKAdditions)
+ (id)nnmk_startOfCurrentDay;
- (BOOL)nnmk_isToday;
@end

@implementation NSDate(NNMKAdditions)

+ (id)nnmk_startOfCurrentDay
{
  v0 = [MEMORY[0x277CBEA80] currentCalendar];
  v1 = [MEMORY[0x277CBEAA8] date];
  v2 = [v0 components:252 fromDate:v1];

  [v2 setHour:0];
  [v2 setMinute:0];
  [v2 setSecond:0];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 dateFromComponents:v2];

  return v4;
}

- (BOOL)nnmk_isToday
{
  v2 = [MEMORY[0x277CBEAA8] nnmk_startOfCurrentDay];
  v3 = [a1 compare:v2] != -1;

  return v3;
}

@end