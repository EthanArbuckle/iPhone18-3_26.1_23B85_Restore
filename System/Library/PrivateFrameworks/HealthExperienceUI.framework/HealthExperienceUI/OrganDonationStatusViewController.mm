@interface OrganDonationStatusViewController
- (_TtC18HealthExperienceUI33OrganDonationStatusViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI33OrganDonationStatusViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation OrganDonationStatusViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA22C444();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for OrganDonationStatusViewController();
  [(OrganDonationStatusViewController *)&v4 viewWillAppear:v3];
}

- (_TtC18HealthExperienceUI33OrganDonationStatusViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationStatusViewController_currentChildViewController) = 0;
    v6 = a4;
    v7 = sub_1BA4A6758();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationStatusViewController_currentChildViewController) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for OrganDonationStatusViewController();
  v9 = [(OrganDonationStatusViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18HealthExperienceUI33OrganDonationStatusViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationStatusViewController_currentChildViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for OrganDonationStatusViewController();
  v4 = a3;
  v5 = [(OrganDonationStatusViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end