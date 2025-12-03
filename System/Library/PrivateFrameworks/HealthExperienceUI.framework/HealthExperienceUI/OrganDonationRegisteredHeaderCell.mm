@interface OrganDonationRegisteredHeaderCell
- (_TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell)initWithFrame:(CGRect)frame;
@end

@implementation OrganDonationRegisteredHeaderCell

- (_TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_organDonationLogoImage;
  *(&self->super.super.super.super.super.isa + v8) = sub_1BA2E9B04();
  v9 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_title;
  *(&self->super.super.super.super.super.isa + v9) = sub_1BA2E9C38();
  v10 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_subtitle;
  *(&self->super.super.super.super.super.isa + v10) = sub_1BA2E9D94();
  v11 = self + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_item;
  v12 = type metadata accessor for OrganDonationRegisteredHeaderCell();
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v15.receiver = self;
  v15.super_class = v12;
  height = [(OrganDonationRegisteredHeaderCell *)&v15 initWithFrame:x, y, width, height];
  sub_1BA2EA0B4();

  return height;
}

- (_TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_organDonationLogoImage;
  *(&self->super.super.super.super.super.isa + v4) = sub_1BA2E9B04();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_title;
  *(&self->super.super.super.super.super.isa + v5) = sub_1BA2E9C38();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_subtitle;
  *(&self->super.super.super.super.super.isa + v6) = sub_1BA2E9D94();
  v7 = self + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_item;
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end