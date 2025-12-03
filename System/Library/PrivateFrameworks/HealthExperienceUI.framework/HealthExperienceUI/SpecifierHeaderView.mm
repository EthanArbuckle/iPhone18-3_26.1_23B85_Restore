@interface SpecifierHeaderView
- (_TtC18HealthExperienceUI19SpecifierHeaderView)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI19SpecifierHeaderView)initWithFrame:(CGRect)frame;
- (double)preferredHeightForWidth:(double)width;
@end

@implementation SpecifierHeaderView

- (_TtC18HealthExperienceUI19SpecifierHeaderView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (double)preferredHeightForWidth:(double)width
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SpecifierHeaderView *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:v3, v4];
  return v5;
}

- (_TtC18HealthExperienceUI19SpecifierHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end