@interface _HDDemoDataActivityWorkoutState
- (_HDDemoDataActivityWorkoutState)init;
- (_HDDemoDataActivityWorkoutState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (_HDDemoDataActivityWorkoutState)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _HDDemoDataActivityWorkoutState;
  v5 = [(_HDDemoDataActivityWorkoutState *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectUUIDs"];
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v6];
    associatedObjectUUIDs = v5->_associatedObjectUUIDs;
    v5->_associatedObjectUUIDs = v7;

    [v4 decodeDoubleForKey:@"totalEnergy"];
    v5->_totalEnergyBurnedInKilocalories = v9;
    [v4 decodeDoubleForKey:@"totalWalkingDistance"];
    v5->_totalDistanceWalkingInMeters = v10;
    [v4 decodeDoubleForKey:@"totalCyclingDistance"];
    v5->_totalDistanceCyclingInMeters = v11;
    [v4 decodeDoubleForKey:@"totalSwimmingDistance"];
    v5->_totalDistanceSwimmingInYards = v12;
    v5->_totalDistanceCrossCountrySkiingInMeters = [v4 decodeIntegerForKey:@"totalCrossCountrySkiingDistance"];
    [v4 decodeDoubleForKey:@"totalRowingDistance"];
    v5->_totalDistanceRowingInMeters = v13;
    [v4 decodeDoubleForKey:@"totalSkatingSportsDistance"];
    v5->_totalDistanceSkatingSportsInMeters = v14;
    [v4 decodeDoubleForKey:@"totalPaddleSportsDistance"];
    v5->_totalDistancePaddleSportsInMeters = v15;
    [v4 decodeDoubleForKey:@"totalDownhillSnowSportsDistance"];
    v5->_totalDistanceDownhillSnowSportsInMeters = v16;
    [v4 decodeDoubleForKey:@"totalSwimmingStrokes"];
    v5->_totalSwimmingStrokes = v17;
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutEvents"];
    v19 = [v18 mutableCopy];
    workoutEvents = v5->_workoutEvents;
    v5->_workoutEvents = v19;

    v5->_workoutActivityType = [v4 decodeIntegerForKey:@"activityType"];
    v5->_goalType = [v4 decodeIntegerForKey:@"goalType"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"goal"];
    goal = v5->_goal;
    v5->_goal = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v23;

    if ([v4 containsValueForKey:@"swimmingStrokeStyle"])
    {
      v25 = [v4 decodeIntegerForKey:@"swimmingStrokeStyle"];
    }

    else
    {
      v25 = 2;
    }

    v5->_swimmingStrokeStyle = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  associatedObjectUUIDs = self->_associatedObjectUUIDs;
  v5 = a3;
  [v5 encodeObject:associatedObjectUUIDs forKey:@"objectUUIDs"];
  [v5 encodeDouble:@"totalEnergy" forKey:self->_totalEnergyBurnedInKilocalories];
  [v5 encodeDouble:@"totalWalkingDistance" forKey:self->_totalDistanceWalkingInMeters];
  [v5 encodeDouble:@"totalCyclingDistance" forKey:self->_totalDistanceCyclingInMeters];
  [v5 encodeDouble:@"totalSwimmingDistance" forKey:self->_totalDistanceSwimmingInYards];
  [v5 encodeDouble:@"totalCrossCountrySkiingDistance" forKey:self->_totalDistanceCrossCountrySkiingInMeters];
  [v5 encodeDouble:@"totalRowingDistance" forKey:self->_totalDistanceRowingInMeters];
  [v5 encodeDouble:@"totalSkatingSportsDistance" forKey:self->_totalDistanceSkatingSportsInMeters];
  [v5 encodeDouble:@"totalPaddleSportsDistance" forKey:self->_totalDistancePaddleSportsInMeters];
  [v5 encodeDouble:@"totalDownhillSnowSportsDistance" forKey:self->_totalDistanceDownhillSnowSportsInMeters];
  [v5 encodeDouble:@"totalSwimmingStrokes" forKey:self->_totalSwimmingStrokes];
  [v5 encodeObject:self->_workoutEvents forKey:@"workoutEvents"];
  [v5 encodeInteger:self->_workoutActivityType forKey:@"activityType"];
  [v5 encodeInteger:self->_goalType forKey:@"goalType"];
  [v5 encodeObject:self->_goal forKey:@"goal"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeInteger:self->_swimmingStrokeStyle forKey:@"swimmingStrokeStyle"];
}

@end