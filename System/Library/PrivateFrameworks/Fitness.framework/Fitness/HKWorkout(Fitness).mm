@interface HKWorkout(Fitness)
- (id)fi_elevationGain;
- (uint64_t)fi_hasNonZeroElevationGain;
- (uint64_t)fi_isConnectedGymWorkout;
- (uint64_t)fi_swimmingLocationType;
- (uint64_t)supportsWorkoutMetricType:()Fitness;
@end

@implementation HKWorkout(Fitness)

- (uint64_t)fi_hasNonZeroElevationGain
{
  v1 = [a1 fi_elevationGain];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 fi_isNonzero];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fi_elevationGain
{
  v2 = [a1 metadata];
  v3 = [v2 objectForKey:*MEMORY[0x277CCC488]];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = [a1 metadata];
    v5 = [v4 objectForKey:*MEMORY[0x277CCE180]];

    v3 = v5;
  }

  return v3;
}

- (uint64_t)fi_swimmingLocationType
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCC510]];

  if (v2)
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)fi_isConnectedGymWorkout
{
  v1 = [a1 device];
  v2 = [v1 _isConnectedGymDevice];

  return v2;
}

- (uint64_t)supportsWorkoutMetricType:()Fitness
{
  v5 = [a1 fi_activityType];
  v6 = [FIWorkoutDefaultMetricsProvider metricsVersionForWorkout:a1];
  v7 = [FIWorkoutDefaultMetricsProvider alloc];
  v8 = [a1 _activityMoveMode];
  v9 = FIDeviceSupportsElevationGain();
  v10 = [(FIWorkoutDefaultMetricsProvider *)v7 initWithMetricsVersion:v6 activityType:v5 activityMoveMode:v8 deviceSupportsElevationMetrics:v9 deviceSupportsGroundElevationMetrics:FIDeviceSupportsGroundElevation()];
  v11 = -[FIWorkoutDefaultMetricsProvider isMetricTypeSupported:isMachineWorkout:activityType:](v10, "isMetricTypeSupported:isMachineWorkout:activityType:", a3, [a1 fi_isConnectedGymWorkout], v5);

  return v11;
}

@end