@interface PXPhotosGridEdgeSwipeInteractiveDismissalTransition
- (BOOL)_shouldCompleteTransition;
- (PXPhotosGridEdgeSwipeInteractiveDismissalDelegate)delegate;
- (PXPhotosGridEdgeSwipeInteractiveDismissalTransition)initWithEdgeSwipeGesture:(id)a3 viewController:(id)a4;
- (void)_handleEdgeSwipeGesture:(id)a3;
- (void)startInteractiveTransition:(id)a3;
@end

@implementation PXPhotosGridEdgeSwipeInteractiveDismissalTransition

- (PXPhotosGridEdgeSwipeInteractiveDismissalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldCompleteTransition
{
  v3 = [(PXPhotosGridEdgeSwipeInteractiveDismissalTransition *)self edgeSwipeGesture];
  v4 = [v3 view];
  [v3 velocityInView:v4];
  v6 = v5;

  if (self->isRTL)
  {
    v7 = v6 < 0.0;
  }

  else
  {
    v7 = v6 > 0.0;
  }

  v8 = v7 & (fabs(v6) > 1000.0);
  [(UIPercentDrivenInteractiveTransition *)self percentComplete];
  v10 = v9 > 0.33 || v8;

  return v10;
}

- (void)_handleEdgeSwipeGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v5 bounds];

  v6 = [v4 view];
  [v4 translationInView:v6];

  v7 = [v4 state];
  if (v7 > 3)
  {
    if ((v7 - 4) >= 2)
    {
      return;
    }

LABEL_10:

    [(UIPercentDrivenInteractiveTransition *)self cancelInteractiveTransition];
    return;
  }

  switch(v7)
  {
    case 1:
      [(UIPercentDrivenInteractiveTransition *)self setWantsInteractiveStart:1];
      v9 = [(PXPhotosGridEdgeSwipeInteractiveDismissalTransition *)self viewController];
      v8 = [v9 presentingViewController];
      [v8 dismissViewControllerAnimated:1 completion:0];

      break;
    case 2:
      PXClamp();

      [(UIPercentDrivenInteractiveTransition *)self updateInteractiveTransition:?];
      break;
    case 3:
      [(UIPercentDrivenInteractiveTransition *)self setWantsInteractiveStart:0];
      if ([(PXPhotosGridEdgeSwipeInteractiveDismissalTransition *)self _shouldCompleteTransition])
      {

        [(UIPercentDrivenInteractiveTransition *)self finishInteractiveTransition];
        return;
      }

      goto LABEL_10;
    default:
      return;
  }
}

- (void)startInteractiveTransition:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXPhotosGridEdgeSwipeInteractiveDismissalTransition;
  v4 = a3;
  [(UIPercentDrivenInteractiveTransition *)&v6 startInteractiveTransition:v4];
  v5 = [(PXPhotosGridEdgeSwipeInteractiveDismissalTransition *)self delegate:v6.receiver];
  [v5 runTransitionAnimation:v4];
}

- (PXPhotosGridEdgeSwipeInteractiveDismissalTransition)initWithEdgeSwipeGesture:(id)a3 viewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PXPhotosGridEdgeSwipeInteractiveDismissalTransition;
  v9 = [(UIPercentDrivenInteractiveTransition *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_edgeSwipeGesture, a3);
    [v7 addTarget:v10 action:sel__handleEdgeSwipeGesture_];
    objc_storeStrong(&v10->_viewController, a4);
    [(UIPercentDrivenInteractiveTransition *)v10 setWantsInteractiveStart:0];
    v11 = [v7 view];
    v10->isRTL = [v11 effectiveUserInterfaceLayoutDirection] == 1;
  }

  return v10;
}

@end