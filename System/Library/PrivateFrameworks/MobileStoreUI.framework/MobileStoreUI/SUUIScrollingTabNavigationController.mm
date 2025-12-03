@interface SUUIScrollingTabNavigationController
- (BOOL)isShowingNavigationStackRootContent;
- (SUUINavigationStackObserver)navigationStackObserver;
- (SUUIScrollingTabNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (double)_scrollViewBottomContentInsetForViewController:(id)controller;
- (void)_observedNavigationStackDidChange;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)popToNavigationStackRootContentAnimated:(BOOL)animated withBehavior:(int64_t)behavior;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)scrollingTabBarBottomInsetAdjustmentDidChange;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SUUIScrollingTabNavigationController

- (SUUIScrollingTabNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = SUUIScrollingTabNavigationController;
  v4 = [(SUNavigationController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [(SUUIScrollingTabNavigationController *)v4 setNavigationBarClass:objc_opt_class()];
  }

  return v4;
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SUUIScrollingTabNavigationController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_2798F5D58;
  v9[4] = self;
  v10 = completionCopy;
  v8.receiver = self;
  v8.super_class = SUUIScrollingTabNavigationController;
  v7 = completionCopy;
  [(SUUIScrollingTabNavigationController *)&v8 dismissViewControllerAnimated:animatedCopy completion:v9];
}

uint64_t __81__SUUIScrollingTabNavigationController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _observedNavigationStackDidChange];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = SUUIScrollingTabNavigationController;
  [(SUUIScrollingTabNavigationController *)&v6 presentViewController:controller animated:animated completion:completion];
  [(SUUIScrollingTabNavigationController *)self _observedNavigationStackDidChange];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SUUIScrollingTabNavigationController;
  [(SUUIScrollingTabNavigationController *)&v4 viewDidAppear:appear];
  [(SUUIScrollingTabNavigationController *)self _observedNavigationStackDidChange];
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = SUUIScrollingTabNavigationController;
  [(SUUINavigationController *)&v5 didShowViewController:controller animated:animated];
  [(SUUIScrollingTabNavigationController *)self _observedNavigationStackDidChange];
}

- (double)_scrollViewBottomContentInsetForViewController:(id)controller
{
  controllerCopy = controller;
  scrollingTabBarController = [(UIViewController *)self scrollingTabBarController];
  v6 = scrollingTabBarController;
  if (scrollingTabBarController)
  {
    [scrollingTabBarController contentViewControllerBottomInsetAdjustment];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUUIScrollingTabNavigationController;
    [(SUUIScrollingTabNavigationController *)&v10 _scrollViewBottomContentInsetForViewController:controllerCopy];
  }

  v8 = v7;

  return v8;
}

- (BOOL)isShowingNavigationStackRootContent
{
  viewControllers = [(SUUIScrollingTabNavigationController *)self viewControllers];
  v4 = [viewControllers count];

  if (v4 > 1)
  {
    return 0;
  }

  presentedViewController = [(SUUIScrollingTabNavigationController *)self presentedViewController];
  v6 = presentedViewController == 0;

  return v6;
}

- (void)popToNavigationStackRootContentAnimated:(BOOL)animated withBehavior:(int64_t)behavior
{
  animatedCopy = animated;
  presentedViewController = [(SUUIScrollingTabNavigationController *)self presentedViewController];
  v8 = presentedViewController;
  if (!presentedViewController)
  {
    selfCopy3 = self;
    v11 = animatedCopy;
    goto LABEL_13;
  }

  if (behavior == 1)
  {
    if (animatedCopy)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __93__SUUIScrollingTabNavigationController_popToNavigationStackRootContentAnimated_withBehavior___block_invoke;
      v16[3] = &unk_2798F5BE8;
      v16[4] = self;
      v12 = v16;
      selfCopy4 = self;
      v14 = 1;
LABEL_11:
      [(SUUIScrollingTabNavigationController *)selfCopy4 dismissViewControllerAnimated:v14 completion:v12];
      goto LABEL_14;
    }

    [(SUUIScrollingTabNavigationController *)self dismissViewControllerAnimated:0 completion:0];
    selfCopy3 = self;
    v11 = 0;
LABEL_13:
    v15 = [(SUUINavigationController *)selfCopy3 popToRootViewControllerAnimated:v11];
    goto LABEL_14;
  }

  if (behavior)
  {
    goto LABEL_14;
  }

  if (![presentedViewController conformsToProtocol:&unk_286C23950])
  {
    selfCopy4 = self;
    v14 = animatedCopy;
    v12 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  if ([v9 isShowingNavigationStackRootContent])
  {
    [(SUUIScrollingTabNavigationController *)self dismissViewControllerAnimated:animatedCopy completion:0];
  }

  else
  {
    [v9 popToNavigationStackRootContentAnimated:animatedCopy withBehavior:0];
  }

LABEL_14:
}

- (void)scrollingTabBarBottomInsetAdjustmentDidChange
{
  if (objc_opt_respondsToSelector())
  {
    topViewController = [(SUUIScrollingTabNavigationController *)self topViewController];
    [(SUUIScrollingTabNavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:topViewController];
  }

  if ([(SUUIScrollingTabNavigationController *)self isViewLoaded])
  {
    view = [(SUUIScrollingTabNavigationController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_observedNavigationStackDidChange
{
  navigationStackObserver = [(SUUIScrollingTabNavigationController *)self navigationStackObserver];
  [navigationStackObserver observedNavigationStackDidChange:self];
}

- (SUUINavigationStackObserver)navigationStackObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationStackObserver);

  return WeakRetained;
}

@end