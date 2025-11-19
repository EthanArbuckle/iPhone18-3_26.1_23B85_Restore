@interface CKSendMenuPopoverViewController
- (CKSendMenuPopoverViewController)init;
- (CKSendMenuPopoverViewControllerDelegate)delegate;
- (id)animationForDismissingWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4 finalAlpha:(double)a5;
- (id)animationForPresentingInitialViewControllerWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4;
- (id)animationForTransitioningToAppContainerViewControllerWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4;
- (void)anchorViewDidMove;
- (void)loadView;
- (void)setAppContainerViewController:(id)a3;
- (void)setSendMenuViewController:(id)a3;
@end

@implementation CKSendMenuPopoverViewController

- (CKSendMenuPopoverViewController)init
{
  v6.receiver = self;
  v6.super_class = CKSendMenuPopoverViewController;
  v2 = [(CKSendMenuPopoverViewController *)&v6 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    appContainerViewController = v2->_appContainerViewController;
    v2->_appContainerViewController = 0;
  }

  return v3;
}

- (void)loadView
{
  v3 = objc_alloc_init(CKSendMenuPresentationPopoverView);
  [(CKSendMenuPopoverViewController *)self setView:v3];
}

- (void)setSendMenuViewController:(id)a3
{
  v5 = a3;
  sendMenuViewController = self->_sendMenuViewController;
  v10 = v5;
  if (sendMenuViewController != v5)
  {
    if (sendMenuViewController)
    {
      [(UIViewController *)sendMenuViewController willMoveToParentViewController:0];
      v7 = [(UIViewController *)self->_sendMenuViewController view];
      [v7 removeFromSuperview];

      [(UIViewController *)self->_sendMenuViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_sendMenuViewController, a3);
    if (self->_sendMenuViewController)
    {
      [(CKSendMenuPopoverViewController *)self addChildViewController:?];
      v8 = [(UIViewController *)self->_sendMenuViewController view];
      v9 = [(CKSendMenuPopoverViewController *)self popoverView];
      [v9 setSendMenuView:v8];

      [(UIViewController *)self->_sendMenuViewController didMoveToParentViewController:self];
    }
  }
}

- (void)setAppContainerViewController:(id)a3
{
  v5 = a3;
  appContainerViewController = self->_appContainerViewController;
  v11 = v5;
  if (appContainerViewController != v5)
  {
    if (appContainerViewController)
    {
      [(UIViewController *)appContainerViewController willMoveToParentViewController:0];
      v7 = [(UIViewController *)self->_appContainerViewController view];
      [v7 removeFromSuperview];

      [(UIViewController *)self->_appContainerViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_appContainerViewController, a3);
    if (self->_appContainerViewController)
    {
      [(CKSendMenuPopoverViewController *)self addChildViewController:?];
      v8 = [(UIViewController *)self->_appContainerViewController view];
      v9 = [(CKSendMenuPopoverViewController *)self popoverView];
      [v9 setAppView:v8];

      [(UIViewController *)self->_appContainerViewController didMoveToParentViewController:self];
      v10 = [(CKSendMenuPopoverViewController *)self delegate];
      [v10 appCardDidAppearInSendMenuPopoverViewController:self];
    }
  }
}

- (void)anchorViewDidMove
{
  v2 = [(CKSendMenuPopoverViewController *)self presentationController];
  [v2 anchorViewDidMove];
}

- (id)animationForPresentingInitialViewControllerWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  v10 = [(CKSendMenuPopoverViewController *)self popoverView];
  v11 = [v10 animationForPresentingInitialViewWithFinalBounds:v9 finalCenter:{v8, width, height, x, y}];

  return v11;
}

- (id)animationForDismissingWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4 finalAlpha:(double)a5
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v12 = [(CKSendMenuPopoverViewController *)self popoverView];
  v13 = [v12 animationForDismissingWithFinalBounds:v11 finalCenter:v10 finalAlpha:{width, height, x, y, a5}];

  return v13;
}

- (id)animationForTransitioningToAppContainerViewControllerWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  v10 = [(CKSendMenuPopoverViewController *)self popoverView];
  v11 = [v10 animationForTransitioningToAppViewWithFinalBounds:v9 finalCenter:{v8, width, height, x, y}];

  return v11;
}

- (CKSendMenuPopoverViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end