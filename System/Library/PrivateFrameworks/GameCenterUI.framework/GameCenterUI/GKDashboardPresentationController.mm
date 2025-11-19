@interface GKDashboardPresentationController
+ (void)presentViewController:(id)a3 presentingViewController:(id)a4 animated:(BOOL)a5;
- (GKDashboardPresentationController)init;
- (void)animateTransition:(id)a3;
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

+ (void)presentViewController:(id)a3 presentingViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v10 = objc_alloc_init(GKDashboardPresentationController);
  [v7 setTransitioningDelegate:v10];
  v9 = [v7 navigationController];

  [v9 pushViewController:v8 animated:v5];
}

- (void)animateTransition:(id)a3
{
  v23 = a3;
  v4 = [v23 viewControllerForKey:*MEMORY[0x277D77230]];
  v5 = [v23 viewControllerForKey:*MEMORY[0x277D77240]];
  v6 = [v23 containerView];
  if ([(GKDashboardPresentationController *)self presenting])
  {
    v7 = [v4 view];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [v5 view];
    [v16 setFrame:{v9, v11, v13, v15}];

    v17 = [v5 view];
    [v17 setAutoresizingMask:18];

    v18 = [v5 view];
    [v6 addSubview:v18];

    v19 = [v5 view];
    [v19 layoutIfNeeded];

    v20 = [v4 view];
    [v20 layoutIfNeeded];

    [v23 completeTransition:1];
  }

  else
  {
    [v23 completeTransition:1];
    v21 = [v4 view];
    [v21 removeFromSuperview];

    v22 = [v5 view];
    [v22 layoutIfNeeded];
  }
}

@end