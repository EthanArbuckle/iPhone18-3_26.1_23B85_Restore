@interface HearingTestFlowManager
- (_TtC13HearingTestUI22HearingTestFlowManager)init;
- (void)fitNoiseCheckCancelled:(id)a3;
- (void)fitNoiseCheckCompleted:(id)a3 status:(unint64_t)a4 details:(id)a5;
@end

@implementation HearingTestFlowManager

- (void)fitNoiseCheckCompleted:(id)a3 status:(unint64_t)a4 details:(id)a5
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_20CDC18C8(v9, a4, v10);
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