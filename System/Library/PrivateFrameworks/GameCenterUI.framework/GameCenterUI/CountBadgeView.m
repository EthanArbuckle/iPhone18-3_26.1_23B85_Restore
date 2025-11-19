@interface CountBadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityCountLabel;
- (void)layoutSubviews;
@end

@implementation CountBadgeView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_24E32DF68();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E32E0D0();
}

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  v2 = self;
  v3 = sub_24E32E2C8();

  return v3;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityCountLabel
{
  v2 = sub_24E32E33C();

  return v2;
}

@end