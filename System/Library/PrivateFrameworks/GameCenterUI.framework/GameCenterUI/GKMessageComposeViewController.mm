@interface GKMessageComposeViewController
- (GKMessageComposeViewControllerDelegate)gkComposeDelegate;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation GKMessageComposeViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = GKMessageComposeViewController;
  [(GKMessageComposeViewController *)&v5 viewDidDisappear:disappear];
  gkComposeDelegate = [(GKMessageComposeViewController *)self gkComposeDelegate];
  [gkComposeDelegate didEndDisplaying];
}

- (GKMessageComposeViewControllerDelegate)gkComposeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_gkComposeDelegate);

  return WeakRetained;
}

@end