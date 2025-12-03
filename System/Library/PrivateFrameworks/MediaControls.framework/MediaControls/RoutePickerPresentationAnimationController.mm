@interface RoutePickerPresentationAnimationController
- (_TtC13MediaControls42RoutePickerPresentationAnimationController)init;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation RoutePickerPresentationAnimationController

- (double)transitionDuration:(id)duration
{
  result = 0.35;
  if (*(&self->super.isa + OBJC_IVAR____TtC13MediaControls42RoutePickerPresentationAnimationController_style))
  {
    return 0.25;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A22C470C(transition);
  swift_unknownObjectRelease();
}

- (_TtC13MediaControls42RoutePickerPresentationAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end