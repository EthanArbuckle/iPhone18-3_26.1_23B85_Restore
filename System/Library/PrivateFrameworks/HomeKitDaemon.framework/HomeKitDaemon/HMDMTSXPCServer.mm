@interface HMDMTSXPCServer
- (HMDMTSXPCServer)initWithPairingServer:(id)server deviceSetupServer:(id)setupServer networkCredentialServer:(id)credentialServer authorizationServer:(id)authorizationServer;
- (HMDMTSXPCServer)initWithPairingServer:(id)server deviceSetupServer:(id)setupServer networkCredentialServer:(id)credentialServer authorizationServer:(id)authorizationServer xpcServer:(id)xpcServer;
- (void)start;
@end

@implementation HMDMTSXPCServer

- (void)start
{
  pairingServer = [(HMDMTSXPCServer *)self pairingServer];
  xpcServer = [(HMDMTSXPCServer *)self xpcServer];
  [xpcServer setDevicePairingServer:pairingServer];

  deviceSetupServer = [(HMDMTSXPCServer *)self deviceSetupServer];
  xpcServer2 = [(HMDMTSXPCServer *)self xpcServer];
  [xpcServer2 setDeviceSetupServer:deviceSetupServer];

  pairingServer2 = [(HMDMTSXPCServer *)self pairingServer];
  xpcServer3 = [(HMDMTSXPCServer *)self xpcServer];
  [xpcServer3 setSystemCommissionerPairingServer:pairingServer2];

  authorizationServer = [(HMDMTSXPCServer *)self authorizationServer];
  xpcServer4 = [(HMDMTSXPCServer *)self xpcServer];
  [xpcServer4 setAuthorizationServer:authorizationServer];

  networkCredentialServer = [(HMDMTSXPCServer *)self networkCredentialServer];
  xpcServer5 = [(HMDMTSXPCServer *)self xpcServer];
  [xpcServer5 setNetworkCredentialServer:networkCredentialServer];

  xpcServer6 = [(HMDMTSXPCServer *)self xpcServer];
  [xpcServer6 start];
}

- (HMDMTSXPCServer)initWithPairingServer:(id)server deviceSetupServer:(id)setupServer networkCredentialServer:(id)credentialServer authorizationServer:(id)authorizationServer xpcServer:(id)xpcServer
{
  serverCopy = server;
  setupServerCopy = setupServer;
  credentialServerCopy = credentialServer;
  authorizationServerCopy = authorizationServer;
  xpcServerCopy = xpcServer;
  if (!serverCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!setupServerCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!authorizationServerCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v17 = xpcServerCopy;
  if (!xpcServerCopy)
  {
LABEL_11:
    v21 = _HMFPreconditionFailure();
    return [(HMDMTSXPCServer *)v21 initWithPairingServer:v22 deviceSetupServer:v23 networkCredentialServer:v24 authorizationServer:v25, v26];
  }

  v28.receiver = self;
  v28.super_class = HMDMTSXPCServer;
  v18 = [(HMDMTSXPCServer *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pairingServer, server);
    objc_storeStrong(&v19->_deviceSetupServer, setupServer);
    objc_storeStrong(&v19->_networkCredentialServer, credentialServer);
    objc_storeStrong(&v19->_authorizationServer, authorizationServer);
    objc_storeStrong(&v19->_xpcServer, xpcServer);
  }

  return v19;
}

- (HMDMTSXPCServer)initWithPairingServer:(id)server deviceSetupServer:(id)setupServer networkCredentialServer:(id)credentialServer authorizationServer:(id)authorizationServer
{
  serverCopy = server;
  setupServerCopy = setupServer;
  credentialServerCopy = credentialServer;
  authorizationServerCopy = authorizationServer;
  if (!serverCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!setupServerCopy)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v14 = authorizationServerCopy;
  if (authorizationServerCopy)
  {
    v15 = objc_alloc_init(MEMORY[0x277CD55F0]);
    v16 = [(HMDMTSXPCServer *)self initWithPairingServer:serverCopy deviceSetupServer:setupServerCopy networkCredentialServer:credentialServerCopy authorizationServer:v14 xpcServer:v15];

    return v16;
  }

LABEL_7:
  v18 = _HMFPreconditionFailure();
  [(HMDUserPresenceFeedRetryTimer *)v18 .cxx_destruct];
  return result;
}

@end