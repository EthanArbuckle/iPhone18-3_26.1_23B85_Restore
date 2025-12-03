@interface EmergencyAccessBuddyMedicalIDViewController
- (_TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation EmergencyAccessBuddyMedicalIDViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmergencyAccessBuddyMedicalIDViewController();
  v2 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  navigationItem = [v2 navigationItem];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v2 action:sel_didTapCancel_];
  [navigationItem setRightBarButtonItem_];

  sub_1BA2B6868();
  sub_1BA2B5F40();
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmergencyAccessBuddyMedicalIDViewController();
  v2 = v7.receiver;
  [(OBBaseWelcomeController *)&v7 viewDidLayoutSubviews];
  [v2 availableContentViewHeight];
  if (v3 > 120.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 120.0;
  }

  [*&v2[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_medicalIDViewController] preferredContentSize];
  if (v4 > v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  [*&v2[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_contentViewHeightConstraint] setConstant_];
}

- (_TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end