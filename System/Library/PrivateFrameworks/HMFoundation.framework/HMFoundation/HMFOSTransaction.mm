@interface HMFOSTransaction
- (HMFOSTransaction)initWithName:(id)name;
- (void)dealloc;
@end

@implementation HMFOSTransaction

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(selfCopy);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8 = v7 - selfCopy->_creationTime;
    transaction = selfCopy->_transaction;
    *buf = 138543874;
    v13 = v6;
    v14 = 2048;
    v15 = v8;
    v16 = 2112;
    v17 = transaction;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Finishing transaction after %.3fs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v11.receiver = selfCopy;
  v11.super_class = HMFOSTransaction;
  [(HMFOSTransaction *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (HMFOSTransaction)initWithName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = HMFOSTransaction;
  v5 = [(HMFOSTransaction *)&v18 init];
  if (v5)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5->_creationTime = v6;
    uUID = [MEMORY[0x277CCAD78] UUID];
    v8 = [nameCopy stringByAppendingFormat:@"-%@", uUID];

    [v8 UTF8String];
    v9 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v9;

    v11 = objc_autoreleasePoolPush();
    v12 = v5;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier(v12);
      v15 = v5->_transaction;
      *buf = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Starting transaction: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

@end