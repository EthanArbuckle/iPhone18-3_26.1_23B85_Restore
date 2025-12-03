@interface UINavigationItem.SegmentedContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView)initWithCoder:(id)coder;
- (_TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView)initWithFrame:(CGRect)frame;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
@end

@implementation UINavigationItem.SegmentedContentView

- (_TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1BA1DE090();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  [(UINavigationItem.SegmentedContentView *)selfCopy directionalLayoutMargins];
  v7 = width - v5 - v6;
  v8 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView_control);
  [v8 sizeThatFits_];
  v10 = v9;

  v11 = v10 + 8.0;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UINavigationItem.SegmentedContentView *)&v3 layoutMarginsDidChange];
  [v2 setNeedsLayout];
}

- (_TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end