@interface NSDateInterval(CRKAdditions)
- (id)crk_dateIntervalByAddingTimeInterval:()CRKAdditions;
- (uint64_t)crk_containsCurrentDate;
@end

@implementation NSDateInterval(CRKAdditions)

- (uint64_t)crk_containsCurrentDate
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = [self containsDate:date];

  return v3;
}

- (id)crk_dateIntervalByAddingTimeInterval:()CRKAdditions
{
  startDate = [self startDate];
  v5 = [startDate dateByAddingTimeInterval:a2];

  endDate = [self endDate];
  v7 = [endDate dateByAddingTimeInterval:a2];

  v8 = [objc_alloc(objc_opt_class()) initWithStartDate:v5 endDate:v7];

  return v8;
}

@end