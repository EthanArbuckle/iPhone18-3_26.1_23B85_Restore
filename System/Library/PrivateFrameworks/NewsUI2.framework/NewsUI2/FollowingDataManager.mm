@interface FollowingDataManager
- (_TtC7NewsUI220FollowingDataManager)init;
- (void)bundleSubscriptionDidChange:(id)change previousBundleSubscription:(id)subscription;
- (void)dealloc;
@end

@implementation FollowingDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  sub_218718690(self + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_sportsOnboardingManager, v8);
  v4 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v5 = *(v4 + 56);
  selfCopy = self;
  v5();

  __swift_destroy_boxed_opaque_existential_1(v8);
  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(FollowingDataManager *)&v7 dealloc];
}

- (_TtC7NewsUI220FollowingDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidChange:(id)change previousBundleSubscription:(id)subscription
{
  v5 = self + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 88);
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

@end