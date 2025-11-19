@interface HMDCameraLocalStreamSession
+ (id)logCategory;
- (HMDCameraLocalStreamSession)initWithSessionID:(id)a3 reachabilityPath:(unint64_t)a4 streamSender:(id)a5 remoteCapabilities:(id)a6 localNetworkConfig:(id)a7 streamPreference:(id)a8;
- (NSString)stateDescription;
- (id)logIdentifier;
- (void)updateState:(int64_t)a3;
@end

@implementation HMDCameraLocalStreamSession

- (id)logIdentifier
{
  v2 = [(HMDCameraStreamSession *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (NSString)stateDescription
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = 1;
  do
  {
    if ([(HMDCameraLocalStreamSession *)self containsState:v4])
    {
      v5 = HMDCameraLocalStreamSessionStateAsString(v4);
      [v3 addObject:v5];
    }

    v6 = v4 >= 5;
    v4 *= 2;
  }

  while (!v6);
  v7 = [v3 componentsJoinedByString:{@", "}];

  return v7;
}

- (void)updateState:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  [(HMDCameraLocalStreamSession *)self setStreamState:[(HMDCameraLocalStreamSession *)self streamState]| a3];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDCameraLocalStreamSessionStateAsString(a3);
    v10 = [(HMDCameraLocalStreamSession *)v6 stateDescription];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated with state %@ to %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (HMDCameraLocalStreamSession)initWithSessionID:(id)a3 reachabilityPath:(unint64_t)a4 streamSender:(id)a5 remoteCapabilities:(id)a6 localNetworkConfig:(id)a7 streamPreference:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (isWatch())
  {
    v18 = 0;
  }

  else if (isiPadDevice() || isAppleTV())
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v24.receiver = self;
  v24.super_class = HMDCameraLocalStreamSession;
  v19 = [(HMDCameraStreamSession *)&v24 initWithSessionID:v13 streamingTierType:v18 remoteCapabilities:v15 streamPreference:v17];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_streamSender, a5);
    v20->_streamState = 0;
    v21 = [(HMDCameraParameterSelection *)[HMDCameraMediaParameterSelection alloc] initWithSessionID:v13];
    parameterSelection = v20->_parameterSelection;
    v20->_parameterSelection = v21;

    objc_storeStrong(&v20->_localNetworkConfig, a7);
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_245070 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_245070, &__block_literal_global_245071);
  }

  v3 = logCategory__hmf_once_v2_245072;

  return v3;
}

void __42__HMDCameraLocalStreamSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_245072;
  logCategory__hmf_once_v2_245072 = v1;
}

@end