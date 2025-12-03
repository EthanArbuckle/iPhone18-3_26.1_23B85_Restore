@interface GKOnboardingProfileCreationViewController
- (GKOnboardingProfileCreationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GKOnboardingProfileCreationViewController

- (void)loadView
{
  selfCopy = self;
  OnboardingProfileCreationViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  OnboardingProfileCreationViewController.viewWillAppear(_:)(appear);
}

- (GKOnboardingProfileCreationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return OnboardingProfileCreationViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end