@interface HMIStoreFaceprintOperation
- (HMIStoreFaceprintOperation)initWithDataSource:(id)a3 faceprint:(id)a4;
- (void)main;
@end

@implementation HMIStoreFaceprintOperation

- (HMIStoreFaceprintOperation)initWithDataSource:(id)a3 faceprint:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMIStoreFaceprintOperation;
  v9 = [(HMFOperation *)&v12 initWithTimeout:10.0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, a3);
    objc_storeStrong(&v10->_faceprint, a4);
  }

  return v10;
}

- (void)main
{
  objc_initWeak(&location, self);
  v3 = [(HMIStoreFaceprintOperation *)self dataSource];
  v4 = MEMORY[0x277CBEB98];
  v5 = [(HMIStoreFaceprintOperation *)self faceprint];
  v6 = [v4 setWithObject:v5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HMIStoreFaceprintOperation_main__block_invoke;
  v7[3] = &unk_2787528E0;
  objc_copyWeak(&v8, &location);
  [v3 addFaceprints:v6 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __34__HMIStoreFaceprintOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v6 faceprint];
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Storing faceprint:%@ failed with error:%@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 cancelWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 faceprint];
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Storing faceprint:%@ completed successfully", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 finish];
  }
}

@end