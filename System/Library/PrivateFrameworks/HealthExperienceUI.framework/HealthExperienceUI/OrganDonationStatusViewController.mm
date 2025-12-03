@interface OrganDonationStatusViewController
- (_TtC18HealthExperienceUI33OrganDonationStatusViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI33OrganDonationStatusViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation OrganDonationStatusViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA22C444();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for OrganDonationStatusViewController();
  [(OrganDonationStatusViewController *)&v4 viewWillAppear:appearCopy];
}

- (_TtC18HealthExperienceUI33OrganDonationStatusViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationStatusViewController_currentChildViewController) = 0;
    bundleCopy = bundle;
    v7 = sub_1BA4A6758();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationStatusViewController_currentChildViewController) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for OrganDonationStatusViewController();
  v9 = [(OrganDonationStatusViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18HealthExperienceUI33OrganDonationStatusViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationStatusViewController_currentChildViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for OrganDonationStatusViewController();
  coderCopy = coder;
  v5 = [(OrganDonationStatusViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end