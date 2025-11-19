@interface HMIRemovePersonsModelTask
- (HMIRemovePersonsModelTask)initWithTaskID:(int)a3 homeUUID:(id)a4 sourceUUID:(id)a5;
- (id)logIdentifier;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIRemovePersonsModelTask

- (HMIRemovePersonsModelTask)initWithTaskID:(int)a3 homeUUID:(id)a4 sourceUUID:(id)a5
{
  v7 = *&a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HMIRemovePersonsModelTask;
  v10 = [(HMIHomeTask *)&v13 initWithTaskID:v7 homeUUID:a4 timeout:5.0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sourceUUID, a5);
  }

  return v11;
}

- (void)mainInsideAutoreleasePool
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[HMIPersonsModelManager sharedInstance];
  v4 = [(HMIHomeTask *)self homeUUID];
  v5 = [(HMIRemovePersonsModelTask *)self sourceUUID];
  v16 = 0;
  v6 = [v3 removePersonsModelForHomeUUID:v4 sourceUUID:v5 error:&v16];
  v7 = v16;

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully removed persons model", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v15.receiver = v9;
    v15.super_class = HMIRemovePersonsModelTask;
    [(HMFOperation *)&v15 finish];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove persons model, error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1027 underlyingError:v7];
    [(HMFOperation *)v9 cancelWithError:v14];
  }
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMIRemovePersonsModelTask *)self sourceUUID];
  v5 = [(HMIHomeTask *)self homeUUID];
  v6 = [v3 stringWithFormat:@"SourceUUID:%@ HomeUUID:%@", v4, v5];

  return v6;
}

@end