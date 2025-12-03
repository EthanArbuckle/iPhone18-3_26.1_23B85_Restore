@interface HDHeadphoneExposureStatisticsResult
+ (HDHeadphoneExposureStatisticsResult)resultWithCache:(id)cache prunedCount:(id)count;
+ (id)resultForAppendedSamplesDuringStartup;
- (id)_initWithCache:(id)cache eligbleForUserNotification:(BOOL)notification prunedCount:(id)count;
@end

@implementation HDHeadphoneExposureStatisticsResult

+ (id)resultForAppendedSamplesDuringStartup
{
  v2 = [[self alloc] _initWithCache:0 eligbleForUserNotification:0 prunedCount:0];

  return v2;
}

+ (HDHeadphoneExposureStatisticsResult)resultWithCache:(id)cache prunedCount:(id)count
{
  countCopy = count;
  cacheCopy = cache;
  v8 = [[self alloc] _initWithCache:cacheCopy eligbleForUserNotification:0 prunedCount:countCopy];

  return v8;
}

- (id)_initWithCache:(id)cache eligbleForUserNotification:(BOOL)notification prunedCount:(id)count
{
  cacheCopy = cache;
  countCopy = count;
  v15.receiver = self;
  v15.super_class = HDHeadphoneExposureStatisticsResult;
  v11 = [(HDHeadphoneExposureStatisticsResult *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cache, cache);
    v12->_eligbleForUserNotification = notification;
    objc_storeStrong(&v12->_prunedCount, count);
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