@interface DOCModalBlurViewControllerTransition
- (_TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition)init;
- (void)animateTransition:(id)transition;
@end

@implementation DOCModalBlurViewControllerTransition

- (void)animateTransition:(id)transition
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_direction);
  swift_unknownObjectRetain();
  selfCopy = self;
  if (v5)
  {
    DOCModalBlurViewControllerTransition.dismiss(using:)(transition);
  }

  else
  {
    DOCModalBlurViewControllerTransition.present(using:)(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end