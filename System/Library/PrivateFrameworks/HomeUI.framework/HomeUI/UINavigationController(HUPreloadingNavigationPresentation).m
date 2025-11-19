@interface UINavigationController(HUPreloadingNavigationPresentation)
- (id)hu_preloadContent;
- (id)hu_pushPreloadableViewController:()HUPreloadingNavigationPresentation animated:;
- (id)hu_pushPreloadableViewController:()HUPreloadingNavigationPresentation animated:waitForPreload:;
@end

@implementation UINavigationController(HUPreloadingNavigationPresentation)

- (id)hu_pushPreloadableViewController:()HUPreloadingNavigationPresentation animated:
{
  v6 = a3;
  if ([v6 conformsToProtocol:&unk_28249D748])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 needsToWaitForPreload];
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 hu_pushPreloadableViewController:v6 animated:a4 waitForPreload:v9];

  return v10;
}

- (id)hu_pushPreloadableViewController:()HUPreloadingNavigationPresentation animated:waitForPreload:
{
  v8 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __119__UINavigationController_HUPreloadingNavigationPresentation__hu_pushPreloadableViewController_animated_waitForPreload___block_invoke;
  v12[3] = &unk_277DB8250;
  v12[4] = a1;
  v13 = v8;
  v14 = a4;
  v9 = v8;
  v10 = _HUPreloadViewController(v9, a5, v12);

  return v10;
}

- (id)hu_preloadContent
{
  v2 = [a1 topViewController];
  v3 = [v2 conformsToProtocol:&unk_28249D748];

  if (v3)
  {
    v4 = [a1 topViewController];
    v5 = [v4 hu_preloadContent];
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v5;
}

@end