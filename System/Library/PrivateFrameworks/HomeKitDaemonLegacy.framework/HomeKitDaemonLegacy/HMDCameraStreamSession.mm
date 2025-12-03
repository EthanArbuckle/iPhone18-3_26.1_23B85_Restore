@interface HMDCameraStreamSession
+ (id)logCategory;
- (HMDCameraStreamSession)initWithSessionID:(id)d streamingTierType:(unint64_t)type remoteCapabilities:(id)capabilities streamPreference:(id)preference;
- (id)logIdentifier;
- (id)negotiatedParameters;
@end

@implementation HMDCameraStreamSession

- (id)logIdentifier
{
  sessionID = [(HMDCameraStreamSession *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (id)negotiatedParameters
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAB0];
  protocolParameters = [(HMDCameraStreamSession *)self protocolParameters];
  v5 = [v3 archivedDataWithRootObject:protocolParameters requiringSecureCoding:1 error:0];

  v6 = MEMORY[0x277CCAAB0];
  videoTierParameters = [(HMDCameraStreamSession *)self videoTierParameters];
  v8 = [v6 archivedDataWithRootObject:videoTierParameters requiringSecureCoding:1 error:0];

  v9 = 0;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v13[0] = @"kSelectedStreamParameters";
    v13[1] = @"kVideoTierParameters";
    v14[0] = v5;
    v14[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDCameraStreamSession)initWithSessionID:(id)d streamingTierType:(unint64_t)type remoteCapabilities:(id)capabilities streamPreference:(id)preference
{
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  capabilitiesCopy = capabilities;
  preferenceCopy = preference;
  v42.receiver = self;
  v42.super_class = HMDCameraStreamSession;
  v14 = [(HMDCameraStreamSession *)&v42 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sessionID, d);
    v16 = objc_alloc_init(HMDCameraProtocolParameters);
    protocolParameters = v15->_protocolParameters;
    v15->_protocolParameters = v16;

    v18 = [[HMDStreamingCapabilities alloc] initWithStreamPreference:preferenceCopy];
    streamingCapabilities = v15->_streamingCapabilities;
    v15->_streamingCapabilities = v18;

    [(HMDStreamingCapabilities *)v15->_streamingCapabilities setStreamingTierType:type];
    v20 = [capabilitiesCopy hmf_dataForKey:@"kRemoteStreamCapabilities"];
    if (v20)
    {
      v41 = 0;
      v21 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v20 error:&v41];
      v22 = v41;
      if (v21)
      {
        [(HMDStreamingCapabilities *)v15->_streamingCapabilities updateWithRemoteSettings:v21];
      }

      else
      {
        v40 = dCopy;
        v23 = objc_autoreleasePoolPush();
        v24 = v15;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v26 = v39 = v23;
          *buf = 138543618;
          v44 = v26;
          v45 = 2112;
          v46 = v22;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive remote streaming capabilities from remote capabilities data: %@", buf, 0x16u);

          v23 = v39;
        }

        objc_autoreleasePoolPop(v23);
        dCopy = v40;
      }
    }

    videoPreferences = [preferenceCopy videoPreferences];

    if (videoPreferences)
    {
      videoPreferences2 = [preferenceCopy videoPreferences];
      maximumQuality = [videoPreferences2 maximumQuality];
    }

    else
    {
      maximumQuality = 5;
    }

    v30 = [[HMDCameraVideoTierParameters alloc] initWithSessionID:dCopy streamingTierType:[(HMDStreamingCapabilities *)v15->_streamingCapabilities streamingTierType] maximumQuality:maximumQuality];
    videoTierParameters = v15->_videoTierParameters;
    v15->_videoTierParameters = v30;

    v32 = objc_autoreleasePoolPush();
    v33 = v15;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = v15->_streamingCapabilities;
      *buf = 138543618;
      v44 = v35;
      v45 = 2112;
      v46 = v36;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Initialized stream session with capabilities: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_176535 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_176535, &__block_literal_global_176536);
  }

  v3 = logCategory__hmf_once_v3_176537;

  return v3;
}

uint64_t __37__HMDCameraStreamSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_176537;
  logCategory__hmf_once_v3_176537 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end