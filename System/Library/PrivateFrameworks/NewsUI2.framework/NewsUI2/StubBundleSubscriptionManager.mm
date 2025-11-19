@interface StubBundleSubscriptionManager
- (FCEntitlementsOverrideProviderType)entitlementsOverrideProvider;
- (id)bundleSubscriptionLookupEntry;
- (void)prepareForUseWithCompletion:(id)a3;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 completion:(id)a4;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 hideBundleDetectionUI:(BOOL)a4 completion:(id)a5;
- (void)setEntitlementsOverrideProvider:(id)a3;
@end

@implementation StubBundleSubscriptionManager

- (FCEntitlementsOverrideProviderType)entitlementsOverrideProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setEntitlementsOverrideProvider:(id)a3
{
  self->entitlementsOverrideProvider = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    bundleSubscription = self->bundleSubscription;
    v7 = v5[2];
    v8 = v5;

    v7(v8, bundleSubscription);
    _Block_release(v8);
  }
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 hideBundleDetectionUI:(BOOL)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
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

- (void)prepareForUseWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))();

    _Block_release(v4);
  }
}

@end