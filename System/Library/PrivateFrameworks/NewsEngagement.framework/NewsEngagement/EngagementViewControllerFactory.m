@interface EngagementViewControllerFactory
- (BOOL)messageViewControllerDidEnqueueImpression:(id)a3;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
@end

@implementation EngagementViewControllerFactory

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  EngagementViewControllerFactory.messageViewController(_:didSelectActionWith:)(v6, v7);
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_25BE84854(a4);
}

- (BOOL)messageViewControllerDidEnqueueImpression:(id)a3
{
  v4 = a3;
  v5 = self;
  EngagementViewControllerFactory.messageViewControllerDidEnqueueImpression(_:)(v4);

  return 1;
}

@end