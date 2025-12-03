@interface HMIFetchPersonFaceCropsOperation
+ (id)shortDescription;
- (HMIFetchPersonFaceCropsOperation)initWithDataSource:(id)source person:(id)person;
- (NSString)shortDescription;
- (void)main;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIFetchPersonFaceCropsOperation

- (HMIFetchPersonFaceCropsOperation)initWithDataSource:(id)source person:(id)person
{
  sourceCopy = source;
  personCopy = person;
  v14.receiver = self;
  v14.super_class = HMIFetchPersonFaceCropsOperation;
  v9 = [(HMFOperation *)&v14 initWithTimeout:20.0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, source);
    objc_storeStrong(&v10->_person, person);
    v11 = [MEMORY[0x277CBEB98] set];
    personFaceCrops = v10->_personFaceCrops;
    v10->_personFaceCrops = v11;
  }

  return v10;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  [(HMIFetchPersonFaceCropsOperation *)self mainInsideAutoreleasePool];

  objc_autoreleasePoolPop(v3);
}

- (void)mainInsideAutoreleasePool
{
  objc_initWeak(&location, self);
  dataSource = [(HMIFetchPersonFaceCropsOperation *)self dataSource];
  v4 = MEMORY[0x277CBEB98];
  person = [(HMIFetchPersonFaceCropsOperation *)self person];
  uUID = [person UUID];
  v7 = [v4 setWithObject:uUID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HMIFetchPersonFaceCropsOperation_mainInsideAutoreleasePool__block_invoke;
  v8[3] = &unk_278753D20;
  objc_copyWeak(&v9, &location);
  [dataSource fetchFaceCropsForPersonsWithUUIDs:v7 completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__HMIFetchPersonFaceCropsOperation_mainInsideAutoreleasePool__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
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
        v14 = [v11 person];
        v15 = 138543874;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@Error fetching face crops for person:%@, error:%@", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [v11 cancelWithError:v7];
    }

    else
    {
      objc_storeStrong(WeakRetained + 41, a2);
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