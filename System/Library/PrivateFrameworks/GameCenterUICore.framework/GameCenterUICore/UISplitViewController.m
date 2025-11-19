@interface UISplitViewController
@end

@implementation UISplitViewController

void __74__UISplitViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [*(a1 + 32) viewControllers];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v12 = MEMORY[0x277D85DD0];
        v13 = 3221225472;
        v14 = __74__UISplitViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_2;
        v15 = &unk_27967EEE8;
        v16 = v9;
        gk_dispatch_group_do();
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__UISplitViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_3;
  v10[3] = &unk_27967EEC0;
  v11 = *(a1 + 40);
  dispatch_group_notify(v3, MEMORY[0x277D85CD0], v10);
}

uint64_t __74__UISplitViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end