@interface HMDCameraRemoteStreamControlManager
+ (id)logCategory;
- (HMDCameraRemoteStreamControlManager)initWithSessionID:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 reachabilityPath:(unint64_t)a6 device:(id)a7 delegate:(id)a8 accessory:(id)a9 streamManagementService:(id)a10 remoteCapabilities:(id)a11 profileUniqueIdentifier:(id)a12 residentMessageHandler:(id)a13 remoteAccessDevice:(id)a14 streamPreference:(id)a15;
- (NSDictionary)stateDump;
- (NSNumber)aspectRatio;
- (NSNumber)audioDownlinkToken;
- (NSNumber)audioUplinkToken;
- (NSNumber)slotIdentifier;
- (unint64_t)audioStreamSetting;
- (void)_cleanUpStreamSessionWithError:(id)a3;
- (void)_dispatchReconfigureToResident:(id)a3;
- (void)_dispatchStartRequestToResidentWithVideoSSRC:(id)a3 audioSSRC:(id)a4;
- (void)_idsSessionCreatedAndConfigNegotiated;
- (void)_reconfigureStreams;
- (void)_relaySessionStarted:(id)a3;
- (void)_sendStopMessageToResident;
- (void)_sendUpdatedConfiguration;
- (void)_setParametersSelected:(id)a3;
- (void)_streamStarted;
- (void)deviceConnectionReceiver:(id)a3 didEndSessionWithError:(id)a4;
- (void)deviceConnectionReceiver:(id)a3 didSetUpWithError:(id)a4;
- (void)deviceConnectionSender:(id)a3 didEndSessionWithError:(id)a4;
- (void)deviceConnectionSender:(id)a3 didSetUpWithError:(id)a4;
- (void)negotiateStream;
- (void)reconfigureStream:(id)a3;
- (void)sessionReceiver:(id)a3 didEndSessionWithError:(id)a4;
- (void)sessionReceiver:(id)a3 didSetUpWithError:(id)a4;
- (void)setUpRemoteConnectionWithDevice:(id)a3;
- (void)startStreamWithRemoteSettings:(id)a3;
- (void)stopStreamWithError:(id)a3;
- (void)streamManagerDidNetworkDeteriorate:(id)a3;
- (void)streamManagerDidNetworkImprove:(id)a3;
- (void)streamManagerDidReceiveFirstFrame:(id)a3;
- (void)streamManagerDidStartStream:(id)a3;
- (void)streamManagerDidStopStream:(id)a3 error:(id)a4;
- (void)streamManagerDidUpdateConfiguration:(id)a3;
- (void)updateAudioSetting:(unint64_t)a3;
- (void)updateAudioVolume:(id)a3 callback:(id)a4;
- (void)updateMaximumVideoResolutionQuality:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation HMDCameraRemoteStreamControlManager

- (void)_sendUpdatedConfiguration
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v5 = [v4 streamSender];

  if (v5)
  {
    v6 = *MEMORY[0x277D85DE8];

    [(HMDCameraStreamControlManager *)self _callStreamReconfigured];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending updated configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDCameraRemoteStreamControlManager *)v8 configGenerator];
    v12 = [(HMDCameraRemoteStreamControlManager *)v8 streamSession];
    v13 = [v12 videoTierParameters];
    v14 = [v13 currentPickedTier];
    v24 = 0;
    v15 = [v11 extractReselectedConfigFromVideoTier:v14 videoStreamConfig:&v24];
    v16 = v24;

    if (v15)
    {
      v17 = [(HMDCameraRemoteStreamControlManager *)v8 streamSession];
      v18 = [v17 streamManager];
      [v18 updateStreamConfiguration:v16];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v8;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Reselected config failed to extract", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      [(HMDCameraStreamControlManager *)v20 _reportInternalErrorCode:1046];
    }

    v23 = *MEMORY[0x277D85DE8];
  }
}

- (void)updateMaximumVideoResolutionQuality:(int64_t)a3 completionHandler:(id)a4
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v28[0] = *MEMORY[0x277CCF620];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v28[1] = @"kCameraSessionID";
  v29[0] = v8;
  v9 = [(HMDCameraStreamControlManager *)self sessionID];
  v10 = [v9 sessionID];
  v29[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v15;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Dispatching the video resolution quality update request to resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [(HMDCameraRemoteStreamControlManager *)v13 residentMessageHandler];
  v17 = *MEMORY[0x277CCF618];
  v18 = [(HMDCameraStreamControlManager *)v13 sessionID];
  v19 = [(HMDCameraRemoteStreamControlManager *)v13 profileUniqueIdentifier];
  v20 = [(HMDCameraRemoteStreamControlManager *)v13 remoteAccessDevice];
  v21 = [(HMDCameraStreamControlManager *)v13 workQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __93__HMDCameraRemoteStreamControlManager_updateMaximumVideoResolutionQuality_completionHandler___block_invoke;
  v24[3] = &unk_279732CF0;
  v24[4] = v13;
  v25 = v6;
  v22 = v6;
  [v16 sendMessageWithName:v17 cameraSessionID:v18 payload:v11 target:v19 device:v20 responseQueue:v21 responseHandler:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __93__HMDCameraRemoteStreamControlManager_updateMaximumVideoResolutionQuality_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received reply for update video resolution quality request for remote stream session.", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Relayed update video resolution quality request to resident failed: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *(*(a1 + 40) + 16);
  }

  else
  {
    v15 = *(*(a1 + 40) + 16);
  }

  v15();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchReconfigureToResident:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Dispatching the reconfigure request to resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  objc_initWeak(buf, v7);
  v10 = [(HMDCameraRemoteStreamControlManager *)v7 residentMessageHandler];
  v11 = [(HMDCameraStreamControlManager *)v7 sessionID];
  v12 = [(HMDCameraRemoteStreamControlManager *)v7 profileUniqueIdentifier];
  v13 = [(HMDCameraStreamControlManager *)v7 workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDCameraRemoteStreamControlManager__dispatchReconfigureToResident___block_invoke;
  v15[3] = &unk_279733B98;
  objc_copyWeak(&v16, buf);
  [v10 sendMessageWithName:@"kReconfigureRemoteStreamRequestKey" cameraSessionID:v11 payload:v4 target:v12 responseQueue:v13 responseHandler:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

void __70__HMDCameraRemoteStreamControlManager__dispatchReconfigureToResident___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained streamSession];

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v8;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received reply for reconfigure remote stream session", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      if (v5)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = v11;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v19 = 138543618;
          v20 = v17;
          v21 = 2112;
          v22 = v5;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Relayed reconfigure remote stream session request to resident failed: %@", &v19, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        [v15 _cleanUpStreamSessionWithError:v5];
      }

      else
      {
        [v11 _sendUpdatedConfiguration];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_reconfigureStreams
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = MEMORY[0x277CCAAB0];
  v5 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v6 = [v5 videoTierParameters];
  v7 = [v6 currentPickedTier];
  v8 = [v4 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];

  v13[0] = @"kReconfiguredTier";
  v13[1] = @"kCameraSessionID";
  v14[0] = v8;
  v9 = [(HMDCameraStreamControlManager *)self sessionID];
  v10 = [v9 sessionID];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  [(HMDCameraRemoteStreamControlManager *)self _dispatchReconfigureToResident:v11];
  v12 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stream configuration update complete", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRemoteStreamControlManager *)v7 streamSession];
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

  v6 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Picked a lower tier", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraRemoteStreamControlManager *)v10 _reconfigureStreams];
  }

  else
  {
    if (v12)
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Already in lowest tier, not changing the tier", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [(HMDCameraRemoteStreamControlManager *)v10 streamSession];
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, v15, &v19, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v9);
    v16 = [(HMDCameraRemoteStreamControlManager *)v10 streamSession];
    v17 = [v16 streamManager];
    [v17 updateReconfigurationMode:0];

    goto LABEL_12;
  }

  v6 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
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
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Picked a higher tier", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraRemoteStreamControlManager *)v10 _reconfigureStreams];
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)streamManagerDidStopStream:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v10 = [v9 containsState:8];

  if (v10)
  {
    [(HMDCameraStreamControlManager *)self _callStreamStoppedWithError:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Session stopped before starting; cleaning up the stream", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraRemoteStreamControlManager *)v12 _cleanUpStreamSessionWithError:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)streamManagerDidReceiveFirstFrame:(id)a3
{
  v4 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDCameraStreamControlManager *)self _callStreamFirstFrameReceived];
}

- (void)streamManagerDidStartStream:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stream manager did start stream", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRemoteStreamControlManager *)v7 streamSession];
  v11 = [v10 streamManager];
  v12 = [v11 videoStreamInterface];
  v13 = [v12 syncSource];
  v14 = [(HMDCameraRemoteStreamControlManager *)v7 streamSession];
  v15 = [v14 streamManager];
  v16 = [v15 audioStreamInterface];
  v17 = [v16 syncSource];
  [(HMDCameraRemoteStreamControlManager *)v7 _dispatchStartRequestToResidentWithVideoSSRC:v13 audioSSRC:v17];

  v18 = *MEMORY[0x277D85DE8];
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
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Received a callback that IDS initiator session has ended, stopping the stream", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraRemoteStreamControlManager *)v10 stopStreamWithError:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectionSender:(id)a3 didSetUpWithError:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
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
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to set up IDSDeviceConnection for stream", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraRemoteStreamControlManager *)v10 _cleanUpStreamSessionWithError:v7];
  }

  else
  {
    [(HMDCameraStreamControlManager *)self _callStreamRemoteConnectionSetup];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectionReceiver:(id)a3 didEndSessionWithError:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Received a callback that IDS session has ended, stopping the stream", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraRemoteStreamControlManager *)v10 stopStreamWithError:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectionReceiver:(id)a3 didSetUpWithError:(id)a4
{
  v6 = a4;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDCameraRemoteStreamControlManager *)self _relaySessionStarted:v6];
}

- (void)sessionReceiver:(id)a3 didEndSessionWithError:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Received a callback that IDS session has ended, stopping the stream", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraRemoteStreamControlManager *)v10 stopStreamWithError:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sessionReceiver:(id)a3 didSetUpWithError:(id)a4
{
  v6 = a4;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDCameraRemoteStreamControlManager *)self _relaySessionStarted:v6];
}

- (void)_cleanUpStreamSessionWithError:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRemoteStreamControlManager *)self streamSession];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Cleaning up the stream", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMDCameraRemoteStreamControlManager *)v8 streamSession];
    v13 = [v12 streamManager];
    [v13 stopStream];

    [(HMDCameraRemoteStreamControlManager *)v8 setStreamSession:0];
    [(HMDCameraRemoteStreamControlManager *)v8 _sendStopMessageToResident];
    [(HMDCameraStreamControlManager *)v8 _callStreamStoppedWithError:v4];
  }

  else
  {
    if (v10)
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@No current stream session to clean up", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendStopMessageToResident
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending stop stream message to resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v17 = @"kCameraSessionID";
  v8 = [(HMDCameraStreamControlManager *)v5 sessionID];
  v9 = [v8 sessionID];
  v18 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  v11 = [(HMDCameraRemoteStreamControlManager *)v5 residentMessageHandler];
  v12 = [(HMDCameraStreamControlManager *)v5 sessionID];
  v13 = [(HMDCameraRemoteStreamControlManager *)v5 profileUniqueIdentifier];
  v14 = [(HMDCameraRemoteStreamControlManager *)v5 remoteAccessDevice];
  v15 = [(HMDCameraStreamControlManager *)v5 workQueue];
  [v11 sendMessageWithName:@"kStopRemoteStreamRequestKey" cameraSessionID:v12 payload:v10 target:v13 device:v14 responseQueue:v15 responseHandler:&__block_literal_global_32974];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopStreamWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRemoteStreamControlManager *)self streamSession];

  if (v6)
  {
    v7 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    v8 = [v7 containsState:8];

    if (v8)
    {
      [(HMDCameraStreamControlManager *)self _callStreamStoppedWithError:v4];
    }

    else
    {
      [(HMDCameraStreamControlManager *)self _reportErrorCode:23];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@No current stream session to stop", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setUpRemoteConnectionWithDevice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRemoteStreamControlManager *)self streamSession];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Remote side has been setup", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMDCameraRemoteStreamControlManager *)v8 streamSession];
    v13 = [v12 streamReceiver];
    [v13 setUpRemoteConnectionWithDevice:v4];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@No current stream session to remotely set up", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reconfigureStream:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
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
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received request to stop the stream with session ID %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraRemoteStreamControlManager *)v7 streamSession];

  if (v11)
  {
    [(HMDCameraRemoteStreamControlManager *)v7 _dispatchReconfigureToResident:v4];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v7;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@No current stream session to reconfigure", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDCameraStreamControlManager *)v13 _reportErrorCode:3];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_streamStarted
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  [v4 updateState:8];

  v5 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v6 = [v5 streamSender];
  [v6 startKeepAlive];

  v8 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v7 = [v8 streamReceiver];
  [v7 startKeepAlive];
}

- (void)_dispatchStartRequestToResidentWithVideoSSRC:(id)a3 audioSSRC:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (v6 && v7)
  {
    v36[0] = @"kVideoStreamSSRC";
    v36[1] = @"kAudioStreamSSRC";
    v37[0] = v6;
    v37[1] = v7;
    v36[2] = @"kCameraSessionID";
    v9 = [(HMDCameraStreamControlManager *)self sessionID];
    v10 = [v9 sessionID];
    v37[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];

    v12 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    v13 = [v12 streamSender];
    v14 = [v13 mtu];

    if (v14)
    {
      v15 = [v11 mutableCopy];
      v16 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
      v17 = [v16 streamSender];
      v18 = [v17 mtu];
      [v15 setObject:v18 forKeyedSubscript:@"kRemoteStreamMTU"];

      v19 = [v15 copy];
      v11 = v19;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Dispatching the start request to resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    objc_initWeak(buf, v21);
    v24 = [(HMDCameraRemoteStreamControlManager *)v21 residentMessageHandler];
    v25 = [(HMDCameraStreamControlManager *)v21 sessionID];
    v26 = [(HMDCameraRemoteStreamControlManager *)v21 profileUniqueIdentifier];
    v27 = [(HMDCameraStreamControlManager *)v21 workQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __94__HMDCameraRemoteStreamControlManager__dispatchStartRequestToResidentWithVideoSSRC_audioSSRC___block_invoke;
    v34[3] = &unk_279733B98;
    objc_copyWeak(&v35, buf);
    [v24 sendMessageWithName:@"kStartRemoteStreamRequestKey" cameraSessionID:v25 payload:v11 target:v26 responseQueue:v27 responseHandler:v34];

    v28 = [(HMDCameraStreamControlManager *)v21 sessionID];
    [v28 markMilestoneFor:@"SentStartRemoteStreamRequest"];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@No SSRC, cannot start the stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    [(HMDCameraStreamControlManager *)v30 _reportInternalErrorCode:1045];
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __94__HMDCameraRemoteStreamControlManager__dispatchStartRequestToResidentWithVideoSSRC_audioSSRC___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained streamSession];

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v8;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received reply for start remote stream session for session", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      if (v5)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = v11;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v19 = 138543618;
          v20 = v17;
          v21 = 2112;
          v22 = v5;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Relayed start remote stream session request to resident failed: %@", &v19, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        [v15 _cleanUpStreamSessionWithError:v5];
      }

      else
      {
        [v11 _streamStarted];
        [v11 _callStreamStarted];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)startStreamWithRemoteSettings:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v7 = [v6 streamSender];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v61 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Stream sender is set, redispatching the start request to resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v56 = [v4 objectForKeyedSubscript:@"kVideoStreamSSRC"];
    v12 = [v4 objectForKeyedSubscript:@"kAudioStreamSSRC"];
    v13 = [(HMDCameraRemoteStreamControlManager *)v9 streamSession];
    v14 = [v13 protocolParameters];
    v15 = [v14 setupEndPointRead];
    [v15 videoSSRC];
    v16 = v57 = v4;
    v17 = [v16 unsignedIntegerValue];

    v18 = [(HMDCameraRemoteStreamControlManager *)v9 streamSession];
    v19 = [v18 protocolParameters];
    v20 = [v19 setupEndPointRead];
    v21 = [v20 audioSSRC];
    v22 = [v21 unsignedIntegerValue];

    v23 = [(HMDCameraRemoteStreamControlManager *)v9 streamSession];
    v24 = [v23 streamSender];
    v25 = [(HMDCameraRemoteStreamControlManager *)v9 streamSession];
    v26 = [v25 streamReceiver];
    v27 = [v26 idsSession];
    v28 = [v27 destination];
    [v24 startPacketRelayWithIDSDestination:v28 cameraVideoSSRC:v17 cameraAudioSSRC:v22];

    v4 = v57;
    [(HMDCameraRemoteStreamControlManager *)v9 _dispatchStartRequestToResidentWithVideoSSRC:v56 audioSSRC:v12];
  }

  else
  {
    v29 = [HMDCameraStreamManager alloc];
    v30 = [(HMDCameraStreamControlManager *)self sessionID];
    v31 = [(HMDCameraStreamControlManager *)self streamSnapshotHandler];
    v32 = [(HMDCameraStreamControlManager *)self workQueue];
    v33 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    v34 = [v33 streamReceiver];
    v35 = [(HMDCameraStreamManager *)v29 initWithSessionID:v30 streamSnapshotHandler:v31 workQueue:v32 delegate:self localVideoNetworkConfig:0 localAudioNetworkConfig:0 sessionHandler:v34];
    v36 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    [v36 setStreamManager:v35];

    v37 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    v38 = [v37 streamManager];

    if (v38)
    {
      v39 = [(HMDCameraRemoteStreamControlManager *)self configGenerator];
      v40 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
      v41 = [v40 protocolParameters];
      v58 = 0;
      v59 = 0;
      v42 = [v39 extractSelectedConfigFromProtocolParameters:v41 videoStreamConfig:&v59 audioStreamConfig:&v58];
      v43 = v59;
      v44 = v58;

      if (v42)
      {
        v45 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
        v46 = [v45 streamManager];
        [v46 startStreamWithVideoConfig:v43 audioConfig:v44];
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543362;
          v61 = v54;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Could not extract a configuration from the given parameters", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v51);
        [(HMDCameraStreamControlManager *)v52 _reportInternalErrorCode:1046];
      }
    }

    else
    {
      v47 = objc_autoreleasePoolPush();
      v48 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138543362;
        v61 = v50;
        _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to create stream manager for remote stream", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v47);
      [(HMDCameraStreamControlManager *)v48 _reportInternalErrorCode:1015];
    }
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)_relaySessionStarted:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRemoteStreamControlManager *)self streamSession];

  if (v6)
  {
    if (v4)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v10;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Relay session failed to start: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDCameraRemoteStreamControlManager *)v8 _cleanUpStreamSessionWithError:v4];
    }

    else
    {
      v16 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
      [v16 updateState:4];

      [(HMDCameraRemoteStreamControlManager *)self _idsSessionCreatedAndConfigNegotiated];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Stream session is no longer valid, stopping the IDS session", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [(HMDCameraRemoteStreamControlManager *)v12 _cleanUpStreamSessionWithError:v15];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_idsSessionCreatedAndConfigNegotiated
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  if ([v4 containsState:2])
  {
    v5 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    v6 = [v5 containsState:4];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Negotiation is completed", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = [(HMDCameraRemoteStreamControlManager *)v8 streamSession];
      v12 = [v11 negotiatedParameters];
      [(HMDCameraStreamControlManager *)v8 _callStreamNegotiated:v12];

      goto LABEL_10;
    }
  }

  else
  {
  }

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [(HMDCameraRemoteStreamControlManager *)v14 streamSession];
    v18 = [v17 stateDescription];
    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Current state: %@, waiting", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_10:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setParametersSelected:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  [v6 updateState:2];

  v7 = [v4 hmf_dataForKey:@"kSelectedStreamParameters"];
  v8 = [v4 hmf_dataForKey:@"kVideoTierParameters"];
  v9 = v8;
  if (v7 && v8)
  {
    v71 = 0;
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v71];
    v11 = v71;
    if (v10)
    {
      v70 = v11;
      v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v70];
      v69 = v70;

      if (v12)
      {
        v65 = v9;
        v66 = v7;
        v67 = v4;
        v13 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
        [v13 setProtocolParameters:v10];

        v68 = v10;
        v14 = [v10 selectedStreamConfigurationWrite];
        v15 = [v14 videoParameters];

        v16 = [HMDCameraVideoTier alloc];
        v62 = [v15 videoAttributes];
        v17 = [v62 videoResolution];
        v61 = [v15 videoAttributes];
        [v61 framerate];
        v18 = v63 = v12;
        v19 = [v15 rtpParameters];
        v20 = [v19 minimumBitrate];
        v21 = [v15 rtpParameters];
        v22 = [v21 maximumBitrate];
        v64 = v15;
        v23 = [v15 rtpParameters];
        v24 = [v23 rtcpInterval];
        v25 = v16;
        v26 = v17;
        v27 = [(HMDCameraVideoTier *)v25 initWithVideoResolution:v17 framerate:v18 minBitRate:v20 maxBitRate:v22 rtcpInterval:v24];

        v28 = v27;
        v29 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
        v30 = [v29 videoTierParameters];
        v31 = v63;
        [v30 updateTierParameters:v63 firstPickedParameter:v27];

        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          v36 = [v68 setupEndPointWrite];
          *buf = 138543618;
          v73 = v35;
          v74 = 2112;
          v75 = v36;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Received protocol parameters with Setup Endpoint Write %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v37 = objc_autoreleasePoolPush();
        v38 = v33;
        v39 = HMFGetOSLogHandle();
        v10 = v68;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          v41 = [v68 setupEndPointRead];
          *buf = 138543618;
          v73 = v40;
          v74 = 2112;
          v75 = v41;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Setup Endpoint Read %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v42 = objc_autoreleasePoolPush();
        v43 = v38;
        v44 = HMFGetOSLogHandle();
        v9 = v65;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          v46 = [v68 selectedStreamConfigurationWrite];
          *buf = 138543618;
          v73 = v45;
          v74 = 2112;
          v75 = v46;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Selected stream config %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
        [(HMDCameraRemoteStreamControlManager *)v43 _idsSessionCreatedAndConfigNegotiated];

        v7 = v66;
        v4 = v67;
        v47 = v69;
      }

      else
      {
        v56 = objc_autoreleasePoolPush();
        v57 = self;
        v58 = HMFGetOSLogHandle();
        v47 = v69;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543618;
          v73 = v59;
          v74 = 2112;
          v75 = v69;
          _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive camera video tier parameters from video parameters data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v56);
        [(HMDCameraStreamControlManager *)v57 _reportErrorCode:3];
        v31 = 0;
      }

      v11 = v47;
    }

    else
    {
      v52 = objc_autoreleasePoolPush();
      v53 = self;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543618;
        v73 = v55;
        v74 = 2112;
        v75 = v11;
        _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive camera protocol parameters from protocol parameters data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v52);
      [(HMDCameraStreamControlManager *)v53 _reportErrorCode:3];
    }
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    v49 = self;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v51;
      _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Did not get protocol or tier parameters data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v48);
    [(HMDCameraStreamControlManager *)v49 _reportInternalErrorCode:1047];
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)negotiateStream
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Received a request to relay start stream to resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = MEMORY[0x277CCAAB0];
  v9 = [(HMDCameraRemoteStreamControlManager *)v5 streamSession];
  v10 = [v9 streamingCapabilities];
  v11 = [v8 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];

  v29[0] = v11;
  v28[0] = @"kRemoteStreamCapabilities";
  v28[1] = @"kCameraSessionID";
  v12 = [(HMDCameraStreamControlManager *)v5 sessionID];
  v13 = [v12 sessionID];
  v29[1] = v13;
  v28[2] = @"kCameraSessionApplicationID";
  v14 = [(HMDCameraStreamControlManager *)v5 sessionID];
  v15 = [v14 hostProcessBundleIdentifier];
  v29[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];

  objc_initWeak(buf, v5);
  v17 = [(HMDCameraRemoteStreamControlManager *)v5 residentMessageHandler];
  v18 = [(HMDCameraStreamControlManager *)v5 sessionID];
  v19 = [(HMDCameraRemoteStreamControlManager *)v5 profileUniqueIdentifier];
  v20 = [(HMDCameraRemoteStreamControlManager *)v5 remoteAccessDevice];
  v21 = [(HMDCameraStreamControlManager *)v5 workQueue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __54__HMDCameraRemoteStreamControlManager_negotiateStream__block_invoke;
  v26[3] = &unk_279733B98;
  objc_copyWeak(&v27, buf);
  [v17 sendMessageWithName:@"kNegotitateRemoteStreamRequestKey" cameraSessionID:v18 payload:v16 target:v19 device:v20 responseQueue:v21 responseHandler:v26];

  v22 = [(HMDCameraStreamControlManager *)v5 sessionID];
  [v22 markMilestoneFor:@"SentNegotiateRemoteStreamRequest"];

  v23 = [(HMDCameraRemoteStreamControlManager *)v5 streamSession];
  v24 = [v23 streamSender];
  [v24 openRelaySession];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

  v25 = *MEMORY[0x277D85DE8];
}

void __54__HMDCameraRemoteStreamControlManager_negotiateStream__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained streamSession];

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v8;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received reply for negotiate remote stream session", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      if (v5)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = v11;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v19 = 138543618;
          v20 = v17;
          v21 = 2112;
          v22 = v5;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Relayed negotiate remote stream session request to resident failed: %@", &v19, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        [v15 _cleanUpStreamSessionWithError:v5];
      }

      else
      {
        [v11 _setParametersSelected:v6];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioVolume:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v10 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v9 = [v10 streamManager];
  [v9 updateAudioVolume:v7 callback:v6];
}

- (void)updateAudioSetting:(unint64_t)a3
{
  v5 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v7 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v6 = [v7 streamManager];
  [v6 updateAudioSetting:a3];
}

- (NSNumber)audioUplinkToken
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v5 = [v4 streamManager];
  v6 = [v5 audioStreamInterface];
  v7 = [v6 uplinkToken];

  return v7;
}

- (NSNumber)audioDownlinkToken
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v5 = [v4 streamManager];
  v6 = [v5 audioStreamInterface];
  v7 = [v6 downlinkToken];

  return v7;
}

- (NSDictionary)stateDump
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"State";
  v2 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v3 = [v2 stateDescription];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSNumber)aspectRatio
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v5 = [v4 streamManager];
  v6 = [v5 aspectRatio];

  return v6;
}

- (unint64_t)audioStreamSetting
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v5 = [v4 streamManager];
  v6 = [v5 audioStreamSetting];

  return v6;
}

- (NSNumber)slotIdentifier
{
  v3 = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v5 = [v4 streamManager];
  v6 = [v5 slotIdentifier];

  return v6;
}

- (HMDCameraRemoteStreamControlManager)initWithSessionID:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 reachabilityPath:(unint64_t)a6 device:(id)a7 delegate:(id)a8 accessory:(id)a9 streamManagementService:(id)a10 remoteCapabilities:(id)a11 profileUniqueIdentifier:(id)a12 residentMessageHandler:(id)a13 remoteAccessDevice:(id)a14 streamPreference:(id)a15
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v47 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v49 = a14;
  v28 = a15;
  if (!v19)
  {
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!v20)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  if (!v21)
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

  if (!v23)
  {
LABEL_23:
    _HMFPreconditionFailure();
    goto LABEL_24;
  }

  if (!v24)
  {
LABEL_24:
    _HMFPreconditionFailure();
    goto LABEL_25;
  }

  if (!v25)
  {
LABEL_25:
    _HMFPreconditionFailure();
    goto LABEL_26;
  }

  if (!v26)
  {
LABEL_26:
    _HMFPreconditionFailure();
    goto LABEL_27;
  }

  if (!v27)
  {
LABEL_27:
    _HMFPreconditionFailure();
    goto LABEL_28;
  }

  if (!v49)
  {
LABEL_28:
    v38 = _HMFPreconditionFailure();
    return +[(HMDCameraRemoteStreamControlManager *)v38];
  }

  v42 = v28;
  v43 = v26;
  v44 = v24;
  v45 = v23;
  v41 = v22;
  if (isWatch() && [v27 isUsingCompanionForRemoteAccessDevice])
  {
    v29 = self;
    v30 = [[HMDCameraIDSDeviceConnectionReceiver alloc] initWithSessionID:v19 workQueue:v20 delegate:self];
  }

  else
  {
    v31 = [HMDCameraIDSSessionInviterDeviceVerifier alloc];
    v32 = [v19 sessionID];
    v33 = [(HMDCameraIDSSessionInviterDeviceVerifier *)v31 initWithSessionID:v32 expectedInviter:v49];

    v29 = self;
    v30 = [[HMDCameraIDSSessionReceiver alloc] initWithSessionID:v19 workQueue:v20 sessionInviterDeviceVerifier:v33 delegate:self];
  }

  if (v47)
  {
    v34 = [[HMDCameraIDSDeviceConnectionSender alloc] initWithSessionID:v19 workQueue:v20 device:v47 delegate:v29];
  }

  else
  {
    v34 = 0;
  }

  v35 = [[HMDCameraRemoteStreamSession alloc] initWithSessionID:v19 reachabilityPath:a6 streamSender:v34 streamReceiver:v30 remoteCapabilities:v25 streamPreference:v42];
  remoteAccessDevice = v29->_remoteAccessDevice;
  v29->_remoteAccessDevice = v49;

  LOBYTE(v40) = v34 != 0;
  v50 = [(HMDCameraRemoteStreamControlManager *)v29 initWithSessionID:v19 workQueue:v20 streamSnapshotHandler:v21 delegate:v41 accessory:v45 streamManagementService:v44 profileUniqueIdentifier:v43 residentMessageHandler:v27 streamSession:v35 isRelayed:v40];

  return v50;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t28 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t28, &__block_literal_global_53_33055);
  }

  v3 = logCategory__hmf_once_v29;

  return v3;
}

uint64_t __50__HMDCameraRemoteStreamControlManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v29;
  logCategory__hmf_once_v29 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end