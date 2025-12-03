@interface CHCompanionWorkoutCreditManagerInterval
- (CHCompanionWorkoutCreditManagerInterval)initWithDateInterval:(id)interval activityMoveMode:(int64_t)mode;
@end

@implementation CHCompanionWorkoutCreditManagerInterval

- (CHCompanionWorkoutCreditManagerInterval)initWithDateInterval:(id)interval activityMoveMode:(int64_t)mode
{
  intervalCopy = interval;
  v11.receiver = self;
  v11.super_class = CHCompanionWorkoutCreditManagerInterval;
  v8 = [(CHCompanionWorkoutCreditManagerInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateInterval, interval);
    v9->_activityMoveMode = mode;
  }

  return v9;
}

@end