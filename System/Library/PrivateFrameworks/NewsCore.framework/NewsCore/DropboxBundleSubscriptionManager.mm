@interface DropboxBundleSubscriptionManager
- (BOOL)canGetAccessToItemPaid:(BOOL)paid bundlePaid:(BOOL)bundlePaid channel:(id)channel;
- (BOOL)canGetBundleSubscriptionToChannel:(id)channel;
- (BOOL)canGetSubscriptionToChannel:(id)channel;
- (FCBundleSubscription)bundleSubscription;
- (FCBundleSubscription)cachedSubscription;
- (FCBundleSubscription)validatedCachedSubscription;
- (FCEntitlementsOverrideProviderType)entitlementsOverrideProvider;
- (NSSet)purchasedTagIDs;
- (_TtC8NewsCore32DropboxBundleSubscriptionManager)init;
- (id)bundleSubscriptionLookupEntry;
- (void)prepareForUseWithCompletion:(id)completion;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy completion:(id)completion;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy hideBundleDetectionUI:(BOOL)i completion:(id)completion;
- (void)setEntitlementsOverrideProvider:(id)provider;
@end

@implementation DropboxBundleSubscriptionManager

- (FCBundleSubscription)cachedSubscription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  sub_1B644DC8C((v2 + 16), &v7);
  os_unfair_lock_unlock((v2 + 24));
  bundleSubscription = [v7 bundleSubscription];
  swift_unknownObjectRelease();
  if (!bundleSubscription)
  {
    v5 = sub_1B67D97AC();
    bundleSubscription = FCBundleSubscriptionMakeWithStateInline(v5);
  }

  return bundleSubscription;
}

- (FCBundleSubscription)bundleSubscription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  sub_1B644DC8C((v2 + 16), &v7);
  os_unfair_lock_unlock((v2 + 24));
  bundleSubscription = [v7 bundleSubscription];
  swift_unknownObjectRelease();
  if (!bundleSubscription)
  {
    v5 = sub_1B67D97AC();
    bundleSubscription = FCBundleSubscriptionMakeWithStateInline(v5);
  }

  return bundleSubscription;
}

- (FCBundleSubscription)validatedCachedSubscription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  sub_1B644DC8C((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 24));
  bundleSubscription = [v6 bundleSubscription];

  swift_unknownObjectRelease();

  return bundleSubscription;
}

- (FCEntitlementsOverrideProviderType)entitlementsOverrideProvider
{
  v3 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setEntitlementsOverrideProvider:(id)provider
{
  v5 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = provider;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v6 = sub_1B644DCAC;
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  sub_1B644DA6C(v6);
  sub_1B64475B8(v6);
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy hideBundleDetectionUI:(BOOL)i completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v7 = sub_1B644DBF4;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_1B644DA6C(v7);
  sub_1B64475B8(v7);
}

- (id)bundleSubscriptionLookupEntry
{
  result = sub_1B67DA07C();
  __break(1u);
  return result;
}

- (BOOL)canGetAccessToItemPaid:(BOOL)paid bundlePaid:(BOOL)bundlePaid channel:(id)channel
{
  result = sub_1B67DA07C();
  __break(1u);
  return result;
}

- (BOOL)canGetSubscriptionToChannel:(id)channel
{
  result = sub_1B67DA07C();
  __break(1u);
  return result;
}

- (BOOL)canGetBundleSubscriptionToChannel:(id)channel
{
  result = sub_1B67DA07C();
  __break(1u);
  return result;
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

- (NSSet)purchasedTagIDs
{
  selfCopy = self;
  DropboxBundleSubscriptionManager.purchasedTagIDs.getter();

  v3 = sub_1B67D9AEC();

  return v3;
}

- (_TtC8NewsCore32DropboxBundleSubscriptionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end