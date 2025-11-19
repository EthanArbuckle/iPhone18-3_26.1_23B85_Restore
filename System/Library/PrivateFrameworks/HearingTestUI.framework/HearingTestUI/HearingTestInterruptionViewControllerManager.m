@interface HearingTestInterruptionViewControllerManager
- (_TtC13HearingTestUI44HearingTestInterruptionViewControllerManager)init;
- (void)fitNoiseCheckCancelled:(id)a3;
- (void)fitNoiseCheckCompleted:(id)a3 status:(unint64_t)a4;
@end

@implementation HearingTestInterruptionViewControllerManager

- (_TtC13HearingTestUI44HearingTestInterruptionViewControllerManager)init
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fitNoiseCheckCompleted:(id)a3 status:(unint64_t)a4
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  sub_20CE075C4(a4);
}

- (void)fitNoiseCheckCancelled:(id)a3
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_20CE06844(v5);
}

@end