@interface HMDThreadCommandTimer
+ (id)logCategory;
- (HMDThreadCommandTimer)initWithQueue:(id)queue delayInSecs:(id)secs;
- (HMDThreadCommandTimer)initWithTimer:(id)timer;
- (id)_commandTypeValueToString:(int64_t)string;
- (int64_t)currentlyScheduledCommand;
- (void)abort;
- (void)startWithBlock:(id)block completion:(id)completion commandType:(int64_t)type;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDThreadCommandTimer

- (id)_commandTypeValueToString:(int64_t)string
{
  if (string == 1)
  {
    return @"provideExtendedMACAddress";
  }

  else
  {
    return @"unknown";
  }
}

- (void)timerDidFire:(id)fire
{
  v23 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  os_unfair_lock_lock(&self->_lock);
  commandBlock = [(HMDThreadCommandTimer *)self commandBlock];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (commandBlock)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDThreadCommandTimer *)selfCopy _commandTypeValueToString:[(HMDThreadCommandTimer *)selfCopy commandType]];
      v17 = 138543874;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2048;
      commandCount = [(HMDThreadCommandTimer *)selfCopy commandCount];
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Executing deferred thread command %@ now with id(%lu)", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    commandQueue = [(HMDThreadCommandTimer *)selfCopy commandQueue];
    commandBlock2 = [(HMDThreadCommandTimer *)selfCopy commandBlock];
    dispatch_async(commandQueue, commandBlock2);

    [(HMDThreadCommandTimer *)selfCopy setCommandType:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDThreadCommandTimer *)selfCopy _commandTypeValueToString:[(HMDThreadCommandTimer *)selfCopy commandType]];
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2048;
      commandCount = [(HMDThreadCommandTimer *)selfCopy commandCount];
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
  commandTimer = [(HMDThreadCommandTimer *)self commandTimer];
  isRunning = [commandTimer isRunning];

  if (isRunning)
  {
    commandType = [(HMDThreadCommandTimer *)self commandType];
  }

  else
  {
    commandType = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return commandType;
}

- (void)abort
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  commandTimer = [(HMDThreadCommandTimer *)self commandTimer];
  isRunning = [commandTimer isRunning];

  if (isRunning)
  {
    commandTimer2 = [(HMDThreadCommandTimer *)self commandTimer];
    [commandTimer2 suspend];

    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDThreadCommandTimer *)selfCopy _commandTypeValueToString:[(HMDThreadCommandTimer *)selfCopy commandType]];
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2048;
      commandCount = [(HMDThreadCommandTimer *)selfCopy commandCount];
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Not executing deferred thread command %@ with id(%lu). Sending nil completion", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    completionForBlock = [(HMDThreadCommandTimer *)selfCopy completionForBlock];
    completionForBlock[2](completionForBlock, 0);

    [(HMDThreadCommandTimer *)selfCopy setCommandType:0];
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)startWithBlock:(id)block completion:(id)completion commandType:(int64_t)type
{
  v36 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  commandTimer = [(HMDThreadCommandTimer *)self commandTimer];
  isRunning = [commandTimer isRunning];

  if (isRunning)
  {
    commandTimer2 = [(HMDThreadCommandTimer *)self commandTimer];
    [commandTimer2 suspend];

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMDThreadCommandTimer *)selfCopy _commandTypeValueToString:[(HMDThreadCommandTimer *)selfCopy commandType]];
      v28 = 138543874;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      v32 = 2048;
      commandCount = [(HMDThreadCommandTimer *)selfCopy commandCount];
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Not executing deferred thread command %@ with id(%lu). Sending nil completion", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    completionForBlock = [(HMDThreadCommandTimer *)selfCopy completionForBlock];
    completionForBlock[2](completionForBlock, 0);
  }

  [(HMDThreadCommandTimer *)self setCommandBlock:blockCopy];
  [(HMDThreadCommandTimer *)self setCompletionForBlock:completionCopy];
  [(HMDThreadCommandTimer *)self setCommandCount:[(HMDThreadCommandTimer *)self commandCount]+ 1];
  [(HMDThreadCommandTimer *)self setCommandType:type];
  v19 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [(HMDThreadCommandTimer *)selfCopy2 _commandTypeValueToString:[(HMDThreadCommandTimer *)selfCopy2 commandType]];
    delayInSecs = [(HMDThreadCommandTimer *)selfCopy2 delayInSecs];
    commandCount2 = [(HMDThreadCommandTimer *)selfCopy2 commandCount];
    v28 = 138544130;
    v29 = v22;
    v30 = 2112;
    v31 = v23;
    v32 = 2112;
    commandCount = delayInSecs;
    v34 = 2048;
    v35 = commandCount2;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Scheduling deferred thread command %@ to execute after %@ secs with id(%lu)", &v28, 0x2Au);
  }

  objc_autoreleasePoolPop(v19);
  commandTimer3 = [(HMDThreadCommandTimer *)selfCopy2 commandTimer];
  [commandTimer3 resume];

  os_unfair_lock_unlock(&self->_lock);
  v27 = *MEMORY[0x277D85DE8];
}

- (HMDThreadCommandTimer)initWithTimer:(id)timer
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
  timerCopy = timer;
  v8 = dispatch_queue_create("thread-command-timer-test", v6);
  v9 = [(HMDThreadCommandTimer *)self initWithQueue:v8 delayInSecs:&unk_2866284E0];

  [(HMDThreadCommandTimer *)v9 setCommandTimer:timerCopy];
  return v9;
}

- (HMDThreadCommandTimer)initWithQueue:(id)queue delayInSecs:(id)secs
{
  queueCopy = queue;
  secsCopy = secs;
  v13.receiver = self;
  v13.super_class = HMDThreadCommandTimer;
  v9 = [(HMDThreadCommandTimer *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:{objc_msgSend(secsCopy, "integerValue")}];
    commandTimer = v9->_commandTimer;
    v9->_commandTimer = v10;

    objc_storeStrong(&v9->_delayInSecs, secs);
    [(HMFTimer *)v9->_commandTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v9->_commandTimer setDelegate:v9];
    v9->_commandType = 0;
    v9->_commandCount = 0;
    objc_storeStrong(&v9->_commandQueue, queue);
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