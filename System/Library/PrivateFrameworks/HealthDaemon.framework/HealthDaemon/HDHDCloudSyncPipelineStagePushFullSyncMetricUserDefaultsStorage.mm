@interface HDHDCloudSyncPipelineStagePushFullSyncMetricUserDefaultsStorage
- (HDHDCloudSyncPipelineStagePushFullSyncMetricUserDefaultsStorage)init;
- (NSDictionary)ongoingSyncMetrics;
- (double)activeDuration;
- (double)startTime;
- (int64_t)numberOfRuns;
- (void)reset;
- (void)setActiveDuration:(double)a3;
- (void)setNumberOfRuns:(int64_t)a3;
- (void)setOngoingSyncMetrics:(id)a3;
- (void)setStartTime:(double)a3;
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
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"HDCloudSyncFullSyncOngoing"];

  return v3;
}

- (void)setOngoingSyncMetrics:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  [v5 setObject:v4 forKey:@"HDCloudSyncFullSyncOngoing"];
}

- (double)startTime
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 doubleForKey:@"HDCloudSyncFullSyncStartTime"];
  v4 = v3;

  return v4;
}

- (void)setStartTime:(double)a3
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 setDouble:@"HDCloudSyncFullSyncStartTime" forKey:a3];
}

- (double)activeDuration
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 doubleForKey:@"HDCloudSyncFullSyncActiveDuration"];
  v4 = v3;

  return v4;
}

- (void)setActiveDuration:(double)a3
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 setDouble:@"HDCloudSyncFullSyncActiveDuration" forKey:a3];
}

- (int64_t)numberOfRuns
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 integerForKey:@"HDCloudSyncFullSyncNumberOfRuns"];

  return v3;
}

- (void)setNumberOfRuns:(int64_t)a3
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 setInteger:a3 forKey:@"HDCloudSyncFullSyncNumberOfRuns"];
}

- (void)reset
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 removeObjectForKey:@"HDCloudSyncFullSyncOngoing"];

  self->_currentRunStartTime = 0.0;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 removeObjectForKey:@"HDCloudSyncFullSyncActiveDuration"];

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 removeObjectForKey:@"HDCloudSyncFullSyncNumberOfRuns"];
}

@end