@interface HUQuickControlSimpleInteractionCoordinator
- (BOOL)isUserInteractionActive;
- (BOOL)isUserInteractionEnabled;
- (HUQuickControlSimpleInteractionCoordinator)initWithContraptionViewController:(id)controller delegate:(id)delegate;
- (HUQuickControlSimpleInteractionCoordinator)initWithControlView:(id)view delegate:(id)delegate;
- (void)_requestDismissalIfNecessary;
- (void)_setValue:(id)value notifyDelegate:(BOOL)delegate updateControlView:(BOOL)view;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer;
- (void)controlView:(id)view interactionStateDidChange:(BOOL)change forFirstTouch:(BOOL)touch;
- (void)controlView:(id)view valueDidChange:(id)change;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation HUQuickControlSimpleInteractionCoordinator

- (HUQuickControlSimpleInteractionCoordinator)initWithContraptionViewController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  view = [controllerCopy view];
  v10 = [(HUQuickControlSimpleInteractionCoordinator *)self initWithControlView:view delegate:delegateCopy];

  if (v10)
  {
    objc_storeStrong(&v10->_contraptionViewController, controller);
  }

  return v10;
}

- (HUQuickControlSimpleInteractionCoordinator)initWithControlView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = HUQuickControlSimpleInteractionCoordinator;
  v7 = [(HUQuickControlInteractionCoordinator *)&v10 initWithControlView:viewCopy delegate:delegate];
  v8 = v7;
  if (v7)
  {
    v7->_shouldDismissAutomatically = 1;
    [viewCopy setInteractionDelegate:v7];
  }

  return v8;
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  [controlView beginUserInteractionWithFirstTouchGestureRecognizer:recognizerCopy];
}

- (BOOL)isUserInteractionActive
{
  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  isUserInteractionActive = [controlView isUserInteractionActive];

  return isUserInteractionActive;
}

- (BOOL)isUserInteractionEnabled
{
  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  isUserInteractionEnabled = [controlView isUserInteractionEnabled];

  return isUserInteractionEnabled;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  [controlView setUserInteractionEnabled:enabledCopy];
}

- (void)_setValue:(id)value notifyDelegate:(BOOL)delegate updateControlView:(BOOL)view
{
  viewCopy = view;
  delegateCopy = delegate;
  valueCopy = value;
  objc_storeStrong(&self->_value, value);
  if (viewCopy)
  {
    controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
    [controlView setValue:valueCopy];
  }

  if (delegateCopy)
  {
    delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
    [delegate interactionCoordinator:self viewValueDidChange:valueCopy];
  }
}

- (void)_requestDismissalIfNecessary
{
  if ([(HUQuickControlSimpleInteractionCoordinator *)self shouldDismissAutomatically])
  {
    if (![(HUQuickControlSimpleInteractionCoordinator *)self isUserInteractionActive]&& ![(HUQuickControlSimpleInteractionCoordinator *)self hasStartedSecondTouch])
    {
      delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
      v4 = [delegate hasModelValueChangedForInteractionCoordinator:self];

      if (v4)
      {
        delegate2 = [(HUQuickControlInteractionCoordinator *)self delegate];
        [delegate2 interactionCoordinatorWantsDismissal:self];
      }
    }
  }
}

- (void)controlView:(id)view valueDidChange:(id)change
{
  changeCopy = change;
  value = [(HUQuickControlSimpleInteractionCoordinator *)self value];
  if (value == changeCopy)
  {

    [(HUQuickControlSimpleInteractionCoordinator *)self _setValue:changeCopy notifyDelegate:1 updateControlView:0];
  }

  else
  {
    value2 = [(HUQuickControlSimpleInteractionCoordinator *)self value];
    v7 = [value2 isEqual:changeCopy];

    [(HUQuickControlSimpleInteractionCoordinator *)self _setValue:changeCopy notifyDelegate:1 updateControlView:0];
    if ((v7 & 1) == 0)
    {
      [(HUQuickControlSimpleInteractionCoordinator *)self _requestDismissalIfNecessary];
    }
  }
}

- (void)controlView:(id)view interactionStateDidChange:(BOOL)change forFirstTouch:(BOOL)touch
{
  touchCopy = touch;
  changeCopy = change;
  delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
  [delegate interactionCoordinator:self interactionStateDidChange:changeCopy];

  [(HUQuickControlSimpleInteractionCoordinator *)self setHasStartedSecondTouch:!touchCopy];
  if (!changeCopy)
  {

    [(HUQuickControlSimpleInteractionCoordinator *)self _requestDismissalIfNecessary];
  }
}

@end