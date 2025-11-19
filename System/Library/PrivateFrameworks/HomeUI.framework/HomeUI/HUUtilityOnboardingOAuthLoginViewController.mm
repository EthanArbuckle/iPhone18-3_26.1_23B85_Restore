@interface HUUtilityOnboardingOAuthLoginViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingOAuthLoginViewController)initWithCoder:(id)a3;
- (HUUtilityOnboardingOAuthLoginViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUUtilityOnboardingOAuthLoginViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (HUUtilityOnboardingOAuthLoginViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_delegate) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_loginManager) = 0;
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20CF326D0();
}

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20CF344C8();

  return v6;
}

- (Class)onboardingFlowClass
{
  sub_20CF34700();

  return swift_getObjCClassFromMetadata();
}

- (HUUtilityOnboardingOAuthLoginViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end