@interface HKQuantitySample(Workouts)
- (id)hdw_dateInterval;
@end

@implementation HKQuantitySample(Workouts)

- (id)hdw_dateInterval
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  v3 = [a1 startDate];
  v4 = [a1 endDate];
  v5 = [v2 initWithStartDate:v3 endDate:v4];

  return v5;
}

@end