@interface HDDemoDataGeneratorWorkoutConfiguration
- (HDDemoDataGeneratorWorkoutConfiguration)initWithCoder:(id)coder;
- (HDDemoDataGeneratorWorkoutConfiguration)initWithPrototype:(id)prototype currentDemoDataTime:(double)time;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDDemoDataGeneratorWorkoutConfiguration

- (HDDemoDataGeneratorWorkoutConfiguration)initWithPrototype:(id)prototype currentDemoDataTime:(double)time
{
  prototypeCopy = prototype;
  v7 = [(HDDemoDataGeneratorWorkoutConfiguration *)self init];
  if (v7)
  {
    v7->_activityType = [prototypeCopy workoutActivityType];
    v7->_indoor = 0;
    v7->_goalType = [prototypeCopy goalType];
    goal = [prototypeCopy goal];
    goal = v7->_goal;
    v7->_goal = goal;

    v7->_startTime = time;
    [prototypeCopy duration];
    v11 = v10 * 0.0000115740741;
    v7->_endTime = v10 * 0.0000115740741 + time;
    [prototypeCopy totalEnergyBurnedInKcal];
    v7->_kcalRate = v12 / v11;
    [prototypeCopy totalDistanceCyclingInMiles];
    v7->_distanceCyclingRateInMiles = v13 / v11;
    [prototypeCopy totalDistanceWalkingInMiles];
    v7->_distanceWalkingRateInMiles = v14 / v11;
    [prototypeCopy totalDistanceCrossCountrySkiingInMeters];
    v7->_distanceCrossCountrySkiingRateInMeters = v15 / v11;
    [prototypeCopy totalDistanceRowingInMeters];
    v7->_distanceRowingRateInMeters = v16 / v11;
    [prototypeCopy totalDistanceRowingInMeters];
    v7->_distanceSkatingSportsRateInMeters = v17 / v11;
    [prototypeCopy totalDistancePaddleSportsInMeters];
    v7->_distancePaddleSportsRateInMeters = v18 / v11;
    [prototypeCopy totalDistanceDownhillSnowSportsInMeters];
    v7->_distanceDownhillSnowSportsRateInMeters = v19 / v11;
    [prototypeCopy swimmingSegmentDistanceInYards];
    v7->_distanceSwimmingSegmentInYards = v20;
    v7->_numSwimmingSegments = [prototypeCopy totalSwimmingSegments];
    v7->_swimmingNumLapsPerSegment = [prototypeCopy numLapsPerSegment];
    [prototypeCopy swimTimePerSegment];
    v7->_swimmingSwimSegmentTime = v21;
    [prototypeCopy restTimePerSegment];
    v7->_swimmingRestSegmentTime = v22;
    v7->_swimmingStrokeStyle = [prototypeCopy swimmingStrokeStyle];
  }

  return v7;
}

- (HDDemoDataGeneratorWorkoutConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = HDDemoDataGeneratorWorkoutConfiguration;
  v5 = [(HDDemoDataGeneratorWorkoutConfiguration *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v5->_createdFromNSKeyedUnarchiver = 1;
    v5->_activityType = [coderCopy decodeIntegerForKey:@"_WorkoutConfigurationActivityTypeKey"];
    v6->_indoor = [coderCopy decodeBoolForKey:@"_WorkoutConfigurationIndoorKey"];
    v6->_goalType = [coderCopy decodeIntegerForKey:@"_WorkoutConfigurationGoalTypeKey"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_WorkoutConfigurationGoalKey"];
    goal = v6->_goal;
    v6->_goal = v7;

    [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationStartTimeKey"];
    v6->_startTime = v9;
    [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationEndTimeKey"];
    v6->_endTime = v10;
    [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationKCalRateKey"];
    v6->_kcalRate = v11;
    [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationDistanceWalkingRateMilesKey"];
    v6->_distanceWalkingRateInMiles = v12;
    [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationDistanceCyclingRateMilesKey"];
    v6->_distanceCyclingRateInMiles = v13;
    [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationDistanceSwimmingRateYardsKey"];
    v6->_distanceSwimmingRateInYards = v14;
    if ([coderCopy containsValueForKey:@"_WorkoutConfigurationNumSwimmingSegmentsKey"])
    {
      v15 = [coderCopy decodeIntegerForKey:@"_WorkoutConfigurationNumSwimmingSegmentsKey"];
    }

    else
    {
      v15 = 8;
    }

    v6->_numSwimmingSegments = v15;
    if ([coderCopy containsValueForKey:@"_WorkoutConfigurationSwimmingSwimSegmentTimeKey"])
    {
      [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationSwimmingSwimSegmentTimeKey"];
    }

    else
    {
      v16 = 0x4066800000000000;
    }

    *&v6->_swimmingSwimSegmentTime = v16;
    if ([coderCopy containsValueForKey:@"_WorkoutConfigurationSwimmingRestSegmentTimeKey"])
    {
      [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationSwimmingRestSegmentTimeKey"];
    }

    else
    {
      v17 = 0x404E000000000000;
    }

    *&v6->_swimmingRestSegmentTime = v17;
    if ([coderCopy containsValueForKey:@"_WorkoutConfigurationSwimmingNumLapsPerSegmentKey"])
    {
      v18 = [coderCopy decodeIntegerForKey:@"_WorkoutConfigurationSwimmingNumLapsPerSegmentKey"];
    }

    else
    {
      v18 = 2;
    }

    v6->_swimmingNumLapsPerSegment = v18;
    if ([coderCopy containsValueForKey:@"_WorkoutConfigurationSwimmingStrokeStyleKey"])
    {
      v19 = [coderCopy decodeIntegerForKey:@"_WorkoutConfigurationSwimmingStrokeStyleKey"];
    }

    else
    {
      v19 = 2;
    }

    v6->_swimmingStrokeStyle = v19;
    v20 = [coderCopy containsValueForKey:@"_WorkoutConfigurationDistanceCrossCountrySkiingRateMetersKey"];
    v21 = 0x40B8380000000000;
    v22 = 0x40B8380000000000;
    if (v20)
    {
      [coderCopy decodeDoubleForKey:{@"_WorkoutConfigurationDistanceCrossCountrySkiingRateMetersKey", 6200.0}];
    }

    *&v6->_distanceCrossCountrySkiingRateInMeters = v22;
    if ([coderCopy containsValueForKey:@"_WorkoutConfigurationDistanceRowingRateMetersKey"])
    {
      [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationDistanceRowingRateMetersKey"];
      v21 = v23;
    }

    *&v6->_distanceRowingRateInMeters = v21;
    if ([coderCopy containsValueForKey:@"_WorkoutConfigurationDistanceSkatingSportsRateMetersKey"])
    {
      [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationDistanceSkatingSportsRateMetersKey"];
    }

    else
    {
      v24 = 0x409C200000000000;
    }

    *&v6->_distanceSkatingSportsRateInMeters = v24;
    if ([coderCopy containsValueForKey:@"_WorkoutConfigurationDistancePaddleSportsRateMetersKey"])
    {
      [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationDistancePaddleSportsRateMetersKey"];
    }

    else
    {
      v25 = 0x4085E00000000000;
    }

    *&v6->_distancePaddleSportsRateInMeters = v25;
    if ([coderCopy containsValueForKey:@"_WorkoutConfigurationDistanceDownhillSnowSportsRateMetersKey"])
    {
      [coderCopy decodeDoubleForKey:@"_WorkoutConfigurationDistanceDownhillSnowSportsRateMetersKey"];
    }

    else
    {
      v26 = 0x40B8380000000000;
    }

    *&v6->_distanceDownhillSnowSportsRateInMeters = v26;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  activityType = self->_activityType;
  coderCopy = coder;
  [coderCopy encodeInteger:activityType forKey:@"_WorkoutConfigurationActivityTypeKey"];
  [coderCopy encodeBool:self->_indoor forKey:@"_WorkoutConfigurationIndoorKey"];
  [coderCopy encodeInteger:self->_goalType forKey:@"_WorkoutConfigurationGoalTypeKey"];
  [coderCopy encodeObject:self->_goal forKey:@"_WorkoutConfigurationGoalKey"];
  [coderCopy encodeDouble:@"_WorkoutConfigurationStartTimeKey" forKey:self->_startTime];
  [coderCopy encodeDouble:@"_WorkoutConfigurationEndTimeKey" forKey:self->_endTime];
  [coderCopy encodeDouble:@"_WorkoutConfigurationKCalRateKey" forKey:self->_kcalRate];
  [coderCopy encodeDouble:@"_WorkoutConfigurationDistanceWalkingRateMilesKey" forKey:self->_distanceWalkingRateInMiles];
  [coderCopy encodeDouble:@"_WorkoutConfigurationDistanceCyclingRateMilesKey" forKey:self->_distanceCyclingRateInMiles];
  [coderCopy encodeDouble:@"_WorkoutConfigurationDistanceCrossCountrySkiingRateMetersKey" forKey:self->_distanceCrossCountrySkiingRateInMeters];
  [coderCopy encodeDouble:@"_WorkoutConfigurationDistanceRowingRateMetersKey" forKey:self->_distanceRowingRateInMeters];
  [coderCopy encodeDouble:@"_WorkoutConfigurationDistanceSkatingSportsRateMetersKey" forKey:self->_distanceSkatingSportsRateInMeters];
  [coderCopy encodeDouble:@"_WorkoutConfigurationDistancePaddleSportsRateMetersKey" forKey:self->_distancePaddleSportsRateInMeters];
  [coderCopy encodeDouble:@"_WorkoutConfigurationDistanceDownhillSnowSportsRateMetersKey" forKey:self->_distanceDownhillSnowSportsRateInMeters];
  [coderCopy encodeDouble:@"_WorkoutConfigurationDistanceSwimmingRateYardsKey" forKey:self->_distanceSwimmingRateInYards];
  [coderCopy encodeInteger:self->_numSwimmingSegments forKey:@"_WorkoutConfigurationNumSwimmingSegmentsKey"];
  [coderCopy encodeDouble:@"_WorkoutConfigurationSwimmingSwimSegmentTimeKey" forKey:self->_swimmingSwimSegmentTime];
  [coderCopy encodeDouble:@"_WorkoutConfigurationSwimmingRestSegmentTimeKey" forKey:self->_swimmingRestSegmentTime];
  [coderCopy encodeInteger:self->_swimmingNumLapsPerSegment forKey:@"_WorkoutConfigurationSwimmingNumLapsPerSegmentKey"];
  [coderCopy encodeInteger:self->_swimmingStrokeStyle forKey:@"_WorkoutConfigurationSwimmingStrokeStyleKey"];
}

@end