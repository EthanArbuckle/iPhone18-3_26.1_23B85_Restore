@interface MOOnboardingViewController
- (_TtC28MomentsOnboardingAndSettings26MOOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28MomentsOnboardingAndSettings26MOOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)customizeButtonTapped;
- (void)notNowCloseSheet;
- (void)privacyAboutTapped;
- (void)turnOnSuggestionsButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MOOnboardingViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for MOOnboardingViewController();
  [(OBBaseWelcomeController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  MOOnboardingViewController.viewDidAppear(_:)(appear);
}

- (void)privacyAboutTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier);
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier);
  selfCopy = self;
  v4 = MEMORY[0x25F84F220](v2, v3);
  presenterForPrivacySplashWithIdentifier_ = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (presenterForPrivacySplashWithIdentifier_)
  {
    [presenterForPrivacySplashWithIdentifier_ setPresentingViewController_];
    [presenterForPrivacySplashWithIdentifier_ present];
  }
}

- (void)notNowCloseSheet
{
  selfCopy = self;
  MOOnboardingViewController.notNowCloseSheet()();
}

- (void)turnOnSuggestionsButtonTapped
{
  selfCopy = self;
  MOOnboardingViewController.turnOnSuggestionsButtonTapped()();
}

- (void)customizeButtonTapped
{
  selfCopy = self;
  MOOnboardingViewController.customizeButtonTapped()();
}

- (_TtC28MomentsOnboardingAndSettings26MOOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28MomentsOnboardingAndSettings26MOOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end