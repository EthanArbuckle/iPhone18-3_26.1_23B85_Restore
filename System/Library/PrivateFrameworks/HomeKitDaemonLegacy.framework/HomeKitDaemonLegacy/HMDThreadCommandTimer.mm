@interface HMDThreadCommandTimer
+ (id)logCategory;
- (HMDThreadCommandTimer)initWithQueue:(id)a3 delayInSecs:(id)a4;
- (HMDThreadCommandTimer)initWithTimer:(id)a3;
- (id)_commandTypeValueToString:(int64_t)a3;
- (int64_t)currentlyScheduledCommand;
- (void)abort;
- (void)startWithBlock:(id)a3 completion:(id)a4 commandType:(int64_t)a5;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDThreadCommandTimer

- (id)_commandTypeValueToString:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"provideExtendedMACAddress";
  }

  else
  {
    return @"unknown";
  }
}

- (void)timerDidFire:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HMDThreadCommandTimer *)self commandBlock];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDThreadCommandTimer *)v7 _commandTypeValueToString:[(HMDThreadCommandTimer *)v7 commandType]];
      v17 = 138543874;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2048;
      v22 = [(HMDThreadCommandTimer *)v7 commandCount];
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Executing deferred thread command %@ now with id(%lu)", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [(HMDThreadCommandTimer *)v7 commandQueue];
    v13 = [(HMDThreadCommandTimer *)v7 commandBlock];
    dispatch_async(v12, v13);

    [(HMDThreadCommandTimer *)v7 setCommandType:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDThreadCommandTimer *)v7 _commandTypeValueToString:[(HMDThreadCommandTimer *)v7 commandType]];
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2048;
      v22 = [(HMDThreadCommandTimer *)v7 commandCount];
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Execution block not found for thread command %@ with id(%lu)", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  os_unfair_lock_unlock(&self->_lock);

  v16 = *MEMORY[0x277D85DE8];
}

- (int64_t)currentlyScheduledCommand
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HMDThreadCommandTimer *)self commandTimer];
  v4 = [v3 isRunning];

  if (v4)
  {
    v5 = [(HMDThreadCommandTimer *)self commandType];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)abort
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HMDThreadCommandTimer *)self commandTimer];
  v4 = [v3 isRunning];

  if (v4)
  {
    v5 = [(HMDThreadCommandTimer *)self commandTimer];
    [v5 suspend];

    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDThreadCommandTimer *)v7 _commandTypeValueToString:[(HMDThreadCommandTimer *)v7 commandType]];
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2048;
      v18 = [(HMDThreadCommandTimer *)v7 commandCount];
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Not executing deferred thread command %@ with id(%lu). Sending nil completion", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDThreadCommandTimer *)v7 completionForBlock];
    v11[2](v11, 0);

    [(HMDThreadCommandTimer *)v7 setCommandType:0];
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)startWithBlock:(id)a3 completion:(id)a4 commandType:(int64_t)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(HMDThreadCommandTimer *)self commandTimer];
  v11 = [v10 isRunning];

  if (v11)
  {
    v12 = [(HMDThreadCommandTimer *)self commandTimer];
    [v12 suspend];

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMDThreadCommandTimer *)v14 _commandTypeValueToString:[(HMDThreadCommandTimer *)v14 commandType]];
      v28 = 138543874;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      v32 = 2048;
      v33 = [(HMDThreadCommandTimer *)v14 commandCount];
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Not executing deferred thread command %@ with id(%lu). Sending nil completion", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [(HMDThreadCommandTimer *)v14 completionForBlock];
    v18[2](v18, 0);
  }

  [(HMDThreadCommandTimer *)self setCommandBlock:v8];
  [(HMDThreadCommandTimer *)self setCompletionForBlock:v9];
  [(HMDThreadCommandTimer *)self setCommandCount:[(HMDThreadCommandTimer *)self commandCount]+ 1];
  [(HMDThreadCommandTimer *)self setCommandType:a5];
  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [(HMDThreadCommandTimer *)v20 _commandTypeValueToString:[(HMDThreadCommandTimer *)v20 commandType]];
    v24 = [(HMDThreadCommandTimer *)v20 delayInSecs];
    v25 = [(HMDThreadCommandTimer *)v20 commandCount];
    v28 = 138544130;
    v29 = v22;
    v30 = 2112;
    v31 = v23;
    v32 = 2112;
    v33 = v24;
    v34 = 2048;
    v35 = v25;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Scheduling deferred thread command %@ to execute after %@ secs with id(%lu)", &v28, 0x2Au);
  }

  objc_autoreleasePoolPop(v19);
  v26 = [(HMDThreadCommandTimer *)v20 commandTimer];
  [v26 resume];

  os_unfair_lock_unlock(&self->_lock);
  v27 = *MEMORY[0x277D85DE8];
}

- (HMDThreadCommandTimer)initWithTimer:(id)a3
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
  v7 = a3;
  v8 = dispatch_queue_create("thread-command-timer-test", v6);
  v9 = [(HMDThreadCommandTimer *)self initWithQueue:v8 delayInSecs:&unk_2866284E0];

  [(HMDThreadCommandTimer *)v9 setCommandTimer:v7];
  return v9;
}

- (HMDThreadCommandTimer)initWithQueue:(id)a3 delayInSecs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMDThreadCommandTimer;
  v9 = [(HMDThreadCommandTimer *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:{objc_msgSend(v8, "integerValue")}];
    commandTimer = v9->_commandTimer;
    v9->_commandTimer = v10;

    objc_storeStrong(&v9->_delayInSecs, a4);
    [(HMFTimer *)v9->_commandTimer setDelegateQueue:v7];
    [(HMFTimer *)v9->_commandTimer setDelegate:v9];
    v9->_commandType = 0;
    v9->_commandCount = 0;
    objc_storeStrong(&v9->_commandQueue, a3);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_78769 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_78769, &__block_literal_global_78770);
  }

  v3 = logCategory__hmf_once_v6_78771;

  return v3;
}

uint64_t __36__HMDThreadCommandTimer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_78771;
  logCategory__hmf_once_v6_78771 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end