@interface HMDCameraMediaParameterSelection
- (BOOL)findBestMatchWithProtocolParameters:(id)parameters streamingCapabilities:(id)capabilities videoTierParameters:(id)tierParameters;
- (void)setReselectedConfigParameters:(id)parameters videoTier:(id)tier;
- (void)setSelectedConfigParameters:(id)parameters;
- (void)setSelectedEndPointSetupParameters:(id)parameters videoNetworkConfig:(id)config audioNetworkConfig:(id)networkConfig;
@end

@implementation HMDCameraMediaParameterSelection

- (void)setReselectedConfigParameters:(id)parameters videoTier:(id)tier
{
  tierCopy = tier;
  parametersCopy = parameters;
  v8 = [HMDSessionControl alloc];
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  sessionID = [(HMDCameraParameterSelection *)self sessionID];
  v10SessionID = [sessionID sessionID];
  v12 = [v9 initWithUUIDString:v10SessionID];
  v16 = [(HMDSessionControl *)v8 initWithCommand:4 sessionIdentifier:v12];

  videoParameterSelection = [(HMDCameraMediaParameterSelection *)self videoParameterSelection];
  v14 = [videoParameterSelection createReselectedVideoParameters:tierCopy];

  v15 = [[HMDReselectedStreamConfigurationWrite alloc] initWithSessionControl:v16 videoParameters:v14];
  [parametersCopy setReselectedStreamConfigurationWrite:v15];
}

- (void)setSelectedConfigParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [HMDSessionControl alloc];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  sessionID = [(HMDCameraParameterSelection *)self sessionID];
  v7SessionID = [sessionID sessionID];
  v9 = [v6 initWithUUIDString:v7SessionID];
  v15 = [(HMDSessionControl *)v5 initWithCommand:1 sessionIdentifier:v9];

  videoParameterSelection = [(HMDCameraMediaParameterSelection *)self videoParameterSelection];
  createSelectedVideoParameters = [videoParameterSelection createSelectedVideoParameters];

  audioParameterSelection = [(HMDCameraMediaParameterSelection *)self audioParameterSelection];
  createSelectedAudioParameters = [audioParameterSelection createSelectedAudioParameters];

  v14 = [[HMDSelectedStreamConfigurationWrite alloc] initWithSessionControl:v15 videoParameters:createSelectedVideoParameters audioParameters:createSelectedAudioParameters];
  [parametersCopy setSelectedStreamConfigurationWrite:v14];
}

- (void)setSelectedEndPointSetupParameters:(id)parameters videoNetworkConfig:(id)config audioNetworkConfig:(id)networkConfig
{
  v38 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  configCopy = config;
  networkConfigCopy = networkConfig;
  v11 = [HMDEndPointAddress alloc];
  ipAddress = [configCopy ipAddress];
  ipv6 = [configCopy ipv6];
  rtpPort = [configCopy rtpPort];
  rtpPort2 = [networkConfigCopy rtpPort];
  v16 = [(HMDEndPointAddress *)v11 initWithIPAddress:ipAddress isIPv6Address:ipv6 videoRTPPort:rtpPort audioRTPPort:rtpPort2];

  videoParameterSelection = [(HMDCameraMediaParameterSelection *)self videoParameterSelection];
  createSRTPParamters = [videoParameterSelection createSRTPParamters];

  if (createSRTPParamters)
  {
    audioParameterSelection = [(HMDCameraMediaParameterSelection *)self audioParameterSelection];
    createSRTPParamters2 = [audioParameterSelection createSRTPParamters];

    if (createSRTPParamters2)
    {
      v21 = [HMDSetupEndPointWrite alloc];
      v22 = objc_alloc(MEMORY[0x277CCAD78]);
      sessionID = [(HMDCameraParameterSelection *)self sessionID];
      v23SessionID = [sessionID sessionID];
      v25 = [v22 initWithUUIDString:v23SessionID];
      v26 = [(HMDSetupEndPointWrite *)v21 initWithSessionIdentifier:v25 address:v16 videoSrtpParameters:createSRTPParamters audioSrtpParameters:createSRTPParamters2];

      [parametersCopy setSetupEndPointWrite:v26];
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio SRTP parameters", &v36, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video SRTP parameters", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)findBestMatchWithProtocolParameters:(id)parameters streamingCapabilities:(id)capabilities videoTierParameters:(id)tierParameters
{
  v34 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  capabilitiesCopy = capabilities;
  tierParametersCopy = tierParameters;
  v11 = [HMDCameraVideoParameterSelection alloc];
  sessionID = [(HMDCameraParameterSelection *)self sessionID];
  supportedVideoStreamConfiguration = [parametersCopy supportedVideoStreamConfiguration];
  supportedRTPConfiguration = [parametersCopy supportedRTPConfiguration];
  v15 = [(HMDCameraVideoParameterSelection *)v11 initWithSessionID:sessionID videoTierParameters:tierParametersCopy supportedVideoConfiguration:supportedVideoStreamConfiguration supportedRTPConfiguration:supportedRTPConfiguration streamingCapabilities:capabilitiesCopy];

  if ([(HMDCameraVideoParameterSelection *)v15 selectVideoParameters])
  {
    v16 = [HMDCameraAudioParameterSelection alloc];
    sessionID2 = [(HMDCameraParameterSelection *)self sessionID];
    supportedAudioStreamConfiguration = [parametersCopy supportedAudioStreamConfiguration];
    supportedRTPConfiguration2 = [parametersCopy supportedRTPConfiguration];
    v20 = [(HMDCameraAudioParameterSelection *)v16 initWithSessionID:sessionID2 supportedAudioConfiguration:supportedAudioStreamConfiguration supportedRTPConfiguration:supportedRTPConfiguration2 streamingCapabilities:capabilitiesCopy];

    selectAudioParameters = [(HMDCameraAudioParameterSelection *)v20 selectAudioParameters];
    if (selectAudioParameters)
    {
      [(HMDCameraMediaParameterSelection *)self setVideoParameterSelection:v15];
      [(HMDCameraMediaParameterSelection *)self setAudioParameterSelection:v20];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v32 = 138543362;
        v33 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to select audio config", &v32, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to select video config", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    selectAudioParameters = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return selectAudioParameters;
}

@end