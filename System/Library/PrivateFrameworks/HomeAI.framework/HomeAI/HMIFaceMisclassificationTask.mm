@interface HMIFaceMisclassificationTask
- (HMIFaceMisclassificationTask)initWithTaskID:(int)a3 dataSource:(id)a4 faceCrop:(id)a5;
- (void)mainInsideAutoreleasePool;
- (void)removeNearestFaceprint:(id)a3 withFaceCrops:(id)a4;
@end

@implementation HMIFaceMisclassificationTask

- (HMIFaceMisclassificationTask)initWithTaskID:(int)a3 dataSource:(id)a4 faceCrop:(id)a5
{
  v7 = *&a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMIFaceMisclassificationTask;
  v11 = [(HMITask *)&v14 initWithTaskID:v7];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_faceCrop, a5);
    objc_storeStrong(&v12->_dataSource, a4);
  }

  return v12;
}

- (void)mainInsideAutoreleasePool
{
  objc_initWeak(&location, self);
  v3 = [(HMIFaceMisclassificationTask *)self dataSource];
  v4 = MEMORY[0x277CBEB98];
  v5 = [(HMIFaceMisclassificationTask *)self faceCrop];
  v6 = [v5 personUUID];
  v7 = [v4 setWithObject:v6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HMIFaceMisclassificationTask_mainInsideAutoreleasePool__block_invoke;
  v8[3] = &unk_278753D20;
  objc_copyWeak(&v9, &location);
  [v3 fetchFaceCropsForPersonsWithUUIDs:v7 completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__HMIFaceMisclassificationTask_mainInsideAutoreleasePool__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [v5 na_map:&__block_literal_global_19];
      objc_initWeak(location, WeakRetained);
      v9 = [WeakRetained dataSource];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __57__HMIFaceMisclassificationTask_mainInsideAutoreleasePool__block_invoke_2;
      v14[3] = &unk_278754268;
      objc_copyWeak(&v16, location);
      v15 = v5;
      [v9 fetchFaceprintsForFaceCropsWithUUIDs:v8 completion:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v13;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch face crops with error: %@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [v11 cancelWithError:v6];
    }
  }
}

void __57__HMIFaceMisclassificationTask_mainInsideAutoreleasePool__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained removeNearestFaceprint:v5 withFaceCrops:*(a1 + 32)];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v12;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch faceprints with error: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [v10 cancelWithError:v6];
    }
  }
}

- (void)removeNearestFaceprint:(id)a3 withFaceCrops:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v58 = 0;
  v46 = objc_alloc_init(HMIFaceprinter);
  v44 = v6;
  v48 = [(HMIFaceprinter *)v46 updatedFaceprintsForFaceCrops:v6 withExistingFaceprints:v5 error:&v58];
  v7 = v58;
  if (v48)
  {
    v45 = [v48 allAtCurrentVersion];
    if ([v45 hmf_isEmpty])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [(HMIFaceMisclassificationTask *)v9 faceCrop];
        v13 = [v12 personUUID];
        *buf = 138543618;
        v61 = v11;
        v62 = 2112;
        v63 = v13;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Person (%@) has no faceprints -- nothing to remove", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [(HMFOperation *)v9 finish];
    }

    else
    {
      v18 = [(HMIFaceMisclassificationTask *)self faceCrop];
      v57 = v7;
      v43 = [(HMIFaceprinter *)v46 generateFaceprintForFaceCrop:v18 error:&v57];
      v42 = v57;

      v49 = [v43 faceprint];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v19 = v45;
      v20 = 0;
      v21 = [v19 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v21)
      {
        v22 = *v54;
        v23 = 1.79769313e308;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v54 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v53 + 1) + 8 * i);
            v26 = [v49 descriptorData];
            v27 = [v25 data];
            [HMIGreedyClustering faceDistanceFromDescriptor:v26 toDescriptor:v27];
            v29 = v28;

            v30 = v29;
            if (v23 > v30)
            {
              v31 = v25;

              v23 = v30;
              v20 = v31;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v53 objects:v59 count:16];
        }

        while (v21);
      }

      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [v20 faceCropUUID];
        *buf = 138543618;
        v61 = v35;
        v62 = 2112;
        v63 = v36;
        _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, "%{public}@Nearest face crop to be removed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      objc_initWeak(buf, v33);
      v37 = [(HMIFaceMisclassificationTask *)v33 dataSource];
      v38 = MEMORY[0x277CBEB98];
      v39 = [v20 faceCropUUID];
      v40 = [v38 setWithObject:v39];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __69__HMIFaceMisclassificationTask_removeNearestFaceprint_withFaceCrops___block_invoke;
      v50[3] = &unk_278754290;
      objc_copyWeak(&v52, buf);
      v41 = v20;
      v51 = v41;
      [v37 removeFaceCropsWithUUIDs:v40 completion:v50];

      objc_destroyWeak(&v52);
      objc_destroyWeak(buf);

      v7 = v42;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v17;
      v62 = 2112;
      v63 = v7;
      _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error faceprinting face crops:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMFOperation *)v15 cancelWithError:v7];
  }
}

void __69__HMIFaceMisclassificationTask_removeNearestFaceprint_withFaceCrops___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
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
        v12 = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v3;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove face crop with error: %@", &v12, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [v6 cancelWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [*(a1 + 32) faceCropUUID];
        v12 = 138543618;
        v13 = v10;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Successfully removed face crop (%@) via user indicated misclassification", &v12, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [v6 finish];
    }
  }
}

@end