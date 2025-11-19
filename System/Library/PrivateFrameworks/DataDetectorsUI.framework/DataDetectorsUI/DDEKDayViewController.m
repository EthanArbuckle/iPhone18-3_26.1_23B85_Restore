@interface DDEKDayViewController
- (CGSize)preferredContentSize;
- (void)dd_update_scroll;
- (void)didMoveToParentViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DDEKDayViewController

- (CGSize)preferredContentSize
{
  v2 = 375.0;
  v3 = 375.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)dd_update_scroll
{
  if ([(DDEKDayViewController *)self isViewLoaded])
  {
    v3 = [(DDEKDayViewController *)self view];
    v4 = [v3 window];

    if (v4)
    {
      v5 = [(DDEKDayViewController *)self dd_event];
      [(EKDayViewController *)self scrollEventIntoView:v5 animated:0];
    }
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = DDEKDayViewController;
  [(DDEKDayViewController *)&v4 didMoveToParentViewController:a3];
  [(DDEKDayViewController *)self dd_update_scroll];
}

- (void)viewDidLayoutSubviews
{
  [(DDEKDayViewController *)self dd_update_scroll];
  v3.receiver = self;
  v3.super_class = DDEKDayViewController;
  [(EKDayViewController *)&v3 viewDidLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = DDEKDayViewController;
  [(EKDayViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(DDEKDayViewController *)self dd_update_scroll];
}

@end