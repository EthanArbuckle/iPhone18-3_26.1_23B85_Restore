@interface FIUIWorkoutStatistics
- (FIUIWorkoutStatistics)initWithWorkouts:(id)workouts;
- (id)formattedActiveEnergyBurnWithFormattingManager:(id)manager;
- (id)formattedAverageActiveEnergyBurnWithFormattingManager:(id)manager;
- (id)formattedAverageWorkoutDurationWithFormattingManager:(id)manager;
- (id)formattedDistanceWithFormattingManager:(id)manager distanceType:(unint64_t)type amountType:(unint64_t)amountType;
- (id)formattedPaceWithFormattingManager:(id)manager distanceType:(unint64_t)type;
- (id)formattedTotalActiveEnergyBurnWithFormattingManager:(id)manager;
- (id)formattedTotalWorkoutDurationWithFormattingManager:(id)manager;
- (id)formattedWorkoutDurationWithFormattingManager:(id)manager;
@end

@implementation FIUIWorkoutStatistics

- (FIUIWorkoutStatistics)initWithWorkouts:(id)workouts
{
  workoutsCopy = workouts;
  v9.receiver = self;
  v9.super_class = FIUIWorkoutStatistics;
  v5 = [(FIUIWorkoutStatistics *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E699CA08]) initWithWorkouts:workoutsCopy];
    workoutStatistics = v5->_workoutStatistics;
    v5->_workoutStatistics = v6;
  }

  return v5;
}

- (id)formattedWorkoutDurationWithFormattingManager:(id)manager
{
  workoutStatistics = self->_workoutStatistics;
  formattingManager = [manager formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedWorkoutDurationWithFormattingManager:formattingManager];

  return v5;
}

- (id)formattedActiveEnergyBurnWithFormattingManager:(id)manager
{
  workoutStatistics = self->_workoutStatistics;
  formattingManager = [manager formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedActiveEnergyBurnWithFormattingManager:formattingManager];

  return v5;
}

- (id)formattedPaceWithFormattingManager:(id)manager distanceType:(unint64_t)type
{
  workoutStatistics = self->_workoutStatistics;
  formattingManager = [manager formattingManager];
  v7 = [(FIWorkoutStatistics *)workoutStatistics formattedPaceWithFormattingManager:formattingManager distanceType:type];

  return v7;
}

- (id)formattedTotalWorkoutDurationWithFormattingManager:(id)manager
{
  workoutStatistics = self->_workoutStatistics;
  formattingManager = [manager formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedTotalWorkoutDurationWithFormattingManager:formattingManager];

  return v5;
}

- (id)formattedAverageWorkoutDurationWithFormattingManager:(id)manager
{
  workoutStatistics = self->_workoutStatistics;
  formattingManager = [manager formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedAverageWorkoutDurationWithFormattingManager:formattingManager];

  return v5;
}

- (id)formattedTotalActiveEnergyBurnWithFormattingManager:(id)manager
{
  workoutStatistics = self->_workoutStatistics;
  formattingManager = [manager formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedTotalActiveEnergyBurnWithFormattingManager:formattingManager];

  return v5;
}

- (id)formattedAverageActiveEnergyBurnWithFormattingManager:(id)manager
{
  workoutStatistics = self->_workoutStatistics;
  formattingManager = [manager formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedAverageActiveEnergyBurnWithFormattingManager:formattingManager];

  return v5;
}

- (id)formattedDistanceWithFormattingManager:(id)manager distanceType:(unint64_t)type amountType:(unint64_t)amountType
{
  workoutStatistics = self->_workoutStatistics;
  formattingManager = [manager formattingManager];
  v9 = [(FIWorkoutStatistics *)workoutStatistics formattedDistanceWithFormattingManager:formattingManager distanceType:type amountType:amountType];

  return v9;
}

@end