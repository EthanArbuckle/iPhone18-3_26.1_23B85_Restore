@interface PromotionTileHeroView
- (_TtC18HealthExperienceUI21PromotionTileHeroView)initWithFrame:(CGRect)frame;
@end

@implementation PromotionTileHeroView

- (_TtC18HealthExperienceUI21PromotionTileHeroView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_previousConfiguration;
  v9 = sub_1BA4A31F8();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_watchView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_uiView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageTopConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI21PromotionTileHeroView_imageHeightConstraint) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for PromotionTileHeroView();
  return [(PromotionTileHeroView *)&v11 initWithFrame:x, y, width, height];
}

@end