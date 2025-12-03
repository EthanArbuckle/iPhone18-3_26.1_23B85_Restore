@interface EmergencyAccessFollowUpStartViewController
- (_TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapNext:(id)next;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation EmergencyAccessFollowUpStartViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmergencyAccessFollowUpStartViewController();
  v2 = v3.receiver;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  sub_1BA188268(*&v2[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_animationView]);
  sub_1BA1885A4();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmergencyAccessFollowUpStartViewController();
  v4 = v7.receiver;
  [(OBBaseWelcomeController *)&v7 viewDidAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setNavigationBarHidden_];
  }

  (*((*MEMORY[0x1E69E7D40] & **&v4[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_animationView]) + 0x138))();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmergencyAccessFollowUpStartViewController();
  v4 = v8.receiver;
  v5 = [(OBBaseWelcomeController *)&v8 viewDidDisappear:disappearCopy];
  (*((*MEMORY[0x1E69E7D40] & **&v4[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_animationView]) + 0x148))(v5);
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v7 = navigationController;
    [navigationController setNavigationBarHidden_];
  }
}

- (void)didTapNext:(id)next
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA188700();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end