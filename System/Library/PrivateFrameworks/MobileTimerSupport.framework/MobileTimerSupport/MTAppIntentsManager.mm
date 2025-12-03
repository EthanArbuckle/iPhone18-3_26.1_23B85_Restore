@interface MTAppIntentsManager
+ (_TtC18MobileTimerSupport19MTAppIntentsManager)sharedManager;
- (_TtC18MobileTimerSupport19MTAppIntentsManager)init;
- (_TtP18MobileTimerSupport27MTAppIntentsManagerDelegate_)delegate;
- (void)didSelectTabWithTab:(int64_t)tab;
@end

@implementation MTAppIntentsManager

+ (_TtC18MobileTimerSupport19MTAppIntentsManager)sharedManager
{
  if (qword_280CD1F18 != -1)
  {
    swift_once();
  }

  v3 = qword_280CD1F20;

  return v3;
}

- (_TtC18MobileTimerSupport19MTAppIntentsManager)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MTAppIntentsManager();
  return [(MTAppIntentsManager *)&v4 init];
}

- (_TtP18MobileTimerSupport27MTAppIntentsManagerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didSelectTabWithTab:(int64_t)tab
{
  selfCopy = self;
  sub_22D7BCAD0(tab);
}

@end