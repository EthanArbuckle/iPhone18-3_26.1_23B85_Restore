@interface HMDCameraRecordingLoadBalancingAttempt
+ (id)logCategory;
- (HMDCameraRecordingLoadBalancingAttempt)initWithLocalResponseTimeout:(double)a3 logIdentifier:(id)a4;
- (HMDCameraRecordingLoadBalancingAttempt)initWithLocalResponseTimer:(id)a3 logIdentifier:(id)a4;
- (void)startWithMessage:(id)a3 messageDispatcher:(id)a4 completion:(id)a5;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDCameraRecordingLoadBalancingAttempt

- (void)timerDidFire:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingLoadBalancingAttempt *)self localResponseTimer];

  if (v5 == v4)
  {
    os_unfair_lock_lock_with_options();
    v6 = [(HMDCameraRecordingLoadBalancingAttempt *)self completion];
    [(HMDCameraRecordingLoadBalancingAttempt *)self setCompletion:0];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Timed out waiting for load balancing message response", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8 description:@"Timed out waiting for load balancing message response" reason:0 suggestion:0];
      (v6)[2](v6, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startWithMessage:(id)a3 messageDispatcher:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  v11 = v10;
  if (!v10)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = [(HMDCameraRecordingLoadBalancingAttempt *)self completion];

  if (!v12)
  {
    [(HMDCameraRecordingLoadBalancingAttempt *)self setCompletion:v11];
    v13 = [(HMDCameraRecordingLoadBalancingAttempt *)self localResponseTimer];
    [v13 setDelegate:self];

    v14 = [(HMDCameraRecordingLoadBalancingAttempt *)self localResponseTimer];
    [v14 resume];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __88__HMDCameraRecordingLoadBalancingAttempt_startWithMessage_messageDispatcher_completion___block_invoke;
    v18[3] = &unk_278689DC0;
    v18[4] = self;
    [v8 setResponseHandler:v18];
    [v9 sendMessage:v8];

    return;
  }

LABEL_9:
  v15 = _HMFPreconditionFailure();
  __88__HMDCameraRecordingLoadBalancingAttempt_startWithMessage_messageDispatcher_completion___block_invoke(v15, v16, v17);
}

void __88__HMDCameraRecordingLoadBalancingAttempt_startWithMessage_messageDispatcher_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v7 = [*(a1 + 32) completion];
  [*(a1 + 32) setCompletion:0];
  os_unfair_lock_unlock(v6 + 2);
  if (v7)
  {
    (v7)[2](v7, v8);
  }
}

- (HMDCameraRecordingLoadBalancingAttempt)initWithLocalResponseTimer:(id)a3 logIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDCameraRecordingLoadBalancingAttempt;
  v9 = [(HMDCameraRecordingLoadBalancingAttempt *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localResponseTimer, a3);
    v11 = [v8 copy];
    logIdentifier = v10->_logIdentifier;
    v10->_logIdentifier = v11;
  }

  return v10;
}

- (HMDCameraRecordingLoadBalancingAttempt)initWithLocalResponseTimeout:(double)a3 logIdentifier:(id)a4
{
  v6 = MEMORY[0x277D0F920];
  v7 = a4;
  v8 = [[v6 alloc] initWithTimeInterval:2 options:a3];
  v9 = [(HMDCameraRecordingLoadBalancingAttempt *)self initWithLocalResponseTimer:v8 logIdentifier:v7];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_280819 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_280819, &__block_literal_global_280820);
  }

  v3 = logCategory__hmf_once_v2_280821;

  return v3;
}

void __53__HMDCameraRecordingLoadBalancingAttempt_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_280821;
  logCategory__hmf_once_v2_280821 = v1;
}

@end