@interface IconWithNumberedBulletList
- (_TtC16HeadphoneConfigs26IconWithNumberedBulletList)initWithCoder:(id)coder;
- (_TtC16HeadphoneConfigs26IconWithNumberedBulletList)initWithFrame:(CGRect)frame;
@end

@implementation IconWithNumberedBulletList

- (_TtC16HeadphoneConfigs26IconWithNumberedBulletList)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_containerView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.isa + v4) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView) = 0;
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigs26IconWithNumberedBulletList)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end