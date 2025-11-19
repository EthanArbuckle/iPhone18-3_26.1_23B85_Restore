@interface NSDateInterval(MTUtilities)
+ (id)mtDateIntervalWithEndDate:()MTUtilities duration:;
- (uint64_t)mtContainsDate:()MTUtilities;
@end

@implementation NSDateInterval(MTUtilities)

- (uint64_t)mtContainsDate:()MTUtilities
{
  v4 = a3;
  v5 = [a1 startDate];
  if ([v5 isEqualToDate:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [a1 endDate];
    if ([v7 isEqualToDate:v4])
    {
      v6 = 1;
    }

    else
    {
      v6 = [a1 containsDate:v4];
    }
  }

  return v6;
}

+ (id)mtDateIntervalWithEndDate:()MTUtilities duration:
{
  v5 = MEMORY[0x1E696AB80];
  v6 = a4;
  v7 = [v5 alloc];
  v8 = [v6 dateByAddingTimeInterval:-a1];
  v9 = [v7 initWithStartDate:v8 endDate:v6];

  return v9;
}

@end