@interface SFOnboardingCoordinator
+ (SFOnboardingCoordinator)sharedCoordinator;
- (SFOnboardingCoordinator)init;
- (id)onboardingProvidersForStartPage;
- (void)didComplete:(id)complete;
- (void)pauseStartPageOnboarding;
@end

@implementation SFOnboardingCoordinator

+ (SFOnboardingCoordinator)sharedCoordinator
{
  if (qword_1EA9D2470 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA9DA228;

  return v3;
}

- (void)pauseStartPageOnboarding
{
  selfCopy = self;
  sub_18BC1EEC8();
}

- (id)onboardingProvidersForStartPage
{
  selfCopy = self;
  SFOnboardingCoordinator.onboardingProvidersForStartPage()();

  type metadata accessor for SFStartPageOnboardingCell.Configuration();
  v3 = sub_18BC20D88();

  return v3;
}

- (void)didComplete:(id)complete
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18BB7E150(complete);
  swift_unknownObjectRelease();
}

- (SFOnboardingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end