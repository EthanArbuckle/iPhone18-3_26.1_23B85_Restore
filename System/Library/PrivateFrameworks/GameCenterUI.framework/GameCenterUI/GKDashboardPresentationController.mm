@interface GKDashboardPresentationController
+ (void)presentViewController:(id)controller presentingViewController:(id)viewController animated:(BOOL)animated;
- (GKDashboardPresentationController)init;
- (void)animateTransition:(id)transition;
@end

@implementation GKDashboardPresentationController

- (GKDashboardPresentationController)init
{
  v5.receiver = self;
  v5.super_class = GKDashboardPresentationController;
  v2 = [(GKDashboardPresentationController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GKDashboardPresentationController *)v2 setTransitionDuration:0.5];
  }

  return v3;
}

+ (void)presentViewController:(id)controller presentingViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v10 = objc_alloc_init(GKDashboardPresentationController);
  [viewControllerCopy setTransitioningDelegate:v10];
  navigationController = [viewControllerCopy navigationController];

  [navigationController pushViewController:controllerCopy animated:animatedCopy];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v4 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  containerView = [transitionCopy containerView];
  if ([(GKDashboardPresentationController *)self presenting])
  {
    view = [v4 view];
    [view frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    view2 = [v5 view];
    [view2 setFrame:{v9, v11, v13, v15}];

    view3 = [v5 view];
    [view3 setAutoresizingMask:18];

    view4 = [v5 view];
    [containerView addSubview:view4];

    view5 = [v5 view];
    [view5 layoutIfNeeded];

    view6 = [v4 view];
    [view6 layoutIfNeeded];

    [transitionCopy completeTransition:1];
  }

  else
  {
    [transitionCopy completeTransition:1];
    view7 = [v4 view];
    [view7 removeFromSuperview];

    view8 = [v5 view];
    [view8 layoutIfNeeded];
  }
}

@end