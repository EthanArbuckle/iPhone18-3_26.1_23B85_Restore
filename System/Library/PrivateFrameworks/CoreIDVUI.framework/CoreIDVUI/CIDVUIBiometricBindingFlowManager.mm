@interface CIDVUIBiometricBindingFlowManager
- (CIDVUIBiometricBindingFlowManager)init;
- (void)deleteBoundACLWithCompletion:(id)completion;
- (void)evaluateBoundACL:(id)l;
- (void)fetchBiometricBindingDetails:(id)details;
- (void)globalAuthACLTemplateUUIDsAndBoundCredentialsCountWithCompletion:(id)completion;
- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)completion;
@end

@implementation CIDVUIBiometricBindingFlowManager

- (CIDVUIBiometricBindingFlowManager)init
{
  v5.receiver = self;
  v5.super_class = CIDVUIBiometricBindingFlowManager;
  v2 = [(CIDVUIBiometricBindingFlowManager *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager);
    [(CIDVUIBiometricBindingFlowManager *)v2 setBioBindingFlowManager:v3];
  }

  return v2;
}

- (void)evaluateBoundACL:(id)l
{
  lCopy = l;
  bioBindingFlowManager = [(CIDVUIBiometricBindingFlowManager *)self bioBindingFlowManager];
  [bioBindingFlowManager evaluateBoundACLWithCompletionHandler:lCopy];
}

- (void)deleteBoundACLWithCompletion:(id)completion
{
  completionCopy = completion;
  bioBindingFlowManager = [(CIDVUIBiometricBindingFlowManager *)self bioBindingFlowManager];
  [bioBindingFlowManager deleteBoundACLWithCompletionHandler:completionCopy];
}

- (void)fetchBiometricBindingDetails:(id)details
{
  detailsCopy = details;
  bioBindingFlowManager = [(CIDVUIBiometricBindingFlowManager *)self bioBindingFlowManager];
  [bioBindingFlowManager fetchBiometricBindingDetailsWithCompletionHandler:detailsCopy];
}

- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  bioBindingFlowManager = [(CIDVUIBiometricBindingFlowManager *)self bioBindingFlowManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__CIDVUIBiometricBindingFlowManager_globalAuthACLTemplateUUIDsWithCompletion___block_invoke;
  v7[3] = &unk_278E873D0;
  v8 = completionCopy;
  v6 = completionCopy;
  [bioBindingFlowManager globalAuthACLTemplateUUIDsWithCompletionHandler:v7];
}

- (void)globalAuthACLTemplateUUIDsAndBoundCredentialsCountWithCompletion:(id)completion
{
  completionCopy = completion;
  bioBindingFlowManager = [(CIDVUIBiometricBindingFlowManager *)self bioBindingFlowManager];
  [bioBindingFlowManager globalAuthACLTemplateUUIDsWithCompletionHandler:completionCopy];
}

@end