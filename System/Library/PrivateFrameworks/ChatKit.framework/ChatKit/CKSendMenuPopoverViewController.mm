@interface CKSendMenuPopoverViewController
- (CKSendMenuPopoverViewController)init;
- (CKSendMenuPopoverViewControllerDelegate)delegate;
- (id)animationForDismissingWithFinalBounds:(CGRect)bounds finalCenter:(CGPoint)center finalAlpha:(double)alpha;
- (id)animationForPresentingInitialViewControllerWithFinalBounds:(CGRect)bounds finalCenter:(CGPoint)center;
- (id)animationForTransitioningToAppContainerViewControllerWithFinalBounds:(CGRect)bounds finalCenter:(CGPoint)center;
- (void)anchorViewDidMove;
- (void)loadView;
- (void)setAppContainerViewController:(id)controller;
- (void)setSendMenuViewController:(id)controller;
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

- (void)setSendMenuViewController:(id)controller
{
  controllerCopy = controller;
  sendMenuViewController = self->_sendMenuViewController;
  v10 = controllerCopy;
  if (sendMenuViewController != controllerCopy)
  {
    if (sendMenuViewController)
    {
      [(UIViewController *)sendMenuViewController willMoveToParentViewController:0];
      view = [(UIViewController *)self->_sendMenuViewController view];
      [view removeFromSuperview];

      [(UIViewController *)self->_sendMenuViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_sendMenuViewController, controller);
    if (self->_sendMenuViewController)
    {
      [(CKSendMenuPopoverViewController *)self addChildViewController:?];
      view2 = [(UIViewController *)self->_sendMenuViewController view];
      popoverView = [(CKSendMenuPopoverViewController *)self popoverView];
      [popoverView setSendMenuView:view2];

      [(UIViewController *)self->_sendMenuViewController didMoveToParentViewController:self];
    }
  }
}

- (void)setAppContainerViewController:(id)controller
{
  controllerCopy = controller;
  appContainerViewController = self->_appContainerViewController;
  v11 = controllerCopy;
  if (appContainerViewController != controllerCopy)
  {
    if (appContainerViewController)
    {
      [(UIViewController *)appContainerViewController willMoveToParentViewController:0];
      view = [(UIViewController *)self->_appContainerViewController view];
      [view removeFromSuperview];

      [(UIViewController *)self->_appContainerViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_appContainerViewController, controller);
    if (self->_appContainerViewController)
    {
      [(CKSendMenuPopoverViewController *)self addChildViewController:?];
      view2 = [(UIViewController *)self->_appContainerViewController view];
      popoverView = [(CKSendMenuPopoverViewController *)self popoverView];
      [popoverView setAppView:view2];

      [(UIViewController *)self->_appContainerViewController didMoveToParentViewController:self];
      delegate = [(CKSendMenuPopoverViewController *)self delegate];
      [delegate appCardDidAppearInSendMenuPopoverViewController:self];
    }
  }
}

- (void)anchorViewDidMove
{
  presentationController = [(CKSendMenuPopoverViewController *)self presentationController];
  [presentationController anchorViewDidMove];
}

- (id)animationForPresentingInitialViewControllerWithFinalBounds:(CGRect)bounds finalCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v8 = bounds.origin.y;
  v9 = bounds.origin.x;
  popoverView = [(CKSendMenuPopoverViewController *)self popoverView];
  v11 = [popoverView animationForPresentingInitialViewWithFinalBounds:v9 finalCenter:{v8, width, height, x, y}];

  return v11;
}

- (id)animationForDismissingWithFinalBounds:(CGRect)bounds finalCenter:(CGPoint)center finalAlpha:(double)alpha
{
  y = center.y;
  x = center.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v10 = bounds.origin.y;
  v11 = bounds.origin.x;
  popoverView = [(CKSendMenuPopoverViewController *)self popoverView];
  v13 = [popoverView animationForDismissingWithFinalBounds:v11 finalCenter:v10 finalAlpha:{width, height, x, y, alpha}];

  return v13;
}

- (id)animationForTransitioningToAppContainerViewControllerWithFinalBounds:(CGRect)bounds finalCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v8 = bounds.origin.y;
  v9 = bounds.origin.x;
  popoverView = [(CKSendMenuPopoverViewController *)self popoverView];
  v11 = [popoverView animationForTransitioningToAppViewWithFinalBounds:v9 finalCenter:{v8, width, height, x, y}];

  return v11;
}

- (CKSendMenuPopoverViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end