@interface FIUIWorkoutStatistics
- (FIUIWorkoutStatistics)initWithWorkouts:(id)a3;
- (id)formattedActiveEnergyBurnWithFormattingManager:(id)a3;
- (id)formattedAverageActiveEnergyBurnWithFormattingManager:(id)a3;
- (id)formattedAverageWorkoutDurationWithFormattingManager:(id)a3;
- (id)formattedDistanceWithFormattingManager:(id)a3 distanceType:(unint64_t)a4 amountType:(unint64_t)a5;
- (id)formattedPaceWithFormattingManager:(id)a3 distanceType:(unint64_t)a4;
- (id)formattedTotalActiveEnergyBurnWithFormattingManager:(id)a3;
- (id)formattedTotalWorkoutDurationWithFormattingManager:(id)a3;
- (id)formattedWorkoutDurationWithFormattingManager:(id)a3;
@end

@implementation FIUIWorkoutStatistics

- (FIUIWorkoutStatistics)initWithWorkouts:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FIUIWorkoutStatistics;
  v5 = [(FIUIWorkoutStatistics *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E699CA08]) initWithWorkouts:v4];
    workoutStatistics = v5->_workoutStatistics;
    v5->_workoutStatistics = v6;
  }

  return v5;
}

- (id)formattedWorkoutDurationWithFormattingManager:(id)a3
{
  workoutStatistics = self->_workoutStatistics;
  v4 = [a3 formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedWorkoutDurationWithFormattingManager:v4];

  return v5;
}

- (id)formattedActiveEnergyBurnWithFormattingManager:(id)a3
{
  workoutStatistics = self->_workoutStatistics;
  v4 = [a3 formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedActiveEnergyBurnWithFormattingManager:v4];

  return v5;
}

- (id)formattedPaceWithFormattingManager:(id)a3 distanceType:(unint64_t)a4
{
  workoutStatistics = self->_workoutStatistics;
  v6 = [a3 formattingManager];
  v7 = [(FIWorkoutStatistics *)workoutStatistics formattedPaceWithFormattingManager:v6 distanceType:a4];

  return v7;
}

- (id)formattedTotalWorkoutDurationWithFormattingManager:(id)a3
{
  workoutStatistics = self->_workoutStatistics;
  v4 = [a3 formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedTotalWorkoutDurationWithFormattingManager:v4];

  return v5;
}

- (id)formattedAverageWorkoutDurationWithFormattingManager:(id)a3
{
  workoutStatistics = self->_workoutStatistics;
  v4 = [a3 formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedAverageWorkoutDurationWithFormattingManager:v4];

  return v5;
}

- (id)formattedTotalActiveEnergyBurnWithFormattingManager:(id)a3
{
  workoutStatistics = self->_workoutStatistics;
  v4 = [a3 formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedTotalActiveEnergyBurnWithFormattingManager:v4];

  return v5;
}

- (id)formattedAverageActiveEnergyBurnWithFormattingManager:(id)a3
{
  workoutStatistics = self->_workoutStatistics;
  v4 = [a3 formattingManager];
  v5 = [(FIWorkoutStatistics *)workoutStatistics formattedAverageActiveEnergyBurnWithFormattingManager:v4];

  return v5;
}

- (id)formattedDistanceWithFormattingManager:(id)a3 distanceType:(unint64_t)a4 amountType:(unint64_t)a5
{
  workoutStatistics = self->_workoutStatistics;
  v8 = [a3 formattingManager];
  v9 = [(FIWorkoutStatistics *)workoutStatistics formattedDistanceWithFormattingManager:v8 distanceType:a4 amountType:a5];

  return v9;
}

@end