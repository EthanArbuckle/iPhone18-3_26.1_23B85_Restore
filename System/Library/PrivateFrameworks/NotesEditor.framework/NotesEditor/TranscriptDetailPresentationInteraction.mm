@interface TranscriptDetailPresentationInteraction
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)view;
- (_TtC11NotesEditor39TranscriptDetailPresentationInteraction)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)didMoveToView:(id)a3;
- (void)pan:(id)a3;
- (void)setView:(id)a3;
- (void)tap:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation TranscriptDetailPresentationInteraction

- (UIView)view
{
  v3 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setView:(id)a3
{
  v5 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2153CB8F4();
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2153BFBDC(a3);
}

- (void)tap:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == 3)
  {
    sub_2153BFE7C();
  }
}

- (void)pan:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == 1)
  {
    sub_2153BFE7C();
  }
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_2153CB994();

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2153CBA90();

  return v6;
}

- (_TtC11NotesEditor39TranscriptDetailPresentationInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  ShouldBeginySbSo09UIGestureH0CF_0 = _s11NotesEditor39TranscriptDetailPresentationInteractionC28gestureRecognizerShouldBeginySbSo09UIGestureH0CF_0(v4);

  return ShouldBeginySbSo09UIGestureH0CF_0;
}

@end