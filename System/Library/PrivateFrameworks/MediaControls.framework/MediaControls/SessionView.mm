@interface SessionView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC13MediaControls11SessionView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SessionView

- (void)layoutSubviews
{
  v2 = self;
  sub_1A2271874();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1A2271B9C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC13MediaControls11SessionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end