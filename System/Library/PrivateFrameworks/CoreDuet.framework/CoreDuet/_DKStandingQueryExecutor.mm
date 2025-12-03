@interface _DKStandingQueryExecutor
+ (void)executeAllStandingQueriesWithStorage:(id)storage activity:(id)activity;
@end

@implementation _DKStandingQueryExecutor

+ (void)executeAllStandingQueriesWithStorage:(id)storage activity:(id)activity
{
  storageCopy = storage;
  activityCopy = activity;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(_DKDeviceActivityStandingQuery);
  [(_DKDeviceActivityStandingQuery *)v7 setActivity:activityCopy];
  [(_DKDeviceActivityStandingQuery *)v7 executeWithStorage:storageCopy];

  objc_autoreleasePoolPop(v6);
}

@end