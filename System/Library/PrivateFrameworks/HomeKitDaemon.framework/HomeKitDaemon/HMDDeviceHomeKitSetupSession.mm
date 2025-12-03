@interface HMDDeviceHomeKitSetupSession
- (BOOL)shouldRelayRequest;
- (HMDDeviceHomeKitSetupSession)initWithFirstResidentForHome:(BOOL)home clientConnection:(id)connection;
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

- (HMDDeviceHomeKitSetupSession)initWithFirstResidentForHome:(BOOL)home clientConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = HMDDeviceHomeKitSetupSession;
  v7 = [(HMDDeviceHomeKitSetupSession *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_firstResidentForHome = home;
    objc_storeWeak(&v7->_clientConnection, connectionCopy);
  }

  return v8;
}

@end