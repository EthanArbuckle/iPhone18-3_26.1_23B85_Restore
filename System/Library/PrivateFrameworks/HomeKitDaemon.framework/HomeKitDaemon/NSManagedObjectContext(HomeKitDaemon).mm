@interface NSManagedObjectContext(HomeKitDaemon)
- (id)hmd_fetchExistingObjectWithID:()HomeKitDaemon propertiesToFetch:;
- (id)hmd_fetchExistingObjectWithID:()HomeKitDaemon propertiesToFetch:error:;
- (id)hmd_homeUUID;
- (uint64_t)hmd_saveWithTransactionAuthor:()HomeKitDaemon clientIdentifier:allowQoSEscalation:error:;
- (uint64_t)hmd_transactionAuthor;
- (void)hmd_logPendingChangesWithReason:()HomeKitDaemon;
@end

@implementation NSManagedObjectContext(HomeKitDaemon)

- (uint64_t)hmd_transactionAuthor
{
  transactionAuthor = [self transactionAuthor];
  v2 = [HMDCoreDataContextTransactionAuthor contextAuthorWithString:transactionAuthor];

  type = [v2 type];
  return type;
}

- (void)hmd_logPendingChangesWithReason:()HomeKitDaemon
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_autoreleasePoolPush();
  v7 = objc_autoreleasePoolPush();
  v8 = v5;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    transactionAuthor = [self transactionAuthor];
    *buf = 138544130;
    v26 = v10;
    v27 = 2114;
    selfCopy = self;
    v29 = 2114;
    v30 = transactionAuthor;
    v31 = 2114;
    v32 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@%{public}@ (%{public}@) - %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  insertedObjects = [self insertedObjects];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke;
  v23[3] = &unk_27867D4B0;
  v13 = v8;
  v24 = v13;
  [insertedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v23];

  updatedObjects = [self updatedObjects];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke_30;
  v21[3] = &unk_27867D4B0;
  v15 = v13;
  v22 = v15;
  [updatedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

  deletedObjects = [self deletedObjects];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke_34;
  v19[3] = &unk_27867D4B0;
  v17 = v15;
  v20 = v17;
  [deletedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  objc_autoreleasePoolPop(v6);
  v18 = *MEMORY[0x277D85DE8];
}

- (id)hmd_fetchExistingObjectWithID:()HomeKitDaemon propertiesToFetch:
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [self hmd_fetchExistingObjectWithID:v6 propertiesToFetch:v7 error:&v16];
  v9 = v16;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)hmd_fetchExistingObjectWithID:()HomeKitDaemon propertiesToFetch:error:
{
  v8 = MEMORY[0x277CBE428];
  v9 = a4;
  v10 = a3;
  v11 = [v8 alloc];
  entity = [v10 entity];
  name = [entity name];
  v14 = [v11 initWithEntityName:name];

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self == %@", v10];

  [v14 setPredicate:v15];
  [v14 setPropertiesToFetch:v9];

  v16 = [self executeFetchRequest:v14 error:a5];
  v17 = v16;
  if (v16)
  {
    firstObject = [v16 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (uint64_t)hmd_saveWithTransactionAuthor:()HomeKitDaemon clientIdentifier:allowQoSEscalation:error:
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = v10;
  if (a5)
  {
    v12 = v10;
    if (v12)
    {
      v13 = v12;
      v14 = a6;
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple", *MEMORY[0x277CCFD80]];
      if ([v13 isEqualToString:v15])
      {
LABEL_8:

LABEL_9:
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v20;
          v53 = 2112;
          v54 = v13;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Bumping sync QoS because changes were performed on behalf of owner from client: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v21 = [HMDCoreDataContextTransactionAuthor contextAuthorWithType:a3 clientIdentifier:v13 qualityOfService:25];
        goto LABEL_21;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple", *MEMORY[0x277CD0C38]];
      if ([v13 isEqualToString:v16])
      {
LABEL_7:

        goto LABEL_8;
      }

      v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple", *MEMORY[0x277CD1210]];
      if ([v13 isEqualToString:?])
      {
LABEL_6:

        goto LABEL_7;
      }

      if (isInternalBuild())
      {
        v46 = *MEMORY[0x277CCFD70];
        if ([v13 isEqualToString:?])
        {
          goto LABEL_6;
        }

        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple", v46];
        if ([v13 isEqualToString:?] & 1) != 0 || (v45 = *MEMORY[0x277CD1220], (objc_msgSend(v13, "isEqualToString:")))
        {

          goto LABEL_6;
        }

        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple", v45];
        v44 = [v13 isEqualToString:v43];

        a6 = v14;
        if (v44)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }
    }
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = HMFGetLogIdentifier();
    v26 = HMFBooleanToString();
    *buf = 138543874;
    v52 = v25;
    v53 = 2112;
    v54 = v26;
    v55 = 2112;
    v56 = v11;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Not escalating QoS due to allowQoSEscalation=%@, clientIdentifier=%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  v21 = [HMDCoreDataContextTransactionAuthor contextAuthorWithType:a3 clientIdentifier:v11];
LABEL_21:
  v27 = v21;
  string = [v21 string];
  if (!a3 || (v29 = string) == 0)
  {
    _HMFPreconditionFailure();
  }

  transactionAuthor = [self transactionAuthor];
  [self setTransactionAuthor:v29];
  v50 = 0;
  v31 = [self save:&v50];
  v32 = v50;
  [self setTransactionAuthor:transactionAuthor];
  if ((v31 & 1) == 0)
  {
    if (a3 != 2)
    {
      v33 = [[HMDLogEventCoreDataSignificantEvent alloc] initWithReason:2 author:a3];
      v34 = [v32 description];
      [(HMDLogEventCoreDataSignificantEvent *)v33 setExtraContext:v34];

      v35 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v35 submitLogEvent:v33];
    }

    v36 = objc_autoreleasePoolPush();
    v37 = objc_opt_class();
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v49 = v11;
      v40 = v39 = a6;
      *buf = 138543618;
      v52 = v40;
      v53 = 2112;
      v54 = v32;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to save changes: %@", buf, 0x16u);

      a6 = v39;
      v11 = v49;
    }

    objc_autoreleasePoolPop(v36);
    if (a6)
    {
      *a6 = HMDSanitizeCoreDataError(v32);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)hmd_homeUUID
{
  name = [self name];
  v2 = HMDHomeUUIDFromWorkingContextName(name);

  return v2;
}

@end