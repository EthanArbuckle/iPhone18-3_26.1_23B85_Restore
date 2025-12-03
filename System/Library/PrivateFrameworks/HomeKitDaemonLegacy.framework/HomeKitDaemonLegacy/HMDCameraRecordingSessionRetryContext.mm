@interface HMDCameraRecordingSessionRetryContext
- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)queue homePresenceByPairingIdentity:(id)identity;
- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)queue homePresenceByPairingIdentity:(id)identity preferences:(id)preferences;
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

- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)queue homePresenceByPairingIdentity:(id)identity preferences:(id)preferences
{
  v35 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  identityCopy = identity;
  preferencesCopy = preferences;
  v28.receiver = self;
  v28.super_class = HMDCameraRecordingSessionRetryContext;
  v12 = [(HMDCameraRecordingSessionRetryContext *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, queue);
    objc_storeStrong(&v13->_homePresenceByPairingIdentity, identity);
    v14 = [preferencesCopy preferenceForKey:@"recordingSessionInitialRetryInterval"];
    numberValue = [v14 numberValue];
    [numberValue doubleValue];
    v13->_retryInterval = v16;

    v17 = [preferencesCopy preferenceForKey:@"recordingSessionMaxRetryInterval"];
    numberValue2 = [v17 numberValue];
    [numberValue2 doubleValue];
    v13->_maxRetryInterval = v19;

    v20 = objc_autoreleasePoolPush();
    v21 = v13;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      retryInterval = v13->_retryInterval;
      maxRetryInterval = v13->_maxRetryInterval;
      *buf = 138543874;
      v30 = v23;
      v31 = 2048;
      v32 = retryInterval;
      v33 = 2048;
      v34 = maxRetryInterval;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Recording session retry interval is: %f and max retry interval is: %f", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)queue homePresenceByPairingIdentity:(id)identity
{
  v6 = MEMORY[0x277D0F8D0];
  identityCopy = identity;
  queueCopy = queue;
  sharedPreferences = [v6 sharedPreferences];
  v10 = [(HMDCameraRecordingSessionRetryContext *)self initWithWorkQueue:queueCopy homePresenceByPairingIdentity:identityCopy preferences:sharedPreferences];

  return v10;
}

@end