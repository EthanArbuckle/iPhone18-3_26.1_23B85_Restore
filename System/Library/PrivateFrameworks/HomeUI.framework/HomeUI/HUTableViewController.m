@interface HUTableViewController
- (HUTableViewController)initWithCoder:(id)a3;
- (HUTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HUTableViewController)initWithStyle:(int64_t)a3;
- (void)contentSizeCategoryDidChange;
- (void)didUpdateRequiredHeightForCell:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setSectionContentInsetFollowsLayoutMargins:(BOOL)a3;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HUTableViewController

- (HUTableViewController)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = HUTableViewController;
  v3 = [(HUTableViewController *)&v7 initWithStyle:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    installedChildViewControllersKeyedByCell = v3->_installedChildViewControllersKeyedByCell;
    v3->_installedChildViewControllersKeyedByCell = v4;

    v3->_sectionContentInsetFollowsLayoutMargins = 1;
  }

  return v3;
}

- (HUTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithStyle_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUTableViewController.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUTableViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HUTableViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithStyle_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUTableViewController.m" lineNumber:47 description:{@"%s is unavailable; use %@ instead", "-[HUTableViewController initWithCoder:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HUTableViewController;
  [(HUTableViewController *)&v12 viewDidLoad];
  v3 = [MEMORY[0x277D756E0] cellConfiguration];
  v4 = [(HUTableViewController *)self traitCollection];
  [v3 _minimumHeightForTraitCollection:v4];
  v6 = v5;
  v7 = [(HUTableViewController *)self tableView];
  [v7 setEstimatedRowHeight:v6];

  v8 = *MEMORY[0x277D76F30];
  v9 = [(HUTableViewController *)self tableView];
  [v9 setRowHeight:v8];

  v10 = [(HUTableViewController *)self tableView];
  [v10 setKeyboardDismissMode:1];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:self selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
}

- (void)contentSizeCategoryDidChange
{
  v2 = [(HUTableViewController *)self tableView];
  [v2 setNeedsLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HUTableViewController;
  [(HUTableViewController *)&v18 viewWillAppear:?];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: viewWillAppear", buf, 0xCu);
  }

  [(HUTableViewController *)self setChildViewControllersAtViewWillDisappearTime:0];
  v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [(HUTableViewController *)self setChildViewControllersAtViewWillAppearTime:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(HUTableViewController *)self childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [(HUTableViewController *)self childViewControllersAtViewWillAppearTime];
        [v13 addObject:v12];

        [v12 beginAppearanceTransition:1 animated:v3];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HUTableViewController;
  [(HUTableViewController *)&v16 viewDidAppear:a3];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(HUTableViewController *)self childViewControllersAtViewWillAppearTime];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) endAppearanceTransition];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HUTableViewController;
  [(HUTableViewController *)&v18 viewWillDisappear:?];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: viewWillDisappear", buf, 0xCu);
  }

  [(HUTableViewController *)self setChildViewControllersAtViewWillAppearTime:0];
  v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [(HUTableViewController *)self setChildViewControllersAtViewWillDisappearTime:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(HUTableViewController *)self childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [(HUTableViewController *)self childViewControllersAtViewWillDisappearTime];
        [v13 addObject:v12];

        [v12 beginAppearanceTransition:0 animated:v3];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HUTableViewController;
  [(HUTableViewController *)&v16 viewDidDisappear:a3];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(HUTableViewController *)self childViewControllersAtViewWillDisappearTime];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) endAppearanceTransition];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUTableViewController;
  [(HUTableViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(HUTableViewController *)self sectionContentInsetFollowsLayoutMargins];
  v4 = [(HUTableViewController *)self tableView];
  [v4 _setSectionContentInsetFollowsLayoutMargins:v3];

  [(HUTableViewController *)self setViewLayingOut:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUTableViewController;
  [(HUTableViewController *)&v3 viewDidLayoutSubviews];
  [(HUTableViewController *)self setViewLayingOut:0];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(HUTableViewController *)self isViewLayingOut])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
    v6 = [v5 keyEnumerator];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) viewController];
          v12 = [v11 isEqual:v4];

          if (v12)
          {
            v13 = [(HUTableViewController *)self tableView];
            [v13 reloadData];

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)setSectionContentInsetFollowsLayoutMargins:(BOOL)a3
{
  if (self->_sectionContentInsetFollowsLayoutMargins != a3)
  {
    self->_sectionContentInsetFollowsLayoutMargins = a3;
    v4 = [(HUTableViewController *)self tableView];
    [v4 setNeedsLayout];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 viewController];
    if (v8)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
      v10 = [v9 copy];

      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v23 = v6;
        obj = v10;
        v13 = 0;
        v14 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            v17 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
            v18 = [v17 objectForKey:v16];

            if (v18 == v8 && v16 != v7)
            {
              v20 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
              [v20 removeObjectForKey:v16];

              [v16 setViewController:0];
              v13 = 1;
            }
          }

          v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v12);

        v6 = v23;
        if (v13)
        {
          [v7 addToParentViewController:self];
          v21 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
          [v21 setObject:v8 forKey:v7];

          goto LABEL_19;
        }
      }

      else
      {
      }

      [v8 beginAppearanceTransition:1 animated:0];
      [v7 addToParentViewController:self];
      v22 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
      [v22 setObject:v8 forKey:v7];

      [v8 endAppearanceTransition];
    }

LABEL_19:
  }
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v15 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v15;
  if (isKindOfClass)
  {
    v8 = v15;
    v9 = [v8 viewController];
    v10 = [v9 parentViewController];
    v11 = v10;
    if (v10 == self)
    {
      v12 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
      v13 = [v12 objectForKey:v8];

      if (v13 == v9)
      {
        [v9 beginAppearanceTransition:0 animated:0];
        [v8 removeFromParentViewController];
        v14 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
        [v14 removeObjectForKey:v8];

        [v9 endAppearanceTransition];
      }
    }

    else
    {
    }

    v7 = v15;
  }
}

- (void)didUpdateRequiredHeightForCell:(id)a3
{
  if (![(HUTableViewController *)self isViewLayingOut])
  {
    v4 = [(HUTableViewController *)self tableView];
    [v4 beginUpdates];

    v5 = [(HUTableViewController *)self tableView];
    [v5 endUpdates];
  }
}

@end