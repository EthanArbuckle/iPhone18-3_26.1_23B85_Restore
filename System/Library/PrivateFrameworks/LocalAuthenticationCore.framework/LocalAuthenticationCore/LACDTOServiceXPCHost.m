@interface LACDTOServiceXPCHost
- (LACDTOServiceXPCHost)initWithFeatureController:(id)a3 ratchetStateProvider:(id)a4 trustStateProvider:(id)a5 pendingEvaluationController:(id)a6;
- (void)cancelPendingEvaluationWithRatchetIdentifier:(id)a3 reason:(id)a4 completion:(id)a5;
@end

@implementation LACDTOServiceXPCHost

- (LACDTOServiceXPCHost)initWithFeatureController:(id)a3 ratchetStateProvider:(id)a4 trustStateProvider:(id)a5 pendingEvaluationController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = LACDTOServiceXPCHost;
  v15 = [(LACDTOServiceXPCHost *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_featureController, a3);
    objc_storeStrong(&v16->_ratchetStateProvider, a4);
    objc_storeStrong(&v16->_pendingEvaluationController, a6);
    objc_storeStrong(&v16->_trustStateProvider, a5);
  }

  return v16;
}

- (void)cancelPendingEvaluationWithRatchetIdentifier:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [LACXPCClient alloc];
  v12 = [MEMORY[0x1E696B0B8] currentConnection];
  v13 = [(LACXPCClient *)v11 initWithConnection:v12];

  [(LACDTOPendingPolicyEvaluationController *)self->_pendingEvaluationController cancelPendingEvaluationForClient:v13 ratchetIdentifier:v10 reason:v9 completion:v8];
}

@end