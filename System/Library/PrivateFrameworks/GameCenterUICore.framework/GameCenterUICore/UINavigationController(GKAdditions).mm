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
  v7.receiver = self;
  v7.super_class = &off_2861B9F48;
  objc_msgSendSuper2(&v7, sel__gkResetContents);
  viewControllers = [self viewControllers];
  v3 = [viewControllers count];

  if (v3)
  {
    v4 = [self popToRootViewControllerAnimated:0];
    viewControllers2 = [self viewControllers];
    v6 = [viewControllers2 objectAtIndex:0];

    [v6 _gkResetContents];
  }
}

- (id)_gkUpdateContentsWithCompletionHandlerAndError:()GKAdditions
{
  v2.receiver = self;
  v2.super_class = &off_2861B9F48;
  return objc_msgSendSuper2(&v2, sel__gkUpdateContentsWithCompletionHandlerAndError_);
}

- (void)_gkForceNextContentUpdate
{
  v8.receiver = self;
  v8.super_class = &off_2861B9F48;
  objc_msgSendSuper2(&v8, sel__gkForceNextContentUpdate);
  viewControllers = [self viewControllers];
  v3 = [viewControllers count];

  if (v3)
  {
    viewControllers2 = [self viewControllers];
    v5 = [viewControllers2 objectAtIndex:0];

    topViewController = [self topViewController];

    if (v5 == topViewController)
    {
      [v5 _gkForceNextContentUpdate];
    }

    topViewController2 = [self topViewController];
    [topViewController2 _gkForceNextContentUpdate];
  }
}

- (void)_gkHandleURLPathComponents:()GKAdditions query:
{
  v11 = a3;
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
    v10 = [self popToRootViewControllerAnimated:0];
    [v9 _gkHandleURLPathComponents:v11 query:v6];
  }
}

- (void)_gkRefreshContentsForDataType:()GKAdditions userInfo:
{
  v6 = a4;
  topViewController = [self topViewController];
  [topViewController _gkRefreshContentsForDataType:a3 userInfo:v6];
}

- (uint64_t)_gkShouldRefreshContentsForDataType:()GKAdditions userInfo:
{
  v6 = a4;
  topViewController = [self topViewController];
  v8 = [topViewController _gkShouldRefreshContentsForDataType:a3 userInfo:v6];

  return v8;
}

- (void)makeNavigationBarBackgroundTranslucent
{
  topViewController = [self topViewController];
  navigationItem = [topViewController navigationItem];
  [navigationItem _setAutoScrollEdgeTransitionDistance:40.0];

  topViewController2 = [self topViewController];
  navigationItem2 = [topViewController2 navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];
}

@end