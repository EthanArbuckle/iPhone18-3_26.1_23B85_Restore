@interface SystemCrossfadeTransitionAnimator
- (BOOL)_shouldCrossFadeBottomBars;
- (_TtC18CosmeticAssessment33SystemCrossfadeTransitionAnimator)init;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation SystemCrossfadeTransitionAnimator

- (double)transitionDuration:(id)a3
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0.35;
}

- (void)animateTransition:(id)a3
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v5 = self;
  sub_247CE9BC4(a3);

  swift_unknownObjectRelease();
}

- (BOOL)_shouldCrossFadeBottomBars
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (_TtC18CosmeticAssessment33SystemCrossfadeTransitionAnimator)init
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end