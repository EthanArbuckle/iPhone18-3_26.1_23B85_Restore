@interface HMDDatabase
+ (HMDDatabase)cameraClipsDatabase;
+ (HMDDatabase)defaultDatabase;
+ (HMDDatabase)hindsightDatabase;
+ (NSURL)defaultLocalDatabaseFileURL;
+ (id)logCategory;
+ (void)handleDatabaseInitializationError:(id)error;
+ (void)registerQueries;
- (HMDDatabase)initWithFileURL:(id)l cloudConfiguration:(id)configuration;
- (HMDDatabase)initWithLocalDatabase:(id)database cloudDatabase:(id)cloudDatabase logEventSubmitter:(id)submitter;
- (NSHashTable)delegates;
- (NSMapTable)zoneDelegatesByLocalZone;
- (id)acceptInvitation:(id)invitation;
- (id)cloudDatabase:(id)database willRemoveZoneWithID:(id)d;
- (id)existingPrivateZonesWithName:(id)name configuration:(id)configuration delegate:(id)delegate error:(id *)error;
- (id)existingSharedZoneIDWithName:(id)name;
- (id)logIdentifier;
- (id)privateZonesWithName:(id)name configuration:(id)configuration delegate:(id)delegate error:(id *)error;
- (id)registerSharedSubscriptionForExternalRecordType:(id)type;
- (id)removeLocalAndCloudDataForLocalZone:(id)zone;
- (id)removePrivateZonesWithName:(id)name;
- (id)removeSharedZonesWithName:(id)name;
- (id)removeZonesWithID:(id)d isPrivate:(BOOL)private;
- (id)sharedZonesWithID:(id)d configuration:(id)configuration delegate:(id)delegate error:(id *)error;
- (id)synchronizeSharedZones;
- (id)unregisterSharedSubscriptionForExternalRecordType:(id)type;
- (id)zonesWithID:(id)d isPrivate:(BOOL)private shouldCreate:(BOOL)create configuration:(id)configuration delegate:(id)delegate error:(id *)error;
- (void)addDelegate:(id)delegate;
- (void)addZoneDelegate:(id)delegate forLocalZone:(id)zone;
- (void)cloudDatabase:(id)database didCreateZoneWithID:(id)d;
- (void)cloudDatabase:(id)database didReceiveMessageWithUserInfo:(id)info;
- (void)cloudDatabase:(id)database didRemoveZoneWithID:(id)d;
- (void)cloudDatabase:(id)database encounteredError:(id)error withOperation:(id)operation onContainer:(id)container;
- (void)cloudDatabase:(id)database encounteredError:(id)error withOperation:(id)operation onZone:(id)zone;
- (void)cloudZone:(id)zone didEncounterZoneDisabledError:(id)error;
- (void)cloudZone:(id)zone didRemoveParticipantWithClientIdentifier:(id)identifier;
- (void)cloudZone:(id)zone didUpdateParticipantWithClientIdentifier:(id)identifier;
- (void)dealloc;
- (void)localDatabase:(id)database willRemoveZoneWithID:(id)d;
- (void)localZone:(id)zone didCompleteProcessingWithResult:(id)result;
- (void)performDelegateCallback:(id)callback;
- (void)performZoneDelegateCallback:(id)callback forLocalZone:(id)zone;
- (void)removeDelegate:(id)delegate;
- (void)removeZoneDelegate:(id)delegate forLocalZone:(id)zone;
- (void)start;
@end

@implementation HMDDatabase

- (id)logIdentifier
{
  cloudDatabase = [(HMDDatabase *)self cloudDatabase];
  containerID = [cloudDatabase containerID];
  containerIdentifier = [containerID containerIdentifier];

  return containerIdentifier;
}

- (void)cloudZone:(id)zone didEncounterZoneDisabledError:(id)error
{
  zoneCopy = zone;
  errorCopy = error;
  v11 = MEMORY[0x277D85DD0];
  v12 = zoneCopy;
  v13 = errorCopy;
  v8 = errorCopy;
  v9 = zoneCopy;
  localZone = [v9 localZone];
  [(HMDDatabase *)self performZoneDelegateCallback:&v11 forLocalZone:localZone];
}

void __55__HMDDatabase_cloudZone_didEncounterZoneDisabledError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudZone:*(a1 + 32) didEncounterZoneDisabledError:*(a1 + 40)];
  }
}

- (void)cloudZone:(id)zone didRemoveParticipantWithClientIdentifier:(id)identifier
{
  zoneCopy = zone;
  identifierCopy = identifier;
  v11 = MEMORY[0x277D85DD0];
  v12 = zoneCopy;
  v13 = identifierCopy;
  v8 = identifierCopy;
  v9 = zoneCopy;
  localZone = [v9 localZone];
  [(HMDDatabase *)self performZoneDelegateCallback:&v11 forLocalZone:localZone];
}

void __66__HMDDatabase_cloudZone_didRemoveParticipantWithClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudZone:*(a1 + 32) didRemoveParticipantWithClientIdentifier:*(a1 + 40)];
  }
}

- (void)cloudZone:(id)zone didUpdateParticipantWithClientIdentifier:(id)identifier
{
  zoneCopy = zone;
  identifierCopy = identifier;
  v11 = MEMORY[0x277D85DD0];
  v12 = zoneCopy;
  v13 = identifierCopy;
  v8 = identifierCopy;
  v9 = zoneCopy;
  localZone = [v9 localZone];
  [(HMDDatabase *)self performZoneDelegateCallback:&v11 forLocalZone:localZone];
}

void __66__HMDDatabase_cloudZone_didUpdateParticipantWithClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudZone:*(a1 + 32) didUpdateParticipantWithClientIdentifier:*(a1 + 40)];
  }
}

- (void)localZone:(id)zone didCompleteProcessingWithResult:(id)result
{
  zoneCopy = zone;
  resultCopy = result;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HMDDatabase_localZone_didCompleteProcessingWithResult___block_invoke;
  v10[3] = &unk_27867AAF0;
  v11 = zoneCopy;
  v12 = resultCopy;
  v8 = resultCopy;
  v9 = zoneCopy;
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

- (void)cloudDatabase:(id)database encounteredError:(id)error withOperation:(id)operation onContainer:(id)container
{
  containerCopy = container;
  errorCopy = error;
  logEventSubmitter = [(HMDDatabase *)self logEventSubmitter];
  v10 = [HMDDatabaseCKOperationCompletionEvent alloc];
  containerIdentifier = [containerCopy containerIdentifier];

  v12 = [(HMDDatabaseCKOperationCompletionEvent *)v10 initWithContainerIdentifier:containerIdentifier];
  [logEventSubmitter submitLogEvent:v12 error:errorCopy];
}

- (void)cloudDatabase:(id)database encounteredError:(id)error withOperation:(id)operation onZone:(id)zone
{
  errorCopy = error;
  logEventSubmitter = [(HMDDatabase *)self logEventSubmitter];
  v8 = objc_alloc_init(HMDBackingStoreCKOperationZoneCompletionEvent);
  [logEventSubmitter submitLogEvent:v8 error:errorCopy];
}

- (void)cloudDatabase:(id)database didReceiveMessageWithUserInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  infoCopy = info;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = databaseCopy;
    v20 = 2112;
    v21 = infoCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cloud database %@ received message with user info %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HMDDatabase_cloudDatabase_didReceiveMessageWithUserInfo___block_invoke;
  v14[3] = &unk_27867AAA0;
  v14[4] = selfCopy;
  v15 = infoCopy;
  v12 = infoCopy;
  [(HMDDatabase *)selfCopy performDelegateCallback:v14];

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

- (void)cloudDatabase:(id)database didRemoveZoneWithID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = databaseCopy;
    v21 = 2112;
    v22 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cloud database %@ removed zone with zone ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HMDDatabase_cloudDatabase_didRemoveZoneWithID___block_invoke;
  v14[3] = &unk_27867AAA0;
  v15 = dCopy;
  v16 = selfCopy;
  v12 = dCopy;
  [(HMDDatabase *)selfCopy performDelegateCallback:v14];

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

- (id)cloudDatabase:(id)database willRemoveZoneWithID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = databaseCopy;
    v26 = 2112;
    v27 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cloud database %@ will remove zone with zone ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  array = [MEMORY[0x277CBEB18] array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__HMDDatabase_cloudDatabase_willRemoveZoneWithID___block_invoke;
  v18[3] = &unk_27867AAC8;
  v19 = dCopy;
  v20 = array;
  v21 = selfCopy;
  v13 = array;
  v14 = dCopy;
  [(HMDDatabase *)selfCopy performDelegateCallback:v18];
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

- (void)cloudDatabase:(id)database didCreateZoneWithID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = databaseCopy;
    v21 = 2112;
    v22 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cloud database %@ created zone with zone ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HMDDatabase_cloudDatabase_didCreateZoneWithID___block_invoke;
  v14[3] = &unk_27867AAA0;
  v15 = dCopy;
  v16 = selfCopy;
  v12 = dCopy;
  [(HMDDatabase *)selfCopy performDelegateCallback:v14];

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

- (void)localDatabase:(id)database willRemoveZoneWithID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = databaseCopy;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Local database %@ will remove zone with ID: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)performZoneDelegateCallback:(id)callback forLocalZone:(id)zone
{
  v21 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  zoneCopy = zone;
  os_unfair_lock_lock_with_options();
  zoneDelegatesByLocalZone = [(HMDDatabase *)self zoneDelegatesByLocalZone];
  v9 = [zoneDelegatesByLocalZone objectForKey:zoneCopy];
  allObjects = [v9 allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = allObjects;
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

        callbackCopy[2](callbackCopy, *(*(&v16 + 1) + 8 * v14++));
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeZoneDelegate:(id)delegate forLocalZone:(id)zone
{
  delegateCopy = delegate;
  zoneCopy = zone;
  os_unfair_lock_lock_with_options();
  zoneDelegatesByLocalZone = [(HMDDatabase *)self zoneDelegatesByLocalZone];
  v8 = [zoneDelegatesByLocalZone objectForKey:zoneCopy];

  [v8 removeObject:delegateCopy];
  if (![v8 count])
  {
    zoneDelegatesByLocalZone2 = [(HMDDatabase *)self zoneDelegatesByLocalZone];
    [zoneDelegatesByLocalZone2 removeObjectForKey:zoneCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addZoneDelegate:(id)delegate forLocalZone:(id)zone
{
  delegateCopy = delegate;
  zoneCopy = zone;
  os_unfair_lock_lock_with_options();
  zoneDelegatesByLocalZone = [(HMDDatabase *)self zoneDelegatesByLocalZone];
  weakObjectsHashTable = [zoneDelegatesByLocalZone objectForKey:zoneCopy];

  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    zoneDelegatesByLocalZone2 = [(HMDDatabase *)self zoneDelegatesByLocalZone];
    [zoneDelegatesByLocalZone2 setObject:weakObjectsHashTable forKey:zoneCopy];
  }

  [weakObjectsHashTable addObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSMapTable)zoneDelegatesByLocalZone
{
  os_unfair_lock_assert_owner(&self->_lock);
  zoneDelegatesByLocalZone = self->_zoneDelegatesByLocalZone;

  return zoneDelegatesByLocalZone;
}

- (void)performDelegateCallback:(id)callback
{
  v17 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  os_unfair_lock_lock_with_options();
  delegates = [(HMDDatabase *)self delegates];
  allObjects = [delegates allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = allObjects;
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

        callbackCopy[2](callbackCopy, *(*(&v12 + 1) + 8 * v10++));
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

- (id)removeZonesWithID:(id)d isPrivate:(BOOL)private
{
  privateCopy = private;
  v49 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = @"shared";
    *buf = 138543874;
    v42 = v10;
    v43 = 2112;
    if (privateCopy)
    {
      v11 = @"private";
    }

    v44 = v11;
    v45 = 2112;
    v46 = dCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing %@ zones with ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = objc_alloc_init(MEMORY[0x277D17068]);
  cloudDatabase = [(HMDDatabase *)selfCopy cloudDatabase];
  v14 = cloudDatabase;
  if (privateCopy)
  {
    v40 = 0;
    v15 = &v40;
    v16 = [cloudDatabase openExistingPrivateZoneWithID:dCopy configuration:v12 delegate:0 error:&v40];
  }

  else
  {
    v39 = 0;
    v15 = &v39;
    v16 = [cloudDatabase openExistingSharedZoneWithID:dCopy configuration:v12 delegate:0 error:&v39];
  }

  v17 = v16;
  v18 = *v15;

  if (v17)
  {
    v19 = objc_alloc_init(MEMORY[0x277D170F8]);
    [v19 setDelegate:selfCopy];
    [v19 setCreateIfNeeded:0];
    localDatabase = [(HMDDatabase *)selfCopy localDatabase];
    v38 = v18;
    v21 = [localDatabase openZoneWithMirror:v17 configuration:v19 error:&v38];
    v22 = v38;

    if (v21)
    {
      v23 = [(HMDDatabase *)selfCopy removeLocalAndCloudDataForLocalZone:v21];
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v33 = v37 = v30;
        v34 = @"shared";
        *buf = 138544130;
        v42 = v33;
        v43 = 2112;
        if (privateCopy)
        {
          v34 = @"private";
        }

        v44 = v34;
        v45 = 2112;
        v46 = dCopy;
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
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = @"shared";
      *buf = 138544130;
      v42 = v27;
      v43 = 2112;
      if (privateCopy)
      {
        v28 = @"private";
      }

      v44 = v28;
      v45 = 2112;
      v46 = dCopy;
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

- (id)zonesWithID:(id)d isPrivate:(BOOL)private shouldCreate:(BOOL)create configuration:(id)configuration delegate:(id)delegate error:(id *)error
{
  createCopy = create;
  privateCopy = private;
  v60 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  delegateCopy = delegate;
  cloudDatabase = [(HMDDatabase *)self cloudDatabase];
  v16 = cloudDatabase;
  if (privateCopy)
  {
    if (createCopy)
    {
      v51 = 0;
      v17 = &v51;
      v18 = [cloudDatabase openOrCreatePrivateZoneWithID:dCopy configuration:configurationCopy delegate:self error:&v51];
    }

    else
    {
      v50 = 0;
      v17 = &v50;
      v18 = [cloudDatabase openExistingPrivateZoneWithID:dCopy configuration:configurationCopy delegate:self error:&v50];
    }
  }

  else
  {
    v49 = 0;
    v17 = &v49;
    v18 = [cloudDatabase openExistingSharedZoneWithID:dCopy configuration:configurationCopy delegate:self error:&v49];
  }

  v19 = v18;
  v20 = *v17;

  if (v19)
  {
    v45 = configurationCopy;
    v21 = objc_alloc_init(MEMORY[0x277D170F8]);
    [v21 setDelegate:self];
    [v21 setCreateIfNeeded:1];
    localDatabase = [(HMDDatabase *)self localDatabase];
    v48 = v20;
    v23 = [localDatabase openZoneWithMirror:v19 configuration:v21 error:&v48];
    v24 = v48;

    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
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
        if (privateCopy)
        {
          v30 = @"private";
        }

        v55 = v30;
        v56 = 2112;
        v57 = dCopy;
        v58 = 2112;
        v59 = delegateCopy;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Successfully opened %@ zones with zoneID: %@, delegate: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      v31 = delegateCopy;
      if (delegateCopy)
      {
        [(HMDDatabase *)selfCopy addZoneDelegate:delegateCopy forLocalZone:v23];
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
        if (privateCopy)
        {
          v41 = @"private";
        }

        v55 = v41;
        v56 = 2112;
        v57 = dCopy;
        v58 = 2112;
        v59 = v24;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to open %@ local zone with zoneID %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      if (error)
      {
        v42 = v24;
        v32 = 0;
        *error = v24;
      }

      else
      {
        v32 = 0;
      }

      v31 = delegateCopy;
    }

    configurationCopy = v45;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v37 = v36 = configurationCopy;
      v38 = @"shared";
      *buf = 138544130;
      v53 = v37;
      v54 = 2112;
      if (privateCopy)
      {
        v38 = @"private";
      }

      v55 = v38;
      v56 = 2112;
      v57 = dCopy;
      v58 = 2112;
      v59 = v20;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to open %@ cloud zone with zoneID %@: %@", buf, 0x2Au);

      configurationCopy = v36;
    }

    objc_autoreleasePoolPop(v33);
    if (error)
    {
      v39 = v20;
      v32 = 0;
      *error = v20;
    }

    else
    {
      v32 = 0;
    }

    v24 = v20;
    v31 = delegateCopy;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)acceptInvitation:(id)invitation
{
  v17 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = invitationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Accepting sharing invitation %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDatabase *)selfCopy start];
  cloudDatabase = [(HMDDatabase *)selfCopy cloudDatabase];
  v10 = [cloudDatabase acceptInvitation:invitationCopy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)removeLocalAndCloudDataForLocalZone:(id)zone
{
  v21 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = zoneCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing local and cloud data for local zone %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  localDatabase = [(HMDDatabase *)selfCopy localDatabase];
  v10 = [localDatabase removeZone:zoneCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__HMDDatabase_removeLocalAndCloudDataForLocalZone___block_invoke;
  v15[3] = &unk_278681018;
  v15[4] = selfCopy;
  v16 = zoneCopy;
  v11 = zoneCopy;
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

- (id)removeSharedZonesWithName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = nameCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing shared zones with name %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDDatabase *)selfCopy existingSharedZoneIDWithName:nameCopy];
  v10 = v9;
  if (v9)
  {
    zoneID = [v9 zoneID];
    futureWithNoResult = [(HMDDatabase *)selfCopy removeZonesWithID:zoneID isPrivate:0];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = nameCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Attempted to remove a non-existing shared zone with name: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v17 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (id)removePrivateZonesWithName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = nameCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing private zones with name %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc(MEMORY[0x277CBC5F8]);
  v10 = [v9 initWithZoneName:nameCopy ownerName:*MEMORY[0x277CBBF28]];
  v11 = [(HMDDatabase *)selfCopy removeZonesWithID:v10 isPrivate:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)synchronizeSharedZones
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Synchronizing shared zones", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDDatabase *)selfCopy start];
  cloudDatabase = [(HMDDatabase *)selfCopy cloudDatabase];
  synchronizeSharedZones = [cloudDatabase synchronizeSharedZones];

  v9 = *MEMORY[0x277D85DE8];

  return synchronizeSharedZones;
}

- (id)sharedZonesWithID:(id)d configuration:(id)configuration delegate:(id)delegate error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v16;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Fetching shared zones with zone ID %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  [(HMDDatabase *)selfCopy start];
  zoneID = [dCopy zoneID];
  v18 = [(HMDDatabase *)selfCopy zonesWithID:zoneID isPrivate:0 shouldCreate:0 configuration:configurationCopy delegate:delegateCopy error:error];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)existingSharedZoneIDWithName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = nameCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Finding shared zone ID with zone name %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDatabase *)selfCopy start];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  cloudDatabase = [(HMDDatabase *)selfCopy cloudDatabase];
  sharedZoneIDs = [cloudDatabase sharedZoneIDs];

  v11 = [sharedZoneIDs countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(sharedZoneIDs);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        zoneID = [v14 zoneID];
        zoneName = [zoneID zoneName];
        v17 = [zoneName isEqualToString:nameCopy];

        if (v17)
        {
          v11 = v14;
          goto LABEL_13;
        }
      }

      v11 = [sharedZoneIDs countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)privateZonesWithName:(id)name configuration:(id)configuration delegate:(id)delegate error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v16;
    v24 = 2112;
    v25 = nameCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Fetching private zones with name %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  [(HMDDatabase *)selfCopy start];
  v17 = objc_alloc(MEMORY[0x277CBC5F8]);
  v18 = [v17 initWithZoneName:nameCopy ownerName:*MEMORY[0x277CBBF28]];
  v19 = [(HMDDatabase *)selfCopy zonesWithID:v18 isPrivate:1 shouldCreate:1 configuration:configurationCopy delegate:delegateCopy error:error];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)existingPrivateZonesWithName:(id)name configuration:(id)configuration delegate:(id)delegate error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v16;
    v24 = 2112;
    v25 = nameCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Fetching existing private zones with name %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  [(HMDDatabase *)selfCopy start];
  v17 = objc_alloc(MEMORY[0x277CBC5F8]);
  v18 = [v17 initWithZoneName:nameCopy ownerName:*MEMORY[0x277CBBF28]];
  v19 = [(HMDDatabase *)selfCopy zonesWithID:v18 isPrivate:1 shouldCreate:0 configuration:configurationCopy delegate:delegateCopy error:error];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)unregisterSharedSubscriptionForExternalRecordType:(id)type
{
  v17 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = typeCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Unregistering shared subscription for external record type %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDatabase *)selfCopy start];
  cloudDatabase = [(HMDDatabase *)selfCopy cloudDatabase];
  v10 = [cloudDatabase unregisterSharedSubscriptionForExternalRecordType:typeCopy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)registerSharedSubscriptionForExternalRecordType:(id)type
{
  v17 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = typeCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering shared subscription for external record type %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDatabase *)selfCopy start];
  cloudDatabase = [(HMDDatabase *)selfCopy cloudDatabase];
  v10 = [cloudDatabase registerSharedSubscriptionForExternalRecordType:typeCopy];

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
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting database", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    cloudDatabase = [(HMDDatabase *)selfCopy cloudDatabase];
    performInitialCloudSync = [cloudDatabase performInitialCloudSync];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __20__HMDDatabase_start__block_invoke;
    v12[3] = &unk_278687CC0;
    v12[4] = selfCopy;
    v10 = [performInitialCloudSync addCompletionBlock:v12];

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

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  delegates = [(HMDDatabase *)self delegates];
  [delegates removeObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  delegates = [(HMDDatabase *)self delegates];
  [delegates addObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating database", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDDatabase;
  [(HMDDatabase *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDDatabase)initWithLocalDatabase:(id)database cloudDatabase:(id)cloudDatabase logEventSubmitter:(id)submitter
{
  databaseCopy = database;
  cloudDatabaseCopy = cloudDatabase;
  submitterCopy = submitter;
  v19.receiver = self;
  v19.super_class = HMDDatabase;
  v12 = [(HMDDatabase *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localDatabase, database);
    [(HMBLocalDatabase *)v13->_localDatabase setDelegate:v13];
    objc_storeStrong(&v13->_cloudDatabase, cloudDatabase);
    [(HMBCloudDatabase *)v13->_cloudDatabase setDelegate:v13];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v13->_delegates;
    v13->_delegates = weakObjectsHashTable;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    zoneDelegatesByLocalZone = v13->_zoneDelegatesByLocalZone;
    v13->_zoneDelegatesByLocalZone = weakToStrongObjectsMapTable;

    objc_storeStrong(&v13->_logEventSubmitter, submitter);
  }

  return v13;
}

- (HMDDatabase)initWithFileURL:(id)l cloudConfiguration:(id)configuration
{
  configurationCopy = configuration;
  lCopy = l;
  v8 = +[HMDHomeKitVersion currentVersion];
  v9 = [objc_alloc(MEMORY[0x277D170A8]) initWithDataVersion:v8 legacyDataVersion:v8];
  v10 = objc_alloc_init(MEMORY[0x277D170F0]);
  [v10 setModelContainer:v9];
  v19 = 0;
  v11 = [objc_alloc(MEMORY[0x277D17080]) initWithDatastorePath:lCopy configuration:v10 error:&v19];

  v12 = v19;
  if (v11)
  {
    v18 = v12;
    v13 = [objc_alloc(MEMORY[0x277D17048]) initWithLocalDatabase:v11 configuration:configurationCopy error:&v18];
    v14 = v18;

    if (v13)
    {
      v15 = +[HMDMetricsManager sharedLogEventSubmitter];
      self = [(HMDDatabase *)self initWithLocalDatabase:v11 cloudDatabase:v13 logEventSubmitter:v15];

      selfCopy = self;
    }

    else
    {
      [objc_opt_class() handleDatabaseInitializationError:v14];
      selfCopy = 0;
    }
  }

  else
  {
    [objc_opt_class() handleDatabaseInitializationError:v12];
    selfCopy = 0;
    v14 = v12;
  }

  return selfCopy;
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

+ (void)handleDatabaseInitializationError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  hmbIsSQLiteDiskFullError = [errorCopy hmbIsSQLiteDiskFullError];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (hmbIsSQLiteDiskFullError)
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
      v17 = errorCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Failed to open database with unexpected error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    errorCopy = [[HMDAssertionLogEvent alloc] initWithReason:@"Failed to open database with unexpected error: %@", errorCopy];
    v13 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v13 submitLogEvent:errorCopy];
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
    v7 = [self alloc];
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
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v6 = [mEMORY[0x277D0F8D0] preferenceForKey:@"cameraClipsContainerIdentifier"];

    stringValue = [v6 stringValue];

    if (stringValue)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        stringValue2 = [v6 stringValue];
        v21 = 138543618;
        v22 = v10;
        v23 = 2112;
        v24 = stringValue2;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding camera clips container identifier to %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      stringValue3 = [v6 stringValue];
    }

    else
    {
      stringValue3 = @"com.apple.homekit.camera.clips";
    }

    v13 = objc_alloc(MEMORY[0x277CBC220]);
    v14 = [v13 initWithContainerIdentifier:stringValue3 environment:cloudKitContainerEnvironment];
    v15 = [objc_alloc(MEMORY[0x277D170E0]) initWithContainerID:v14];
    [v15 setSourceApplicationBundleIdentifier:@"com.apple.willowd.homekit.camera.clips"];
    [v15 setManateeContainer:1];
    [v15 setSubscriptionPushRegistrationAction:2];
    v16 = [self alloc];
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
  block[4] = self;
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