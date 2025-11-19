@interface HMDCameraStreamSnapshotCapture
+ (id)logCategory;
- (HMDCameraStreamSnapshotCapture)initWithWorkQueue:(id)a3 videoStreamInterface:(id)a4 delegate:(id)a5 delegateQueue:(id)a6;
- (NSString)description;
- (id)logIdentifier;
- (void)_callSnapshotDelegate:(_BYTE *)a1;
- (void)_captureFrame;
- (void)captureCurrentFrame;
- (void)captureLastFrame;
- (void)setCaptureCurrentFrameTimer:(uint64_t)a1;
- (void)timerDidFire:(id)a3;
- (void)videoStream:(id)a3 didGetLastDecodedFrame:(id)a4;
@end

@implementation HMDCameraStreamSnapshotCapture

- (void)videoStream:(id)a3 didGetLastDecodedFrame:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [HMDCameraStreamSnapshotCapture setCaptureCurrentFrameTimer:?];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received last decoded frame", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDCameraStreamSnapshotCapture *)v9 _callSnapshotDelegate:v7];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setCaptureCurrentFrameTimer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), 0);
  }
}

- (void)_callSnapshotDelegate:(_BYTE *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    if (a1[8] == 1)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = a1;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        LODWORD(v24) = 138543362;
        *(&v24 + 4) = v7;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Captured the last frame, sending stop stream", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v8 = [v5 videoStreamInterface];
      [v8 stopStream];
    }

    if (a1[9] == 1)
    {
      a1[9] = 0;
      v9 = v3;
      v10 = objc_autoreleasePoolPush();
      v11 = a1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        LODWORD(v24) = 138543362;
        *(&v24 + 4) = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamSnapshotCapture:didGetNewSnapshot", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      WeakRetained = objc_loadWeakRetained(v11 + 4);
      if (objc_opt_respondsToSelector())
      {
        v15 = *(v11 + 5);
        *&v24 = MEMORY[0x277D85DD0];
        *(&v24 + 1) = 3221225472;
        v25 = __57__HMDCameraStreamSnapshotCapture__callDidGetNewSnapshot___block_invoke;
        v26 = &unk_279734960;
        v27 = WeakRetained;
        v28 = v11;
        v29 = v9;
        dispatch_async(v15, &v24);
      }
    }

    if (a1[8] == 1)
    {
      a1[8] = 0;
      if (v3)
      {
        v16 = v3;
        v17 = objc_autoreleasePoolPush();
        v18 = a1;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          LODWORD(v24) = 138543362;
          *(&v24 + 4) = v20;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Calling delegate streamSnapshotCapture:didGetLastSnapshot", &v24, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        v21 = objc_loadWeakRetained(v18 + 4);
        if (objc_opt_respondsToSelector())
        {
          v22 = *(v18 + 5);
          *&v24 = MEMORY[0x277D85DD0];
          *(&v24 + 1) = 3221225472;
          v25 = __58__HMDCameraStreamSnapshotCapture__callDidGetLastSnapshot___block_invoke;
          v26 = &unk_279734960;
          v27 = v21;
          v28 = v18;
          v29 = v16;
          dispatch_async(v22, &v24);
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    captureCurrentFrameTimer = self->_captureCurrentFrameTimer;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    captureCurrentFrameTimer = 0;
  }

  if (captureCurrentFrameTimer == v4)
  {
    [HMDCameraStreamSnapshotCapture setCaptureCurrentFrameTimer:?];
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Timed out capturing frame from stream", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDCameraStreamSnapshotCapture *)v7 _callSnapshotDelegate:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)captureLastFrame
{
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDCameraStreamSnapshotCapture_captureLastFrame__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __50__HMDCameraStreamSnapshotCapture_captureLastFrame__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 8) = 1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Capturing last frame", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCameraStreamSnapshotCapture *)*(a1 + 32) _captureFrame];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_captureFrame
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_6:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a1[7])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = a1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Not capturing current frame because a current frame capture is in progress", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    goto LABEL_6;
  }

  v7 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:2.0];
  v8 = a1[7];
  a1[7] = v7;

  [a1[7] setDelegate:a1];
  v9 = a1[7];
  v10 = a1[3];
  [v9 setDelegateQueue:v10];

  v11 = [a1 videoStreamInterface];
  [v11 captureSnapshot];

  v12 = a1[7];
  v13 = *MEMORY[0x277D85DE8];

  [v12 resume];
}

- (void)captureCurrentFrame
{
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDCameraStreamSnapshotCapture_captureCurrentFrame__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __53__HMDCameraStreamSnapshotCapture_captureCurrentFrame__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 9) = 1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Capturing current frame", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCameraStreamSnapshotCapture *)*(a1 + 32) _captureFrame];
  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  streamSessionID = self;
  if (self)
  {
    streamSessionID = self->_streamSessionID;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Stream-Snapshot-Capture: %@", streamSessionID];
}

- (id)logIdentifier
{
  if (self)
  {
    self = self->_streamSessionID;
  }

  return [(HMDCameraStreamSnapshotCapture *)self description];
}

- (HMDCameraStreamSnapshotCapture)initWithWorkQueue:(id)a3 videoStreamInterface:(id)a4 delegate:(id)a5 delegateQueue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HMDCameraStreamSnapshotCapture;
  v15 = [(HMDCameraStreamSnapshotCapture *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workQueue, a3);
    objc_storeStrong(&v16->_videoStreamInterface, a4);
    objc_storeWeak(&v16->_delegate, v13);
    objc_storeStrong(&v16->_delegateQueue, a6);
    v17 = [v12 sessionID];
    streamSessionID = v16->_streamSessionID;
    v16->_streamSessionID = v17;

    v16->_capturingLastFrame = 0;
    v16->_capturingCurrentFrame = 0;
    [v12 setSnapshotDelegate:v16];
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_149109 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_149109, &__block_literal_global_149110);
  }

  v3 = logCategory__hmf_once_v1_149111;

  return v3;
}

uint64_t __45__HMDCameraStreamSnapshotCapture_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_149111;
  logCategory__hmf_once_v1_149111 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end