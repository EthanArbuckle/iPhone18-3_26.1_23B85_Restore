@interface HKSample(FitnessUI)
- (id)fiui_dateInterval;
@end

@implementation HKSample(FitnessUI)

- (id)fiui_dateInterval
{
  v2 = objc_alloc(MEMORY[0x1E696AB80]);
  v3 = [a1 startDate];
  v4 = [a1 endDate];
  v5 = [v2 initWithStartDate:v3 endDate:v4];

  return v5;
}

@end