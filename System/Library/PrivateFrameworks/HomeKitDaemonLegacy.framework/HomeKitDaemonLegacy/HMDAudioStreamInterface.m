@interface HMDAudioStreamInterface
+ (NSHashTable)mutedStreams;
+ (id)_createAudioStreamWithSessionHandler:(id)a3 localNetworkConfig:(id)a4 localRTPSocket:(int *)a5 sessionID:(id)a6;
+ (id)_createLocalStreamAndRTPSocket:(int *)a3 localNetworkConfig:(id)a4 sessionID:(id)a5;
+ (id)_createStreamWithRemoteDestinationReceiver:(id)a3 sessionID:(id)a4;
+ (id)_createStreamWithRemoteSocketReceiver:(id)a3 sessionID:(id)a4;
+ (id)logCategory;
+ (int)_createLocalRTPSocketWithRemoteSender:(id)a3 localNetworkConfig:(id)a4;
- (BOOL)isMuted;
- (BOOL)removeMutedStream:(id)a3;
- (HMDAudioStreamInterface)initWithSessionID:(id)a3 workQueue:(id)a4 delegate:(id)a5 sessionHandler:(id)a6 localNetworkConfig:(id)a7;
- (HMDAudioStreamInterfaceDelegate)delegate;
- (NSNumber)downlinkToken;
- (NSNumber)syncSource;
- (NSNumber)uplinkToken;
- (id)logIdentifier;
- (void)_callPaused:(id)a3;
- (void)_callResumed:(id)a3;
- (void)_callStarted:(id)a3;
- (void)_callStopped:(id)a3;
- (void)_pauseStream;
- (void)_resumeStream;
- (void)_stopStreamWithCompletion:(id)a3;
- (void)addMutedStream:(id)a3;
- (void)dealloc;
- (void)startPHASEEngineAndController;
- (void)startStreamWithConfig:(id)a3;
- (void)startSynchronizationWithVideoStreamToken:(int64_t)a3;
- (void)stopStream;
- (void)stream:(id)a3 didPause:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didResume:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)streamDidRTCPTimeOut:(id)a3;
- (void)streamDidRTPTimeOut:(id)a3;
- (void)streamDidServerDie:(id)a3;
- (void)streamDidStop:(id)a3;
- (void)updateAudioSetting:(unint64_t)a3;
- (void)updateAudioVolume:(id)a3 callback:(id)a4;
@end

@implementation HMDAudioStreamInterface

- (HMDAudioStreamInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDStreamInterface *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)streamDidRTCPTimeOut:(id)a3
{
  v4 = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDAudioStreamInterface_streamDidRTCPTimeOut___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __48__HMDAudioStreamInterface_streamDidRTCPTimeOut___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream RTCP has timed out", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)streamDidRTPTimeOut:(id)a3
{
  v4 = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDAudioStreamInterface_streamDidRTPTimeOut___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __47__HMDAudioStreamInterface_streamDidRTPTimeOut___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream RTP has timed out", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)streamDidServerDie:(id)a3
{
  v4 = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDAudioStreamInterface_streamDidServerDie___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __46__HMDAudioStreamInterface_streamDidServerDie___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream server died", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1014];
  [v6 _callStopped:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stream:(id)a3 didResume:(BOOL)a4 error:(id)a5
{
  v7 = a5;
  v8 = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDAudioStreamInterface_stream_didResume_error___block_invoke;
  block[3] = &unk_279734938;
  v12 = a4;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

uint64_t __50__HMDAudioStreamInterface_stream_didResume_error___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream resumed with didResume: %@ error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _callResumed:*(a1 + 40)];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stream:(id)a3 didPause:(BOOL)a4 error:(id)a5
{
  v7 = a5;
  v8 = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDAudioStreamInterface_stream_didPause_error___block_invoke;
  block[3] = &unk_279734938;
  v12 = a4;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

uint64_t __49__HMDAudioStreamInterface_stream_didPause_error___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream paused with didPause: %@ error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _callPaused:*(a1 + 40)];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)streamDidStop:(id)a3
{
  v4 = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDAudioStreamInterface_streamDidStop___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __41__HMDAudioStreamInterface_streamDidStop___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream stopped", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _callStopped:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v7 = a5;
  v8 = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDAudioStreamInterface_stream_didStart_error___block_invoke;
  block[3] = &unk_279734938;
  v12 = a4;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

uint64_t __49__HMDAudioStreamInterface_stream_didStart_error___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream started with didStart: %@ error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _callStarted:*(a1 + 40)];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startPHASEEngineAndController
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAudioStreamInterface *)self dataSource];
  v5 = [v4 supportsPHASE];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDAudioStreamInterface *)v7 audioStream];
      *buf = 138543618;
      v17 = v9;
      v18 = 2048;
      v19 = [v10 streamToken];
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating PHASE engine and controller for stream token: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDAudioStreamInterface *)v7 dataSource];
    v12 = [(HMDAudioStreamInterface *)v7 audioStream];
    v13 = [v12 streamToken];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__HMDAudioStreamInterface_startPHASEEngineAndController__block_invoke;
    v15[3] = &unk_2797255A0;
    v15[4] = v7;
    [v11 createPHASEEngineAndControllerForStreamToken:v13 completion:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __56__HMDAudioStreamInterface_startPHASEEngineAndController__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create PHASE engine and controller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v14 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDAudioStreamInterface_startPHASEEngineAndController__block_invoke_91;
    block[3] = &unk_279734960;
    block[4] = *(a1 + 32);
    v17 = v7;
    v18 = v8;
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __56__HMDAudioStreamInterface_startPHASEEngineAndController__block_invoke_91(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 3)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Not starting PHASEExternalOutputStreamController as stream is already stopped", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 40) stop];
  }

  else
  {
    v6 = *(a1 + 48);
    v14 = 0;
    v7 = [v6 startAndReturnError:&v14];
    v8 = v14;
    if (v7)
    {
      [*(a1 + 32) setEngine:*(a1 + 40)];
      [*(a1 + 32) setOutputStreamController:*(a1 + 48)];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to start PHASEExternalOutputStreamController: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [*(a1 + 40) stop];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_callStopped:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDStreamInterface *)self setState:3];
  v6 = [(HMDAudioStreamInterface *)self dataSource];
  if ([v6 usesGlobalMuting])
  {
    v7 = [(HMDAudioStreamInterface *)self removeMutedStream:self];

    if (v7)
    {
      [(HMDAudioStreamInterface *)self setMuted:0];
    }
  }

  else
  {
  }

  v8 = [(HMDAudioStreamInterface *)self outputStreamController];
  [v8 stopAndInvalidate];

  [(HMDAudioStreamInterface *)self setOutputStreamController:0];
  v9 = [(HMDAudioStreamInterface *)self engine];
  [v9 stop];

  [(HMDAudioStreamInterface *)self setEngine:0];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Calling delegate audioStream:didStop", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HMDAudioStreamInterface *)v11 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v14 audioStream:v11 didStop:v4];
  }

  v15 = [(HMDAudioStreamInterface *)v11 stopStreamCompletionHandler];
  if (v15)
  {
    [(HMDAudioStreamInterface *)v11 setStopStreamCompletionHandler:0];
    v15[2](v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_callResumed:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate audioStream:didResume", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDAudioStreamInterface *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 audioStream:v7 didResume:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_callPaused:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate audioStream:didPause", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDAudioStreamInterface *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 audioStream:v7 didPause:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_callStarted:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDStreamInterface *)self setState:2];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate audioStream:didStart", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDAudioStreamInterface *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 audioStream:v7 didStart:v4];
  }

  [(HMDAudioStreamInterface *)v7 startPHASEEngineAndController];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMuted
{
  v3 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAudioStreamInterface *)self dataSource];
  LOBYTE(v3) = [v4 isMuted];

  return v3;
}

- (BOOL)removeMutedStream:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [objc_opt_class() mutedStreams];
  [v4 removeObject:v3];

  v5 = [objc_opt_class() mutedStreams];
  v6 = [v5 anyObject];
  LOBYTE(v4) = v6 == 0;
  v7 = shouldRestoreUnmuting;

  os_unfair_lock_unlock(&mutedStreamsLock);
  return v4 & v7;
}

- (void)addMutedStream:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [objc_opt_class() mutedStreams];
  v6 = [v5 anyObject];

  if (!v6)
  {
    v7 = [(HMDAudioStreamInterface *)self dataSource];
    shouldRestoreUnmuting = [v7 isMuted] ^ 1;

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 1024;
      v17 = shouldRestoreUnmuting;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding first muted stream, so set should restore unmuting to %{BOOL}d", &v14, 0x12u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = [objc_opt_class() mutedStreams];
  [v12 addObject:v4];

  os_unfair_lock_unlock(&mutedStreamsLock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)startSynchronizationWithVideoStreamToken:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting synchronization with video stream token: %ld", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDAudioStreamInterface *)v7 audioStream];
  [v10 startSynchronizeWithStream:a3];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resumeStream
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAudioStreamInterface *)self dataSource];
  v5 = [(HMDAudioStreamInterface *)self isMuted];
  v6 = [(HMDStreamInterface *)self sessionID];
  v7 = [v6 hostProcessBundleIdentifier];
  [v4 setAudioSessionPropertiesWithShouldAllowSystemSounds:v5 hostProcessBundleIdentifier:v7];

  LODWORD(v6) = [(HMDAudioStreamInterface *)self streamStarted];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Resuming audio stream", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [(HMDAudioStreamInterface *)v9 audioStream];
    [v13 resume];
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting audio stream", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDAudioStreamInterface *)v9 setStreamStarted:1];
    v13 = [(HMDAudioStreamInterface *)v9 audioStream];
    [v13 start];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_pauseStream
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Pausing audio stream", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDAudioStreamInterface *)v5 audioStream];
  [v8 pause];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_stopStreamWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDStreamInterface *)self state]== 3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Not stopping stream because it has already stopped", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v4[2](v4);
  }

  else
  {
    [(HMDAudioStreamInterface *)self setStopStreamCompletionHandler:v4];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Stopping audio stream", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(HMDAudioStreamInterface *)v11 audioStream];
    [v14 stop];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopStream
{
  v3 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__HMDAudioStreamInterface_stopStream__block_invoke;
  v4[3] = &unk_279735D00;
  v4[4] = self;
  [(HMDAudioStreamInterface *)self _stopStreamWithCompletion:v4];
}

- (void)updateAudioVolume:(id)a3 callback:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMDAudioStreamInterface *)v10 audioStream];
    [v13 volume];
    v15 = v14;
    [v6 floatValue];
    v26 = 138543874;
    v27 = v12;
    v28 = 2048;
    v29 = v15;
    v30 = 2048;
    v31 = v16;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting audio stream volume from %f to %f", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [v6 floatValue];
  v18 = v17;
  v19 = [(HMDAudioStreamInterface *)v10 audioStream];
  LODWORD(v20) = v18;
  [v19 setVolume:v20];

  v21 = [(HMDAudioStreamInterface *)v10 audioStream];
  [v21 volume];
  v23 = v22;
  [v6 floatValue];
  v7[2](v7, v23 == v24);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioSetting:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (a3 - 1 >= 3)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v17;
      v26 = 2048;
      v27 = a3;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Invalid audio stream setting %tu", &v24, 0x16u);
    }

    v13 = v14;
    goto LABEL_9;
  }

  v6 = [(HMDAudioStreamInterface *)self audioStreamSetting];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6 == a3)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      [(HMDAudioStreamInterface *)v8 audioStreamSetting];
      v12 = HMCameraAudioStreamSettingAsString();
      v24 = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Audio stream setting is already set to %@", &v24, 0x16u);
    }

    v13 = v7;
LABEL_9:
    objc_autoreleasePoolPop(v13);
    goto LABEL_10;
  }

  if (v10)
  {
    v19 = HMFGetLogIdentifier();
    [(HMDAudioStreamInterface *)v8 audioStreamSetting];
    v20 = HMCameraAudioStreamSettingAsString();
    v21 = HMCameraAudioStreamSettingAsString();
    v24 = 138543874;
    v25 = v19;
    v26 = 2112;
    v27 = v20;
    v28 = 2112;
    v29 = v21;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Changing the audio stream setting from %@ to %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDAudioStreamInterface *)v8 setAudioStreamSetting:a3];
  switch(a3)
  {
    case 3uLL:
      v22 = v8;
      v23 = 0;
      goto LABEL_19;
    case 2uLL:
      v22 = v8;
      v23 = 1;
LABEL_19:
      [(HMDAudioStreamInterface *)v22 setMuted:v23];
      [(HMDAudioStreamInterface *)v8 _resumeStream];
      break;
    case 1uLL:
      [(HMDAudioStreamInterface *)v8 _pauseStream];
      break;
  }

LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)startStreamWithConfig:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDStreamInterface *)self loadMiscFields:v4];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v6)
  {
    if (v10)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v19;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to load misc fields to audio config", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1016];
    goto LABEL_11;
  }

  if (v10)
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring audio stream with configuration: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDAudioStreamInterface *)v8 audioStream];
  v21 = 0;
  v13 = [v12 configure:v4 error:&v21];
  v14 = v21;

  if ((v13 & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v8;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure audio stream: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
LABEL_11:
    [(HMDAudioStreamInterface *)v8 _callStarted:v14];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (NSNumber)uplinkToken
{
  v3 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAudioStreamInterface *)self audioStream];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [(HMDAudioStreamInterface *)self audioStream];
    v7 = [v5 numberWithInteger:{objc_msgSend(v6, "uplinkToken")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)downlinkToken
{
  v3 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAudioStreamInterface *)self audioStream];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [(HMDAudioStreamInterface *)self audioStream];
    v7 = [v5 numberWithInteger:{objc_msgSend(v6, "downlinkToken")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)syncSource
{
  v3 = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAudioStreamInterface *)self audioStream];
  v5 = [v4 capabilities];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CE5780]];

  return v6;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMDAudioStreamInterface object", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDAudioStreamInterface;
  [(HMDStreamInterface *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDAudioStreamInterface)initWithSessionID:(id)a3 workQueue:(id)a4 delegate:(id)a5 sessionHandler:(id)a6 localNetworkConfig:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27 = -1;
  v17 = [objc_opt_class() _createAudioStreamWithSessionHandler:v15 localNetworkConfig:v16 localRTPSocket:&v27 sessionID:v12];
  v18 = v27;
  if (v17 || v27 != -1)
  {
    v24 = objc_alloc_init(HMDAudioStreamInterfaceDataSource);
    v20 = [(HMDAudioStreamInterface *)self initWithSessionID:v12 workQueue:v13 delegate:v14 sessionHandler:v15 audioStream:v17 localRTPSocket:v18 dataSource:v24];

    v23 = v20;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio stream interface", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t46 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t46, &__block_literal_global_39531);
  }

  v3 = logCategory__hmf_once_v47;

  return v3;
}

uint64_t __38__HMDAudioStreamInterface_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v47;
  logCategory__hmf_once_v47 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSHashTable)mutedStreams
{
  os_unfair_lock_assert_owner(&mutedStreamsLock);
  v2 = mutedStreams;
  if (!mutedStreams)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v4 = mutedStreams;
    mutedStreams = v3;

    v2 = mutedStreams;
  }

  return v2;
}

+ (id)_createLocalStreamAndRTPSocket:(int *)a3 localNetworkConfig:(id)a4 sessionID:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [a1 openSocketWithNetworkConfig:v8];
  v11 = objc_autoreleasePoolPush();
  v12 = a1;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10 == -1)
  {
    if (v14)
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v8 rtpPort];
      v25 = [v24 stringValue];
      v26 = *__error();
      *buf = 138543874;
      v37 = v23;
      v38 = 2112;
      v39 = v25;
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating local audio stream with socket %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_fd(v16, *MEMORY[0x277CE5788], v10);
    v17 = objc_alloc(MEMORY[0x277CE56E8]);
    v34 = *MEMORY[0x277CE57D8];
    v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
    v35 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v33 = 0;
    v20 = [v17 initWithNetworkSockets:v16 options:v19 error:&v33];
    v21 = v33;

    if (v20)
    {
      *a3 = v10;
      v22 = v20;
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v12;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v30;
        v38 = 2112;
        v39 = v21;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create local AVCAudioStream: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      close(v10);
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (int)_createLocalRTPSocketWithRemoteSender:(id)a3 localNetworkConfig:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 openSocketWithNetworkConfig:v7];
  if (v8 == -1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v7 rtpPort];
      v14 = [v13 stringValue];
      v15 = *__error();
      v18 = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v14;
      v22 = 1024;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Could not create rtp socket with port %@ %d", &v18, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_createStreamWithRemoteSocketReceiver:(id)a3 sessionID:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = a1;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v11;
    v28 = 1024;
    LODWORD(v29) = [v6 remoteAudioSocket];
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating audio stream with socket: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_fd(v12, *MEMORY[0x277CE5788], [v6 remoteAudioSocket]);
  v13 = objc_alloc(MEMORY[0x277CE56E8]);
  v30 = *MEMORY[0x277CE57D8];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
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
    v20 = v9;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remote socket receiver AVCAudioStream: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_createStreamWithRemoteDestinationReceiver:(id)a3 sessionID:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = a1;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 remoteDestination];
    *buf = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating audio stream with destination: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = objc_alloc(MEMORY[0x277CE56E8]);
  v14 = [v6 remoteDestination];
  v27 = *MEMORY[0x277CE57D8];
  v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
  v28 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v26 = 0;
  v17 = [v13 initWithIDSDestination:v14 options:v16 error:&v26];
  v18 = v26;

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remote destination receiver AVCAudioStream: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_createAudioStreamWithSessionHandler:(id)a3 localNetworkConfig:(id)a4 localRTPSocket:(int *)a5 sessionID:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = a1;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v16;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Creating the audio stream", &v31, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v17 = v10;
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
    v20 = [v14 _createLocalRTPSocketWithRemoteSender:v19 localNetworkConfig:v11];
    v21 = 0;
    *a5 = v20;
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
      v25 = [v12 sessionID];
      v21 = [v14 _createStreamWithRemoteDestinationReceiver:v24 sessionID:v25];
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

      v25 = v27;

      v28 = [v12 sessionID];
      if (v25)
      {
        [v14 _createStreamWithRemoteSocketReceiver:v25 sessionID:v28];
      }

      else
      {
        [v14 _createLocalStreamAndRTPSocket:a5 localNetworkConfig:v11 sessionID:v28];
      }
      v21 = ;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v21;
}

@end