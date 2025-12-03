@interface HapticView
- (_TtC13MediaControls10HapticView)initWithCoder:(id)coder;
- (void)didTapHapticView:(id)view;
@end

@implementation HapticView

- (_TtC13MediaControls10HapticView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls10HapticView_presenter) = 0;
  v4 = OBJC_IVAR____TtC13MediaControls10HapticView_hapticView;
  v5 = [objc_allocWithZone(MRUHapticView) initWithContext:1 frame:{0.0, 0.0, 0.0, 0.0}];
  v6 = sub_1A2114DFC();

  *(&self->super.super.super.isa + v4) = v6;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls10HapticView_visualStylingProvider) = 0;
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (void)didTapHapticView:(id)view
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x68);
  selfCopy = self;
  v4 = v3();
  if (v4)
  {
    (*(*v4 + 160))(v4);
  }
}

@end