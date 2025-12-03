@interface NSDate(_DKAdditions)
- (double)timeSinceMidnight:()_DKAdditions;
- (uint64_t)floorDateWithTotalSlotsInDay:()_DKAdditions;
@end

@implementation NSDate(_DKAdditions)

- (double)timeSinceMidnight:()_DKAdditions
{
  if (timeSinceMidnight__initialized != -1)
  {
    [NSDate(_DKAdditions) timeSinceMidnight:];
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [timeSinceMidnight__calendar components:28 fromDate:self];
  v7 = [timeSinceMidnight__calendar dateFromComponents:v6];
  [self timeIntervalSinceDate:v7];
  v9 = v8;
  if (a3)
  {

    objc_autoreleasePoolPop(v5);
    v10 = v7;
    *a3 = v7;
  }

  else
  {

    objc_autoreleasePoolPop(v5);
  }

  return v9;
}

- (uint64_t)floorDateWithTotalSlotsInDay:()_DKAdditions
{
  [self timeSinceMidnight:0];
  v6 = ((v5 / 86400.0 * a3) * (86400 / a3)) - v5;

  return [self dateByAddingTimeInterval:v6];
}

@end