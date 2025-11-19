@interface HMDHomeActivityStateManagerStorage
+ (id)logCategory;
- (HMDHomeActivityStateManagerStorage)initWithDataSource:(id)a3;
- (HMDHomeActivityStateManagerStorageDelegate)delegate;
- (id)contributorTypeArrayFromActivityStateEnabledContributors:(id)a3;
- (id)logIdentifier;
- (void)_registerForNotifications;
- (void)fetchCurrentStateDetailsWithCompletion:(id)a3;
- (void)fetchEnabledContributors:(id)a3;
- (void)handleManagedObjectContextDidSaveNotification:(id)a3;
@end

@implementation HMDHomeActivityStateManagerStorage

- (HMDHomeActivityStateManagerStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeActivityStateManagerStorage *)self dataSource];
  v3 = [v2 logIdentifier];

  return v3;
}

- (id)contributorTypeArrayFromActivityStateEnabledContributors:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 longLongValue];
  if ((v5 & 0x8000000000000000) != 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2048;
      v20 = v5;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@encodedEnabledContributors is an unexpected value: %llu", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v5)
    {
      v7 = 0;
      do
      {
        if (v5)
        {
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
          [v6 addObject:v8];
        }

        if (v5 < 2)
        {
          break;
        }

        v5 >>= 1;
      }

      while (v7++ < 4);
    }

    v10 = [v6 copy];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)handleManagedObjectContextDidSaveNotification:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 name];
    v9 = [(HMDHomeActivityStateManagerStorage *)self homeUUID];
    v10 = HMDWorkingContextNameForHomeUUID(v9);
    v11 = [v8 isEqualToString:v10];

    if (v11)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v12 = [v4 userInfo];
      v13 = [v12 hmf_setForKey:*MEMORY[0x277CBE310]];

      obj = v13;
      v14 = [v13 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v14)
      {
        v15 = v14;
        v49 = v4;
        v50 = v7;
        v52 = *v54;
        v16 = v13;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v54 != v52)
            {
              objc_enumerationMutation(v16);
            }

            v18 = *(*(&v53 + 1) + 8 * i);
            if ([v18 conformsToProtocol:&unk_283EE6CB8])
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;

            if (v20)
            {
              v21 = [(HMDHomeActivityStateManagerStorage *)self homeUUID];
              v22 = [v20 modelID];
              v23 = HMFEqualObjects();

              v24 = objc_autoreleasePoolPush();
              v25 = self;
              v26 = HMFGetOSLogHandle();
              v27 = v26;
              if (v23)
              {
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  v32 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v58 = v32;
                  v59 = 2112;
                  v60 = v20;
                  _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Received notification for MOC save of updated home: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v24);
                v33 = [(HMDHomeActivityStateManagerStorage *)v25 delegate];
                if (objc_opt_respondsToSelector())
                {
                  v34 = [v20 activityState];
                  v35 = [v34 unsignedIntegerValue];

                  v36 = [v20 isActivityStateHoldActive];
                  v37 = [v36 BOOLValue];

                  v38 = [v20 activityStateHoldEndDate];
                  v39 = [v20 activityStateTransitionalStateEndDate];
                  [v33 storageDidUpdateActivityState:v35 isActivityStateHoldActive:v37 activityStateHoldEndDate:v38 transitionalStateEndDate:v39];
                }

                v7 = v50;
                if (objc_opt_respondsToSelector())
                {
                  v40 = [v20 activityStateEnabledContributors];

                  if (v40)
                  {
                    v41 = objc_autoreleasePoolPush();
                    v42 = v25;
                    v43 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                    {
                      v44 = HMFGetLogIdentifier();
                      v45 = [v20 activityStateEnabledContributors];
                      *buf = 138543618;
                      v58 = v44;
                      v59 = 2112;
                      v60 = v45;
                      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEBUG, "%{public}@Calling delegate with activityStateEnabledContributors: %@", buf, 0x16u);
                    }

                    objc_autoreleasePoolPop(v41);
                    v46 = [v20 activityStateEnabledContributors];
                    v47 = [(HMDHomeActivityStateManagerStorage *)v42 contributorTypeArrayFromActivityStateEnabledContributors:v46];
                    [v33 storageDidUpdateEnabledContributors:v47];

                    v7 = v50;
                  }
                }

                v4 = v49;
                goto LABEL_33;
              }

              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v28 = HMFGetLogIdentifier();
                v29 = [v20 modelID];
                [(HMDHomeActivityStateManagerStorage *)v25 homeUUID];
                v31 = v30 = self;
                *buf = 138543874;
                v58 = v28;
                v59 = 2112;
                v60 = v29;
                v61 = 2112;
                v62 = v31;
                _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly handling notification for MOC save of updated home with some other UUID: %@, expected: %@", buf, 0x20u);

                self = v30;
                v16 = obj;
              }

              objc_autoreleasePoolPop(v24);
            }
          }

          v15 = [v16 countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        v18 = v16;
        v4 = v49;
        v7 = v50;
      }

      else
      {
        v18 = v13;
      }

LABEL_33:
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityStateManagerStorage *)self notificationCenter];
  v4 = v3;
  if (v3)
  {
    [v3 addObserver:self selector:sel_handleManagedObjectContextDidSaveNotification_ name:*MEMORY[0x277CBE1A8] object:0];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly asked to register for notifications before configuring with notification center", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchEnabledContributors:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityStateManagerStorage *)self dataSource];
  v6 = [v5 workingStoreContext];

  if (v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__HMDHomeActivityStateManagerStorage_fetchEnabledContributors___block_invoke;
    v12[3] = &unk_27868A7A0;
    v12[4] = self;
    v13 = v4;
    [v6 performBlock:v12];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@dataSource.workingStoreContext was unexpectedly nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __63__HMDHomeActivityStateManagerStorage_fetchEnabledContributors___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeUUID];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (!v3)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 32) homeUUID];
      v24 = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch activityStateEnabledContributors because we could not find backing store model for home with UUID: %@", &v24, 0x16u);

      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v18);
    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  v4 = [v3 activityStateEnabledContributors];
  if (!v4 || (v5 = v4, [v3 activityStateEnabledContributors], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unsignedIntValue"), v6, v5, !v7))
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@activityStateEnabledContributors is unset or empty", &v24, 0xCu);
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v3 activityStateEnabledContributors];
    v24 = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetched activityStateEnabledContributors: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v15 = a1 + 32;
  v13 = *(a1 + 32);
  v14 = *(v15 + 8);
  v16 = [v3 activityStateEnabledContributors];
  v17 = [v13 contributorTypeArrayFromActivityStateEnabledContributors:v16];
  (*(v14 + 16))(v14, v17);

LABEL_13:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)fetchCurrentStateDetailsWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityStateManagerStorage *)self dataSource];
  v6 = [v5 workingStoreContext];

  if (v6)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__HMDHomeActivityStateManagerStorage_fetchCurrentStateDetailsWithCompletion___block_invoke;
    v14[3] = &unk_27868A7A0;
    v14[4] = self;
    v15 = v4;
    [v6 performBlock:v14];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@dataSource.workingStoreContext was unexpectedly nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = _Block_copy(v4);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __77__HMDHomeActivityStateManagerStorage_fetchCurrentStateDetailsWithCompletion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v34 = 138543362;
    v35 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching details of activity activity state", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) homeUUID];
  v7 = [HMCContext findHomeWithModelID:v6];

  if (v7)
  {
    v8 = [v7 activityState];
    if (HMIsValidHMHomeActivityStateType())
    {
      v9 = [HMDHomeActivityStateDetails alloc];
      v10 = [(HMDHomeActivityStateDetails *)v8 unsignedIntegerValue];
      v11 = [v7 isActivityStateHoldActive];
      v12 = [v11 BOOLValue];
      v13 = [v7 activityStateHoldEndDate];
      v14 = [v7 activityStateTransitionalStateEndDate];
      v15 = [(HMDHomeActivityStateDetails *)v9 initWithHomeActivityState:v10 holdInPlace:v12 holdExpiryTime:v13 transitionalStateEndDate:v14];

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v19;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Found result in working store: %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = _Block_copy(*(a1 + 40));
      v21 = v20;
      if (v20)
      {
        (*(v20 + 2))(v20, v15);
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = *(a1 + 32);
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v31;
        v36 = 2112;
        v37 = v8;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Invalid activity state value of %@ found in working store", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v32 = _Block_copy(*(a1 + 40));
      v15 = v32;
      if (v32)
      {
        (v32->_state)(v32, 0);
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [*(a1 + 32) homeUUID];
      v34 = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch details of activity state because we could not find backing store model for home with UUID: %@", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = _Block_copy(*(a1 + 40));
    v8 = v27;
    if (v27)
    {
      (v27->_state)(v27, 0);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateManagerStorage)initWithDataSource:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HMDHomeActivityStateManagerStorage;
  v6 = [(HMDHomeActivityStateManagerStorage *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = [v5 notificationCenter];
    notificationCenter = v7->_notificationCenter;
    v7->_notificationCenter = v8;

    v10 = [v5 home];
    v11 = [v10 uuid];
    homeUUID = v7->_homeUUID;
    v7->_homeUUID = v11;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_170356 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_170356, &__block_literal_global_170357);
  }

  v3 = logCategory__hmf_once_v21_170358;

  return v3;
}

void __49__HMDHomeActivityStateManagerStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_170358;
  logCategory__hmf_once_v21_170358 = v1;
}

@end