@interface FCNoOpBundleSubscriptionManager
- (FCNoOpBundleSubscriptionManager)init;
- (id)bundleSubscriptionLookupEntry;
- (void)prepareForUseWithCompletion:(id)a3;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 completion:(id)a4;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 hideBundleDetectionUI:(BOOL)a4 completion:(id)a5;
@end

@implementation FCNoOpBundleSubscriptionManager

- (FCNoOpBundleSubscriptionManager)init
{
  v8.receiver = self;
  v8.super_class = FCNoOpBundleSubscriptionManager;
  v2 = [(FCNoOpBundleSubscriptionManager *)&v8 init];
  if (v2)
  {
    v3 = [FCBundleSubscription subscriptionWithSubscriptionState:3 bundleChannelIDs:MEMORY[0x1E695E0F0]];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3 + 25];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-25 - v3];
    objc_setAssociatedObject(v3, (v3 + 1), v4, 1);
    objc_setAssociatedObject(v3, (-26 - v3), v5, 1);

    cachedSubscription = v2->cachedSubscription;
    v2->cachedSubscription = v3;
  }

  return v2;
}

- (id)bundleSubscriptionLookupEntry
{
  v2 = objc_alloc_init(FCBundleSubscriptionLookUpEntry);

  return v2;
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 hideBundleDetectionUI:(BOOL)a4 completion:(id)a5
{
  if (a5)
  {
    v7 = a5;
    v8 = [(FCNoOpBundleSubscriptionManager *)self cachedSubscription];
    (*(a5 + 2))(v7, v8);
  }
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 completion:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(FCNoOpBundleSubscriptionManager *)self cachedSubscription];
    (*(a4 + 2))(v6, v7);
  }
}

- (void)prepareForUseWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

@end