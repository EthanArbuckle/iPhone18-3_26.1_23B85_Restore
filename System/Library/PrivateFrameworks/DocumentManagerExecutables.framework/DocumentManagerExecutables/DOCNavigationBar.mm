@interface DOCNavigationBar
- (UINavigationBarAppearance)scrollEdgeAppearance;
- (_TtC26DocumentManagerExecutables16DOCNavigationBar)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables16DOCNavigationBar)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setScrollEdgeAppearance:(id)appearance;
@end

@implementation DOCNavigationBar

- (_TtC26DocumentManagerExecutables16DOCNavigationBar)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_titlePositionAdjustment) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_chromelessAppearanceDisabled) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCNavigationBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_titlePositionAdjustment) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_chromelessAppearanceDisabled) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCNavigationBar();
  return [(DOCNavigationBar *)&v8 initWithFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCNavigationBar();
  v2 = v4.receiver;
  [(DOCNavigationBar *)&v4 layoutSubviews];
  doc_nearestAncestorViewController = [v2 doc_nearestAncestorViewController];
  [doc_nearestAncestorViewController doc_updateBarButtonTrackingViewsIfNecessary];
}

- (UINavigationBarAppearance)scrollEdgeAppearance
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance);
  scrollEdgeAppearance = v2;
  if (!v2)
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for DOCNavigationBar();
    scrollEdgeAppearance = [(DOCNavigationBar *)&v6 scrollEdgeAppearance];
  }

  v4 = v2;

  return scrollEdgeAppearance;
}

- (void)setScrollEdgeAppearance:(id)appearance
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCNavigationBar();
  [(DOCNavigationBar *)&v4 setScrollEdgeAppearance:appearance];
}

@end