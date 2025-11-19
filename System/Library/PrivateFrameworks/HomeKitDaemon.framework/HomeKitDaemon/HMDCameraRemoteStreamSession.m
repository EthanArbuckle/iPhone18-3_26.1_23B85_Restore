@interface HMDCameraRemoteStreamSession
+ (id)logCategory;
- (HMDCameraRemoteStreamSession)initWithSessionID:(id)a3 reachabilityPath:(unint64_t)a4 streamSender:(id)a5 streamReceiver:(id)a6 remoteCapabilities:(id)a7 streamPreference:(id)a8;
- (NSString)stateDescription;
- (id)logIdentifier;
- (void)updateState:(int64_t)a3;
@end

@implementation HMDCameraRemoteStreamSession

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
    if ([(HMDCameraRemoteStreamSession *)self containsState:v4])
    {
      v5 = HMDCameraRemoteStreamSessionStateAsString(v4);
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
  [(HMDCameraRemoteStreamSession *)self setStreamState:[(HMDCameraRemoteStreamSession *)self streamState]| a3];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDCameraRemoteStreamSessionStateAsString(a3);
    v10 = [(HMDCameraRemoteStreamSession *)v6 stateDescription];
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

- (HMDCameraRemoteStreamSession)initWithSessionID:(id)a3 reachabilityPath:(unint64_t)a4 streamSender:(id)a5 streamReceiver:(id)a6 remoteCapabilities:(id)a7 streamPreference:(id)a8
{
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a7;
  v19 = a3;
  v20 = isWatch();
  v21 = 4;
  if (a4 != 3)
  {
    v21 = 1;
  }

  if (a4 == 2)
  {
    v21 = 3;
  }

  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v25.receiver = self;
  v25.super_class = HMDCameraRemoteStreamSession;
  v23 = [(HMDCameraStreamSession *)&v25 initWithSessionID:v19 streamingTierType:v22 remoteCapabilities:v18 streamPreference:v17];

  if (v23)
  {
    objc_storeStrong(&v23->_streamSender, a5);
    objc_storeStrong(&v23->_streamReceiver, a6);
    v23->_streamState = 0;
  }

  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_143725 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_143725, &__block_literal_global_143726);
  }

  v3 = logCategory__hmf_once_v2_143727;

  return v3;
}

void __43__HMDCameraRemoteStreamSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_143727;
  logCategory__hmf_once_v2_143727 = v1;
}

@end