@interface LACDTOSensorTrustService
- (LACDTOSensorTrustService)initWithReplyQueue:(id)a3 uiController:(id)a4 store:(id)a5 featureStateProvider:(id)a6;
- (id)_trustStore;
- (id)_trustVerifier;
- (id)_uiPresenter;
- (id)evaluationProcessor;
@end

@implementation LACDTOSensorTrustService

- (id)evaluationProcessor
{
  v3 = [(LACDTOSensorTrustService *)self _trustVerifier];
  v4 = [(LACDTOSensorTrustService *)self _trustStore];
  v5 = [(LACDTOSensorTrustService *)self _uiPresenter];
  v6 = [[LACDTOSensorTrustController alloc] initWithReplyQueue:self->_replyQueue ui:v5 store:v4 verifier:v3 flags:self->_flags];

  return v6;
}

- (id)_trustVerifier
{
  v3 = [LACDTOSensorTrustVerifier alloc];
  v4 = [(LACDTOSensorTrustService *)self trustStateProvider];
  featureStateProvider = self->_featureStateProvider;
  v6 = [(LACDTOSensorTrustService *)self _repairStateProvider];
  v7 = [(LACDTOSensorTrustVerifier *)v3 initWithTrustStateProvider:v4 featureStateProvider:featureStateProvider repairStateProvider:v6];

  return v7;
}

- (id)_trustStore
{
  v2 = [[LACDTOSensorTrustStoreKVSAdapter alloc] initWithKVStore:self->_store];

  return v2;
}

- (id)_uiPresenter
{
  v2 = [[LACUserInterfacePresenter alloc] initWithReplyQueue:self->_replyQueue uiController:self->_uiController];

  return v2;
}

- (LACDTOSensorTrustService)initWithReplyQueue:(id)a3 uiController:(id)a4 store:(id)a5 featureStateProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = LACDTOSensorTrustService;
  v15 = [(LACDTOSensorTrustService *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_replyQueue, a3);
    objc_storeStrong(&v16->_uiController, a4);
    objc_storeStrong(&v16->_store, a5);
    objc_storeStrong(&v16->_featureStateProvider, a6);
    v17 = +[LACFlags sharedInstance];
    flags = v16->_flags;
    v16->_flags = v17;

    v19 = [[LACDTOSensorTrustStateProvider alloc] initWithStore:v16->_store];
    trustStateProvider = v16->_trustStateProvider;
    v16->_trustStateProvider = v19;
  }

  return v16;
}

@end