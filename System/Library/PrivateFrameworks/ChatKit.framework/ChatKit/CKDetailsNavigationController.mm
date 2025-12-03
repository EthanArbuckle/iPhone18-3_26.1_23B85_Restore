@interface CKDetailsNavigationController
- (BOOL)isModalInPresentation;
- (CKDetailsNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass shouldHideNavigationBar:(BOOL)bar;
@end

@implementation CKDetailsNavigationController

- (CKDetailsNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass shouldHideNavigationBar:(BOOL)bar
{
  barCopy = bar;
  v9.receiver = self;
  v9.super_class = CKDetailsNavigationController;
  v6 = [(CKDetailsNavigationController *)&v9 initWithNavigationBarClass:class toolbarClass:toolbarClass];
  v7 = v6;
  if (v6)
  {
    [(CKDetailsNavigationController *)v6 setNavigationBarHidden:barCopy];
  }

  return v7;
}

- (BOOL)isModalInPresentation
{
  viewControllers = [(CKDetailsNavigationController *)self viewControllers];
  v3 = [viewControllers count] > 1;

  return v3;
}

@end