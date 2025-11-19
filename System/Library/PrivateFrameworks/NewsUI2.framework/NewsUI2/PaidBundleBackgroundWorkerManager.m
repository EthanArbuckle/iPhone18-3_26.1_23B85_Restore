@interface PaidBundleBackgroundWorkerManager
- (_TtC7NewsUI233PaidBundleBackgroundWorkerManager)init;
- (void)bundleSubscriptionDidExpire:(id)a3;
- (void)bundleSubscriptionDidSubscribe:(id)a3;
@end

@implementation PaidBundleBackgroundWorkerManager

- (_TtC7NewsUI233PaidBundleBackgroundWorkerManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)a3
{
  v3 = qword_280E8D870;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_218A708D8();
}

- (void)bundleSubscriptionDidExpire:(id)a3
{
  v3 = qword_280E8D870;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v5 = MEMORY[0x277D84F90];
  sub_219BE5314();
  v6 = OBJC_IVAR____TtC7NewsUI233PaidBundleBackgroundWorkerManager_registeredWorkers;
  swift_beginAccess();
  *(&v4->super.isa + v6) = v5;
}

@end