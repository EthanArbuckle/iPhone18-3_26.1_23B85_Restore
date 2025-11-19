@interface CCUIAlwaysExpandedMenuModuleViewController
- (CCUIAlwaysExpandedMenuModuleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CCUIAlwaysExpandedMenuModuleViewController

- (CCUIAlwaysExpandedMenuModuleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = CCUIAlwaysExpandedMenuModuleViewController;
  v4 = [(CCUIMenuModuleViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(CCUIButtonModuleViewController *)v4 setExpanded:1];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIAlwaysExpandedMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewWillAppear:a3];
  [(CCUIMenuModuleViewController *)self willTransitionToExpandedContentMode:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIAlwaysExpandedMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewDidAppear:a3];
  [(CCUIMenuModuleViewController *)self didTransitionToExpandedContentMode:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIAlwaysExpandedMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewWillDisappear:a3];
  [(CCUIMenuModuleViewController *)self willTransitionToExpandedContentMode:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIAlwaysExpandedMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewDidDisappear:a3];
  [(CCUIMenuModuleViewController *)self didTransitionToExpandedContentMode:0];
}

@end