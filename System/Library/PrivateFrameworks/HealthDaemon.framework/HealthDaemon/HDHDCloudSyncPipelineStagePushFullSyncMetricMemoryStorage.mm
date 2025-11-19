@interface HDHDCloudSyncPipelineStagePushFullSyncMetricMemoryStorage
- (HDHDCloudSyncPipelineStagePushFullSyncMetricMemoryStorage)init;
- (void)reset;
@end

@implementation HDHDCloudSyncPipelineStagePushFullSyncMetricMemoryStorage

- (HDHDCloudSyncPipelineStagePushFullSyncMetricMemoryStorage)init
{
  v6.receiver = self;
  v6.super_class = HDHDCloudSyncPipelineStagePushFullSyncMetricMemoryStorage;
  v2 = [(HDHDCloudSyncPipelineStagePushFullSyncMetricMemoryStorage *)&v6 init];
  v3 = v2;
  if (v2)
  {
    ongoingSyncMetrics = v2->_ongoingSyncMetrics;
    v2->_ongoingSyncMetrics = 0;

    *&v3->_startTime = 0u;
    *&v3->_activeDuration = 0u;
  }

  return v3;
}

- (void)reset
{
  ongoingSyncMetrics = self->_ongoingSyncMetrics;
  self->_ongoingSyncMetrics = 0;

  self->_currentRunStartTime = 0.0;
  self->_activeDuration = 0.0;
  self->_numberOfRuns = 0;
}

@end