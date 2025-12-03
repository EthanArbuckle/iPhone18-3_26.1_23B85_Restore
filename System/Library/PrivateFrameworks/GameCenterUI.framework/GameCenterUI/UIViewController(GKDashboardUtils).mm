@interface UIViewController(GKDashboardUtils)
- (id)_gkExtensionViewController;
- (id)_gkOriginatingViewController;
- (id)_gkOriginatingViewControllerAutoDetermined;
- (void)_gkDismissViewController:()GKDashboardUtils animated:;
- (void)_gkModifyTopConstraintToLayoutGuideForSubview:()GKDashboardUtils;
- (void)_gkPopViewControllerAnimated:()GKDashboardUtils;
- (void)_gkPresentViewController:()GKDashboardUtils animated:;
- (void)_gkPresentViewController:()GKDashboardUtils asPopoverFromView:animated:;
- (void)_gkPushViewController:()GKDashboardUtils replaceCurrent:animated:;
- (void)_gkRemoveViewController:()GKDashboardUtils animated:;
- (void)_gkShowViewController:()GKDashboardUtils;
@end

@implementation UIViewController(GKDashboardUtils)

- (id)_gkExtensionViewController
{
  if ([objc_opt_class() conformsToProtocol:&unk_2861D4B40])
  {
    selfCopy = self;
    if (selfCopy)
    {
LABEL_3:
      v3 = selfCopy;
      goto LABEL_18;
    }
  }

  else
  {
    navigationController = [self navigationController];
    parentViewController = [navigationController parentViewController];

    if ([objc_opt_class() conformsToProtocol:&unk_2861D4B40])
    {
      selfCopy = parentViewController;
    }

    else
    {
      parentViewController2 = [self parentViewController];
      navigationController2 = [parentViewController2 navigationController];
      parentViewController3 = [navigationController2 parentViewController];

      if ([objc_opt_class() conformsToProtocol:&unk_2861D4B40])
      {
        selfCopy = parentViewController3;
      }

      else
      {
        selfCopy = 0;
      }
    }

    if (selfCopy)
    {
      goto LABEL_3;
    }
  }

  extensionContext = [self extensionContext];
  v10 = extensionContext;
  if (extensionContext)
  {
    _principalObject = [extensionContext _principalObject];
    if ([objc_opt_class() conformsToProtocol:&unk_2861D4B40])
    {
      v12 = _principalObject;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v3 = v12;

LABEL_18:

  return v3;
}

- (void)_gkModifyTopConstraintToLayoutGuideForSubview:()GKDashboardUtils
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  view = [self view];
  constraints = [view constraints];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = constraints;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        firstItem = [v12 firstItem];
        v14 = firstItem;
        if (firstItem == v4)
        {
          firstAttribute = [v12 firstAttribute];

          if (firstAttribute == 3)
          {
            topAnchor = [v4 topAnchor];
            view2 = [self view];
            safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
            bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
            [v12 constant];
            v20 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];

            view3 = [self view];
            [view3 removeConstraint:v12];

            view4 = [self view];
            [view4 addConstraint:v20];

            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_gkShowViewController:()GKDashboardUtils
{
  v4 = a3;
  [self showViewController:v4 sender:self];
  [v4 _gkSetOriginatingViewController:self];
}

- (void)_gkRemoveViewController:()GKDashboardUtils animated:
{
  v14 = a3;
  [v14 _gkSetOriginatingViewController:0];
  navigationController = [v14 navigationController];
  viewControllers = [navigationController viewControllers];
  v7 = [viewControllers indexOfObject:v14];

  v8 = v7 - 1;
  if ((v7 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    presentingViewController = [v14 presentingViewController];
    [presentingViewController dismissViewControllerAnimated:a4 completion:0];
  }

  else
  {
    navigationController2 = [v14 navigationController];
    viewControllers2 = [navigationController2 viewControllers];
    presentingViewController = [viewControllers2 objectAtIndexedSubscript:v8];

    navigationController3 = [v14 navigationController];
    v13 = [navigationController3 popToViewController:presentingViewController animated:a4];
  }
}

- (id)_gkOriginatingViewController
{
  _gkOriginatingViewControllerAutoDetermined = objc_getAssociatedObject(self, @"GKOriginatingViewControllerKey");
  if (!_gkOriginatingViewControllerAutoDetermined)
  {
    _gkOriginatingViewControllerAutoDetermined = [self _gkOriginatingViewControllerAutoDetermined];
  }

  return _gkOriginatingViewControllerAutoDetermined;
}

- (id)_gkOriginatingViewControllerAutoDetermined
{
  navigationController = [self navigationController];
  viewControllers = [navigationController viewControllers];

  v4 = [viewControllers indexOfObject:self];
  v5 = v4 - 1;
  if (v4 < 1 || ([viewControllers objectAtIndex:v5], (presentingViewController = objc_claimAutoreleasedReturnValue()) == 0))
  {
    presentingViewController = [self presentingViewController];
  }

  return presentingViewController;
}

- (void)_gkPresentViewController:()GKDashboardUtils animated:
{
  v6 = a3;
  [self presentViewController:v6 animated:a4 completion:0];
  [v6 _gkSetOriginatingViewController:self];
}

- (void)_gkPresentViewController:()GKDashboardUtils asPopoverFromView:animated:
{
  v20 = a4;
  v8 = a3;
  if (v20)
  {
    [v8 setModalPresentationStyle:7];
    superview = [v20 superview];
    popoverPresentationController = [v8 popoverPresentationController];
    [popoverPresentationController setSourceView:superview];

    [v20 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    popoverPresentationController2 = [v8 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v12, v14, v16, v18}];

    [self presentViewController:v8 animated:a5 completion:0];
    [v8 _gkSetOriginatingViewController:self];
  }

  else
  {
    [self _gkPresentViewController:v8 animated:a5];
  }
}

- (void)_gkDismissViewController:()GKDashboardUtils animated:
{
  v5 = a3;
  presentingViewController = [v5 presentingViewController];
  [v5 _gkSetOriginatingViewController:0];

  [presentingViewController dismissViewControllerAnimated:a4 completion:0];
}

- (void)_gkPushViewController:()GKDashboardUtils replaceCurrent:animated:
{
  v13 = a3;
  navigationController = [self navigationController];
  v9 = navigationController;
  if (a4)
  {
    viewControllers = [navigationController viewControllers];
    v11 = [viewControllers mutableCopy];

    lastObject = [v11 lastObject];
    [lastObject _gkSetOriginatingViewController:0];

    [v11 removeLastObject];
    [v11 addObject:v13];
    [v9 setViewControllers:v11 animated:a5];
  }

  else
  {
    [navigationController pushViewController:v13 animated:a5];
  }

  [v13 _gkSetOriginatingViewController:self];
}

- (void)_gkPopViewControllerAnimated:()GKDashboardUtils
{
  navigationController = [self navigationController];
  topViewController = [navigationController topViewController];
  [topViewController _gkSetOriginatingViewController:0];

  navigationController2 = [self navigationController];
  v7 = [navigationController2 popViewControllerAnimated:a3];
}

@end