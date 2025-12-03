@interface PXPhotosGridEdgeSwipeInteractiveDismissalTransition
- (BOOL)_shouldCompleteTransition;
- (PXPhotosGridEdgeSwipeInteractiveDismissalDelegate)delegate;
- (PXPhotosGridEdgeSwipeInteractiveDismissalTransition)initWithEdgeSwipeGesture:(id)gesture viewController:(id)controller;
- (void)_handleEdgeSwipeGesture:(id)gesture;
- (void)startInteractiveTransition:(id)transition;
@end

@implementation PXPhotosGridEdgeSwipeInteractiveDismissalTransition

- (PXPhotosGridEdgeSwipeInteractiveDismissalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldCompleteTransition
{
  edgeSwipeGesture = [(PXPhotosGridEdgeSwipeInteractiveDismissalTransition *)self edgeSwipeGesture];
  view = [edgeSwipeGesture view];
  [edgeSwipeGesture velocityInView:view];
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

- (void)_handleEdgeSwipeGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [gestureCopy view];
  [view bounds];

  view2 = [gestureCopy view];
  [gestureCopy translationInView:view2];

  state = [gestureCopy state];
  if (state > 3)
  {
    if ((state - 4) >= 2)
    {
      return;
    }

LABEL_10:

    [(UIPercentDrivenInteractiveTransition *)self cancelInteractiveTransition];
    return;
  }

  switch(state)
  {
    case 1:
      [(UIPercentDrivenInteractiveTransition *)self setWantsInteractiveStart:1];
      viewController = [(PXPhotosGridEdgeSwipeInteractiveDismissalTransition *)self viewController];
      presentingViewController = [viewController presentingViewController];
      [presentingViewController dismissViewControllerAnimated:1 completion:0];

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

- (void)startInteractiveTransition:(id)transition
{
  v6.receiver = self;
  v6.super_class = PXPhotosGridEdgeSwipeInteractiveDismissalTransition;
  transitionCopy = transition;
  [(UIPercentDrivenInteractiveTransition *)&v6 startInteractiveTransition:transitionCopy];
  v5 = [(PXPhotosGridEdgeSwipeInteractiveDismissalTransition *)self delegate:v6.receiver];
  [v5 runTransitionAnimation:transitionCopy];
}

- (PXPhotosGridEdgeSwipeInteractiveDismissalTransition)initWithEdgeSwipeGesture:(id)gesture viewController:(id)controller
{
  gestureCopy = gesture;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = PXPhotosGridEdgeSwipeInteractiveDismissalTransition;
  v9 = [(UIPercentDrivenInteractiveTransition *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_edgeSwipeGesture, gesture);
    [gestureCopy addTarget:v10 action:sel__handleEdgeSwipeGesture_];
    objc_storeStrong(&v10->_viewController, controller);
    [(UIPercentDrivenInteractiveTransition *)v10 setWantsInteractiveStart:0];
    view = [gestureCopy view];
    v10->isRTL = [view effectiveUserInterfaceLayoutDirection] == 1;
  }

  return v10;
}

@end