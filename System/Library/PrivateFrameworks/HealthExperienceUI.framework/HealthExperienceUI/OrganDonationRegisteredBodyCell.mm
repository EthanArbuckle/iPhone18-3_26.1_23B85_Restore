@interface OrganDonationRegisteredBodyCell
- (_TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell)initWithFrame:(CGRect)a3;
- (void)tappedLearnMore;
@end

@implementation OrganDonationRegisteredBodyCell

- (_TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_bodyText;
  *(&self->super.super.super.super.super.isa + v8) = sub_1BA2EA8E8();
  v9 = OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_learnMoreButton;
  *(&self->super.super.super.super.super.isa + v9) = sub_1BA2EAA40();
  v10 = self + OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_item;
  v11 = type metadata accessor for OrganDonationRegisteredBodyCell();
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(OrganDonationRegisteredBodyCell *)&v14 initWithFrame:x, y, width, height];
  sub_1BA2EAEA0();

  return v12;
}

- (_TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_bodyText;
  *(&self->super.super.super.super.super.isa + v4) = sub_1BA2EA8E8();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_learnMoreButton;
  *(&self->super.super.super.super.super.isa + v5) = sub_1BA2EAA40();
  v6 = self + OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_item;
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)tappedLearnMore
{
  v2 = objc_opt_self();

  [v2 openDonateLifeMicroSiteInSafari];
}

@end