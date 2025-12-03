@interface LACDTOServiceXPCHost
- (LACDTOServiceXPCHost)initWithFeatureController:(id)controller ratchetStateProvider:(id)provider trustStateProvider:(id)stateProvider pendingEvaluationController:(id)evaluationController;
- (void)cancelPendingEvaluationWithRatchetIdentifier:(id)identifier reason:(id)reason completion:(id)completion;
@end

@implementation LACDTOServiceXPCHost

- (LACDTOServiceXPCHost)initWithFeatureController:(id)controller ratchetStateProvider:(id)provider trustStateProvider:(id)stateProvider pendingEvaluationController:(id)evaluationController
{
  controllerCopy = controller;
  providerCopy = provider;
  stateProviderCopy = stateProvider;
  evaluationControllerCopy = evaluationController;
  v18.receiver = self;
  v18.super_class = LACDTOServiceXPCHost;
  v15 = [(LACDTOServiceXPCHost *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_featureController, controller);
    objc_storeStrong(&v16->_ratchetStateProvider, provider);
    objc_storeStrong(&v16->_pendingEvaluationController, evaluationController);
    objc_storeStrong(&v16->_trustStateProvider, stateProvider);
  }

  return v16;
}

- (void)cancelPendingEvaluationWithRatchetIdentifier:(id)identifier reason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  identifierCopy = identifier;
  v11 = [LACXPCClient alloc];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v13 = [(LACXPCClient *)v11 initWithConnection:currentConnection];

  [(LACDTOPendingPolicyEvaluationController *)self->_pendingEvaluationController cancelPendingEvaluationForClient:v13 ratchetIdentifier:identifierCopy reason:reasonCopy completion:completionCopy];
}

@end