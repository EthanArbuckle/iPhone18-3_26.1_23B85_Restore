@interface BundleSubscriptionDetectionManager
- (_TtC16NewsSubscription34BundleSubscriptionDetectionManager)init;
- (void)bundleSubscriptionDidExpire:(id)expire;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe hideBundleDetectionUI:(BOOL)i;
@end

@implementation BundleSubscriptionDetectionManager

- (_TtC16NewsSubscription34BundleSubscriptionDetectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe hideBundleDetectionUI:(BOOL)i
{
  subscribeCopy = subscribe;
  selfCopy = self;
  sub_1D778F924(i);
}

- (void)bundleSubscriptionDidExpire:(id)expire
{
  swift_getObjectType();
  v4 = qword_1EC9C8688;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  sub_1D7752B44(&qword_1EC9C9CA8, v5, type metadata accessor for BundleSubscriptionDetectionManager);
  sub_1D78B3724();
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_userInfo) setPostPurchaseOnboardingLastShownDate_];
}

@end