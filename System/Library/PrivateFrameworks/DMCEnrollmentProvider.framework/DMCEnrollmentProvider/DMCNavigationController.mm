@interface DMCNavigationController
- (DMCNavigationController)initWithRootViewController:(id)a3;
- (id)rootViewController;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)dmc_presentAlert:(id)a3 completion:(id)a4;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)unblockNavigationPush;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation DMCNavigationController

- (DMCNavigationController)initWithRootViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMCNavigationController;
  v3 = [(DMCNavigationController *)&v6 initWithRootViewController:a3];
  v4 = v3;
  if (v3)
  {
    [(DMCNavigationController *)v3 setModalPresentationStyle:2];
  }

  return v4;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DMCNavigationController;
  [(DMCNavigationController *)&v16 viewDidDisappear:a3];
  v4 = [(DMCNavigationController *)self presentingViewController];

  if (!v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(DMCNavigationController *)self viewControllers];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 conformsToProtocol:&unk_285A2A470])
          {
            [v10 dmc_viewControllerHasBeenDismissed];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    dismissedCompletionBlock = self->_dismissedCompletionBlock;
    if (dismissedCompletionBlock)
    {
      dismissedCompletionBlock[2]();
    }
  }
}

- (void)dmc_presentAlert:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(DMCNavigationController *)self _isTransitioning]& 1) != 0 || ([(DMCNavigationController *)self disappearingViewController], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__DMCNavigationController_dmc_presentAlert_completion___block_invoke;
    v20[3] = &unk_278EE7EA0;
    v21 = v6;
    v22 = v7;
    v9 = v6;
    [(DMCNavigationController *)self setTransitionCompletionBlock:v20];

    v10 = v21;
  }

  else
  {
    [(DMCNavigationController *)self setIsPresentingAlert:1];
    [(DMCNavigationController *)self setAlertCompletionBlock:v7];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__DMCNavigationController_dmc_presentAlert_completion___block_invoke_2;
    aBlock[3] = &unk_278EE77B8;
    aBlock[4] = self;
    v19 = v6;
    v11 = v6;
    v12 = _Block_copy(aBlock);
    v13 = [(DMCNavigationController *)self topViewController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__DMCNavigationController_dmc_presentAlert_completion___block_invoke_3;
    v16[3] = &unk_278EE7808;
    v17 = v12;
    v14 = v12;
    [v13 presentViewController:v11 animated:1 completion:v16];

    v15 = dispatch_time(0, 1000000000);
    dispatch_after(v15, MEMORY[0x277D85CD0], v14);

    v10 = v19;
  }
}

void __55__DMCNavigationController_dmc_presentAlert_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isPresentingAlert])
  {
    [*(a1 + 32) setIsPresentingAlert:0];
    v2 = [*(a1 + 32) transitionCompletionBlock];

    if (v2)
    {
      v3 = [*(a1 + 32) transitionCompletionBlock];
      v3[2](v3, *(a1 + 40));

      [*(a1 + 32) setTransitionCompletionBlock:0];
    }

    v4 = [*(a1 + 32) alertCompletionBlock];

    if (v4)
    {
      v5 = [*(a1 + 32) alertCompletionBlock];
      v5[2]();

      v6 = *(a1 + 32);

      [v6 setAlertCompletionBlock:0];
    }
  }
}

void __55__DMCNavigationController_dmc_presentAlert_completion___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DMCNavigationController_dmc_presentAlert_completion___block_invoke_4;
  block[3] = &unk_278EE7808;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(DMCNavigationController *)self isPushBlocked])
  {
    v7 = [v6 copy];
    [(DMCNavigationController *)self setPendingViewControllers:v7];

    [(DMCNavigationController *)self setPendingPushAnimated:v4];
  }

  else if ([(DMCNavigationController *)self isPresentingAlert])
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__DMCNavigationController_setViewControllers_animated___block_invoke;
    v9[3] = &unk_278EE7EC8;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    v12 = v4;
    [(DMCNavigationController *)self setTransitionCompletionBlock:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DMCNavigationController;
    [(DMCNavigationController *)&v8 setViewControllers:v6 animated:v4];
  }
}

void __55__DMCNavigationController_setViewControllers_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setViewControllers:*(a1 + 32) animated:*(a1 + 48)];
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = DMCNavigationController;
  [(DMCNavigationController *)&v10 didShowViewController:v6 animated:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__DMCNavigationController_didShowViewController_animated___block_invoke;
  v8[3] = &unk_278EE77B8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __58__DMCNavigationController_didShowViewController_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionCompletionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) transitionCompletionBlock];
    v3[2](v3, *(a1 + 40));

    v4 = *(a1 + 32);

    [v4 setTransitionCompletionBlock:0];
  }
}

- (id)rootViewController
{
  v2 = [(DMCNavigationController *)self viewControllers];
  v3 = [v2 objectAtIndexedSubscript:0];

  return v3;
}

- (void)unblockNavigationPush
{
  [(DMCNavigationController *)self setIsPushBlocked:0];
  v3 = [(DMCNavigationController *)self pendingViewControllers];

  if (v3)
  {
    v4 = [(DMCNavigationController *)self pendingViewControllers];
    [(DMCNavigationController *)self setViewControllers:v4 animated:[(DMCNavigationController *)self pendingPushAnimated]];

    [(DMCNavigationController *)self setPendingViewControllers:0];
  }
}

@end