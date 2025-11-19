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
    v2 = a1;
    if (v2)
    {
LABEL_3:
      v3 = v2;
      goto LABEL_18;
    }
  }

  else
  {
    v4 = [a1 navigationController];
    v5 = [v4 parentViewController];

    if ([objc_opt_class() conformsToProtocol:&unk_2861D4B40])
    {
      v2 = v5;
    }

    else
    {
      v6 = [a1 parentViewController];
      v7 = [v6 navigationController];
      v8 = [v7 parentViewController];

      if ([objc_opt_class() conformsToProtocol:&unk_2861D4B40])
      {
        v2 = v8;
      }

      else
      {
        v2 = 0;
      }
    }

    if (v2)
    {
      goto LABEL_3;
    }
  }

  v9 = [a1 extensionContext];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 _principalObject];
    if ([objc_opt_class() conformsToProtocol:&unk_2861D4B40])
    {
      v12 = v11;
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
  v5 = [a1 view];
  v6 = [v5 constraints];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
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
        v13 = [v12 firstItem];
        v14 = v13;
        if (v13 == v4)
        {
          v15 = [v12 firstAttribute];

          if (v15 == 3)
          {
            v16 = [v4 topAnchor];
            v17 = [a1 view];
            v18 = [v17 safeAreaLayoutGuide];
            v19 = [v18 bottomAnchor];
            [v12 constant];
            v20 = [v16 constraintEqualToAnchor:v19 constant:?];

            v21 = [a1 view];
            [v21 removeConstraint:v12];

            v22 = [a1 view];
            [v22 addConstraint:v20];

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
  [a1 showViewController:v4 sender:a1];
  [v4 _gkSetOriginatingViewController:a1];
}

- (void)_gkRemoveViewController:()GKDashboardUtils animated:
{
  v14 = a3;
  [v14 _gkSetOriginatingViewController:0];
  v5 = [v14 navigationController];
  v6 = [v5 viewControllers];
  v7 = [v6 indexOfObject:v14];

  v8 = v7 - 1;
  if ((v7 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v11 = [v14 presentingViewController];
    [v11 dismissViewControllerAnimated:a4 completion:0];
  }

  else
  {
    v9 = [v14 navigationController];
    v10 = [v9 viewControllers];
    v11 = [v10 objectAtIndexedSubscript:v8];

    v12 = [v14 navigationController];
    v13 = [v12 popToViewController:v11 animated:a4];
  }
}

- (id)_gkOriginatingViewController
{
  v2 = objc_getAssociatedObject(a1, @"GKOriginatingViewControllerKey");
  if (!v2)
  {
    v2 = [a1 _gkOriginatingViewControllerAutoDetermined];
  }

  return v2;
}

- (id)_gkOriginatingViewControllerAutoDetermined
{
  v2 = [a1 navigationController];
  v3 = [v2 viewControllers];

  v4 = [v3 indexOfObject:a1];
  v5 = v4 - 1;
  if (v4 < 1 || ([v3 objectAtIndex:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [a1 presentingViewController];
  }

  return v6;
}

- (void)_gkPresentViewController:()GKDashboardUtils animated:
{
  v6 = a3;
  [a1 presentViewController:v6 animated:a4 completion:0];
  [v6 _gkSetOriginatingViewController:a1];
}

- (void)_gkPresentViewController:()GKDashboardUtils asPopoverFromView:animated:
{
  v20 = a4;
  v8 = a3;
  if (v20)
  {
    [v8 setModalPresentationStyle:7];
    v9 = [v20 superview];
    v10 = [v8 popoverPresentationController];
    [v10 setSourceView:v9];

    [v20 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v8 popoverPresentationController];
    [v19 setSourceRect:{v12, v14, v16, v18}];

    [a1 presentViewController:v8 animated:a5 completion:0];
    [v8 _gkSetOriginatingViewController:a1];
  }

  else
  {
    [a1 _gkPresentViewController:v8 animated:a5];
  }
}

- (void)_gkDismissViewController:()GKDashboardUtils animated:
{
  v5 = a3;
  v6 = [v5 presentingViewController];
  [v5 _gkSetOriginatingViewController:0];

  [v6 dismissViewControllerAnimated:a4 completion:0];
}

- (void)_gkPushViewController:()GKDashboardUtils replaceCurrent:animated:
{
  v13 = a3;
  v8 = [a1 navigationController];
  v9 = v8;
  if (a4)
  {
    v10 = [v8 viewControllers];
    v11 = [v10 mutableCopy];

    v12 = [v11 lastObject];
    [v12 _gkSetOriginatingViewController:0];

    [v11 removeLastObject];
    [v11 addObject:v13];
    [v9 setViewControllers:v11 animated:a5];
  }

  else
  {
    [v8 pushViewController:v13 animated:a5];
  }

  [v13 _gkSetOriginatingViewController:a1];
}

- (void)_gkPopViewControllerAnimated:()GKDashboardUtils
{
  v5 = [a1 navigationController];
  v6 = [v5 topViewController];
  [v6 _gkSetOriginatingViewController:0];

  v8 = [a1 navigationController];
  v7 = [v8 popViewControllerAnimated:a3];
}

@end