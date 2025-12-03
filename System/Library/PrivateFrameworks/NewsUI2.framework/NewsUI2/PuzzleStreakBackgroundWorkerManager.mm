@interface PuzzleStreakBackgroundWorkerManager
- (_TtC7NewsUI235PuzzleStreakBackgroundWorkerManager)init;
- (void)bundleSubscriptionDidExpire:(id)expire;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
@end

@implementation PuzzleStreakBackgroundWorkerManager

- (_TtC7NewsUI235PuzzleStreakBackgroundWorkerManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  v3 = qword_280E8D870;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_218F97108();
}

- (void)bundleSubscriptionDidExpire:(id)expire
{
  v3 = qword_280E8D870;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v5 = MEMORY[0x277D84F90];
  sub_219BE5314();
  v6 = OBJC_IVAR____TtC7NewsUI235PuzzleStreakBackgroundWorkerManager_registeredWorkers;
  swift_beginAccess();
  *(&selfCopy->super.isa + v6) = v5;
}

@end