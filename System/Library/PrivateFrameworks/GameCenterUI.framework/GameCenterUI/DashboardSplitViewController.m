@interface DashboardSplitViewController
- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4;
- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DashboardSplitViewController

- (void)viewDidLoad
{
  v2 = self;
  DashboardSplitViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  DashboardSplitViewController.viewWillAppear(_:)(a3);
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  DashboardSplitViewController.splitViewController(_:willChangeTo:)(&v7->super.super, a4);
}

- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = DashboardSplitViewController.splitViewController(_:topColumnForCollapsingToProposedTopColumn:)(v6, a4);

  return v8;
}

- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = DashboardSplitViewController.splitViewController(_:displayModeForExpandingToProposedDisplayMode:)(v6, a4);

  return v8;
}

@end