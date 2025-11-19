@interface MOOnboardingViewController
- (_TtC28MomentsOnboardingAndSettings26MOOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC28MomentsOnboardingAndSettings26MOOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)customizeButtonTapped;
- (void)notNowCloseSheet;
- (void)privacyAboutTapped;
- (void)turnOnSuggestionsButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MOOnboardingViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for MOOnboardingViewController();
  [(OBBaseWelcomeController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  MOOnboardingViewController.viewDidAppear(_:)(a3);
}

- (void)privacyAboutTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier);
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier);
  v6 = self;
  v4 = MEMORY[0x25F84F220](v2, v3);
  v5 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v5)
  {
    [v5 setPresentingViewController_];
    [v5 present];
  }
}

- (void)notNowCloseSheet
{
  v2 = self;
  MOOnboardingViewController.notNowCloseSheet()();
}

- (void)turnOnSuggestionsButtonTapped
{
  v2 = self;
  MOOnboardingViewController.turnOnSuggestionsButtonTapped()();
}

- (void)customizeButtonTapped
{
  v2 = self;
  MOOnboardingViewController.customizeButtonTapped()();
}

- (_TtC28MomentsOnboardingAndSettings26MOOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28MomentsOnboardingAndSettings26MOOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end