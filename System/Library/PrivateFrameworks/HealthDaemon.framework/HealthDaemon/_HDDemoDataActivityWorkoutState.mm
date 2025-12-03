@interface _HDDemoDataActivityWorkoutState
- (_HDDemoDataActivityWorkoutState)init;
- (_HDDemoDataActivityWorkoutState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDDemoDataActivityWorkoutState

- (_HDDemoDataActivityWorkoutState)init
{
  v10.receiver = self;
  v10.super_class = _HDDemoDataActivityWorkoutState;
  v2 = [(_HDDemoDataActivityWorkoutState *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    associatedObjectUUIDs = v2->_associatedObjectUUIDs;
    v2->_associatedObjectUUIDs = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
    looseAssociatedObjectUUIDs = v2->_looseAssociatedObjectUUIDs;
    v2->_looseAssociatedObjectUUIDs = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    workoutEvents = v2->_workoutEvents;
    v2->_workoutEvents = v7;

    v2->_workoutActivityType = 37;
  }

  return v2;
}

- (_HDDemoDataActivityWorkoutState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = _HDDemoDataActivityWorkoutState;
  v5 = [(_HDDemoDataActivityWorkoutState *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectUUIDs"];
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v6];
    associatedObjectUUIDs = v5->_associatedObjectUUIDs;
    v5->_associatedObjectUUIDs = v7;

    [coderCopy decodeDoubleForKey:@"totalEnergy"];
    v5->_totalEnergyBurnedInKilocalories = v9;
    [coderCopy decodeDoubleForKey:@"totalWalkingDistance"];
    v5->_totalDistanceWalkingInMeters = v10;
    [coderCopy decodeDoubleForKey:@"totalCyclingDistance"];
    v5->_totalDistanceCyclingInMeters = v11;
    [coderCopy decodeDoubleForKey:@"totalSwimmingDistance"];
    v5->_totalDistanceSwimmingInYards = v12;
    v5->_totalDistanceCrossCountrySkiingInMeters = [coderCopy decodeIntegerForKey:@"totalCrossCountrySkiingDistance"];
    [coderCopy decodeDoubleForKey:@"totalRowingDistance"];
    v5->_totalDistanceRowingInMeters = v13;
    [coderCopy decodeDoubleForKey:@"totalSkatingSportsDistance"];
    v5->_totalDistanceSkatingSportsInMeters = v14;
    [coderCopy decodeDoubleForKey:@"totalPaddleSportsDistance"];
    v5->_totalDistancePaddleSportsInMeters = v15;
    [coderCopy decodeDoubleForKey:@"totalDownhillSnowSportsDistance"];
    v5->_totalDistanceDownhillSnowSportsInMeters = v16;
    [coderCopy decodeDoubleForKey:@"totalSwimmingStrokes"];
    v5->_totalSwimmingStrokes = v17;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutEvents"];
    v19 = [v18 mutableCopy];
    workoutEvents = v5->_workoutEvents;
    v5->_workoutEvents = v19;

    v5->_workoutActivityType = [coderCopy decodeIntegerForKey:@"activityType"];
    v5->_goalType = [coderCopy decodeIntegerForKey:@"goalType"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"goal"];
    goal = v5->_goal;
    v5->_goal = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v23;

    if ([coderCopy containsValueForKey:@"swimmingStrokeStyle"])
    {
      v25 = [coderCopy decodeIntegerForKey:@"swimmingStrokeStyle"];
    }

    else
    {
      v25 = 2;
    }

    v5->_swimmingStrokeStyle = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  associatedObjectUUIDs = self->_associatedObjectUUIDs;
  coderCopy = coder;
  [coderCopy encodeObject:associatedObjectUUIDs forKey:@"objectUUIDs"];
  [coderCopy encodeDouble:@"totalEnergy" forKey:self->_totalEnergyBurnedInKilocalories];
  [coderCopy encodeDouble:@"totalWalkingDistance" forKey:self->_totalDistanceWalkingInMeters];
  [coderCopy encodeDouble:@"totalCyclingDistance" forKey:self->_totalDistanceCyclingInMeters];
  [coderCopy encodeDouble:@"totalSwimmingDistance" forKey:self->_totalDistanceSwimmingInYards];
  [coderCopy encodeDouble:@"totalCrossCountrySkiingDistance" forKey:self->_totalDistanceCrossCountrySkiingInMeters];
  [coderCopy encodeDouble:@"totalRowingDistance" forKey:self->_totalDistanceRowingInMeters];
  [coderCopy encodeDouble:@"totalSkatingSportsDistance" forKey:self->_totalDistanceSkatingSportsInMeters];
  [coderCopy encodeDouble:@"totalPaddleSportsDistance" forKey:self->_totalDistancePaddleSportsInMeters];
  [coderCopy encodeDouble:@"totalDownhillSnowSportsDistance" forKey:self->_totalDistanceDownhillSnowSportsInMeters];
  [coderCopy encodeDouble:@"totalSwimmingStrokes" forKey:self->_totalSwimmingStrokes];
  [coderCopy encodeObject:self->_workoutEvents forKey:@"workoutEvents"];
  [coderCopy encodeInteger:self->_workoutActivityType forKey:@"activityType"];
  [coderCopy encodeInteger:self->_goalType forKey:@"goalType"];
  [coderCopy encodeObject:self->_goal forKey:@"goal"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeInteger:self->_swimmingStrokeStyle forKey:@"swimmingStrokeStyle"];
}

@end