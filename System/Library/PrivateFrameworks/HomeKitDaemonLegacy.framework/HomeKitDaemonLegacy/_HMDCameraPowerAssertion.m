@interface _HMDCameraPowerAssertion
- (HMDCameraPowerAssertionHandler)assertionHandler;
- (_HMDCameraPowerAssertion)initWithPowerAssertionHandler:(id)a3 remoteRequestHandlerSessionID:(id)a4;
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
  v3 = [(_HMDCameraPowerAssertion *)self assertionHandler];
  v4 = [(_HMDCameraPowerAssertion *)self remoteRequestHandlerSessionID];
  [v3 deregisterRemoteRequestHandler:v4];

  v5.receiver = self;
  v5.super_class = _HMDCameraPowerAssertion;
  [(_HMDCameraPowerAssertion *)&v5 dealloc];
}

- (_HMDCameraPowerAssertion)initWithPowerAssertionHandler:(id)a3 remoteRequestHandlerSessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _HMDCameraPowerAssertion;
  v8 = [(_HMDCameraPowerAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_assertionHandler, v6);
    objc_storeStrong(&v9->_remoteRequestHandlerSessionID, a4);
  }

  return v9;
}

@end