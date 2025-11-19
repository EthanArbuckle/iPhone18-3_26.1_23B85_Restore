@interface HDDemoDataGeneratorWorkoutConfiguration
- (HDDemoDataGeneratorWorkoutConfiguration)initWithCoder:(id)a3;
- (HDDemoDataGeneratorWorkoutConfiguration)initWithPrototype:(id)a3 currentDemoDataTime:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDDemoDataGeneratorWorkoutConfiguration

- (HDDemoDataGeneratorWorkoutConfiguration)initWithPrototype:(id)a3 currentDemoDataTime:(double)a4
{
  v6 = a3;
  v7 = [(HDDemoDataGeneratorWorkoutConfiguration *)self init];
  if (v7)
  {
    v7->_activityType = [v6 workoutActivityType];
    v7->_indoor = 0;
    v7->_goalType = [v6 goalType];
    v8 = [v6 goal];
    goal = v7->_goal;
    v7->_goal = v8;

    v7->_startTime = a4;
    [v6 duration];
    v11 = v10 * 0.0000115740741;
    v7->_endTime = v10 * 0.0000115740741 + a4;
    [v6 totalEnergyBurnedInKcal];
    v7->_kcalRate = v12 / v11;
    [v6 totalDistanceCyclingInMiles];
    v7->_distanceCyclingRateInMiles = v13 / v11;
    [v6 totalDistanceWalkingInMiles];
    v7->_distanceWalkingRateInMiles = v14 / v11;
    [v6 totalDistanceCrossCountrySkiingInMeters];
    v7->_distanceCrossCountrySkiingRateInMeters = v15 / v11;
    [v6 totalDistanceRowingInMeters];
    v7->_distanceRowingRateInMeters = v16 / v11;
    [v6 totalDistanceRowingInMeters];
    v7->_distanceSkatingSportsRateInMeters = v17 / v11;
    [v6 totalDistancePaddleSportsInMeters];
    v7->_distancePaddleSportsRateInMeters = v18 / v11;
    [v6 totalDistanceDownhillSnowSportsInMeters];
    v7->_distanceDownhillSnowSportsRateInMeters = v19 / v11;
    [v6 swimmingSegmentDistanceInYards];
    v7->_distanceSwimmingSegmentInYards = v20;
    v7->_numSwimmingSegments = [v6 totalSwimmingSegments];
    v7->_swimmingNumLapsPerSegment = [v6 numLapsPerSegment];
    [v6 swimTimePerSegment];
    v7->_swimmingSwimSegmentTime = v21;
    [v6 restTimePerSegment];
    v7->_swimmingRestSegmentTime = v22;
    v7->_swimmingStrokeStyle = [v6 swimmingStrokeStyle];
  }

  return v7;
}

- (HDDemoDataGeneratorWorkoutConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HDDemoDataGeneratorWorkoutConfiguration;
  v5 = [(HDDemoDataGeneratorWorkoutConfiguration *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v5->_createdFromNSKeyedUnarchiver = 1;
    v5->_activityType = [v4 decodeIntegerForKey:@"_WorkoutConfigurationActivityTypeKey"];
    v6->_indoor = [v4 decodeBoolForKey:@"_WorkoutConfigurationIndoorKey"];
    v6->_goalType = [v4 decodeIntegerForKey:@"_WorkoutConfigurationGoalTypeKey"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_WorkoutConfigurationGoalKey"];
    goal = v6->_goal;
    v6->_goal = v7;

    [v4 decodeDoubleForKey:@"_WorkoutConfigurationStartTimeKey"];
    v6->_startTime = v9;
    [v4 decodeDoubleForKey:@"_WorkoutConfigurationEndTimeKey"];
    v6->_endTime = v10;
    [v4 decodeDoubleForKey:@"_WorkoutConfigurationKCalRateKey"];
    v6->_kcalRate = v11;
    [v4 decodeDoubleForKey:@"_WorkoutConfigurationDistanceWalkingRateMilesKey"];
    v6->_distanceWalkingRateInMiles = v12;
    [v4 decodeDoubleForKey:@"_WorkoutConfigurationDistanceCyclingRateMilesKey"];
    v6->_distanceCyclingRateInMiles = v13;
    [v4 decodeDoubleForKey:@"_WorkoutConfigurationDistanceSwimmingRateYardsKey"];
    v6->_distanceSwimmingRateInYards = v14;
    if ([v4 containsValueForKey:@"_WorkoutConfigurationNumSwimmingSegmentsKey"])
    {
      v15 = [v4 decodeIntegerForKey:@"_WorkoutConfigurationNumSwimmingSegmentsKey"];
    }

    else
    {
      v15 = 8;
    }

    v6->_numSwimmingSegments = v15;
    if ([v4 containsValueForKey:@"_WorkoutConfigurationSwimmingSwimSegmentTimeKey"])
    {
      [v4 decodeDoubleForKey:@"_WorkoutConfigurationSwimmingSwimSegmentTimeKey"];
    }

    else
    {
      v16 = 0x4066800000000000;
    }

    *&v6->_swimmingSwimSegmentTime = v16;
    if ([v4 containsValueForKey:@"_WorkoutConfigurationSwimmingRestSegmentTimeKey"])
    {
      [v4 decodeDoubleForKey:@"_WorkoutConfigurationSwimmingRestSegmentTimeKey"];
    }

    else
    {
      v17 = 0x404E000000000000;
    }

    *&v6->_swimmingRestSegmentTime = v17;
    if ([v4 containsValueForKey:@"_WorkoutConfigurationSwimmingNumLapsPerSegmentKey"])
    {
      v18 = [v4 decodeIntegerForKey:@"_WorkoutConfigurationSwimmingNumLapsPerSegmentKey"];
    }

    else
    {
      v18 = 2;
    }

    v6->_swimmingNumLapsPerSegment = v18;
    if ([v4 containsValueForKey:@"_WorkoutConfigurationSwimmingStrokeStyleKey"])
    {
      v19 = [v4 decodeIntegerForKey:@"_WorkoutConfigurationSwimmingStrokeStyleKey"];
    }

    else
    {
      v19 = 2;
    }

    v6->_swimmingStrokeStyle = v19;
    v20 = [v4 containsValueForKey:@"_WorkoutConfigurationDistanceCrossCountrySkiingRateMetersKey"];
    v21 = 0x40B8380000000000;
    v22 = 0x40B8380000000000;
    if (v20)
    {
      [v4 decodeDoubleForKey:{@"_WorkoutConfigurationDistanceCrossCountrySkiingRateMetersKey", 6200.0}];
    }

    *&v6->_distanceCrossCountrySkiingRateInMeters = v22;
    if ([v4 containsValueForKey:@"_WorkoutConfigurationDistanceRowingRateMetersKey"])
    {
      [v4 decodeDoubleForKey:@"_WorkoutConfigurationDistanceRowingRateMetersKey"];
      v21 = v23;
    }

    *&v6->_distanceRowingRateInMeters = v21;
    if ([v4 containsValueForKey:@"_WorkoutConfigurationDistanceSkatingSportsRateMetersKey"])
    {
      [v4 decodeDoubleForKey:@"_WorkoutConfigurationDistanceSkatingSportsRateMetersKey"];
    }

    else
    {
      v24 = 0x409C200000000000;
    }

    *&v6->_distanceSkatingSportsRateInMeters = v24;
    if ([v4 containsValueForKey:@"_WorkoutConfigurationDistancePaddleSportsRateMetersKey"])
    {
      [v4 decodeDoubleForKey:@"_WorkoutConfigurationDistancePaddleSportsRateMetersKey"];
    }

    else
    {
      v25 = 0x4085E00000000000;
    }

    *&v6->_distancePaddleSportsRateInMeters = v25;
    if ([v4 containsValueForKey:@"_WorkoutConfigurationDistanceDownhillSnowSportsRateMetersKey"])
    {
      [v4 decodeDoubleForKey:@"_WorkoutConfigurationDistanceDownhillSnowSportsRateMetersKey"];
    }

    else
    {
      v26 = 0x40B8380000000000;
    }

    *&v6->_distanceDownhillSnowSportsRateInMeters = v26;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  activityType = self->_activityType;
  v5 = a3;
  [v5 encodeInteger:activityType forKey:@"_WorkoutConfigurationActivityTypeKey"];
  [v5 encodeBool:self->_indoor forKey:@"_WorkoutConfigurationIndoorKey"];
  [v5 encodeInteger:self->_goalType forKey:@"_WorkoutConfigurationGoalTypeKey"];
  [v5 encodeObject:self->_goal forKey:@"_WorkoutConfigurationGoalKey"];
  [v5 encodeDouble:@"_WorkoutConfigurationStartTimeKey" forKey:self->_startTime];
  [v5 encodeDouble:@"_WorkoutConfigurationEndTimeKey" forKey:self->_endTime];
  [v5 encodeDouble:@"_WorkoutConfigurationKCalRateKey" forKey:self->_kcalRate];
  [v5 encodeDouble:@"_WorkoutConfigurationDistanceWalkingRateMilesKey" forKey:self->_distanceWalkingRateInMiles];
  [v5 encodeDouble:@"_WorkoutConfigurationDistanceCyclingRateMilesKey" forKey:self->_distanceCyclingRateInMiles];
  [v5 encodeDouble:@"_WorkoutConfigurationDistanceCrossCountrySkiingRateMetersKey" forKey:self->_distanceCrossCountrySkiingRateInMeters];
  [v5 encodeDouble:@"_WorkoutConfigurationDistanceRowingRateMetersKey" forKey:self->_distanceRowingRateInMeters];
  [v5 encodeDouble:@"_WorkoutConfigurationDistanceSkatingSportsRateMetersKey" forKey:self->_distanceSkatingSportsRateInMeters];
  [v5 encodeDouble:@"_WorkoutConfigurationDistancePaddleSportsRateMetersKey" forKey:self->_distancePaddleSportsRateInMeters];
  [v5 encodeDouble:@"_WorkoutConfigurationDistanceDownhillSnowSportsRateMetersKey" forKey:self->_distanceDownhillSnowSportsRateInMeters];
  [v5 encodeDouble:@"_WorkoutConfigurationDistanceSwimmingRateYardsKey" forKey:self->_distanceSwimmingRateInYards];
  [v5 encodeInteger:self->_numSwimmingSegments forKey:@"_WorkoutConfigurationNumSwimmingSegmentsKey"];
  [v5 encodeDouble:@"_WorkoutConfigurationSwimmingSwimSegmentTimeKey" forKey:self->_swimmingSwimSegmentTime];
  [v5 encodeDouble:@"_WorkoutConfigurationSwimmingRestSegmentTimeKey" forKey:self->_swimmingRestSegmentTime];
  [v5 encodeInteger:self->_swimmingNumLapsPerSegment forKey:@"_WorkoutConfigurationSwimmingNumLapsPerSegmentKey"];
  [v5 encodeInteger:self->_swimmingStrokeStyle forKey:@"_WorkoutConfigurationSwimmingStrokeStyleKey"];
}

@end