@interface HMDCameraMediaParameterSelection
- (BOOL)findBestMatchWithProtocolParameters:(id)a3 streamingCapabilities:(id)a4 videoTierParameters:(id)a5;
- (void)setReselectedConfigParameters:(id)a3 videoTier:(id)a4;
- (void)setSelectedConfigParameters:(id)a3;
- (void)setSelectedEndPointSetupParameters:(id)a3 videoNetworkConfig:(id)a4 audioNetworkConfig:(id)a5;
@end

@implementation HMDCameraMediaParameterSelection

- (void)setReselectedConfigParameters:(id)a3 videoTier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HMDSessionControl alloc];
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [(HMDCameraParameterSelection *)self sessionID];
  v11 = [v10 sessionID];
  v12 = [v9 initWithUUIDString:v11];
  v16 = [(HMDSessionControl *)v8 initWithCommand:4 sessionIdentifier:v12];

  v13 = [(HMDCameraMediaParameterSelection *)self videoParameterSelection];
  v14 = [v13 createReselectedVideoParameters:v6];

  v15 = [[HMDReselectedStreamConfigurationWrite alloc] initWithSessionControl:v16 videoParameters:v14];
  [v7 setReselectedStreamConfigurationWrite:v15];
}

- (void)setSelectedConfigParameters:(id)a3
{
  v4 = a3;
  v5 = [HMDSessionControl alloc];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [(HMDCameraParameterSelection *)self sessionID];
  v8 = [v7 sessionID];
  v9 = [v6 initWithUUIDString:v8];
  v15 = [(HMDSessionControl *)v5 initWithCommand:1 sessionIdentifier:v9];

  v10 = [(HMDCameraMediaParameterSelection *)self videoParameterSelection];
  v11 = [v10 createSelectedVideoParameters];

  v12 = [(HMDCameraMediaParameterSelection *)self audioParameterSelection];
  v13 = [v12 createSelectedAudioParameters];

  v14 = [[HMDSelectedStreamConfigurationWrite alloc] initWithSessionControl:v15 videoParameters:v11 audioParameters:v13];
  [v4 setSelectedStreamConfigurationWrite:v14];
}

- (void)setSelectedEndPointSetupParameters:(id)a3 videoNetworkConfig:(id)a4 audioNetworkConfig:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [HMDEndPointAddress alloc];
  v12 = [v9 ipAddress];
  v13 = [v9 ipv6];
  v14 = [v9 rtpPort];
  v15 = [v10 rtpPort];
  v16 = [(HMDEndPointAddress *)v11 initWithIPAddress:v12 isIPv6Address:v13 videoRTPPort:v14 audioRTPPort:v15];

  v17 = [(HMDCameraMediaParameterSelection *)self videoParameterSelection];
  v18 = [v17 createSRTPParamters];

  if (v18)
  {
    v19 = [(HMDCameraMediaParameterSelection *)self audioParameterSelection];
    v20 = [v19 createSRTPParamters];

    if (v20)
    {
      v21 = [HMDSetupEndPointWrite alloc];
      v22 = objc_alloc(MEMORY[0x277CCAD78]);
      v23 = [(HMDCameraParameterSelection *)self sessionID];
      v24 = [v23 sessionID];
      v25 = [v22 initWithUUIDString:v24];
      v26 = [(HMDSetupEndPointWrite *)v21 initWithSessionIdentifier:v25 address:v16 videoSrtpParameters:v18 audioSrtpParameters:v20];

      [v8 setSetupEndPointWrite:v26];
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v34;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio SRTP parameters", &v36, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video SRTP parameters", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)findBestMatchWithProtocolParameters:(id)a3 streamingCapabilities:(id)a4 videoTierParameters:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [HMDCameraVideoParameterSelection alloc];
  v12 = [(HMDCameraParameterSelection *)self sessionID];
  v13 = [v8 supportedVideoStreamConfiguration];
  v14 = [v8 supportedRTPConfiguration];
  v15 = [(HMDCameraVideoParameterSelection *)v11 initWithSessionID:v12 videoTierParameters:v10 supportedVideoConfiguration:v13 supportedRTPConfiguration:v14 streamingCapabilities:v9];

  if ([(HMDCameraVideoParameterSelection *)v15 selectVideoParameters])
  {
    v16 = [HMDCameraAudioParameterSelection alloc];
    v17 = [(HMDCameraParameterSelection *)self sessionID];
    v18 = [v8 supportedAudioStreamConfiguration];
    v19 = [v8 supportedRTPConfiguration];
    v20 = [(HMDCameraAudioParameterSelection *)v16 initWithSessionID:v17 supportedAudioConfiguration:v18 supportedRTPConfiguration:v19 streamingCapabilities:v9];

    v21 = [(HMDCameraAudioParameterSelection *)v20 selectAudioParameters];
    if (v21)
    {
      [(HMDCameraMediaParameterSelection *)self setVideoParameterSelection:v15];
      [(HMDCameraMediaParameterSelection *)self setAudioParameterSelection:v20];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v32 = 138543362;
        v33 = v29;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to select audio config", &v32, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to select video config", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v21;
}

@end