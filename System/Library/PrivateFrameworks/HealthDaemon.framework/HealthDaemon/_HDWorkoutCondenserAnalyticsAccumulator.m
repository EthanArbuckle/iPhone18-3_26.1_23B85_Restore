@interface _HDWorkoutCondenserAnalyticsAccumulator
- (_HDWorkoutCondenserAnalyticsAccumulator)init;
- (id)description;
@end

@implementation _HDWorkoutCondenserAnalyticsAccumulator

- (_HDWorkoutCondenserAnalyticsAccumulator)init
{
  v3.receiver = self;
  v3.super_class = _HDWorkoutCondenserAnalyticsAccumulator;
  result = [(_HDWorkoutCondenserAnalyticsAccumulator *)&v3 init];
  if (result)
  {
    result->_hasProcessedWorkout = 0;
    *&result->_workoutsToCondense = 0u;
    *&result->_condensedWorkouts = 0u;
    *&result->_createdSeries = 0u;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = _HDWorkoutCondenserAnalyticsAccumulator;
  v4 = [(_HDWorkoutCondenserAnalyticsAccumulator *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ workoutsToCondense (%ld) workoutsToRecondense (%ld) condensedWorkouts (%ld) processedWorkouts (%ld) createdSeries (%ld) deletedSamples (%ld)>", v4, self->_workoutsToCondense, self->_workoutsToRecondense, self->_condensedWorkouts, self->_processedWorkouts, self->_createdSeries, self->_deletedSamples];

  return v5;
}

@end