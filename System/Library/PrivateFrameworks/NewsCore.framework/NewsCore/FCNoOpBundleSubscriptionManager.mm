@interface FCNoOpBundleSubscriptionManager
- (FCNoOpBundleSubscriptionManager)init;
- (id)bundleSubscriptionLookupEntry;
- (void)prepareForUseWithCompletion:(id)completion;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy completion:(id)completion;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy hideBundleDetectionUI:(BOOL)i completion:(id)completion;
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

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy hideBundleDetectionUI:(BOOL)i completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    cachedSubscription = [(FCNoOpBundleSubscriptionManager *)self cachedSubscription];
    (*(completion + 2))(completionCopy, cachedSubscription);
  }
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    cachedSubscription = [(FCNoOpBundleSubscriptionManager *)self cachedSubscription];
    (*(completion + 2))(completionCopy, cachedSubscription);
  }
}

- (void)prepareForUseWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

@end