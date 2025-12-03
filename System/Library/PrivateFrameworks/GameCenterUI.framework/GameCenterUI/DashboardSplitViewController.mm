@interface DashboardSplitViewController
- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DashboardSplitViewController

- (void)viewDidLoad
{
  selfCopy = self;
  DashboardSplitViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  DashboardSplitViewController.viewWillAppear(_:)(appear);
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  selfCopy = self;
  DashboardSplitViewController.splitViewController(_:willChangeTo:)(&selfCopy->super.super, mode);
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  controllerCopy = controller;
  selfCopy = self;
  v8 = DashboardSplitViewController.splitViewController(_:topColumnForCollapsingToProposedTopColumn:)(controllerCopy, column);

  return v8;
}

- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  selfCopy = self;
  v8 = DashboardSplitViewController.splitViewController(_:displayModeForExpandingToProposedDisplayMode:)(controllerCopy, mode);

  return v8;
}

@end