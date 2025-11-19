@interface UIViewController(MobileSafariFrameworkExtras)
- (double)_sf_bottomUnsafeAreaFrame;
- (double)_sf_bottomUnsafeAreaFrameForToolbar;
- (id)_sf_viewControllerToPresentFrom;
- (id)safari_sheetPresentationController;
- (uint64_t)_sf_canEditFields;
- (uint64_t)_sf_isPresentationControllerDismissalTransitionDidEndNotification:()MobileSafariFrameworkExtras;
- (uint64_t)safari_isEventuallyPresentedByViewControllerClass:()MobileSafariFrameworkExtras;
- (uint64_t)safari_isPresentedByActivityViewController;
- (void)_sf_animateAlongsideTransitionOrPerform:()MobileSafariFrameworkExtras;
- (void)_sf_presentViewControllerOnTopOfPresentedViewController:()MobileSafariFrameworkExtras animated:completion:;
- (void)safari_dismissPresentedAlert;
- (void)safari_updateApplicationBackgroundStyle;
@end

@implementation UIViewController(MobileSafariFrameworkExtras)

- (void)safari_updateApplicationBackgroundStyle
{
  v2 = [a1 viewIfLoaded];
  v11 = [v2 window];

  v3 = [v11 windowScene];
  v4 = [v11 rootViewController];
  v5 = [v4 safari_wantsTransparentApplicationBackground];

  if (!v5)
  {
    [v11 setBackgroundColor:0];
    goto LABEL_5;
  }

  if (AXAssistiveAccessEnabled())
  {
    v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v11 setBackgroundColor:v6];

LABEL_5:
    v7 = 0;
    goto LABEL_9;
  }

  v8 = [a1 traitCollection];
  v9 = [v8 userInterfaceStyle];

  v10 = [MEMORY[0x1E69DC888] clearColor];
  [v11 setBackgroundColor:v10];

  if (v9 == 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

LABEL_9:
  [v3 _setBackgroundStyle:v7];
}

- (id)safari_sheetPresentationController
{
  v1 = [a1 presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)safari_isPresentedByActivityViewController
{
  v2 = objc_opt_class();

  return [a1 safari_isEventuallyPresentedByViewControllerClass:v2];
}

- (uint64_t)safari_isEventuallyPresentedByViewControllerClass:()MobileSafariFrameworkExtras
{
  v5 = [a1 presentingViewController];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  v8 = [a1 presentingViewController];

  if (!v8)
  {
    return 0;
  }

  v9 = [a1 presentingViewController];
  v10 = [v9 safari_isEventuallyPresentedByViewControllerClass:a3];

  return v10;
}

- (void)safari_dismissPresentedAlert
{
  v1 = [a1 presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 dismissViewControllerAnimated:0 completion:0];
  }
}

- (id)_sf_viewControllerToPresentFrom
{
  v1 = a1;
  v2 = [v1 presentedViewController];
  if (v2)
  {
    while (1)
    {
      v3 = v2;
      if ([v2 isBeingDismissed])
      {
        break;
      }

      v2 = [v3 presentedViewController];
      v1 = v3;
      if (!v2)
      {
        v1 = v3;
        v3 = 0;
        break;
      }
    }
  }

  return v1;
}

- (double)_sf_bottomUnsafeAreaFrame
{
  v1 = [a1 viewIfLoaded];
  v2 = v1;
  if (v1)
  {
    [v1 _sf_bottomUnsafeAreaFrame];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
  }

  return v4;
}

- (double)_sf_bottomUnsafeAreaFrameForToolbar
{
  v1 = [a1 viewIfLoaded];
  v2 = v1;
  if (v1)
  {
    [v1 _sf_bottomUnsafeAreaFrameForToolbar];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
  }

  return v4;
}

- (void)_sf_presentViewControllerOnTopOfPresentedViewController:()MobileSafariFrameworkExtras animated:completion:
{
  v14 = a3;
  v8 = a5;
  v9 = [a1 _sf_viewControllerToPresentFrom];
  v10 = v9;
  if (v9 == a1)
  {
    v11 = objc_opt_class();
    v12 = [v11 instanceMethodForSelector:sel_presentViewController_animated_completion_];
    do
    {
      v11 = [v11 superclass];
      v13 = [v11 instanceMethodForSelector:sel_presentViewController_animated_completion_];
    }

    while (v13 == v12);
    v13(a1, sel_presentViewController_animated_completion_, v14, a4, v8);
  }

  else
  {
    [v9 presentViewController:v14 animated:a4 completion:v8];
  }
}

- (void)_sf_animateAlongsideTransitionOrPerform:()MobileSafariFrameworkExtras
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 transitionCoordinator];

    if (v5)
    {
      v6 = [a1 transitionCoordinator];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __89__UIViewController_MobileSafariFrameworkExtras___sf_animateAlongsideTransitionOrPerform___block_invoke;
      v7[3] = &unk_1E721D838;
      v8 = v4;
      [v6 animateAlongsideTransition:v7 completion:0];
    }

    else
    {
      v4[2](v4);
    }
  }
}

- (uint64_t)_sf_canEditFields
{
  if ([a1 _isInPopoverPresentation])
  {
    return 1;
  }

  v3 = [a1 view];
  [v3 bounds];
  v2 = CGRectGetHeight(v5) > 320.0;

  return v2;
}

- (uint64_t)_sf_isPresentationControllerDismissalTransitionDidEndNotification:()MobileSafariFrameworkExtras
{
  v5 = a3;
  v6 = [v5 object];
  if (v6 != a1)
  {
    v3 = [a1 navigationController];
    if (v6 != v3)
    {
      v7 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v8 = [v5 userInfo];
  v7 = [v8 safari_BOOLForKey:*MEMORY[0x1E69DE2C0]];

  if (v6 != a1)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

@end