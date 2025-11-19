@interface HUQuickControlInteractionCoordinator
- (BOOL)isUserInteractionActive;
- (HUQuickControlInteractionCoordinator)initWithControlView:(id)a3 delegate:(id)a4;
- (HUQuickControlInteractionCoordinatorDelegate)delegate;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3;
@end

@implementation HUQuickControlInteractionCoordinator

- (HUQuickControlInteractionCoordinator)initWithControlView:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUQuickControlInteractionCoordinator;
  v9 = [(HUQuickControlInteractionCoordinator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controlView, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HUQuickControlInteractionCoordinator.m" lineNumber:29 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUQuickControlInteractionCoordinator beginUserInteractionWithFirstTouchGestureRecognizer:]", objc_opt_class()}];
}

- (BOOL)isUserInteractionActive
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUQuickControlInteractionCoordinator.m" lineNumber:39 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUQuickControlInteractionCoordinator isUserInteractionActive]", objc_opt_class()}];

  return 0;
}

- (HUQuickControlInteractionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end