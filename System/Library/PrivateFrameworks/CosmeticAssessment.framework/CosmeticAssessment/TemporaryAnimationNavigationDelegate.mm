@interface TemporaryAnimationNavigationDelegate
- (BOOL)respondsToSelector:(SEL)selector;
- (_TtC18CosmeticAssessmentP33_6B9104B5AA470470A66128F22B73BA0036TemporaryAnimationNavigationDelegate)init;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
@end

@implementation TemporaryAnimationNavigationDelegate

- (BOOL)respondsToSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  if ([(TemporaryAnimationNavigationDelegate *)&v9 respondsToSelector:selector])
  {

    v5 = 1;
  }

  else if (sub_247D1F0C8())
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_247D1FEA8();
    MEMORY[0x28223BE20](v6);
    v8[2] = v4;
    v8[3] = selector;
    v5 = sub_247C75F08(sub_247C768F0, v8, "CosmeticAssessment/UINavigationController+ForcedTransition.swift");
  }

  return v5 & 1;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  sub_247D1FEA8();
  v9[2] = self;
  selfCopy = self;
  v5 = sub_247C760C0(sub_247C76880, v9, "CosmeticAssessment/UINavigationController+ForcedTransition.swift", 64);
  if (v5)
  {
    v6 = v5;
    v10[3] = swift_getObjectType();

    v10[0] = v6;
    v7 = sub_247D20528();
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (*(*&self->transitionType[OBJC_IVAR____TtC18CosmeticAssessmentP33_6B9104B5AA470470A66128F22B73BA0036TemporaryAnimationNavigationDelegate_transitionType] + 8))(operation);

  return v8;
}

- (_TtC18CosmeticAssessmentP33_6B9104B5AA470470A66128F22B73BA0036TemporaryAnimationNavigationDelegate)init
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