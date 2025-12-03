@interface HKWorkoutEvent(Fitness)
- (BOOL)fi_isCustomSplitEvent;
- (BOOL)fi_isDistanceGoalCompleteEvent;
- (BOOL)fi_isSplitEvent;
- (double)fi_distanceGoalCompletionTime;
- (double)fi_splitActiveDuration;
- (double)fi_splitPaceInMetersPerSecond;
- (id)fi_splitDistance;
@end

@implementation HKWorkoutEvent(Fitness)

- (BOOL)fi_isCustomSplitEvent
{
  if ([self type] != 7)
  {
    return 0;
  }

  metadata = [self metadata];
  v3 = [metadata objectForKeyedSubscript:@"_HKPrivateWorkoutSegmentEventSubtype"];
  v4 = [v3 integerValue] == 3;

  return v4;
}

- (BOOL)fi_isDistanceGoalCompleteEvent
{
  if ([self type] != 7)
  {
    return 0;
  }

  metadata = [self metadata];
  v3 = [metadata objectForKeyedSubscript:@"_HKPrivateWorkoutSegmentEventSubtype"];
  v4 = [v3 integerValue] == 2;

  return v4;
}

- (BOOL)fi_isSplitEvent
{
  if ([self type] != 7)
  {
    return 0;
  }

  metadata = [self metadata];
  v3 = [metadata objectForKeyedSubscript:@"_HKPrivateWorkoutSegmentEventSubtype"];
  v4 = [v3 integerValue] == 1;

  return v4;
}

- (double)fi_distanceGoalCompletionTime
{
  metadata = [self metadata];
  v2 = [metadata objectForKey:@"_HKPrivateMetadataSplitActiveDurationQuantity"];
  secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
  [v2 doubleValueForUnit:secondUnit];
  v5 = v4;

  return v5;
}

- (double)fi_splitActiveDuration
{
  metadata = [self metadata];
  v2 = [metadata objectForKeyedSubscript:@"_HKPrivateMetadataSplitActiveDurationQuantity"];
  secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
  [v2 doubleValueForUnit:secondUnit];
  v5 = v4;

  return v5;
}

- (id)fi_splitDistance
{
  metadata = [self metadata];
  v2 = [metadata objectForKeyedSubscript:@"_HKPrivateMetadataSplitDistanceQuantity"];

  return v2;
}

- (double)fi_splitPaceInMetersPerSecond
{
  [self fi_splitActiveDuration];
  v3 = v2;
  v4 = 0.0;
  if (v2 > 2.22044605e-16)
  {
    fi_splitDistance = [self fi_splitDistance];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    [fi_splitDistance doubleValueForUnit:meterUnit];
    v4 = v7 / v3;
  }

  return v4;
}

@end