@interface EngagementViewControllerFactory
- (BOOL)messageViewControllerDidEnqueueImpression:(id)impression;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
@end

@implementation EngagementViewControllerFactory

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  EngagementViewControllerFactory.messageViewController(_:didSelectActionWith:)(controllerCopy, resultCopy);
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_25BE84854(error);
}

- (BOOL)messageViewControllerDidEnqueueImpression:(id)impression
{
  impressionCopy = impression;
  selfCopy = self;
  EngagementViewControllerFactory.messageViewControllerDidEnqueueImpression(_:)(impressionCopy);

  return 1;
}

@end