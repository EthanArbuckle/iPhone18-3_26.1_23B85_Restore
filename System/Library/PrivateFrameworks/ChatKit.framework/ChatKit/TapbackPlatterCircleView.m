@interface TapbackPlatterCircleView
- (_TtC7ChatKit24TapbackPlatterCircleView)initWithCoder:(id)a3;
- (_TtC7ChatKit24TapbackPlatterCircleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TapbackPlatterCircleView

- (_TtC7ChatKit24TapbackPlatterCircleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TapbackPlatterCircleView();
  v7 = [(TapbackPlatterCircleView *)&v10 initWithFrame:x, y, width, height];
  v8 = [(TapbackPlatterCircleView *)v7 layer];
  [v8 setAllowsEdgeAntialiasing_];

  return v7;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TapbackPlatterCircleView();
  v2 = v5.receiver;
  [(TapbackPlatterCircleView *)&v5 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

- (_TtC7ChatKit24TapbackPlatterCircleView)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end