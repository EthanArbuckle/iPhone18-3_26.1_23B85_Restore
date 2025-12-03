@interface HMDAccessoryRetrievalCompletionTuple
- (HMDAccessory)accessory;
- (HMDAccessoryRetrievalCompletionTuple)initWithHome:(id)home accessory:(id)accessory linkType:(int64_t)type;
- (HMDHome)home;
- (void)addCompletion:(id)completion;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAccessoryRetrievalCompletionTuple

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v31 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  home = [(HMDAccessoryRetrievalCompletionTuple *)self home];
  v6 = home;
  if (home)
  {
    workQueue = [home workQueue];
    dispatch_assert_queue_V2(workQueue);

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      accessory = [(HMDAccessoryRetrievalCompletionTuple *)selfCopy accessory];
      shortDescription = [accessory shortDescription];
      linkType = [(HMDAccessoryRetrievalCompletionTuple *)selfCopy linkType];
      if (linkType > 2)
      {
        v15 = @"Undefined";
      }

      else
      {
        v15 = off_2786768F0[linkType];
      }

      v20 = v15;
      v25 = 138543874;
      v26 = v11;
      v27 = 2112;
      v28 = shortDescription;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory retrieval timed out for accessory %@/%@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:100];
    accessory2 = [(HMDAccessoryRetrievalCompletionTuple *)selfCopy accessory];
    identifier = [accessory2 identifier];
    [v6 _notifyRetrievalError:v21 accessoryServer:identifier linkType:-[HMDAccessoryRetrievalCompletionTuple linkType](selfCopy accessoryOperationBlock:{"linkType"), 0}];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Accessory retrieval lost reference to home", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  home = [(HMDAccessoryRetrievalCompletionTuple *)self home];
  workQueue = [home workQueue];
  dispatch_assert_queue_V2(workQueue);

  timer = [(HMDAccessoryRetrievalCompletionTuple *)self timer];
  [timer cancel];

  [(HMDAccessoryRetrievalCompletionTuple *)self setTimer:0];
}

- (void)start
{
  home = [(HMDAccessoryRetrievalCompletionTuple *)self home];
  workQueue = [home workQueue];
  dispatch_assert_queue_V2(workQueue);

  timer = [(HMDAccessoryRetrievalCompletionTuple *)self timer];

  if (!timer)
  {
    v5 = objc_alloc(MEMORY[0x277D0F920]);
    [(HMDAccessoryRetrievalCompletionTuple *)self retrievalTimeout];
    v6 = [v5 initWithTimeInterval:0 options:?];
    [(HMDAccessoryRetrievalCompletionTuple *)self setTimer:v6];

    workQueue2 = [home workQueue];
    timer2 = [(HMDAccessoryRetrievalCompletionTuple *)self timer];
    [timer2 setDelegateQueue:workQueue2];

    timer3 = [(HMDAccessoryRetrievalCompletionTuple *)self timer];
    [timer3 setDelegate:self];

    timer4 = [(HMDAccessoryRetrievalCompletionTuple *)self timer];
    [timer4 resume];
  }
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  home = [(HMDAccessoryRetrievalCompletionTuple *)self home];
  workQueue = [home workQueue];
  dispatch_assert_queue_V2(workQueue);

  completions = [(HMDAccessoryRetrievalCompletionTuple *)self completions];
  v7 = _Block_copy(completionCopy);

  [completions addObject:v7];
}

- (HMDAccessoryRetrievalCompletionTuple)initWithHome:(id)home accessory:(id)accessory linkType:(int64_t)type
{
  homeCopy = home;
  accessoryCopy = accessory;
  v17.receiver = self;
  v17.super_class = HMDAccessoryRetrievalCompletionTuple;
  v10 = [(HMDAccessoryRetrievalCompletionTuple *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_home, homeCopy);
    objc_storeWeak(&v11->_accessory, accessoryCopy);
    v11->_linkType = type;
    array = [MEMORY[0x277CBEB18] array];
    completions = v11->_completions;
    v11->_completions = array;

    if (type == 2)
    {
      v14 = 60.0;
    }

    else
    {
      isSuspendCapable = [accessoryCopy isSuspendCapable];
      v14 = 60.0;
      if (!isSuspendCapable)
      {
        v14 = 30.0;
      }
    }

    v11->_retrievalTimeout = v14;
  }

  return v11;
}

@end