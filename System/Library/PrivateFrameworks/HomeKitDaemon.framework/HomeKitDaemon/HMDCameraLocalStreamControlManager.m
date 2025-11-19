@interface HMDCameraLocalStreamControlManager
+ (id)logCategory;
- (BOOL)_isSetupEndPointConfigurationValid;
- (BOOL)isSendingStream;
- (HMDCameraLocalStreamControlManager)initWithSessionID:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 reachabilityPath:(unint64_t)a6 device:(id)a7 delegate:(id)a8 accessory:(id)a9 streamManagementService:(id)a10 localNetworkConfig:(id)a11 remoteCapabilities:(id)a12 supportedConfigCache:(id)a13 streamPreference:(id)a14;
- (NSDictionary)stateDump;
- (NSNumber)aspectRatio;
- (NSNumber)audioDownlinkToken;
- (NSNumber)audioUplinkToken;
- (NSNumber)slotIdentifier;
- (id)_calculateMTU;
- (unint64_t)audioStreamSetting;
- (void)_cleanUpStreamSessionWithError:(id)a3;
- (void)_deregisterForHAPSessionRestore;
- (void)_getSupportedConfigurations;
- (void)_reconfigureStreams;
- (void)_registerForHAPSessionRestore;
- (void)_sendSetupEndPointReadRequest;
- (void)_sendSetupEndPointWriteRequest;
- (void)_sendUpdatedConfiguration;
- (void)_startStreamManager;
- (void)_streamStarted;
- (void)_writeReselectConfig;
- (void)_writeStartConfig;
- (void)_writeStopConfig;
- (void)deviceConnectionSender:(id)a3 didEndSessionWithError:(id)a4;
- (void)deviceConnectionSender:(id)a3 didSetUpWithError:(id)a4;
- (void)handleAccessoryDisconnectedNotification:(id)a3;
- (void)negotiateStream;
- (void)reconfigureStream:(id)a3;
- (void)sessionInitiator:(id)a3 didEndSessionWithError:(id)a4;
- (void)sessionInitiator:(id)a3 didSetUpWithError:(id)a4;
- (void)setUpRemoteConnectionWithDevice:(id)a3;
- (void)startStreamWithRemoteSettings:(id)a3;
- (void)stopStreamWithError:(id)a3;
- (void)streamManagerDidNetworkDeteriorate:(id)a3;
- (void)streamManagerDidNetworkImprove:(id)a3;
- (void)streamManagerDidReceiveFirstFrame:(id)a3;
- (void)streamManagerDidStartRelay:(id)a3;
- (void)streamManagerDidStartStream:(id)a3;
- (void)streamManagerDidStopStream:(id)a3 error:(id)a4;
- (void)streamManagerDidUpdateConfiguration:(id)a3;
- (void)updateAudioSetting:(unint64_t)a3;
- (void)updateAudioVolume:(id)a3 callback:(id)a4;
- (void)updateMaximumVideoResolutionQuality:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation HMDCameraLocalStreamControlManager

- (void)_sendUpdatedConfiguration
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCameraLocalStreamControlManager *)self isSendingStream])
  {
    v4 = *MEMORY[0x277D85DE8];

    [(HMDCameraStreamControlManager *)self _callStreamReconfigured];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending updated configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDCameraLocalStreamControlManager *)v6 configGenerator];
    v10 = [(HMDCameraLocalStreamControlManager *)v6 streamSession];
    v11 = [v10 videoTierParameters];
    v12 = [v11 currentPickedTier];
    v22 = 0;
    v13 = [v9 extractReselectedConfigFromVideoTier:v12 videoStreamConfig:&v22];
    v14 = v22;

    if (v13)
    {
      v15 = [(HMDCameraLocalStreamControlManager *)v6 streamSession];
      v16 = [v15 streamManager];
      [v16 updateStreamConfiguration:v14];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v6;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Reselected config failed to extract", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [(HMDCameraStreamControlManager *)v18 _reportInternalErrorCode:1046];
    }

    v21 = *MEMORY[0x277D85DE8];
  }
}

- (void)_reconfigureStreams
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 parameterSelection];
  v6 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v7 = [v6 protocolParameters];
  v8 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v9 = [v8 videoTierParameters];
  v10 = [v9 currentPickedTier];
  [v5 setReselectedConfigParameters:v7 videoTier:v10];

  [(HMDCameraLocalStreamControlManager *)self _writeReselectConfig];
}

- (void)streamManagerDidUpdateConfiguration:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Stream configuration update complete", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraLocalStreamControlManager *)v7 streamSession];
  v11 = [v10 streamManager];
  [v11 updateReconfigurationMode:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)streamManagerDidNetworkDeteriorate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v7 = [v6 videoTierParameters];
  v8 = [v7 pickLowerTier];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Picked a lower tier", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraLocalStreamControlManager *)v10 _reconfigureStreams];
  }

  else
  {
    if (v12)
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Already in lowest tier, not changing the tier", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [(HMDCameraLocalStreamControlManager *)v10 streamSession];
    v16 = [v15 streamManager];
    [v16 updateReconfigurationMode:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)streamManagerDidNetworkImprove:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (![(HMDCameraStreamControlManager *)self _canReconfigureToHigherTier])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v14;
      v15 = "%{public}@Accessory does not support reconfiguring to a higher video tier";
LABEL_10:
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v15, &v19, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v9);
    v16 = [(HMDCameraLocalStreamControlManager *)v10 streamSession];
    v17 = [v16 streamManager];
    [v17 updateReconfigurationMode:0];

    goto LABEL_12;
  }

  v6 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v7 = [v6 videoTierParameters];
  v8 = [v7 pickHigherTier];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v12)
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v14;
      v15 = "%{public}@Already in highest tier, not changing the tier";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v12)
  {
    v13 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Picked a higher tier", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraLocalStreamControlManager *)v10 _reconfigureStreams];
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)streamManagerDidStopStream:(id)a3 error:(id)a4
{
  v8 = a4;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v7 = [v6 containsState:4];

  if (v7)
  {
    [(HMDCameraStreamControlManager *)self _callStreamStoppedWithError:v8];
  }

  else
  {
    [(HMDCameraLocalStreamControlManager *)self _cleanUpStreamSessionWithError:v8];
  }
}

- (void)streamManagerDidStartRelay:(id)a3
{
  v4 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDCameraLocalStreamControlManager *)self _streamStarted];
}

- (void)streamManagerDidReceiveFirstFrame:(id)a3
{
  v4 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDCameraStreamControlManager *)self _callStreamFirstFrameReceived];
}

- (void)streamManagerDidStartStream:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Stream manager did start stream", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraLocalStreamControlManager *)v7 _streamStarted];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectionSender:(id)a3 didEndSessionWithError:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Session stopped, stopping the stream", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraLocalStreamControlManager *)v10 _cleanUpStreamSessionWithError:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectionSender:(id)a3 didSetUpWithError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to set up IDSDeviceConnection for stream", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraLocalStreamControlManager *)v10 _cleanUpStreamSessionWithError:v7];
  }

  else
  {
    [(HMDCameraStreamControlManager *)self _callStreamRemoteConnectionSetup];
    v13 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    [v13 updateState:2];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Device connection sender is set up", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDCameraLocalStreamControlManager *)v15 _startStreamManager];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)sessionInitiator:(id)a3 didEndSessionWithError:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Session stopped, stopping the stream", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraLocalStreamControlManager *)v10 _cleanUpStreamSessionWithError:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sessionInitiator:(id)a3 didSetUpWithError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to set up IDSSession for stream", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraLocalStreamControlManager *)v10 _cleanUpStreamSessionWithError:v7];
  }

  else
  {
    v13 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    [v13 updateState:2];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Session initiator is setup", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDCameraLocalStreamControlManager *)v15 _startStreamManager];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryDisconnectedNotification:(id)a3
{
  v4 = [(HMDCameraStreamControlManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDCameraLocalStreamControlManager_handleAccessoryDisconnectedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __78__HMDCameraLocalStreamControlManager_handleAccessoryDisconnectedNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping stream because accessory disconnected", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
  [v6 _cleanUpStreamSessionWithError:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_streamStarted
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 streamSender];
  [v5 startKeepAlive];

  [(HMDCameraLocalStreamControlManager *)self _writeStartConfig];
}

- (void)_cleanUpStreamSessionWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraLocalStreamControlManager *)self streamSession];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Cleaning up the stream", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMDCameraLocalStreamControlManager *)v8 streamSession];
    [v12 updateState:8];

    [(HMDCameraLocalStreamControlManager *)v8 _deregisterForHAPSessionRestore];
    v13 = [(HMDCameraLocalStreamControlManager *)v8 streamSession];
    v14 = [v13 streamManager];
    [v14 stopStream];

    [(HMDCameraLocalStreamControlManager *)v8 _writeStopConfig];
    [(HMDCameraLocalStreamControlManager *)v8 setStreamSession:0];
    [(HMDCameraStreamControlManager *)v8 _callStreamStoppedWithError:v4];
  }

  else
  {
    if (v10)
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@No current stream session to clean up", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_writeStopConfig
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];

  if (!v4)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v22;
      v23 = "%{public}@No current stream session to write stop config for";
LABEL_10:
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, v23, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v19);
    goto LABEL_12;
  }

  v5 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v6 = [v5 containsState:1];

  if ((v6 & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v22;
      v23 = "%{public}@Not writing stop stream configuration because stream never started";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v7 = [HMDSessionControl alloc];
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [(HMDCameraStreamControlManager *)self sessionID];
  v10 = [v9 sessionID];
  v11 = [v8 initWithUUIDString:v10];
  v12 = [(HMDSessionControl *)v7 initWithCommand:0 sessionIdentifier:v11];

  v13 = [[HMDSelectedStreamConfigurationWrite alloc] initWithSessionControl:v12];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Writing stop stream configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [(HMDCameraLocalStreamControlManager *)v15 accessoryCommunicator];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54__HMDCameraLocalStreamControlManager__writeStopConfig__block_invoke;
  v25[3] = &unk_27868A250;
  v25[4] = v15;
  [v18 writeSelectedStreamConfiguration:v13 completion:v25];

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];
}

void __54__HMDCameraLocalStreamControlManager__writeStopConfig__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      v9 = "%{public}@Failed to write stop stream configuration: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@Successfully wrote stop stream configuration";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_writeReselectConfig
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 protocolParameters];
  v6 = [v5 reselectedStreamConfigurationWrite];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Writing reselect stream configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDCameraLocalStreamControlManager *)v8 accessoryCommunicator];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HMDCameraLocalStreamControlManager__writeReselectConfig__block_invoke;
  v13[3] = &unk_27868A250;
  v13[4] = v8;
  [v11 writeReselectedStreamConfiguration:v6 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __58__HMDCameraLocalStreamControlManager__writeReselectConfig__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to write reselect stream configuration: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully wrote reselect stream configuration", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _sendUpdatedConfiguration];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_writeStartConfig
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 protocolParameters];
  v6 = [v5 selectedStreamConfigurationWrite];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Writing start stream configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDCameraLocalStreamControlManager *)v8 accessoryCommunicator];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HMDCameraLocalStreamControlManager__writeStartConfig__block_invoke;
  v13[3] = &unk_27868A250;
  v13[4] = v8;
  [v11 writeSelectedStreamConfiguration:v6 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __55__HMDCameraLocalStreamControlManager__writeStartConfig__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to write start stream configuration: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _reportInternalErrorCode:1056];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully wrote start stream configuration", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _callStreamStarted];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopStreamWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDCameraStreamControlManager *)v7 sessionID];
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received request to stop the stream with session ID %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraLocalStreamControlManager *)v7 _cleanUpStreamSessionWithError:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateMaximumVideoResolutionQuality:(int64_t)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v11;
    v25 = 2048;
    v26 = a3;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to update maximum video resolution quality: %lu", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDCameraLocalStreamControlManager *)v9 streamSession];

  if (v12)
  {
    v13 = [(HMDCameraLocalStreamControlManager *)v9 streamSession];
    v14 = [v13 videoTierParameters];
    [v14 setMaximumQuality:a3];

    v15 = [(HMDCameraLocalStreamControlManager *)v9 streamSession];
    v16 = [v15 videoTierParameters];
    LODWORD(v14) = [v16 pickBestTier];

    if (v14)
    {
      [(HMDCameraLocalStreamControlManager *)v9 _reconfigureStreams];
    }

    v6[2](v6, 0);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v9;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@No current stream session to reconfigure", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (v6)[2](v6, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)reconfigureStream:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDCameraStreamControlManager *)v7 sessionID];
    *buf = 138543618;
    v38 = v9;
    v39 = 2112;
    v40 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received request to reconfigure the stream with session ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraLocalStreamControlManager *)v7 streamSession];

  if (v11)
  {
    v12 = [v4 hmf_dataForKey:@"kReconfiguredTier"];
    if (v12)
    {
      v36 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v36];
      v14 = v36;
      v15 = objc_autoreleasePoolPush();
      v16 = v7;
      v17 = HMFGetOSLogHandle();
      v18 = v17;
      if (v13)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          [(HMDCameraLocalStreamControlManager *)v16 streamSession];
          v20 = v35 = v14;
          v21 = [v20 videoTierParameters];
          v22 = [v21 currentPickedTier];
          *buf = 138543874;
          v38 = v19;
          v39 = 2112;
          v40 = v22;
          v41 = 2112;
          v42 = v13;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating the current picked tier from %@ to %@", buf, 0x20u);

          v14 = v35;
        }

        objc_autoreleasePoolPop(v15);
        v23 = [(HMDCameraLocalStreamControlManager *)v16 streamSession];
        v24 = [v23 videoTierParameters];
        [v24 setCurrentPickedTier:v13];

        [(HMDCameraLocalStreamControlManager *)v16 _reconfigureStreams];
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v33;
          v39 = 2112;
          v40 = v14;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive camera video tier from video tier data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        [(HMDCameraStreamControlManager *)v16 _reportInternalErrorCode:1047];
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v7;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v32;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Missing reconfigured tier data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      [(HMDCameraStreamControlManager *)v30 _reportInternalErrorCode:1047];
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v7;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@No current stream session to reconfigure", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    [(HMDCameraStreamControlManager *)v26 _reportErrorCode:3];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_deregisterForHAPSessionRestore
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v5 = [(HMDCameraStreamControlManager *)self accessory];
  v4 = HAPStringFromAccessoryServerSession();
  [v5 deregisterFromSessionRestore:v4];
}

- (void)_registerForHAPSessionRestore
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v5 = [(HMDCameraStreamControlManager *)self accessory];
  v4 = HAPStringFromAccessoryServerSession();
  [v5 registerForSessionRestore:v4];
}

- (void)_startStreamManager
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCameraLocalStreamControlManager *)self isSendingStream])
  {
    v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    v5 = [v4 containsState:2];

    if ((v5 & 1) == 0)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
LABEL_9:
        v31 = HMFGetLogIdentifier();
        v32 = [(HMDCameraLocalStreamControlManager *)v29 streamSession];
        v33 = [v32 stateDescription];
        *buf = 138543618;
        v42 = v31;
        v43 = 2112;
        v44 = v33;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Current state: %@, waiting", buf, 0x16u);
      }

LABEL_10:

      objc_autoreleasePoolPop(v28);
      goto LABEL_15;
    }
  }

  v6 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v7 = [v6 containsState:4];

  if ((v7 & 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v8 = [(HMDCameraLocalStreamControlManager *)self configGenerator];
  v9 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v10 = [v9 protocolParameters];
  v39 = 0;
  v40 = 0;
  v11 = [v8 extractSelectedConfigFromProtocolParameters:v10 videoStreamConfig:&v40 audioStreamConfig:&v39];
  v12 = v40;
  v13 = v39;

  if (v11)
  {
    v14 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    v15 = [v14 protocolParameters];
    v16 = [v15 selectedStreamConfigurationWrite];
    v17 = [v16 videoParameters];
    v18 = [v17 rtpParameters];
    v19 = [v18 synchronizationSource];
    [v12 setDeviceLocalSSRC:{objc_msgSend(v19, "unsignedIntegerValue")}];

    v20 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    v21 = [v20 protocolParameters];
    v22 = [v21 selectedStreamConfigurationWrite];
    v23 = [v22 audioParameters];
    v24 = [v23 rtpParameters];
    v25 = [v24 synchronizationSource];
    [v13 setDeviceLocalSSRC:{objc_msgSend(v25, "unsignedIntegerValue")}];

    v26 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    v27 = [v26 streamManager];
    [v27 startStreamWithVideoConfig:v12 audioConfig:v13];
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v37;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Could not extract a configuration from the given parameters", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    [(HMDCameraStreamControlManager *)v35 _reportInternalErrorCode:1046];
  }

LABEL_15:
  v38 = *MEMORY[0x277D85DE8];
}

- (id)_calculateMTU
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 streamSender];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDCameraLocalStreamControlManager *)v7 streamSession];
      v11 = [v10 streamSender];
      v12 = [v11 mtu];
      v24 = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Reporting stream sender reported MTU %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = [(HMDCameraLocalStreamControlManager *)v7 streamSession];
    v14 = [v13 streamSender];
    v15 = [v14 mtu];
  }

  else
  {
    v16 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    v17 = [v16 protocolParameters];
    v18 = [v17 setupEndPointWrite];
    v19 = [v18 address];
    v20 = [v19 isIPv6Address];

    if (v20)
    {
      v21 = 1228;
    }

    else
    {
      v21 = 1378;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)startStreamWithRemoteSettings:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v66 = v9;
    v67 = 2112;
    v68 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received request to start stream with remote settings: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(HMDCameraLocalStreamControlManager *)v7 isSendingStream])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v7;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Using the sync sources from remote settings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [v4 objectForKeyedSubscript:@"kVideoStreamSSRC"];
    v15 = [v4 objectForKeyedSubscript:@"kAudioStreamSSRC"];
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = [(HMDCameraLocalStreamControlManager *)v7 streamSession];
    v17 = [v16 streamManager];
    v18 = [v17 videoStreamInterface];
    v14 = [v18 syncSource];

    v19 = [(HMDCameraLocalStreamControlManager *)v7 streamSession];
    v20 = [v19 streamManager];
    v21 = [v20 audioStreamInterface];
    v15 = [v21 syncSource];

    if (!v14)
    {
LABEL_14:
      [(HMDCameraStreamControlManager *)v7 _reportInternalErrorCode:1045];
      v44 = objc_autoreleasePoolPush();
      v45 = v7;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543362;
        v66 = v47;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@SSRC is nil, cannot select config parameters", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v44);
      goto LABEL_27;
    }
  }

  if (!v15)
  {
    goto LABEL_14;
  }

  v22 = [(HMDCameraLocalStreamControlManager *)v7 streamSession];
  [v22 updateState:4];

  v23 = [(HMDCameraLocalStreamControlManager *)v7 streamSession];
  v24 = [v23 protocolParameters];
  v25 = [v24 selectedStreamConfigurationWrite];
  v26 = [v25 videoParameters];
  v27 = [v26 rtpParameters];
  [v27 setSynchronizationSource:v14];

  v28 = [(HMDCameraLocalStreamControlManager *)v7 streamSession];
  v29 = [v28 protocolParameters];
  v30 = [v29 selectedStreamConfigurationWrite];
  v31 = [v30 audioParameters];
  v32 = [v31 rtpParameters];
  [v32 setSynchronizationSource:v15];

  v33 = [v4 objectForKeyedSubscript:@"kRemoteStreamMTU"];
  v34 = [(HMDCameraLocalStreamControlManager *)v7 _calculateMTU];
  v35 = v34;
  v63 = v14;
  v64 = v4;
  if (v33)
  {
    v36 = [v34 unsignedIntegerValue];
    v37 = [v33 unsignedIntegerValue];
    v38 = objc_autoreleasePoolPush();
    v39 = v7;
    v40 = HMFGetOSLogHandle();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
    if (v36 >= v37)
    {
      if (v41)
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543362;
        v66 = v49;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Remote MTU is provided, and is lower than local MTU", buf, 0xCu);
      }

      v48 = v33;
      goto LABEL_24;
    }

    if (v41)
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v42;
      v43 = "%{public}@Remote MTU is provided, but is higher than local MTU";
LABEL_19:
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, v43, buf, 0xCu);
    }
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = v7;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v42;
      v43 = "%{public}@Remote MTU isnt provided, picking local MTU";
      goto LABEL_19;
    }
  }

  v48 = v35;
LABEL_24:
  v50 = v15;

  objc_autoreleasePoolPop(v38);
  v51 = v48;
  v52 = objc_autoreleasePoolPush();
  v53 = v7;
  v54 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    v55 = HMFGetLogIdentifier();
    *buf = 138544130;
    v66 = v55;
    v67 = 2112;
    v68 = v33;
    v69 = 2112;
    v70 = v35;
    v71 = 2112;
    v72 = v51;
    _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Remote MTU %@, Local MTU %@, Picked MTU %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v52);
  v56 = [(HMDCameraLocalStreamControlManager *)v53 streamSession];
  v57 = [v56 protocolParameters];
  v58 = [v57 selectedStreamConfigurationWrite];
  v59 = [v58 videoParameters];
  [v59 rtpParameters];
  v61 = v60 = v35;
  [v61 setMaxMTU:v51];

  [(HMDCameraLocalStreamControlManager *)v53 _startStreamManager];
  v15 = v50;
  v14 = v63;
  v4 = v64;
LABEL_27:

  v62 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isSetupEndPointConfigurationValid
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 protocolParameters];
  v6 = [v5 setupEndPointRead];

  v7 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v8 = [v7 protocolParameters];
  v9 = [v8 setupEndPointWrite];

  v10 = [v9 address];
  v11 = [v6 address];
  v12 = [v10 isCompatibleWithRemoteEndPointAddress:v11];

  if ((v12 & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v23 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v23;
    v24 = "%{public}@Setup endpoint configuration is invalid: Addresses are not compatible";
LABEL_11:
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, v24, &v29, 0xCu);

    goto LABEL_12;
  }

  v13 = [v9 videoSrtpParameters];
  v14 = [v6 videoSrtpParameters];
  v15 = [v13 isCompatibleWithRemoteSRTPParameters:v14];

  if ((v15 & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v25 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v23 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v23;
    v24 = "%{public}@Setup endpoint configuration is invalid: Video SRTP parameters are not compatible";
    goto LABEL_11;
  }

  v16 = [v9 audioSrtpParameters];
  v17 = [v6 audioSrtpParameters];
  v18 = [v16 isCompatibleWithRemoteSRTPParameters:v17];

  if ((v18 & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v26 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v23;
      v24 = "%{public}@Setup endpoint configuration is invalid: Audio SRTP parameters are not compatible";
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v20);
    v19 = 0;
    goto LABEL_13;
  }

  v19 = 1;
LABEL_13:

  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_sendSetupEndPointReadRequest
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  [v4 updateState:1];

  v5 = [(HMDCameraLocalStreamControlManager *)self accessoryCommunicator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HMDCameraLocalStreamControlManager__sendSetupEndPointReadRequest__block_invoke;
  v6[3] = &unk_27867C7B8;
  v6[4] = self;
  [v5 readSetupEndPointWithCompletion:v6];
}

void __67__HMDCameraLocalStreamControlManager__sendSetupEndPointReadRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) streamSession];

  if (v7)
  {
    if (v5)
    {
      v8 = [*(a1 + 32) streamSession];
      v9 = [v8 protocolParameters];
      [v9 setSetupEndPointRead:v5];

      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v13;
        v39 = 2112;
        v40 = v5;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received setup endpoint read response: %@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      if ([v5 responseStatus])
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 32);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v18 = HMDStreamControlPointResponseStatusAsString([v5 responseStatus]);
          v37 = 138543618;
          v38 = v17;
          v39 = 2112;
          v40 = v18;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Accessory setup endpoint read failed: %@", &v37, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        [*(a1 + 32) _reportErrorCode:14];
      }

      else
      {
        v27 = [*(a1 + 32) _isSetupEndPointConfigurationValid];
        v28 = *(a1 + 32);
        if (v27)
        {
          v29 = [v28 streamSession];
          v30 = [v29 parameterSelection];
          v31 = [*(a1 + 32) streamSession];
          v32 = [v31 protocolParameters];
          [v30 setSelectedConfigParameters:v32];

          v33 = *(a1 + 32);
          v34 = [v33 streamSession];
          v35 = [v34 negotiatedParameters];
          [v33 _callStreamNegotiated:v35];
        }

        else
        {
          [v28 _reportInternalErrorCode:1043];
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v26;
        v39 = 2112;
        v40 = v6;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to read setup endpoint: %@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      [*(a1 + 32) _cleanUpStreamSessionWithError:v6];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v37 = 138543362;
      v38 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Session ended while reading setup endpoint", &v37, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_sendSetupEndPointWriteRequest
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 localNetworkConfig];
  v6 = [v5 copy];

  v7 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v8 = [v7 localNetworkConfig];
  v9 = [v8 copy];

  v10 = [HMDCameraStreamManager alloc];
  v11 = [(HMDCameraStreamControlManager *)self sessionID];
  v12 = [(HMDCameraStreamControlManager *)self streamSnapshotHandler];
  v13 = [(HMDCameraStreamControlManager *)self workQueue];
  v14 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v15 = [v14 streamSender];
  v16 = [(HMDCameraStreamManager *)v10 initWithSessionID:v11 streamSnapshotHandler:v12 workQueue:v13 delegate:self localVideoNetworkConfig:v6 localAudioNetworkConfig:v9 sessionHandler:v15];
  v17 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  [v17 setStreamManager:v16];

  v18 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v19 = [v18 streamManager];

  if (v19)
  {
    v55 = v9;
    v56 = v6;
    v20 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    v21 = [v20 parameterSelection];
    v22 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    v23 = [v22 protocolParameters];
    v24 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    v25 = [v24 streamingCapabilities];
    v26 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    v27 = [v26 videoTierParameters];
    v28 = [v21 findBestMatchWithProtocolParameters:v23 streamingCapabilities:v25 videoTierParameters:v27];

    if (v28)
    {
      v29 = [(HMDCameraLocalStreamControlManager *)self streamSession];
      v30 = [v29 parameterSelection];
      v31 = [(HMDCameraLocalStreamControlManager *)self streamSession];
      v32 = [v31 protocolParameters];
      [v30 setSelectedEndPointSetupParameters:v32 videoNetworkConfig:v56 audioNetworkConfig:v55];

      v33 = [(HMDCameraLocalStreamControlManager *)self streamSession];
      v34 = [v33 protocolParameters];
      v35 = [v34 setupEndPointWrite];

      if (v35)
      {
        v36 = [(HMDCameraLocalStreamControlManager *)self accessoryCommunicator];
        v37 = [(HMDCameraLocalStreamControlManager *)self streamSession];
        v38 = [v37 protocolParameters];
        v39 = [v38 setupEndPointWrite];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __68__HMDCameraLocalStreamControlManager__sendSetupEndPointWriteRequest__block_invoke;
        v57[3] = &unk_27868A250;
        v57[4] = self;
        [v36 writeSetupEndPoint:v39 completion:v57];

LABEL_15:
        v9 = v55;
        v6 = v56;
        goto LABEL_16;
      }

      v50 = objc_autoreleasePoolPush();
      v51 = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v53;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Could not select the end point setup parameters", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
      v48 = v51;
      v49 = 1041;
    }

    else
    {
      v44 = objc_autoreleasePoolPush();
      v45 = self;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v47;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Could not find the right match in the supported list", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v44);
      v48 = v45;
      v49 = 1044;
    }

    [(HMDCameraStreamControlManager *)v48 _reportInternalErrorCode:v49];
    goto LABEL_15;
  }

  v40 = objc_autoreleasePoolPush();
  v41 = self;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v43;
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to create stream manager for local stream", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v40);
  [(HMDCameraStreamControlManager *)v41 _reportInternalErrorCode:1015];
LABEL_16:

  v54 = *MEMORY[0x277D85DE8];
}

void __68__HMDCameraLocalStreamControlManager__sendSetupEndPointWriteRequest__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) streamSession];

  if (v4)
  {
    if (v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v8;
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to write setup endpoint: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [*(a1 + 32) _cleanUpStreamSessionWithError:v3];
    }

    else
    {
      [*(a1 + 32) _sendSetupEndPointReadRequest];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Session ended while writing setup endpoint", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_getSupportedConfigurations
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Getting Supported Configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraLocalStreamControlManager *)v5 accessoryCommunicator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HMDCameraLocalStreamControlManager__getSupportedConfigurations__block_invoke;
  v10[3] = &unk_27867C790;
  v10[4] = v5;
  [v8 readSupportedConfigurationsWithCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __65__HMDCameraLocalStreamControlManager__getSupportedConfigurations__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) streamSession];

  if (v13)
  {
    v14 = *(a1 + 32);
    if (v9 && v10 && v11)
    {
      v15 = [v14 streamSession];
      v16 = [v15 protocolParameters];
      [v16 setSupportedVideoStreamConfiguration:v9];

      v17 = [*(a1 + 32) supportedConfigCache];
      [v17 setSupportedVideoStreamConfiguration:v9];

      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v41 = 138543618;
        v42 = v21;
        v43 = 2112;
        v44 = v9;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating supportedVideoStreamConfiguration: %@", &v41, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [*(a1 + 32) streamSession];
      v23 = [v22 protocolParameters];
      [v23 setSupportedAudioStreamConfiguration:v10];

      v24 = [*(a1 + 32) supportedConfigCache];
      [v24 setSupportedAudioStreamConfiguration:v10];

      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 32);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v41 = 138543618;
        v42 = v28;
        v43 = 2112;
        v44 = v10;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating supportedAudioStreamConfiguration: %@", &v41, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [*(a1 + 32) streamSession];
      v30 = [v29 protocolParameters];
      [v30 setSupportedRTPConfiguration:v11];

      v31 = [*(a1 + 32) supportedConfigCache];
      [v31 setSupportedRTPConfiguration:v11];

      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 32);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v41 = 138543618;
        v42 = v35;
        v43 = 2112;
        v44 = v11;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Updating supportedRTPConfiguration: %@", &v41, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      [*(a1 + 32) _sendSetupEndPointWriteRequest];
    }

    else
    {
      [v14 _cleanUpStreamSessionWithError:v12];
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = *(a1 + 32);
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v41 = 138543362;
      v42 = v39;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Session ended while getting supported configurations", &v41, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)negotiateStream
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v51 = 138543362;
    v52 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received a request to negotiate video stream", &v51, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraStreamControlManager *)v5 accessory];
  if (v8)
  {
    [(HMDCameraLocalStreamControlManager *)v5 _registerForHAPSessionRestore];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v5 selector:sel_handleAccessoryDisconnectedNotification_ name:@"HMDAccessoryDisconnectedNotification" object:v8];

    v10 = [(HMDCameraLocalStreamControlManager *)v5 streamSession];
    v11 = [v10 streamSender];
    [v11 openRelaySession];

    v12 = [(HMDCameraLocalStreamControlManager *)v5 supportedConfigCache];
    LODWORD(v11) = [v12 isValid];

    if (v11)
    {
      v13 = [(HMDCameraLocalStreamControlManager *)v5 supportedConfigCache];
      v14 = [v13 supportedVideoStreamConfiguration];
      v15 = [(HMDCameraLocalStreamControlManager *)v5 streamSession];
      v16 = [v15 protocolParameters];
      [v16 setSupportedVideoStreamConfiguration:v14];

      v17 = [(HMDCameraLocalStreamControlManager *)v5 supportedConfigCache];
      v18 = [v17 supportedAudioStreamConfiguration];
      v19 = [(HMDCameraLocalStreamControlManager *)v5 streamSession];
      v20 = [v19 protocolParameters];
      [v20 setSupportedAudioStreamConfiguration:v18];

      v21 = [(HMDCameraLocalStreamControlManager *)v5 supportedConfigCache];
      v22 = [v21 supportedRTPConfiguration];
      v23 = [(HMDCameraLocalStreamControlManager *)v5 streamSession];
      v24 = [v23 protocolParameters];
      [v24 setSupportedRTPConfiguration:v22];

      v25 = objc_autoreleasePoolPush();
      v26 = v5;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [(HMDCameraLocalStreamControlManager *)v26 streamSession];
        v30 = [v29 protocolParameters];
        v31 = [v30 supportedVideoStreamConfiguration];
        v51 = 138543618;
        v52 = v28;
        v53 = 2112;
        v54 = v31;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Using cached supportedVideoConfiguration: %@", &v51, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v32 = objc_autoreleasePoolPush();
      v33 = v26;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [(HMDCameraLocalStreamControlManager *)v33 streamSession];
        v37 = [v36 protocolParameters];
        v38 = [v37 supportedAudioStreamConfiguration];
        v51 = 138543618;
        v52 = v35;
        v53 = 2112;
        v54 = v38;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Using cached supportedAudioConfiguration: %@", &v51, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v39 = objc_autoreleasePoolPush();
      v40 = v33;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [(HMDCameraLocalStreamControlManager *)v40 streamSession];
        v44 = [v43 protocolParameters];
        v45 = [v44 supportedRTPConfiguration];
        v51 = 138543618;
        v52 = v42;
        v53 = 2112;
        v54 = v45;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Using cached supportedRTPConfiguration: %@", &v51, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      [(HMDCameraLocalStreamControlManager *)v40 _sendSetupEndPointWriteRequest];
    }

    else
    {
      [(HMDCameraLocalStreamControlManager *)v5 _getSupportedConfigurations];
    }
  }

  else
  {
    v46 = objc_autoreleasePoolPush();
    v47 = v5;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = HMFGetLogIdentifier();
      v51 = 138543362;
      v52 = v49;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Can't negotiate video stream: accessory reference is nil", &v51, 0xCu);
    }

    objc_autoreleasePoolPop(v46);
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioVolume:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v10 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v9 = [v10 streamManager];
  [v9 updateAudioVolume:v7 callback:v6];
}

- (void)updateAudioSetting:(unint64_t)a3
{
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v7 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v6 = [v7 streamManager];
  [v6 updateAudioSetting:a3];
}

- (void)setUpRemoteConnectionWithDevice:(id)a3
{
  v3 = a3;
  v4 = _HMFPreconditionFailure();
  [(HMDCameraLocalStreamControlManager *)v4 audioUplinkToken];
}

- (NSNumber)audioUplinkToken
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 streamManager];
  v6 = [v5 audioStreamInterface];
  v7 = [v6 uplinkToken];

  return v7;
}

- (NSNumber)audioDownlinkToken
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 streamManager];
  v6 = [v5 audioStreamInterface];
  v7 = [v6 downlinkToken];

  return v7;
}

- (NSDictionary)stateDump
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"State";
  v2 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v3 = [v2 stateDescription];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isSendingStream
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 streamSender];
  LOBYTE(v3) = v5 != 0;

  return v3;
}

- (NSNumber)aspectRatio
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 streamManager];
  v6 = [v5 aspectRatio];

  return v6;
}

- (unint64_t)audioStreamSetting
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 streamManager];
  v6 = [v5 audioStreamSetting];

  return v6;
}

- (NSNumber)slotIdentifier
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v5 = [v4 streamManager];
  v6 = [v5 slotIdentifier];

  return v6;
}

- (HMDCameraLocalStreamControlManager)initWithSessionID:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 reachabilityPath:(unint64_t)a6 device:(id)a7 delegate:(id)a8 accessory:(id)a9 streamManagementService:(id)a10 localNetworkConfig:(id)a11 remoteCapabilities:(id)a12 supportedConfigCache:(id)a13 streamPreference:(id)a14
{
  v60 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v54 = a5;
  v51 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v55 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  if (!v18)
  {
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!v19)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  if (!v54)
  {
LABEL_21:
    _HMFPreconditionFailure();
    goto LABEL_22;
  }

  if (!a6)
  {
LABEL_22:
    _HMFPreconditionFailure();
    goto LABEL_23;
  }

  if (!v21)
  {
LABEL_23:
    _HMFPreconditionFailure();
    goto LABEL_24;
  }

  if (!v22)
  {
LABEL_24:
    _HMFPreconditionFailure();
    goto LABEL_25;
  }

  if (!v23)
  {
LABEL_25:
    _HMFPreconditionFailure();
LABEL_26:
    _HMFPreconditionFailure();
  }

  if (!v24)
  {
    goto LABEL_26;
  }

  v47 = v25;
  v48 = v24;
  v50 = v20;
  v26 = objc_autoreleasePoolPush();
  v27 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v29;
    v58 = 2112;
    v59 = v55;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Local network config: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  if (v51)
  {
    v30 = +[HMDDeviceCapabilities deviceCapabilities];
    v31 = [v30 isResidentCapable];

    if (v31)
    {
      v32 = v23;
      v33 = v22;
      v34 = [[HMDCameraIDSSessionInitiator alloc] initWithSessionID:v18 workQueue:v19 device:v51 localNetworkConfig:v55 delegate:v27];
    }

    else
    {
      v33 = v22;
      if (!isiOSDevice())
      {
        v44 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot relay stream from current device" userInfo:0];
        objc_exception_throw(v44);
      }

      v32 = v23;
      v34 = [[HMDCameraIDSDeviceConnectionSender alloc] initWithSessionID:v18 workQueue:v19 device:v51 delegate:v27];
    }

    v35 = v34;
  }

  else
  {
    v32 = v23;
    v33 = v22;
    v35 = 0;
  }

  v36 = v18;
  v46 = v32;
  v37 = [[HMDCameraLocalStreamSession alloc] initWithSessionID:v18 reachabilityPath:a6 streamSender:v35 remoteCapabilities:v32 localNetworkConfig:v55 streamPreference:v47];
  v38 = [HMDCameraLocalStreamAccessoryCommunicator alloc];
  v39 = v18;
  v40 = v33;
  v41 = [(HMDCameraLocalStreamAccessoryCommunicator *)v38 initWithWorkQueue:v19 sessionID:v39 accessory:v21 streamManagementService:v33];
  LOBYTE(v45) = v35 != 0;
  v53 = [(HMDCameraLocalStreamControlManager *)v27 initWithSessionID:v36 workQueue:v19 streamSnapshotHandler:v54 delegate:v50 accessory:v21 streamManagementService:v40 supportedConfigCache:v48 streamSession:v37 accessoryCommunicator:v41 isRelayed:v45];

  v42 = *MEMORY[0x277D85DE8];
  return v53;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t56_166793 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t56_166793, &__block_literal_global_166794);
  }

  v3 = logCategory__hmf_once_v57_166795;

  return v3;
}

void __49__HMDCameraLocalStreamControlManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v57_166795;
  logCategory__hmf_once_v57_166795 = v1;
}

@end