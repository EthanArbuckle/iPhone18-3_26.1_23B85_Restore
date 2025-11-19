@interface UnifiedMessages.Coordinator.EngagementViewControllerDelegate
- (BOOL)engagementViewController:(id)a3 handleDynamicDelegateAction:(id)a4 completionHandler:(id)a5;
- (void)engagementViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5;
- (void)engagementViewControllerShouldDismiss:(id)a3;
@end

@implementation UnifiedMessages.Coordinator.EngagementViewControllerDelegate

- (void)engagementViewControllerShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_216B05F48();
}

- (void)engagementViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_216B060C4(v10, v9, v11);
}

- (BOOL)engagementViewController:(id)a3 handleDynamicDelegateAction:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v8;
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_216B06358();

  return 1;
}

@end