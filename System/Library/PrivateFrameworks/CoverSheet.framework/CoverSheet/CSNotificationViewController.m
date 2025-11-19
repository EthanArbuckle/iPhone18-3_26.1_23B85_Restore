@interface CSNotificationViewController
- (SBUIPresentableHomeGestureContext)homeGestureContext;
- (void)expandedPlatter:(id)a3 willDismissWithReason:(id)a4;
- (void)expandedPlatterDidPresent:(id)a3;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3;
@end

@implementation CSNotificationViewController

- (void)expandedPlatterDidPresent:(id)a3
{
  v20.receiver = self;
  v20.super_class = CSNotificationViewController;
  [(NCNotificationShortLookViewController *)&v20 expandedPlatterDidPresent:a3];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained platterBarSwipeAffordanceViewForParticipant:self];
    [v5 addObserver:self];
    v6 = [(NCNotificationShortLookViewController *)self containerViewForExpandedContent];
    [v6 addSubview:v5];
    [v6 bounds];
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    CGRectGetWidth(v21);
    [v5 sizeThatFits:{width, height}];
    BSRectWithSize();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    MaxY = CGRectGetMaxY(v22);
    v23.origin.x = v12;
    v23.origin.y = v14;
    v23.size.width = v16;
    v23.size.height = v18;
    [v5 setFrame:{v12, MaxY - CGRectGetHeight(v23), v16, v18}];
    [v5 setAutoresizingMask:10];
  }

  [WeakRetained setWantsHomeGesture:1];
}

- (void)expandedPlatter:(id)a3 willDismissWithReason:(id)a4
{
  v6.receiver = self;
  v6.super_class = CSNotificationViewController;
  [(NCNotificationShortLookViewController *)&v6 expandedPlatter:a3 willDismissWithReason:a4];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  [WeakRetained setWantsHomeGesture:0];
}

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3
{
  v5 = [(NCNotificationShortLookViewController *)self presentedExpandedPlatterViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = v5;
    v4 = [v3 dismisser];
    [v4 expandedPlatterPresentable:v3 requestsDismissalWithTrigger:2];
  }
}

- (SBUIPresentableHomeGestureContext)homeGestureContext
{
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);

  return WeakRetained;
}

@end