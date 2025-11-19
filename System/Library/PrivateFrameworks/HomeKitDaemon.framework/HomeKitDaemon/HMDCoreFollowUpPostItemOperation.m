@interface HMDCoreFollowUpPostItemOperation
- (HMDCoreFollowUpPostItemOperation)initWithItemToPost:(id)a3 followUpController:(id)a4;
- (void)_postFollowUpItem;
- (void)main;
@end

@implementation HMDCoreFollowUpPostItemOperation

- (void)main
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDCoreFollowUpPostItemOperation *)v4 itemToPost];
    *buf = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Posting advertisement for new followup item: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  objc_initWeak(buf, v4);
  v8 = [(HMDCoreFollowUpPostItemOperation *)v4 followUpController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__HMDCoreFollowUpPostItemOperation_main__block_invoke;
  v10[3] = &unk_278676BF0;
  objc_copyWeak(&v11, buf);
  [v8 pendingFollowUpItemsWithCompletion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v9 = *MEMORY[0x277D85DE8];
}

void __40__HMDCoreFollowUpPostItemOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v55 = v6;
  val = WeakRetained;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v55 shortDescription];
      *buf = 138543618;
      v73 = v11;
      v74 = 2112;
      v75 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch pending followup items with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    WeakRetained = val;
  }

  v13 = [WeakRetained itemToPost];
  v57 = v5;
  v63 = v13;
  if (!val)
  {
    goto LABEL_41;
  }

  objc_initWeak(&location, val);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v57;
  v14 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
  if (!v14)
  {

LABEL_38:
    [(HMDCoreFollowUpPostItemOperation *)val _postFollowUpItem];
    goto LABEL_40;
  }

  v61 = *v65;
  v58 = 1;
  while (2)
  {
    v62 = v14;
    for (i = 0; i != v62; ++i)
    {
      if (*v65 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v64 + 1) + 8 * i);
      v17 = [v63 uniqueIdentifier];
      v18 = [v17 isEqualToString:@"com.apple.homed.hh2-upgrade"];

      if (!v18)
      {
        v28 = [v16 uniqueIdentifier];
        v29 = [v63 uniqueIdentifier];
        v30 = [v28 isEqualToString:v29];

        if (v30)
        {
          v19 = [v16 uniqueIdentifier];
          v20 = [v63 uniqueIdentifier];
          if (![v19 isEqualToString:v20])
          {
            goto LABEL_28;
          }

          v21 = [v16 targetBundleIdentifier];
          v22 = [v63 targetBundleIdentifier];
          if (![v21 isEqualToString:v22])
          {
            goto LABEL_27;
          }

          v31 = [v16 title];
          v32 = [v63 title];
          v33 = [v31 isEqualToString:v32];

          if (v33)
          {
            continue;
          }

          v49 = objc_autoreleasePoolPush();
          v50 = val;
          v51 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v53 = HMFGetLogIdentifier();
            v54 = [v16 uniqueIdentifier];
            *v69 = 138543618;
            *&v69[4] = v53;
            *&v69[12] = 2112;
            *&v69[14] = v54;
            _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@Detected followup item with same identifier (%@), but different title, removing and reposting.", v69, 0x16u);
          }

          objc_autoreleasePoolPop(v49);
          v46 = [v50 followUpController];
          v47 = +[HMDCoreFollowUpManager allPossibleFollowUpItemIdentifiers];
          *v69 = MEMORY[0x277D85DD0];
          *&v69[8] = 3221225472;
          *&v69[16] = __93__HMDCoreFollowUpPostItemOperation__postFollowUpItemIfDifferentFromExistingItems_itemToPost___block_invoke_6;
          v70 = &unk_278681398;
          objc_copyWeak(v71, &location);
          [v46 clearPendingFollowUpItemsWithUniqueIdentifiers:v47 completion:v69];
        }

        else
        {
          v34 = [v63 uniqueIdentifier];
          v35 = [v34 isEqualToString:@"com.apple.HomeKit.UpdateTvOS"];

          v36 = objc_autoreleasePoolPush();
          v37 = val;
          if (!v35)
          {
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              v40 = [v63 uniqueIdentifier];
              v41 = [v16 uniqueIdentifier];
              *v69 = 138543874;
              *&v69[4] = v39;
              *&v69[12] = 2112;
              *&v69[14] = v40;
              *&v69[22] = 2112;
              v70 = v41;
              _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Not posting followup with identifier: %@ as currently posted followup is preferred: %@", v69, 0x20u);
            }

            objc_autoreleasePoolPop(v36);
            v58 = 0;
            continue;
          }

          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = HMFGetLogIdentifier();
            v44 = [v16 uniqueIdentifier];
            v45 = [v63 uniqueIdentifier];
            *v69 = 138543874;
            *&v69[4] = v43;
            *&v69[12] = 2112;
            *&v69[14] = v44;
            *&v69[22] = 2112;
            v70 = v45;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Removing existing followup with identifier: %@ in favor of: %@", v69, 0x20u);
          }

          objc_autoreleasePoolPop(v36);
          v46 = [v37 followUpController];
          v47 = +[HMDCoreFollowUpManager allPossibleFollowUpItemIdentifiers];
          *v69 = MEMORY[0x277D85DD0];
          *&v69[8] = 3221225472;
          *&v69[16] = __93__HMDCoreFollowUpPostItemOperation__postFollowUpItemIfDifferentFromExistingItems_itemToPost___block_invoke;
          v70 = &unk_278681398;
          objc_copyWeak(v71, &location);
          [v46 clearPendingFollowUpItemsWithUniqueIdentifiers:v47 completion:v69];
        }

        objc_destroyWeak(v71);
        goto LABEL_40;
      }

      v19 = [v63 uniqueIdentifier];
      v20 = [v16 uniqueIdentifier];
      if (![v19 isEqualToString:v20])
      {
        goto LABEL_28;
      }

      v21 = [v63 title];
      v22 = [v16 title];
      if (![v21 isEqualToString:v22])
      {
        goto LABEL_27;
      }

      v23 = [v63 groupIdentifier];
      v24 = [v16 groupIdentifier];
      if (![v23 isEqualToString:v24])
      {

LABEL_27:
LABEL_28:

        continue;
      }

      v25 = [v63 informativeText];
      v26 = [v16 informativeText];
      v27 = [v25 isEqualToString:v26];

      if (v27)
      {

        goto LABEL_39;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  if (v58)
  {
    goto LABEL_38;
  }

LABEL_39:
  [val finish];
LABEL_40:
  objc_destroyWeak(&location);
LABEL_41:

  v48 = *MEMORY[0x277D85DE8];
}

void __93__HMDCoreFollowUpPostItemOperation__postFollowUpItemIfDifferentFromExistingItems_itemToPost___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HMDCoreFollowUpPostItemOperation *)WeakRetained _postFollowUpItem];
}

void __93__HMDCoreFollowUpPostItemOperation__postFollowUpItemIfDifferentFromExistingItems_itemToPost___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HMDCoreFollowUpPostItemOperation *)WeakRetained _postFollowUpItem];
}

- (void)_postFollowUpItem
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = a1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [v3 itemToPost];
      *buf = 138543618;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Posting followup item: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    objc_initWeak(buf, v3);
    v7 = [v3 followUpController];
    v8 = [v3 itemToPost];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__HMDCoreFollowUpPostItemOperation__postFollowUpItem__block_invoke;
    v10[3] = &unk_278681398;
    objc_copyWeak(&v11, buf);
    [v7 postFollowUpItem:v8 completion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __53__HMDCoreFollowUpPostItemOperation__postFollowUpItem__block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v8 itemToPost];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully started advertising followup item: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v8 finish];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v8 itemToPost];
      v15 = [v5 shortDescription];
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to advertise followup item: %@ with error: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [v8 cancelWithError:v5];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDCoreFollowUpPostItemOperation)initWithItemToPost:(id)a3 followUpController:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v7)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    [(HMDSelfRemovalWatchdog *)v13 .cxx_destruct];
    return result;
  }

  v9 = v8;
  v15.receiver = self;
  v15.super_class = HMDCoreFollowUpPostItemOperation;
  v10 = [(HMFOperation *)&v15 initWithTimeout:0.0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_itemToPost, a3);
    objc_storeStrong(&v11->_followUpController, a4);
  }

  return v11;
}

@end