@interface NTKCNavigationController
- (NTKCNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (NTKCNavigationController)initWithRootViewController:(id)controller;
- (void)_commonInit;
@end

@implementation NTKCNavigationController

- (NTKCNavigationController)initWithRootViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = NTKCNavigationController;
  v3 = [(NTKCNavigationController *)&v6 initWithRootViewController:controller];
  v4 = v3;
  if (v3)
  {
    [(NTKCNavigationController *)v3 _commonInit];
  }

  return v4;
}

- (NTKCNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = NTKCNavigationController;
  v4 = [(NTKCNavigationController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(NTKCNavigationController *)v4 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  navigationBar = [(NTKCNavigationController *)self navigationBar];
  BPSApplyStyleToNavBarOptions();

  toolbar = [(NTKCNavigationController *)self toolbar];
  BPSApplyStyleToToolbar();
}

@end