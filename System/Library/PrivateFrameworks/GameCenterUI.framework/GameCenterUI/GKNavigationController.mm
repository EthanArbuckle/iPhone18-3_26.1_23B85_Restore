@interface GKNavigationController
+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
- (BOOL)hasEmbeddedPopoverNavigationStack;
- (BOOL)shouldAutorotate;
- (GKNavigationController)init;
- (GKNavigationController)initWithCoder:(id)a3;
- (GKNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (GKNavigationController)initWithRootViewController:(id)a3;
- (id)_gkViewControllersForRestoringPopover;
- (id)popEmbeddedPopoverViewControllers;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (id)targetViewControllerForAction:(SEL)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_deferTransitionOfType:(int)a3 withViewController:(id)a4 animated:(BOOL)a5;
- (void)_gkPushPresentedViewControllerForCompactSizeClass:(id)a3;
- (void)_gkRestorePopoverWithViewControllers:(id)a3 completion:(id)a4;
- (void)_performDeferredTransition;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setupGKNavigationController;
- (void)willShowViewController:(id)a3 animated:(BOOL)a4;
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

- (GKNavigationController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GKNavigationController;
  v3 = [(GKNavigationController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(GKNavigationController *)v3 setupGKNavigationController];
  }

  return v4;
}

- (GKNavigationController)initWithRootViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = GKNavigationController;
  v3 = [(GKNavigationController *)&v6 initWithRootViewController:a3];
  v4 = v3;
  if (v3)
  {
    [(GKNavigationController *)v3 setupGKNavigationController];
  }

  return v4;
}

- (GKNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = GKNavigationController;
  v4 = [(GKNavigationController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(GKNavigationController *)v4 setupGKNavigationController];
  }

  return v5;
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v4 = objc_alloc_init(a1);

  return v4;
}

- (void)setupGKNavigationController
{
  v3 = [(GKNavigationController *)self navigationBar];
  v4 = [v3 delegate];

  if (v4 != self)
  {
    v5 = [(GKNavigationController *)self navigationBar];
    [v5 setDelegate:self];
  }

  v6 = [MEMORY[0x277CBEB18] array];
  [(GKNavigationController *)self setDeferredTransitions:v6];

  [(GKNavigationController *)self setRestorationClass:objc_opt_class()];

  [(GKNavigationController *)self _setClipUnderlapWhileTransitioning:1];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(GKNavigationController *)self traitCollection];
  if ([v3 userInterfaceIdiom] || (*MEMORY[0x277D0C258] & 1) != 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10)
  {

    return 2;
  }

  v11 = [MEMORY[0x277D759A0] mainScreen];
  [v11 bounds];
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

  v4 = [(GKNavigationController *)self topViewController];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 supportedInterfaceOrientations];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = GKNavigationController;
    v6 = [(GKNavigationController *)&v17 supportedInterfaceOrientations];
  }

  v7 = v6;

  return v7;
}

- (BOOL)shouldAutorotate
{
  v3 = [(GKNavigationController *)self traitCollection];
  if ([v3 userInterfaceIdiom] || (*MEMORY[0x277D0C258] & 1) != 0)
  {
    goto LABEL_3;
  }

  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {

    return 0;
  }

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
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
  v2 = [(GKNavigationController *)self viewControllers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
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
          v7 = [v6 _gkSourcePresentingViewController];

          if (v7)
          {
LABEL_13:
            LOBYTE(v3) = 1;
            goto LABEL_14;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(GKNavigationController *)self viewControllers];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
      objc_enumerationMutation(v3);
    }

    v10 = *(*(&v24 + 1) + 8 * v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 popEmbeddedPopoverViewControllers];
      if (v11)
      {
        v22 = v11;
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    v12 = [v10 _gkSourcePresentingViewController];

    if (v12)
    {
      break;
    }

LABEL_10:
    ++v9;
    if (v5 == ++v8)
    {
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }
  }

  v13 = [(GKNavigationController *)self viewControllers];
  v14 = [v13 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v16 = [(GKNavigationController *)self viewControllers];
  v17 = [v16 count] - (isKindOfClass & 1) - v9;

  if (v17 < 1)
  {
    goto LABEL_16;
  }

  v18 = [(GKNavigationController *)self viewControllers];
  v22 = [v18 subarrayWithRange:{v9, v17}];

  if (v9)
  {
    v19 = [(GKNavigationController *)self viewControllers];
    v20 = [v19 objectAtIndexedSubscript:v9 - 1];
    v21 = [(GKNavigationController *)self popToViewController:v20 animated:0];
  }

LABEL_17:

  return v22;
}

- (void)_gkPushPresentedViewControllerForCompactSizeClass:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 viewControllers];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          [(GKNavigationController *)self pushViewController:*(*(&v10 + 1) + 8 * v9++) animated:0];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)_gkViewControllersForRestoringPopover
{
  if ([(GKNavigationController *)self hasEmbeddedPopoverNavigationStack])
  {
    v3 = [(GKNavigationController *)self popEmbeddedPopoverViewControllers];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_gkRestorePopoverWithViewControllers:(id)a3 completion:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v8)
  {
    v6 = [v8 firstObject];
    v7 = [v6 _gkSourcePresentingViewController];

    if (v7)
    {
      [v7 _gkRestorePopoverWithViewControllers:v8 completion:v5];
    }
  }
}

- (id)targetViewControllerForAction:(SEL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(GKNavigationController *)self viewControllers];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v13 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 targetViewControllerForAction:a3];
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

    v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v6);
LABEL_13:
  v11 = 0;
LABEL_14:

  return v11;
}

- (void)willShowViewController:(id)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = GKNavigationController;
  [(GKNavigationController *)&v4 willShowViewController:a3 animated:a4];
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = GKNavigationController;
  [(GKNavigationController *)&v5 didShowViewController:a3 animated:a4];
  [(GKNavigationController *)self _performDeferredTransition];
}

- (void)_performDeferredTransition
{
  v12 = [(GKNavigationController *)self deferredTransitions];
  if ([v12 count])
  {
    v3 = [(GKNavigationController *)self _isTransitioning];

    if (v3)
    {
      return;
    }

    v4 = [(GKNavigationController *)self deferredTransitions];
    v5 = [v4 lastObject];

    v6 = [(GKNavigationController *)self deferredTransitions];
    [v6 removeObject:v5];

    v7 = [v5 type];
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        if (v7 == 3)
        {
          v8 = [v5 viewController];
          v13.receiver = self;
          v13.super_class = GKNavigationController;
          -[GKNavigationController pushViewController:animated:](&v13, sel_pushViewController_animated_, v8, [v5 animated]);
          goto LABEL_13;
        }

LABEL_17:

        return;
      }

      v14.receiver = self;
      v14.super_class = GKNavigationController;
      v10 = -[GKNavigationController popToRootViewControllerAnimated:](&v14, sel_popToRootViewControllerAnimated_, [v5 animated]);
    }

    else
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v8 = [v5 viewController];
          v15.receiver = self;
          v15.super_class = GKNavigationController;
          v9 = -[GKNavigationController popToViewController:animated:](&v15, sel_popToViewController_animated_, v8, [v5 animated]);
LABEL_13:

          goto LABEL_17;
        }

        goto LABEL_17;
      }

      v16.receiver = self;
      v16.super_class = GKNavigationController;
      v10 = -[GKNavigationController popViewControllerAnimated:](&v16, sel_popViewControllerAnimated_, [v5 animated]);
    }

    v11 = v10;
    goto LABEL_17;
  }
}

- (void)_deferTransitionOfType:(int)a3 withViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = *&a3;
  v8 = a4;
  v10 = objc_opt_new();
  [v10 setViewController:v8];

  [v10 setType:v6];
  [v10 setAnimated:v5];
  v9 = [(GKNavigationController *)self deferredTransitions];
  [v9 addObject:v10];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(GKNavigationController *)self _isTransitioning])
  {
    [(GKNavigationController *)self _deferTransitionOfType:0 withViewController:0 animated:v3];
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
    v8 = [(GKNavigationController *)&v10 popViewControllerAnimated:v3];
  }

  return v8;
}

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(GKNavigationController *)self _isTransitioning])
  {
    [(GKNavigationController *)self _deferTransitionOfType:1 withViewController:v6 animated:v4];

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
    v10 = [(GKNavigationController *)&v12 popToViewController:v6 animated:v4];
  }

  return v10;
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(GKNavigationController *)self _isTransitioning])
  {
    [(GKNavigationController *)self _deferTransitionOfType:2 withViewController:0 animated:v3];
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
    v8 = [(GKNavigationController *)&v10 popToRootViewControllerAnimated:v3];
  }

  return v8;
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(GKNavigationController *)self _isTransitioning])
  {
    [(GKNavigationController *)self _deferTransitionOfType:3 withViewController:v6 animated:v4];

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
    [(GKNavigationController *)&v10 pushViewController:v6 animated:v4];
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