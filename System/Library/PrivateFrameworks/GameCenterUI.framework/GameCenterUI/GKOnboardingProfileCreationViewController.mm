@interface GKOnboardingProfileCreationViewController
- (GKOnboardingProfileCreationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKOnboardingProfileCreationViewController

- (void)loadView
{
  v2 = self;
  OnboardingProfileCreationViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  OnboardingProfileCreationViewController.viewWillAppear(_:)(a3);
}

- (GKOnboardingProfileCreationViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return OnboardingProfileCreationViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end