@interface FANavigationController
- (BOOL)_isEmpty;
- (FANavigationControllerDelegate)familyDelegate;
@end

@implementation FANavigationController

- (BOOL)_isEmpty
{
  v2 = [(FANavigationController *)self viewControllers];
  v3 = [v2 count] == 0;

  return v3;
}

- (FANavigationControllerDelegate)familyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_familyDelegate);

  return WeakRetained;
}

@end