@interface FIUIWorkoutDefaultMetricsProvider
- (BOOL)isMetricTypeSupported:(unint64_t)supported isMachineWorkout:(BOOL)workout activityType:(id)type;
- (FIUIWorkoutDefaultMetricsProvider)initWithMetricsVersion:(int64_t)version activityType:(id)type activityMoveMode:(int64_t)mode deviceSupportsElevationMetrics:(BOOL)metrics deviceSupportsGroundElevationMetrics:(BOOL)elevationMetrics;
- (id)appendMachineMetricsToMetrics:(id)metrics maxNumMetrics:(int64_t)numMetrics activityType:(id)type;
- (id)supportedMetricsWithIsMachineWorkout:(BOOL)workout activityType:(id)type;
@end

@implementation FIUIWorkoutDefaultMetricsProvider

- (FIUIWorkoutDefaultMetricsProvider)initWithMetricsVersion:(int64_t)version activityType:(id)type activityMoveMode:(int64_t)mode deviceSupportsElevationMetrics:(BOOL)metrics deviceSupportsGroundElevationMetrics:(BOOL)elevationMetrics
{
  elevationMetricsCopy = elevationMetrics;
  metricsCopy = metrics;
  typeCopy = type;
  v19.receiver = self;
  v19.super_class = FIUIWorkoutDefaultMetricsProvider;
  v13 = [(FIUIWorkoutDefaultMetricsProvider *)&v19 init];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E699C9F8]);
    workoutActivityType = [typeCopy workoutActivityType];
    v16 = [v14 initWithMetricsVersion:version activityType:workoutActivityType activityMoveMode:mode deviceSupportsElevationMetrics:metricsCopy deviceSupportsGroundElevationMetrics:elevationMetricsCopy];
    defaultMetricsProvider = v13->_defaultMetricsProvider;
    v13->_defaultMetricsProvider = v16;
  }

  return v13;
}

- (BOOL)isMetricTypeSupported:(unint64_t)supported isMachineWorkout:(BOOL)workout activityType:(id)type
{
  workoutCopy = workout;
  defaultMetricsProvider = self->_defaultMetricsProvider;
  workoutActivityType = [type workoutActivityType];
  LOBYTE(workoutCopy) = [(FIWorkoutDefaultMetricsProvider *)defaultMetricsProvider isMetricTypeSupported:supported isMachineWorkout:workoutCopy activityType:workoutActivityType];

  return workoutCopy;
}

- (id)supportedMetricsWithIsMachineWorkout:(BOOL)workout activityType:(id)type
{
  workoutCopy = workout;
  defaultMetricsProvider = self->_defaultMetricsProvider;
  workoutActivityType = [type workoutActivityType];
  v7 = [(FIWorkoutDefaultMetricsProvider *)defaultMetricsProvider supportedMetricsWithIsMachineWorkout:workoutCopy activityType:workoutActivityType];

  return v7;
}

- (id)appendMachineMetricsToMetrics:(id)metrics maxNumMetrics:(int64_t)numMetrics activityType:(id)type
{
  defaultMetricsProvider = self->_defaultMetricsProvider;
  metricsCopy = metrics;
  workoutActivityType = [type workoutActivityType];
  v10 = [(FIWorkoutDefaultMetricsProvider *)defaultMetricsProvider appendMachineMetricsToMetrics:metricsCopy maxNumMetrics:numMetrics activityType:workoutActivityType];

  return v10;
}

@end