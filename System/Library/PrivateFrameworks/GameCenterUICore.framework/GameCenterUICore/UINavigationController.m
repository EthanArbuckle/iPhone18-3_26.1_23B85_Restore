@interface UINavigationController
@end

@implementation UINavigationController

void __75__UINavigationController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) viewControllers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(a1 + 32) viewControllers];
    v7 = [v6 objectAtIndex:0];

    v8 = [*(a1 + 32) topViewController];

    if (v7 == v8)
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __75__UINavigationController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_3;
      v20 = &unk_27967EEE8;
      v21 = v7;
      gk_dispatch_group_do();
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __75__UINavigationController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_4;
      v14 = &unk_27967EFB0;
      v15 = *(a1 + 32);
      v16 = v21;
      gk_dispatch_group_do();
    }

    else
    {
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __75__UINavigationController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_2;
      v25 = &unk_27967EEE8;
      v26 = *(a1 + 32);
      gk_dispatch_group_do();
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__UINavigationController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_5;
  block[3] = &unk_27967EEC0;
  v10 = *(a1 + 40);
  dispatch_group_notify(v3, MEMORY[0x277D85CD0], block);
}

void __75__UINavigationController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 topViewController];
  [v4 _gkSetContentsNeedUpdateWithHandler:v3];
}

void __75__UINavigationController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) topViewController];
  if (v3 != *(a1 + 40))
  {
    v4 = [*(a1 + 32) topViewController];
    [v4 _gkSetContentsNeedUpdateWithHandler:v5];
  }
}

uint64_t __75__UINavigationController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end