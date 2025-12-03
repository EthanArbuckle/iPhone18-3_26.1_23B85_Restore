@interface MedicationsAffectHeartRateOnboardingViewController
- (void)hxui_primaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation MedicationsAffectHeartRateOnboardingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA001F14();
}

- (void)hxui_primaryFooterButtonTapped
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    selfCopy = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

@end