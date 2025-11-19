@interface HMDCameraStreamManager
+ (id)logCategory;
- (HMDCameraStreamManager)initWithSessionID:(id)a3 streamSnapshotHandler:(id)a4 workQueue:(id)a5 delegate:(id)a6 localVideoNetworkConfig:(id)a7 localAudioNetworkConfig:(id)a8 sessionHandler:(id)a9;
- (HMDCameraStreamManager)initWithSessionID:(id)a3 streamSnapshotHandler:(id)a4 workQueue:(id)a5 delegate:(id)a6 videoStreamInterface:(id)a7 audioStreamInterface:(id)a8 dataSource:(id)a9;
- (HMDCameraStreamManagerDelegate)delegate;
- (id)logIdentifier;
- (unint64_t)audioStreamSetting;
- (void)_callConfigurationUpdated;
- (void)_callNetworkDeteriorated;
- (void)_callNetworkImproved;
- (void)_callReceivedFirstFrame;
- (void)_callRelayStarted;
- (void)_callStreamStarted;
- (void)_callStreamStoppedWithError:(id)a3;
- (void)remoteVideoClient:(id)a3 remoteVideoAttributesDidChange:(id)a4;
- (void)remoteVideoClientDidReceiveFirstFrame:(id)a3;
- (void)remoteVideoClientDidReceiveLastFrame:(id)a3;
- (void)remoteVideoServerDidDie:(id)a3;
- (void)startStreamWithVideoConfig:(id)a3 audioConfig:(id)a4;
- (void)stopStream;
- (void)updateAudioSetting:(unint64_t)a3;
- (void)updateAudioVolume:(id)a3 callback:(id)a4;
- (void)updateStreamConfiguration:(id)a3;
- (void)videoStream:(id)a3 didStart:(id)a4;
- (void)videoStream:(id)a3 didStop:(id)a4;
- (void)videoStreamDidNetworkDeteriorate:(id)a3;
- (void)videoStreamDidNetworkImprove:(id)a3;
- (void)videoStreamDidUpdateConfiguration:(id)a3;
@end

@implementation HMDCameraStreamManager

- (HMDCameraStreamManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteVideoServerDidDie:(id)a3
{
  v4 = [(HMDCameraStreamManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDCameraStreamManager_remoteVideoServerDidDie___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Video server has died", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteVideoClientDidReceiveLastFrame:(id)a3
{
  v4 = [(HMDCameraStreamManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDCameraStreamManager_remoteVideoClientDidReceiveLastFrame___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Last frame has been received", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteVideoClient:(id)a3 remoteVideoAttributesDidChange:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraStreamManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HMDCameraStreamManager_remoteVideoClient_remoteVideoAttributesDidChange___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Remote video attributes did change: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)remoteVideoClientDidReceiveFirstFrame:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraStreamManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDCameraStreamManager_remoteVideoClientDidReceiveFirstFrame___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@First frame has been received", &v19, 0xCu);
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Ignoring first frame received because stream has stopped", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)videoStreamDidUpdateConfiguration:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Video stream's configuration update complete", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraStreamManager *)v7 _callConfigurationUpdated];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)videoStreamDidNetworkDeteriorate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Video stream's network has deteriorated", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraStreamManager *)v7 _callNetworkDeteriorated];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)videoStreamDidNetworkImprove:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Video stream's network has improved", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraStreamManager *)v7 _callNetworkImproved];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)videoStream:(id)a3 didStop:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Video stream session has stopped with error %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraStreamManager *)v10 _callStreamStoppedWithError:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)videoStream:(id)a3 didStart:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v42 = 138543362;
    v43 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Synchronizing video and audio streams", &v42, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDCameraStreamManager *)v10 audioStreamInterface];
  v14 = [(HMDCameraStreamManager *)v10 videoStreamInterface];
  v15 = [v14 streamToken];
  [v13 startSynchronizationWithVideoStreamToken:{objc_msgSend(v15, "integerValue")}];

  v16 = objc_autoreleasePoolPush();
  v17 = v10;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [(HMDCameraStreamManager *)v17 videoStreamInterface];
    v21 = [v20 streamToken];
    v22 = [v21 unsignedIntegerValue];
    v42 = 138543618;
    v43 = v19;
    v44 = 2048;
    v45 = v22;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Creating AVCRemoteVideoClient with stream token: %lu", &v42, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v23 = [(HMDCameraStreamManager *)v17 dataSource];
  v24 = [(HMDCameraStreamManager *)v17 videoStreamInterface];
  v25 = [v24 streamToken];
  v26 = [v23 createRemoteVideoClientWithStreamToken:objc_msgSend(v25 delegate:{"unsignedIntegerValue"), v17}];
  [(HMDCameraStreamManager *)v17 setAvcRemoteVideo:v26];

  v27 = [(HMDCameraStreamManager *)v17 avcRemoteVideo];

  if (v27)
  {
    v28 = [(HMDCameraStreamManager *)v17 avcRemoteVideo];
    v29 = [v28 slotForMode:0];
    [(HMDCameraStreamManager *)v17 setSlotIdentifier:v29];

    v30 = objc_autoreleasePoolPush();
    v31 = v17;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [(HMDCameraStreamManager *)v31 slotIdentifier];
      v42 = 138543618;
      v43 = v33;
      v44 = 2112;
      v45 = v34;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Updated slot identifier to %@", &v42, 0x16u);
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
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remote video client", &v42, 0xCu);
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
    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Video stream has started, waiting for the first frame to arrive", &v42, 0xCu);
  }

  objc_autoreleasePoolPop(v37);
  [(HMDCameraStreamManager *)v38 _callStreamStarted];

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_callConfigurationUpdated
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidUpdateConfiguration", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraStreamManager *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 streamManagerDidUpdateConfiguration:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callNetworkDeteriorated
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidNetworkDeteriorate", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraStreamManager *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 streamManagerDidNetworkDeteriorate:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callNetworkImproved
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidNetworkImprove", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraStreamManager *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 streamManagerDidNetworkImprove:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callStreamStoppedWithError:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidStopStream", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraStreamManager *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 streamManagerDidStopStream:v7 error:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_callRelayStarted
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidStartRelay:", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraStreamManager *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 streamManagerDidStartRelay:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callReceivedFirstFrame
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidReceiveFirstFrame:", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraStreamManager *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 streamManagerDidReceiveFirstFrame:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callStreamStarted
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamManagerDidStartStream", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraStreamManager *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 streamManagerDidStartStream:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioVolume:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraStreamManager *)self audioStreamInterface];
  [v9 updateAudioVolume:v7 callback:v6];
}

- (void)updateAudioSetting:(unint64_t)a3
{
  v5 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraStreamManager *)self audioStreamInterface];
  [v6 updateAudioSetting:a3];
}

- (void)stopStream
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping stream", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraStreamManager *)v5 streamSnapshotHandler];
  v9 = [(HMDCameraStreamManager *)v5 videoStreamInterface];
  [v8 removeVideoStreamInterface:v9];

  v10 = [(HMDCameraStreamManager *)v5 audioStreamInterface];
  v11 = [v10 state];

  if (v11 == 2)
  {
    v12 = [(HMDCameraStreamManager *)v5 audioStreamInterface];
    [v12 stopStream];
  }

  [(HMDCameraStreamManager *)v5 setAvcRemoteVideo:0];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateStreamConfiguration:(id)a3
{
  v23[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraStreamManager *)self videoStreamInterface];
  [v6 updateStreamConfiguration:v4];

  v22[0] = @"ConfigResolution";
  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 video];
  v9 = [v8 videoResolution];
  if (v9 < 0xA)
  {
    v10 = v9 + 1;
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
  v14 = [v4 video];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "rxMinBitrate")}];
  v23[2] = v15;
  v22[3] = @"ConfigRXMaxBitrate";
  v16 = MEMORY[0x277CCABB0];
  v17 = [v4 video];

  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "rxMaxBitrate")}];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v20 = [(HMDCameraStreamManager *)self sessionID];
  [v20 addParameterFor:@"Reconfigurations" value:v19];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)startStreamWithVideoConfig:(id)a3 audioConfig:(id)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraStreamManager *)self videoStreamInterface];
  v10 = [v9 sessionHandler];

  if ([v10 conformsToProtocol:&unk_283EC79C8])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  v76 = v6;
  v77 = v12;
  if (v12)
  {
    v17 = v7;
    if (v16)
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v81 = v18;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting packet relay for remote stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [HMDCameraNetworkConfig alloc];
    v20 = [v6 remoteAddress];
    v21 = [v20 ip];
    v22 = [v6 remoteAddress];
    v23 = [v22 isIPv6];
    v74 = v14;
    v24 = v6;
    v25 = MEMORY[0x277CCABB0];
    v26 = [v24 remoteAddress];
    v27 = [v25 numberWithUnsignedShort:{objc_msgSend(v26, "port")}];
    v28 = [(HMDCameraNetworkConfig *)v19 initWithAddress:v21 ipv6:v23 rtpPort:v27];

    v29 = [HMDCameraNetworkConfig alloc];
    v30 = [v17 remoteAddress];
    v31 = [v30 ip];
    v32 = [v17 remoteAddress];
    v33 = [v32 isIPv6];
    v34 = MEMORY[0x277CCABB0];
    v35 = [v17 remoteAddress];
    v36 = [v34 numberWithUnsignedShort:{objc_msgSend(v35, "port")}];
    v37 = [(HMDCameraNetworkConfig *)v29 initWithAddress:v31 ipv6:v33 rtpPort:v36];

    v38 = v17;
    v39 = [(HMDCameraStreamManager *)v74 videoStreamInterface];
    v40 = [v39 localRTPSocket];
    v41 = [v24 deviceLocalSSRC];
    v42 = [(HMDCameraStreamManager *)v74 audioStreamInterface];
    v43 = [v42 localRTPSocket];
    v44 = [v17 deviceLocalSSRC];
    v45 = v77;
    [v77 startPacketRelayWithVideoSocket:v40 videoNetworkConfig:v28 cameraVideoSSRC:v41 audioSocket:v43 audioNetworkConfig:v37 cameraAudioSSRC:v44];

    [(HMDCameraStreamManager *)v74 _callRelayStarted];
  }

  else
  {
    if (v16)
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v81 = v46;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting local stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v47 = [(HMDCameraStreamManager *)v14 videoStreamInterface];
    [v47 startStreamWithConfig:v6];

    v48 = [(HMDCameraStreamManager *)v14 audioStreamInterface];
    [v48 startStreamWithConfig:v7];

    v49 = [v7 audio];
    v50 = [v49 codecType] - 4;
    v73 = v7;
    if (v50 > 6)
    {
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v51 = qword_22A587788[v50];
      v52 = qword_22A5877C0[v50];
    }

    v53 = [v6 SRTPCipherSuite];
    v54 = 1;
    if (v53 != 5)
    {
      v54 = -1;
    }

    if (v53 == 3)
    {
      v55 = 0;
    }

    else
    {
      v55 = v54;
    }

    v78[0] = @"ConfigResolution";
    v56 = MEMORY[0x277CCABB0];
    v75 = [v6 video];
    v57 = [v75 videoResolution];
    if (v57 < 0xA)
    {
      v58 = v57 + 1;
    }

    else
    {
      v58 = -1;
    }

    v72 = [v56 numberWithUnsignedInteger:v58];
    v79[0] = v72;
    v78[1] = @"ConfigFramerate";
    v59 = MEMORY[0x277CCABB0];
    v71 = [v6 video];
    v60 = [v59 numberWithUnsignedInteger:{objc_msgSend(v71, "framerate")}];
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
    v65 = [v6 video];
    v66 = [v64 numberWithUnsignedInteger:{objc_msgSend(v65, "rxMinBitrate")}];
    v79[5] = v66;
    v78[6] = @"ConfigRXMaxBitrate";
    v67 = MEMORY[0x277CCABB0];
    v68 = [v6 video];
    v69 = [v67 numberWithUnsignedInteger:{objc_msgSend(v68, "rxMaxBitrate")}];
    v79[6] = v69;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:7];

    v37 = [(HMDCameraStreamManager *)v14 sessionID];
    [(HMDCameraNetworkConfig *)v37 setParameterFor:@"InitialConfiguration" value:v28];
    v38 = v73;
    v45 = 0;
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (unint64_t)audioStreamSetting
{
  v3 = [(HMDCameraStreamManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraStreamManager *)self audioStreamInterface];
  v5 = [v4 audioStreamSetting];

  return v5;
}

- (id)logIdentifier
{
  v2 = [(HMDCameraStreamManager *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (HMDCameraStreamManager)initWithSessionID:(id)a3 streamSnapshotHandler:(id)a4 workQueue:(id)a5 delegate:(id)a6 videoStreamInterface:(id)a7 audioStreamInterface:(id)a8 dataSource:(id)a9
{
  v16 = a3;
  v17 = a4;
  obj = a5;
  v18 = a5;
  v19 = a6;
  v36 = a7;
  v20 = a7;
  v37 = a8;
  v21 = a8;
  v22 = a9;
  if (!v16)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v17)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v18)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v19)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v20)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v21)
  {
LABEL_15:
    v27 = _HMFPreconditionFailure();
    return [(HMDCameraStreamManager *)v27 initWithSessionID:v28 streamSnapshotHandler:v29 workQueue:v30 delegate:v31 localVideoNetworkConfig:v32 localAudioNetworkConfig:v33 sessionHandler:v34, a9];
  }

  v23 = v22;
  v38.receiver = self;
  v38.super_class = HMDCameraStreamManager;
  v24 = [(HMDCameraStreamManager *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_sessionID, a3);
    objc_storeStrong(&v25->_streamSnapshotHandler, a4);
    objc_storeStrong(&v25->_workQueue, obj);
    objc_storeWeak(&v25->_delegate, v19);
    objc_storeStrong(&v25->_videoStreamInterface, v36);
    objc_storeStrong(&v25->_audioStreamInterface, v37);
    objc_storeStrong(&v25->_dataSource, a9);
  }

  return v25;
}

- (HMDCameraStreamManager)initWithSessionID:(id)a3 streamSnapshotHandler:(id)a4 workQueue:(id)a5 delegate:(id)a6 localVideoNetworkConfig:(id)a7 localAudioNetworkConfig:(id)a8 sessionHandler:(id)a9
{
  v44 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v41 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v41)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v16)
  {
LABEL_18:
    _HMFPreconditionFailure();
LABEL_19:
    _HMFPreconditionFailure();
  }

  if (!v17)
  {
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [[HMDVideoStreamInterface alloc] initWithSessionID:v15 workQueue:v16 delegate:self sessionHandler:v20 localNetworkConfig:v18];
  if (v22)
  {
    v39 = v19;
    v23 = [[HMDAudioStreamInterface alloc] initWithSessionID:v15 workQueue:v16 delegate:self sessionHandler:v21 localNetworkConfig:v19];
    if (v23)
    {
      v24 = v18;
      v25 = objc_alloc_init(HMDCameraStreamManagerDataSource);
      v26 = [(HMDCameraStreamManager *)self initWithSessionID:v15 streamSnapshotHandler:v41 workQueue:v16 delegate:v17 videoStreamInterface:v22 audioStreamInterface:v23 dataSource:v25];

      v18 = v24;
      v27 = v26;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v35;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio stream interface", buf, 0xCu);
      }

      v27 = v33;
      objc_autoreleasePoolPop(context);
      v26 = 0;
      v23 = 0;
    }

    v19 = v39;
    v29 = v27;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v40 = v21;
      v32 = v31 = v19;
      *buf = 138543362;
      v43 = v32;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video stream interface", buf, 0xCu);

      v19 = v31;
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
  if (logCategory__hmf_once_t2_22948 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_22948, &__block_literal_global_22949);
  }

  v3 = logCategory__hmf_once_v3_22950;

  return v3;
}

void __37__HMDCameraStreamManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_22950;
  logCategory__hmf_once_v3_22950 = v1;
}

@end