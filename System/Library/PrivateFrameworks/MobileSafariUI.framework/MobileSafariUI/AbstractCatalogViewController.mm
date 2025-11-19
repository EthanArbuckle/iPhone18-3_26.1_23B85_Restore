@interface AbstractCatalogViewController
- (BOOL)_takeOwnershipOfViewController:(id)a3;
- (BOOL)isResponsibleForLayoutOfViewController:(id)a3;
- (UIViewController)foregroundChildViewController;
- (void)_relinquishOwnershipOfViewControllerFromCurrentParent:(id)a3;
- (void)relinquishOwnershipOfCompletionsViewControllerFromCurrentParent;
- (void)relinquishOwnershipOfStartPageViewControllerFromCurrentParent;
- (void)relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent;
- (void)setForegroundChildViewControllerNeedsUpdate;
- (void)takeOwnershipOfCompletionsViewController;
- (void)takeOwnershipOfStartPageViewController;
- (void)takeOwnershipOfUniversalSearchFirstTimeExperienceViewController;
- (void)updatePreferredContentSize;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AbstractCatalogViewController

- (void)takeOwnershipOfStartPageViewController
{
  v3 = [(AbstractCatalogViewController *)self startPageViewController];
  v4 = [(AbstractCatalogViewController *)self _takeOwnershipOfViewController:v3];

  if (v4)
  {

    [(AbstractCatalogViewController *)self didGainOwnershipOfStartPageViewController];
  }
}

- (void)setForegroundChildViewControllerNeedsUpdate
{
  v2 = [(AbstractCatalogViewController *)self viewIfLoaded];
  [v2 setNeedsLayout];
}

- (UIViewController)foregroundChildViewController
{
  v3 = [(AbstractCatalogViewController *)self completionsViewControllerIfLoaded];
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v3])
  {
    v4 = v3;
  }

  else
  {
    v5 = [(AbstractCatalogViewController *)self universalSearchFirstTimeExperienceViewController];
    if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v5])
    {
      v4 = v5;
    }

    else
    {
      v6 = [(AbstractCatalogViewController *)self startPageViewController];
      if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v6])
      {
        v4 = v6;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)updatePreferredContentSize
{
  [(AbstractCatalogViewController *)self requiredContentWidth];
  v4 = v3;
  [(AbstractCatalogViewController *)self maxContentHeight];
  v6 = v5;
  v8 = [(AbstractCatalogViewController *)self foregroundChildViewController];
  [v8 preferredContentSize];
  [(AbstractCatalogViewController *)self setPreferredContentSize:v4, fmin(v6, v7)];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AbstractCatalogViewController;
  [(AbstractCatalogViewController *)&v4 viewWillAppear:a3];
  [(AbstractCatalogViewController *)self updatePreferredContentSize];
}

- (void)viewWillLayoutSubviews
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = AbstractCatalogViewController;
  [(AbstractCatalogViewController *)&v16 viewWillLayoutSubviews];
  v3 = [(AbstractCatalogViewController *)self foregroundChildViewController];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(AbstractCatalogViewController *)self childViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = v9 != v3;
        v11 = [v9 view];
        [v11 setHidden:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)isResponsibleForLayoutOfViewController:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 parentViewController];
  v5 = v4 == self;

  return v5;
}

- (void)takeOwnershipOfCompletionsViewController
{
  v3 = [(AbstractCatalogViewController *)self completionsViewController];
  v4 = [(AbstractCatalogViewController *)self _takeOwnershipOfViewController:v3];

  if (v4)
  {

    [(AbstractCatalogViewController *)self didGainOwnershipOfCompletionsViewController];
  }
}

- (void)relinquishOwnershipOfCompletionsViewControllerFromCurrentParent
{
  v3 = [(AbstractCatalogViewController *)self completionsViewController];
  [(AbstractCatalogViewController *)self _relinquishOwnershipOfViewControllerFromCurrentParent:v3];
}

- (void)relinquishOwnershipOfStartPageViewControllerFromCurrentParent
{
  v3 = [(AbstractCatalogViewController *)self startPageViewController];
  [(AbstractCatalogViewController *)self _relinquishOwnershipOfViewControllerFromCurrentParent:v3];
}

- (void)takeOwnershipOfUniversalSearchFirstTimeExperienceViewController
{
  v3 = [(AbstractCatalogViewController *)self universalSearchFirstTimeExperienceViewController];
  v4 = [(AbstractCatalogViewController *)self _takeOwnershipOfViewController:v3];

  if (v4)
  {

    [(AbstractCatalogViewController *)self didGainOwnershipOfUniversalSearchFirstTimeExperienceViewController];
  }
}

- (void)relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent
{
  v3 = [(AbstractCatalogViewController *)self universalSearchFirstTimeExperienceViewController];
  [(AbstractCatalogViewController *)self _relinquishOwnershipOfViewControllerFromCurrentParent:v3];
}

- (BOOL)_takeOwnershipOfViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 parentViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == self))
  {
    v10 = 0;
  }

  else
  {
    v7 = [(AbstractCatalogViewController *)self view];
    [v7 layoutIfNeeded];
    v8 = MEMORY[0x277D75D18];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__AbstractCatalogViewController__takeOwnershipOfViewController___block_invoke;
    v12[3] = &unk_2781D58E8;
    v12[4] = self;
    v13 = v5;
    v14 = v7;
    v9 = v7;
    [v8 performWithoutAnimation:v12];

    v10 = 1;
  }

  return v10;
}

uint64_t __64__AbstractCatalogViewController__takeOwnershipOfViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _relinquishOwnershipOfViewControllerFromCurrentParent:*(a1 + 40)];
  [*(a1 + 32) addChildViewController:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) view];
  [v2 addSubview:v3];

  [*(a1 + 40) didMoveToParentViewController:*(a1 + 32)];
  [*(a1 + 32) setForegroundChildViewControllerNeedsUpdate];
  v4 = *(a1 + 48);

  return [v4 layoutIfNeeded];
}

- (void)_relinquishOwnershipOfViewControllerFromCurrentParent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 parentViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 parentViewController];
    if (v6)
    {
      [v4 willMoveToParentViewController:0];
      v7 = [v4 view];
      [v7 removeFromSuperview];

      [v4 removeFromParentViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 setForegroundChildViewControllerNeedsUpdate];
      }

      else
      {
        v10 = WBS_LOG_CHANNEL_PREFIXOther();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [AbstractCatalogViewController _relinquishOwnershipOfViewControllerFromCurrentParent:v10];
        }
      }
    }
  }

  else
  {
    v6 = [v4 viewIfLoaded];
    v8 = [v6 window];

    if (v8)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXOther();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(AbstractCatalogViewController *)v9 _relinquishOwnershipOfViewControllerFromCurrentParent:v4, v6];
      }

      [v6 removeFromSuperview];
    }
  }
}

- (void)_relinquishOwnershipOfViewControllerFromCurrentParent:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = 138543618;
  v7 = v3;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_215819000, v1, OS_LOG_TYPE_ERROR, "Unable to relinquish ownership of %{public}@ from %{public}@ because it is not an instance of AbstractCatalogViewController", &v6, 0x16u);
}

- (void)_relinquishOwnershipOfViewControllerFromCurrentParent:(void *)a3 .cold.2(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a3 superview];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = 138543618;
  v11 = v6;
  v12 = 2114;
  v13 = v9;
  _os_log_error_impl(&dword_215819000, v4, OS_LOG_TYPE_ERROR, "View controller %{public}@ has no parent but its view is installed in %{public}@. Removing view.", &v10, 0x16u);
}

@end