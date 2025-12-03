@interface WalkingSteadinessOnboardingStartViewController
- (_TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancelButtonTapped;
- (void)primaryFooterButtonTapped;
- (void)secondaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation WalkingSteadinessOnboardingStartViewController

- (void)viewDidLoad
{
  selfCopy = self;
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
    selfCopy = self;
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
    selfCopy = self;
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
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (_TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end