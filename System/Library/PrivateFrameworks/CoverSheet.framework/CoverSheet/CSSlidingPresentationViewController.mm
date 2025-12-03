@interface CSSlidingPresentationViewController
- (BOOL)handleEvent:(id)event;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
@end

@implementation CSSlidingPresentationViewController

- (void)aggregateAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v13.receiver = self;
  v13.super_class = CSSlidingPresentationViewController;
  [(CSPresentationViewController *)&v13 aggregateAppearance:appearanceCopy];
  if ([(CSPresentationViewController *)self isPresentingContent])
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    CSComponentTransitionInputsMake(0, &v10, 0.0, 0.0, -202020.0, 0.0, 0.0);
    v5 = +[CSComponent slideableContent];
    v6 = [v5 priority:10];
    v7 = [v6 transitionModifiers:8];
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    v8 = [v7 transitionInputs:v9];
    [appearanceCopy addComponent:v8];
  }
}

- (void)aggregateBehavior:(id)behavior
{
  v4.receiver = self;
  v4.super_class = CSSlidingPresentationViewController;
  behaviorCopy = behavior;
  [(CSPresentationViewController *)&v4 aggregateBehavior:behaviorCopy];
  [behaviorCopy setNotificationBehavior:{2, v4.receiver, v4.super_class}];
  [behaviorCopy addRestrictedCapabilities:24];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = CSSlidingPresentationViewController;
  if (!-[CSPresentationViewController handleEvent:](&v7, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    if ([eventCopy type] != 27 || !-[CSPresentationViewController isPresentingContent](self, "isPresentingContent"))
    {
      isConsumable = 0;
      goto LABEL_8;
    }

    [(CSPresentationViewController *)self dismissPresentationAnimated:1];
  }

  isConsumable = [eventCopy isConsumable];
LABEL_8:

  return isConsumable;
}

@end