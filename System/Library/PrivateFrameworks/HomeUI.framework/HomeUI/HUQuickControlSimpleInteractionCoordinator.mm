@interface HUQuickControlSimpleInteractionCoordinator
- (BOOL)isUserInteractionActive;
- (BOOL)isUserInteractionEnabled;
- (HUQuickControlSimpleInteractionCoordinator)initWithContraptionViewController:(id)a3 delegate:(id)a4;
- (HUQuickControlSimpleInteractionCoordinator)initWithControlView:(id)a3 delegate:(id)a4;
- (void)_requestDismissalIfNecessary;
- (void)_setValue:(id)a3 notifyDelegate:(BOOL)a4 updateControlView:(BOOL)a5;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3;
- (void)controlView:(id)a3 interactionStateDidChange:(BOOL)a4 forFirstTouch:(BOOL)a5;
- (void)controlView:(id)a3 valueDidChange:(id)a4;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation HUQuickControlSimpleInteractionCoordinator

- (HUQuickControlSimpleInteractionCoordinator)initWithContraptionViewController:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 view];
  v10 = [(HUQuickControlSimpleInteractionCoordinator *)self initWithControlView:v9 delegate:v8];

  if (v10)
  {
    objc_storeStrong(&v10->_contraptionViewController, a3);
  }

  return v10;
}

- (HUQuickControlSimpleInteractionCoordinator)initWithControlView:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HUQuickControlSimpleInteractionCoordinator;
  v7 = [(HUQuickControlInteractionCoordinator *)&v10 initWithControlView:v6 delegate:a4];
  v8 = v7;
  if (v7)
  {
    v7->_shouldDismissAutomatically = 1;
    [v6 setInteractionDelegate:v7];
  }

  return v8;
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlInteractionCoordinator *)self controlView];
  [v5 beginUserInteractionWithFirstTouchGestureRecognizer:v4];
}

- (BOOL)isUserInteractionActive
{
  v2 = [(HUQuickControlInteractionCoordinator *)self controlView];
  v3 = [v2 isUserInteractionActive];

  return v3;
}

- (BOOL)isUserInteractionEnabled
{
  v2 = [(HUQuickControlInteractionCoordinator *)self controlView];
  v3 = [v2 isUserInteractionEnabled];

  return v3;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUQuickControlInteractionCoordinator *)self controlView];
  [v4 setUserInteractionEnabled:v3];
}

- (void)_setValue:(id)a3 notifyDelegate:(BOOL)a4 updateControlView:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v11 = a3;
  objc_storeStrong(&self->_value, a3);
  if (v5)
  {
    v9 = [(HUQuickControlInteractionCoordinator *)self controlView];
    [v9 setValue:v11];
  }

  if (v6)
  {
    v10 = [(HUQuickControlInteractionCoordinator *)self delegate];
    [v10 interactionCoordinator:self viewValueDidChange:v11];
  }
}

- (void)_requestDismissalIfNecessary
{
  if ([(HUQuickControlSimpleInteractionCoordinator *)self shouldDismissAutomatically])
  {
    if (![(HUQuickControlSimpleInteractionCoordinator *)self isUserInteractionActive]&& ![(HUQuickControlSimpleInteractionCoordinator *)self hasStartedSecondTouch])
    {
      v3 = [(HUQuickControlInteractionCoordinator *)self delegate];
      v4 = [v3 hasModelValueChangedForInteractionCoordinator:self];

      if (v4)
      {
        v5 = [(HUQuickControlInteractionCoordinator *)self delegate];
        [v5 interactionCoordinatorWantsDismissal:self];
      }
    }
  }
}

- (void)controlView:(id)a3 valueDidChange:(id)a4
{
  v8 = a4;
  v5 = [(HUQuickControlSimpleInteractionCoordinator *)self value];
  if (v5 == v8)
  {

    [(HUQuickControlSimpleInteractionCoordinator *)self _setValue:v8 notifyDelegate:1 updateControlView:0];
  }

  else
  {
    v6 = [(HUQuickControlSimpleInteractionCoordinator *)self value];
    v7 = [v6 isEqual:v8];

    [(HUQuickControlSimpleInteractionCoordinator *)self _setValue:v8 notifyDelegate:1 updateControlView:0];
    if ((v7 & 1) == 0)
    {
      [(HUQuickControlSimpleInteractionCoordinator *)self _requestDismissalIfNecessary];
    }
  }
}

- (void)controlView:(id)a3 interactionStateDidChange:(BOOL)a4 forFirstTouch:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(HUQuickControlInteractionCoordinator *)self delegate];
  [v8 interactionCoordinator:self interactionStateDidChange:v6];

  [(HUQuickControlSimpleInteractionCoordinator *)self setHasStartedSecondTouch:!v5];
  if (!v6)
  {

    [(HUQuickControlSimpleInteractionCoordinator *)self _requestDismissalIfNecessary];
  }
}

@end