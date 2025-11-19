@interface GKMessageComposeViewController
- (GKMessageComposeViewControllerDelegate)gkComposeDelegate;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation GKMessageComposeViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GKMessageComposeViewController;
  [(GKMessageComposeViewController *)&v5 viewDidDisappear:a3];
  v4 = [(GKMessageComposeViewController *)self gkComposeDelegate];
  [v4 didEndDisplaying];
}

- (GKMessageComposeViewControllerDelegate)gkComposeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_gkComposeDelegate);

  return WeakRetained;
}

@end