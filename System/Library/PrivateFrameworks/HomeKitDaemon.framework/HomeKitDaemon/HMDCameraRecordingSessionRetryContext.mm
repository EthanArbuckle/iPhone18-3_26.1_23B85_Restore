@interface HMDCameraRecordingSessionRetryContext
- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)a3;
- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)a3 preferences:(id)a4;
- (double)retryInterval;
- (void)computeNextRetryInterval;
- (void)setRetryInterval:(double)a3;
@end

@implementation HMDCameraRecordingSessionRetryContext

- (void)computeNextRetryInterval
{
  v3 = [(HMDCameraRecordingSessionRetryContext *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMDCameraRecordingSessionRetryContext *)self setRetryCount:[(HMDCameraRecordingSessionRetryContext *)self retryCount]+ 1];
  [(HMDCameraRecordingSessionRetryContext *)self retryInterval];
  v5 = v4;
  [(HMDCameraRecordingSessionRetryContext *)self maxRetryInterval];
  if (v5 < v6)
  {
    [(HMDCameraRecordingSessionRetryContext *)self retryInterval];
    v8 = v7 + v7;

    [(HMDCameraRecordingSessionRetryContext *)self setRetryInterval:v8];
  }
}

- (double)retryInterval
{
  v3 = [(HMDCameraRecordingSessionRetryContext *)self workQueue];
  dispatch_assert_queue_V2(v3);

  return self->_retryInterval;
}

- (void)setRetryInterval:(double)a3
{
  v5 = [(HMDCameraRecordingSessionRetryContext *)self workQueue];
  dispatch_assert_queue_V2(v5);

  self->_retryInterval = a3;
}

- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)a3 preferences:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = HMDCameraRecordingSessionRetryContext;
  v9 = [(HMDCameraRecordingSessionRetryContext *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, a3);
    v11 = [v8 preferenceForKey:@"recordingSessionInitialRetryInterval"];
    v12 = [v11 numberValue];
    [v12 doubleValue];
    v10->_retryInterval = v13;

    v14 = [v8 preferenceForKey:@"recordingSessionMaxRetryInterval"];
    v15 = [v14 numberValue];
    [v15 doubleValue];
    v10->_maxRetryInterval = v16;

    v17 = objc_autoreleasePoolPush();
    v18 = v10;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      retryInterval = v10->_retryInterval;
      maxRetryInterval = v10->_maxRetryInterval;
      *buf = 138543874;
      v27 = v20;
      v28 = 2048;
      v29 = retryInterval;
      v30 = 2048;
      v31 = maxRetryInterval;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Recording session retry interval is: %f and max retry interval is: %f", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)a3
{
  v4 = MEMORY[0x277D0F8D0];
  v5 = a3;
  v6 = [v4 sharedPreferences];
  v7 = [(HMDCameraRecordingSessionRetryContext *)self initWithWorkQueue:v5 preferences:v6];

  return v7;
}

@end