@interface DropboxBundleSubscriptionManager
- (BOOL)canGetAccessToItemPaid:(BOOL)a3 bundlePaid:(BOOL)a4 channel:(id)a5;
- (BOOL)canGetBundleSubscriptionToChannel:(id)a3;
- (BOOL)canGetSubscriptionToChannel:(id)a3;
- (FCBundleSubscription)bundleSubscription;
- (FCBundleSubscription)cachedSubscription;
- (FCBundleSubscription)validatedCachedSubscription;
- (FCEntitlementsOverrideProviderType)entitlementsOverrideProvider;
- (NSSet)purchasedTagIDs;
- (_TtC8NewsCore32DropboxBundleSubscriptionManager)init;
- (id)bundleSubscriptionLookupEntry;
- (void)prepareForUseWithCompletion:(id)a3;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 completion:(id)a4;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 hideBundleDetectionUI:(BOOL)a4 completion:(id)a5;
- (void)setEntitlementsOverrideProvider:(id)a3;
@end

@implementation DropboxBundleSubscriptionManager

- (FCBundleSubscription)cachedSubscription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  sub_1B644DC8C((v2 + 16), &v7);
  os_unfair_lock_unlock((v2 + 24));
  v4 = [v7 bundleSubscription];
  swift_unknownObjectRelease();
  if (!v4)
  {
    v5 = sub_1B67D97AC();
    v4 = FCBundleSubscriptionMakeWithStateInline(v5);
  }

  return v4;
}

- (FCBundleSubscription)bundleSubscription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  sub_1B644DC8C((v2 + 16), &v7);
  os_unfair_lock_unlock((v2 + 24));
  v4 = [v7 bundleSubscription];
  swift_unknownObjectRelease();
  if (!v4)
  {
    v5 = sub_1B67D97AC();
    v4 = FCBundleSubscriptionMakeWithStateInline(v5);
  }

  return v4;
}

- (FCBundleSubscription)validatedCachedSubscription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  sub_1B644DC8C((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 24));
  v4 = [v6 bundleSubscription];

  swift_unknownObjectRelease();

  return v4;
}

- (FCEntitlementsOverrideProviderType)entitlementsOverrideProvider
{
  v3 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setEntitlementsOverrideProvider:(id)a3
{
  v5 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v6 = sub_1B644DCAC;
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  sub_1B644DA6C(v6);
  sub_1B64475B8(v6);
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)a3 hideBundleDetectionUI:(BOOL)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v7 = sub_1B644DBF4;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_1B644DA6C(v7);
  sub_1B64475B8(v7);
}

- (id)bundleSubscriptionLookupEntry
{
  result = sub_1B67DA07C();
  __break(1u);
  return result;
}

- (BOOL)canGetAccessToItemPaid:(BOOL)a3 bundlePaid:(BOOL)a4 channel:(id)a5
{
  result = sub_1B67DA07C();
  __break(1u);
  return result;
}

- (BOOL)canGetSubscriptionToChannel:(id)a3
{
  result = sub_1B67DA07C();
  __break(1u);
  return result;
}

- (BOOL)canGetBundleSubscriptionToChannel:(id)a3
{
  result = sub_1B67DA07C();
  __break(1u);
  return result;
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

- (NSSet)purchasedTagIDs
{
  v2 = self;
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