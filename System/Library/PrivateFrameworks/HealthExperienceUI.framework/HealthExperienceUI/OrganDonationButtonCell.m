@interface OrganDonationButtonCell
- (_TtC18HealthExperienceUI23OrganDonationButtonCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI23OrganDonationButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)awakeFromNib;
@end

@implementation OrganDonationButtonCell

- (_TtC18HealthExperienceUI23OrganDonationButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = self + OBJC_IVAR____TtC18HealthExperienceUI23OrganDonationButtonCell_item;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 4) = 0;
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
    v8 = self + OBJC_IVAR____TtC18HealthExperienceUI23OrganDonationButtonCell_item;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for OrganDonationButtonCell();
  v9 = [(OrganDonationButtonCell *)&v11 initWithStyle:a3 reuseIdentifier:v7];

  return v9;
}

- (_TtC18HealthExperienceUI23OrganDonationButtonCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI23OrganDonationButtonCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OrganDonationButtonCell();
  v5 = a3;
  v6 = [(OrganDonationButtonCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (void)awakeFromNib
{
  v2 = self;
  sub_1BA39498C();
}

@end