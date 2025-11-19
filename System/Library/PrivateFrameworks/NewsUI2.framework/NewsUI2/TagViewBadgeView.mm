@interface TagViewBadgeView
- (_TtC7NewsUI216TagViewBadgeView)initWithCoder:(id)a3;
- (_TtC7NewsUI216TagViewBadgeView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TagViewBadgeView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21952C748(a3);
}

- (_TtC7NewsUI216TagViewBadgeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TagViewBadgeView();
  return [(TagViewBadgeView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7NewsUI216TagViewBadgeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TagViewBadgeView();
  v4 = a3;
  v5 = [(TagViewBadgeView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end