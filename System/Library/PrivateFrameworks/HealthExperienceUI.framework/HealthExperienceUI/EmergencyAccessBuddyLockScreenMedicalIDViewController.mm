@interface EmergencyAccessBuddyLockScreenMedicalIDViewController
- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation EmergencyAccessBuddyLockScreenMedicalIDViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmergencyAccessBuddyLockScreenMedicalIDViewController();
  v2 = v5.receiver;
  [(OBTableWelcomeController *)&v5 viewDidLoad];
  navigationItem = [v2 navigationItem];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v2 action:sel_didTapCancel_];
  [navigationItem setRightBarButtonItem_];

  sub_1BA2B6868();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1BA44BD48();
}

- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end