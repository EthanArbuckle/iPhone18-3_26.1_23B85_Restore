@interface UnifiedMessages.Coordinator.EngagementViewControllerDelegate
- (BOOL)engagementViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler;
- (void)engagementViewController:(id)controller didResolveWithResult:(id)result error:(id)error;
- (void)engagementViewControllerShouldDismiss:(id)dismiss;
@end

@implementation UnifiedMessages.Coordinator.EngagementViewControllerDelegate

- (void)engagementViewControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_216B05F48();
}

- (void)engagementViewController:(id)controller didResolveWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  errorCopy = error;
  selfCopy = self;
  sub_216B060C4(selfCopy, resultCopy, errorCopy);
}

- (BOOL)engagementViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v8;
  controllerCopy = controller;
  actionCopy = action;
  selfCopy = self;
  sub_216B06358();

  return 1;
}

@end