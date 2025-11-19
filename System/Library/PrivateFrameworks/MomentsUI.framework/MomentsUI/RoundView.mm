@interface RoundView
- (_TtC9MomentsUI9RoundView)initWithCoder:(id)a3;
- (_TtC9MomentsUI9RoundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation RoundView

- (void)layoutSubviews
{
  v3 = self;
  [(RoundView *)v3 bounds];
  [(RoundView *)v3 _setCornerRadius:v2 * 0.5];
}

- (_TtC9MomentsUI9RoundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundView();
  return [(RoundView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9MomentsUI9RoundView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoundView();
  v4 = a3;
  v5 = [(RoundView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end