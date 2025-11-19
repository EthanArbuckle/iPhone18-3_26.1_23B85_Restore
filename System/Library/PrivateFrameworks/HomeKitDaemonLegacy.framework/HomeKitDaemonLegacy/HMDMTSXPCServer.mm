@interface HMDMTSXPCServer
- (HMDMTSXPCServer)initWithPairingServer:(id)a3 deviceSetupServer:(id)a4 networkCredentialServer:(id)a5 authorizationServer:(id)a6;
- (HMDMTSXPCServer)initWithPairingServer:(id)a3 deviceSetupServer:(id)a4 networkCredentialServer:(id)a5 authorizationServer:(id)a6 xpcServer:(id)a7;
- (void)start;
@end

@implementation HMDMTSXPCServer

- (void)start
{
  v3 = [(HMDMTSXPCServer *)self pairingServer];
  v4 = [(HMDMTSXPCServer *)self xpcServer];
  [v4 setDevicePairingServer:v3];

  v5 = [(HMDMTSXPCServer *)self deviceSetupServer];
  v6 = [(HMDMTSXPCServer *)self xpcServer];
  [v6 setDeviceSetupServer:v5];

  v7 = [(HMDMTSXPCServer *)self pairingServer];
  v8 = [(HMDMTSXPCServer *)self xpcServer];
  [v8 setSystemCommissionerPairingServer:v7];

  v9 = [(HMDMTSXPCServer *)self authorizationServer];
  v10 = [(HMDMTSXPCServer *)self xpcServer];
  [v10 setAuthorizationServer:v9];

  v11 = [(HMDMTSXPCServer *)self networkCredentialServer];
  v12 = [(HMDMTSXPCServer *)self xpcServer];
  [v12 setNetworkCredentialServer:v11];

  v13 = [(HMDMTSXPCServer *)self xpcServer];
  [v13 start];
}

- (HMDMTSXPCServer)initWithPairingServer:(id)a3 deviceSetupServer:(id)a4 networkCredentialServer:(id)a5 authorizationServer:(id)a6 xpcServer:(id)a7
{
  v13 = a3;
  v14 = a4;
  v27 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v14)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v15)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v17 = v16;
  if (!v16)
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
    objc_storeStrong(&v18->_pairingServer, a3);
    objc_storeStrong(&v19->_deviceSetupServer, a4);
    objc_storeStrong(&v19->_networkCredentialServer, a5);
    objc_storeStrong(&v19->_authorizationServer, a6);
    objc_storeStrong(&v19->_xpcServer, a7);
  }

  return v19;
}

- (HMDMTSXPCServer)initWithPairingServer:(id)a3 deviceSetupServer:(id)a4 networkCredentialServer:(id)a5 authorizationServer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!v11)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v14 = v13;
  if (v13)
  {
    v15 = objc_alloc_init(MEMORY[0x277CD55F0]);
    v16 = [(HMDMTSXPCServer *)self initWithPairingServer:v10 deviceSetupServer:v11 networkCredentialServer:v12 authorizationServer:v14 xpcServer:v15];

    return v16;
  }

LABEL_7:
  v18 = _HMFPreconditionFailure();
  [(HMDHAPAccessory *)v18 .cxx_destruct];
  return result;
}

@end