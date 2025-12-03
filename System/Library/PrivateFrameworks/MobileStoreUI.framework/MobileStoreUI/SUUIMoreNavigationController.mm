@interface SUUIMoreNavigationController
- (SUUIMoreNavigationControllerDelegate)storeKitDelegate;
- (id)displayedViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setDisplayedViewController:(id)controller;
@end

@implementation SUUIMoreNavigationController

- (id)displayedViewController
{
  displayedViewController = self->_displayedViewController;
  if (displayedViewController)
  {
    displayedViewController = displayedViewController;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUIMoreNavigationController;
    displayedViewController = [(UIMoreNavigationController *)&v5 displayedViewController];
  }

  return displayedViewController;
}

- (void)setDisplayedViewController:(id)controller
{
  controllerCopy = controller;
  displayedViewController = [(SUUIMoreNavigationController *)self displayedViewController];

  if (displayedViewController != controllerCopy)
  {
    displayedViewController = self->_displayedViewController;
    self->_displayedViewController = 0;

    controllerCopy = controllerCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewControllers = [(UINavigationController *)controllerCopy viewControllers];
      v8 = [viewControllers count];

      if (v8)
      {
LABEL_7:
        v11.receiver = self;
        v11.super_class = SUUIMoreNavigationController;
        [(UIMoreNavigationController *)&v11 setDisplayedViewController:controllerCopy];
        goto LABEL_8;
      }

      v9 = 0;
      v10 = self->_displayedViewController;
      self->_displayedViewController = controllerCopy;
      controllerCopy = v10;
    }

    else
    {
      v9 = controllerCopy;
    }

    controllerCopy = v9;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v13[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  moreListController = [(UIMoreNavigationController *)self moreListController];

  if (moreListController == controllerCopy)
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
  [(UIMoreNavigationController *)&v12 didShowViewController:controllerCopy animated:animatedCopy];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([controllerCopy viewControllers], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, !v8))
  {
    [(SUUIMoreNavigationController *)self setDisplayedViewController:controllerCopy];
  }

  else
  {
    if (!self->_firstActualViewController && self->_displayedViewController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        viewControllers = [controllerCopy viewControllers];
        firstObject = [viewControllers firstObject];
        firstActualViewController = self->_firstActualViewController;
        self->_firstActualViewController = firstObject;
      }

      else
      {
        v12 = controllerCopy;
        viewControllers = self->_firstActualViewController;
        self->_firstActualViewController = v12;
      }
    }

    v13.receiver = self;
    v13.super_class = SUUIMoreNavigationController;
    [(UIMoreNavigationController *)&v13 pushViewController:controllerCopy animated:animatedCopy];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  topViewController = [(SUUIMoreNavigationController *)self topViewController];
  v3 = topViewController;
  if (topViewController)
  {
    supportedInterfaceOrientations = [topViewController supportedInterfaceOrientations];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      supportedInterfaceOrientations = 30;
    }

    else if (SUUIAllowsLandscapePhone())
    {
      supportedInterfaceOrientations = 26;
    }

    else
    {
      supportedInterfaceOrientations = 2;
    }
  }

  return supportedInterfaceOrientations;
}

- (SUUIMoreNavigationControllerDelegate)storeKitDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_storeKitDelegate);

  return WeakRetained;
}

@end