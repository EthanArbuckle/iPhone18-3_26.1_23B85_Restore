@interface BaseCollectionViewController
- (UICollectionView)collectionView;
- (_TtC12GameCenterUI28BaseCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentingViewControllerForLockupView:(id)view;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setCollectionView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BaseCollectionViewController

- (_TtC12GameCenterUI28BaseCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return BaseCollectionViewController.init(nibName:bundle:)(bundle, v6, bundle);
}

- (UICollectionView)collectionView
{
  selfCopy = self;
  v3 = sub_24DFFED5C();

  return v3;
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24DFFEE00(view);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E000204(&selRef_viewDidLoad);
}

- (void)loadView
{
  selfCopy = self;
  sub_24DFFF564();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24DFFF878(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24DFFFAD0(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_24DFFFB80();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24DFFFD90(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_24E000070();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_24DFFE8A4();
}

- (id)presentingViewControllerForLockupView:(id)view
{
  v3 = BaseCollectionViewController.presentingViewController(for:)();

  return v3;
}

@end