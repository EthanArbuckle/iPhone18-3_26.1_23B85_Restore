@interface CHCompanionWorkoutCreditManagerInterval
- (CHCompanionWorkoutCreditManagerInterval)initWithDateInterval:(id)a3 activityMoveMode:(int64_t)a4;
@end

@implementation CHCompanionWorkoutCreditManagerInterval

- (CHCompanionWorkoutCreditManagerInterval)initWithDateInterval:(id)a3 activityMoveMode:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CHCompanionWorkoutCreditManagerInterval;
  v8 = [(CHCompanionWorkoutCreditManagerInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateInterval, a3);
    v9->_activityMoveMode = a4;
  }

  return v9;
}

@end