@interface MTMetrics
+ (id)_sharedPublicMetrics;
- (MTMetrics)init;
- (void)logAlarmAdded:(BOOL)a3;
- (void)logAlarmDeleted:(BOOL)a3;
- (void)logAlarmDismissAction:(unint64_t)a3;
- (void)logAlarmSnoozeAction:(unint64_t)a3;
- (void)logAlarmUpdated:(BOOL)a3;
- (void)logMultipleTimersAdded:(id)a3;
- (void)logSyncFailedWithError:(id)a3;
@end

@implementation MTMetrics

- (MTMetrics)init
{
  v6.receiver = self;
  v6.super_class = MTMetrics;
  v2 = [(MTMetrics *)&v6 init];
  if (v2)
  {
    v3 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTMetrics.serialqueue", +[MTScheduler defaultPriority]);
    serializer = v2->_serializer;
    v2->_serializer = v3;
  }

  return v2;
}

+ (id)_sharedPublicMetrics
{
  if (_sharedPublicMetrics_onceToken != -1)
  {
    +[MTMetrics _sharedPublicMetrics];
  }

  v3 = _sharedPublicMetrics__sharedPublicMetrics;

  return v3;
}

uint64_t __33__MTMetrics__sharedPublicMetrics__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _sharedPublicMetrics__sharedPublicMetrics;
  _sharedPublicMetrics__sharedPublicMetrics = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)logAlarmAdded:(BOOL)a3
{
  serializer = self->_serializer;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__MTMetrics_logAlarmAdded___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a3;
  [(NAScheduler *)serializer performBlock:v4];
}

uint64_t __27__MTMetrics_logAlarmAdded___block_invoke(uint64_t a1)
{
  v1 = kMTMetricSleepAlarmAddKey;
  if (!*(a1 + 32))
  {
    v1 = kMTMetricAlarmAddKey;
  }

  return [MTAnalytics incrementEventCount:*v1];
}

- (void)logAlarmDeleted:(BOOL)a3
{
  serializer = self->_serializer;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__MTMetrics_logAlarmDeleted___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a3;
  [(NAScheduler *)serializer performBlock:v4];
}

uint64_t __29__MTMetrics_logAlarmDeleted___block_invoke(uint64_t a1)
{
  v1 = kMTMetricSleepAlarmDeleteKey;
  if (!*(a1 + 32))
  {
    v1 = kMTMetricAlarmDeleteKey;
  }

  return [MTAnalytics incrementEventCount:*v1];
}

- (void)logAlarmUpdated:(BOOL)a3
{
  serializer = self->_serializer;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__MTMetrics_logAlarmUpdated___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a3;
  [(NAScheduler *)serializer performBlock:v4];
}

uint64_t __29__MTMetrics_logAlarmUpdated___block_invoke(uint64_t a1)
{
  v1 = kMTMetricSleepAlarmUpdateKey;
  if (!*(a1 + 32))
  {
    v1 = kMTMetricAlarmUpdateKey;
  }

  return [MTAnalytics incrementEventCount:*v1];
}

- (void)logAlarmSnoozeAction:(unint64_t)a3
{
  serializer = self->_serializer;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__MTMetrics_logAlarmSnoozeAction___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a3;
  [(NAScheduler *)serializer performBlock:v4];
}

uint64_t __34__MTMetrics_logAlarmSnoozeAction___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 <= 2)
  {
    return [MTAnalytics incrementEventCount:*off_1E7B0E710[v1]];
  }

  return result;
}

- (void)logAlarmDismissAction:(unint64_t)a3
{
  serializer = self->_serializer;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__MTMetrics_logAlarmDismissAction___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a3;
  [(NAScheduler *)serializer performBlock:v4];
}

uint64_t __35__MTMetrics_logAlarmDismissAction___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 <= 0xB && ((0xDE7u >> v1) & 1) != 0)
  {
    return [MTAnalytics incrementEventCount:*off_1E7B0E728[v1]];
  }

  return result;
}

- (void)logMultipleTimersAdded:(id)a3
{
  v4 = a3;
  serializer = self->_serializer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MTMetrics_logMultipleTimersAdded___block_invoke;
  v7[3] = &unk_1E7B0C9D8;
  v8 = v4;
  v6 = v4;
  [(NAScheduler *)serializer performBlock:v7];
}

void __36__MTMetrics_logMultipleTimersAdded___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"multipleTimersCount";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [MTAnalytics submitEvent:@"com.apple.MobileTimer.MultipleTimers.running" eventParameters:v2];

  v3 = *MEMORY[0x1E69E9840];
}

- (void)logSyncFailedWithError:(id)a3
{
  v4 = a3;
  serializer = self->_serializer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MTMetrics_logSyncFailedWithError___block_invoke;
  v7[3] = &unk_1E7B0C9D8;
  v8 = v4;
  v6 = v4;
  [(NAScheduler *)serializer performBlock:v7];
}

void __36__MTMetrics_logSyncFailedWithError___block_invoke(uint64_t a1)
{
  [MTAnalytics incrementEventCount:@"com.apple.MobileTimer.Sync.failure"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [v5 stringValue];
  v4 = [v2 stringWithFormat:@"%@.%@", @"com.apple.MobileTimer.Sync.Error", v3];

  [MTAnalytics incrementEventCount:v4];
}

@end