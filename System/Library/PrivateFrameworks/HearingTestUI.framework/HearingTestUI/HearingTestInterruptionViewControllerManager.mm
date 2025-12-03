@interface HearingTestInterruptionViewControllerManager
- (_TtC13HearingTestUI44HearingTestInterruptionViewControllerManager)init;
- (void)fitNoiseCheckCancelled:(id)cancelled;
- (void)fitNoiseCheckCompleted:(id)completed status:(unint64_t)status;
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

- (void)fitNoiseCheckCompleted:(id)completed status:(unint64_t)status
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  completedCopy = completed;
  selfCopy = self;
  sub_20CE075C4(status);
}

- (void)fitNoiseCheckCancelled:(id)cancelled
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  cancelledCopy = cancelled;
  selfCopy = self;
  sub_20CE06844(cancelledCopy);
}

@end