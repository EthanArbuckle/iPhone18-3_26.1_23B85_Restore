@interface LACDTOSensorTrustService
- (LACDTOSensorTrustService)initWithReplyQueue:(id)queue uiController:(id)controller store:(id)store featureStateProvider:(id)provider;
- (id)_trustStore;
- (id)_trustVerifier;
- (id)_uiPresenter;
- (id)evaluationProcessor;
@end

@implementation LACDTOSensorTrustService

- (id)evaluationProcessor
{
  _trustVerifier = [(LACDTOSensorTrustService *)self _trustVerifier];
  _trustStore = [(LACDTOSensorTrustService *)self _trustStore];
  _uiPresenter = [(LACDTOSensorTrustService *)self _uiPresenter];
  v6 = [[LACDTOSensorTrustController alloc] initWithReplyQueue:self->_replyQueue ui:_uiPresenter store:_trustStore verifier:_trustVerifier flags:self->_flags];

  return v6;
}

- (id)_trustVerifier
{
  v3 = [LACDTOSensorTrustVerifier alloc];
  trustStateProvider = [(LACDTOSensorTrustService *)self trustStateProvider];
  featureStateProvider = self->_featureStateProvider;
  _repairStateProvider = [(LACDTOSensorTrustService *)self _repairStateProvider];
  v7 = [(LACDTOSensorTrustVerifier *)v3 initWithTrustStateProvider:trustStateProvider featureStateProvider:featureStateProvider repairStateProvider:_repairStateProvider];

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

- (LACDTOSensorTrustService)initWithReplyQueue:(id)queue uiController:(id)controller store:(id)store featureStateProvider:(id)provider
{
  queueCopy = queue;
  controllerCopy = controller;
  storeCopy = store;
  providerCopy = provider;
  v22.receiver = self;
  v22.super_class = LACDTOSensorTrustService;
  v15 = [(LACDTOSensorTrustService *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_replyQueue, queue);
    objc_storeStrong(&v16->_uiController, controller);
    objc_storeStrong(&v16->_store, store);
    objc_storeStrong(&v16->_featureStateProvider, provider);
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