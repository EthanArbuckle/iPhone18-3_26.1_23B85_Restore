@interface FloatingPaletteContentView
- (CGSize)intrinsicContentSize;
- (_TtC14FitnessAppRoot26FloatingPaletteContentView)initWithCoder:(id)coder;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
@end

@implementation FloatingPaletteContentView

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_floatingTabBar) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC14FitnessAppRoot26FloatingPaletteContentView)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_1E5AD0168();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(FloatingPaletteContentView *)&v3 layoutSubviews];
  [*&v2[OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_floatingTabBar] intrinsicContentSize];
  [v2 frame];
  [v2 setFrame_];
}

- (void)layoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(FloatingPaletteContentView *)&v4 layoutMarginsDidChange];
  v3 = *&v2[OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_floatingTabBar];
  [v2 directionalLayoutMargins];
  [v3 setDirectionalLayoutMargins_];
}

@end