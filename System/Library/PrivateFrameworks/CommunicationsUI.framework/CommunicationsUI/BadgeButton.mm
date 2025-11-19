@interface BadgeButton
- (CGSize)intrinsicContentSize;
- (_TtC16CommunicationsUI11BadgeButton)initWithCoder:(id)a3;
- (_TtC16CommunicationsUI11BadgeButton)initWithFrame:(CGRect)a3;
@end

@implementation BadgeButton

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_1C2E16670();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC16CommunicationsUI11BadgeButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI11BadgeButton____lazy_storage___badgeView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI11BadgeButton_badgeCount) = 0;
  v4 = OBJC_IVAR____TtC16CommunicationsUI11BadgeButton____lazy_storage___defaultConfig;
  v5 = sub_1C2E763A4();
  v6 = *(*(v5 - 8) + 56);
  v6(self + v4, 1, 1, v5);
  v6(self + OBJC_IVAR____TtC16CommunicationsUI11BadgeButton____lazy_storage___buttonConfiguration, 1, 1, v5);
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (_TtC16CommunicationsUI11BadgeButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end