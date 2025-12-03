@interface HKSample(FitnessUI)
- (id)fiui_dateInterval;
@end

@implementation HKSample(FitnessUI)

- (id)fiui_dateInterval
{
  v2 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate = [self startDate];
  endDate = [self endDate];
  v5 = [v2 initWithStartDate:startDate endDate:endDate];

  return v5;
}

@end