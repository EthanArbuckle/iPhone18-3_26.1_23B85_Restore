@interface HMDDeviceHomeKitSetupSession
- (BOOL)shouldRelayRequest;
- (HMDDeviceHomeKitSetupSession)initWithFirstResidentForHome:(BOOL)a3 clientConnection:(id)a4;
- (HMDXPCClientConnection)clientConnection;
@end

@implementation HMDDeviceHomeKitSetupSession

- (HMDXPCClientConnection)clientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);

  return WeakRetained;
}

- (BOOL)shouldRelayRequest
{
  if ([(HMDDeviceHomeKitSetupSession *)self isFirstResidentForHome])
  {
    return 0;
  }

  else
  {
    return ![(HMDDeviceHomeKitSetupSession *)self hasFailedRelayAttempt];
  }
}

- (HMDDeviceHomeKitSetupSession)initWithFirstResidentForHome:(BOOL)a3 clientConnection:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HMDDeviceHomeKitSetupSession;
  v7 = [(HMDDeviceHomeKitSetupSession *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_firstResidentForHome = a3;
    objc_storeWeak(&v7->_clientConnection, v6);
  }

  return v8;
}

@end