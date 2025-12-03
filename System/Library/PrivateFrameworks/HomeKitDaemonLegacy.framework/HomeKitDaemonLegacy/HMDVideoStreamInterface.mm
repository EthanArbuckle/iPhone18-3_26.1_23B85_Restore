@interface HMDVideoStreamInterface
+ (id)_createLocalStreamAndRTPSocket:(int *)socket localNetworkConfig:(id)config sessionID:(id)d;
+ (id)_createStreamWithRemoteDestinationReceiver:(id)receiver sessionID:(id)d;
+ (id)_createStreamWithRemoteSocketReceiver:(id)receiver sessionID:(id)d;
+ (id)_createVideoStreamWithSessionHandler:(id)handler localNetworkConfig:(id)config localRTPSocket:(int *)socket sessionID:(id)d;
+ (id)logCategory;
+ (int)_createLocalRTPSocketWithRemoteSender:(id)sender localNetworkConfig:(id)config;
- (HMDVideoStreamInterface)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate sessionHandler:(id)handler localNetworkConfig:(id)config;
- (HMDVideoStreamInterfaceDelegate)delegate;
- (HMDVideoStreamLastDecodedFrameDelegate)snapshotDelegate;
- (NSNumber)streamToken;
- (NSNumber)syncSource;
- (id)logIdentifier;
- (void)_callDidGetLastDecodedFrame:(id)frame;
- (void)_callDidUpdateConfiguration;
- (void)_callNetworkDeteriorated;
- (void)_callNetworkImproved;
- (void)_callStarted:(id)started;
- (void)_callStopped:(id)stopped;
- (void)captureSnapshot;
- (void)dealloc;
- (void)startStreamWithConfig:(id)config;
- (void)stopStream;
- (void)stream:(id)stream didGetLastDecodedFrame:(id)frame;
- (void)stream:(id)stream didStart:(BOOL)start error:(id)error;
- (void)stream:(id)stream didUpdateVideoConfiguration:(BOOL)configuration error:(id)error;
- (void)stream:(id)stream downlinkQualityDidChange:(id)change;
- (void)streamDidRTCPTimeOut:(id)out;
- (void)streamDidRTPTimeOut:(id)out;
- (void)streamDidServerDie:(id)die;
- (void)streamDidStop:(id)stop;
- (void)updateStreamConfiguration:(id)configuration;
- (void)videoStreamReconfigureDidNetworkDeteriorate:(id)deteriorate;
- (void)videoStreamReconfigureDidNetworkImprove:(id)improve;
@end

@implementation HMDVideoStreamInterface

- (HMDVideoStreamLastDecodedFrameDelegate)snapshotDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotDelegate);

  return WeakRetained;
}

- (HMDVideoStreamInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)videoStreamReconfigureDidNetworkImprove:(id)improve
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDVideoStreamInterface *)self _callNetworkImproved];
}

- (void)videoStreamReconfigureDidNetworkDeteriorate:(id)deteriorate
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDVideoStreamInterface *)self _callNetworkDeteriorated];
}

- (void)streamDidRTCPTimeOut:(id)out
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDVideoStreamInterface_streamDidRTCPTimeOut___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __48__HMDVideoStreamInterface_streamDidRTCPTimeOut___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Video stream RTCP has timed out", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)streamDidRTPTimeOut:(id)out
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDVideoStreamInterface_streamDidRTPTimeOut___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __47__HMDVideoStreamInterface_streamDidRTPTimeOut___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Video stream RTP has timed out", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1012];
  [v6 _callStopped:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)streamDidServerDie:(id)die
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDVideoStreamInterface_streamDidServerDie___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __46__HMDVideoStreamInterface_streamDidServerDie___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Video stream server died", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1014];
  [v6 _callStopped:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)streamDidStop:(id)stop
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDVideoStreamInterface_streamDidStop___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __41__HMDVideoStreamInterface_streamDidStop___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@streamDidStop", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _callStopped:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stream:(id)stream didGetLastDecodedFrame:(id)frame
{
  frameCopy = frame;
  workQueue = [(HMDStreamInterface *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HMDVideoStreamInterface_stream_didGetLastDecodedFrame___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = frameCopy;
  v7 = frameCopy;
  dispatch_async(workQueue, v8);
}

- (void)stream:(id)stream downlinkQualityDidChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDStreamInterface *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HMDVideoStreamInterface_stream_downlinkQualityDidChange___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(workQueue, v8);
}

void __59__HMDVideoStreamInterface_stream_downlinkQualityDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) videoStreamReconfigure];
  [v2 downlinkQualityChanged:*(a1 + 40)];
}

- (void)stream:(id)stream didUpdateVideoConfiguration:(BOOL)configuration error:(id)error
{
  errorCopy = error;
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDVideoStreamInterface_stream_didUpdateVideoConfiguration_error___block_invoke;
  block[3] = &unk_279734938;
  configurationCopy = configuration;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(workQueue, block);
}

uint64_t __68__HMDVideoStreamInterface_stream_didUpdateVideoConfiguration_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v7 = HMFBooleanToString();
    v8 = *(a1 + 40);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Video stream did update video configuration: %@ error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _callDidUpdateConfiguration];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stream:(id)stream didStart:(BOOL)start error:(id)error
{
  errorCopy = error;
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDVideoStreamInterface_stream_didStart_error___block_invoke;
  block[3] = &unk_279734938;
  startCopy = start;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(workQueue, block);
}

uint64_t __49__HMDVideoStreamInterface_stream_didStart_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v7 = HMFBooleanToString();
    v8 = *(a1 + 40);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Video stream did start: %@ error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _callStarted:*(a1 + 40)];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_callDidGetLastDecodedFrame:(id)frame
{
  v24 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  snapshotDelegate = [(HMDVideoStreamInterface *)self snapshotDelegate];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Calling delegate videoStream:didGetLastDecodedFrame:", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  videoStream = [(HMDVideoStreamInterface *)selfCopy videoStream];
  configuration = [videoStream configuration];
  video = [configuration video];
  videoResolution = [video videoResolution];

  v15 = [HMDVideoResolution alloc];
  if (videoResolution < 0xA)
  {
    v16 = videoResolution + 1;
  }

  else
  {
    v16 = -1;
  }

  v17 = [(HMDVideoResolution *)v15 initWithResolution:v16];
  v18 = [HMDCameraSnapshot alloc];
  snapshotTransaction = [(HMDVideoStreamInterface *)selfCopy snapshotTransaction];
  v20 = [(HMDCameraSnapshot *)v18 initWithImageData:frameCopy videoResolution:v17 transaction:snapshotTransaction];

  [(HMDVideoStreamInterface *)selfCopy setSnapshotTransaction:0];
  if (objc_opt_respondsToSelector())
  {
    [snapshotDelegate videoStream:selfCopy didGetLastDecodedFrame:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_callDidUpdateConfiguration
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate videoStreamDidUpdateConfiguration", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDVideoStreamInterface *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate videoStreamDidUpdateConfiguration:selfCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callNetworkDeteriorated
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate videoStreamDidNetworkDeteriorate", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDVideoStreamInterface *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate videoStreamDidNetworkDeteriorate:selfCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callNetworkImproved
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate videoStreamDidNetworkImprove", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDVideoStreamInterface *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate videoStreamDidNetworkImprove:selfCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callStopped:(id)stopped
{
  v14 = *MEMORY[0x277D85DE8];
  stoppedCopy = stopped;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDStreamInterface *)self setState:3];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate videoStream:didStop", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDVideoStreamInterface *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate videoStream:selfCopy didStop:stoppedCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_callStarted:(id)started
{
  v14 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate videoStream:didStart", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDVideoStreamInterface *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate videoStream:selfCopy didStart:startedCopy];
  }

  [(HMDStreamInterface *)selfCopy setState:2];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)captureSnapshot
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-last-decoded-frame"];
  [(HMDVideoStreamInterface *)self setSnapshotTransaction:v4];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Requesting last decoded frame", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  videoStream = [(HMDVideoStreamInterface *)selfCopy videoStream];
  [videoStream requestLastDecodedFrame];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopStream
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping video stream", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  videoStream = [(HMDVideoStreamInterface *)selfCopy videoStream];
  [videoStream stop];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateStreamConfiguration:(id)configuration
{
  v18 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    video = [configurationCopy video];
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = video;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating video stream with video configuration: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  videoStream = [(HMDVideoStreamInterface *)selfCopy videoStream];
  video2 = [configurationCopy video];
  [videoStream updateVideoConfiguration:video2];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startStreamWithConfig:(id)config
{
  v28 = *MEMORY[0x277D85DE8];
  configCopy = config;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDStreamInterface *)self loadMiscFields:configCopy];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v6)
  {
    if (v10)
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to load misc fields to video config", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1016];
    goto LABEL_14;
  }

  if (v10)
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = configCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring video stream with configuration: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  videoStream = [(HMDVideoStreamInterface *)selfCopy videoStream];
  v23 = 0;
  v13 = [videoStream configure:configCopy error:&v23];
  v14 = v23;

  v15 = objc_autoreleasePoolPush();
  selfCopy = selfCopy;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure video stream: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
LABEL_14:
    [(HMDVideoStreamInterface *)selfCopy _callStarted:v14];
    goto LABEL_15;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Starting video stream", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  videoStream2 = [(HMDVideoStreamInterface *)selfCopy videoStream];
  [videoStream2 start];

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

- (NSNumber)streamToken
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = MEMORY[0x277CCABB0];
  videoStream = [(HMDVideoStreamInterface *)self videoStream];
  v6 = [v4 numberWithInteger:{objc_msgSend(videoStream, "streamToken")}];

  return v6;
}

- (NSNumber)syncSource
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  videoStream = [(HMDVideoStreamInterface *)self videoStream];
  capabilities = [videoStream capabilities];
  v6 = [capabilities objectForKeyedSubscript:*MEMORY[0x277CE5780]];

  return v6;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMDVideoStreamInterface object", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDVideoStreamInterface;
  [(HMDStreamInterface *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  sessionID = [(HMDStreamInterface *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (HMDVideoStreamInterface)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate sessionHandler:(id)handler localNetworkConfig:(id)config
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  queueCopy = queue;
  delegateCopy = delegate;
  handlerCopy = handler;
  configCopy = config;
  v30 = -1;
  v17 = [objc_opt_class() _createVideoStreamWithSessionHandler:handlerCopy localNetworkConfig:configCopy localRTPSocket:&v30 sessionID:dCopy];
  if (isWatch() || cameraStreamNetworkAdaptation != 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = [[HMDVideoStreamReconfigure alloc] initWithSessionID:dCopy workQueue:queueCopy delegate:self];
  }

  v19 = v30;
  v20 = objc_alloc_init(HMDVideoStreamInterfaceDataSource);
  v21 = [(HMDVideoStreamInterface *)self initWithSessionID:dCopy workQueue:queueCopy delegate:delegateCopy sessionHandler:handlerCopy videoStream:v17 localRTPSocket:v19 videoStreamReconfigure:v18 dataSource:v20];

  if (v17 || v30 != -1)
  {
    v25 = v21;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v22 = v21;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v24 = v28 = delegateCopy;
      *buf = 138543362;
      v32 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video stream interface", buf, 0xCu);

      delegateCopy = v28;
    }

    objc_autoreleasePoolPop(context);
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (id)_createLocalStreamAndRTPSocket:(int *)socket localNetworkConfig:(id)config sessionID:(id)d
{
  v42 = *MEMORY[0x277D85DE8];
  configCopy = config;
  dCopy = d;
  v10 = [self openSocketWithNetworkConfig:configCopy];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10 == -1)
  {
    if (v14)
    {
      v23 = HMFGetLogIdentifier();
      rtpPort = [configCopy rtpPort];
      stringValue = [rtpPort stringValue];
      v26 = *__error();
      *buf = 138543874;
      v37 = v23;
      v38 = 2112;
      v39 = stringValue;
      v40 = 1024;
      v41 = v26;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Could not create rtp socket with port %@ %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v11);
    v20 = 0;
  }

  else
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v15;
      v38 = 1024;
      LODWORD(v39) = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating local video stream with socket %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_fd(v16, *MEMORY[0x277CE5788], v10);
    v17 = objc_alloc(MEMORY[0x277CE5758]);
    v34 = *MEMORY[0x277CE57D8];
    v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];
    v35 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v33 = 0;
    v20 = [v17 initWithNetworkSockets:v16 options:v19 error:&v33];
    v21 = v33;

    if (v20)
    {
      *socket = v10;
      v22 = v20;
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v30;
        v38 = 2112;
        v39 = v21;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create local AVCVideoStream: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      close(v10);
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (int)_createLocalRTPSocketWithRemoteSender:(id)sender localNetworkConfig:(id)config
{
  v24 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  configCopy = config;
  v8 = [self openSocketWithNetworkConfig:configCopy];
  if (v8 == -1)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      rtpPort = [configCopy rtpPort];
      stringValue = [rtpPort stringValue];
      v15 = *__error();
      v18 = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = stringValue;
      v22 = 1024;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Could not create rtp socket with port %@ %d", &v18, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_createStreamWithRemoteSocketReceiver:(id)receiver sessionID:(id)d
{
  v31[1] = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v11;
    v28 = 1024;
    LODWORD(v29) = [receiverCopy remoteVideoSocket];
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating video stream with socket %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_fd(v12, *MEMORY[0x277CE5788], [receiverCopy remoteVideoSocket]);
  v13 = objc_alloc(MEMORY[0x277CE5758]);
  v30 = *MEMORY[0x277CE57D8];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];
  v31[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v25 = 0;
  v16 = [v13 initWithNetworkSockets:v12 options:v15 error:&v25];
  v17 = v25;

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remote socket receiver AVCVideoStream: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_createStreamWithRemoteDestinationReceiver:(id)receiver sessionID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    remoteDestination = [receiverCopy remoteDestination];
    *buf = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = remoteDestination;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating video stream with destination: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = objc_alloc(MEMORY[0x277CE5758]);
  remoteDestination2 = [receiverCopy remoteDestination];
  v27 = *MEMORY[0x277CE57D8];
  v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];
  v28 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v26 = 0;
  v17 = [v13 initWithIDSDestination:remoteDestination2 options:v16 error:&v26];
  v18 = v26;

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remote destination receiver AVCVideoStream: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_createVideoStreamWithSessionHandler:(id)handler localNetworkConfig:(id)config localRTPSocket:(int *)socket sessionID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  configCopy = config;
  dCopy = d;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v16;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Creating the video stream", &v31, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v17 = handlerCopy;
  if ([v17 conformsToProtocol:&unk_2866703D8])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    v20 = [selfCopy _createLocalRTPSocketWithRemoteSender:v19 localNetworkConfig:configCopy];
    v21 = 0;
    *socket = v20;
  }

  else
  {
    v22 = v17;
    if ([v22 conformsToProtocol:&unk_286701D40])
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v24)
    {
      sessionID = [dCopy sessionID];
      v21 = [selfCopy _createStreamWithRemoteDestinationReceiver:v24 sessionID:sessionID];
    }

    else
    {
      v26 = v22;
      if ([v26 conformsToProtocol:&unk_2866763F8])
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      sessionID = v27;

      sessionID2 = [dCopy sessionID];
      if (sessionID)
      {
        [selfCopy _createStreamWithRemoteSocketReceiver:sessionID sessionID:sessionID2];
      }

      else
      {
        [selfCopy _createLocalStreamAndRTPSocket:socket localNetworkConfig:configCopy sessionID:sessionID2];
      }
      v21 = ;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_15453 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_15453, &__block_literal_global_15454);
  }

  v3 = logCategory__hmf_once_v2_15455;

  return v3;
}

uint64_t __38__HMDVideoStreamInterface_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v2_15455 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end