@interface HUUtilityOnboardingOAuthLoginViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingOAuthLoginViewController)initWithCoder:(id)coder;
- (HUUtilityOnboardingOAuthLoginViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation HUUtilityOnboardingOAuthLoginViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (HUUtilityOnboardingOAuthLoginViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_delegate) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_loginManager) = 0;
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CF326D0();
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  v6 = sub_20CF344C8();

  return v6;
}

- (Class)onboardingFlowClass
{
  sub_20CF34700();

  return swift_getObjCClassFromMetadata();
}

- (HUUtilityOnboardingOAuthLoginViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end