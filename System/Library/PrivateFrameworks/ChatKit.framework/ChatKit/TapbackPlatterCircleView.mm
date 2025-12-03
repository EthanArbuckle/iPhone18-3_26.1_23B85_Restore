@interface TapbackPlatterCircleView
- (_TtC7ChatKit24TapbackPlatterCircleView)initWithCoder:(id)coder;
- (_TtC7ChatKit24TapbackPlatterCircleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TapbackPlatterCircleView

- (_TtC7ChatKit24TapbackPlatterCircleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TapbackPlatterCircleView();
  height = [(TapbackPlatterCircleView *)&v10 initWithFrame:x, y, width, height];
  layer = [(TapbackPlatterCircleView *)height layer];
  [layer setAllowsEdgeAntialiasing_];

  return height;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TapbackPlatterCircleView();
  v2 = v5.receiver;
  [(TapbackPlatterCircleView *)&v5 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (_TtC7ChatKit24TapbackPlatterCircleView)initWithCoder:(id)coder
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end