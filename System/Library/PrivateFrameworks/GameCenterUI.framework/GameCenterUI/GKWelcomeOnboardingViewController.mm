@interface GKWelcomeOnboardingViewController
- (GKWelcomeOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation GKWelcomeOnboardingViewController

- (void)viewDidLoad
{
  v2 = self;
  WelcomeOnboardingViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  WelcomeOnboardingViewController.viewDidAppear(_:)(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  WelcomeOnboardingViewController.viewIsAppearing(_:)(a3);
}

- (GKWelcomeOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return WelcomeOnboardingViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end