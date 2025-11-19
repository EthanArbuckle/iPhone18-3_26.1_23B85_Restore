@interface HKWorkout(FIUISplitsAdditions)
- (id)fiui_workoutCustomSplits;
- (id)fiui_workoutSplitsForUserPreferredDistanceUnit:()FIUISplitsAdditions;
@end

@implementation HKWorkout(FIUISplitsAdditions)

- (id)fiui_workoutSplitsForUserPreferredDistanceUnit:()FIUISplitsAdditions
{
  [a3 _isMetricDistance];
  v4 = [a1 workoutEvents];
  v5 = FISplitsForMeasuringSystemIdentifier();

  v6 = [v5 fi_flatMapUsingBlock:&__block_literal_global_10];

  return v6;
}

- (id)fiui_workoutCustomSplits
{
  v1 = [a1 workoutEvents];
  v2 = FICustomSplits();

  v3 = [v2 fi_flatMapUsingBlock:&__block_literal_global_423_0];

  return v3;
}

@end