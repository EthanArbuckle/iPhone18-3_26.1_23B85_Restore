@interface FIUIWorkoutDefaultMetricsProvider
- (BOOL)isMetricTypeSupported:(unint64_t)a3 isMachineWorkout:(BOOL)a4 activityType:(id)a5;
- (FIUIWorkoutDefaultMetricsProvider)initWithMetricsVersion:(int64_t)a3 activityType:(id)a4 activityMoveMode:(int64_t)a5 deviceSupportsElevationMetrics:(BOOL)a6 deviceSupportsGroundElevationMetrics:(BOOL)a7;
- (id)appendMachineMetricsToMetrics:(id)a3 maxNumMetrics:(int64_t)a4 activityType:(id)a5;
- (id)supportedMetricsWithIsMachineWorkout:(BOOL)a3 activityType:(id)a4;
@end

@implementation FIUIWorkoutDefaultMetricsProvider

- (FIUIWorkoutDefaultMetricsProvider)initWithMetricsVersion:(int64_t)a3 activityType:(id)a4 activityMoveMode:(int64_t)a5 deviceSupportsElevationMetrics:(BOOL)a6 deviceSupportsGroundElevationMetrics:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a4;
  v19.receiver = self;
  v19.super_class = FIUIWorkoutDefaultMetricsProvider;
  v13 = [(FIUIWorkoutDefaultMetricsProvider *)&v19 init];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E699C9F8]);
    v15 = [v12 workoutActivityType];
    v16 = [v14 initWithMetricsVersion:a3 activityType:v15 activityMoveMode:a5 deviceSupportsElevationMetrics:v8 deviceSupportsGroundElevationMetrics:v7];
    defaultMetricsProvider = v13->_defaultMetricsProvider;
    v13->_defaultMetricsProvider = v16;
  }

  return v13;
}

- (BOOL)isMetricTypeSupported:(unint64_t)a3 isMachineWorkout:(BOOL)a4 activityType:(id)a5
{
  v5 = a4;
  defaultMetricsProvider = self->_defaultMetricsProvider;
  v8 = [a5 workoutActivityType];
  LOBYTE(v5) = [(FIWorkoutDefaultMetricsProvider *)defaultMetricsProvider isMetricTypeSupported:a3 isMachineWorkout:v5 activityType:v8];

  return v5;
}

- (id)supportedMetricsWithIsMachineWorkout:(BOOL)a3 activityType:(id)a4
{
  v4 = a3;
  defaultMetricsProvider = self->_defaultMetricsProvider;
  v6 = [a4 workoutActivityType];
  v7 = [(FIWorkoutDefaultMetricsProvider *)defaultMetricsProvider supportedMetricsWithIsMachineWorkout:v4 activityType:v6];

  return v7;
}

- (id)appendMachineMetricsToMetrics:(id)a3 maxNumMetrics:(int64_t)a4 activityType:(id)a5
{
  defaultMetricsProvider = self->_defaultMetricsProvider;
  v8 = a3;
  v9 = [a5 workoutActivityType];
  v10 = [(FIWorkoutDefaultMetricsProvider *)defaultMetricsProvider appendMachineMetricsToMetrics:v8 maxNumMetrics:a4 activityType:v9];

  return v10;
}

@end