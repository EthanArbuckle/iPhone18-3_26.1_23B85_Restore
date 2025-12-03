@interface FANavigationController
- (BOOL)_isEmpty;
- (FANavigationControllerDelegate)familyDelegate;
@end

@implementation FANavigationController

- (BOOL)_isEmpty
{
  viewControllers = [(FANavigationController *)self viewControllers];
  v3 = [viewControllers count] == 0;

  return v3;
}

- (FANavigationControllerDelegate)familyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_familyDelegate);

  return WeakRetained;
}

@end