@interface CSSlidingPresentationViewController
- (BOOL)handleEvent:(id)a3;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
@end

@implementation CSSlidingPresentationViewController

- (void)aggregateAppearance:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSSlidingPresentationViewController;
  [(CSPresentationViewController *)&v13 aggregateAppearance:v4];
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
    [v4 addComponent:v8];
  }
}

- (void)aggregateBehavior:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSSlidingPresentationViewController;
  v3 = a3;
  [(CSPresentationViewController *)&v4 aggregateBehavior:v3];
  [v3 setNotificationBehavior:{2, v4.receiver, v4.super_class}];
  [v3 addRestrictedCapabilities:24];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CSSlidingPresentationViewController;
  if (!-[CSPresentationViewController handleEvent:](&v7, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    if ([v4 type] != 27 || !-[CSPresentationViewController isPresentingContent](self, "isPresentingContent"))
    {
      v5 = 0;
      goto LABEL_8;
    }

    [(CSPresentationViewController *)self dismissPresentationAnimated:1];
  }

  v5 = [v4 isConsumable];
LABEL_8:

  return v5;
}

@end