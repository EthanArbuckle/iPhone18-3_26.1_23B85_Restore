@interface NestedScrollViewPanInteraction.ExclusionGestureRecognizer
- (void)_scrollingChangedWithEvent:(id)a3;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation NestedScrollViewPanInteraction.ExclusionGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_2151A6C9C(0, &unk_27CA5A330);
  sub_215433E44();
  v5 = sub_2154A20CC();
  v6 = OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction26ExclusionGestureRecognizer_touch;
  v7 = *(&self->super.super.isa + OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction26ExclusionGestureRecognizer_touch);
  v11 = self;
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

  [(NestedScrollViewPanInteraction.ExclusionGestureRecognizer *)v11 setState:v8];
}

- (void)reset
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction26ExclusionGestureRecognizer_touch);
  *(&self->super.super.isa + OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction26ExclusionGestureRecognizer_touch) = 0;
}

- (void)_scrollingChangedWithEvent:(id)a3
{
  v3 = self;
  if (![(NestedScrollViewPanInteraction.ExclusionGestureRecognizer *)v3 state])
  {
    [(NestedScrollViewPanInteraction.ExclusionGestureRecognizer *)v3 setState:3];
  }
}

@end