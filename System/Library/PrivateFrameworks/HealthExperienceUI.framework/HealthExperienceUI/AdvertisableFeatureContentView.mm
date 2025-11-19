@interface AdvertisableFeatureContentView
- (_TtC18HealthExperienceUI30AdvertisableFeatureContentView)initWithFrame:(CGRect)a3;
- (void)switchValueChangedWithSender:(id)a3;
@end

@implementation AdvertisableFeatureContentView

- (void)switchValueChangedWithSender:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel))
  {
    v4 = self;

    v3 = sub_1BA016BB0();
    [v3 isOn];

    sub_1BA4A2EB8();
  }
}

- (_TtC18HealthExperienceUI30AdvertisableFeatureContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end