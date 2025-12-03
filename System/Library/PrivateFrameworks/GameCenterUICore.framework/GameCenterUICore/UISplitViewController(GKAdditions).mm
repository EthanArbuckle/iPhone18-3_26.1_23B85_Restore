@interface UISplitViewController(GKAdditions)
- (id)_gkUpdateContentsWithCompletionHandlerAndError:()GKAdditions;
- (void)_gkForceNextContentUpdate;
- (void)_gkHandleURLPathComponents:()GKAdditions query:;
- (void)_gkResetContents;
- (void)_gkSetContentsNeedUpdateWithHandler:()GKAdditions;
@end

@implementation UISplitViewController(GKAdditions)

- (void)_gkSetContentsNeedUpdateWithHandler:()GKAdditions
{
  v4 = a3;
  v3 = v4;
  gk_dispatch_as_group();
}

- (void)_gkResetContents
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  viewControllers = [self viewControllers];
  v2 = [viewControllers countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v6 + 1) + 8 * v5++) _gkResetContents];
      }

      while (v3 != v5);
      v3 = [viewControllers countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)_gkUpdateContentsWithCompletionHandlerAndError:()GKAdditions
{
  v2.receiver = self;
  v2.super_class = &off_2861BA4C0;
  return objc_msgSendSuper2(&v2, sel__gkUpdateContentsWithCompletionHandlerAndError_);
}

- (void)_gkForceNextContentUpdate
{
  v13 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = &off_2861BA4C0;
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
  viewControllers = [self viewControllers];
  if ([viewControllers count])
  {
    viewControllers2 = [self viewControllers];
    v9 = [viewControllers2 objectAtIndex:0];
  }

  else
  {
    v9 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v9 _gkHandleURLPathComponents:v10 query:v6];
  }
}

@end