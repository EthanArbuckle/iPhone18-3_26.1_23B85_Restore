@interface CKDetailsNavigationController
- (BOOL)isModalInPresentation;
- (CKDetailsNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4 shouldHideNavigationBar:(BOOL)a5;
@end

@implementation CKDetailsNavigationController

- (CKDetailsNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4 shouldHideNavigationBar:(BOOL)a5
{
  v5 = a5;
  v9.receiver = self;
  v9.super_class = CKDetailsNavigationController;
  v6 = [(CKDetailsNavigationController *)&v9 initWithNavigationBarClass:a3 toolbarClass:a4];
  v7 = v6;
  if (v6)
  {
    [(CKDetailsNavigationController *)v6 setNavigationBarHidden:v5];
  }

  return v7;
}

- (BOOL)isModalInPresentation
{
  v2 = [(CKDetailsNavigationController *)self viewControllers];
  v3 = [v2 count] > 1;

  return v3;
}

@end