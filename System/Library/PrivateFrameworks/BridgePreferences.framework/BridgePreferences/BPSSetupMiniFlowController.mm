@interface BPSSetupMiniFlowController
- (BPSBuddyControllerDelegate)delegate;
- (id)navigationController;
- (void)pushController:(id)controller animated:(BOOL)animated;
@end

@implementation BPSSetupMiniFlowController

- (id)navigationController
{
  viewController = [(BPSSetupMiniFlowController *)self viewController];
  navigationController = [viewController navigationController];

  return navigationController;
}

- (void)pushController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  navigationController = [(BPSSetupMiniFlowController *)self navigationController];
  [navigationController pushViewController:controllerCopy animated:animatedCopy];
}

- (BPSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end