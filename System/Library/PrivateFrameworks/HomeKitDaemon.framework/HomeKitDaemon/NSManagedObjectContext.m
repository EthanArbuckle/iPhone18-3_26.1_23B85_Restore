@interface NSManagedObjectContext
@end

@implementation NSManagedObjectContext

void __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@- INS %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke_30(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isInserted] & 1) == 0 && (objc_msgSend(v3, "isDeleted") & 1) == 0)
  {
    v4 = [v3 changedValues];
    v5 = [v4 allKeys];
    v6 = [v5 sortedArrayUsingSelector:sel_compare_];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v6 componentsJoinedByString:{@", "}];
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@- UPD %@: %{public}@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke_34(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 entity];
  v6 = [v5 relationshipsByName];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke_2;
  v17[3] = &unk_27867D4D8;
  v7 = v4;
  v18 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v17];

  v8 = [v7 count];
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v7 sortedArrayUsingSelector:sel_compare_];
      v15 = [v14 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v20 = v13;
      v21 = 2112;
      v22 = v3;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@- DEL %@ (cascades along %{public}@))", buf, 0x20u);

LABEL_6:
    }
  }

  else if (v12)
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v13;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@- DEL %@", buf, 0x16u);
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v9);
  v16 = *MEMORY[0x277D85DE8];
}

void __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 deleteRule] == 2)
  {
    [*(a1 + 32) addObject:v5];
  }
}

@end