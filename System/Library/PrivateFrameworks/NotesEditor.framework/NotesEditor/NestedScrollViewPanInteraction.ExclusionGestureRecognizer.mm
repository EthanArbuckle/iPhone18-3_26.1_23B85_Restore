@interface NestedScrollViewPanInteraction.ExclusionGestureRecognizer
- (void)_scrollingChangedWithEvent:(id)event;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation NestedScrollViewPanInteraction.ExclusionGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_2151A6C9C(0, &unk_27CA5A330);
  sub_215433E44();
  v5 = sub_2154A20CC();
  v6 = OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction26ExclusionGestureRecognizer_touch;
  v7 = *(&self->super.super.isa + OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction26ExclusionGestureRecognizer_touch);
  selfCopy = self;
  if (v7)
  {

    v8 = 5;
  }

  else
  {
    v9 = sub_2153B1B28(v5);

    v10 = *(&self->super.super.isa + v6);
    *(&self->super.super.isa + v6) = v9;

    v8 = 3;
  }

  [(NestedScrollViewPanInteraction.ExclusionGestureRecognizer *)selfCopy setState:v8];
}

- (void)reset
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction26ExclusionGestureRecognizer_touch);
  *(&self->super.super.isa + OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction26ExclusionGestureRecognizer_touch) = 0;
}

- (void)_scrollingChangedWithEvent:(id)event
{
  selfCopy = self;
  if (![(NestedScrollViewPanInteraction.ExclusionGestureRecognizer *)selfCopy state])
  {
    [(NestedScrollViewPanInteraction.ExclusionGestureRecognizer *)selfCopy setState:3];
  }
}

@end