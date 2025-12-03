@interface DDEKDayViewController
- (CGSize)preferredContentSize;
- (void)dd_update_scroll;
- (void)didMoveToParentViewController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
    view = [(DDEKDayViewController *)self view];
    window = [view window];

    if (window)
    {
      dd_event = [(DDEKDayViewController *)self dd_event];
      [(EKDayViewController *)self scrollEventIntoView:dd_event animated:0];
    }
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = DDEKDayViewController;
  [(DDEKDayViewController *)&v4 didMoveToParentViewController:controller];
  [(DDEKDayViewController *)self dd_update_scroll];
}

- (void)viewDidLayoutSubviews
{
  [(DDEKDayViewController *)self dd_update_scroll];
  v3.receiver = self;
  v3.super_class = DDEKDayViewController;
  [(EKDayViewController *)&v3 viewDidLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = DDEKDayViewController;
  [(EKDayViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(DDEKDayViewController *)self dd_update_scroll];
}

@end