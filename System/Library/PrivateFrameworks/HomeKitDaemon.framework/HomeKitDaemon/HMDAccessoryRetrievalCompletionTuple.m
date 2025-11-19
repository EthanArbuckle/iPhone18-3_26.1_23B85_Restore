@interface HMDAccessoryRetrievalCompletionTuple
- (HMDAccessory)accessory;
- (HMDAccessoryRetrievalCompletionTuple)initWithHome:(id)a3 accessory:(id)a4 linkType:(int64_t)a5;
- (HMDHome)home;
- (void)addCompletion:(id)a3;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)a3;
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

- (void)timerDidFire:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryRetrievalCompletionTuple *)self home];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 workQueue];
    dispatch_assert_queue_V2(v7);

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDAccessoryRetrievalCompletionTuple *)v9 accessory];
      v13 = [v12 shortDescription];
      v14 = [(HMDAccessoryRetrievalCompletionTuple *)v9 linkType];
      if (v14 > 2)
      {
        v15 = @"Undefined";
      }

      else
      {
        v15 = off_2786768F0[v14];
      }

      v20 = v15;
      v25 = 138543874;
      v26 = v11;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory retrieval timed out for accessory %@/%@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:100];
    v22 = [(HMDAccessoryRetrievalCompletionTuple *)v9 accessory];
    v23 = [v22 identifier];
    [v6 _notifyRetrievalError:v21 accessoryServer:v23 linkType:-[HMDAccessoryRetrievalCompletionTuple linkType](v9 accessoryOperationBlock:{"linkType"), 0}];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
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
  v3 = [(HMDAccessoryRetrievalCompletionTuple *)self home];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDAccessoryRetrievalCompletionTuple *)self timer];
  [v5 cancel];

  [(HMDAccessoryRetrievalCompletionTuple *)self setTimer:0];
}

- (void)start
{
  v11 = [(HMDAccessoryRetrievalCompletionTuple *)self home];
  v3 = [v11 workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryRetrievalCompletionTuple *)self timer];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D0F920]);
    [(HMDAccessoryRetrievalCompletionTuple *)self retrievalTimeout];
    v6 = [v5 initWithTimeInterval:0 options:?];
    [(HMDAccessoryRetrievalCompletionTuple *)self setTimer:v6];

    v7 = [v11 workQueue];
    v8 = [(HMDAccessoryRetrievalCompletionTuple *)self timer];
    [v8 setDelegateQueue:v7];

    v9 = [(HMDAccessoryRetrievalCompletionTuple *)self timer];
    [v9 setDelegate:self];

    v10 = [(HMDAccessoryRetrievalCompletionTuple *)self timer];
    [v10 resume];
  }
}

- (void)addCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryRetrievalCompletionTuple *)self home];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v8 = [(HMDAccessoryRetrievalCompletionTuple *)self completions];
  v7 = _Block_copy(v4);

  [v8 addObject:v7];
}

- (HMDAccessoryRetrievalCompletionTuple)initWithHome:(id)a3 accessory:(id)a4 linkType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = HMDAccessoryRetrievalCompletionTuple;
  v10 = [(HMDAccessoryRetrievalCompletionTuple *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_home, v8);
    objc_storeWeak(&v11->_accessory, v9);
    v11->_linkType = a5;
    v12 = [MEMORY[0x277CBEB18] array];
    completions = v11->_completions;
    v11->_completions = v12;

    if (a5 == 2)
    {
      v14 = 60.0;
    }

    else
    {
      v15 = [v9 isSuspendCapable];
      v14 = 60.0;
      if (!v15)
      {
        v14 = 30.0;
      }
    }

    v11->_retrievalTimeout = v14;
  }

  return v11;
}

@end