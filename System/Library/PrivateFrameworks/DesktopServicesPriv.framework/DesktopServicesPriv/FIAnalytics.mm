@interface FIAnalytics
+ (id)sharedAnalytics;
- (void)sendAnalytics:(id)a3;
@end

@implementation FIAnalytics

+ (id)sharedAnalytics
{
  WeakRetained = objc_loadWeakRetained(&+[FIAnalytics sharedAnalytics]::sWeakSharedInstance);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(a1);
    objc_storeWeak(&+[FIAnalytics sharedAnalytics]::sWeakSharedInstance, WeakRetained);
  }

  return WeakRetained;
}

- (void)sendAnalytics:(id)a3
{
  v4 = a3;
  if ([v4 validate])
  {
    v5 = [v4 eventName];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__FIAnalytics_sendAnalytics___block_invoke;
    v6[3] = &unk_1E877EFD0;
    v7 = v4;
    [(FIAnalytics *)self sendEvent:v5 eventDictionary:v6];
  }
}

@end