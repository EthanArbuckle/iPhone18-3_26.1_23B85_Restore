@interface HMDHomeActivityStateAggregatorStorage
+ (id)logCategory;
+ (unint64_t)activityType;
- (HMDHome)home;
- (HMDHomeActivityStateAggregatorStorage)initWithDataSource:(id)a3;
- (id)fetchUserActivityReportsOnManagedObjectContext;
- (id)logIdentifier;
- (id)userActivityReportWithActivityStatus:(id)a3 user:(id)a4;
- (void)fetchUserActivityReportsWithQueue:(id)a3 completionHandler:(id)a4;
- (void)removeUserActivityStatusForUserUUID:(id)a3;
- (void)storeUserActivityReport:(id)a3;
- (void)updateMKFUserActivityStatus:(id)a3 withReport:(id)a4;
@end

@implementation HMDHomeActivityStateAggregatorStorage

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeActivityStateAggregatorStorage *)self home];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"Deallocated Home";
  }

  v7 = v6;

  return v6;
}

- (id)userActivityReportWithActivityStatus:(id)a3 user:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)updateMKFUserActivityStatus:(id)a3 withReport:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)fetchUserActivityReportsOnManagedObjectContext
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityStateAggregatorStorage *)self context];
  [v3 assertIsExecuting];

  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(HMDHomeActivityStateAggregatorStorage *)self context];
  v6 = [v5 managedObjectContext];
  v7 = +[_MKFUserActivityStatus fetchRequest];
  v54 = 0;
  v8 = [v6 executeFetchRequest:v7 error:&v54];
  v9 = v54;

  if (v8)
  {
    v44 = v9;
    v45 = v8;
    v10 = [v8 na_map:&__block_literal_global_207695];
    v48 = [MEMORY[0x277CBEB38] dictionary];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v12)
    {
      v13 = v12;
      v49 = *v51;
      v47 = v11;
      v46 = v4;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v51 != v49)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v50 + 1) + 8 * i);
          v16 = v15;
          if (self && ([v15 type], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "unsignedIntValue"), v19 = objc_msgSend(objc_opt_class(), "activityType"), v17, v19 == v18))
          {
            v20 = [(HMDHomeActivityStateAggregatorStorage *)self home];
            v21 = [v20 userForActivityStatus:v16];

            if (v21)
            {
              v22 = [(HMDHomeActivityStateAggregatorStorage *)self userActivityReportWithActivityStatus:v16 user:v21];
              v23 = v22;
              if (v22)
              {
                v24 = v22;
              }

              else
              {
                v29 = objc_autoreleasePoolPush();
                v30 = self;
                v31 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v32 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v57 = v32;
                  v58 = 2112;
                  v59 = v16;
                  _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not create report from object: %@", buf, 0x16u);

                  v4 = v46;
                }

                objc_autoreleasePoolPop(v29);
                v11 = v47;
              }
            }

            else
            {
              v25 = objc_autoreleasePoolPush();
              v26 = self;
              v27 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = HMFGetLogIdentifier();
                *buf = 138543618;
                v57 = v28;
                v58 = 2112;
                v59 = v16;
                _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@HMDUser not found for: %@", buf, 0x16u);

                v11 = v47;
              }

              objc_autoreleasePoolPop(v25);
              v23 = 0;
            }

            if (v23)
            {
              v33 = [v23 user];
              v34 = [v33 uuid];
              v35 = [v16 modelID];
              [(NSMutableDictionary *)v48 setObject:v34 forKeyedSubscript:v35];

              [v4 addObject:v23];
            }
          }

          else
          {

            v23 = 0;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v13);
    }

    os_unfair_lock_lock_with_options();
    userIDByActivityStatusModelID = self->_userIDByActivityStatusModelID;
    self->_userIDByActivityStatusModelID = v48;

    os_unfair_lock_unlock(&self->_lock);
    v37 = v4;

    v9 = v44;
    v8 = v45;
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v41;
      v58 = 2112;
      v59 = v9;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch activity status with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v37 = [MEMORY[0x277CBEB98] set];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v37;
}

void *__87__HMDHomeActivityStateAggregatorStorage_fetchUserActivityReportsOnManagedObjectContext__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_283F33218])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)fetchUserActivityReportsWithQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeActivityStateAggregatorStorage *)self context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__HMDHomeActivityStateAggregatorStorage_fetchUserActivityReportsWithQueue_completionHandler___block_invoke;
  v11[3] = &unk_278689F98;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

void __93__HMDHomeActivityStateAggregatorStorage_fetchUserActivityReportsWithQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchUserActivityReportsOnManagedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__HMDHomeActivityStateAggregatorStorage_fetchUserActivityReportsWithQueue_completionHandler___block_invoke_2;
  v6[3] = &unk_27868A7A0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (void)removeUserActivityStatusForUserUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeActivityStateAggregatorStorage *)self context];

  if (v5)
  {
    v6 = [(HMDHomeActivityStateAggregatorStorage *)self context];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__HMDHomeActivityStateAggregatorStorage_removeUserActivityStatusForUserUUID___block_invoke;
    v9[3] = &unk_27868A750;
    v10 = v4;
    v11 = self;
    v7 = v4;
    [v6 performBlock:v9];
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    __77__HMDHomeActivityStateAggregatorStorage_removeUserActivityStatusForUserUUID___block_invoke(v8);
  }
}

void __77__HMDHomeActivityStateAggregatorStorage_removeUserActivityStatusForUserUUID___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v4 = [v3 managedObjectContext];
  v5 = [_MKFHome findHomeMemberWithUUID:v2 context:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v5 findUserActivityStatusForType:{objc_msgSend(objc_opt_class(), "activityType")}];
    if (v7)
    {
      v8 = [*(a1 + 40) context];
      [v8 deleteObject:v7];

      v9 = [*(a1 + 40) context];
      v27 = 0;
      v10 = [v9 save:&v27];
      v11 = v27;

      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      v15 = v14;
      if (v10)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v17 = *(a1 + 32);
          if (v17)
          {
            [v17 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v28 = *buf;
          *buf = 138543874;
          *&buf[4] = v16;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v28;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Removed activity status for user: %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v12);
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v24 = *(a1 + 32);
          if (v24)
          {
            [v24 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v29 = *buf;
          *buf = 138544130;
          *&buf[4] = v23;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v29;
          v31 = 2112;
          v32 = v11;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove activity status for user: %{public,uuid_t}.16P, with error: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v12);
        v25 = [*(a1 + 40) context];
        [v25 rollback];
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Not removing activity because we could not find the home member with UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)storeUserActivityReport:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityStateAggregatorStorage *)self context];

  if (!v5)
  {
    _HMFPreconditionFailure();
  }

  v6 = [v4 user];
  if (v6)
  {
    v7 = [(HMDHomeActivityStateAggregatorStorage *)self context];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__HMDHomeActivityStateAggregatorStorage_storeUserActivityReport___block_invoke;
    v13[3] = &unk_27868A010;
    v14 = v6;
    v15 = self;
    v16 = v4;
    [v7 performBlock:v13];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@User is unexpectedly nil in the user activity report: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __65__HMDHomeActivityStateAggregatorStorage_storeUserActivityReport___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [*(a1 + 40) context];
  v4 = [v3 managedObjectContext];
  v5 = [_MKFHome findHomeMemberWithUUID:v2 context:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v5 findUserActivityStatusForType:{objc_msgSend(objc_opt_class(), "activityType")}];
    if (!v7)
    {
      v8 = [MEMORY[0x277CCAD78] UUID];
      v7 = [v5 materializeOrCreateUserActivityStatusesRelationWithModelID:v8 createdNew:0];

      v9 = *(a1 + 40);
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "activityType")}];
      [v7 setType:v10];
    }

    [*(a1 + 40) updateMKFUserActivityStatus:v7 withReport:*(a1 + 48)];
    v11 = [*(a1 + 40) context];
    v12 = [v11 managedObjectContext];
    v13 = [v12 hasChanges];

    if (v13)
    {
      v14 = [*(a1 + 40) context];
      v39 = 0;
      v15 = [v14 save:&v39];
      v16 = v39;

      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      v20 = v19;
      if (v15)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = *(a1 + 48);
          *buf = 138543618;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v22;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Stored report: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          v34 = *(a1 + 48);
          *buf = 0;
          *&buf[8] = 0;
          v35 = [*(a1 + 32) uuid];

          if (v35)
          {
            v36 = [*(a1 + 32) uuid];
            [v36 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v40 = *buf;
          *buf = 138544386;
          *&buf[4] = v33;
          *&buf[12] = 2112;
          *&buf[14] = v34;
          v42 = 1040;
          v43 = 16;
          v44 = 2096;
          v45 = &v40;
          v46 = 2112;
          v47 = v16;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to store report: %@, for user: %{uuid_t}.16P, with error: %@", buf, 0x30u);
        }

        objc_autoreleasePoolPop(v17);
        v37 = [*(a1 + 40) context];
        [v37 rollback];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = *(a1 + 40);
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = *(a1 + 48);
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = v32;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@No changes were made to the user model for report: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 40);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [*(a1 + 32) uuid];
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v27;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Not storing activity because we could not find the home member with UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateAggregatorStorage)initWithDataSource:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v15.receiver = self;
    v15.super_class = HMDHomeActivityStateAggregatorStorage;
    v6 = [(HMDHomeActivityStateAggregatorStorage *)&v15 init];
    if (v6)
    {
      v7 = [v5 workingStoreContext];
      context = v6->_context;
      v6->_context = v7;

      v9 = [v5 home];
      objc_storeWeak(&v6->_home, v9);

      v6->_lock._os_unfair_lock_opaque = 0;
      v10 = [MEMORY[0x277CBEB38] dictionary];
      userIDByActivityStatusModelID = v6->_userIDByActivityStatusModelID;
      v6->_userIDByActivityStatusModelID = v10;
    }

    return v6;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMDHomeActivityStateAggregatorStorage *)v13];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_207729 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_207729, &__block_literal_global_299);
  }

  v3 = logCategory__hmf_once_v14_207730;

  return v3;
}

void __52__HMDHomeActivityStateAggregatorStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_207730;
  logCategory__hmf_once_v14_207730 = v1;
}

+ (unint64_t)activityType
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end