@interface _HMDCameraPowerAssertion
- (HMDCameraPowerAssertionHandler)assertionHandler;
- (_HMDCameraPowerAssertion)initWithPowerAssertionHandler:(id)handler remoteRequestHandlerSessionID:(id)d;
- (void)dealloc;
@end

@implementation _HMDCameraPowerAssertion

- (HMDCameraPowerAssertionHandler)assertionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_assertionHandler);

  return WeakRetained;
}

- (void)dealloc
{
  assertionHandler = [(_HMDCameraPowerAssertion *)self assertionHandler];
  remoteRequestHandlerSessionID = [(_HMDCameraPowerAssertion *)self remoteRequestHandlerSessionID];
  [assertionHandler deregisterRemoteRequestHandler:remoteRequestHandlerSessionID];

  v5.receiver = self;
  v5.super_class = _HMDCameraPowerAssertion;
  [(_HMDCameraPowerAssertion *)&v5 dealloc];
}

- (_HMDCameraPowerAssertion)initWithPowerAssertionHandler:(id)handler remoteRequestHandlerSessionID:(id)d
{
  handlerCopy = handler;
  dCopy = d;
  v11.receiver = self;
  v11.super_class = _HMDCameraPowerAssertion;
  v8 = [(_HMDCameraPowerAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_assertionHandler, handlerCopy);
    objc_storeStrong(&v9->_remoteRequestHandlerSessionID, d);
  }

  return v9;
}

@end