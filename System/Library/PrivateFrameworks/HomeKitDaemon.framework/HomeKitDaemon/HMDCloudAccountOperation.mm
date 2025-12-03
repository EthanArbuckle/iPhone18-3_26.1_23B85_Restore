@interface HMDCloudAccountOperation
- (HMDCloudAccountOperation)initWithBlock:(id)block clientQueue:(id)queue;
- (id)description;
- (void)main;
@end

@implementation HMDCloudAccountOperation

- (void)main
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDCloudAccountOperation *)selfCopy description];
    *buf = 138543618;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting account operation %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = dispatch_group_create();
  objc_initWeak(&location, selfCopy);
  dispatch_group_enter(v8);
  clientQueue = [(HMDCloudAccountOperation *)selfCopy clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMDCloudAccountOperation_main__block_invoke;
  block[3] = &unk_278686B48;
  objc_copyWeak(&v24, &location);
  v10 = v8;
  v23 = v10;
  dispatch_async(clientQueue, block);

  v11 = objc_autoreleasePoolPush();
  v12 = selfCopy;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    identifier = [(HMDCloudAccountOperation *)v12 identifier];
    *buf = 138543618;
    v27 = v14;
    v28 = 2112;
    v29 = identifier;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Waiting for account operation %@ to complete", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v16 = objc_autoreleasePoolPush();
  v17 = v12;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    identifier2 = [(HMDCloudAccountOperation *)v17 identifier];
    *buf = 138543618;
    v27 = v19;
    v28 = 2112;
    v29 = identifier2;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Account operation %@ completed", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x277D85DE8];
}

void __32__HMDCloudAccountOperation_main__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained operationBlock];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__HMDCloudAccountOperation_main__block_invoke_2;
    v5[3] = &unk_27868A728;
    v6 = *(a1 + 32);
    (v4)[2](v4, v5);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(HMDCloudAccountOperation *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@, Identifier = %@>", v4, identifier];

  return v6;
}

- (HMDCloudAccountOperation)initWithBlock:(id)block clientQueue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = HMDCloudAccountOperation;
  v8 = [(HMDCloudAccountOperation *)&v15 init];
  if (v8)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v8->_identifier;
    v8->_identifier = uUID;

    v11 = _Block_copy(blockCopy);
    operationBlock = v8->_operationBlock;
    v8->_operationBlock = v11;

    objc_storeStrong(&v8->_clientQueue, queue);
    v13 = v8;
  }

  return v8;
}

@end