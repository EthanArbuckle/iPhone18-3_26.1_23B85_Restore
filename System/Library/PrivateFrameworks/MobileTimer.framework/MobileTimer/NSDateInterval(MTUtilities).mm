@interface NSDateInterval(MTUtilities)
+ (id)mtDateIntervalWithEndDate:()MTUtilities duration:;
- (uint64_t)mtContainsDate:()MTUtilities;
@end

@implementation NSDateInterval(MTUtilities)

- (uint64_t)mtContainsDate:()MTUtilities
{
  v4 = a3;
  startDate = [self startDate];
  if ([startDate isEqualToDate:v4])
  {
    v6 = 1;
  }

  else
  {
    endDate = [self endDate];
    if ([endDate isEqualToDate:v4])
    {
      v6 = 1;
    }

    else
    {
      v6 = [self containsDate:v4];
    }
  }

  return v6;
}

+ (id)mtDateIntervalWithEndDate:()MTUtilities duration:
{
  v5 = MEMORY[0x1E696AB80];
  v6 = a4;
  v7 = [v5 alloc];
  v8 = [v6 dateByAddingTimeInterval:-self];
  v9 = [v7 initWithStartDate:v8 endDate:v6];

  return v9;
}

@end