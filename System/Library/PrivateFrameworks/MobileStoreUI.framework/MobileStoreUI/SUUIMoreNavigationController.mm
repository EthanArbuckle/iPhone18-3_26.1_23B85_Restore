@interface SUUIMoreNavigationController
- (SUUIMoreNavigationControllerDelegate)storeKitDelegate;
- (id)displayedViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setDisplayedViewController:(id)a3;
@end

@implementation SUUIMoreNavigationController

- (id)displayedViewController
{
  displayedViewController = self->_displayedViewController;
  if (displayedViewController)
  {
    v3 = displayedViewController;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUIMoreNavigationController;
    v3 = [(UIMoreNavigationController *)&v5 displayedViewController];
  }

  return v3;
}

- (void)setDisplayedViewController:(id)a3
{
  v4 = a3;
  v5 = [(SUUIMoreNavigationController *)self displayedViewController];

  if (v5 != v4)
  {
    displayedViewController = self->_displayedViewController;
    self->_displayedViewController = 0;

    v4 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(UINavigationController *)v4 viewControllers];
      v8 = [v7 count];

      if (v8)
      {
LABEL_7:
        v11.receiver = self;
        v11.super_class = SUUIMoreNavigationController;
        [(UIMoreNavigationController *)&v11 setDisplayedViewController:v4];
        goto LABEL_8;
      }

      v9 = 0;
      v10 = self->_displayedViewController;
      self->_displayedViewController = v4;
      v4 = v10;
    }

    else
    {
      v9 = v4;
    }

    v4 = v9;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(UIMoreNavigationController *)self moreListController];

  if (v7 == v6)
  {
    if (self->_firstActualViewController)
    {
      displayedViewController = self->_displayedViewController;
      v13[0] = self->_firstActualViewController;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [(UINavigationController *)displayedViewController setViewControllers:v9 animated:0];

      firstActualViewController = self->_firstActualViewController;
      self->_firstActualViewController = 0;
    }

    v11 = self->_displayedViewController;
    self->_displayedViewController = 0;
  }

  v12.receiver = self;
  v12.super_class = SUUIMoreNavigationController;
  [(UIMoreNavigationController *)&v12 didShowViewController:v6 animated:v4];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 viewControllers], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, !v8))
  {
    [(SUUIMoreNavigationController *)self setDisplayedViewController:v6];
  }

  else
  {
    if (!self->_firstActualViewController && self->_displayedViewController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v6 viewControllers];
        v10 = [v9 firstObject];
        firstActualViewController = self->_firstActualViewController;
        self->_firstActualViewController = v10;
      }

      else
      {
        v12 = v6;
        v9 = self->_firstActualViewController;
        self->_firstActualViewController = v12;
      }
    }

    v13.receiver = self;
    v13.super_class = SUUIMoreNavigationController;
    [(UIMoreNavigationController *)&v13 pushViewController:v6 animated:v4];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(SUUIMoreNavigationController *)self topViewController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 supportedInterfaceOrientations];
  }

  else
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      v4 = 30;
    }

    else if (SUUIAllowsLandscapePhone())
    {
      v4 = 26;
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

- (SUUIMoreNavigationControllerDelegate)storeKitDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_storeKitDelegate);

  return WeakRetained;
}

@end