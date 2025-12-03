@interface StaggeredAlphaAnimator
- (_TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator)init;
- (double)fractionComplete;
- (int64_t)state;
- (void)finishAnimationAtPosition:(int64_t)position;
@end

@implementation StaggeredAlphaAnimator

- (_TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator)init
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)state
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  state = [*(&self->super.isa + OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_foregroundAnimator) state];

  return state;
}

- (double)fractionComplete
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.isa + OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_foregroundAnimator) fractionComplete];
  v4 = v3;

  return v4;
}

- (void)finishAnimationAtPosition:(int64_t)position
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.isa + OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_backgroundAnimator);
  selfCopy = self;
  [v5 finishAnimationAtPosition_];
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_foregroundAnimator) finishAnimationAtPosition_];
}

@end