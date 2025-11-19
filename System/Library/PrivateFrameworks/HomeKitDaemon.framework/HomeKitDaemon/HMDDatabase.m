@interface HMDDatabase
+ (HMDDatabase)cameraClipsDatabase;
+ (HMDDatabase)defaultDatabase;
+ (HMDDatabase)hindsightDatabase;
+ (NSURL)defaultLocalDatabaseFileURL;
+ (id)logCategory;
+ (void)handleDatabaseInitializationError:(id)a3;
+ (void)registerQueries;
- (HMDDatabase)initWithFileURL:(id)a3 cloudConfiguration:(id)a4;
- (HMDDatabase)initWithLocalDatabase:(id)a3 cloudDatabase:(id)a4 logEventSubmitter:(id)a5;
- (NSHashTable)delegates;
- (NSMapTable)zoneDelegatesByLocalZone;
- (id)acceptInvitation:(id)a3;
- (id)cloudDatabase:(id)a3 willRemoveZoneWithID:(id)a4;
- (id)existingPrivateZonesWithName:(id)a3 configuration:(id)a4 delegate:(id)a5 error:(id *)a6;
- (id)existingSharedZoneIDWithName:(id)a3;
- (id)logIdentifier;
- (id)privateZonesWithName:(id)a3 configuration:(id)a4 delegate:(id)a5 error:(id *)a6;
- (id)registerSharedSubscriptionForExternalRecordType:(id)a3;
- (id)removeLocalAndCloudDataForLocalZone:(id)a3;
- (id)removePrivateZonesWithName:(id)a3;
- (id)removeSharedZonesWithName:(id)a3;
- (id)removeZonesWithID:(id)a3 isPrivate:(BOOL)a4;
- (id)sharedZonesWithID:(id)a3 configuration:(id)a4 delegate:(id)a5 error:(id *)a6;
- (id)synchronizeSharedZones;
- (id)unregisterSharedSubscriptionForExternalRecordType:(id)a3;
- (id)zonesWithID:(id)a3 isPrivate:(BOOL)a4 shouldCreate:(BOOL)a5 configuration:(id)a6 delegate:(id)a7 error:(id *)a8;
- (void)addDelegate:(id)a3;
- (void)addZoneDelegate:(id)a3 forLocalZone:(id)a4;
- (void)cloudDatabase:(id)a3 didCreateZoneWithID:(id)a4;
- (void)cloudDatabase:(id)a3 didReceiveMessageWithUserInfo:(id)a4;
- (void)cloudDatabase:(id)a3 didRemoveZoneWithID:(id)a4;
- (void)cloudDatabase:(id)a3 encounteredError:(id)a4 withOperation:(id)a5 onContainer:(id)a6;
- (void)cloudDatabase:(id)a3 encounteredError:(id)a4 withOperation:(id)a5 onZone:(id)a6;
- (void)cloudZone:(id)a3 didEncounterZoneDisabledError:(id)a4;
- (void)cloudZone:(id)a3 didRemoveParticipantWithClientIdentifier:(id)a4;
- (void)cloudZone:(id)a3 didUpdateParticipantWithClientIdentifier:(id)a4;
- (void)dealloc;
- (void)localDatabase:(id)a3 willRemoveZoneWithID:(id)a4;
- (void)localZone:(id)a3 didCompleteProcessingWithResult:(id)a4;
- (void)performDelegateCallback:(id)a3;
- (void)performZoneDelegateCallback:(id)a3 forLocalZone:(id)a4;
- (void)removeDelegate:(id)a3;
- (void)removeZoneDelegate:(id)a3 forLocalZone:(id)a4;
- (void)start;
@end

@implementation HMDDatabase

- (id)logIdentifier
{
  v2 = [(HMDDatabase *)self cloudDatabase];
  v3 = [v2 containerID];
  v4 = [v3 containerIdentifier];

  return v4;
}

- (void)cloudZone:(id)a3 didEncounterZoneDisabledError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [v9 localZone];
  [(HMDDatabase *)self performZoneDelegateCallback:&v11 forLocalZone:v10];
}

void __55__HMDDatabase_cloudZone_didEncounterZoneDisabledError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudZone:*(a1 + 32) didEncounterZoneDisabledError:*(a1 + 40)];
  }
}

- (void)cloudZone:(id)a3 didRemoveParticipantWithClientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [v9 localZone];
  [(HMDDatabase *)self performZoneDelegateCallback:&v11 forLocalZone:v10];
}

void __66__HMDDatabase_cloudZone_didRemoveParticipantWithClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudZone:*(a1 + 32) didRemoveParticipantWithClientIdentifier:*(a1 + 40)];
  }
}

- (void)cloudZone:(id)a3 didUpdateParticipantWithClientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [v9 localZone];
  [(HMDDatabase *)self performZoneDelegateCallback:&v11 forLocalZone:v10];
}

void __66__HMDDatabase_cloudZone_didUpdateParticipantWithClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudZone:*(a1 + 32) didUpdateParticipantWithClientIdentifier:*(a1 + 40)];
  }
}

- (void)localZone:(id)a3 didCompleteProcessingWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HMDDatabase_localZone_didCompleteProcessingWithResult___block_invoke;
  v10[3] = &unk_27867AAF0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HMDDatabase *)self performZoneDelegateCallback:v10 forLocalZone:v9];
}

void __57__HMDDatabase_localZone_didCompleteProcessingWithResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 localZone:*(a1 + 32) didCompleteProcessingWithResult:*(a1 + 40)];
  }
}

- (void)cloudDatabase:(id)a3 encounteredError:(id)a4 withOperation:(id)a5 onContainer:(id)a6
{
  v8 = a6;
  v9 = a4;
  v13 = [(HMDDatabase *)self logEventSubmitter];
  v10 = [HMDDatabaseCKOperationCompletionEvent alloc];
  v11 = [v8 containerIdentifier];

  v12 = [(HMDDatabaseCKOperationCompletionEvent *)v10 initWithContainerIdentifier:v11];
  [v13 submitLogEvent:v12 error:v9];
}

- (void)cloudDatabase:(id)a3 encounteredError:(id)a4 withOperation:(id)a5 onZone:(id)a6
{
  v7 = a4;
  v9 = [(HMDDatabase *)self logEventSubmitter];
  v8 = objc_alloc_init(HMDBackingStoreCKOperationZoneCompletionEvent);
  [v9 submitLogEvent:v8 error:v7];
}

- (void)cloudDatabase:(id)a3 didReceiveMessageWithUserInfo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cloud database %@ received message with user info %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HMDDatabase_cloudDatabase_didReceiveMessageWithUserInfo___block_invoke;
  v14[3] = &unk_27867AAA0;
  v14[4] = v9;
  v15 = v7;
  v12 = v7;
  [(HMDDatabase *)v9 performDelegateCallback:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __59__HMDDatabase_cloudDatabase_didReceiveMessageWithUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 database:*(a1 + 32) didReceiveMessageWithUserInfo:*(a1 + 40)];
  }
}

- (void)cloudDatabase:(id)a3 didRemoveZoneWithID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cloud database %@ removed zone with zone ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HMDDatabase_cloudDatabase_didRemoveZoneWithID___block_invoke;
  v14[3] = &unk_27867AAA0;
  v15 = v7;
  v16 = v9;
  v12 = v7;
  [(HMDDatabase *)v9 performDelegateCallback:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __49__HMDDatabase_cloudDatabase_didRemoveZoneWithID___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_opt_respondsToSelector();
  v4 = v10;
  if (v3)
  {
    v5 = [*(a1 + 32) scope];
    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v4 = v10;
      if (v5 != 3)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) zoneID];
    v9 = [v8 zoneName];
    [v10 database:v7 didRemoveZoneWithName:v9 isPrivate:v6];

    v4 = v10;
  }

LABEL_7:
}

- (id)cloudDatabase:(id)a3 willRemoveZoneWithID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cloud database %@ will remove zone with zone ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CBEB18] array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__HMDDatabase_cloudDatabase_willRemoveZoneWithID___block_invoke;
  v18[3] = &unk_27867AAC8;
  v19 = v7;
  v20 = v12;
  v21 = v9;
  v13 = v12;
  v14 = v7;
  [(HMDDatabase *)v9 performDelegateCallback:v18];
  v15 = [MEMORY[0x277D2C900] chainFutures:v13];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __50__HMDDatabase_cloudDatabase_willRemoveZoneWithID___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = objc_opt_respondsToSelector();
  v4 = v12;
  if (v3)
  {
    v5 = [*(a1 + 32) scope];
    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v4 = v12;
      if (v5 != 3)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = [*(a1 + 32) zoneID];
    v10 = [v9 zoneName];
    v11 = [v12 database:v7 willRemoveZoneWithName:v10 isPrivate:v6];
    [v8 addObject:v11];

    v4 = v12;
  }

LABEL_7:
}

- (void)cloudDatabase:(id)a3 didCreateZoneWithID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cloud database %@ created zone with zone ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HMDDatabase_cloudDatabase_didCreateZoneWithID___block_invoke;
  v14[3] = &unk_27867AAA0;
  v15 = v7;
  v16 = v9;
  v12 = v7;
  [(HMDDatabase *)v9 performDelegateCallback:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __49__HMDDatabase_cloudDatabase_didCreateZoneWithID___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_opt_respondsToSelector();
  v4 = v10;
  if (v3)
  {
    v5 = [*(a1 + 32) scope];
    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v4 = v10;
      if (v5 != 3)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) zoneID];
    v9 = [v8 zoneName];
    [v10 database:v7 didCreateZoneWithName:v9 isPrivate:v6];

    v4 = v10;
  }

LABEL_7:
}

- (void)localDatabase:(id)a3 willRemoveZoneWithID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Local database %@ will remove zone with ID: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)performZoneDelegateCallback:(id)a3 forLocalZone:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDDatabase *)self zoneDelegatesByLocalZone];
  v9 = [v8 objectForKey:v7];
  v10 = [v9 allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v6[2](v6, *(*(&v16 + 1) + 8 * v14++));
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeZoneDelegate:(id)a3 forLocalZone:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDDatabase *)self zoneDelegatesByLocalZone];
  v8 = [v7 objectForKey:v6];

  [v8 removeObject:v10];
  if (![v8 count])
  {
    v9 = [(HMDDatabase *)self zoneDelegatesByLocalZone];
    [v9 removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addZoneDelegate:(id)a3 forLocalZone:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDDatabase *)self zoneDelegatesByLocalZone];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v9 = [(HMDDatabase *)self zoneDelegatesByLocalZone];
    [v9 setObject:v8 forKey:v6];
  }

  [v8 addObject:v10];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSMapTable)zoneDelegatesByLocalZone
{
  os_unfair_lock_assert_owner(&self->_lock);
  zoneDelegatesByLocalZone = self->_zoneDelegatesByLocalZone;

  return zoneDelegatesByLocalZone;
}

- (void)performDelegateCallback:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDDatabase *)self delegates];
  v6 = [v5 allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSHashTable)delegates
{
  os_unfair_lock_assert_owner(&self->_lock);
  delegates = self->_delegates;

  return delegates;
}

- (id)removeZonesWithID:(id)a3 isPrivate:(BOOL)a4
{
  v4 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = @"shared";
    *buf = 138543874;
    v42 = v10;
    v43 = 2112;
    if (v4)
    {
      v11 = @"private";
    }

    v44 = v11;
    v45 = 2112;
    v46 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing %@ zones with ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = objc_alloc_init(MEMORY[0x277D17068]);
  v13 = [(HMDDatabase *)v8 cloudDatabase];
  v14 = v13;
  if (v4)
  {
    v40 = 0;
    v15 = &v40;
    v16 = [v13 openExistingPrivateZoneWithID:v6 configuration:v12 delegate:0 error:&v40];
  }

  else
  {
    v39 = 0;
    v15 = &v39;
    v16 = [v13 openExistingSharedZoneWithID:v6 configuration:v12 delegate:0 error:&v39];
  }

  v17 = v16;
  v18 = *v15;

  if (v17)
  {
    v19 = objc_alloc_init(MEMORY[0x277D170F8]);
    [v19 setDelegate:v8];
    [v19 setCreateIfNeeded:0];
    v20 = [(HMDDatabase *)v8 localDatabase];
    v38 = v18;
    v21 = [v20 openZoneWithMirror:v17 configuration:v19 error:&v38];
    v22 = v38;

    if (v21)
    {
      v23 = [(HMDDatabase *)v8 removeLocalAndCloudDataForLocalZone:v21];
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v8;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v33 = v37 = v30;
        v34 = @"shared";
        *buf = 138544130;
        v42 = v33;
        v43 = 2112;
        if (v4)
        {
          v34 = @"private";
        }

        v44 = v34;
        v45 = 2112;
        v46 = v6;
        v47 = 2112;
        v48 = v22;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to open %@ local zone with zoneID %@: %@", buf, 0x2Au);

        v30 = v37;
      }

      objc_autoreleasePoolPop(v30);
      v23 = [MEMORY[0x277D2C900] futureWithError:v22];
    }

    v29 = v23;

    v18 = v22;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v8;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = @"shared";
      *buf = 138544130;
      v42 = v27;
      v43 = 2112;
      if (v4)
      {
        v28 = @"private";
      }

      v44 = v28;
      v45 = 2112;
      v46 = v6;
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to open %@ cloud zone with zoneID %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
    v29 = [MEMORY[0x277D2C900] futureWithError:v18];
  }

  v35 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)zonesWithID:(id)a3 isPrivate:(BOOL)a4 shouldCreate:(BOOL)a5 configuration:(id)a6 delegate:(id)a7 error:(id *)a8
{
  v10 = a5;
  v11 = a4;
  v60 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a6;
  v47 = a7;
  v15 = [(HMDDatabase *)self cloudDatabase];
  v16 = v15;
  if (v11)
  {
    if (v10)
    {
      v51 = 0;
      v17 = &v51;
      v18 = [v15 openOrCreatePrivateZoneWithID:v13 configuration:v14 delegate:self error:&v51];
    }

    else
    {
      v50 = 0;
      v17 = &v50;
      v18 = [v15 openExistingPrivateZoneWithID:v13 configuration:v14 delegate:self error:&v50];
    }
  }

  else
  {
    v49 = 0;
    v17 = &v49;
    v18 = [v15 openExistingSharedZoneWithID:v13 configuration:v14 delegate:self error:&v49];
  }

  v19 = v18;
  v20 = *v17;

  if (v19)
  {
    v45 = v14;
    v21 = objc_alloc_init(MEMORY[0x277D170F8]);
    [v21 setDelegate:self];
    [v21 setCreateIfNeeded:1];
    v22 = [(HMDDatabase *)self localDatabase];
    v48 = v20;
    v23 = [v22 openZoneWithMirror:v19 configuration:v21 error:&v48];
    v24 = v48;

    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    v28 = v27;
    if (v23)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = @"shared";
        *buf = 138544130;
        v53 = v29;
        v54 = 2112;
        if (v11)
        {
          v30 = @"private";
        }

        v55 = v30;
        v56 = 2112;
        v57 = v13;
        v58 = 2112;
        v59 = v47;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Successfully opened %@ zones with zoneID: %@, delegate: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      v31 = v47;
      if (v47)
      {
        [(HMDDatabase *)v26 addZoneDelegate:v47 forLocalZone:v23];
      }

      v32 = [[HMDDatabaseFetchZonesResult alloc] initWithLocalZone:v23 cloudZone:v19];
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        v41 = @"shared";
        *buf = 138544130;
        v53 = v40;
        v54 = 2112;
        if (v11)
        {
          v41 = @"private";
        }

        v55 = v41;
        v56 = 2112;
        v57 = v13;
        v58 = 2112;
        v59 = v24;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to open %@ local zone with zoneID %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      if (a8)
      {
        v42 = v24;
        v32 = 0;
        *a8 = v24;
      }

      else
      {
        v32 = 0;
      }

      v31 = v47;
    }

    v14 = v45;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v37 = v36 = v14;
      v38 = @"shared";
      *buf = 138544130;
      v53 = v37;
      v54 = 2112;
      if (v11)
      {
        v38 = @"private";
      }

      v55 = v38;
      v56 = 2112;
      v57 = v13;
      v58 = 2112;
      v59 = v20;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to open %@ cloud zone with zoneID %@: %@", buf, 0x2Au);

      v14 = v36;
    }

    objc_autoreleasePoolPop(v33);
    if (a8)
    {
      v39 = v20;
      v32 = 0;
      *a8 = v20;
    }

    else
    {
      v32 = 0;
    }

    v24 = v20;
    v31 = v47;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)acceptInvitation:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Accepting sharing invitation %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDatabase *)v6 start];
  v9 = [(HMDDatabase *)v6 cloudDatabase];
  v10 = [v9 acceptInvitation:v4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)removeLocalAndCloudDataForLocalZone:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing local and cloud data for local zone %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDDatabase *)v6 localDatabase];
  v10 = [v9 removeZone:v4];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__HMDDatabase_removeLocalAndCloudDataForLocalZone___block_invoke;
  v15[3] = &unk_278681018;
  v15[4] = v6;
  v16 = v4;
  v11 = v4;
  v12 = [v10 addCompletionBlock:v15];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __51__HMDDatabase_removeLocalAndCloudDataForLocalZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v19 = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v13 = "%{public}@Successfully removed local and cloud data for local zone %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v14, v15, v13, &v19, v16);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    v19 = 138543874;
    v20 = v11;
    v21 = 2112;
    v22 = v17;
    v23 = 2112;
    v24 = v6;
    v13 = "%{public}@Failed to remove local and cloud data for local zone %@: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = *MEMORY[0x277D85DE8];
}

- (id)removeSharedZonesWithName:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing shared zones with name %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDDatabase *)v6 existingSharedZoneIDWithName:v4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 zoneID];
    v12 = [(HMDDatabase *)v6 removeZonesWithID:v11 isPrivate:0];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Attempted to remove a non-existing shared zone with name: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)removePrivateZonesWithName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing private zones with name %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc(MEMORY[0x277CBC5F8]);
  v10 = [v9 initWithZoneName:v4 ownerName:*MEMORY[0x277CBBF28]];
  v11 = [(HMDDatabase *)v6 removeZonesWithID:v10 isPrivate:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)synchronizeSharedZones
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Synchronizing shared zones", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDDatabase *)v4 start];
  v7 = [(HMDDatabase *)v4 cloudDatabase];
  v8 = [v7 synchronizeSharedZones];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)sharedZonesWithID:(id)a3 configuration:(id)a4 delegate:(id)a5 error:(id *)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v16;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Fetching shared zones with zone ID %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  [(HMDDatabase *)v14 start];
  v17 = [v10 zoneID];
  v18 = [(HMDDatabase *)v14 zonesWithID:v17 isPrivate:0 shouldCreate:0 configuration:v11 delegate:v12 error:a6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)existingSharedZoneIDWithName:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Finding shared zone ID with zone name %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDatabase *)v6 start];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(HMDDatabase *)v6 cloudDatabase];
  v10 = [v9 sharedZoneIDs];

  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 zoneID];
        v16 = [v15 zoneName];
        v17 = [v16 isEqualToString:v4];

        if (v17)
        {
          v11 = v14;
          goto LABEL_13;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)privateZonesWithName:(id)a3 configuration:(id)a4 delegate:(id)a5 error:(id *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v16;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Fetching private zones with name %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  [(HMDDatabase *)v14 start];
  v17 = objc_alloc(MEMORY[0x277CBC5F8]);
  v18 = [v17 initWithZoneName:v10 ownerName:*MEMORY[0x277CBBF28]];
  v19 = [(HMDDatabase *)v14 zonesWithID:v18 isPrivate:1 shouldCreate:1 configuration:v11 delegate:v12 error:a6];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)existingPrivateZonesWithName:(id)a3 configuration:(id)a4 delegate:(id)a5 error:(id *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v16;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Fetching existing private zones with name %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  [(HMDDatabase *)v14 start];
  v17 = objc_alloc(MEMORY[0x277CBC5F8]);
  v18 = [v17 initWithZoneName:v10 ownerName:*MEMORY[0x277CBBF28]];
  v19 = [(HMDDatabase *)v14 zonesWithID:v18 isPrivate:1 shouldCreate:0 configuration:v11 delegate:v12 error:a6];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)unregisterSharedSubscriptionForExternalRecordType:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Unregistering shared subscription for external record type %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDatabase *)v6 start];
  v9 = [(HMDDatabase *)v6 cloudDatabase];
  v10 = [v9 unregisterSharedSubscriptionForExternalRecordType:v4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)registerSharedSubscriptionForExternalRecordType:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering shared subscription for external record type %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDatabase *)v6 start];
  v9 = [(HMDDatabase *)v6 cloudDatabase];
  v10 = [v9 registerSharedSubscriptionForExternalRecordType:v4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)start
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if ([(HMDDatabase *)self hasStarted])
  {
    v3 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(HMDDatabase *)self setHasStarted:1];
    os_unfair_lock_unlock(&self->_lock);
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting database", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMDDatabase *)v5 cloudDatabase];
    v9 = [v8 performInitialCloudSync];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __20__HMDDatabase_start__block_invoke;
    v12[3] = &unk_278687CC0;
    v12[4] = v5;
    v10 = [v9 addCompletionBlock:v12];

    v11 = *MEMORY[0x277D85DE8];
  }
}

void __20__HMDDatabase_start__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v11 = [v4 logEventSubmitter];
  v6 = [HMDDatabaseCKOperationCompletionEvent alloc];
  v7 = [*(a1 + 32) cloudDatabase];
  v8 = [v7 containerID];
  v9 = [v8 containerIdentifier];
  v10 = [(HMDDatabaseCKOperationCompletionEvent *)v6 initWithContainerIdentifier:v9];
  [v11 submitLogEvent:v10 error:v5];
}

- (void)removeDelegate:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDDatabase *)self delegates];
  [v4 removeObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addDelegate:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDDatabase *)self delegates];
  [v4 addObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating database", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDDatabase;
  [(HMDDatabase *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDDatabase)initWithLocalDatabase:(id)a3 cloudDatabase:(id)a4 logEventSubmitter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HMDDatabase;
  v12 = [(HMDDatabase *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localDatabase, a3);
    [(HMBLocalDatabase *)v13->_localDatabase setDelegate:v13];
    objc_storeStrong(&v13->_cloudDatabase, a4);
    [(HMBCloudDatabase *)v13->_cloudDatabase setDelegate:v13];
    v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v13->_delegates;
    v13->_delegates = v14;

    v16 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    zoneDelegatesByLocalZone = v13->_zoneDelegatesByLocalZone;
    v13->_zoneDelegatesByLocalZone = v16;

    objc_storeStrong(&v13->_logEventSubmitter, a5);
  }

  return v13;
}

- (HMDDatabase)initWithFileURL:(id)a3 cloudConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMDHomeKitVersion currentVersion];
  v9 = [objc_alloc(MEMORY[0x277D170A8]) initWithDataVersion:v8 legacyDataVersion:v8];
  v10 = objc_alloc_init(MEMORY[0x277D170F0]);
  [v10 setModelContainer:v9];
  v19 = 0;
  v11 = [objc_alloc(MEMORY[0x277D17080]) initWithDatastorePath:v7 configuration:v10 error:&v19];

  v12 = v19;
  if (v11)
  {
    v18 = v12;
    v13 = [objc_alloc(MEMORY[0x277D17048]) initWithLocalDatabase:v11 configuration:v6 error:&v18];
    v14 = v18;

    if (v13)
    {
      v15 = +[HMDMetricsManager sharedLogEventSubmitter];
      self = [(HMDDatabase *)self initWithLocalDatabase:v11 cloudDatabase:v13 logEventSubmitter:v15];

      v16 = self;
    }

    else
    {
      [objc_opt_class() handleDatabaseInitializationError:v14];
      v16 = 0;
    }
  }

  else
  {
    [objc_opt_class() handleDatabaseInitializationError:v12];
    v16 = 0;
    v14 = v12;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t40 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t40, &__block_literal_global_139852);
  }

  v3 = logCategory__hmf_once_v41;

  return v3;
}

void __26__HMDDatabase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v41;
  logCategory__hmf_once_v41 = v1;
}

+ (void)handleDatabaseInitializationError:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmbIsSQLiteDiskFullError];
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to open database because the disk is full", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Failed to open database with unexpected error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [[HMDAssertionLogEvent alloc] initWithReason:@"Failed to open database with unexpected error: %@", v4];
    v13 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v13 submitLogEvent:v12];
  }

  _Exit(1);
}

+ (HMDDatabase)hindsightDatabase
{
  +[HMDDatabase defaultDatabase];

  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&hindsightDatabase_hindsightDatabase);
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  else
  {
    v5 = HMVConfigurationCloudKitContainerID();
    v6 = [objc_alloc(MEMORY[0x277D170E0]) initWithContainerID:v5];
    [v6 setManateeContainer:1];
    v7 = [a1 alloc];
    v8 = +[HMDDatabase defaultLocalDatabaseFileURL];
    v9 = [v7 initWithFileURL:v8 cloudConfiguration:v6];

    objc_storeWeak(&hindsightDatabase_hindsightDatabase, v9);
    v4 = v9;
  }

  os_unfair_lock_unlock(&HMDDatabaseSharedInstanceLock);

  return v4;
}

+ (HMDDatabase)cameraClipsDatabase
{
  v25 = *MEMORY[0x277D85DE8];
  +[HMDDatabase defaultDatabase];

  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&cameraClipsDatabase_cameraClipsDatabase);
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  else
  {
    v5 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v6 = [v5 preferenceForKey:@"cameraClipsContainerIdentifier"];

    v7 = [v6 stringValue];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [v6 stringValue];
        v21 = 138543618;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding camera clips container identifier to %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [v6 stringValue];
    }

    else
    {
      v12 = @"com.apple.homekit.camera.clips";
    }

    v13 = objc_alloc(MEMORY[0x277CBC220]);
    v14 = [v13 initWithContainerIdentifier:v12 environment:cloudKitContainerEnvironment];
    v15 = [objc_alloc(MEMORY[0x277D170E0]) initWithContainerID:v14];
    [v15 setSourceApplicationBundleIdentifier:@"com.apple.willowd.homekit.camera.clips"];
    [v15 setManateeContainer:1];
    [v15 setSubscriptionPushRegistrationAction:2];
    v16 = [a1 alloc];
    v17 = +[HMDDatabase defaultLocalDatabaseFileURL];
    v18 = [v16 initWithFileURL:v17 cloudConfiguration:v15];

    objc_storeWeak(&cameraClipsDatabase_cameraClipsDatabase, v18);
    v4 = v18;
  }

  os_unfair_lock_unlock(&HMDDatabaseSharedInstanceLock);
  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (HMDDatabase)defaultDatabase
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMDDatabase_defaultDatabase__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultDatabase_onceToken != -1)
  {
    dispatch_once(&defaultDatabase_onceToken, block);
  }

  v2 = defaultDatabase_defaultDatabase;

  return v2;
}

void __30__HMDDatabase_defaultDatabase__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"defaultContainerIdentifier"];

  v4 = [v3 stringValue];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [v3 stringValue];
      v18 = 138543618;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding default container identifier to %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v3 stringValue];
  }

  else
  {
    v9 = @"com.apple.homekit";
  }

  v10 = objc_alloc(MEMORY[0x277CBC220]);
  v11 = [v10 initWithContainerIdentifier:v9 environment:cloudKitContainerEnvironment];
  v12 = [objc_alloc(MEMORY[0x277D170E0]) initWithContainerID:v11];
  [v12 setSourceApplicationBundleIdentifier:@"com.apple.willowd.homekit"];
  [v12 setManateeContainer:1];
  [v12 setSubscriptionPushRegistrationAction:2];
  v13 = objc_alloc(*(a1 + 32));
  v14 = +[HMDDatabase defaultLocalDatabaseFileURL];
  v15 = [v13 initWithFileURL:v14 cloudConfiguration:v12];
  v16 = defaultDatabase_defaultDatabase;
  defaultDatabase_defaultDatabase = v15;

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)registerQueries
{
  +[(HMBModel *)HMDCameraClipModel];
  +[(HMBModel *)HMDFaceCropModel];
  +[(HMBModel *)HMDUnassociatedFaceCropModel];
  +[(HMBModel *)HMDCameraSignificantEventNotificationModel];

  +[(HMBModel *)HMDIDSActivityRegistrationModel];
}

+ (NSURL)defaultLocalDatabaseFileURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = storeDirectoryPath;
  v4 = [v3 stringByAppendingPathComponent:@"datastore3.sqlite"];
  v5 = [v2 fileURLWithPath:v4];

  return v5;
}

@end