@interface TranscriptDetailPresentationInteraction
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIView)view;
- (_TtC11NotesEditor39TranscriptDetailPresentationInteraction)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)didMoveToView:(id)view;
- (void)pan:(id)pan;
- (void)setView:(id)view;
- (void)tap:(id)tap;
- (void)willMoveToView:(id)view;
@end

@implementation TranscriptDetailPresentationInteraction

- (UIView)view
{
  v3 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setView:(id)view
{
  v5 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = view;
  viewCopy = view;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_2153CB8F4();
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_2153BFBDC(view);
}

- (void)tap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  if ([tapCopy state] == 3)
  {
    sub_2153BFE7C();
  }
}

- (void)pan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  if ([panCopy state] == 1)
  {
    sub_2153BFE7C();
  }
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_2153CB994();

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_2153CBA90();

  return v6;
}

- (_TtC11NotesEditor39TranscriptDetailPresentationInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  ShouldBeginySbSo09UIGestureH0CF_0 = _s11NotesEditor39TranscriptDetailPresentationInteractionC28gestureRecognizerShouldBeginySbSo09UIGestureH0CF_0(beginCopy);

  return ShouldBeginySbSo09UIGestureH0CF_0;
}

@end