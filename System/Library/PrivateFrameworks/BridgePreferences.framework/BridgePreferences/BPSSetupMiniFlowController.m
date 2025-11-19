@interface BPSSetupMiniFlowController
- (BPSBuddyControllerDelegate)delegate;
- (id)navigationController;
- (void)pushController:(id)a3 animated:(BOOL)a4;
@end

@implementation BPSSetupMiniFlowController

- (id)navigationController
{
  v2 = [(BPSSetupMiniFlowController *)self viewController];
  v3 = [v2 navigationController];

  return v3;
}

- (void)pushController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BPSSetupMiniFlowController *)self navigationController];
  [v7 pushViewController:v6 animated:v4];
}

- (BPSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end