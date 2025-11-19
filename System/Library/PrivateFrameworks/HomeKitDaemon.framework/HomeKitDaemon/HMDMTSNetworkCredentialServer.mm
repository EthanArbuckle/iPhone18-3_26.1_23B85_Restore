@interface HMDMTSNetworkCredentialServer
+ (id)logCategory;
- (HMDMTSNetworkCredentialServer)initWithSystemCommissionerPairingManager:(id)a3;
- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)a3 completionHandler:(id)a4;
@end

@implementation HMDMTSNetworkCredentialServer

- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDMTSNetworkCredentialServer *)self systemCommissionerPairingManager];
  [v8 retrievePreferredThreadCredentialsOrCreateWithDataset:v7 completionHandler:v6];
}

- (HMDMTSNetworkCredentialServer)initWithSystemCommissionerPairingManager:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v11.receiver = self;
    v11.super_class = HMDMTSNetworkCredentialServer;
    v6 = [(HMDMTSNetworkCredentialServer *)&v11 init];
    systemCommissionerPairingManager = v6->_systemCommissionerPairingManager;
    v6->_systemCommissionerPairingManager = v5;

    return v6;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return +[(HMDMTSNetworkCredentialServer *)v9];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_75377 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_75377, &__block_literal_global_75378);
  }

  v3 = logCategory__hmf_once_v1_75379;

  return v3;
}

void __44__HMDMTSNetworkCredentialServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_75379;
  logCategory__hmf_once_v1_75379 = v1;
}

@end