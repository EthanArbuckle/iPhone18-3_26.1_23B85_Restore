@interface PassthroughView
- (_TtC12NewsArticlesP33_EB63D8792045F9CB316DE87A7AC9CC2D15PassthroughView)initWithCoder:(id)a3;
- (_TtC12NewsArticlesP33_EB63D8792045F9CB316DE87A7AC9CC2D15PassthroughView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PassthroughView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1D7CF8E84(a4, x, y);

  return v10;
}

- (_TtC12NewsArticlesP33_EB63D8792045F9CB316DE87A7AC9CC2D15PassthroughView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughView();
  return [(PassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12NewsArticlesP33_EB63D8792045F9CB316DE87A7AC9CC2D15PassthroughView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PassthroughView();
  v4 = a3;
  v5 = [(PassthroughView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end