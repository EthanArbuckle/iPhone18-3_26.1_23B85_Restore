@interface SessionView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC13MediaControls11SessionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SessionView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A2271874();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1A2271B9C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC13MediaControls11SessionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end