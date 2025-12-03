@interface GKOnboardingFriendsSuggestionsViewController
- (GKOnboardingFriendsSuggestionsViewController)initWithGameBundleId:(id)id;
- (GKOnboardingFriendsSuggestionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)loadView;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation GKOnboardingFriendsSuggestionsViewController

- (GKOnboardingFriendsSuggestionsViewController)initWithGameBundleId:(id)id
{
  if (id)
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
  selfCopy = self;
  OnboardingFriendsSuggestionsViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  OnboardingFriendsSuggestionsViewController.viewWillAppear(_:)(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  OnboardingFriendsSuggestionsViewController.viewIsAppearing(_:)(appearing);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  OnboardingFriendsSuggestionsViewController.viewWillDisappear(_:)(disappear);
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  selfCopy = self;
  OnboardingFriendsSuggestionsViewController.contentScrollView(for:)(v5, edge);
  v7 = v6;

  return v7;
}

- (GKOnboardingFriendsSuggestionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
  }

  bundleCopy = bundle;
  OnboardingFriendsSuggestionsViewController.init(nibName:bundle:)();
}

@end