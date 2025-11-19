@interface BundleSubscriptionDetectionManager
- (_TtC16NewsSubscription34BundleSubscriptionDetectionManager)init;
- (void)bundleSubscriptionDidExpire:(id)a3;
- (void)bundleSubscriptionDidSubscribe:(id)a3 hideBundleDetectionUI:(BOOL)a4;
@end

@implementation BundleSubscriptionDetectionManager

- (_TtC16NewsSubscription34BundleSubscriptionDetectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)a3 hideBundleDetectionUI:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1D778F924(a4);
}

- (void)bundleSubscriptionDidExpire:(id)a3
{
  swift_getObjectType();
  v4 = qword_1EC9C8688;
  v6 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  sub_1D7752B44(&qword_1EC9C9CA8, v5, type metadata accessor for BundleSubscriptionDetectionManager);
  sub_1D78B3724();
  [*(&v6->super.isa + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_userInfo) setPostPurchaseOnboardingLastShownDate_];
}

@end