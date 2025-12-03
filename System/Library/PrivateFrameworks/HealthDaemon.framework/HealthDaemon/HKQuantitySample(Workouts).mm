@interface HKQuantitySample(Workouts)
- (id)hdw_dateInterval;
@end

@implementation HKQuantitySample(Workouts)

- (id)hdw_dateInterval
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [self startDate];
  endDate = [self endDate];
  v5 = [v2 initWithStartDate:startDate endDate:endDate];

  return v5;
}

@end