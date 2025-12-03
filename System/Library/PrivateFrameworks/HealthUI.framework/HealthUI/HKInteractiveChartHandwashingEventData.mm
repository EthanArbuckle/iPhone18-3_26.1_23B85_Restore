@interface HKInteractiveChartHandwashingEventData
- (HKInteractiveChartHandwashingEventData)initWithTimePeriod:(double)period meetsGoal:(BOOL)goal;
@end

@implementation HKInteractiveChartHandwashingEventData

- (HKInteractiveChartHandwashingEventData)initWithTimePeriod:(double)period meetsGoal:(BOOL)goal
{
  goalCopy = goal;
  v9.receiver = self;
  v9.super_class = HKInteractiveChartHandwashingEventData;
  v6 = [(HKInteractiveChartHandwashingEventData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(HKInteractiveChartTimePeriodData *)v6 setTimePeriod:period];
    [(HKInteractiveChartHandwashingEventData *)v7 setMeetsGoal:goalCopy];
  }

  return v7;
}

@end