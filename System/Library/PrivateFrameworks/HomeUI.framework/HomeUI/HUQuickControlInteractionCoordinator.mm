@interface HUQuickControlInteractionCoordinator
- (BOOL)isUserInteractionActive;
- (HUQuickControlInteractionCoordinator)initWithControlView:(id)view delegate:(id)delegate;
- (HUQuickControlInteractionCoordinatorDelegate)delegate;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer;
@end

@implementation HUQuickControlInteractionCoordinator

- (HUQuickControlInteractionCoordinator)initWithControlView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = HUQuickControlInteractionCoordinator;
  v9 = [(HUQuickControlInteractionCoordinator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controlView, view);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlInteractionCoordinator.m" lineNumber:29 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUQuickControlInteractionCoordinator beginUserInteractionWithFirstTouchGestureRecognizer:]", objc_opt_class()}];
}

- (BOOL)isUserInteractionActive
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlInteractionCoordinator.m" lineNumber:39 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUQuickControlInteractionCoordinator isUserInteractionActive]", objc_opt_class()}];

  return 0;
}

- (HUQuickControlInteractionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end