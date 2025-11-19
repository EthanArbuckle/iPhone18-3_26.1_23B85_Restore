@interface HostedSpecifierViewController
- (_TtC18HealthExperienceUI29HostedSpecifierViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI29HostedSpecifierViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation HostedSpecifierViewController

- (_TtC18HealthExperienceUI29HostedSpecifierViewController)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HostedSpecifierViewController();
  v2 = v3.receiver;
  [(HostedSpecifierViewController *)&v3 viewDidLoad];
  sub_1BA039794();
}

- (_TtC18HealthExperienceUI29HostedSpecifierViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController);
  v4 = self;
  v3 = v2;
  sub_1B9FCE184();

  sub_1BA039794();
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v2 = self;
  HostedSpecifierViewController.viewControllerDidLeaveAdaptiveModal()();
}

@end