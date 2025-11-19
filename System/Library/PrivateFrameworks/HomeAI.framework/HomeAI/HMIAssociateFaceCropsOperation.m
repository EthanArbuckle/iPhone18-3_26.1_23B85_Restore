@interface HMIAssociateFaceCropsOperation
- (HMIAssociateFaceCropsOperation)initWithDataSource:(id)a3 faceCropUUIDs:(id)a4 personUUID:(id)a5 source:(int64_t)a6;
- (void)main;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIAssociateFaceCropsOperation

- (HMIAssociateFaceCropsOperation)initWithDataSource:(id)a3 faceCropUUIDs:(id)a4 personUUID:(id)a5 source:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HMIAssociateFaceCropsOperation;
  v14 = [(HMFOperation *)&v17 initWithTimeout:20.0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dataSource, a3);
    objc_storeStrong(&v15->_faceCropUUIDs, a4);
    objc_storeStrong(&v15->_personUUID, a5);
    v15->_source = a6;
  }

  return v15;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  [(HMIAssociateFaceCropsOperation *)self mainInsideAutoreleasePool];

  objc_autoreleasePoolPop(v3);
}

- (void)mainInsideAutoreleasePool
{
  objc_initWeak(&location, self);
  v3 = [(HMIAssociateFaceCropsOperation *)self dataSource];
  v4 = [(HMIAssociateFaceCropsOperation *)self faceCropUUIDs];
  v5 = [(HMIAssociateFaceCropsOperation *)self personUUID];
  v6 = [(HMIAssociateFaceCropsOperation *)self source];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMIAssociateFaceCropsOperation_mainInsideAutoreleasePool__block_invoke;
  v7[3] = &unk_2787528E0;
  objc_copyWeak(&v8, &location);
  [v3 associateFaceCropsWithUUIDs:v4 toPersonWithUUID:v5 forSource:v6 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__HMIAssociateFaceCropsOperation_mainInsideAutoreleasePool__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
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
        v10 = [v6 faceCropUUIDs];
        v11 = [v10 count];
        v12 = [v6 personUUID];
        v13 = HMIPersonFaceCropSourceAsString([v6 source]);
        v19 = 138544386;
        v20 = v9;
        v21 = 2048;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v3;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error associating face crops (num UUIDs:%lu), to personUUID: %@ with source: %@ error:%@", &v19, 0x34u);
      }

      objc_autoreleasePoolPop(v5);
      [v6 cancelWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v6 faceCropUUIDs];
        v16 = [v15 count];
        v17 = [v6 personUUID];
        v18 = HMIPersonFaceCropSourceAsString([v6 source]);
        v19 = 138544130;
        v20 = v14;
        v21 = 2048;
        v22 = v16;
        v23 = 2112;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Succesfully associated face crops (num UUIDs %lu) to person UUID: %@ for source: %@", &v19, 0x2Au);
      }

      objc_autoreleasePoolPop(v5);
      [v6 finish];
    }
  }
}

@end