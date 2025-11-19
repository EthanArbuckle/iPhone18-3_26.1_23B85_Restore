@interface ICHandwritingDebugPillOrnamentViewController
- (ICHandwritingDebugDelegate)delegate;
- (ICHandwritingDebugPillOrnamentViewController)initWithRootViewController:(id)a3 delegate:(id)a4;
- (void)refresh;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ICHandwritingDebugPillOrnamentViewController

- (ICHandwritingDebugPillOrnamentViewController)initWithRootViewController:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = ICHandwritingDebugPillOrnamentViewController;
  v7 = [(ICPillOrnamentViewController *)&v13 initWithRootViewController:a3 contentAnchorPoint:0.0 sceneAnchorPoint:0.5 offset:1.0 cornerRadius:0.5, 24.0, 0.0, 32.0];
  if (v7)
  {
    v8 = [[ICHandwritingDebugViewController alloc] initWithDelegate:v6];
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
  v3 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugNavigationController];
  v4 = [v3 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugNavigationController];
  [(ICHandwritingDebugPillOrnamentViewController *)self addChildViewController:v5];

  v6 = [(ICPillOrnamentViewController *)self contentView];
  v7 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugNavigationController];
  v8 = [v7 view];
  [v6 addSubview:v8];

  v9 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugNavigationController];
  v10 = [v9 view];
  [v10 ic_addAnchorsToFillSuperview];

  v11 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugNavigationController];
  [v11 didMoveToParentViewController:self];
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
  v2 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugViewController];
  v3 = [v2 delegate];

  return v3;
}

- (void)refresh
{
  v2 = [(ICHandwritingDebugPillOrnamentViewController *)self handwritingDebugViewController];
  [v2 refresh];
}

@end