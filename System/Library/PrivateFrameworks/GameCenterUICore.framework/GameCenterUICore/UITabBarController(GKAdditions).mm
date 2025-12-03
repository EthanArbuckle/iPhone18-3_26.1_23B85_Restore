@interface UITabBarController(GKAdditions)
- (id)_gkUpdateContentsWithCompletionHandlerAndError:()GKAdditions;
- (void)_gkForceNextContentUpdate;
- (void)_gkHandleURLPathComponents:()GKAdditions query:;
- (void)_gkRefreshContentsForDataType:()GKAdditions userInfo:;
- (void)_gkResetContents;
- (void)_gkSetContentsNeedUpdateWithHandler:()GKAdditions;
@end

@implementation UITabBarController(GKAdditions)

- (void)_gkSetContentsNeedUpdateWithHandler:()GKAdditions
{
  v6 = a3;
  selectedViewController = [self selectedViewController];
  v5 = selectedViewController;
  if (selectedViewController)
  {
    [selectedViewController _gkSetContentsNeedUpdateWithHandler:v6];
  }

  else if (v6)
  {
    v6[2]();
  }
}

- (void)_gkResetContents
{
  v3.receiver = self;
  v3.super_class = &off_2861B5E78;
  objc_msgSendSuper2(&v3, sel__gkResetContents);
  viewControllers = [self viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_4];
}

- (id)_gkUpdateContentsWithCompletionHandlerAndError:()GKAdditions
{
  v2.receiver = self;
  v2.super_class = &off_2861B5E78;
  return objc_msgSendSuper2(&v2, sel__gkUpdateContentsWithCompletionHandlerAndError_);
}

- (void)_gkForceNextContentUpdate
{
  v13 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = &off_2861B5E78;
  objc_msgSendSuper2(&v11, sel__gkForceNextContentUpdate);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  viewControllers = [self viewControllers];
  v3 = [viewControllers countByEnumeratingWithState:&v7 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v7 + 1) + 8 * v6++) _gkForceNextContentUpdate];
      }

      while (v4 != v6);
      v4 = [viewControllers countByEnumeratingWithState:&v7 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_gkHandleURLPathComponents:()GKAdditions query:
{
  v10 = a3;
  v6 = a4;
  selectedViewController = [self selectedViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    selectedViewController2 = [self selectedViewController];
    [selectedViewController2 _gkHandleURLPathComponents:v10 query:v6];
  }
}

- (void)_gkRefreshContentsForDataType:()GKAdditions userInfo:
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  viewControllers = [self viewControllers];
  v8 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(viewControllers);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 _gkShouldRefreshContentsForDataType:a3 userInfo:v6])
        {
          [v12 _gkRefreshContentsForDataType:a3 userInfo:v6];
        }
      }

      v9 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

@end