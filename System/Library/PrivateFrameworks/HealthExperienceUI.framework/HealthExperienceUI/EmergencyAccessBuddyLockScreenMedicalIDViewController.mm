@interface EmergencyAccessBuddyLockScreenMedicalIDViewController
- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
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
  v3 = [v2 navigationItem];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v2 action:sel_didTapCancel_];
  [v3 setRightBarButtonItem_];

  sub_1BA2B6868();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BA44BD48();
}

- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end