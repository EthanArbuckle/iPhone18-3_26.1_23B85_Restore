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
  viewIfLoaded = [self viewIfLoaded];
  window = [viewIfLoaded window];

  windowScene = [window windowScene];
  rootViewController = [window rootViewController];
  safari_wantsTransparentApplicationBackground = [rootViewController safari_wantsTransparentApplicationBackground];

  if (!safari_wantsTransparentApplicationBackground)
  {
    [window setBackgroundColor:0];
    goto LABEL_5;
  }

  if (AXAssistiveAccessEnabled())
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [window setBackgroundColor:systemBackgroundColor];

LABEL_5:
    v7 = 0;
    goto LABEL_9;
  }

  traitCollection = [self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [window setBackgroundColor:clearColor];

  if (userInterfaceStyle == 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

LABEL_9:
  [windowScene _setBackgroundStyle:v7];
}

- (id)safari_sheetPresentationController
{
  presentationController = [self presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = presentationController;
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

  return [self safari_isEventuallyPresentedByViewControllerClass:v2];
}

- (uint64_t)safari_isEventuallyPresentedByViewControllerClass:()MobileSafariFrameworkExtras
{
  presentingViewController = [self presentingViewController];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  presentingViewController2 = [self presentingViewController];

  if (!presentingViewController2)
  {
    return 0;
  }

  presentingViewController3 = [self presentingViewController];
  v10 = [presentingViewController3 safari_isEventuallyPresentedByViewControllerClass:a3];

  return v10;
}

- (void)safari_dismissPresentedAlert
{
  presentedViewController = [self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [presentedViewController dismissViewControllerAnimated:0 completion:0];
  }
}

- (id)_sf_viewControllerToPresentFrom
{
  selfCopy = self;
  presentedViewController = [selfCopy presentedViewController];
  if (presentedViewController)
  {
    while (1)
    {
      v3 = presentedViewController;
      if ([presentedViewController isBeingDismissed])
      {
        break;
      }

      presentedViewController = [v3 presentedViewController];
      selfCopy = v3;
      if (!presentedViewController)
      {
        selfCopy = v3;
        v3 = 0;
        break;
      }
    }
  }

  return selfCopy;
}

- (double)_sf_bottomUnsafeAreaFrame
{
  viewIfLoaded = [self viewIfLoaded];
  v2 = viewIfLoaded;
  if (viewIfLoaded)
  {
    [viewIfLoaded _sf_bottomUnsafeAreaFrame];
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
  viewIfLoaded = [self viewIfLoaded];
  v2 = viewIfLoaded;
  if (viewIfLoaded)
  {
    [viewIfLoaded _sf_bottomUnsafeAreaFrameForToolbar];
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
  _sf_viewControllerToPresentFrom = [self _sf_viewControllerToPresentFrom];
  v10 = _sf_viewControllerToPresentFrom;
  if (_sf_viewControllerToPresentFrom == self)
  {
    v11 = objc_opt_class();
    v12 = [v11 instanceMethodForSelector:sel_presentViewController_animated_completion_];
    do
    {
      v11 = [v11 superclass];
      v13 = [v11 instanceMethodForSelector:sel_presentViewController_animated_completion_];
    }

    while (v13 == v12);
    v13(self, sel_presentViewController_animated_completion_, v14, a4, v8);
  }

  else
  {
    [_sf_viewControllerToPresentFrom presentViewController:v14 animated:a4 completion:v8];
  }
}

- (void)_sf_animateAlongsideTransitionOrPerform:()MobileSafariFrameworkExtras
{
  v4 = a3;
  if (v4)
  {
    transitionCoordinator = [self transitionCoordinator];

    if (transitionCoordinator)
    {
      transitionCoordinator2 = [self transitionCoordinator];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __89__UIViewController_MobileSafariFrameworkExtras___sf_animateAlongsideTransitionOrPerform___block_invoke;
      v7[3] = &unk_1E721D838;
      v8 = v4;
      [transitionCoordinator2 animateAlongsideTransition:v7 completion:0];
    }

    else
    {
      v4[2](v4);
    }
  }
}

- (uint64_t)_sf_canEditFields
{
  if ([self _isInPopoverPresentation])
  {
    return 1;
  }

  view = [self view];
  [view bounds];
  v2 = CGRectGetHeight(v5) > 320.0;

  return v2;
}

- (uint64_t)_sf_isPresentationControllerDismissalTransitionDidEndNotification:()MobileSafariFrameworkExtras
{
  v5 = a3;
  object = [v5 object];
  if (object != self)
  {
    navigationController = [self navigationController];
    if (object != navigationController)
    {
      v7 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  userInfo = [v5 userInfo];
  v7 = [userInfo safari_BOOLForKey:*MEMORY[0x1E69DE2C0]];

  if (object != self)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

@end