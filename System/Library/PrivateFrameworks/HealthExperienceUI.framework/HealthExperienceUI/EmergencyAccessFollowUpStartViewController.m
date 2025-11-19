@interface EmergencyAccessFollowUpStartViewController
- (_TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapNext:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmergencyAccessFollowUpStartViewController();
  v4 = v7.receiver;
  [(OBBaseWelcomeController *)&v7 viewDidAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setNavigationBarHidden_];
  }

  (*((*MEMORY[0x1E69E7D40] & **&v4[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_animationView]) + 0x138))();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmergencyAccessFollowUpStartViewController();
  v4 = v8.receiver;
  v5 = [(OBBaseWelcomeController *)&v8 viewDidDisappear:v3];
  (*((*MEMORY[0x1E69E7D40] & **&v4[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_animationView]) + 0x148))(v5);
  v6 = [v4 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 setNavigationBarHidden_];
  }
}

- (void)didTapNext:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA188700();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end