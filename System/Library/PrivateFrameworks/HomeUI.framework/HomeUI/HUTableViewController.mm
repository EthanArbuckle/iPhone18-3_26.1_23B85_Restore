@interface HUTableViewController
- (HUTableViewController)initWithCoder:(id)coder;
- (HUTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HUTableViewController)initWithStyle:(int64_t)style;
- (void)contentSizeCategoryDidChange;
- (void)didUpdateRequiredHeightForCell:(id)cell;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setSectionContentInsetFollowsLayoutMargins:(BOOL)margins;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation HUTableViewController

- (HUTableViewController)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = HUTableViewController;
  v3 = [(HUTableViewController *)&v7 initWithStyle:style];
  if (v3)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    installedChildViewControllersKeyedByCell = v3->_installedChildViewControllersKeyedByCell;
    v3->_installedChildViewControllersKeyedByCell = weakToWeakObjectsMapTable;

    v3->_sectionContentInsetFollowsLayoutMargins = 1;
  }

  return v3;
}

- (HUTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithStyle_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTableViewController.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUTableViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HUTableViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithStyle_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTableViewController.m" lineNumber:47 description:{@"%s is unavailable; use %@ instead", "-[HUTableViewController initWithCoder:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HUTableViewController;
  [(HUTableViewController *)&v12 viewDidLoad];
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  traitCollection = [(HUTableViewController *)self traitCollection];
  [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
  v6 = v5;
  tableView = [(HUTableViewController *)self tableView];
  [tableView setEstimatedRowHeight:v6];

  v8 = *MEMORY[0x277D76F30];
  tableView2 = [(HUTableViewController *)self tableView];
  [tableView2 setRowHeight:v8];

  tableView3 = [(HUTableViewController *)self tableView];
  [tableView3 setKeyboardDismissMode:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
}

- (void)contentSizeCategoryDidChange
{
  tableView = [(HUTableViewController *)self tableView];
  [tableView setNeedsLayout];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v22 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HUTableViewController;
  [(HUTableViewController *)&v18 viewWillAppear:?];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: viewWillAppear", buf, 0xCu);
  }

  [(HUTableViewController *)self setChildViewControllersAtViewWillDisappearTime:0];
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [(HUTableViewController *)self setChildViewControllersAtViewWillAppearTime:weakObjectsHashTable];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  childViewControllers = [(HUTableViewController *)self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        childViewControllersAtViewWillAppearTime = [(HUTableViewController *)self childViewControllersAtViewWillAppearTime];
        [childViewControllersAtViewWillAppearTime addObject:v12];

        [v12 beginAppearanceTransition:1 animated:appearCopy];
        ++v11;
      }

      while (v9 != v11);
      v9 = [childViewControllers countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v22 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HUTableViewController;
  [(HUTableViewController *)&v16 viewDidAppear:appear];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllersAtViewWillAppearTime = [(HUTableViewController *)self childViewControllersAtViewWillAppearTime];
  v8 = [childViewControllersAtViewWillAppearTime countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(childViewControllersAtViewWillAppearTime);
        }

        [*(*(&v12 + 1) + 8 * v11++) endAppearanceTransition];
      }

      while (v9 != v11);
      v9 = [childViewControllersAtViewWillAppearTime countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v22 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HUTableViewController;
  [(HUTableViewController *)&v18 viewWillDisappear:?];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: viewWillDisappear", buf, 0xCu);
  }

  [(HUTableViewController *)self setChildViewControllersAtViewWillAppearTime:0];
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [(HUTableViewController *)self setChildViewControllersAtViewWillDisappearTime:weakObjectsHashTable];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  childViewControllers = [(HUTableViewController *)self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        childViewControllersAtViewWillDisappearTime = [(HUTableViewController *)self childViewControllersAtViewWillDisappearTime];
        [childViewControllersAtViewWillDisappearTime addObject:v12];

        [v12 beginAppearanceTransition:0 animated:disappearCopy];
        ++v11;
      }

      while (v9 != v11);
      v9 = [childViewControllers countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v22 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HUTableViewController;
  [(HUTableViewController *)&v16 viewDidDisappear:disappear];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllersAtViewWillDisappearTime = [(HUTableViewController *)self childViewControllersAtViewWillDisappearTime];
  v8 = [childViewControllersAtViewWillDisappearTime countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(childViewControllersAtViewWillDisappearTime);
        }

        [*(*(&v12 + 1) + 8 * v11++) endAppearanceTransition];
      }

      while (v9 != v11);
      v9 = [childViewControllersAtViewWillDisappearTime countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUTableViewController;
  [(HUTableViewController *)&v5 viewWillLayoutSubviews];
  sectionContentInsetFollowsLayoutMargins = [(HUTableViewController *)self sectionContentInsetFollowsLayoutMargins];
  tableView = [(HUTableViewController *)self tableView];
  [tableView _setSectionContentInsetFollowsLayoutMargins:sectionContentInsetFollowsLayoutMargins];

  [(HUTableViewController *)self setViewLayingOut:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUTableViewController;
  [(HUTableViewController *)&v3 viewDidLayoutSubviews];
  [(HUTableViewController *)self setViewLayingOut:0];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v19 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  if (![(HUTableViewController *)self isViewLayingOut])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    installedChildViewControllersKeyedByCell = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
    keyEnumerator = [installedChildViewControllersKeyedByCell keyEnumerator];

    v7 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          viewController = [*(*(&v14 + 1) + 8 * i) viewController];
          v12 = [viewController isEqual:containerCopy];

          if (v12)
          {
            tableView = [(HUTableViewController *)self tableView];
            [tableView reloadData];

            goto LABEL_12;
          }
        }

        v8 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setSectionContentInsetFollowsLayoutMargins:(BOOL)margins
{
  if (self->_sectionContentInsetFollowsLayoutMargins != margins)
  {
    self->_sectionContentInsetFollowsLayoutMargins = margins;
    tableView = [(HUTableViewController *)self tableView];
    [tableView setNeedsLayout];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v30 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = cellCopy;
    viewController = [v7 viewController];
    if (viewController)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      installedChildViewControllersKeyedByCell = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
      v10 = [installedChildViewControllersKeyedByCell copy];

      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v23 = cellCopy;
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
            installedChildViewControllersKeyedByCell2 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
            v18 = [installedChildViewControllersKeyedByCell2 objectForKey:v16];

            if (v18 == viewController && v16 != v7)
            {
              installedChildViewControllersKeyedByCell3 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
              [installedChildViewControllersKeyedByCell3 removeObjectForKey:v16];

              [v16 setViewController:0];
              v13 = 1;
            }
          }

          v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v12);

        cellCopy = v23;
        if (v13)
        {
          [v7 addToParentViewController:self];
          installedChildViewControllersKeyedByCell4 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
          [installedChildViewControllersKeyedByCell4 setObject:viewController forKey:v7];

          goto LABEL_19;
        }
      }

      else
      {
      }

      [viewController beginAppearanceTransition:1 animated:0];
      [v7 addToParentViewController:self];
      installedChildViewControllersKeyedByCell5 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
      [installedChildViewControllersKeyedByCell5 setObject:viewController forKey:v7];

      [viewController endAppearanceTransition];
    }

LABEL_19:
  }
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = cellCopy;
  if (isKindOfClass)
  {
    v8 = cellCopy;
    viewController = [v8 viewController];
    parentViewController = [viewController parentViewController];
    v11 = parentViewController;
    if (parentViewController == self)
    {
      installedChildViewControllersKeyedByCell = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
      v13 = [installedChildViewControllersKeyedByCell objectForKey:v8];

      if (v13 == viewController)
      {
        [viewController beginAppearanceTransition:0 animated:0];
        [v8 removeFromParentViewController];
        installedChildViewControllersKeyedByCell2 = [(HUTableViewController *)self installedChildViewControllersKeyedByCell];
        [installedChildViewControllersKeyedByCell2 removeObjectForKey:v8];

        [viewController endAppearanceTransition];
      }
    }

    else
    {
    }

    v7 = cellCopy;
  }
}

- (void)didUpdateRequiredHeightForCell:(id)cell
{
  if (![(HUTableViewController *)self isViewLayingOut])
  {
    tableView = [(HUTableViewController *)self tableView];
    [tableView beginUpdates];

    tableView2 = [(HUTableViewController *)self tableView];
    [tableView2 endUpdates];
  }
}

@end