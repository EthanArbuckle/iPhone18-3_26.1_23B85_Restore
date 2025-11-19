@interface RoutePickerPresentationAnimationController
- (_TtC13MediaControls42RoutePickerPresentationAnimationController)init;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation RoutePickerPresentationAnimationController

- (double)transitionDuration:(id)a3
{
  result = 0.35;
  if (*(&self->super.isa + OBJC_IVAR____TtC13MediaControls42RoutePickerPresentationAnimationController_style))
  {
    return 0.25;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1A22C470C(a3);
  swift_unknownObjectRelease();
}

- (_TtC13MediaControls42RoutePickerPresentationAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end