@interface GKWelcomeOnboardingViewController
- (GKWelcomeOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation GKWelcomeOnboardingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  WelcomeOnboardingViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  WelcomeOnboardingViewController.viewDidAppear(_:)(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  WelcomeOnboardingViewController.viewIsAppearing(_:)(appearing);
}

- (GKWelcomeOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return WelcomeOnboardingViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end