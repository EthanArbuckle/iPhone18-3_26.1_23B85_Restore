@interface UINavigationController
@end

@implementation UINavigationController

id __119__UINavigationController_HUPreloadingNavigationPresentation__hu_pushPreloadableViewController_animated_waitForPreload___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D2C900];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __119__UINavigationController_HUPreloadingNavigationPresentation__hu_pushPreloadableViewController_animated_waitForPreload___block_invoke_2;
  v6[3] = &unk_277DB89C0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 48);
  v4 = [v2 futureWithBlock:v6];

  return v4;
}

void __119__UINavigationController_HUPreloadingNavigationPresentation__hu_pushPreloadableViewController_animated_waitForPreload___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) hu_proxyPushViewController:*(a1 + 40) animated:*(a1 + 48)];
  v4 = [*(a1 + 32) transitionCoordinator];
  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __119__UINavigationController_HUPreloadingNavigationPresentation__hu_pushPreloadableViewController_animated_waitForPreload___block_invoke_3;
    v5[3] = &unk_277DB9880;
    v6 = v3;
    v7 = *(a1 + 40);
    [v4 animateAlongsideTransition:0 completion:v5];
  }

  else
  {
    [v3 finishWithResult:*(a1 + 40)];
  }
}

void __119__UINavigationController_HUPreloadingNavigationPresentation__hu_pushPreloadableViewController_animated_waitForPreload___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) finishWithResult:*(a1 + 40)];
  v3 = [*(a1 + 40) presentingViewController];
  v2 = [v3 view];
  [v2 setNeedsLayout];
}

BOOL __75__UINavigationController_HUModalPresentation__finishPresentation_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  do
  {
    v4 = [*(a1 + 40) presentedViewController];

    v5 = v3 == v4;
    v6 = v3 == v4;
    if (v5)
    {
      break;
    }

    v7 = [v3 parentViewController];

    v3 = v7;
  }

  while (v7);

  return v6;
}

@end