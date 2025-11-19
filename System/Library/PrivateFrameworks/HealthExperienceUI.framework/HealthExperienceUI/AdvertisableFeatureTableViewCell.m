@interface AdvertisableFeatureTableViewCell
- (NSString)reuseIdentifier;
- (_TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation AdvertisableFeatureTableViewCell

- (NSString)reuseIdentifier
{
  sub_1BA4A2ED8();
  v2 = sub_1BA4A6758();

  return v2;
}

- (_TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1BA017FC0(v4, v5);
}

- (_TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end