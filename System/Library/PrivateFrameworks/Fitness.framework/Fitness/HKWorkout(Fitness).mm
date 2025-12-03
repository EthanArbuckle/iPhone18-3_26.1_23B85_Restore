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
  fi_elevationGain = [self fi_elevationGain];
  v2 = fi_elevationGain;
  if (fi_elevationGain)
  {
    fi_isNonzero = [fi_elevationGain fi_isNonzero];
  }

  else
  {
    fi_isNonzero = 0;
  }

  return fi_isNonzero;
}

- (id)fi_elevationGain
{
  metadata = [self metadata];
  v3 = [metadata objectForKey:*MEMORY[0x277CCC488]];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    metadata2 = [self metadata];
    v5 = [metadata2 objectForKey:*MEMORY[0x277CCE180]];

    v3 = v5;
  }

  return v3;
}

- (uint64_t)fi_swimmingLocationType
{
  metadata = [self metadata];
  v2 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC510]];

  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (uint64_t)fi_isConnectedGymWorkout
{
  device = [self device];
  _isConnectedGymDevice = [device _isConnectedGymDevice];

  return _isConnectedGymDevice;
}

- (uint64_t)supportsWorkoutMetricType:()Fitness
{
  fi_activityType = [self fi_activityType];
  v6 = [FIWorkoutDefaultMetricsProvider metricsVersionForWorkout:self];
  v7 = [FIWorkoutDefaultMetricsProvider alloc];
  _activityMoveMode = [self _activityMoveMode];
  v9 = FIDeviceSupportsElevationGain();
  v10 = [(FIWorkoutDefaultMetricsProvider *)v7 initWithMetricsVersion:v6 activityType:fi_activityType activityMoveMode:_activityMoveMode deviceSupportsElevationMetrics:v9 deviceSupportsGroundElevationMetrics:FIDeviceSupportsGroundElevation()];
  v11 = -[FIWorkoutDefaultMetricsProvider isMetricTypeSupported:isMachineWorkout:activityType:](v10, "isMetricTypeSupported:isMachineWorkout:activityType:", a3, [self fi_isConnectedGymWorkout], fi_activityType);

  return v11;
}

@end