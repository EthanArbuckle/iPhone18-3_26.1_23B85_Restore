@interface CIDVUIBiometricBindingFlowManager
- (CIDVUIBiometricBindingFlowManager)init;
- (void)deleteBoundACLWithCompletion:(id)a3;
- (void)evaluateBoundACL:(id)a3;
- (void)fetchBiometricBindingDetails:(id)a3;
- (void)globalAuthACLTemplateUUIDsAndBoundCredentialsCountWithCompletion:(id)a3;
- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)a3;
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

- (void)evaluateBoundACL:(id)a3
{
  v4 = a3;
  v5 = [(CIDVUIBiometricBindingFlowManager *)self bioBindingFlowManager];
  [v5 evaluateBoundACLWithCompletionHandler:v4];
}

- (void)deleteBoundACLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CIDVUIBiometricBindingFlowManager *)self bioBindingFlowManager];
  [v5 deleteBoundACLWithCompletionHandler:v4];
}

- (void)fetchBiometricBindingDetails:(id)a3
{
  v4 = a3;
  v5 = [(CIDVUIBiometricBindingFlowManager *)self bioBindingFlowManager];
  [v5 fetchBiometricBindingDetailsWithCompletionHandler:v4];
}

- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CIDVUIBiometricBindingFlowManager *)self bioBindingFlowManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__CIDVUIBiometricBindingFlowManager_globalAuthACLTemplateUUIDsWithCompletion___block_invoke;
  v7[3] = &unk_278E873D0;
  v8 = v4;
  v6 = v4;
  [v5 globalAuthACLTemplateUUIDsWithCompletionHandler:v7];
}

- (void)globalAuthACLTemplateUUIDsAndBoundCredentialsCountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CIDVUIBiometricBindingFlowManager *)self bioBindingFlowManager];
  [v5 globalAuthACLTemplateUUIDsWithCompletionHandler:v4];
}

@end