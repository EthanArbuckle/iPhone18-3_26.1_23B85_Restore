@interface HDHDCloudSyncPipelineStagePushFullSyncMetricUserDefaultsStorage
- (HDHDCloudSyncPipelineStagePushFullSyncMetricUserDefaultsStorage)init;
- (NSDictionary)ongoingSyncMetrics;
- (double)activeDuration;
- (double)startTime;
- (int64_t)numberOfRuns;
- (void)reset;
- (void)setActiveDuration:(double)duration;
- (void)setNumberOfRuns:(int64_t)runs;
- (void)setOngoingSyncMetrics:(id)metrics;
- (void)setStartTime:(double)time;
@end

@implementation HDHDCloudSyncPipelineStagePushFullSyncMetricUserDefaultsStorage

- (HDHDCloudSyncPipelineStagePushFullSyncMetricUserDefaultsStorage)init
{
  v3.receiver = self;
  v3.super_class = HDHDCloudSyncPipelineStagePushFullSyncMetricUserDefaultsStorage;
  result = [(HDHDCloudSyncPipelineStagePushFullSyncMetricUserDefaultsStorage *)&v3 init];
  if (result)
  {
    result->_currentRunStartTime = 0.0;
  }

  return result;
}

- (NSDictionary)ongoingSyncMetrics
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"HDCloudSyncFullSyncOngoing"];

  return v3;
}

- (void)setOngoingSyncMetrics:(id)metrics
{
  v3 = MEMORY[0x277CBEBD0];
  metricsCopy = metrics;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:metricsCopy forKey:@"HDCloudSyncFullSyncOngoing"];
}

- (double)startTime
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"HDCloudSyncFullSyncStartTime"];
  v4 = v3;

  return v4;
}

- (void)setStartTime:(double)time
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setDouble:@"HDCloudSyncFullSyncStartTime" forKey:time];
}

- (double)activeDuration
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"HDCloudSyncFullSyncActiveDuration"];
  v4 = v3;

  return v4;
}

- (void)setActiveDuration:(double)duration
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setDouble:@"HDCloudSyncFullSyncActiveDuration" forKey:duration];
}

- (int64_t)numberOfRuns
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"HDCloudSyncFullSyncNumberOfRuns"];

  return v3;
}

- (void)setNumberOfRuns:(int64_t)runs
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setInteger:runs forKey:@"HDCloudSyncFullSyncNumberOfRuns"];
}

- (void)reset
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"HDCloudSyncFullSyncOngoing"];

  self->_currentRunStartTime = 0.0;
  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 removeObjectForKey:@"HDCloudSyncFullSyncActiveDuration"];

  standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults3 removeObjectForKey:@"HDCloudSyncFullSyncNumberOfRuns"];
}

@end