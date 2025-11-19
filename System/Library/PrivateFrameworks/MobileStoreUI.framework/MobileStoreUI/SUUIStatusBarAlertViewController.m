@interface SUUIStatusBarAlertViewController
@end

@implementation SUUIStatusBarAlertViewController

uint64_t __88___SUUIStatusBarAlertViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateLabelFrame];
  v2 = *(*(a1 + 32) + 992);

  return [v2 setHidden:0];
}

@end