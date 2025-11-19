@interface GKOnboardingFriendsSuggestionsViewController
- (GKOnboardingFriendsSuggestionsViewController)initWithGameBundleId:(id)a3;
- (GKOnboardingFriendsSuggestionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)loadView;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation GKOnboardingFriendsSuggestionsViewController

- (GKOnboardingFriendsSuggestionsViewController)initWithGameBundleId:(id)a3
{
  if (a3)
  {
    v3 = sub_24E347CF8();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return OnboardingFriendsSuggestionsViewController.init(gameBundleId:)(v3, v4);
}

- (void)loadView
{
  v2 = self;
  OnboardingFriendsSuggestionsViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  OnboardingFriendsSuggestionsViewController.viewWillAppear(_:)(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  OnboardingFriendsSuggestionsViewController.viewIsAppearing(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  OnboardingFriendsSuggestionsViewController.viewWillDisappear(_:)(a3);
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = self;
  OnboardingFriendsSuggestionsViewController.contentScrollView(for:)(v5, a3);
  v7 = v6;

  return v7;
}

- (GKOnboardingFriendsSuggestionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
  }

  v5 = a4;
  OnboardingFriendsSuggestionsViewController.init(nibName:bundle:)();
}

@end