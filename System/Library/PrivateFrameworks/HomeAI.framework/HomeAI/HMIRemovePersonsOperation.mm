@interface HMIRemovePersonsOperation
- (HMIRemovePersonsOperation)initWithDataSource:(id)source personUUIDs:(id)ds;
- (void)main;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIRemovePersonsOperation

- (HMIRemovePersonsOperation)initWithDataSource:(id)source personUUIDs:(id)ds
{
  sourceCopy = source;
  dsCopy = ds;
  v12.receiver = self;
  v12.super_class = HMIRemovePersonsOperation;
  v9 = [(HMFOperation *)&v12 initWithTimeout:20.0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, source);
    objc_storeStrong(&v10->_personUUIDs, ds);
  }

  return v10;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  [(HMIRemovePersonsOperation *)self mainInsideAutoreleasePool];

  objc_autoreleasePoolPop(v3);
}

- (void)mainInsideAutoreleasePool
{
  objc_initWeak(&location, self);
  dataSource = [(HMIRemovePersonsOperation *)self dataSource];
  personUUIDs = [(HMIRemovePersonsOperation *)self personUUIDs];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__HMIRemovePersonsOperation_mainInsideAutoreleasePool__block_invoke;
  v5[3] = &unk_2787528E0;
  objc_copyWeak(&v6, &location);
  [dataSource removePersonsWithUUIDs:personUUIDs completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __54__HMIRemovePersonsOperation_mainInsideAutoreleasePool__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    v8 = v7;
    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v6 personUUIDs];
        v13 = 138543874;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v3;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error removing persons with UUIDs:%@, error:%@", &v13, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      [v6 cancelWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v6 personUUIDs];
        v13 = 138543618;
        v14 = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Succesfully removed persons %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [v6 finish];
    }
  }
}

@end