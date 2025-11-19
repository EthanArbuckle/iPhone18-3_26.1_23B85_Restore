@interface ProfileGradientsProvider
- (_TtC18HealthExperienceUI24ProfileGradientsProvider)init;
@end

@implementation ProfileGradientsProvider

- (_TtC18HealthExperienceUI24ProfileGradientsProvider)init
{
  v3 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_topCategories) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_colors;
  v7 = v3;
  sub_1B9F10B50();
  swift_allocObject();
  *(&self->super.isa + v4) = sub_1BA4A4DF8();
  *(&self->super.isa + OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_categoriesMetadata) = v3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ProfileGradientsProvider();
  return [(ProfileGradientsProvider *)&v6 init];
}

@end