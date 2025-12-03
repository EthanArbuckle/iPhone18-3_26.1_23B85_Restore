@interface FocusableView
- (_TtC12NewsArticles13FocusableView)initWithCoder:(id)coder;
- (_TtC12NewsArticles13FocusableView)initWithFrame:(CGRect)frame;
@end

@implementation FocusableView

- (_TtC12NewsArticles13FocusableView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles13FocusableView_focusable) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FocusableView();
  return [(FocusableView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12NewsArticles13FocusableView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles13FocusableView_focusable) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FocusableView();
  coderCopy = coder;
  v5 = [(FocusableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end