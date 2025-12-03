@interface ICHandwritingDebugPillOrnamentViewController
- (ICHandwritingDebugDelegate)delegate;
- (ICHandwritingDebugPillOrnamentViewController)initWithRootViewController:(id)controller delegate:(id)delegate;
- (void)refresh;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ICHandwritingDebugPillOrnamentViewController

- (ICHandwritingDebugPillOrnamentViewController)initWithRootViewController:(id)controller delegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = ICHandwritingDebugPillOrnamentViewController;
  v7 = [(ICPillOrnamentViewController *)&v13 initWithRootViewController:controller contentAnchorPoint:0.0 sceneAnchorPoint:0.5 offset:1.0 cornerRadius:0.5, 24.0, 0.0, 32.0];
  if (v7)
  {
    v8 = [[ICHandwritingDebugViewController alloc] initWithDelegate:delegateCopy];
    handwritingDebugViewController = v7->_handwritingDebugViewController;
    v7->_handwritingDebugViewController = v8;

    v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7->_handwritingDebugViewController];
    handwritingDebugNavigationController = v7->_handwritingDebugNavigationController;
    v7->_handwritingDebugNavigationController = v10;
  }

  return v7;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = ICHandwritingDebugPillOrnamentViewController;
  [(ICHandwritingDebugPillOrnamentViewController *)&v12 viewDidLoad];
  handwritingDebugNavigationController = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugNavigationController];
  view = [handwritingDebugNavigationController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  handwritingDebugNavigationController2 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugNavigationController];
  [(ICHandwritingDebugPillOrnamentViewController *)self addChildViewController:handwritingDebugNavigationController2];

  contentView = [(ICPillOrnamentViewController *)self contentView];
  handwritingDebugNavigationController3 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugNavigationController];
  view2 = [handwritingDebugNavigationController3 view];
  [contentView addSubview:view2];

  handwritingDebugNavigationController4 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugNavigationController];
  view3 = [handwritingDebugNavigationController4 view];
  [view3 ic_addAnchorsToFillSuperview];

  handwritingDebugNavigationController5 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugNavigationController];
  [handwritingDebugNavigationController5 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICHandwritingDebugPillOrnamentViewController;
  [(ICHandwritingDebugPillOrnamentViewController *)&v3 viewDidLayoutSubviews];
  [(ICPillOrnamentViewController *)self setPreferredContentSize:400.0, 600.0];
  [(ICHandwritingDebugPillOrnamentViewController *)self refresh];
}

- (ICHandwritingDebugDelegate)delegate
{
  handwritingDebugViewController = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugViewController];
  delegate = [handwritingDebugViewController delegate];

  return delegate;
}

- (void)refresh
{
  handwritingDebugViewController = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugViewController];
  [handwritingDebugViewController refresh];
}

@end