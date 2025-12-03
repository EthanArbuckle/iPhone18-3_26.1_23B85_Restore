@interface HKTabBarController
- (HKTabBarController)init;
- (HKTabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (UIViewController)previousViewController;
- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)orientations;
- (void)setTabBarControlsHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation HKTabBarController

- (HKTabBarController)init
{
  v5.receiver = self;
  v5.super_class = HKTabBarController;
  v2 = [(HKTabBarController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HKTabBarController *)v2 setDelegate:v2];
  }

  return v3;
}

- (HKTabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = HKTabBarController;
  v4 = [(HKTabBarController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(HKTabBarController *)v4 setDelegate:v4];
  }

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HKTabBarController;
  [(HKTabBarController *)&v5 viewDidAppear:appear];
  selectedViewController = [(HKTabBarController *)self selectedViewController];
  [(HKTabBarController *)self setPreviousViewController:selectedViewController];
}

- (void)setTabBarControlsHidden:(BOOL)hidden animated:(BOOL)animated
{
  hiddenCopy = hidden;
  v6 = [(HKTabBarController *)self tabBar:hidden];
  view = [(HKTabBarController *)self view];
  [v6 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [view frame];
  if ((((v11 < v19) ^ hiddenCopy) & 1) == 0)
  {
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = -v15;
    if (hiddenCopy)
    {
      v24 = v15;
    }

    v26 = v24;
    v25 = MEMORY[0x1E69DD250];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __55__HKTabBarController_setTabBarControlsHidden_animated___block_invoke;
    v27[3] = &unk_1E81BA820;
    v28 = v6;
    v30 = v9;
    v31 = v11;
    v32 = v13;
    v33 = v15;
    v34 = v26;
    v29 = view;
    v35 = v20;
    v36 = v21;
    v37 = v22;
    v38 = v23;
    [v25 animateWithDuration:v27 animations:0.3];
  }
}

uint64_t __55__HKTabBarController_setTabBarControlsHidden_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = CGRectOffset(*(a1 + 48), 0.0, *(a1 + 80));
  [v2 setFrame:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
  v3 = *(a1 + 40);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 88);
  v7 = *(a1 + 112) + *(a1 + 80);

  return [v3 setFrame:{v6, v4, v5, v7}];
}

- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)orientations
{
  selectedViewController = [(HKTabBarController *)self selectedViewController];
  v4 = selectedViewController;
  if (selectedViewController)
  {
    supportedInterfaceOrientations = [selectedViewController supportedInterfaceOrientations];
  }

  else
  {
    supportedInterfaceOrientations = 2;
  }

  return supportedInterfaceOrientations;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  viewControllerCopy = viewController;
  previousViewController = [(HKTabBarController *)self previousViewController];
  v6 = [previousViewController conformsToProtocol:&unk_1F4479638];

  if (v6)
  {
    previousViewController2 = [(HKTabBarController *)self previousViewController];
    if (previousViewController2 == viewControllerCopy)
    {
    }

    else
    {
      previousViewController3 = [(HKTabBarController *)self previousViewController];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        previousViewController4 = [(HKTabBarController *)self previousViewController];
        [previousViewController4 didChangeToAnotherTab];
LABEL_7:

        goto LABEL_8;
      }
    }

    previousViewController4 = [(HKTabBarController *)self previousViewController];
    if (previousViewController4 != viewControllerCopy)
    {
      goto LABEL_7;
    }

    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      [viewControllerCopy didTapTabBarIcon];
    }
  }

LABEL_8:
  [(HKTabBarController *)self setPreviousViewController:viewControllerCopy];
}

- (UIViewController)previousViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_previousViewController);

  return WeakRetained;
}

@end