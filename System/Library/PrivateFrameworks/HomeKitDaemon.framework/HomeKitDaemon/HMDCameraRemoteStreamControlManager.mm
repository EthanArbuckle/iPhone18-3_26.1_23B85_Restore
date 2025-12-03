@interface HMDCameraRemoteStreamControlManager
+ (id)logCategory;
- (HMDCameraRemoteStreamControlManager)initWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler reachabilityPath:(unint64_t)path device:(id)device delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)self0 remoteCapabilities:(id)self1 profileUniqueIdentifier:(id)self2 residentMessageHandler:(id)self3 remoteAccessDevice:(id)self4 streamPreference:(id)self5;
- (NSDictionary)stateDump;
- (NSNumber)aspectRatio;
- (NSNumber)audioDownlinkToken;
- (NSNumber)audioUplinkToken;
- (NSNumber)slotIdentifier;
- (unint64_t)audioStreamSetting;
- (void)_cleanUpStreamSessionWithError:(id)error;
- (void)_dispatchReconfigureToResident:(id)resident;
- (void)_dispatchStartRequestToResidentWithVideoSSRC:(id)c audioSSRC:(id)rC;
- (void)_idsSessionCreatedAndConfigNegotiated;
- (void)_reconfigureStreams;
- (void)_relaySessionStarted:(id)started;
- (void)_sendStopMessageToResident;
- (void)_sendUpdatedConfiguration;
- (void)_setParametersSelected:(id)selected;
- (void)_streamStarted;
- (void)deviceConnectionReceiver:(id)receiver didEndSessionWithError:(id)error;
- (void)deviceConnectionReceiver:(id)receiver didSetUpWithError:(id)error;
- (void)deviceConnectionSender:(id)sender didEndSessionWithError:(id)error;
- (void)deviceConnectionSender:(id)sender didSetUpWithError:(id)error;
- (void)negotiateStream;
- (void)reconfigureStream:(id)stream;
- (void)sessionReceiver:(id)receiver didEndSessionWithError:(id)error;
- (void)sessionReceiver:(id)receiver didSetUpWithError:(id)error;
- (void)setUpRemoteConnectionWithDevice:(id)device;
- (void)startStreamWithRemoteSettings:(id)settings;
- (void)stopStreamWithError:(id)error;
- (void)streamManagerDidNetworkDeteriorate:(id)deteriorate;
- (void)streamManagerDidNetworkImprove:(id)improve;
- (void)streamManagerDidReceiveFirstFrame:(id)frame;
- (void)streamManagerDidStartStream:(id)stream;
- (void)streamManagerDidStopStream:(id)stream error:(id)error;
- (void)streamManagerDidUpdateConfiguration:(id)configuration;
- (void)updateAudioSetting:(unint64_t)setting;
- (void)updateAudioVolume:(id)volume callback:(id)callback;
- (void)updateMaximumVideoResolutionQuality:(int64_t)quality completionHandler:(id)handler;
@end

@implementation HMDCameraRemoteStreamControlManager

- (void)_sendUpdatedConfiguration
{
  v27 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamSender = [streamSession streamSender];

  if (streamSender)
  {
    v6 = *MEMORY[0x277D85DE8];

    [(HMDCameraStreamControlManager *)self _callStreamReconfigured];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending updated configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    configGenerator = [(HMDCameraRemoteStreamControlManager *)selfCopy configGenerator];
    streamSession2 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
    videoTierParameters = [streamSession2 videoTierParameters];
    currentPickedTier = [videoTierParameters currentPickedTier];
    v24 = 0;
    v15 = [configGenerator extractReselectedConfigFromVideoTier:currentPickedTier videoStreamConfig:&v24];
    v16 = v24;

    if (v15)
    {
      streamSession3 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
      streamManager = [streamSession3 streamManager];
      [streamManager updateStreamConfiguration:v16];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Reselected config failed to extract", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      [(HMDCameraStreamControlManager *)v20 _reportInternalErrorCode:1046];
    }

    v23 = *MEMORY[0x277D85DE8];
  }
}

- (void)updateMaximumVideoResolutionQuality:(int64_t)quality completionHandler:(id)handler
{
  v29[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v28[0] = *MEMORY[0x277CCF620];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:quality];
  v28[1] = @"kCameraSessionID";
  v29[0] = v8;
  sessionID = [(HMDCameraStreamControlManager *)self sessionID];
  v9SessionID = [sessionID sessionID];
  v29[1] = v9SessionID;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v15;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Dispatching the video resolution quality update request to resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  residentMessageHandler = [(HMDCameraRemoteStreamControlManager *)selfCopy residentMessageHandler];
  v17 = *MEMORY[0x277CCF618];
  sessionID2 = [(HMDCameraStreamControlManager *)selfCopy sessionID];
  profileUniqueIdentifier = [(HMDCameraRemoteStreamControlManager *)selfCopy profileUniqueIdentifier];
  remoteAccessDevice = [(HMDCameraRemoteStreamControlManager *)selfCopy remoteAccessDevice];
  workQueue2 = [(HMDCameraStreamControlManager *)selfCopy workQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __93__HMDCameraRemoteStreamControlManager_updateMaximumVideoResolutionQuality_completionHandler___block_invoke;
  v24[3] = &unk_278685AF8;
  v24[4] = selfCopy;
  v25 = handlerCopy;
  v22 = handlerCopy;
  [residentMessageHandler sendMessageWithName:v17 cameraSessionID:sessionID2 payload:v11 target:profileUniqueIdentifier device:remoteAccessDevice responseQueue:workQueue2 responseHandler:v24];

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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received reply for update video resolution quality request for remote stream session.", &v17, 0xCu);
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Relayed update video resolution quality request to resident failed: %@", &v17, 0x16u);
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

- (void)_dispatchReconfigureToResident:(id)resident
{
  v19 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Dispatching the reconfigure request to resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  objc_initWeak(buf, selfCopy);
  residentMessageHandler = [(HMDCameraRemoteStreamControlManager *)selfCopy residentMessageHandler];
  sessionID = [(HMDCameraStreamControlManager *)selfCopy sessionID];
  profileUniqueIdentifier = [(HMDCameraRemoteStreamControlManager *)selfCopy profileUniqueIdentifier];
  workQueue2 = [(HMDCameraStreamControlManager *)selfCopy workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDCameraRemoteStreamControlManager__dispatchReconfigureToResident___block_invoke;
  v15[3] = &unk_278687FB0;
  objc_copyWeak(&v16, buf);
  [residentMessageHandler sendMessageWithName:@"kReconfigureRemoteStreamRequestKey" cameraSessionID:sessionID payload:residentCopy target:profileUniqueIdentifier responseQueue:workQueue2 responseHandler:v15];

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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received reply for reconfigure remote stream session", &v19, 0xCu);
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
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Relayed reconfigure remote stream session request to resident failed: %@", &v19, 0x16u);
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
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = MEMORY[0x277CCAAB0];
  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  videoTierParameters = [streamSession videoTierParameters];
  currentPickedTier = [videoTierParameters currentPickedTier];
  v8 = [v4 archivedDataWithRootObject:currentPickedTier requiringSecureCoding:1 error:0];

  v13[0] = @"kReconfiguredTier";
  v13[1] = @"kCameraSessionID";
  v14[0] = v8;
  sessionID = [(HMDCameraStreamControlManager *)self sessionID];
  v9SessionID = [sessionID sessionID];
  v14[1] = v9SessionID;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  [(HMDCameraRemoteStreamControlManager *)self _dispatchReconfigureToResident:v11];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)streamManagerDidUpdateConfiguration:(id)configuration
{
  v15 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Stream configuration update complete", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  streamSession = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
  streamManager = [streamSession streamManager];
  [streamManager updateReconfigurationMode:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)streamManagerDidNetworkDeteriorate:(id)deteriorate
{
  v20 = *MEMORY[0x277D85DE8];
  deteriorateCopy = deteriorate;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  videoTierParameters = [streamSession videoTierParameters];
  pickLowerTier = [videoTierParameters pickLowerTier];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (pickLowerTier)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Picked a lower tier", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraRemoteStreamControlManager *)selfCopy _reconfigureStreams];
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
    streamSession2 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
    streamManager = [streamSession2 streamManager];
    [streamManager updateReconfigurationMode:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)streamManagerDidNetworkImprove:(id)improve
{
  v21 = *MEMORY[0x277D85DE8];
  improveCopy = improve;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(HMDCameraStreamControlManager *)self _canReconfigureToHigherTier])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    streamSession = [(HMDCameraRemoteStreamControlManager *)selfCopy2 streamSession];
    streamManager = [streamSession streamManager];
    [streamManager updateReconfigurationMode:0];

    goto LABEL_12;
  }

  streamSession2 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  videoTierParameters = [streamSession2 videoTierParameters];
  pickHigherTier = [videoTierParameters pickHigherTier];

  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!pickHigherTier)
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
  [(HMDCameraRemoteStreamControlManager *)selfCopy2 _reconfigureStreams];
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)streamManagerDidStopStream:(id)stream error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  v10 = [streamSession containsState:8];

  if (v10)
  {
    [(HMDCameraStreamControlManager *)self _callStreamStoppedWithError:errorCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Session stopped before starting; cleaning up the stream", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraRemoteStreamControlManager *)selfCopy _cleanUpStreamSessionWithError:errorCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)streamManagerDidReceiveFirstFrame:(id)frame
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraStreamControlManager *)self _callStreamFirstFrameReceived];
}

- (void)streamManagerDidStartStream:(id)stream
{
  v21 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Stream manager did start stream", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  streamSession = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
  streamManager = [streamSession streamManager];
  videoStreamInterface = [streamManager videoStreamInterface];
  syncSource = [videoStreamInterface syncSource];
  streamSession2 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
  streamManager2 = [streamSession2 streamManager];
  audioStreamInterface = [streamManager2 audioStreamInterface];
  syncSource2 = [audioStreamInterface syncSource];
  [(HMDCameraRemoteStreamControlManager *)selfCopy _dispatchStartRequestToResidentWithVideoSSRC:syncSource audioSSRC:syncSource2];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectionSender:(id)sender didEndSessionWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Received a callback that IDS initiator session has ended, stopping the stream", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraRemoteStreamControlManager *)selfCopy stopStreamWithError:errorCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectionSender:(id)sender didSetUpWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (errorCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to set up IDSDeviceConnection for stream", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraRemoteStreamControlManager *)selfCopy _cleanUpStreamSessionWithError:errorCopy];
  }

  else
  {
    [(HMDCameraStreamControlManager *)self _callStreamRemoteConnectionSetup];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectionReceiver:(id)receiver didEndSessionWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Received a callback that IDS session has ended, stopping the stream", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraRemoteStreamControlManager *)selfCopy stopStreamWithError:errorCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectionReceiver:(id)receiver didSetUpWithError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRemoteStreamControlManager *)self _relaySessionStarted:errorCopy];
}

- (void)sessionReceiver:(id)receiver didEndSessionWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Received a callback that IDS session has ended, stopping the stream", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraRemoteStreamControlManager *)selfCopy stopStreamWithError:errorCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sessionReceiver:(id)receiver didSetUpWithError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRemoteStreamControlManager *)self _relaySessionStarted:errorCopy];
}

- (void)_cleanUpStreamSessionWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (streamSession)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Cleaning up the stream", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    streamSession2 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
    streamManager = [streamSession2 streamManager];
    [streamManager stopStream];

    [(HMDCameraRemoteStreamControlManager *)selfCopy setStreamSession:0];
    [(HMDCameraRemoteStreamControlManager *)selfCopy _sendStopMessageToResident];
    [(HMDCameraStreamControlManager *)selfCopy _callStreamStoppedWithError:errorCopy];
  }

  else
  {
    if (v10)
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@No current stream session to clean up", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendStopMessageToResident
{
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending stop stream message to resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v17 = @"kCameraSessionID";
  sessionID = [(HMDCameraStreamControlManager *)selfCopy sessionID];
  v8SessionID = [sessionID sessionID];
  v18 = v8SessionID;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  residentMessageHandler = [(HMDCameraRemoteStreamControlManager *)selfCopy residentMessageHandler];
  sessionID2 = [(HMDCameraStreamControlManager *)selfCopy sessionID];
  profileUniqueIdentifier = [(HMDCameraRemoteStreamControlManager *)selfCopy profileUniqueIdentifier];
  remoteAccessDevice = [(HMDCameraRemoteStreamControlManager *)selfCopy remoteAccessDevice];
  workQueue2 = [(HMDCameraStreamControlManager *)selfCopy workQueue];
  [residentMessageHandler sendMessageWithName:@"kStopRemoteStreamRequestKey" cameraSessionID:sessionID2 payload:v10 target:profileUniqueIdentifier device:remoteAccessDevice responseQueue:workQueue2 responseHandler:&__block_literal_global_49495];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopStreamWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];

  if (streamSession)
  {
    streamSession2 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    v8 = [streamSession2 containsState:8];

    if (v8)
    {
      [(HMDCameraStreamControlManager *)self _callStreamStoppedWithError:errorCopy];
    }

    else
    {
      [(HMDCameraStreamControlManager *)self _reportErrorCode:23];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@No current stream session to stop", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setUpRemoteConnectionWithDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (streamSession)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Remote side has been setup", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    streamSession2 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
    streamReceiver = [streamSession2 streamReceiver];
    [streamReceiver setUpRemoteConnectionWithDevice:deviceCopy];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@No current stream session to remotely set up", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reconfigureStream:(id)stream
{
  v21 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    sessionID = [(HMDCameraStreamControlManager *)selfCopy sessionID];
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = sessionID;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received request to stop the stream with session ID %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  streamSession = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];

  if (streamSession)
  {
    [(HMDCameraRemoteStreamControlManager *)selfCopy _dispatchReconfigureToResident:streamCopy];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@No current stream session to reconfigure", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDCameraStreamControlManager *)v13 _reportErrorCode:3];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_streamStarted
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  [streamSession updateState:8];

  streamSession2 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamSender = [streamSession2 streamSender];
  [streamSender startKeepAlive];

  streamSession3 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamReceiver = [streamSession3 streamReceiver];
  [streamReceiver startKeepAlive];
}

- (void)_dispatchStartRequestToResidentWithVideoSSRC:(id)c audioSSRC:(id)rC
{
  v40 = *MEMORY[0x277D85DE8];
  cCopy = c;
  rCCopy = rC;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (cCopy && rCCopy)
  {
    v36[0] = @"kVideoStreamSSRC";
    v36[1] = @"kAudioStreamSSRC";
    v37[0] = cCopy;
    v37[1] = rCCopy;
    v36[2] = @"kCameraSessionID";
    sessionID = [(HMDCameraStreamControlManager *)self sessionID];
    v9SessionID = [sessionID sessionID];
    v37[2] = v9SessionID;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];

    streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    streamSender = [streamSession streamSender];
    v14 = [streamSender mtu];

    if (v14)
    {
      v15 = [v11 mutableCopy];
      streamSession2 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
      streamSender2 = [streamSession2 streamSender];
      v18 = [streamSender2 mtu];
      [v15 setObject:v18 forKeyedSubscript:@"kRemoteStreamMTU"];

      v19 = [v15 copy];
      v11 = v19;
    }

    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Dispatching the start request to resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    objc_initWeak(buf, selfCopy);
    residentMessageHandler = [(HMDCameraRemoteStreamControlManager *)selfCopy residentMessageHandler];
    sessionID2 = [(HMDCameraStreamControlManager *)selfCopy sessionID];
    profileUniqueIdentifier = [(HMDCameraRemoteStreamControlManager *)selfCopy profileUniqueIdentifier];
    workQueue2 = [(HMDCameraStreamControlManager *)selfCopy workQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __94__HMDCameraRemoteStreamControlManager__dispatchStartRequestToResidentWithVideoSSRC_audioSSRC___block_invoke;
    v34[3] = &unk_278687FB0;
    objc_copyWeak(&v35, buf);
    [residentMessageHandler sendMessageWithName:@"kStartRemoteStreamRequestKey" cameraSessionID:sessionID2 payload:v11 target:profileUniqueIdentifier responseQueue:workQueue2 responseHandler:v34];

    sessionID3 = [(HMDCameraStreamControlManager *)selfCopy sessionID];
    [sessionID3 markMilestoneFor:@"SentStartRemoteStreamRequest"];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@No SSRC, cannot start the stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    [(HMDCameraStreamControlManager *)selfCopy2 _reportInternalErrorCode:1045];
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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received reply for start remote stream session for session", &v19, 0xCu);
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
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Relayed start remote stream session request to resident failed: %@", &v19, 0x16u);
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

- (void)startStreamWithRemoteSettings:(id)settings
{
  v62 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamSender = [streamSession streamSender];

  if (streamSender)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v61 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Stream sender is set, redispatching the start request to resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v56 = [settingsCopy objectForKeyedSubscript:@"kVideoStreamSSRC"];
    v12 = [settingsCopy objectForKeyedSubscript:@"kAudioStreamSSRC"];
    streamSession2 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
    protocolParameters = [streamSession2 protocolParameters];
    setupEndPointRead = [protocolParameters setupEndPointRead];
    [setupEndPointRead videoSSRC];
    v16 = v57 = settingsCopy;
    unsignedIntegerValue = [v16 unsignedIntegerValue];

    streamSession3 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
    protocolParameters2 = [streamSession3 protocolParameters];
    setupEndPointRead2 = [protocolParameters2 setupEndPointRead];
    audioSSRC = [setupEndPointRead2 audioSSRC];
    unsignedIntegerValue2 = [audioSSRC unsignedIntegerValue];

    streamSession4 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
    streamSender2 = [streamSession4 streamSender];
    streamSession5 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
    streamReceiver = [streamSession5 streamReceiver];
    idsSession = [streamReceiver idsSession];
    destination = [idsSession destination];
    [streamSender2 startPacketRelayWithIDSDestination:destination cameraVideoSSRC:unsignedIntegerValue cameraAudioSSRC:unsignedIntegerValue2];

    settingsCopy = v57;
    [(HMDCameraRemoteStreamControlManager *)selfCopy _dispatchStartRequestToResidentWithVideoSSRC:v56 audioSSRC:v12];
  }

  else
  {
    v29 = [HMDCameraStreamManager alloc];
    sessionID = [(HMDCameraStreamControlManager *)self sessionID];
    streamSnapshotHandler = [(HMDCameraStreamControlManager *)self streamSnapshotHandler];
    workQueue2 = [(HMDCameraStreamControlManager *)self workQueue];
    streamSession6 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    streamReceiver2 = [streamSession6 streamReceiver];
    v35 = [(HMDCameraStreamManager *)v29 initWithSessionID:sessionID streamSnapshotHandler:streamSnapshotHandler workQueue:workQueue2 delegate:self localVideoNetworkConfig:0 localAudioNetworkConfig:0 sessionHandler:streamReceiver2];
    streamSession7 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    [streamSession7 setStreamManager:v35];

    streamSession8 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    streamManager = [streamSession8 streamManager];

    if (streamManager)
    {
      configGenerator = [(HMDCameraRemoteStreamControlManager *)self configGenerator];
      streamSession9 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
      protocolParameters3 = [streamSession9 protocolParameters];
      v58 = 0;
      v59 = 0;
      v42 = [configGenerator extractSelectedConfigFromProtocolParameters:protocolParameters3 videoStreamConfig:&v59 audioStreamConfig:&v58];
      v43 = v59;
      v44 = v58;

      if (v42)
      {
        streamSession10 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
        streamManager2 = [streamSession10 streamManager];
        [streamManager2 startStreamWithVideoConfig:v43 audioConfig:v44];
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543362;
          v61 = v54;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Could not extract a configuration from the given parameters", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v51);
        [(HMDCameraStreamControlManager *)selfCopy2 _reportInternalErrorCode:1046];
      }
    }

    else
    {
      v47 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138543362;
        v61 = v50;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to create stream manager for remote stream", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v47);
      [(HMDCameraStreamControlManager *)selfCopy3 _reportInternalErrorCode:1015];
    }
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)_relaySessionStarted:(id)started
{
  v22 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];

  if (streamSession)
  {
    if (startedCopy)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v10;
        v20 = 2112;
        v21 = startedCopy;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Relay session failed to start: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDCameraRemoteStreamControlManager *)selfCopy _cleanUpStreamSessionWithError:startedCopy];
    }

    else
    {
      streamSession2 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
      [streamSession2 updateState:4];

      [(HMDCameraRemoteStreamControlManager *)self _idsSessionCreatedAndConfigNegotiated];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Stream session is no longer valid, stopping the IDS session", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [(HMDCameraRemoteStreamControlManager *)selfCopy2 _cleanUpStreamSessionWithError:v15];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_idsSessionCreatedAndConfigNegotiated
{
  v24 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  if ([streamSession containsState:2])
  {
    streamSession2 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
    v6 = [streamSession2 containsState:4];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Negotiation is completed", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      streamSession3 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
      negotiatedParameters = [streamSession3 negotiatedParameters];
      [(HMDCameraStreamControlManager *)selfCopy _callStreamNegotiated:negotiatedParameters];

      goto LABEL_10;
    }
  }

  else
  {
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    streamSession4 = [(HMDCameraRemoteStreamControlManager *)selfCopy2 streamSession];
    stateDescription = [streamSession4 stateDescription];
    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = stateDescription;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Current state: %@, waiting", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_10:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setParametersSelected:(id)selected
{
  v76 = *MEMORY[0x277D85DE8];
  selectedCopy = selected;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  [streamSession updateState:2];

  v7 = [selectedCopy hmf_dataForKey:@"kSelectedStreamParameters"];
  v8 = [selectedCopy hmf_dataForKey:@"kVideoTierParameters"];
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
        v67 = selectedCopy;
        streamSession2 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
        [streamSession2 setProtocolParameters:v10];

        v68 = v10;
        selectedStreamConfigurationWrite = [v10 selectedStreamConfigurationWrite];
        videoParameters = [selectedStreamConfigurationWrite videoParameters];

        v16 = [HMDCameraVideoTier alloc];
        videoAttributes = [videoParameters videoAttributes];
        videoResolution = [videoAttributes videoResolution];
        videoAttributes2 = [videoParameters videoAttributes];
        [videoAttributes2 framerate];
        v18 = v63 = v12;
        rtpParameters = [videoParameters rtpParameters];
        minimumBitrate = [rtpParameters minimumBitrate];
        rtpParameters2 = [videoParameters rtpParameters];
        maximumBitrate = [rtpParameters2 maximumBitrate];
        v64 = videoParameters;
        rtpParameters3 = [videoParameters rtpParameters];
        rtcpInterval = [rtpParameters3 rtcpInterval];
        v25 = v16;
        v26 = videoResolution;
        v27 = [(HMDCameraVideoTier *)v25 initWithVideoResolution:videoResolution framerate:v18 minBitRate:minimumBitrate maxBitRate:maximumBitrate rtcpInterval:rtcpInterval];

        v28 = v27;
        streamSession3 = [(HMDCameraRemoteStreamControlManager *)self streamSession];
        videoTierParameters = [streamSession3 videoTierParameters];
        v31 = v63;
        [videoTierParameters updateTierParameters:v63 firstPickedParameter:v27];

        v32 = objc_autoreleasePoolPush();
        selfCopy = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          setupEndPointWrite = [v68 setupEndPointWrite];
          *buf = 138543618;
          v73 = v35;
          v74 = 2112;
          v75 = setupEndPointWrite;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Received protocol parameters with Setup Endpoint Write %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v37 = objc_autoreleasePoolPush();
        v38 = selfCopy;
        v39 = HMFGetOSLogHandle();
        v10 = v68;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          setupEndPointRead = [v68 setupEndPointRead];
          *buf = 138543618;
          v73 = v40;
          v74 = 2112;
          v75 = setupEndPointRead;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Setup Endpoint Read %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v42 = objc_autoreleasePoolPush();
        v43 = v38;
        v44 = HMFGetOSLogHandle();
        v9 = v65;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          selectedStreamConfigurationWrite2 = [v68 selectedStreamConfigurationWrite];
          *buf = 138543618;
          v73 = v45;
          v74 = 2112;
          v75 = selectedStreamConfigurationWrite2;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Selected stream config %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
        [(HMDCameraRemoteStreamControlManager *)v43 _idsSessionCreatedAndConfigNegotiated];

        v7 = v66;
        selectedCopy = v67;
        v47 = v69;
      }

      else
      {
        v56 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v58 = HMFGetOSLogHandle();
        v47 = v69;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543618;
          v73 = v59;
          v74 = 2112;
          v75 = v69;
          _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive camera video tier parameters from video parameters data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v56);
        [(HMDCameraStreamControlManager *)selfCopy2 _reportErrorCode:3];
        v31 = 0;
      }

      v11 = v47;
    }

    else
    {
      v52 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543618;
        v73 = v55;
        v74 = 2112;
        v75 = v11;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive camera protocol parameters from protocol parameters data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v52);
      [(HMDCameraStreamControlManager *)selfCopy3 _reportErrorCode:3];
    }
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v51;
      _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Did not get protocol or tier parameters data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v48);
    [(HMDCameraStreamControlManager *)selfCopy4 _reportInternalErrorCode:1047];
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)negotiateStream
{
  v32 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received a request to relay start stream to resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = MEMORY[0x277CCAAB0];
  streamSession = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
  streamingCapabilities = [streamSession streamingCapabilities];
  v11 = [v8 archivedDataWithRootObject:streamingCapabilities requiringSecureCoding:1 error:0];

  v29[0] = v11;
  v28[0] = @"kRemoteStreamCapabilities";
  v28[1] = @"kCameraSessionID";
  sessionID = [(HMDCameraStreamControlManager *)selfCopy sessionID];
  v12SessionID = [sessionID sessionID];
  v29[1] = v12SessionID;
  v28[2] = @"kCameraSessionApplicationID";
  sessionID2 = [(HMDCameraStreamControlManager *)selfCopy sessionID];
  hostProcessBundleIdentifier = [sessionID2 hostProcessBundleIdentifier];
  v29[2] = hostProcessBundleIdentifier;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];

  objc_initWeak(buf, selfCopy);
  residentMessageHandler = [(HMDCameraRemoteStreamControlManager *)selfCopy residentMessageHandler];
  sessionID3 = [(HMDCameraStreamControlManager *)selfCopy sessionID];
  profileUniqueIdentifier = [(HMDCameraRemoteStreamControlManager *)selfCopy profileUniqueIdentifier];
  remoteAccessDevice = [(HMDCameraRemoteStreamControlManager *)selfCopy remoteAccessDevice];
  workQueue2 = [(HMDCameraStreamControlManager *)selfCopy workQueue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __54__HMDCameraRemoteStreamControlManager_negotiateStream__block_invoke;
  v26[3] = &unk_278687FB0;
  objc_copyWeak(&v27, buf);
  [residentMessageHandler sendMessageWithName:@"kNegotitateRemoteStreamRequestKey" cameraSessionID:sessionID3 payload:v16 target:profileUniqueIdentifier device:remoteAccessDevice responseQueue:workQueue2 responseHandler:v26];

  sessionID4 = [(HMDCameraStreamControlManager *)selfCopy sessionID];
  [sessionID4 markMilestoneFor:@"SentNegotiateRemoteStreamRequest"];

  streamSession2 = [(HMDCameraRemoteStreamControlManager *)selfCopy streamSession];
  streamSender = [streamSession2 streamSender];
  [streamSender openRelaySession];

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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received reply for negotiate remote stream session", &v19, 0xCu);
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
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Relayed negotiate remote stream session request to resident failed: %@", &v19, 0x16u);
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

- (void)updateAudioVolume:(id)volume callback:(id)callback
{
  callbackCopy = callback;
  volumeCopy = volume;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  [streamManager updateAudioVolume:volumeCopy callback:callbackCopy];
}

- (void)updateAudioSetting:(unint64_t)setting
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  [streamManager updateAudioSetting:setting];
}

- (NSNumber)audioUplinkToken
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  audioStreamInterface = [streamManager audioStreamInterface];
  uplinkToken = [audioStreamInterface uplinkToken];

  return uplinkToken;
}

- (NSNumber)audioDownlinkToken
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  audioStreamInterface = [streamManager audioStreamInterface];
  downlinkToken = [audioStreamInterface downlinkToken];

  return downlinkToken;
}

- (NSDictionary)stateDump
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"State";
  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  stateDescription = [streamSession stateDescription];
  v8[0] = stateDescription;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSNumber)aspectRatio
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  aspectRatio = [streamManager aspectRatio];

  return aspectRatio;
}

- (unint64_t)audioStreamSetting
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  audioStreamSetting = [streamManager audioStreamSetting];

  return audioStreamSetting;
}

- (NSNumber)slotIdentifier
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraRemoteStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  slotIdentifier = [streamManager slotIdentifier];

  return slotIdentifier;
}

- (HMDCameraRemoteStreamControlManager)initWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler reachabilityPath:(unint64_t)path device:(id)device delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)self0 remoteCapabilities:(id)self1 profileUniqueIdentifier:(id)self2 residentMessageHandler:(id)self3 remoteAccessDevice:(id)self4 streamPreference:(id)self5
{
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  deviceCopy = device;
  delegateCopy = delegate;
  accessoryCopy = accessory;
  serviceCopy = service;
  capabilitiesCopy = capabilities;
  identifierCopy = identifier;
  messageHandlerCopy = messageHandler;
  accessDeviceCopy = accessDevice;
  preferenceCopy = preference;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!queueCopy)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  if (!handlerCopy)
  {
LABEL_21:
    _HMFPreconditionFailure();
    goto LABEL_22;
  }

  if (!path)
  {
LABEL_22:
    _HMFPreconditionFailure();
    goto LABEL_23;
  }

  if (!accessoryCopy)
  {
LABEL_23:
    _HMFPreconditionFailure();
    goto LABEL_24;
  }

  if (!serviceCopy)
  {
LABEL_24:
    _HMFPreconditionFailure();
    goto LABEL_25;
  }

  if (!capabilitiesCopy)
  {
LABEL_25:
    _HMFPreconditionFailure();
    goto LABEL_26;
  }

  if (!identifierCopy)
  {
LABEL_26:
    _HMFPreconditionFailure();
    goto LABEL_27;
  }

  if (!messageHandlerCopy)
  {
LABEL_27:
    _HMFPreconditionFailure();
    goto LABEL_28;
  }

  if (!accessDeviceCopy)
  {
LABEL_28:
    v38 = _HMFPreconditionFailure();
    return +[(HMDCameraRemoteStreamControlManager *)v38];
  }

  v42 = preferenceCopy;
  v43 = identifierCopy;
  v44 = serviceCopy;
  v45 = accessoryCopy;
  v41 = delegateCopy;
  if (isWatch() && [messageHandlerCopy isUsingCompanionForRemoteAccessDevice])
  {
    selfCopy2 = self;
    v30 = [[HMDCameraIDSDeviceConnectionReceiver alloc] initWithSessionID:dCopy workQueue:queueCopy delegate:self];
  }

  else
  {
    v31 = [HMDCameraIDSSessionInviterDeviceVerifier alloc];
    sessionID = [dCopy sessionID];
    v33 = [(HMDCameraIDSSessionInviterDeviceVerifier *)v31 initWithSessionID:sessionID expectedInviter:accessDeviceCopy];

    selfCopy2 = self;
    v30 = [[HMDCameraIDSSessionReceiver alloc] initWithSessionID:dCopy workQueue:queueCopy sessionInviterDeviceVerifier:v33 delegate:self];
  }

  if (deviceCopy)
  {
    v34 = [[HMDCameraIDSDeviceConnectionSender alloc] initWithSessionID:dCopy workQueue:queueCopy device:deviceCopy delegate:selfCopy2];
  }

  else
  {
    v34 = 0;
  }

  v35 = [[HMDCameraRemoteStreamSession alloc] initWithSessionID:dCopy reachabilityPath:path streamSender:v34 streamReceiver:v30 remoteCapabilities:capabilitiesCopy streamPreference:v42];
  remoteAccessDevice = selfCopy2->_remoteAccessDevice;
  selfCopy2->_remoteAccessDevice = accessDeviceCopy;

  LOBYTE(v40) = v34 != 0;
  v50 = [(HMDCameraRemoteStreamControlManager *)selfCopy2 initWithSessionID:dCopy workQueue:queueCopy streamSnapshotHandler:handlerCopy delegate:v41 accessory:v45 streamManagementService:v44 profileUniqueIdentifier:v43 residentMessageHandler:messageHandlerCopy streamSession:v35 isRelayed:v40];

  return v50;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t28 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t28, &__block_literal_global_53);
  }

  v3 = logCategory__hmf_once_v29;

  return v3;
}

void __50__HMDCameraRemoteStreamControlManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v29;
  logCategory__hmf_once_v29 = v1;
}

@end