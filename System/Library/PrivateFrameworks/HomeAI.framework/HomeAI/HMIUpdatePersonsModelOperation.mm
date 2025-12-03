@interface HMIUpdatePersonsModelOperation
- (HMIUpdatePersonsModelOperation)initWithSourceUUID:(id)d homeUUID:(id)iD external:(BOOL)external;
- (id)logIdentifier;
- (void)main;
- (void)updatePersonsModelWithRetryOnError:(BOOL)error;
@end

@implementation HMIUpdatePersonsModelOperation

- (HMIUpdatePersonsModelOperation)initWithSourceUUID:(id)d homeUUID:(id)iD external:(BOOL)external
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = HMIUpdatePersonsModelOperation;
  v11 = [(HMFOperation *)&v14 initWithTimeout:300.0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceUUID, d);
    objc_storeStrong(&v12->_homeUUID, iD);
    v12->_external = external;
  }

  return v12;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  [(HMIUpdatePersonsModelOperation *)self mainInsideAutoreleasePool];

  objc_autoreleasePoolPop(v3);
}

- (void)updatePersonsModelWithRetryOnError:(BOOL)error
{
  v27[4] = *MEMORY[0x277D85DE8];
  v5 = +[HMITaskService taskServiceClient];
  v27[0] = HMITaskTypeUpdatePersonsModelTask;
  v26[0] = @"taskType";
  v26[1] = @"sourceUUID";
  sourceUUID = [(HMIUpdatePersonsModelOperation *)self sourceUUID];
  v27[1] = sourceUUID;
  v26[2] = @"homeUUID";
  homeUUID = [(HMIUpdatePersonsModelOperation *)self homeUUID];
  v27[2] = homeUUID;
  v26[3] = @"isExternal";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMIUpdatePersonsModelOperation external](self, "external")}];
  v27[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HMIUpdatePersonsModelOperation_updatePersonsModelWithRetryOnError___block_invoke;
  v16[3] = &unk_278754F08;
  objc_copyWeak(&v17, &location);
  errorCopy = error;
  v10 = [v5 submitTaskWithOptions:v9 progressHandler:0 completionHandler:v16];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = HMFBooleanToString();
    *buf = 138543874;
    v21 = v14;
    v22 = 1024;
    v23 = v10;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Submitted persons model update task, taskID:%u, retryOnError:%@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v11);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __69__HMIUpdatePersonsModelOperation_updatePersonsModelWithRetryOnError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v5 objectForKeyedSubscript:@"resultCode"];
    v9 = HMITaskResultCodeAsString(0);
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = WeakRetained;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v14;
        _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully updated persons model", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [v12 finish];
    }

    else
    {
      v15 = *(a1 + 40);
      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      v19 = v18;
      if (v15 == 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v22 = 138543618;
          v23 = v20;
          v24 = 2112;
          v25 = v6;
          _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_INFO, "%{public}@Failed to update persons model, error:%@, retrying...", &v22, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        [v17 updatePersonsModelWithRetryOnError:0];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          v22 = 138543618;
          v23 = v21;
          v24 = 2112;
          v25 = v6;
          _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update persons model, error:%@", &v22, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        [v17 cancelWithError:v6];
      }
    }
  }
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  sourceUUID = [(HMIUpdatePersonsModelOperation *)self sourceUUID];
  external = [(HMIUpdatePersonsModelOperation *)self external];
  v6 = @"home";
  if (external)
  {
    v6 = @"external";
  }

  v7 = [v3 stringWithFormat:@"%@ (%@)", sourceUUID, v6];

  return v7;
}

@end