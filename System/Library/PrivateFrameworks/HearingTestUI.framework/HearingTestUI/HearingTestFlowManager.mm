@interface HearingTestFlowManager
- (_TtC13HearingTestUI22HearingTestFlowManager)init;
- (void)fitNoiseCheckCancelled:(id)cancelled;
- (void)fitNoiseCheckCompleted:(id)completed status:(unint64_t)status details:(id)details;
@end

@implementation HearingTestFlowManager

- (void)fitNoiseCheckCompleted:(id)completed status:(unint64_t)status details:(id)details
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  completedCopy = completed;
  detailsCopy = details;
  selfCopy = self;
  sub_20CDC18C8(completedCopy, status, detailsCopy);
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
  sub_20CDC253C();
}

- (_TtC13HearingTestUI22HearingTestFlowManager)init
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

@end