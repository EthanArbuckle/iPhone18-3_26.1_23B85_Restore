@interface CCUIAlwaysExpandedMenuModuleViewController
- (CCUIAlwaysExpandedMenuModuleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CCUIAlwaysExpandedMenuModuleViewController

- (CCUIAlwaysExpandedMenuModuleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = CCUIAlwaysExpandedMenuModuleViewController;
  v4 = [(CCUIMenuModuleViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(CCUIButtonModuleViewController *)v4 setExpanded:1];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CCUIAlwaysExpandedMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewWillAppear:appear];
  [(CCUIMenuModuleViewController *)self willTransitionToExpandedContentMode:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CCUIAlwaysExpandedMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewDidAppear:appear];
  [(CCUIMenuModuleViewController *)self didTransitionToExpandedContentMode:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CCUIAlwaysExpandedMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewWillDisappear:disappear];
  [(CCUIMenuModuleViewController *)self willTransitionToExpandedContentMode:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CCUIAlwaysExpandedMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewDidDisappear:disappear];
  [(CCUIMenuModuleViewController *)self didTransitionToExpandedContentMode:0];
}

@end