@interface HDHeadphoneExposureStatisticsResult
+ (HDHeadphoneExposureStatisticsResult)resultWithCache:(id)a3 prunedCount:(id)a4;
+ (id)resultForAppendedSamplesDuringStartup;
- (id)_initWithCache:(id)a3 eligbleForUserNotification:(BOOL)a4 prunedCount:(id)a5;
@end

@implementation HDHeadphoneExposureStatisticsResult

+ (id)resultForAppendedSamplesDuringStartup
{
  v2 = [[a1 alloc] _initWithCache:0 eligbleForUserNotification:0 prunedCount:0];

  return v2;
}

+ (HDHeadphoneExposureStatisticsResult)resultWithCache:(id)a3 prunedCount:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithCache:v7 eligbleForUserNotification:0 prunedCount:v6];

  return v8;
}

- (id)_initWithCache:(id)a3 eligbleForUserNotification:(BOOL)a4 prunedCount:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HDHeadphoneExposureStatisticsResult;
  v11 = [(HDHeadphoneExposureStatisticsResult *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cache, a3);
    v12->_eligbleForUserNotification = a4;
    objc_storeStrong(&v12->_prunedCount, a5);
    v13 = v12;
  }

  return v12;
}

+ (void)resultWithCache:(uint64_t)a1 eligbleForUserNotification:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHeadphoneExposureStatisticsResult.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"cache"}];
}

@end