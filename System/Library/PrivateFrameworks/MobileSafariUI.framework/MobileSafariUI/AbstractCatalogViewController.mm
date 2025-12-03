@interface AbstractCatalogViewController
- (BOOL)_takeOwnershipOfViewController:(id)controller;
- (BOOL)isResponsibleForLayoutOfViewController:(id)controller;
- (UIViewController)foregroundChildViewController;
- (void)_relinquishOwnershipOfViewControllerFromCurrentParent:(id)parent;
- (void)relinquishOwnershipOfCompletionsViewControllerFromCurrentParent;
- (void)relinquishOwnershipOfStartPageViewControllerFromCurrentParent;
- (void)relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent;
- (void)setForegroundChildViewControllerNeedsUpdate;
- (void)takeOwnershipOfCompletionsViewController;
- (void)takeOwnershipOfStartPageViewController;
- (void)takeOwnershipOfUniversalSearchFirstTimeExperienceViewController;
- (void)updatePreferredContentSize;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation AbstractCatalogViewController

- (void)takeOwnershipOfStartPageViewController
{
  startPageViewController = [(AbstractCatalogViewController *)self startPageViewController];
  v4 = [(AbstractCatalogViewController *)self _takeOwnershipOfViewController:startPageViewController];

  if (v4)
  {

    [(AbstractCatalogViewController *)self didGainOwnershipOfStartPageViewController];
  }
}

- (void)setForegroundChildViewControllerNeedsUpdate
{
  viewIfLoaded = [(AbstractCatalogViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (UIViewController)foregroundChildViewController
{
  completionsViewControllerIfLoaded = [(AbstractCatalogViewController *)self completionsViewControllerIfLoaded];
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:completionsViewControllerIfLoaded])
  {
    v4 = completionsViewControllerIfLoaded;
  }

  else
  {
    universalSearchFirstTimeExperienceViewController = [(AbstractCatalogViewController *)self universalSearchFirstTimeExperienceViewController];
    if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:universalSearchFirstTimeExperienceViewController])
    {
      v4 = universalSearchFirstTimeExperienceViewController;
    }

    else
    {
      startPageViewController = [(AbstractCatalogViewController *)self startPageViewController];
      if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:startPageViewController])
      {
        v4 = startPageViewController;
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
  foregroundChildViewController = [(AbstractCatalogViewController *)self foregroundChildViewController];
  [foregroundChildViewController preferredContentSize];
  [(AbstractCatalogViewController *)self setPreferredContentSize:v4, fmin(v6, v7)];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AbstractCatalogViewController;
  [(AbstractCatalogViewController *)&v4 viewWillAppear:appear];
  [(AbstractCatalogViewController *)self updatePreferredContentSize];
}

- (void)viewWillLayoutSubviews
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = AbstractCatalogViewController;
  [(AbstractCatalogViewController *)&v16 viewWillLayoutSubviews];
  foregroundChildViewController = [(AbstractCatalogViewController *)self foregroundChildViewController];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  childViewControllers = [(AbstractCatalogViewController *)self childViewControllers];
  v5 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = v9 != foregroundChildViewController;
        view = [v9 view];
        [view setHidden:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)isResponsibleForLayoutOfViewController:(id)controller
{
  if (!controller)
  {
    return 0;
  }

  parentViewController = [controller parentViewController];
  v5 = parentViewController == self;

  return v5;
}

- (void)takeOwnershipOfCompletionsViewController
{
  completionsViewController = [(AbstractCatalogViewController *)self completionsViewController];
  v4 = [(AbstractCatalogViewController *)self _takeOwnershipOfViewController:completionsViewController];

  if (v4)
  {

    [(AbstractCatalogViewController *)self didGainOwnershipOfCompletionsViewController];
  }
}

- (void)relinquishOwnershipOfCompletionsViewControllerFromCurrentParent
{
  completionsViewController = [(AbstractCatalogViewController *)self completionsViewController];
  [(AbstractCatalogViewController *)self _relinquishOwnershipOfViewControllerFromCurrentParent:completionsViewController];
}

- (void)relinquishOwnershipOfStartPageViewControllerFromCurrentParent
{
  startPageViewController = [(AbstractCatalogViewController *)self startPageViewController];
  [(AbstractCatalogViewController *)self _relinquishOwnershipOfViewControllerFromCurrentParent:startPageViewController];
}

- (void)takeOwnershipOfUniversalSearchFirstTimeExperienceViewController
{
  universalSearchFirstTimeExperienceViewController = [(AbstractCatalogViewController *)self universalSearchFirstTimeExperienceViewController];
  v4 = [(AbstractCatalogViewController *)self _takeOwnershipOfViewController:universalSearchFirstTimeExperienceViewController];

  if (v4)
  {

    [(AbstractCatalogViewController *)self didGainOwnershipOfUniversalSearchFirstTimeExperienceViewController];
  }
}

- (void)relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent
{
  universalSearchFirstTimeExperienceViewController = [(AbstractCatalogViewController *)self universalSearchFirstTimeExperienceViewController];
  [(AbstractCatalogViewController *)self _relinquishOwnershipOfViewControllerFromCurrentParent:universalSearchFirstTimeExperienceViewController];
}

- (BOOL)_takeOwnershipOfViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (!controllerCopy || ([controllerCopy parentViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == self))
  {
    v10 = 0;
  }

  else
  {
    view = [(AbstractCatalogViewController *)self view];
    [view layoutIfNeeded];
    v8 = MEMORY[0x277D75D18];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__AbstractCatalogViewController__takeOwnershipOfViewController___block_invoke;
    v12[3] = &unk_2781D58E8;
    v12[4] = self;
    v13 = v5;
    v14 = view;
    v9 = view;
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

- (void)_relinquishOwnershipOfViewControllerFromCurrentParent:(id)parent
{
  parentCopy = parent;
  v4 = parentCopy;
  if (parentCopy && ([parentCopy parentViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    parentViewController = [v4 parentViewController];
    if (parentViewController)
    {
      [v4 willMoveToParentViewController:0];
      view = [v4 view];
      [view removeFromSuperview];

      [v4 removeFromParentViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [parentViewController setForegroundChildViewControllerNeedsUpdate];
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
    parentViewController = [v4 viewIfLoaded];
    window = [parentViewController window];

    if (window)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXOther();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(AbstractCatalogViewController *)v9 _relinquishOwnershipOfViewControllerFromCurrentParent:v4, parentViewController];
      }

      [parentViewController removeFromSuperview];
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