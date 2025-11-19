@interface HMDObjectLookup
+ (id)logCategory;
- (HMDObjectLookup)initWithWorkQueue:(id)a3;
- (id)_lookUpObjectWithUUID:(id)a3 applyObjectChange:(id)a4 previous:(id)a5 result:(id)a6 completionHandler:(id)a7;
- (void)applyChange:(id)a3 previous:(id)a4 onObject:(id)a5 result:(id)a6 completionHandler:(id)a7;
- (void)lookUpAndApplyObjectChange:(id)a3 previous:(id)a4 result:(id)a5 completionHandler:(id)a6;
- (void)resetObjects;
@end

@implementation HMDObjectLookup

- (void)applyChange:(id)a3 previous:(id)a4 onObject:(id)a5 result:(id)a6 completionHandler:(id)a7
{
  v59 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v46 = a4;
  v13 = a5;
  v14 = a6;
  aBlock = a7;
  v15 = v13;
  if ([v15 conformsToProtocol:&unk_283E8A838])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v47 = v14;
  if (v17)
  {
    v18 = [v14 label];
    v19 = HMFEqualObjects();

    if ((v19 & 1) == 0)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v12 change];
        v25 = [v24 uuid];
        *buf = 138543618;
        v56 = v23;
        v57 = 2112;
        v58 = v25;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Applying object change with UUID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    objc_initWeak(buf, self);
    v26 = [v12 message];
    v27 = v26;
    if (v26)
    {
      if (!aBlock)
      {
LABEL_22:
        v42 = [v12 change];
        v43 = [v42 objectChangeType] == 3;

        v44 = [v12 change];
        if (v43)
        {
          [v17 transactionObjectRemoved:v44 message:v27];
        }

        else
        {
          [v17 transactionObjectUpdated:v46 newValues:v44 message:v27];
        }

        objc_destroyWeak(buf);
        goto LABEL_26;
      }

      v28 = [v26 mutableCopy];
      v29 = [v27 responseHandler];
      [v28 setTransactionResult:v47];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke_2;
      v49[3] = &unk_278678C68;
      v30 = v29;
      v50 = v30;
      v51 = aBlock;
      [v28 setResponseHandler:v49];
      v31 = [v28 copy];

      v27 = v31;
    }

    else
    {
      v40 = MEMORY[0x277D0F848];
      v41 = [MEMORY[0x277D0F820] allMessageDestinations];
      v28 = [v40 messageWithName:@"kTransactionUpdate" destination:v41 payload:0];

      [v28 setTransactionResult:v47];
      [v28 setRemote:1];
      if (aBlock)
      {
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke;
        v52[3] = &unk_278689728;
        objc_copyWeak(&v54, buf);
        v53 = aBlock;
        [v28 setResponseHandler:v52];

        objc_destroyWeak(&v54);
      }

      else
      {
        [v28 setResponseHandler:&__block_literal_global_55];
      }

      v27 = [v28 copy];
    }

    goto LABEL_22;
  }

  v32 = objc_autoreleasePoolPush();
  v33 = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = HMFGetLogIdentifier();
    v36 = [v12 change];
    v37 = [v36 uuid];
    *buf = 138543618;
    v56 = v35;
    v57 = 2112;
    v58 = v37;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Object does not implement backing store protocol, cannot apply transaction for object-change: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);
  v38 = _Block_copy(aBlock);
  if (v38)
  {
    v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v38[2](v38, v39);
  }

LABEL_26:
  v45 = *MEMORY[0x277D85DE8];
}

void __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Calling completion handler for transaction applied", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

void __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetObjects
{
  v2 = [(HMDObjectLookup *)self uuidToObjectMapping];
  [v2 removeAllObjects];
}

- (id)_lookUpObjectWithUUID:(id)a3 applyObjectChange:(id)a4 previous:(id)a5 result:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDObjectLookup *)self uuidToObjectMapping];
  v18 = [v17 objectForKey:v12];

  if (v18)
  {
    [(HMDObjectLookup *)self applyChange:v13 previous:v14 onObject:v18 result:v15 completionHandler:v16];
    v19 = 0;
  }

  else
  {
    [(HMDObjectLookup *)self scanObjects];
    v20 = [(HMDObjectLookup *)self uuidToObjectMapping];
    v21 = [v20 objectForKey:v12];

    if (v21)
    {
      [(HMDObjectLookup *)self applyChange:v13 previous:v14 onObject:v21 result:v15 completionHandler:v16];
      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }
  }

  return v19;
}

- (void)lookUpAndApplyObjectChange:(id)a3 previous:(id)a4 result:(id)a5 completionHandler:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 change];
  v15 = [v14 objectChangeType];

  v16 = [v10 change];
  v17 = v16;
  if (v15 == 3)
  {
    v18 = [v16 parentUUID];
    v19 = [(HMDObjectLookup *)self _lookUpObjectWithUUID:v18 applyObjectChange:v10 previous:v11 result:v12 completionHandler:v13];

    v20 = [(HMDObjectLookup *)self uuidToObjectMapping];
    v21 = [v10 change];
    v22 = [v21 uuid];
    [v20 removeObjectForKey:v22];
  }

  else
  {
    v23 = [v16 uuid];
    v22 = [(HMDObjectLookup *)self _lookUpObjectWithUUID:v23 applyObjectChange:v10 previous:v11 result:v12 completionHandler:v13];

    if (!v22)
    {
      goto LABEL_11;
    }

    v20 = [v10 change];
    v21 = [v20 parentUUID];
    v19 = [(HMDObjectLookup *)self _lookUpObjectWithUUID:v21 applyObjectChange:v10 previous:v11 result:v12 completionHandler:v13];
  }

  if (v19)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v10 change];
      [v28 uuid];
      v29 = v33 = v24;
      *buf = 138543874;
      v35 = v27;
      v36 = 2112;
      v37 = v29;
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Could not look up and apply object change for %@: %@", buf, 0x20u);

      v24 = v33;
    }

    objc_autoreleasePoolPop(v24);
    v30 = _Block_copy(v13);
    v31 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, v19);
    }
  }

LABEL_11:

  v32 = *MEMORY[0x277D85DE8];
}

- (HMDObjectLookup)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HMDObjectLookup;
  v6 = [(HMDObjectLookup *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    uuidToObjectMapping = v6->_uuidToObjectMapping;
    v6->_uuidToObjectMapping = v7;

    objc_storeStrong(&v6->_workQueue, a3);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_120080 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_120080, &__block_literal_global_120081);
  }

  v3 = logCategory__hmf_once_v1_120082;

  return v3;
}

void __30__HMDObjectLookup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_120082;
  logCategory__hmf_once_v1_120082 = v1;
}

@end