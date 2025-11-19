@interface WalkingSteadinessOnboardingStartViewController
- (_TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelButtonTapped;
- (void)primaryFooterButtonTapped;
- (void)secondaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation WalkingSteadinessOnboardingStartViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_251989548();
}

- (void)primaryFooterButtonTapped
{
  v3 = self + OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)secondaryFooterButtonTapped
{
  v3 = self + OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 16);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)cancelButtonTapped
{
  v3 = self + OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 24);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (_TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end