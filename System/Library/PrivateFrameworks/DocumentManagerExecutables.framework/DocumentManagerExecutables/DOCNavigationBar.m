@interface DOCNavigationBar
- (UINavigationBarAppearance)scrollEdgeAppearance;
- (_TtC26DocumentManagerExecutables16DOCNavigationBar)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables16DOCNavigationBar)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setScrollEdgeAppearance:(id)a3;
@end

@implementation DOCNavigationBar

- (_TtC26DocumentManagerExecutables16DOCNavigationBar)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_titlePositionAdjustment) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_chromelessAppearanceDisabled) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCNavigationBar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [v2 doc_nearestAncestorViewController];
  [v3 doc_updateBarButtonTrackingViewsIfNecessary];
}

- (UINavigationBarAppearance)scrollEdgeAppearance
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance);
  v3 = v2;
  if (!v2)
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for DOCNavigationBar();
    v3 = [(DOCNavigationBar *)&v6 scrollEdgeAppearance];
  }

  v4 = v2;

  return v3;
}

- (void)setScrollEdgeAppearance:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCNavigationBar();
  [(DOCNavigationBar *)&v4 setScrollEdgeAppearance:a3];
}

@end