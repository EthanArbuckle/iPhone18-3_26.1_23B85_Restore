@interface _DKStandingQueryExecutor
+ (void)executeAllStandingQueriesWithStorage:(id)a3 activity:(id)a4;
@end

@implementation _DKStandingQueryExecutor

+ (void)executeAllStandingQueriesWithStorage:(id)a3 activity:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(_DKDeviceActivityStandingQuery);
  [(_DKDeviceActivityStandingQuery *)v7 setActivity:v5];
  [(_DKDeviceActivityStandingQuery *)v7 executeWithStorage:v8];

  objc_autoreleasePoolPop(v6);
}

@end