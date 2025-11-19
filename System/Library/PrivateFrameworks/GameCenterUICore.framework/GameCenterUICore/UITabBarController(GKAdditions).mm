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
  v4 = [a1 selectedViewController];
  v5 = v4;
  if (v4)
  {
    [v4 _gkSetContentsNeedUpdateWithHandler:v6];
  }

  else if (v6)
  {
    v6[2]();
  }
}

- (void)_gkResetContents
{
  v3.receiver = a1;
  v3.super_class = &off_2861B5E78;
  objc_msgSendSuper2(&v3, sel__gkResetContents);
  v2 = [a1 viewControllers];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_4];
}

- (id)_gkUpdateContentsWithCompletionHandlerAndError:()GKAdditions
{
  v2.receiver = a1;
  v2.super_class = &off_2861B5E78;
  return objc_msgSendSuper2(&v2, sel__gkUpdateContentsWithCompletionHandlerAndError_);
}

- (void)_gkForceNextContentUpdate
{
  v13 = *MEMORY[0x277D85DE8];
  v11.receiver = a1;
  v11.super_class = &off_2861B5E78;
  objc_msgSendSuper2(&v11, sel__gkForceNextContentUpdate);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [a1 viewControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _gkForceNextContentUpdate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_gkHandleURLPathComponents:()GKAdditions query:
{
  v10 = a3;
  v6 = a4;
  v7 = [a1 selectedViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [a1 selectedViewController];
    [v9 _gkHandleURLPathComponents:v10 query:v6];
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
  v7 = [a1 viewControllers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 _gkShouldRefreshContentsForDataType:a3 userInfo:v6])
        {
          [v12 _gkRefreshContentsForDataType:a3 userInfo:v6];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

@end