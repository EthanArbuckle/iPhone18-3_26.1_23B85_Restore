@interface StubBundleSubscriptionManager
- (FCEntitlementsOverrideProviderType)entitlementsOverrideProvider;
- (id)bundleSubscriptionLookupEntry;
- (void)prepareForUseWithCompletion:(id)completion;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy completion:(id)completion;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy hideBundleDetectionUI:(BOOL)i completion:(id)completion;
- (void)setEntitlementsOverrideProvider:(id)provider;
@end

@implementation StubBundleSubscriptionManager

- (FCEntitlementsOverrideProviderType)entitlementsOverrideProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setEntitlementsOverrideProvider:(id)provider
{
  self->entitlementsOverrideProvider = provider;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    bundleSubscription = self->bundleSubscription;
    v7 = v5[2];
    v8 = v5;

    v7(v8, bundleSubscription);
    _Block_release(v8);
  }
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy hideBundleDetectionUI:(BOOL)i completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    bundleSubscription = self->bundleSubscription;
    v8 = v6[2];
    v9 = v6;

    v8(v9, bundleSubscription);
    _Block_release(v9);
  }
}

- (id)bundleSubscriptionLookupEntry
{
  v2 = [objc_allocWithZone(MEMORY[0x277D30E78]) init];

  return v2;
}

- (void)prepareForUseWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))();

    _Block_release(v4);
  }
}

@end