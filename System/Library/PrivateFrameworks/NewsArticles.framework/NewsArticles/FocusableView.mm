@interface FocusableView
- (_TtC12NewsArticles13FocusableView)initWithCoder:(id)a3;
- (_TtC12NewsArticles13FocusableView)initWithFrame:(CGRect)a3;
@end

@implementation FocusableView

- (_TtC12NewsArticles13FocusableView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles13FocusableView_focusable) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FocusableView();
  return [(FocusableView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12NewsArticles13FocusableView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles13FocusableView_focusable) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FocusableView();
  v4 = a3;
  v5 = [(FocusableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end