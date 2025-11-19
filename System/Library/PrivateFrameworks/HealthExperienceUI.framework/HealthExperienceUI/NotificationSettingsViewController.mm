@interface NotificationSettingsViewController
- (_TtC18HealthExperienceUI34NotificationSettingsViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI34NotificationSettingsViewController)initWithCollectionViewLayout:(id)a3;
- (void)dismissProfile:(id)a3;
- (void)viewDidLoad;
@end

@implementation NotificationSettingsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA061884();
}

- (_TtC18HealthExperienceUI34NotificationSettingsViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18HealthExperienceUI34NotificationSettingsViewController_viewControllerTitle;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v5 = (self + v4);
  *v5 = sub_1BA4A1318();
  v5[1] = v6;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)dismissProfile:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  v5 = [(NotificationSettingsViewController *)v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [(NotificationSettingsViewController *)v5 dismissViewControllerAnimated:1 completion:0];

    v4 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(&v7);
}

- (_TtC18HealthExperienceUI34NotificationSettingsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end