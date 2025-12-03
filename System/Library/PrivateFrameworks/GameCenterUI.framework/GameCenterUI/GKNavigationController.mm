@interface GKNavigationController
+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
- (BOOL)hasEmbeddedPopoverNavigationStack;
- (BOOL)shouldAutorotate;
- (GKNavigationController)init;
- (GKNavigationController)initWithCoder:(id)coder;
- (GKNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (GKNavigationController)initWithRootViewController:(id)controller;
- (id)_gkViewControllersForRestoringPopover;
- (id)popEmbeddedPopoverViewControllers;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (id)targetViewControllerForAction:(SEL)action;
- (unint64_t)supportedInterfaceOrientations;
- (void)_deferTransitionOfType:(int)type withViewController:(id)controller animated:(BOOL)animated;
- (void)_gkPushPresentedViewControllerForCompactSizeClass:(id)class;
- (void)_gkRestorePopoverWithViewControllers:(id)controllers completion:(id)completion;
- (void)_performDeferredTransition;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setupGKNavigationController;
- (void)willShowViewController:(id)controller animated:(BOOL)animated;
@end

@implementation GKNavigationController

- (GKNavigationController)init
{
  v5.receiver = self;
  v5.super_class = GKNavigationController;
  v2 = [(GKNavigationController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GKNavigationController *)v2 setupGKNavigationController];
  }

  return v3;
}

- (GKNavigationController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GKNavigationController;
  v3 = [(GKNavigationController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(GKNavigationController *)v3 setupGKNavigationController];
  }

  return v4;
}

- (GKNavigationController)initWithRootViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = GKNavigationController;
  v3 = [(GKNavigationController *)&v6 initWithRootViewController:controller];
  v4 = v3;
  if (v3)
  {
    [(GKNavigationController *)v3 setupGKNavigationController];
  }

  return v4;
}

- (GKNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = GKNavigationController;
  v4 = [(GKNavigationController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(GKNavigationController *)v4 setupGKNavigationController];
  }

  return v5;
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  v4 = objc_alloc_init(self);

  return v4;
}

- (void)setupGKNavigationController
{
  navigationBar = [(GKNavigationController *)self navigationBar];
  delegate = [navigationBar delegate];

  if (delegate != self)
  {
    navigationBar2 = [(GKNavigationController *)self navigationBar];
    [navigationBar2 setDelegate:self];
  }

  array = [MEMORY[0x277CBEB18] array];
  [(GKNavigationController *)self setDeferredTransitions:array];

  [(GKNavigationController *)self setRestorationClass:objc_opt_class()];

  [(GKNavigationController *)self _setClipUnderlapWhileTransitioning:1];
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(GKNavigationController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] || (*MEMORY[0x277D0C258] & 1) != 0)
  {
    goto LABEL_3;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {

    return 2;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v13 = v12;
  v15 = v14;

  if (v13 >= 414.0 && v15 >= 736.0)
  {
LABEL_3:
  }

  else
  {

    v7 = 2;
    if (v13 < 736.0 || v15 < 414.0)
    {
      return v7;
    }
  }

  topViewController = [(GKNavigationController *)self topViewController];
  v5 = topViewController;
  if (topViewController)
  {
    supportedInterfaceOrientations = [topViewController supportedInterfaceOrientations];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = GKNavigationController;
    supportedInterfaceOrientations = [(GKNavigationController *)&v17 supportedInterfaceOrientations];
  }

  v7 = supportedInterfaceOrientations;

  return v7;
}

- (BOOL)shouldAutorotate
{
  traitCollection = [(GKNavigationController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] || (*MEMORY[0x277D0C258] & 1) != 0)
  {
    goto LABEL_3;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {

    return 0;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v9 = v8;
  v11 = v10;

  if (v9 >= 414.0 && v11 >= 736.0)
  {
LABEL_3:

LABEL_4:
    v13.receiver = self;
    v13.super_class = GKNavigationController;
    return [(GKNavigationController *)&v13 shouldAutorotate];
  }

  result = 0;
  if (v9 >= 736.0 && v11 >= 414.0)
  {
    goto LABEL_4;
  }

  return result;
}

- (BOOL)hasEmbeddedPopoverNavigationStack
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewControllers = [(GKNavigationController *)self viewControllers];
  v3 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(viewControllers);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v6 hasEmbeddedPopoverNavigationStack])
          {
            goto LABEL_13;
          }
        }

        else
        {
          _gkSourcePresentingViewController = [v6 _gkSourcePresentingViewController];

          if (_gkSourcePresentingViewController)
          {
LABEL_13:
            LOBYTE(v3) = 1;
            goto LABEL_14;
          }
        }
      }

      v3 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v3;
}

- (id)popEmbeddedPopoverViewControllers
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  viewControllers = [(GKNavigationController *)self viewControllers];
  v4 = [viewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v4)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v25;
LABEL_3:
  v8 = 0;
  v9 = v6;
  v6 += v5;
  while (1)
  {
    if (*v25 != v7)
    {
      objc_enumerationMutation(viewControllers);
    }

    v10 = *(*(&v24 + 1) + 8 * v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      popEmbeddedPopoverViewControllers = [v10 popEmbeddedPopoverViewControllers];
      if (popEmbeddedPopoverViewControllers)
      {
        v22 = popEmbeddedPopoverViewControllers;
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    _gkSourcePresentingViewController = [v10 _gkSourcePresentingViewController];

    if (_gkSourcePresentingViewController)
    {
      break;
    }

LABEL_10:
    ++v9;
    if (v5 == ++v8)
    {
      v5 = [viewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }
  }

  viewControllers2 = [(GKNavigationController *)self viewControllers];
  lastObject = [viewControllers2 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  viewControllers3 = [(GKNavigationController *)self viewControllers];
  v17 = [viewControllers3 count] - (isKindOfClass & 1) - v9;

  if (v17 < 1)
  {
    goto LABEL_16;
  }

  viewControllers4 = [(GKNavigationController *)self viewControllers];
  v22 = [viewControllers4 subarrayWithRange:{v9, v17}];

  if (v9)
  {
    viewControllers5 = [(GKNavigationController *)self viewControllers];
    v20 = [viewControllers5 objectAtIndexedSubscript:v9 - 1];
    v21 = [(GKNavigationController *)self popToViewController:v20 animated:0];
  }

LABEL_17:

  return v22;
}

- (void)_gkPushPresentedViewControllerForCompactSizeClass:(id)class
{
  v15 = *MEMORY[0x277D85DE8];
  classCopy = class;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    viewControllers = [classCopy viewControllers];
    v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(viewControllers);
          }

          [(GKNavigationController *)self pushViewController:*(*(&v10 + 1) + 8 * v9++) animated:0];
        }

        while (v7 != v9);
        v7 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)_gkViewControllersForRestoringPopover
{
  if ([(GKNavigationController *)self hasEmbeddedPopoverNavigationStack])
  {
    popEmbeddedPopoverViewControllers = [(GKNavigationController *)self popEmbeddedPopoverViewControllers];
  }

  else
  {
    popEmbeddedPopoverViewControllers = 0;
  }

  return popEmbeddedPopoverViewControllers;
}

- (void)_gkRestorePopoverWithViewControllers:(id)controllers completion:(id)completion
{
  controllersCopy = controllers;
  completionCopy = completion;
  if (controllersCopy)
  {
    firstObject = [controllersCopy firstObject];
    _gkSourcePresentingViewController = [firstObject _gkSourcePresentingViewController];

    if (_gkSourcePresentingViewController)
    {
      [_gkSourcePresentingViewController _gkRestorePopoverWithViewControllers:controllersCopy completion:completionCopy];
    }
  }
}

- (id)targetViewControllerForAction:(SEL)action
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  viewControllers = [(GKNavigationController *)self viewControllers];
  v5 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = *v14;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(viewControllers);
      }

      v9 = *(*(&v13 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 targetViewControllerForAction:action];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          continue;
        }

        v10 = v9;
      }

      v11 = v10;
      if (v10)
      {
        goto LABEL_14;
      }
    }

    v6 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v6);
LABEL_13:
  v11 = 0;
LABEL_14:

  return v11;
}

- (void)willShowViewController:(id)controller animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = GKNavigationController;
  [(GKNavigationController *)&v4 willShowViewController:controller animated:animated];
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = GKNavigationController;
  [(GKNavigationController *)&v5 didShowViewController:controller animated:animated];
  [(GKNavigationController *)self _performDeferredTransition];
}

- (void)_performDeferredTransition
{
  deferredTransitions = [(GKNavigationController *)self deferredTransitions];
  if ([deferredTransitions count])
  {
    _isTransitioning = [(GKNavigationController *)self _isTransitioning];

    if (_isTransitioning)
    {
      return;
    }

    deferredTransitions2 = [(GKNavigationController *)self deferredTransitions];
    lastObject = [deferredTransitions2 lastObject];

    deferredTransitions3 = [(GKNavigationController *)self deferredTransitions];
    [deferredTransitions3 removeObject:lastObject];

    type = [lastObject type];
    if (type > 1)
    {
      if (type != 2)
      {
        if (type == 3)
        {
          viewController = [lastObject viewController];
          v13.receiver = self;
          v13.super_class = GKNavigationController;
          -[GKNavigationController pushViewController:animated:](&v13, sel_pushViewController_animated_, viewController, [lastObject animated]);
          goto LABEL_13;
        }

LABEL_17:

        return;
      }

      v14.receiver = self;
      v14.super_class = GKNavigationController;
      v10 = -[GKNavigationController popToRootViewControllerAnimated:](&v14, sel_popToRootViewControllerAnimated_, [lastObject animated]);
    }

    else
    {
      if (type)
      {
        if (type == 1)
        {
          viewController = [lastObject viewController];
          v15.receiver = self;
          v15.super_class = GKNavigationController;
          v9 = -[GKNavigationController popToViewController:animated:](&v15, sel_popToViewController_animated_, viewController, [lastObject animated]);
LABEL_13:

          goto LABEL_17;
        }

        goto LABEL_17;
      }

      v16.receiver = self;
      v16.super_class = GKNavigationController;
      v10 = -[GKNavigationController popViewControllerAnimated:](&v16, sel_popViewControllerAnimated_, [lastObject animated]);
    }

    v11 = v10;
    goto LABEL_17;
  }
}

- (void)_deferTransitionOfType:(int)type withViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = *&type;
  controllerCopy = controller;
  v10 = objc_opt_new();
  [v10 setViewController:controllerCopy];

  [v10 setType:v6];
  [v10 setAnimated:animatedCopy];
  deferredTransitions = [(GKNavigationController *)self deferredTransitions];
  [deferredTransitions addObject:v10];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(GKNavigationController *)self _isTransitioning])
  {
    [(GKNavigationController *)self _deferTransitionOfType:0 withViewController:0 animated:animatedCopy];
    v5 = MEMORY[0x277D0C2A0];
    v6 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [GKNavigationController popViewControllerAnimated:v6];
    }

    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = GKNavigationController;
    v8 = [(GKNavigationController *)&v10 popViewControllerAnimated:animatedCopy];
  }

  return v8;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([(GKNavigationController *)self _isTransitioning])
  {
    [(GKNavigationController *)self _deferTransitionOfType:1 withViewController:controllerCopy animated:animatedCopy];

    v7 = MEMORY[0x277D0C2A0];
    v8 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [GKNavigationController popToViewController:v8 animated:?];
    }

    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = GKNavigationController;
    v10 = [(GKNavigationController *)&v12 popToViewController:controllerCopy animated:animatedCopy];
  }

  return v10;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(GKNavigationController *)self _isTransitioning])
  {
    [(GKNavigationController *)self _deferTransitionOfType:2 withViewController:0 animated:animatedCopy];
    v5 = MEMORY[0x277D0C2A0];
    v6 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [GKNavigationController popToRootViewControllerAnimated:v6];
    }

    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = GKNavigationController;
    v8 = [(GKNavigationController *)&v10 popToRootViewControllerAnimated:animatedCopy];
  }

  return v8;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([(GKNavigationController *)self _isTransitioning])
  {
    [(GKNavigationController *)self _deferTransitionOfType:3 withViewController:controllerCopy animated:animatedCopy];

    v7 = MEMORY[0x277D0C2A0];
    v8 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [GKNavigationController pushViewController:v8 animated:?];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = GKNavigationController;
    [(GKNavigationController *)&v10 pushViewController:controllerCopy animated:animatedCopy];
  }
}

- (void)popViewControllerAnimated:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_2() callStackSymbols];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_24DE53000, v4, v5, "Deferring popViewController:animated:\n%@", v6, v7, v8, v9, v10);
}

- (void)popToViewController:(void *)a1 animated:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_2() callStackSymbols];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_24DE53000, v4, v5, "Deferring popToViewController:animated:\n%@", v6, v7, v8, v9, v10);
}

- (void)popToRootViewControllerAnimated:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_2() callStackSymbols];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_24DE53000, v4, v5, "Deferring popToRootViewControllerAnimated:\n%@", v6, v7, v8, v9, v10);
}

- (void)pushViewController:(void *)a1 animated:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_2() callStackSymbols];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_24DE53000, v4, v5, "Deferring pushViewController:animated:\n%@", v6, v7, v8, v9, v10);
}

@end