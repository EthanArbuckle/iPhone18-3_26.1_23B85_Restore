@interface HMDCameraRecordingSessionRetryContext
- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)a3 homePresenceByPairingIdentity:(id)a4;
- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)a3 homePresenceByPairingIdentity:(id)a4 preferences:(id)a5;
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

- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)a3 homePresenceByPairingIdentity:(id)a4 preferences:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = HMDCameraRecordingSessionRetryContext;
  v12 = [(HMDCameraRecordingSessionRetryContext *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, a3);
    objc_storeStrong(&v13->_homePresenceByPairingIdentity, a4);
    v14 = [v11 preferenceForKey:@"recordingSessionInitialRetryInterval"];
    v15 = [v14 numberValue];
    [v15 doubleValue];
    v13->_retryInterval = v16;

    v17 = [v11 preferenceForKey:@"recordingSessionMaxRetryInterval"];
    v18 = [v17 numberValue];
    [v18 doubleValue];
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

- (HMDCameraRecordingSessionRetryContext)initWithWorkQueue:(id)a3 homePresenceByPairingIdentity:(id)a4
{
  v6 = MEMORY[0x277D0F8D0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedPreferences];
  v10 = [(HMDCameraRecordingSessionRetryContext *)self initWithWorkQueue:v8 homePresenceByPairingIdentity:v7 preferences:v9];

  return v10;
}

@end