@interface HMDCameraRecordingSessionRetryContext
- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)queue;
- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)queue preferences:(id)preferences;
- (double)retryInterval;
- (void)computeNextRetryInterval;
- (void)setRetryInterval:(double)interval;
@end

@implementation HMDCameraRecordingSessionRetryContext

- (void)computeNextRetryInterval
{
  workQueue = [(HMDCameraRecordingSessionRetryContext *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

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
  workQueue = [(HMDCameraRecordingSessionRetryContext *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_retryInterval;
}

- (void)setRetryInterval:(double)interval
{
  workQueue = [(HMDCameraRecordingSessionRetryContext *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  self->_retryInterval = interval;
}

- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)queue preferences:(id)preferences
{
  v32 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  preferencesCopy = preferences;
  v25.receiver = self;
  v25.super_class = HMDCameraRecordingSessionRetryContext;
  v9 = [(HMDCameraRecordingSessionRetryContext *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    v11 = [preferencesCopy preferenceForKey:@"recordingSessionInitialRetryInterval"];
    numberValue = [v11 numberValue];
    [numberValue doubleValue];
    v10->_retryInterval = v13;

    v14 = [preferencesCopy preferenceForKey:@"recordingSessionMaxRetryInterval"];
    numberValue2 = [v14 numberValue];
    [numberValue2 doubleValue];
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

- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)queue
{
  v4 = MEMORY[0x277D0F8D0];
  queueCopy = queue;
  sharedPreferences = [v4 sharedPreferences];
  v7 = [(HMDCameraRecordingSessionRetryContext *)self initWithWorkQueue:queueCopy preferences:sharedPreferences];

  return v7;
}

@end