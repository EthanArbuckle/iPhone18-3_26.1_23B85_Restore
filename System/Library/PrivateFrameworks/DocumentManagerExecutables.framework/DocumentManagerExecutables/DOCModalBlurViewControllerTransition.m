@interface DOCModalBlurViewControllerTransition
- (_TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition)init;
- (void)animateTransition:(id)a3;
@end

@implementation DOCModalBlurViewControllerTransition

- (void)animateTransition:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_direction);
  swift_unknownObjectRetain();
  v6 = self;
  if (v5)
  {
    DOCModalBlurViewControllerTransition.dismiss(using:)(a3);
  }

  else
  {
    DOCModalBlurViewControllerTransition.present(using:)(a3);
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