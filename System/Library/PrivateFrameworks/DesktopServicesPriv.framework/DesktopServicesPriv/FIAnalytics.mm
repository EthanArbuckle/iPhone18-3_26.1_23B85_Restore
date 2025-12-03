@interface FIAnalytics
+ (id)sharedAnalytics;
- (void)sendAnalytics:(id)analytics;
@end

@implementation FIAnalytics

+ (id)sharedAnalytics
{
  WeakRetained = objc_loadWeakRetained(&+[FIAnalytics sharedAnalytics]::sWeakSharedInstance);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(self);
    objc_storeWeak(&+[FIAnalytics sharedAnalytics]::sWeakSharedInstance, WeakRetained);
  }

  return WeakRetained;
}

- (void)sendAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  if ([analyticsCopy validate])
  {
    eventName = [analyticsCopy eventName];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__FIAnalytics_sendAnalytics___block_invoke;
    v6[3] = &unk_1E877EFD0;
    v7 = analyticsCopy;
    [(FIAnalytics *)self sendEvent:eventName eventDictionary:v6];
  }
}

@end