@interface EmergencyAccessBuddyStartViewController
- (_TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapCancel:(id)cancel;
- (void)didTapNext:(id)next;
- (void)didTapReviewLater;
- (void)viewDidLoad;
@end

@implementation EmergencyAccessBuddyStartViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmergencyAccessBuddyStartViewController();
  v2 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  navigationItem = [v2 navigationItem];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v2 action:sel_didTapCancel_];
  [navigationItem setRightBarButtonItem_];

  sub_1BA01ECE4();
}

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA01E8A0();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)didTapReviewLater
{
  selfCopy = self;
  sub_1BA01F4AC();
}

- (void)didTapNext:(id)next
{
  v4 = type metadata accessor for EmergencyAccessUserStatus();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  v8 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_healthStore);
  v10 = *(&selfCopy->super.super.super.super._responderFlags + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow);
  v13 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow);
  v9 = v13;
  v14 = v10;
  sub_1BA020470(selfCopy + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_emergencyStatus, v6);
  objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyMedicalIDViewController());
  v11 = v8;
  sub_1BA02040C(v9, v10);
  v12 = sub_1BA2B71E4(v11, &v13, v6);

  [(EmergencyAccessBuddyStartViewController *)selfCopy showViewController:v12 sender:selfCopy];
  __swift_destroy_boxed_opaque_existential_1(v15);
}

- (_TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end