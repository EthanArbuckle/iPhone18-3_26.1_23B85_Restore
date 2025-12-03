@interface HMDCameraStreamManager
+ (id)logCategory;
- (HMDCameraStreamManager)initWithSessionID:(id)d streamSnapshotHandler:(id)handler workQueue:(id)queue delegate:(id)delegate localVideoNetworkConfig:(id)config localAudioNetworkConfig:(id)networkConfig sessionHandler:(id)sessionHandler;
- (HMDCameraStreamManager)initWithSessionID:(id)d streamSnapshotHandler:(id)handler workQueue:(id)queue delegate:(id)delegate videoStreamInterface:(id)interface audioStreamInterface:(id)streamInterface dataSource:(id)source;
- (HMDCameraStreamManagerDelegate)delegate;
- (id)logIdentifier;
- (unint64_t)audioStreamSetting;
- (void)_callConfigurationUpdated;
- (void)_callNetworkDeteriorated;
- (void)_callNetworkImproved;
- (void)_callReceivedFirstFrame;
- (void)_callRelayStarted;
- (void)_callStreamStarted;
- (void)_callStreamStoppedWithError:(id)error;
- (void)remoteVideoClient:(id)client remoteVideoAttributesDidChange:(id)change;
- (void)remoteVideoClientDidReceiveFirstFrame:(id)frame;
- (void)remoteVideoClientDidReceiveLastFrame:(id)frame;
- (void)remoteVideoServerDidDie:(id)die;
- (void)startStreamWithVideoConfig:(id)config audioConfig:(id)audioConfig;
- (void)stopStream;
- (void)updateAudioSetting:(unint64_t)setting;
- (void)updateAudioVolume:(id)volume callback:(id)callback;
- (void)updateStreamConfiguration:(id)configuration;
- (void)videoStream:(id)stream didStart:(id)start;
- (void)videoStream:(id)stream didStop:(id)stop;
- (void)videoStreamDidNetworkDeteriorate:(id)deteriorate;
- (void)videoStreamDidNetworkImprove:(id)improve;
- (void)videoStreamDidUpdateConfiguration:(id)configuration;
@end

@implementation HMDCameraStreamManager

- (HMDCameraStreamManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteVideoServerDidDie:(id)die
{
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDCameraStreamManager_remoteVideoServerDidDie___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __50__HMDCameraStreamManager_remoteVideoServerDidDie___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Video server has died", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteVideoClientDidReceiveLastFrame:(id)frame
{
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDCameraStreamManager_remoteVideoClientDidReceiveLastFrame___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __63__HMDCameraStreamManager_remoteVideoClientDidReceiveLastFrame___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Last frame has been received", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteVideoClient:(id)client remoteVideoAttributesDidChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HMDCameraStreamManager_remoteVideoClient_remoteVideoAttributesDidChange___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(workQueue, v8);
}

void __75__HMDCameraStreamManager_remoteVideoClient_remoteVideoAttributesDidChange___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Remote video attributes did change: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)remoteVideoClientDidReceiveFirstFrame:(id)frame
{
  frameCopy = frame;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDCameraStreamManager_remoteVideoClientDidReceiveFirstFrame___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = frameCopy;
  v6 = frameCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDCameraStreamManager_remoteVideoClientDidReceiveFirstFrame___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) avcRemoteVideo];

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@First frame has been received", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v8 = [*(a1 + 40) remoteVideoAttributes];
    [v8 ratio];
    v10 = v9;
    v12 = v11;

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v10 / v12];
    [*(a1 + 32) setAspectRatio:v13];

    v14 = [*(a1 + 40) slotForMode:0];
    [*(a1 + 32) setSlotIdentifier:v14];

    [*(a1 + 32) _callReceivedFirstFrame];
    v15 = [*(a1 + 32) streamSnapshotHandler];
    v16 = [*(a1 + 32) videoStreamInterface];
    [v15 addVideoStreamInterface:v16];
  }

  else
  {
    if (v6)
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Ignoring first frame received because stream has stopped", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)videoStreamDidUpdateConfiguration:(id)configuration
{
  v13 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Video stream's configuration update complete", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraStreamManager *)selfCopy _callConfigurationUpdated];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)videoStreamDidNetworkDeteriorate:(id)deteriorate
{
  v13 = *MEMORY[0x277D85DE8];
  deteriorateCopy = deteriorate;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Video stream's network has deteriorated", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraStreamManager *)selfCopy _callNetworkDeteriorated];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)videoStreamDidNetworkImprove:(id)improve
{
  v13 = *MEMORY[0x277D85DE8];
  improveCopy = improve;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Video stream's network has improved", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraStreamManager *)selfCopy _callNetworkImproved];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)videoStream:(id)stream didStop:(id)stop
{
  v18 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  stopCopy = stop;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = stopCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Video stream session has stopped with error %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraStreamManager *)selfCopy _callStreamStoppedWithError:stopCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)videoStream:(id)stream didStart:(id)start
{
  v46 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  startCopy = start;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v42 = 138543362;
    v43 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Synchronizing video and audio streams", &v42, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  audioStreamInterface = [(HMDCameraStreamManager *)selfCopy audioStreamInterface];
  videoStreamInterface = [(HMDCameraStreamManager *)selfCopy videoStreamInterface];
  streamToken = [videoStreamInterface streamToken];
  [audioStreamInterface startSynchronizationWithVideoStreamToken:{objc_msgSend(streamToken, "integerValue")}];

  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    videoStreamInterface2 = [(HMDCameraStreamManager *)v17 videoStreamInterface];
    streamToken2 = [videoStreamInterface2 streamToken];
    unsignedIntegerValue = [streamToken2 unsignedIntegerValue];
    v42 = 138543618;
    v43 = v19;
    v44 = 2048;
    v45 = unsignedIntegerValue;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Creating AVCRemoteVideoClient with stream token: %lu", &v42, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  dataSource = [(HMDCameraStreamManager *)v17 dataSource];
  videoStreamInterface3 = [(HMDCameraStreamManager *)v17 videoStreamInterface];
  streamToken3 = [videoStreamInterface3 streamToken];
  v26 = [dataSource createRemoteVideoClientWithStreamToken:objc_msgSend(streamToken3 delegate:{"unsignedIntegerValue"), v17}];
  [(HMDCameraStreamManager *)v17 setAvcRemoteVideo:v26];

  avcRemoteVideo = [(HMDCameraStreamManager *)v17 avcRemoteVideo];

  if (avcRemoteVideo)
  {
    avcRemoteVideo2 = [(HMDCameraStreamManager *)v17 avcRemoteVideo];
    v29 = [avcRemoteVideo2 slotForMode:0];
    [(HMDCameraStreamManager *)v17 setSlotIdentifier:v29];

    v30 = objc_autoreleasePoolPush();
    v31 = v17;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      slotIdentifier = [(HMDCameraStreamManager *)v31 slotIdentifier];
      v42 = 138543618;
      v43 = v33;
      v44 = 2112;
      v45 = slotIdentifier;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Updated slot identifier to %@", &v42, 0x16u);
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v35 = v17;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v42 = 138543362;
      v43 = v36;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remote video client", &v42, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v30);
  v37 = objc_autoreleasePoolPush();
  v38 = v17;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    v42 = 138543362;
    v43 = v40;
    _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Video stream has started, waiting for the first frame to arrive", &v42, 0xCu);
  }

  objc_autoreleasePoolPop(v37);
  [(HMDCameraStreamManager *)v38 _callStreamStarted];

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_callConfigurationUpdated
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidUpdateConfiguration", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraStreamManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamManagerDidUpdateConfiguration:selfCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callNetworkDeteriorated
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidNetworkDeteriorate", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraStreamManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamManagerDidNetworkDeteriorate:selfCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callNetworkImproved
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidNetworkImprove", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraStreamManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamManagerDidNetworkImprove:selfCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callStreamStoppedWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidStopStream", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraStreamManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamManagerDidStopStream:selfCopy error:errorCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_callRelayStarted
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidStartRelay:", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraStreamManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamManagerDidStartRelay:selfCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callReceivedFirstFrame
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidReceiveFirstFrame:", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraStreamManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamManagerDidReceiveFirstFrame:selfCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callStreamStarted
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidStartStream", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraStreamManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamManagerDidStartStream:selfCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioVolume:(id)volume callback:(id)callback
{
  callbackCopy = callback;
  volumeCopy = volume;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  audioStreamInterface = [(HMDCameraStreamManager *)self audioStreamInterface];
  [audioStreamInterface updateAudioVolume:volumeCopy callback:callbackCopy];
}

- (void)updateAudioSetting:(unint64_t)setting
{
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  audioStreamInterface = [(HMDCameraStreamManager *)self audioStreamInterface];
  [audioStreamInterface updateAudioSetting:setting];
}

- (void)stopStream
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping stream", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  streamSnapshotHandler = [(HMDCameraStreamManager *)selfCopy streamSnapshotHandler];
  videoStreamInterface = [(HMDCameraStreamManager *)selfCopy videoStreamInterface];
  [streamSnapshotHandler removeVideoStreamInterface:videoStreamInterface];

  audioStreamInterface = [(HMDCameraStreamManager *)selfCopy audioStreamInterface];
  state = [audioStreamInterface state];

  if (state == 2)
  {
    audioStreamInterface2 = [(HMDCameraStreamManager *)selfCopy audioStreamInterface];
    [audioStreamInterface2 stopStream];
  }

  [(HMDCameraStreamManager *)selfCopy setAvcRemoteVideo:0];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateStreamConfiguration:(id)configuration
{
  v23[4] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  videoStreamInterface = [(HMDCameraStreamManager *)self videoStreamInterface];
  [videoStreamInterface updateStreamConfiguration:configurationCopy];

  v22[0] = @"ConfigResolution";
  v7 = MEMORY[0x277CCABB0];
  video = [configurationCopy video];
  videoResolution = [video videoResolution];
  if (videoResolution < 0xA)
  {
    v10 = videoResolution + 1;
  }

  else
  {
    v10 = -1;
  }

  v11 = [v7 numberWithUnsignedInteger:v10];
  v23[0] = v11;
  v22[1] = @"ReconfigTimestamp";
  v12 = +[HMDCameraSessionID uptimeNumberInMilliseconds];
  v23[1] = v12;
  v22[2] = @"ConfigRXMinBitrate";
  v13 = MEMORY[0x277CCABB0];
  video2 = [configurationCopy video];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(video2, "rxMinBitrate")}];
  v23[2] = v15;
  v22[3] = @"ConfigRXMaxBitrate";
  v16 = MEMORY[0x277CCABB0];
  video3 = [configurationCopy video];

  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(video3, "rxMaxBitrate")}];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  sessionID = [(HMDCameraStreamManager *)self sessionID];
  [sessionID addParameterFor:@"Reconfigurations" value:v19];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)startStreamWithVideoConfig:(id)config audioConfig:(id)audioConfig
{
  v82 = *MEMORY[0x277D85DE8];
  configCopy = config;
  audioConfigCopy = audioConfig;
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  videoStreamInterface = [(HMDCameraStreamManager *)self videoStreamInterface];
  sessionHandler = [videoStreamInterface sessionHandler];

  if ([sessionHandler conformsToProtocol:&unk_2866703D8])
  {
    v11 = sessionHandler;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  v76 = configCopy;
  v77 = v12;
  if (v12)
  {
    v17 = audioConfigCopy;
    if (v16)
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v81 = v18;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting packet relay for remote stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [HMDCameraNetworkConfig alloc];
    remoteAddress = [configCopy remoteAddress];
    v21 = [remoteAddress ip];
    remoteAddress2 = [configCopy remoteAddress];
    isIPv6 = [remoteAddress2 isIPv6];
    v74 = selfCopy;
    v24 = configCopy;
    v25 = MEMORY[0x277CCABB0];
    remoteAddress3 = [v24 remoteAddress];
    v27 = [v25 numberWithUnsignedShort:{objc_msgSend(remoteAddress3, "port")}];
    v28 = [(HMDCameraNetworkConfig *)v19 initWithAddress:v21 ipv6:isIPv6 rtpPort:v27];

    v29 = [HMDCameraNetworkConfig alloc];
    remoteAddress4 = [v17 remoteAddress];
    v31 = [remoteAddress4 ip];
    remoteAddress5 = [v17 remoteAddress];
    isIPv62 = [remoteAddress5 isIPv6];
    v34 = MEMORY[0x277CCABB0];
    remoteAddress6 = [v17 remoteAddress];
    v36 = [v34 numberWithUnsignedShort:{objc_msgSend(remoteAddress6, "port")}];
    sessionID = [(HMDCameraNetworkConfig *)v29 initWithAddress:v31 ipv6:isIPv62 rtpPort:v36];

    v38 = v17;
    videoStreamInterface2 = [(HMDCameraStreamManager *)v74 videoStreamInterface];
    localRTPSocket = [videoStreamInterface2 localRTPSocket];
    deviceLocalSSRC = [v24 deviceLocalSSRC];
    audioStreamInterface = [(HMDCameraStreamManager *)v74 audioStreamInterface];
    localRTPSocket2 = [audioStreamInterface localRTPSocket];
    deviceLocalSSRC2 = [v17 deviceLocalSSRC];
    v45 = v77;
    [v77 startPacketRelayWithVideoSocket:localRTPSocket videoNetworkConfig:v28 cameraVideoSSRC:deviceLocalSSRC audioSocket:localRTPSocket2 audioNetworkConfig:sessionID cameraAudioSSRC:deviceLocalSSRC2];

    [(HMDCameraStreamManager *)v74 _callRelayStarted];
  }

  else
  {
    if (v16)
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v81 = v46;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting local stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    videoStreamInterface3 = [(HMDCameraStreamManager *)selfCopy videoStreamInterface];
    [videoStreamInterface3 startStreamWithConfig:configCopy];

    audioStreamInterface2 = [(HMDCameraStreamManager *)selfCopy audioStreamInterface];
    [audioStreamInterface2 startStreamWithConfig:audioConfigCopy];

    audio = [audioConfigCopy audio];
    v50 = [audio codecType] - 4;
    v73 = audioConfigCopy;
    if (v50 > 6)
    {
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v51 = qword_253D4BBD0[v50];
      v52 = qword_253D4BC08[v50];
    }

    sRTPCipherSuite = [configCopy SRTPCipherSuite];
    v54 = 1;
    if (sRTPCipherSuite != 5)
    {
      v54 = -1;
    }

    if (sRTPCipherSuite == 3)
    {
      v55 = 0;
    }

    else
    {
      v55 = v54;
    }

    v78[0] = @"ConfigResolution";
    v56 = MEMORY[0x277CCABB0];
    video = [configCopy video];
    videoResolution = [video videoResolution];
    if (videoResolution < 0xA)
    {
      v58 = videoResolution + 1;
    }

    else
    {
      v58 = -1;
    }

    v72 = [v56 numberWithUnsignedInteger:v58];
    v79[0] = v72;
    v78[1] = @"ConfigFramerate";
    v59 = MEMORY[0x277CCABB0];
    video2 = [configCopy video];
    v60 = [v59 numberWithUnsignedInteger:{objc_msgSend(video2, "framerate")}];
    v79[1] = v60;
    v78[2] = @"ConfigAudioCodec";
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52];
    v79[2] = v61;
    v78[3] = @"ConfigSampleRate";
    v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v51];
    v79[3] = v62;
    v78[4] = @"ConfigCryptoSuite";
    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v55];
    v79[4] = v63;
    v78[5] = @"ConfigRXMinBitrate";
    v64 = MEMORY[0x277CCABB0];
    video3 = [configCopy video];
    v66 = [v64 numberWithUnsignedInteger:{objc_msgSend(video3, "rxMinBitrate")}];
    v79[5] = v66;
    v78[6] = @"ConfigRXMaxBitrate";
    v67 = MEMORY[0x277CCABB0];
    video4 = [configCopy video];
    v69 = [v67 numberWithUnsignedInteger:{objc_msgSend(video4, "rxMaxBitrate")}];
    v79[6] = v69;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:7];

    sessionID = [(HMDCameraStreamManager *)selfCopy sessionID];
    [(HMDCameraNetworkConfig *)sessionID setParameterFor:@"InitialConfiguration" value:v28];
    v38 = v73;
    v45 = 0;
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (unint64_t)audioStreamSetting
{
  workQueue = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  audioStreamInterface = [(HMDCameraStreamManager *)self audioStreamInterface];
  audioStreamSetting = [audioStreamInterface audioStreamSetting];

  return audioStreamSetting;
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraStreamManager *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (HMDCameraStreamManager)initWithSessionID:(id)d streamSnapshotHandler:(id)handler workQueue:(id)queue delegate:(id)delegate videoStreamInterface:(id)interface audioStreamInterface:(id)streamInterface dataSource:(id)source
{
  dCopy = d;
  handlerCopy = handler;
  obj = queue;
  queueCopy = queue;
  delegateCopy = delegate;
  interfaceCopy = interface;
  interfaceCopy2 = interface;
  streamInterfaceCopy = streamInterface;
  streamInterfaceCopy2 = streamInterface;
  sourceCopy = source;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!handlerCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!queueCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!delegateCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!interfaceCopy2)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!streamInterfaceCopy2)
  {
LABEL_15:
    v27 = _HMFPreconditionFailure();
    return [(HMDCameraStreamManager *)v27 initWithSessionID:v28 streamSnapshotHandler:v29 workQueue:v30 delegate:v31 localVideoNetworkConfig:v32 localAudioNetworkConfig:v33 sessionHandler:v34, source];
  }

  v23 = sourceCopy;
  v38.receiver = self;
  v38.super_class = HMDCameraStreamManager;
  v24 = [(HMDCameraStreamManager *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_sessionID, d);
    objc_storeStrong(&v25->_streamSnapshotHandler, handler);
    objc_storeStrong(&v25->_workQueue, obj);
    objc_storeWeak(&v25->_delegate, delegateCopy);
    objc_storeStrong(&v25->_videoStreamInterface, interfaceCopy);
    objc_storeStrong(&v25->_audioStreamInterface, streamInterfaceCopy);
    objc_storeStrong(&v25->_dataSource, source);
  }

  return v25;
}

- (HMDCameraStreamManager)initWithSessionID:(id)d streamSnapshotHandler:(id)handler workQueue:(id)queue delegate:(id)delegate localVideoNetworkConfig:(id)config localAudioNetworkConfig:(id)networkConfig sessionHandler:(id)sessionHandler
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  queueCopy = queue;
  delegateCopy = delegate;
  configCopy = config;
  networkConfigCopy = networkConfig;
  sessionHandlerCopy = sessionHandler;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!handlerCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!queueCopy)
  {
LABEL_18:
    _HMFPreconditionFailure();
LABEL_19:
    _HMFPreconditionFailure();
  }

  if (!delegateCopy)
  {
    goto LABEL_19;
  }

  v21 = sessionHandlerCopy;
  v22 = [[HMDVideoStreamInterface alloc] initWithSessionID:dCopy workQueue:queueCopy delegate:self sessionHandler:sessionHandlerCopy localNetworkConfig:configCopy];
  if (v22)
  {
    v39 = networkConfigCopy;
    v23 = [[HMDAudioStreamInterface alloc] initWithSessionID:dCopy workQueue:queueCopy delegate:self sessionHandler:v21 localNetworkConfig:networkConfigCopy];
    if (v23)
    {
      v24 = configCopy;
      v25 = objc_alloc_init(HMDCameraStreamManagerDataSource);
      v26 = [(HMDCameraStreamManager *)self initWithSessionID:dCopy streamSnapshotHandler:handlerCopy workQueue:queueCopy delegate:delegateCopy videoStreamInterface:v22 audioStreamInterface:v23 dataSource:v25];

      configCopy = v24;
      v27 = v26;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v35;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio stream interface", buf, 0xCu);
      }

      v27 = selfCopy;
      objc_autoreleasePoolPop(context);
      v26 = 0;
      v23 = 0;
    }

    networkConfigCopy = v39;
    selfCopy2 = v27;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v40 = v21;
      v32 = v31 = networkConfigCopy;
      *buf = 138543362;
      v43 = v32;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video stream interface", buf, 0xCu);

      networkConfigCopy = v31;
      v21 = v40;
    }

    objc_autoreleasePoolPop(v28);
    v26 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_15826 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_15826, &__block_literal_global_15827);
  }

  v3 = logCategory__hmf_once_v3_15828;

  return v3;
}

uint64_t __37__HMDCameraStreamManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v3_15828 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end