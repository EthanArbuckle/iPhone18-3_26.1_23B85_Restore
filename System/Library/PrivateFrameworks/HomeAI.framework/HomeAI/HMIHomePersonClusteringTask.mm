@interface HMIHomePersonClusteringTask
- (HMIHomePersonClusteringTask)initWithTaskID:(int)a3 homeUUID:(id)a4 dataSource:(id)a5 sourceUUID:(id)a6 personsModelManager:(id)a7 doImpurePersonCleanup:(BOOL)a8 error:(id *)a9;
- (id)personCreatedDateFromFaceCrops:(id)a3;
- (void)_stageFive_associateFaceCropsWithClusterMapping:(id)a3 faceprints:(id)a4;
- (void)_stageFour_clusterFaceprints:(id)a3;
- (void)_stageOne_fetchFaceCrops;
- (void)_stageThree_generateFaceprintsForFaceCrops:(id)a3 existingFaceprints:(id)a4;
- (void)_stageTwo_fetchFaceprints:(id)a3;
- (void)_stageZero_expireUnnamedPersons;
- (void)finish;
- (void)mainInsideAutoreleasePool;
- (void)removePerson:(id)a3;
@end

@implementation HMIHomePersonClusteringTask

- (HMIHomePersonClusteringTask)initWithTaskID:(int)a3 homeUUID:(id)a4 dataSource:(id)a5 sourceUUID:(id)a6 personsModelManager:(id)a7 doImpurePersonCleanup:(BOOL)a8 error:(id *)a9
{
  v9 = a8;
  v14 = *&a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = 500.0;
  if (v9)
  {
    v19 = 1000.0;
  }

  v34.receiver = self;
  v34.super_class = HMIHomePersonClusteringTask;
  v20 = [(HMIHomeTask *)&v34 initWithTaskID:v14 homeUUID:a4 timeout:v19];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v20->_dataSource, a5);
  objc_storeStrong(&v21->_sourceUUID, a6);
  objc_storeStrong(&v21->_personsModelManager, a7);
  v21->_doImpurePersonCleanup = v9;
  v22 = [[HMIGreedyClustering alloc] initWithError:0];
  clusterer = v21->_clusterer;
  v21->_clusterer = v22;

  v33 = 0;
  v24 = [[HMIFaceClassifierVIP alloc] initWithError:&v33];
  v25 = v33;
  faceClassifier = v21->_faceClassifier;
  v21->_faceClassifier = v24;

  if (v21->_faceClassifier)
  {
    v27 = objc_alloc_init(HMIClusteringTaskSummary);
    summary = v21->_summary;
    v21->_summary = v27;

    v21->_lock._os_unfair_lock_opaque = 0;
LABEL_6:
    v29 = v21;
    goto LABEL_10;
  }

  if (a9)
  {
    v30 = v25;
    *a9 = v25;
  }

  HMIErrorLogC(v25);
  v31 = v25;
  *a9 = v25;

  v29 = 0;
LABEL_10:

  return v29;
}

- (void)mainInsideAutoreleasePool
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = v3;

  if ([(HMIHomePersonClusteringTask *)self doImpurePersonCleanup])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMIHomeTask *)v6 homeUUID];
      v10 = [v9 UUIDString];
      *buf = 138543618;
      v28 = v8;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Spawning CleanupImpureHomePersonsOperation for %@ before home person clustering", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [HMICleanupImpureHomePersonsOperation alloc];
    v12 = [(HMIHomeTask *)v6 homeUUID];
    v13 = [(HMIHomePersonClusteringTask *)v6 dataSource];
    v14 = [(HMICleanupImpureHomePersonsOperation *)v11 initWithHomeUUID:v12 dataSource:v13];

    [(HMFOperation *)v14 start];
    [(HMICleanupImpureHomePersonsOperation *)v14 waitUntilFinished];
    v15 = [(HMFOperation *)v14 error];

    v16 = v15 == 0;
    v17 = objc_autoreleasePoolPush();
    v18 = v6;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v23;
        _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@CleanupImpureHomePersonOperation finished successfully", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMFOperation *)v14 error];
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@CleanupImpureHomePersonOperation finished with error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  objc_initWeak(buf, self);
  v24 = [(HMIHomePersonClusteringTask *)self dataSource];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __56__HMIHomePersonClusteringTask_mainInsideAutoreleasePool__block_invoke;
  v25[3] = &unk_2787528E0;
  objc_copyWeak(&v26, buf);
  [v24 performCloudPullWithCompletion:v25];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

void __56__HMIHomePersonClusteringTask_mainInsideAutoreleasePool__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = WeakRetained;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v9 = 138543618;
        v10 = v8;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error performing cloud pull:%@", &v9, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
    }

    [WeakRetained _stageZero_expireUnnamedPersons];
  }
}

- (void)_stageZero_expireUnnamedPersons
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching persons", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  objc_initWeak(buf, v4);
  v7 = [(HMIHomePersonClusteringTask *)v4 dataSource];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke;
  v8[3] = &unk_278753D20;
  objc_copyWeak(&v9, buf);
  [v7 fetchAllPersonsWithCompletion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v50 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  v51 = v5;
  if (WeakRetained)
  {
    if (v5)
    {
      v49 = WeakRetained;
      v52 = [v5 na_map:&__block_literal_global_34];
      v8 = objc_autoreleasePoolPush();
      v9 = v49;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v51 count];
        v13 = [v51 count];
        *buf = 138543874;
        v67 = v11;
        v68 = 2048;
        v69 = v12;
        v70 = 2048;
        v71 = v13 - [v52 count];
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetched %lu persons (%lu unnamed)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v51;
      v55 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v55)
      {
        v54 = *v62;
        while (2)
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v62 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v61 + 1) + 8 * i);
            v16 = [v9 progressBlock];

            if (v16)
            {
              v17 = [v9 progressBlock];
              v17[2](0.0);
            }

            if ([v9 isCancelled])
            {
              v40 = objc_autoreleasePoolPush();
              v41 = v9;
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = HMFGetLogIdentifier();
                *buf = 138543362;
                v67 = v43;
                _os_log_impl(&dword_22D12F000, v42, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 0 early because task was canceled", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v40);
              goto LABEL_28;
            }

            v18 = [v15 name];

            if (v18)
            {
              v19 = objc_autoreleasePoolPush();
              v20 = v9;
              v21 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = HMFGetLogIdentifier();
                v23 = [v15 UUID];
                *buf = 138543618;
                v67 = v22;
                v68 = 2112;
                v69 = v23;
                _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Skipping named person with UUID: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v19);
            }

            else
            {
              v24 = [HMIPersonSourceUUIDPair alloc];
              v25 = [v15 UUID];
              v26 = [v9 sourceUUID];
              v27 = [(HMIPersonSourceUUIDPair *)v24 initWithPersonUUID:v25 sourceUUID:v26];

              v28 = [v9 personsModelManager];
              v29 = [v9 homeUUID];
              v60 = 0;
              v30 = [v28 equivalencyCellForPerson:v27 homeUUID:v29 error:&v60];
              v31 = v60;

              v58[0] = MEMORY[0x277D85DD0];
              v58[1] = 3221225472;
              v58[2] = __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke_237;
              v58[3] = &unk_278755718;
              v58[4] = v9;
              v59 = v52;
              if (([v30 na_any:v58] & 1) == 0)
              {
                v32 = objc_autoreleasePoolPush();
                v33 = v9;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  v35 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v67 = v35;
                  v68 = 2112;
                  v69 = v15;
                  _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, "%{public}@Fetching face crops for person: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v32);
                objc_initWeak(buf, v33);
                v36 = [v33 dataSource];
                v37 = MEMORY[0x277CBEB98];
                v38 = [v15 UUID];
                v39 = [v37 setWithObject:v38];
                v56[0] = MEMORY[0x277D85DD0];
                v56[1] = 3221225472;
                v56[2] = __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke_240;
                v56[3] = &unk_278754268;
                objc_copyWeak(&v57, buf);
                v56[4] = v15;
                [v36 fetchFaceCropsForPersonsWithUUIDs:v39 completion:v56];

                objc_destroyWeak(&v57);
                objc_destroyWeak(buf);
              }
            }
          }

          v55 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
          if (v55)
          {
            continue;
          }

          break;
        }
      }

      [v9 _stageOne_fetchFaceCrops];
LABEL_28:

      v7 = v49;
    }

    else
    {
      v44 = objc_autoreleasePoolPush();
      v45 = v7;
      v46 = v7;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543618;
        v67 = v48;
        v68 = 2112;
        v69 = v50;
        _os_log_impl(&dword_22D12F000, v47, OS_LOG_TYPE_ERROR, "%{public}@Error fetching persons:%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
      [v46 cancelWithError:v50];
      v7 = v45;
    }
  }
}

id __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke_234(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 name];

  if (v3)
  {
    v3 = [v2 UUID];
  }

  return v3;
}

uint64_t __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke_237(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceUUID];
  v5 = [*(a1 + 32) sourceUUID];
  v6 = [v4 hmf_isEqualToUUID:v5];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v3 personUUID];
    v9 = [v7 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1u | ((v6 & 1) == 0);
}

void __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke_240(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      if ([v5 count])
      {
        v8 = [WeakRetained personCreatedDateFromFaceCrops:v5];
        [v8 timeIntervalSinceNow];
        v10 = v9;
        if (v9 < -864000.0)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = WeakRetained;
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            v15 = [*(a1 + 32) UUID];
            v26 = 138543874;
            v27 = v14;
            v28 = 2112;
            v29 = v15;
            v30 = 2048;
            v31 = -v10;
            _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Deleting unnamed person %@ (age = %f seconds)", &v26, 0x20u);
          }

          objc_autoreleasePoolPop(v11);
          [v12 removePerson:*(a1 + 32)];
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = WeakRetained;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [*(a1 + 32) UUID];
          v26 = 138543618;
          v27 = v24;
          v28 = 2112;
          v29 = v25;
          _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_INFO, "%{public}@Deleting unnamed person %@ (0 face crops)", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        [v22 removePerson:*(a1 + 32)];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 32);
        v26 = 138543874;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = *&v6;
        _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error fetching face crops for person:%@, error:%@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }
}

- (void)_stageOne_fetchFaceCrops
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HMIHomePersonClusteringTask *)self isCancelled])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 1 early because task was canceled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    objc_initWeak(buf, self);
    v7 = [(HMIHomePersonClusteringTask *)self dataSource];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__HMIHomePersonClusteringTask__stageOne_fetchFaceCrops__block_invoke;
    v8[3] = &unk_278753D20;
    objc_copyWeak(&v9, buf);
    [v7 fetchAllUnassociatedFaceCropsWithCompletion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __55__HMIHomePersonClusteringTask__stageOne_fetchFaceCrops__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained _stageTwo_fetchFaceprints:v5];
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
        _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error fetching face crops:%@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [v10 cancelWithError:v6];
    }
  }
}

- (void)_stageTwo_fetchFaceprints:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMIHomePersonClusteringTask *)self isCancelled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 2 early because task was canceled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = [v4 na_map:&__block_literal_global_244];
    objc_initWeak(buf, self);
    v10 = [(HMIHomePersonClusteringTask *)self dataSource];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__HMIHomePersonClusteringTask__stageTwo_fetchFaceprints___block_invoke_2;
    v11[3] = &unk_278754268;
    objc_copyWeak(&v13, buf);
    v12 = v4;
    [v10 fetchFaceprintsForFaceCropsWithUUIDs:v9 completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __57__HMIHomePersonClusteringTask__stageTwo_fetchFaceprints___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
      [WeakRetained _stageThree_generateFaceprintsForFaceCrops:*(a1 + 32) existingFaceprints:v5];
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
        _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error fetching faceprints:%@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [v10 cancelWithError:v6];
    }
  }
}

- (void)_stageThree_generateFaceprintsForFaceCrops:(id)a3 existingFaceprints:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v51 = a4;
  if ([(HMIHomePersonClusteringTask *)self isCancelled])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v9;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 3 early because task was canceled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v54 = self;
    v46 = [MEMORY[0x277CBEAA8] date];
    v49 = objc_alloc_init(HMIFaceprinter);
    v50 = [MEMORY[0x277CBEB58] set];
    v10 = [v47 count];
    v53 = [v47 allObjects];
    v48 = vcvtpd_s64_f64(v10 / 100.0) | 0x4059000000000000;
    if (v48 < 1)
    {
      v32 = 0;
LABEL_20:
      v12 = v32;
      v33 = [MEMORY[0x277CBEAA8] date];
      [v33 timeIntervalSinceDate:v46];
      v35 = v34;
      v36 = [(HMIHomePersonClusteringTask *)v54 summary];
      [v36 setFaceprintingDuration:v35];

      v37 = [v50 allObjects];
      [(HMIHomePersonClusteringTask *)v54 _stageFour_clusterFaceprints:v37];
    }

    else
    {
      v11 = 0;
      v12 = 0;
      while (![(HMIHomePersonClusteringTask *)v54 isCancelled])
      {
        [v53 count];
        v13 = MEMORY[0x277CBEB98];
        v14 = [v53 subarrayWithRange:?];
        v55 = [v13 setWithArray:v14];

        v60 = v12;
        v15 = [(HMIFaceprinter *)v49 updatedFaceprintsForFaceCrops:v55 withExistingFaceprints:v51 error:&v60];
        v52 = v60;

        if (!v15)
        {
          v42 = objc_autoreleasePoolPush();
          v43 = v54;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = HMFGetLogIdentifier();
            *buf = 138543618;
            v62 = v45;
            v63 = 2112;
            v64 = v52;
            _os_log_impl(&dword_22D12F000, v44, OS_LOG_TYPE_ERROR, "%{public}@Error faceprinting face crops:%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v42);
          [(HMFOperation *)v43 cancelWithError:v52];

          v12 = v52;
          goto LABEL_27;
        }

        v16 = [v15 allAtCurrentVersion];
        [v50 unionSet:v16];
        v17 = [v15 createdAtCurrentVersion];
        if ([v17 count])
        {
          v18 = objc_autoreleasePoolPush();
          v19 = v54;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [v17 count];
            *buf = 138543618;
            v62 = v21;
            v63 = 2048;
            v64 = v22;
            _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Storing %lu newly created faceprints", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
          objc_initWeak(buf, v19);
          v23 = [(HMIHomePersonClusteringTask *)v19 dataSource];
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __93__HMIHomePersonClusteringTask__stageThree_generateFaceprintsForFaceCrops_existingFaceprints___block_invoke;
          v58[3] = &unk_2787528E0;
          objc_copyWeak(&v59, buf);
          [v23 addFaceprints:v17 completion:v58];

          objc_destroyWeak(&v59);
          objc_destroyWeak(buf);
        }

        v24 = [v15 existingAtOtherVersions];
        if ([v24 count])
        {
          v25 = [v24 na_map:&__block_literal_global_250_0];
          v26 = objc_autoreleasePoolPush();
          v27 = v54;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            v30 = [v24 count];
            *buf = 138543618;
            v62 = v29;
            v63 = 2048;
            v64 = v30;
            _os_log_impl(&dword_22D12F000, v28, OS_LOG_TYPE_INFO, "%{public}@Removing %lu faceprints from old versions", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
          objc_initWeak(buf, v27);
          v31 = [(HMIHomePersonClusteringTask *)v27 dataSource];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __93__HMIHomePersonClusteringTask__stageThree_generateFaceprintsForFaceCrops_existingFaceprints___block_invoke_251;
          v56[3] = &unk_2787528E0;
          objc_copyWeak(&v57, buf);
          [v31 removeFaceprintsWithUUIDs:v25 completion:v56];

          objc_destroyWeak(&v57);
          objc_destroyWeak(buf);
        }

        ++v11;
        v32 = v52;
        v12 = v52;
        if (v11 == v48)
        {
          goto LABEL_20;
        }
      }

      v38 = objc_autoreleasePoolPush();
      v39 = v54;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v41;
        _os_log_impl(&dword_22D12F000, v40, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 3 loop early because task was canceled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
    }

LABEL_27:
  }
}

void __93__HMIHomePersonClusteringTask__stageThree_generateFaceprintsForFaceCrops_existingFaceprints___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error saving new faceprints:%@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __93__HMIHomePersonClusteringTask__stageThree_generateFaceprintsForFaceCrops_existingFaceprints___block_invoke_251(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error removing faceprints from old versions:%@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)_stageFour_clusterFaceprints:(id)a3
{
  v90 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMIHomePersonClusteringTask *)self isCancelled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v84 = v8;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 4 early because task was canceled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_39;
  }

  v76 = [HMIFaceUtilities faceObservationsFromFaceprintsForClustering:v4];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v84 = v12;
    v85 = 2048;
    v86 = [v76 count];
    _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Number of faceprints to cluster: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [v76 count];
  v14 = [(HMIHomePersonClusteringTask *)v10 summary];
  [v14 setNumberOfFaceprintsClustered:v13];

  v15 = [MEMORY[0x277CBEAA8] date];
  clusterer = v10->_clusterer;
  v82 = 0;
  v17 = [(HMIGreedyClustering *)clusterer getClustersWithFaces:v76 error:&v82];
  v18 = v82;
  v19 = [MEMORY[0x277CBEAA8] date];
  v69 = v15;
  [v19 timeIntervalSinceDate:v15];
  v21 = v20;
  v22 = [(HMIHomePersonClusteringTask *)v10 summary];
  [v22 setClusteringDuration:v21];

  v70 = v17;
  if (!v17)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = v10;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = HMFGetLogIdentifier();
      *buf = 138543618;
      v84 = v63;
      v85 = 2112;
      v86 = v18;
      _os_log_impl(&dword_22D12F000, v62, OS_LOG_TYPE_ERROR, "%{public}@Clustering error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v60);
    [(HMFOperation *)v61 cancelWithError:v18];
    goto LABEL_38;
  }

  v68 = v4;
  v73 = [MEMORY[0x277CBEB38] dictionary];
  v23 = objc_autoreleasePoolPush();
  v24 = v10;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [v17 count];
    *buf = 138543618;
    v84 = v26;
    v85 = 2048;
    v86 = v27;
    _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_INFO, "%{public}@Number of clusters: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v28 = [v17 count];
  v29 = [(HMIHomePersonClusteringTask *)v24 summary];
  [v29 setNumberOfClusters:v28];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v17;
  v30 = [obj countByEnumeratingWithState:&v78 objects:v89 count:16];
  if (!v30)
  {
LABEL_33:

    v4 = v68;
    [(HMIHomePersonClusteringTask *)v24 _stageFive_associateFaceCropsWithClusterMapping:v73 faceprints:v68];
    goto LABEL_37;
  }

  v31 = v30;
  v32 = *v79;
LABEL_12:
  v33 = 0;
  while (1)
  {
    if (*v79 != v32)
    {
      objc_enumerationMutation(obj);
    }

    v34 = *(*(&v78 + 1) + 8 * v33);
    v35 = [v34 objects];
    v36 = [v35 count];

    if (v36 > 9)
    {
      break;
    }

    v37 = objc_autoreleasePoolPush();
    v38 = v24;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = HMFGetLogIdentifier();
      v41 = [v34 objects];
      v42 = [v41 count];
      *buf = 138543874;
      v84 = v40;
      v85 = 2048;
      v86 = v42;
      v87 = 1024;
      v88 = 10;
      _os_log_impl(&dword_22D12F000, v39, OS_LOG_TYPE_DEBUG, "%{public}@Cluster of size %lu beneath threshold of %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v37);
LABEL_25:
    if (v31 == ++v33)
    {
      v31 = [obj countByEnumeratingWithState:&v78 objects:v89 count:16];
      if (v31)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }
  }

  v43 = v31;
  v44 = v32;
  v45 = [HMIGreedyClustering centermostFaceprintInCluster:v34 faceObservations:v76];
  v46 = [(HMIHomePersonClusteringTask *)v24 personsModelManager];
  v47 = v24;
  v48 = [(HMIHomeTask *)v24 homeUUID];
  v77 = v18;
  v49 = [v46 predictHomePersonFromFaceObservation:v45 homeUUID:v48 error:&v77];
  v50 = v77;
  v51 = v18;
  v18 = v50;

  if (v49)
  {
    v52 = [v49 confidence];
    [v52 floatValue];
    v54 = v53;

    if (v54 > 0.83)
    {
      context = objc_autoreleasePoolPush();
      v55 = v47;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v71 = HMFGetLogIdentifier();
        v72 = v45;
        v57 = [v49 personUUID];
        *buf = 138543618;
        v84 = v71;
        v85 = 2112;
        v86 = v57;
        v58 = v57;
        _os_log_impl(&dword_22D12F000, v56, OS_LOG_TYPE_INFO, "%{public}@Assigning cluster to existing person with UUID: %@", buf, 0x16u);

        v45 = v72;
      }

      objc_autoreleasePoolPop(context);
      v59 = [v49 personUUID];
      [v73 setObject:v59 forKeyedSubscript:v34];
    }

    v24 = v47;
    v32 = v44;
    v31 = v43;
    goto LABEL_25;
  }

  if ([v18 code] == 1037)
  {

    v24 = v47;
    goto LABEL_33;
  }

  v64 = objc_autoreleasePoolPush();
  v65 = v47;
  v66 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    v67 = HMFGetLogIdentifier();
    *buf = 138543618;
    v84 = v67;
    v85 = 2112;
    v86 = v18;
    _os_log_impl(&dword_22D12F000, v66, OS_LOG_TYPE_ERROR, "%{public}@Face prediction error:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v64);
  [(HMFOperation *)v65 cancelWithError:v18];

  v4 = v68;
LABEL_37:

LABEL_38:
LABEL_39:
}

- (void)_stageFive_associateFaceCropsWithClusterMapping:(id)a3 faceprints:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v9 = [MEMORY[0x277CBEB58] set];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke;
  v36 = &unk_278755768;
  v10 = v7;
  v37 = v10;
  v38 = self;
  v11 = v8;
  v39 = v11;
  v12 = v9;
  v40 = v12;
  [v6 enumerateKeysAndObjectsUsingBlock:&v33];
  v13 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1048 description:@"Error on dispatch_group_wait (associateFaceCrops)"];
    [(HMFOperation *)self cancelWithError:v14];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v18;
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@Finished calls to associateFaceCropsWithUUIDs", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    os_unfair_lock_lock_with_options();
    v19 = MEMORY[0x277CBEA60];
    v20 = [v12 allObjects];
    v14 = [v19 arrayWithArray:v20];

    os_unfair_lock_unlock(&v16->_lock);
    if (([v14 hmf_isEmpty] & 1) == 0)
    {
      v21 = [MEMORY[0x277CCAB68] string];
      objc_msgSend(v21, "appendFormat:", @"Error associating face crops for %lu person(s): ("), objc_msgSend(v14, "count");
      v22 = MEMORY[0x277CCACA8];
      v23 = [v14 count];
      if (v23 >= 3)
      {
        v24 = 3;
      }

      else
      {
        v24 = v23;
      }

      v25 = [v14 subarrayWithRange:{0, v24}];
      v26 = [v25 componentsJoinedByString:{@", "}];
      v27 = [v14 count];
      v28 = &stru_284057FB8;
      if (v27 > 3)
      {
        v28 = @" ...";
      }

      v29 = [v22 stringWithFormat:@"%@%@", v26, v28, v33, v34, v35, v36, v37, v38, v39];

      [v21 appendString:v29];
      [v21 appendString:@""]);
      v30 = MEMORY[0x277CCA9B8];
      v31 = [v21 copy];
      v32 = [v30 hmiPrivateErrorWithCode:1048 description:v31];

      [(HMFOperation *)v16 cancelWithError:v32];
    }

    [(HMIHomePersonClusteringTask *)v16 finish];
  }
}

void __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBEB98];
  v8 = [v5 objects];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke_2;
  v23[3] = &unk_278753790;
  v24 = *(a1 + 32);
  v9 = [v8 na_map:v23];
  v10 = [v7 setWithArray:v9];

  v11 = [*(a1 + 40) summary];
  v12 = [v11 numberOfUnknownFaceprintsAssociated];
  v13 = [v10 count];
  v14 = [*(a1 + 40) summary];
  [v14 setNumberOfUnknownFaceprintsAssociated:v13 + v12];

  dispatch_group_enter(*(a1 + 48));
  objc_initWeak(&location, *(a1 + 40));
  v15 = [*(a1 + 40) dataSource];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke_3;
  v17[3] = &unk_278755740;
  objc_copyWeak(&v21, &location);
  v16 = v6;
  v18 = v16;
  v19 = *(a1 + 56);
  v20 = *(a1 + 48);
  [v15 associateFaceCropsWithUUIDs:v10 toPersonWithUUID:v16 forSource:3 completion:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

id __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [*(a1 + 32) objectAtIndex:{objc_msgSend(a2, "intValue")}];
  v3 = [v2 faceCropUUID];

  return v3;
}

void __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = WeakRetained;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v9 = *(a1 + 32);
        v10 = 138543874;
        v11 = v8;
        v12 = 2112;
        v13 = v9;
        v14 = 2112;
        v15 = v3;
        _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error associating face crops with person (%@): %@", &v10, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      os_unfair_lock_lock_with_options();
      [*(a1 + 40) addObject:*(a1 + 32)];
      os_unfair_lock_unlock(v6 + 88);
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

- (void)finish
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(HMIHomePersonClusteringTask *)self startTime];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;
  v7 = [(HMIHomePersonClusteringTask *)self summary];
  [v7 setTotalDuration:v6];

  v8 = [(HMFOperation *)self error];
  v9 = [(HMIHomePersonClusteringTask *)self summary];
  [v9 setError:v8];

  v10 = [(HMIHomePersonClusteringTask *)self summary];
  [HMIAnalytics sendEventForClusteringTask:v10];

  v11.receiver = self;
  v11.super_class = HMIHomePersonClusteringTask;
  [(HMFOperation *)&v11 finish];
}

- (id)personCreatedDateFromFaceCrops:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HMIHomePersonClusteringTask_personCreatedDateFromFaceCrops___block_invoke;
  v6[3] = &unk_278755790;
  v6[4] = &v7;
  [v3 na_each:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __62__HMIHomePersonClusteringTask_personCreatedDateFromFaceCrops___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v11 = v3;
  if (!v4 || ([v3 dateCreated], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "compare:", v5), v5, v7 = v11, v6 == -1))
  {
    v8 = [v11 dateCreated];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = v11;
  }
}

- (void)removePerson:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 UUID];
  v7 = [v5 setWithObject:v6];

  objc_initWeak(&location, self);
  v8 = [(HMIHomePersonClusteringTask *)self dataSource];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__HMIHomePersonClusteringTask_removePerson___block_invoke;
  v11[3] = &unk_2787557B8;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v12 = v9;
  v10 = v4;
  v13 = v10;
  [v8 removePersonsWithUUIDs:v9 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __44__HMIHomePersonClusteringTask_removePerson___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
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
        v10 = *(a1 + 32);
        v12 = 138543874;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error removing person with UUID:%@, error:%@", &v12, 0x20u);
LABEL_7:
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Successfully removed person %@", &v12, 0x16u);

      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v5);
  }
}

@end