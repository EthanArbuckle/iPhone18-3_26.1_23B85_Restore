@interface UINavigationController(GKAdditions)
- (id)_gkUpdateContentsWithCompletionHandlerAndError:()GKAdditions;
- (uint64_t)_gkShouldRefreshContentsForDataType:()GKAdditions userInfo:;
- (void)_gkForceNextContentUpdate;
- (void)_gkHandleURLPathComponents:()GKAdditions query:;
- (void)_gkRefreshContentsForDataType:()GKAdditions userInfo:;
- (void)_gkResetContents;
- (void)_gkSetContentsNeedUpdateWithHandler:()GKAdditions;
- (void)makeNavigationBarBackgroundTranslucent;
@end

@implementation UINavigationController(GKAdditions)

- (void)_gkSetContentsNeedUpdateWithHandler:()GKAdditions
{
  v4 = a3;
  v3 = v4;
  gk_dispatch_as_group();
}

- (void)_gkResetContents
{
  v7.receiver = a1;
  v7.super_class = &off_2861B9F48;
  objc_msgSendSuper2(&v7, sel__gkResetContents);
  v2 = [a1 viewControllers];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [a1 popToRootViewControllerAnimated:0];
    v5 = [a1 viewControllers];
    v6 = [v5 objectAtIndex:0];

    [v6 _gkResetContents];
  }
}

- (id)_gkUpdateContentsWithCompletionHandlerAndError:()GKAdditions
{
  v2.receiver = a1;
  v2.super_class = &off_2861B9F48;
  return objc_msgSendSuper2(&v2, sel__gkUpdateContentsWithCompletionHandlerAndError_);
}

- (void)_gkForceNextContentUpdate
{
  v8.receiver = a1;
  v8.super_class = &off_2861B9F48;
  objc_msgSendSuper2(&v8, sel__gkForceNextContentUpdate);
  v2 = [a1 viewControllers];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [a1 viewControllers];
    v5 = [v4 objectAtIndex:0];

    v6 = [a1 topViewController];

    if (v5 == v6)
    {
      [v5 _gkForceNextContentUpdate];
    }

    v7 = [a1 topViewController];
    [v7 _gkForceNextContentUpdate];
  }
}

- (void)_gkHandleURLPathComponents:()GKAdditions query:
{
  v11 = a3;
  v6 = a4;
  v7 = [a1 viewControllers];
  if ([v7 count])
  {
    v8 = [a1 viewControllers];
    v9 = [v8 objectAtIndex:0];
  }

  else
  {
    v9 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [a1 popToRootViewControllerAnimated:0];
    [v9 _gkHandleURLPathComponents:v11 query:v6];
  }
}

- (void)_gkRefreshContentsForDataType:()GKAdditions userInfo:
{
  v6 = a4;
  v7 = [a1 topViewController];
  [v7 _gkRefreshContentsForDataType:a3 userInfo:v6];
}

- (uint64_t)_gkShouldRefreshContentsForDataType:()GKAdditions userInfo:
{
  v6 = a4;
  v7 = [a1 topViewController];
  v8 = [v7 _gkShouldRefreshContentsForDataType:a3 userInfo:v6];

  return v8;
}

- (void)makeNavigationBarBackgroundTranslucent
{
  v2 = [a1 topViewController];
  v3 = [v2 navigationItem];
  [v3 _setAutoScrollEdgeTransitionDistance:40.0];

  v5 = [a1 topViewController];
  v4 = [v5 navigationItem];
  [v4 _setManualScrollEdgeAppearanceEnabled:1];
}

@end