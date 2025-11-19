@interface SUUIScrollingTabNavigationController
- (BOOL)isShowingNavigationStackRootContent;
- (SUUINavigationStackObserver)navigationStackObserver;
- (SUUIScrollingTabNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)_scrollViewBottomContentInsetForViewController:(id)a3;
- (void)_observedNavigationStackDidChange;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)popToNavigationStackRootContentAnimated:(BOOL)a3 withBehavior:(int64_t)a4;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)scrollingTabBarBottomInsetAdjustmentDidChange;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SUUIScrollingTabNavigationController

- (SUUIScrollingTabNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = SUUIScrollingTabNavigationController;
  v4 = [(SUNavigationController *)&v6 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    [(SUUIScrollingTabNavigationController *)v4 setNavigationBarClass:objc_opt_class()];
  }

  return v4;
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SUUIScrollingTabNavigationController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_2798F5D58;
  v9[4] = self;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = SUUIScrollingTabNavigationController;
  v7 = v6;
  [(SUUIScrollingTabNavigationController *)&v8 dismissViewControllerAnimated:v4 completion:v9];
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

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6.receiver = self;
  v6.super_class = SUUIScrollingTabNavigationController;
  [(SUUIScrollingTabNavigationController *)&v6 presentViewController:a3 animated:a4 completion:a5];
  [(SUUIScrollingTabNavigationController *)self _observedNavigationStackDidChange];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIScrollingTabNavigationController;
  [(SUUIScrollingTabNavigationController *)&v4 viewDidAppear:a3];
  [(SUUIScrollingTabNavigationController *)self _observedNavigationStackDidChange];
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = SUUIScrollingTabNavigationController;
  [(SUUINavigationController *)&v5 didShowViewController:a3 animated:a4];
  [(SUUIScrollingTabNavigationController *)self _observedNavigationStackDidChange];
}

- (double)_scrollViewBottomContentInsetForViewController:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self scrollingTabBarController];
  v6 = v5;
  if (v5)
  {
    [v5 contentViewControllerBottomInsetAdjustment];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUUIScrollingTabNavigationController;
    [(SUUIScrollingTabNavigationController *)&v10 _scrollViewBottomContentInsetForViewController:v4];
  }

  v8 = v7;

  return v8;
}

- (BOOL)isShowingNavigationStackRootContent
{
  v3 = [(SUUIScrollingTabNavigationController *)self viewControllers];
  v4 = [v3 count];

  if (v4 > 1)
  {
    return 0;
  }

  v5 = [(SUUIScrollingTabNavigationController *)self presentedViewController];
  v6 = v5 == 0;

  return v6;
}

- (void)popToNavigationStackRootContentAnimated:(BOOL)a3 withBehavior:(int64_t)a4
{
  v5 = a3;
  v7 = [(SUUIScrollingTabNavigationController *)self presentedViewController];
  v8 = v7;
  if (!v7)
  {
    v10 = self;
    v11 = v5;
    goto LABEL_13;
  }

  if (a4 == 1)
  {
    if (v5)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __93__SUUIScrollingTabNavigationController_popToNavigationStackRootContentAnimated_withBehavior___block_invoke;
      v16[3] = &unk_2798F5BE8;
      v16[4] = self;
      v12 = v16;
      v13 = self;
      v14 = 1;
LABEL_11:
      [(SUUIScrollingTabNavigationController *)v13 dismissViewControllerAnimated:v14 completion:v12];
      goto LABEL_14;
    }

    [(SUUIScrollingTabNavigationController *)self dismissViewControllerAnimated:0 completion:0];
    v10 = self;
    v11 = 0;
LABEL_13:
    v15 = [(SUUINavigationController *)v10 popToRootViewControllerAnimated:v11];
    goto LABEL_14;
  }

  if (a4)
  {
    goto LABEL_14;
  }

  if (![v7 conformsToProtocol:&unk_286C23950])
  {
    v13 = self;
    v14 = v5;
    v12 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  if ([v9 isShowingNavigationStackRootContent])
  {
    [(SUUIScrollingTabNavigationController *)self dismissViewControllerAnimated:v5 completion:0];
  }

  else
  {
    [v9 popToNavigationStackRootContentAnimated:v5 withBehavior:0];
  }

LABEL_14:
}

- (void)scrollingTabBarBottomInsetAdjustmentDidChange
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(SUUIScrollingTabNavigationController *)self topViewController];
    [(SUUIScrollingTabNavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:v3];
  }

  if ([(SUUIScrollingTabNavigationController *)self isViewLoaded])
  {
    v4 = [(SUUIScrollingTabNavigationController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)_observedNavigationStackDidChange
{
  v3 = [(SUUIScrollingTabNavigationController *)self navigationStackObserver];
  [v3 observedNavigationStackDidChange:self];
}

- (SUUINavigationStackObserver)navigationStackObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationStackObserver);

  return WeakRetained;
}

@end