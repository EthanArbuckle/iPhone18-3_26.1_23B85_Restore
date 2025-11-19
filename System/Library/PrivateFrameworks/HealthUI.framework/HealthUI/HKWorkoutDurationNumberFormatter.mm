@interface HKWorkoutDurationNumberFormatter
- (HKWorkoutDurationNumberFormatter)init;
@end

@implementation HKWorkoutDurationNumberFormatter

- (HKWorkoutDurationNumberFormatter)init
{
  v5.receiver = self;
  v5.super_class = HKWorkoutDurationNumberFormatter;
  v2 = [(HKTimePeriodWithSecondsNumberFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HKTimePeriodWithSecondsNumberFormatter *)v2 setSecondsRoundingMode:1];
  }

  return v3;
}

@end