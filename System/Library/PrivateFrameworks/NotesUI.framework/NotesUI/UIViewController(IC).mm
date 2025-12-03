@interface UIViewController(IC)
+ (uint64_t)ic_isPerformingNotesActivity;
+ (void)ic_enableUIViewAnimations:()IC forBlock:;
+ (void)ic_performNotesActivity:()IC;
- (BOOL)ic_isBeingRevealedFromPoppingViewController;
- (BOOL)ic_isViewVisible;
- (double)ic_safeAreaDistanceFromBottom;
- (double)ic_safeAreaDistanceFromTop;
- (id)ic_embedInNavigationControllerForModalPresentation;
- (id)ic_rootNavigationController;
- (id)ic_safeAreaLayoutGuide;
- (id)ic_topViewController;
- (id)ic_viewControllerManager;
- (id)ic_window;
- (id)ic_windowScene;
- (uint64_t)ic_behavior;
- (uint64_t)ic_isRTL;
- (void)ic_dismissPresentedViewControllerAnimated:()IC completion:;
- (void)ic_dismissViewControllerOfClass:()IC animated:completion:;
- (void)ic_performBlockAfterActiveTransition:()IC;
- (void)ic_replacePresentedViewControllerWithViewController:()IC animated:completion:;
- (void)ic_showSingleButtonAlertWithTitle:()IC message:handler:;
- (void)ic_showViewController:()IC animated:sender:;
@end

@implementation UIViewController(IC)

- (id)ic_safeAreaLayoutGuide
{
  view = [self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];

  return safeAreaLayoutGuide;
}

- (BOOL)ic_isViewVisible
{
  viewIfLoaded = [self viewIfLoaded];
  window = [viewIfLoaded window];
  if (window)
  {
    v4 = [self _appearState] != 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)ic_safeAreaDistanceFromTop
{
  ic_safeAreaLayoutGuide = [self ic_safeAreaLayoutGuide];
  [ic_safeAreaLayoutGuide layoutFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;

  return CGRectGetMinY(*&v10);
}

- (double)ic_safeAreaDistanceFromBottom
{
  ic_safeAreaLayoutGuide = [self ic_safeAreaLayoutGuide];
  [ic_safeAreaLayoutGuide layoutFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  view = [self view];
  [view bounds];
  MaxY = CGRectGetMaxY(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v13 = MaxY - CGRectGetMaxY(v16);

  return v13;
}

- (uint64_t)ic_behavior
{
  traitCollection = [self traitCollection];
  ic_behavior = [traitCollection ic_behavior];

  return ic_behavior;
}

- (id)ic_windowScene
{
  view = [self view];
  ic_windowScene = [view ic_windowScene];

  return ic_windowScene;
}

- (id)ic_viewControllerManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  v4 = MEMORY[0x1E69E9820];
  performBlockOnMainThreadAndWait();
  v1 = v7[5];
  if (v1)
  {
    ic_viewControllerManager = [v1 ic_viewControllerManager];
  }

  else
  {
    ic_viewControllerManager = 0;
  }

  _Block_object_dispose(&v6, 8);

  return ic_viewControllerManager;
}

- (uint64_t)ic_isRTL
{
  view = [self view];
  ic_isRTL = [view ic_isRTL];

  return ic_isRTL;
}

+ (void)ic_enableUIViewAnimations:()IC forBlock:
{
  v7 = a4;
  areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  if (areAnimationsEnabled == a3)
  {
    v7[2]();
  }

  else
  {
    v6 = areAnimationsEnabled;
    [MEMORY[0x1E69DD250] setAnimationsEnabled:a3];
    v7[2]();
    [MEMORY[0x1E69DD250] setAnimationsEnabled:v6];
  }
}

+ (void)ic_performNotesActivity:()IC
{
  v7 = a3;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [threadDictionary objectForKey:@"ICIsPerformingNotesActivity"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7[2]();
  }

  else
  {
    [threadDictionary setObject:MEMORY[0x1E695E118] forKey:@"ICIsPerformingNotesActivity"];
    v7[2]();
    [threadDictionary removeObjectForKey:@"ICIsPerformingNotesActivity"];
  }
}

+ (uint64_t)ic_isPerformingNotesActivity
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v2 = [threadDictionary objectForKey:@"ICIsPerformingNotesActivity"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)ic_showViewController:()IC animated:sender:
{
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_class();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__UIViewController_IC__ic_showViewController_animated_sender___block_invoke;
  v13[3] = &unk_1E8468D98;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 ic_enableUIViewAnimations:a4 forBlock:v13];
}

- (void)ic_showSingleButtonAlertWithTitle:()IC message:handler:
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  if ([v18 length] < 0xC9)
  {
    v13 = v18;
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v18 substringToIndex:200];
    v12 = [v10 stringWithFormat:@"%@…", v11];

    v13 = v12;
  }

  v19 = v13;
  v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v8 preferredStyle:1];
  v15 = MEMORY[0x1E69DC648];
  v16 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  v17 = [v15 actionWithTitle:v16 style:0 handler:v9];

  [v14 addAction:v17];
  [self presentViewController:v14 animated:1 completion:0];
}

- (id)ic_topViewController
{
  selfCopy = self;
  presentedViewController = [selfCopy presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [selfCopy presentedViewController];

      v3PresentedViewController = [presentedViewController2 presentedViewController];

      selfCopy = presentedViewController2;
    }

    while (v3PresentedViewController);
  }

  else
  {
    presentedViewController2 = selfCopy;
  }

  return presentedViewController2;
}

- (id)ic_embedInNavigationControllerForModalPresentation
{
  v1 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self];
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  [v1 setModalPresentationStyle:v2];

  return v1;
}

- (id)ic_rootNavigationController
{
  navigationController = [self navigationController];
  v1NavigationController = [navigationController navigationController];

  if (v1NavigationController)
  {
    do
    {
      v1NavigationController2 = [navigationController navigationController];

      v3NavigationController = [v1NavigationController2 navigationController];

      navigationController = v1NavigationController2;
    }

    while (v3NavigationController);
  }

  else
  {
    v1NavigationController2 = navigationController;
  }

  return v1NavigationController2;
}

- (id)ic_window
{
  view = [self view];
  ic_window = [view ic_window];

  return ic_window;
}

- (BOOL)ic_isBeingRevealedFromPoppingViewController
{
  navigationController = [self navigationController];
  transitionCoordinator = [navigationController transitionCoordinator];

  v4 = [transitionCoordinator viewControllerForKey:*MEMORY[0x1E69DE768]];
  if (v4)
  {
    navigationController2 = [self navigationController];
    viewControllers = [navigationController2 viewControllers];
    v7 = [viewControllers containsObject:v4];
  }

  else
  {
    v7 = 1;
  }

  navigationController3 = [self navigationController];
  topViewController = [navigationController3 topViewController];

  presentedViewController = [self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 1;
  }

  else
  {
    presentedViewController2 = [self presentedViewController];
    if ([presentedViewController2 modalPresentationStyle] == 7)
    {
      v11 = 1;
    }

    else
    {
      presentedViewController3 = [self presentedViewController];
      v11 = [presentedViewController3 modalPresentationStyle] == 1;
    }
  }

  if ((topViewController != self) | v7 & 1)
  {
    v14 = 0;
  }

  else
  {
    presentedViewController4 = [self presentedViewController];
    v14 = presentedViewController4 == 0 || v11;
  }

  return v14;
}

- (void)ic_dismissViewControllerOfClass:()IC animated:completion:
{
  v8 = a5;
  isKindOfClass = objc_opt_isKindOfClass();
  childViewControllers = [self childViewControllers];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__UIViewController_IC__ic_dismissViewControllerOfClass_animated_completion___block_invoke;
  v12[3] = &__block_descriptor_40_e33_B32__0__UIViewController_8Q16_B24lu32l8;
  v12[4] = a3;
  v11 = [childViewControllers ic_containsObjectPassingTest:v12];

  if ((isKindOfClass & 1) != 0 || v11)
  {
    [self dismissViewControllerAnimated:a4 completion:v8];
  }
}

- (void)ic_dismissPresentedViewControllerAnimated:()IC completion:
{
  v7 = a4;
  presentedViewController = [self presentedViewController];

  if (presentedViewController)
  {
    [self dismissViewControllerAnimated:a3 completion:v7];
  }

  else
  {
    v7[2]();
  }
}

- (void)ic_replacePresentedViewControllerWithViewController:()IC animated:completion:
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__UIViewController_IC__ic_replacePresentedViewControllerWithViewController_animated_completion___block_invoke;
  v12[3] = &unk_1E8469DC0;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [self ic_dismissPresentedViewControllerAnimated:a4 completion:v12];
}

- (void)ic_performBlockAfterActiveTransition:()IC
{
  v4 = a3;
  transitionCoordinator = [self transitionCoordinator];

  if (transitionCoordinator)
  {
    transitionCoordinator2 = [self transitionCoordinator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__UIViewController_IC__ic_performBlockAfterActiveTransition___block_invoke;
    v7[3] = &unk_1E8469DE8;
    v8 = v4;
    [transitionCoordinator2 animateAlongsideTransition:0 completion:v7];
  }

  else
  {
    v4[2](v4);
  }
}

@end