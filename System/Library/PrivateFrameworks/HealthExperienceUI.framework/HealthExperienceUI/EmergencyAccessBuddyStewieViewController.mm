@interface EmergencyAccessBuddyStewieViewController
- (_TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapCancel:(id)cancel;
- (void)didTapLearnMore:(id)more;
- (void)didTapNext:(id)next;
- (void)viewDidLoad;
@end

@implementation EmergencyAccessBuddyStewieViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmergencyAccessBuddyStewieViewController();
  v2 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  sub_1BA460C18();
  navigationItem = [v2 navigationItem];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v2 action:sel_didTapCancel_];
  [navigationItem setRightBarButtonItem_];

  sub_1BA4614B8();
}

- (void)didTapNext:(id)next
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  (*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_nextVCHandler))(selfCopy);
  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)didTapLearnMore:(id)more
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [objc_opt_self() presentStewieLearnMoreLinkOnViewController_];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA461760();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end