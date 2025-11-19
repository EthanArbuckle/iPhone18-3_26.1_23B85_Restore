@interface HMIFetchUnassociatedFaceCropsOperation
+ (id)shortDescription;
- (HMIFetchUnassociatedFaceCropsOperation)initWithDataSource:(id)a3;
- (NSString)shortDescription;
- (void)main;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIFetchUnassociatedFaceCropsOperation

- (HMIFetchUnassociatedFaceCropsOperation)initWithDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMIFetchUnassociatedFaceCropsOperation;
  v6 = [(HMFOperation *)&v11 initWithTimeout:20.0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = [MEMORY[0x277CBEB98] set];
    unassociatedFaceCrops = v7->_unassociatedFaceCrops;
    v7->_unassociatedFaceCrops = v8;
  }

  return v7;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  [(HMIFetchUnassociatedFaceCropsOperation *)self mainInsideAutoreleasePool];

  objc_autoreleasePoolPop(v3);
}

- (void)mainInsideAutoreleasePool
{
  objc_initWeak(&location, self);
  v3 = [(HMIFetchUnassociatedFaceCropsOperation *)self dataSource];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__HMIFetchUnassociatedFaceCropsOperation_mainInsideAutoreleasePool__block_invoke;
  v4[3] = &unk_278753D20;
  objc_copyWeak(&v5, &location);
  [v3 fetchAllUnassociatedFaceCropsWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __67__HMIFetchUnassociatedFaceCropsOperation_mainInsideAutoreleasePool__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v9;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v13;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@Error fetching unassociated face crops:%@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [v11 cancelWithError:v7];
    }

    else
    {
      objc_storeStrong(WeakRetained + 40, a2);
      [v9 finish];
    }
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

@end