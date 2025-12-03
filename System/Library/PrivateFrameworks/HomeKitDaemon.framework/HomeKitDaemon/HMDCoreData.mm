@interface HMDCoreData
+ (BOOL)isUsingProductionObjectModel;
+ (HMDCoreData)sharedInstance;
+ (NSArray)defaultPersistentStoreDescriptions;
+ (NSManagedObjectModel)managedObjectModel;
+ (NSPersistentStoreDescription)cloudPrivateStoreDescription;
+ (NSPersistentStoreDescription)cloudSharedStoreDescription;
+ (NSPersistentStoreDescription)localStoreDescription;
+ (NSPersistentStoreDescription)workingStoreDescription;
+ (NSURL)managedObjectModelURL;
+ (__CFString)afterTimeInterval:(double)interval;
+ (id)_storeDescriptionForConfiguration:(void *)configuration storeName:;
+ (id)createWithPersistentStoreDescriptions:(uint64_t)descriptions;
+ (id)getPersistentCloudKitContainerOptionsForStore:(id)store userDefaults:(id)defaults;
+ (id)logCategory;
+ (id)productionManagedObjectModelURL;
+ (id)sharedInstanceWithoutLiveCloudKit;
+ (id)storeNameForConfiguration:(id)configuration;
+ (id)userInitiatedCKOperationConfiguration;
+ (id)userInitiatedVoucherWithLabel:(id)label forEventsOfType:(int64_t)type affectingObjectsMatching:(id)matching;
+ (uint64_t)isError:(void *)error domain:(void *)domain fromError:;
+ (void)cleanUpSharedInstance;
- (BOOL)_pruneStoreHistoryWhenHistoryPercentageOfStoreIsGreaterThan:(int64_t)than storeType:(unint64_t)type;
- (BOOL)_shouldPruneCloudStoreHistory;
- (BOOL)_shouldPruneWorkingStoreHistory;
- (BOOL)isRelatedContext:(id)context;
- (HMCContext)contextWithRootPartition;
- (HMDCoreData)initWithCloudKitContainer:(id)container notificationCenter:(id)center userDefaults:(id)defaults automaticallyAttachSetupVouchers:(BOOL)vouchers;
- (NSPersistentStoreCoordinator)coordinator;
- (NSSet)allContexts;
- (id)_applyVoucherForModel:(id)model modelID:(id)d eventType:(int64_t)type storeType:(unint64_t)storeType;
- (id)_currentNotificationListeners;
- (id)contextWithHomeUUID:(id)d;
- (id)dumpConfiguration:(id)configuration includeFakeModels:(BOOL)models context:(id)context error:(id *)error;
- (id)initWithPersistentStoreDescriptions:(void *)descriptions notificationCenter:(void *)center userDefaults:(uint64_t)defaults automaticallyAttachSetupVouchers:;
- (id)newManagedObjectContext;
- (uint64_t)_storeTypeForStoreIdentifier:(uint64_t)identifier;
- (void)_checkFirstCloudKitImportComplete;
- (void)_expireActivityVoucher:(void *)voucher;
- (void)_expireStoreSetupVouchersForType:(uint64_t)type storeType:;
- (void)_handleChangeNotification:(id)notification;
- (void)_handleCloudKitSetupEvent:(id)event;
- (void)_handleDidResetSyncNotification:(id)notification;
- (void)_handlePersistentCloudKitContainerActivityChangedNotification:(id)notification;
- (void)_handlePersistentCloudKitContainerEventChangedNotification:(id)notification;
- (void)_handleWillResetSyncNotification:(id)notification;
- (void)_markFirstCloudKitImportComplete;
- (void)_resolveFirstCloudKitImportPromise;
- (void)_submitABCEventFailedToLoadPersistentWithReason:(void *)reason withError:;
- (void)addNotificationListener:(id)listener;
- (void)expireStoreSetupVouchers;
- (void)removeNotificationListener:(id)listener;
- (void)setPrivateStoreSetupExportVoucher:(uint64_t)voucher;
- (void)setSharedStoreSetupExportVoucher:(uint64_t)voucher;
- (void)startLoadingStores;
- (void)startWatchingManagedObjectChanges;
- (void)stopWatchingManagedObjectChanges;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCoreData

- (NSPersistentStoreCoordinator)coordinator
{
  container = [(HMDCoreData *)self container];
  persistentStoreCoordinator = [container persistentStoreCoordinator];

  return persistentStoreCoordinator;
}

+ (HMDCoreData)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMDCoreData_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_onceToken != -1)
  {
    dispatch_once(&_onceToken, block);
  }

  v2 = _sharedInstance;

  return v2;
}

- (void)timerDidFire:(id)fire
{
  v23 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  fireCopy = fire;
  dispatch_assert_queue_V2(queue);
  activityTimedOutTimer = self->_activityTimedOutTimer;

  if (activityTimedOutTimer == fireCopy)
  {
    dispatch_assert_queue_V2(self->_queue);
    v7 = self->_activityLogEvent;
    if (v7)
    {
      firstSetupActivity = self->_firstSetupActivity;

      if (firstSetupActivity)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          activityLogEvent = selfCopy->_activityLogEvent;
          v19 = 138543618;
          v20 = v12;
          v21 = 2112;
          v22 = activityLogEvent;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Cloudkit setup activity timedout. Submit cloudkit setup activity metric %@", &v19, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
        v15 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v15 submitLogEvent:selfCopy->_activityLogEvent error:v14];

        selfCopy->_firstSetupActivity = 0;
        v16 = selfCopy->_activityLogEvent;
        selfCopy->_activityLogEvent = 0;

        activityIdentifier = selfCopy->_activityIdentifier;
        selfCopy->_activityIdentifier = 0;
      }
    }

    objc_storeStrong(&self->_activityTimedOutTimer, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handlePersistentCloudKitContainerActivityChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDCoreData__handlePersistentCloudKitContainerActivityChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __77__HMDCoreData__handlePersistentCloudKitContainerActivityChangedNotification___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 36) & 1) != 0)
  {
    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKeyedSubscript:@"activityDictionary"];

    if (!v4)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 32);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = *(a1 + 40);
        *buf = 138543618;
        v75 = v30;
        v76 = 2112;
        v77 = v31;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@No activityDictionary for notification: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      goto LABEL_42;
    }

    v5 = [[HMDCoreDataCloudKitSetupActivity alloc] initWithDictionary:v4];
    v6 = [(HMDCoreDataCloudKitSetupActivity *)v5 activityType];

    if (!v6)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 32);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v75 = v35;
        v76 = 2112;
        v77 = v4;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@No activity type for activityDictionary: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      goto LABEL_41;
    }

    v7 = [(HMDCoreDataCloudKitSetupActivity *)v5 activityType];
    v8 = [v7 isEqual:@"event"];

    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = v5;
      if (!v9)
      {
        goto LABEL_40;
      }

      dispatch_assert_queue_V2(*(v9 + 144));
      v11 = [(HMDCoreDataCloudKitSetupActivity *)v10 endDate];

      if (v11)
      {
        if (*(v9 + 36))
        {
          v12 = [(HMDCoreDataCloudKitSetupActivity *)v10 endDate];
          v13 = [(HMDCoreDataCloudKitSetupActivity *)v10 startDate];
          [v12 timeIntervalSinceDate:v13];
          v15 = v14;

          v16 = &OBJC_IVAR___HMDHAPAccessory__accessoryFlags;
          v17 = *(v9 + 168);
          v18 = [(HMDCoreDataCloudKitSetupActivity *)v10 activityType];
          [v17 setDurationForPhase:v18 duration:v15];

          v19 = [(HMDCoreDataCloudKitSetupActivity *)v10 error];

          v20 = objc_autoreleasePoolPush();
          v21 = v9;
          v22 = HMFGetOSLogHandle();
          v23 = v22;
          if (v19)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              v25 = *(v21 + 21);
              v73 = v25;
              v26 = [(HMDCoreDataCloudKitSetupActivity *)v10 error];
              *buf = 138543874;
              v75 = v24;
              v76 = 2112;
              v77 = v25;
              v16 = &OBJC_IVAR___HMDHAPAccessory__accessoryFlags;
              v78 = 2112;
              v79 = v26;
              _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Submit cloudkit setup activity metric %@, with error: %@", buf, 0x20u);

LABEL_36:
            }
          }

          else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v24 = HMFGetLogIdentifier();
            v67 = *(v21 + 21);
            *buf = 138543618;
            v75 = v24;
            v76 = 2112;
            v77 = v67;
            _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Submit cloudkit setup activity metric %@", buf, 0x16u);
            goto LABEL_36;
          }

          objc_autoreleasePoolPop(v20);
          v68 = +[HMDMetricsManager sharedLogEventSubmitter];
          v69 = *&v21[v16[410]];
          v70 = [(HMDCoreDataCloudKitSetupActivity *)v10 error];
          [v68 submitLogEvent:v69 error:v70];

          objc_storeStrong(&v21[v16[410]], 0);
          objc_storeStrong(v21 + 20, 0);
          v21[36] = 0;
        }

LABEL_40:

        goto LABEL_41;
      }

      if (*(v9 + 160))
      {
        v51 = objc_autoreleasePoolPush();
        v52 = v9;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543362;
          v75 = v54;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Cloudkit setup activity is ongoing", buf, 0xCu);
        }

        v55 = v51;
LABEL_32:
        objc_autoreleasePoolPop(v55);
        goto LABEL_40;
      }

      v60 = +[HMDMainDriver driver];
      v61 = [v60 currentAccessorySetupMetricDispatcher];
      v49 = [v61 setupSessionIdentifier];

      v62 = [HMDCoreDataCloudKitSetupActivityLogEvent alloc];
      v63 = [(HMDCoreDataCloudKitSetupActivity *)v10 identifier];
      v64 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)v62 initWithActivityIdentifier:v63 setupSessionIdentifier:v49];
      objc_storeStrong((v9 + 168), v64);

      v65 = [(HMDCoreDataCloudKitSetupActivity *)v10 identifier];
      objc_storeStrong((v9 + 160), v65);

      v66 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:900.0];
      objc_storeStrong((v9 + 152), v66);

      [*(v9 + 152) setDelegate:v9];
      [*(v9 + 152) setDelegateQueue:*(v9 + 144)];
      [*(v9 + 152) resume];
    }

    else
    {
      v36 = [(HMDCoreDataCloudKitSetupActivity *)v5 activityType];
      v37 = [v36 isEqual:@"setup-phase"];

      if (!v37)
      {
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v38 = *(a1 + 32);
      v10 = v5;
      if (!v38)
      {
        goto LABEL_40;
      }

      dispatch_assert_queue_V2(*(v38 + 144));
      if (!*(v38 + 160))
      {
        goto LABEL_40;
      }

      v39 = [(HMDCoreDataCloudKitSetupActivity *)v10 parentActivityIdentifier];
      v40 = [v39 isEqual:*(v38 + 160)];

      if ((v40 & 1) == 0)
      {
        v56 = objc_autoreleasePoolPush();
        v57 = v38;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543362;
          v75 = v59;
          _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@Received setup-phase of different Cloudkit setup activity", buf, 0xCu);
        }

        v55 = v56;
        goto LABEL_32;
      }

      v41 = [(HMDCoreDataCloudKitSetupActivity *)v10 endDate];

      if (v41)
      {
        v42 = [(HMDCoreDataCloudKitSetupActivity *)v10 endDate];
        v43 = [(HMDCoreDataCloudKitSetupActivity *)v10 startDate];
        [v42 timeIntervalSinceDate:v43];
        v45 = v44;

        v46 = *(v38 + 168);
        v47 = [(HMDCoreDataCloudKitSetupActivity *)v10 phase];
        [v46 setDurationForPhase:v47 duration:v45];

        if ([(HMDCoreDataCloudKitSetupActivity *)v10 succeeded])
        {
          goto LABEL_40;
        }

        v48 = *(v38 + 168);
        v49 = [(HMDCoreDataCloudKitSetupActivity *)v10 phase];
        v50 = [(HMDCoreDataCloudKitSetupActivity *)v10 error];
        [v48 setErrorForPhase:v49 error:v50];
      }

      else
      {
        v71 = *(v38 + 168);
        v49 = [(HMDCoreDataCloudKitSetupActivity *)v10 phase];
        [v71 setDurationForPhase:v49 duration:-1.0];
      }
    }

    goto LABEL_40;
  }

LABEL_43:
  v72 = *MEMORY[0x277D85DE8];
}

- (id)dumpConfiguration:(id)configuration includeFakeModels:(BOOL)models context:(id)context error:(id *)error
{
  configurationCopy = configuration;
  contextCopy = context;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__94354;
  v35 = __Block_byref_object_dispose__94355;
  v36 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke;
  v25[3] = &unk_278677968;
  v12 = contextCopy;
  v26 = v12;
  v13 = configurationCopy;
  v27 = v13;
  v29 = &v31;
  modelsCopy = models;
  v14 = dictionary;
  v28 = v14;
  [v12 performBlockAndWait:v25];
  v15 = v32[5];
  if (v15)
  {
    v16 = 0;
    if (error)
    {
      *error = v15;
    }
  }

  else
  {
    allKeys = [v14 allKeys];
    v18 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke_6;
    v22[3] = &unk_278677990;
    v20 = v19;
    v23 = v20;
    v24 = v14;
    [v18 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];
    v16 = [v20 componentsJoinedByString:@"\n"];
  }

  _Block_object_dispose(&v31, 8);

  return v16;
}

void __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentStoreCoordinator];
  v4 = [v3 managedObjectModel];
  v5 = [v4 entitiesForConfiguration:*(a1 + 40)];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke_2;
  v8[3] = &unk_278677940;
  v9 = *(a1 + 32);
  v11 = *(a1 + 64);
  v7 = *(a1 + 48);
  v6 = v7;
  v10 = v7;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];

  objc_autoreleasePoolPop(v2);
}

void __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:a2];
  [v2 addObject:v3];
}

void __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 isAbstract] & 1) == 0)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__94354;
    v28 = __Block_byref_object_dispose__94355;
    v29 = 0;
    v7 = [v6 relationshipsByName];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke_3;
    v23[3] = &unk_2786778C8;
    v23[4] = &v24;
    [v7 enumerateKeysAndObjectsUsingBlock:v23];

    v8 = objc_alloc(MEMORY[0x277CBE428]);
    v9 = [v6 name];
    v10 = [v8 initWithEntityName:v9];

    [v10 setFetchBatchSize:10];
    [v10 setReturnsObjectsAsFaults:0];
    if (v25[5])
    {
      [v10 setRelationshipKeyPathsForPrefetching:?];
    }

    v11 = *(a1 + 32);
    v22 = 0;
    v12 = [v11 executeFetchRequest:v10 error:&v22];
    v13 = v22;
    v14 = v13;
    if (v12)
    {
      if ([v12 count])
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke_4;
        v18[3] = &unk_278677918;
        v21 = *(a1 + 56);
        v20 = &v24;
        v19 = *(a1 + 40);
        [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
      }
    }

    else
    {
      v15 = HMDSanitizeCoreDataError(v13);
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *a4 = 1;
    }

    _Block_object_dispose(&v24, 8);
  }
}

void __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if ([a3 isToMany])
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB18] array];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

void __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 48) & 1) != 0 || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v4 = 0) : (v4 = v3), v5 = v4, v6 = [v5 isFake], v5, (v6 & 1) == 0))
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke_5;
    v12[3] = &unk_2786778F0;
    v8 = v3;
    v13 = v8;
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];
    v9 = [v8 debugDescription];
    v10 = *(a1 + 32);
    v11 = [v8 objectID];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }
}

void __65__HMDCoreData_dumpConfiguration_includeFakeModels_context_error___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) valueForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  [v4 count];
}

- (void)removeNotificationListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)self->_listeners removeObject:listenerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addNotificationListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)self->_listeners addObject:listenerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSSet)allContexts
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v3, 120, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  dictionaryRepresentation = [v5 dictionaryRepresentation];

  os_unfair_lock_unlock(&self->_lock);
  v7 = MEMORY[0x277CBEB98];
  allValues = [dictionaryRepresentation allValues];
  v9 = [v7 setWithArray:allValues];

  return v9;
}

- (BOOL)isRelatedContext:(id)context
{
  contextCopy = context;
  coordinator = [(HMDCoreData *)self coordinator];
  if (contextCopy)
  {
    do
    {
      persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];

      v7 = persistentStoreCoordinator == coordinator;
      if (v7)
      {
        break;
      }

      parentContext = [contextCopy parentContext];

      contextCopy = parentContext;
    }

    while (parentContext);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contextWithHomeUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v5, 120, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 objectForKey:dCopy];

  if (!v8)
  {
    v9 = HMDWorkingContextNameForHomeUUID(dCopy);
    v8 = __contextWithContextName(self, v9);

    if (self)
    {
      v11 = objc_getProperty(self, v10, 120, 1);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v12 setObject:v8 forKey:dCopy];
  }

  v13 = v8;

  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (HMCContext)contextWithRootPartition
{
  hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v4, 120, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  v7 = [v6 objectForKey:hmf_zeroUUID];

  if (!v7)
  {
    v7 = __contextWithContextName(self, @"HomeManager");
    if (self)
    {
      v9 = objc_getProperty(self, v8, 120, 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v10 setObject:v7 forKey:hmf_zeroUUID];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)newManagedObjectContext
{
  v3 = [[HMDManagedObjectContext alloc] initWithConcurrencyType:1];
  coordinator = [(HMDCoreData *)self coordinator];
  [(HMDManagedObjectContext *)v3 setPersistentStoreCoordinator:coordinator];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__HMDCoreData_newManagedObjectContext__block_invoke;
  v8[3] = &unk_27868A750;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [(HMDManagedObjectContext *)v5 performBlockAndWait:v8];
  v6 = v5;

  return v6;
}

void __38__HMDCoreData_newManagedObjectContext__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setHmd_coreData:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)_handleDidResetSyncNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = reasonFromResetSyncNotification(notificationCopy);
  v6 = stringFromResetSyncReason(v5);
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Core Data has finished resetting all of our CloudKit data with reason: %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if ((v5 - 1) >= 2)
  {
    v11 = [[HMDLogEventCoreDataSignificantEvent alloc] initWithReason:3];
    [(HMDLogEventCoreDataSignificantEvent *)v11 setContext:v6];
    v12 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v12 submitLogEvent:v11];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleWillResetSyncNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = reasonFromResetSyncNotification(notificationCopy);
  v6 = stringFromResetSyncReason(v5);
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Core Data is about to reset all of our CloudKit data with reason: %{public}@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)expireStoreSetupVouchers
{
  [(HMDCoreData *)self _expireStoreSetupVouchersForType:0 storeType:?];

  [(HMDCoreData *)self _expireStoreSetupVouchersForType:1 storeType:?];
}

- (void)_expireStoreSetupVouchersForType:(uint64_t)type storeType:
{
  v31 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock_with_options();
    if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      if (a2 <= 1)
      {
        v6 = 0;
        if (!type)
        {
          goto LABEL_12;
        }

LABEL_8:
        v7 = &OBJC_IVAR___HMDCoreData__sharedStoreSetupImportVoucher;
LABEL_13:
        os_unfair_lock_assert_owner((self + 16));
        v8 = *(self + *v7);
        objc_storeStrong((self + *v7), 0);
        goto LABEL_14;
      }

      v6 = 0;
    }

    else
    {
      os_unfair_lock_assert_owner((self + 16));
      if (type)
      {
        v6 = *(self + 56);
        [(HMDCoreData *)self setSharedStoreSetupExportVoucher:?];
        if (a2 < 2)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v6 = *(self + 40);
        [(HMDCoreData *)self setPrivateStoreSetupExportVoucher:?];
        if (a2 < 2)
        {
LABEL_12:
          v7 = &OBJC_IVAR___HMDCoreData__privateStoreSetupImportVoucher;
          goto LABEL_13;
        }
      }
    }

    v8 = 0;
LABEL_14:
    os_unfair_lock_unlock((self + 16));
    if (v6 && v8)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v13 = v12;
        v14 = @"Cloud";
        if (type == 1)
        {
          v14 = @"CloudShared";
        }

        v27 = 138543618;
        v28 = v12;
        v29 = 2112;
        v30 = v14;
        v15 = v14;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Expiring both export and import store setup vouchers for %@ store", &v27, 0x16u);
      }
    }

    else if (v6)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        v18 = v17;
        v19 = @"Cloud";
        if (type == 1)
        {
          v19 = @"CloudShared";
        }

        v27 = 138543618;
        v28 = v17;
        v29 = 2112;
        v30 = v19;
        v20 = v19;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Expiring export store setup vouchers for %@ store", &v27, 0x16u);
      }
    }

    else
    {
      if (!v8)
      {
LABEL_31:

        goto LABEL_32;
      }

      v9 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        v23 = v22;
        v24 = @"Cloud";
        if (type == 1)
        {
          v24 = @"CloudShared";
        }

        v27 = 138543618;
        v28 = v22;
        v29 = 2112;
        v30 = v24;
        v25 = v24;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Expiring import store setup vouchers for %@ store", &v27, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCoreData *)self _expireActivityVoucher:v6];
    [(HMDCoreData *)self _expireActivityVoucher:v8];
    goto LABEL_31;
  }

LABEL_32:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)setPrivateStoreSetupExportVoucher:(uint64_t)voucher
{
  v4 = a2;
  if (voucher)
  {
    os_unfair_lock_assert_owner((voucher + 16));
    objc_storeStrong((voucher + 40), a2);
  }
}

- (void)setSharedStoreSetupExportVoucher:(uint64_t)voucher
{
  v4 = a2;
  if (voucher)
  {
    os_unfair_lock_assert_owner((voucher + 16));
    objc_storeStrong((voucher + 56), a2);
  }
}

- (void)_expireActivityVoucher:(void *)voucher
{
  if (a2)
  {
    v4 = a2;
    container = [voucher container];
    [container expireActivityVoucher:v4];
  }
}

- (void)_handleCloudKitSetupEvent:(id)event
{
  v56 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  endDate = [eventCopy endDate];

  if (endDate)
  {
    v7 = self->_logger;
    v8 = v7;
    setupSignpostID = self->_setupSignpostID;
    if (setupSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      storeIdentifier = [eventCopy storeIdentifier];
      [eventCopy succeeded];
      v46 = HMFBooleanToString();
      error = [eventCopy error];
      if (error)
      {
        v11 = MEMORY[0x277CCABB0];
        error2 = [eventCopy error];
        null = [v11 numberWithInteger:{objc_msgSend(error2, "code")}];
      }

      else
      {
        null = [MEMORY[0x277CBEB68] null];
        error2 = null;
      }

      error3 = [eventCopy error];
      if (error3)
      {
        error4 = [eventCopy error];
        [error4 domain];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v22 = ;
      *buf = 138413058;
      v49 = storeIdentifier;
      v50 = 2112;
      v51 = v46;
      v52 = 2112;
      v53 = null;
      v54 = 2112;
      v55 = v22;
      _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_INTERVAL_END, setupSignpostID, "CoreDataCloudTransformSetup", "storeIdentifier=%{signpost.description:attribute}@ succeeded=%{signpost.description:attribute}@ errorCode=%{signpost.description:attribute}@ errorDomain=%{signpost.description:attribute}@ ", buf, 0x2Au);
      if (error3)
      {

        v22 = error4;
      }

      if (error)
      {
      }
    }

    self->_setupSignpostID = 0;
    storeIdentifier2 = [eventCopy storeIdentifier];
    cloudPrivateStore = [(HMDCoreData *)self cloudPrivateStore];
    identifier = [cloudPrivateStore identifier];
    if ([(HMDCoreDataCloudKitOperationLogEvent *)storeIdentifier2 isEqualToString:identifier])
    {
      firstSetupEvent = self->_firstSetupEvent;

      v27 = 0.0;
      if (!firstSetupEvent)
      {
        goto LABEL_28;
      }

      HMFUptime();
      v27 = v28 - self->_startTime;
      storeIdentifier2 = [[HMDCoreDataCloudKitOperationLogEvent alloc] initWithOperationType:3 interval:v27];
      v29 = +[HMDMetricsManager sharedLogEventSubmitter];
      error5 = [eventCopy error];
      [v29 submitLogEvent:storeIdentifier2 error:error5];

      if (([eventCopy succeeded] & 1) == 0 && v27 <= 300.0)
      {
LABEL_27:

LABEL_28:
        succeeded = [eventCopy succeeded];
        v34 = objc_autoreleasePoolPush();
        selfCopy = self;
        v36 = HMFGetOSLogHandle();
        v37 = v36;
        if (succeeded)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v38 = HMFGetLogIdentifier();
            storeIdentifier3 = [eventCopy storeIdentifier];
            v40 = [HMDCoreData afterTimeInterval:v27];
            *buf = 138543874;
            v49 = v38;
            v50 = 2114;
            v51 = storeIdentifier3;
            v52 = 2112;
            v53 = v40;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Finished setup for store with identifier %{public}@ %@", buf, 0x20u);

LABEL_33:
          }
        }

        else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          storeIdentifier4 = [eventCopy storeIdentifier];
          error6 = [eventCopy error];
          v43 = [HMDCoreData afterTimeInterval:v27];
          *buf = 138544130;
          v49 = v38;
          v50 = 2114;
          v51 = storeIdentifier4;
          v52 = 2114;
          v53 = error6;
          v54 = 2112;
          v55 = v43;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Setup failed for store with identifier %{public}@: %{public}@ %@", buf, 0x2Au);

          goto LABEL_33;
        }

        objc_autoreleasePoolPop(v34);
        goto LABEL_35;
      }

      v31 = +[HMDMainDriver driver];
      cloudPrivateStore = [v31 currentAccessorySetupMetricDispatcher];

      error7 = [eventCopy error];
      [cloudPrivateStore markFirstCoreDataContainerSetupDuration:error7 error:v27];

      self->_firstSetupEvent = 0;
    }

    else
    {

      v27 = 0.0;
    }

    goto LABEL_27;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    storeIdentifier5 = [eventCopy storeIdentifier];
    *buf = 138543618;
    v49 = v16;
    v50 = 2114;
    v51 = storeIdentifier5;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Beginning setup for store with identifier %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  logger = selfCopy2->_logger;
  if (os_signpost_enabled(logger))
  {
    v19 = logger;
    storeIdentifier6 = [eventCopy storeIdentifier];
    *buf = 138412290;
    v49 = storeIdentifier6;
    _os_signpost_emit_with_name_impl(&dword_229538000, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CoreDataCloudTransformSetup", "storeIdentifier=%{signpost.description:attribute}@ ", buf, 0xCu);
  }

  selfCopy2->_setupSignpostID = 0xEEEEB0B5B2B2EEEELL;
LABEL_35:

  v44 = *MEMORY[0x277D85DE8];
}

+ (__CFString)afterTimeInterval:(double)interval
{
  objc_opt_self();
  if (interval <= 0.0)
  {
    v2 = &stru_283CF9D50;
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"after: %fs", *&interval];
  }

  return v2;
}

- (void)_handlePersistentCloudKitContainerEventChangedNotification:(id)notification
{
  v45 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = *MEMORY[0x277CBE1F8];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE1F8]];

  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() & 1;
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (!v9)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v40 = v21;
        v41 = 2114;
        v42 = v6;
        v43 = 2112;
        v44 = notificationCopy;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type for '%{public}@' in notification: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      goto LABEL_28;
    }

    storeIdentifier = [v8 storeIdentifier];
    type = [v8 type];
    if (type == 1)
    {
      v22 = 1;
    }

    else
    {
      if (!type)
      {
        [(HMDCoreData *)self _handleCloudKitSetupEvent:v8];
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      v22 = 0;
    }

    endDate = [v8 endDate];

    if (endDate)
    {
      endDate2 = [v8 endDate];
      startDate = [v8 startDate];
      [endDate2 timeIntervalSinceDate:startDate];
      v27 = v26;

      if ([v8 succeeded])
      {
        error = 0;
      }

      else
      {
        error = [v8 error];
      }

      v29 = [(HMDCoreData *)self _storeTypeForStoreIdentifier:storeIdentifier];
      if ([v8 succeeded] && (isHH2MigrationInProgress() & 1) == 0 && v29 <= 1)
      {
        -[HMDCoreData _expireStoreSetupVouchersForType:storeType:](self, [v8 type], v29);
      }
    }

    else
    {
      [(HMDCoreData *)self _storeTypeForStoreIdentifier:storeIdentifier];
      error = 0;
      v27 = 0;
    }

    _currentNotificationListeners = [(HMDCoreData *)self _currentNotificationListeners];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __74__HMDCoreData__handlePersistentCloudKitContainerEventChangedNotification___block_invoke;
    v33[3] = &unk_278677878;
    v37 = endDate == 0;
    v38 = v22;
    v33[4] = self;
    v36 = v27;
    v34 = storeIdentifier;
    v35 = error;
    v31 = error;
    [_currentNotificationListeners hmf_enumerateWithAutoreleasePoolUsingBlock:v33];

    goto LABEL_27;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v40 = v17;
    v41 = 2114;
    v42 = v6;
    v43 = 2112;
    v44 = notificationCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@No '%{public}@' for notification: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
LABEL_29:

  v32 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_storeTypeForStoreIdentifier:(uint64_t)identifier
{
  v3 = a2;
  if (identifier)
  {
    cloudPrivateStore = [identifier cloudPrivateStore];
    identifier = [cloudPrivateStore identifier];
    v6 = [v3 isEqualToString:identifier];

    if (v6)
    {
      identifier = 0;
    }

    else
    {
      cloudSharedStore = [identifier cloudSharedStore];
      identifier2 = [cloudSharedStore identifier];
      v9 = [v3 isEqualToString:identifier2];

      if (v9)
      {
        identifier = 1;
      }

      else
      {
        workingStore = [identifier workingStore];
        identifier3 = [workingStore identifier];
        v12 = [v3 isEqualToString:identifier3];

        if (v12)
        {
          identifier = 2;
        }

        else
        {
          identifier = 3;
        }
      }
    }
  }

  return identifier;
}

- (id)_currentNotificationListeners
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    allObjects = [*(self + 112) allObjects];
    os_unfair_lock_unlock((self + 16));
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

void __74__HMDCoreData__handlePersistentCloudKitContainerEventChangedNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 65);
  v5 = v3;
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 65))
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 coreData:*(a1 + 32) cloudKitImportStartedForStoreWithIdentifier:*(a1 + 40)];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v5 coreData:*(a1 + 32) cloudKitExportStartedForStoreWithIdentifier:*(a1 + 40)];
    }
  }

  else if (*(a1 + 65))
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 coreData:*(a1 + 32) cloudKitImportFinishedForStoreWithIdentifier:*(a1 + 40) duration:*(a1 + 48) error:*(a1 + 56)];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v5 coreData:*(a1 + 32) cloudKitExportFinishedForStoreWithIdentifier:*(a1 + 40) duration:*(a1 + 48) error:*(a1 + 56)];
  }
}

- (void)_handleChangeNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE300]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = v8;
    if (self)
    {
      _currentNotificationListeners = [(HMDCoreData *)self _currentNotificationListeners];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __51__HMDCoreData__handleChangeForStoreWithIdentifier___block_invoke;
      v23 = &unk_278677850;
      selfCopy = self;
      v11 = v9;
      v25 = v11;
      [_currentNotificationListeners hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
      workingStore = [(HMDCoreData *)self workingStore];
      identifier = [workingStore identifier];
      LODWORD(v11) = [v11 isEqualToString:identifier];

      if (v11)
      {
        os_unfair_lock_lock_with_options();
        os_unfair_lock_assert_owner(&self->_lock);
        firstCloudKitImportComplete = self->_firstCloudKitImportComplete;
        os_unfair_lock_unlock(&self->_lock);
        if (!firstCloudKitImportComplete)
        {
          v15 = dispatch_get_global_queue(25, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __51__HMDCoreData__handleChangeForStoreWithIdentifier___block_invoke_2;
          block[3] = &unk_27868A728;
          block[4] = self;
          dispatch_async(v15, block);
        }
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = notificationCopy;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Notification with unexpected userInfo: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __51__HMDCoreData__handleChangeForStoreWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 coreData:*(a1 + 32) persistentStoreWithIdentifierDidChange:*(a1 + 40)];
  }
}

- (void)_checkFirstCloudKitImportComplete
{
  if (self)
  {
    newManagedObjectContext = [self newManagedObjectContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __48__HMDCoreData__checkFirstCloudKitImportComplete__block_invoke;
    v4[3] = &unk_27868A750;
    v4[4] = self;
    v5 = newManagedObjectContext;
    v3 = newManagedObjectContext;
    [v3 performBlock:v4];
  }
}

void __48__HMDCoreData__checkFirstCloudKitImportComplete__block_invoke(uint64_t a1)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Fetching cloud sync metadata", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = +[MKFCloudSyncMetadata fetchRequest];
  v39[0] = @"historyTokenForCloudStore";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [v6 setPropertiesToFetch:v7];

  v8 = [*(a1 + 32) workingStore];
  v38 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [v6 setAffectedStores:v9];

  v10 = *(a1 + 40);
  v33 = 0;
  v11 = [v10 executeFetchRequest:v6 error:&v33];
  v12 = v33;
  if (v11)
  {
    if ([v11 count] < 2)
    {
      goto LABEL_11;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v16;
      v36 = 2114;
      v37 = v11;
      v17 = "%{public}@Fetched too many cloud sync metadata objects: %{public}@";
      v18 = v15;
      v19 = OS_LOG_TYPE_FAULT;
LABEL_9:
      _os_log_impl(&dword_229538000, v18, v19, v17, buf, 0x16u);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v16;
      v36 = 2114;
      v37 = v12;
      v17 = "%{public}@Failed to fetch cloud sync metadata: %{public}@";
      v18 = v15;
      v19 = OS_LOG_TYPE_ERROR;
      goto LABEL_9;
    }
  }

  objc_autoreleasePoolPop(v13);
LABEL_11:
  v20 = [v11 firstObject];

  v21 = [v20 historyTokenForCloudStore];

  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v25;
      v26 = "%{public}@Cloud sync has previous history token";
LABEL_21:
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, v26, buf, 0xCu);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v27 = *(a1 + 32);
  if (!v27 || (*(v27 + 33) & 1) == 0)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v25;
      v26 = "%{public}@Not using CloudKit so marking first import complete";
      goto LABEL_21;
    }

LABEL_22:

    objc_autoreleasePoolPop(v22);
    [(HMDCoreData *)*(a1 + 32) _markFirstCloudKitImportComplete];
    goto LABEL_23;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = *(a1 + 32);
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v31;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@No previous cloud sync token, waiting for initial import", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
LABEL_23:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_markFirstCloudKitImportComplete
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self)
  {
LABEL_17:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner((self + 16));
  if (*(self + 32) != 1)
  {
    os_unfair_lock_assert_owner((self + 16));
    *(self + 32) = 1;
    os_unfair_lock_unlock((self + 16));
    allContexts = [self allContexts];
    if ([allContexts count])
    {
      v4 = objc_autoreleasePoolPush();
      selfCopy = self;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v8 = [allContexts count];
        v9 = [allContexts count];
        v10 = "s";
        *buf = 138543874;
        v21 = v7;
        if (v9 == 1)
        {
          v10 = "";
        }

        v22 = 2048;
        v23 = v8;
        v24 = 2080;
        v25 = v10;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Flushing %ld context%s before resolving first CloudKit import promise", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v4);
      v11 = dispatch_group_create();
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __47__HMDCoreData__markFirstCloudKitImportComplete__block_invoke;
      v18[3] = &unk_2786778A0;
      v18[4] = selfCopy;
      v19 = v11;
      v12 = v11;
      [allContexts hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
      v13 = __ROR8__(HMDCurrentQOSWithFloor() - 9, 3);
      if (v13 > 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = qword_22A587548[v13];
      }

      v15 = dispatch_get_global_queue(v14, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__HMDCoreData__markFirstCloudKitImportComplete__block_invoke_367;
      block[3] = &unk_27868A728;
      block[4] = selfCopy;
      dispatch_group_notify(v12, v15, block);
    }

    else
    {
      [(HMDCoreData *)self _resolveFirstCloudKitImportPromise];
    }

    goto LABEL_17;
  }

  v2 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock((self + 16));
}

- (void)_resolveFirstCloudKitImportPromise
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    selfCopy = self;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@First CloudKit import promise resolved", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = selfCopy[1];
    if (os_signpost_enabled(v6))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_229538000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CoreDataFirstImportComplete", "", &v12, 2u);
    }

    v7 = selfCopy[16];
    futureWithNoValue = [MEMORY[0x277D0F7C0] futureWithNoValue];
    [v7 resolveWithFuture:futureWithNoValue];

    v9 = +[HMDMainDriver driver];
    currentAccessorySetupMetricDispatcher = [v9 currentAccessorySetupMetricDispatcher];

    [currentAccessorySetupMetricDispatcher markSetupEndStage:13 error:0];
    [currentAccessorySetupMetricDispatcher markSetupBeginStage:7 error:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __47__HMDCoreData__markFirstCloudKitImportComplete__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 name];
    *buf = 138543618;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Flushing '%@' context before resolving first CloudKit import promise", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_enter(*(a1 + 40));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__HMDCoreData__markFirstCloudKitImportComplete__block_invoke_365;
  v12[3] = &unk_27868A010;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v3;
  v14 = v9;
  v10 = v3;
  [v10 performBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __47__HMDCoreData__markFirstCloudKitImportComplete__block_invoke_365(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Flushed '%@' context", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  dispatch_group_leave(*(a1 + 48));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopWatchingManagedObjectChanges
{
  notificationCenter = [(HMDCoreData *)self notificationCenter];
  [notificationCenter removeObserver:self];
}

- (void)startWatchingManagedObjectChanges
{
  notificationCenter = [(HMDCoreData *)self notificationCenter];
  v4 = *MEMORY[0x277CBE1F0];
  container = [(HMDCoreData *)self container];
  [notificationCenter addObserver:self selector:sel__handlePersistentCloudKitContainerEventChangedNotification_ name:v4 object:container];

  notificationCenter2 = [(HMDCoreData *)self notificationCenter];
  v7 = *MEMORY[0x277CBE260];
  container2 = [(HMDCoreData *)self container];
  persistentStoreCoordinator = [container2 persistentStoreCoordinator];
  [notificationCenter2 addObserver:self selector:sel__handleChangeNotification_ name:v7 object:persistentStoreCoordinator];

  notificationCenter3 = [(HMDCoreData *)self notificationCenter];
  [notificationCenter3 addObserver:self selector:sel__handleWillResetSyncNotification_ name:*MEMORY[0x277CBE140] object:0];

  notificationCenter4 = [(HMDCoreData *)self notificationCenter];
  [notificationCenter4 addObserver:self selector:sel__handleDidResetSyncNotification_ name:*MEMORY[0x277CBE130] object:0];

  notificationCenter5 = [(HMDCoreData *)self notificationCenter];
  [notificationCenter5 addObserver:self selector:sel__handlePersistentCloudKitContainerActivityChangedNotification_ name:*MEMORY[0x277CBE1E8] object:0];
}

- (void)startLoadingStores
{
  v89 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (self->_automaticallyAttachSetupVouchers && self->_isUsingLiveCloudKit)
    {
      v3 = isHH2MigrationInProgress();
    }

    else
    {
      v3 = 0;
    }

    container = [(HMDCoreData *)self container];
    persistentStoreDescriptions = [container persistentStoreDescriptions];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __23__HMDCoreData__preLoad__block_invoke;
    v84 = &unk_278677788;
    LOBYTE(v86) = v3;
    selfCopy = self;
    [persistentStoreDescriptions hmf_enumerateWithAutoreleasePoolUsingBlock:buf];

    if (v3)
    {
      self->_firstSetupEvent = 1;
    }

    HMFUptime();
    self->_startTime = v6;
    self->_firstSetupActivity = 1;
    activityTimedOutTimer = self->_activityTimedOutTimer;
    self->_activityTimedOutTimer = 0;

    activityIdentifier = self->_activityIdentifier;
    self->_activityIdentifier = 0;

    activityLogEvent = self->_activityLogEvent;
    self->_activityLogEvent = 0;

    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__94354;
    v73 = __Block_byref_object_dispose__94355;
    v74 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 4;
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      container2 = [(HMDCoreData *)selfCopy2 container];
      persistentStoreDescriptions2 = [container2 persistentStoreDescriptions];
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = persistentStoreDescriptions2;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Loading persistent stores: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    container3 = [(HMDCoreData *)selfCopy2 container];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __20__HMDCoreData__load__block_invoke;
    v84 = &unk_2786777B0;
    selfCopy = selfCopy2;
    v86 = &v69;
    v87 = &v61;
    v88 = &v65;
    [container3 loadPersistentStoresWithCompletionHandler:buf];

    v17 = v70[5];
    if (v17)
    {
      v18 = v62[3];
      v19 = v17;
      v20 = [[HMDCoreDataLoadErrorLogEvent alloc] initWithReason:v18];
      [(HMMLogEvent *)v20 setError:v19];

      [HMDMetricsManager submitMinimalCoreAnalyticsEvent:v20];
      v21 = +[HMDMetricsManager defaultRadarInitiator];
      LOBYTE(v60) = 1;
      [v21 requestRadarWithDisplayReason:@"persistent stores failed to load" radarTitle:@"Failed to load persistent stores" componentName:@"HomeKit" componentVersion:@"Data Model" componentID:834211 attachments:0 waitForResponse:v60];
    }

    if (v66[3])
    {
      [HMDResetConfigPostCleanup writePostCleanupRecordWithReason:7 steps:?];
      v22 = +[HMDMainDriver driver];
      [v22 relaunch];
    }

    else if (v70[5])
    {
      v53 = objc_autoreleasePoolPush();
      v54 = selfCopy2;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        v56 = HMFGetLogIdentifier();
        domain = [v70[5] domain];
        code = [v70[5] code];
        v59 = v70[5];
        *v75 = 138544130;
        v76 = v56;
        v77 = 2114;
        v78 = domain;
        v79 = 2048;
        v80 = code;
        v81 = 2112;
        v82 = v59;
        _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_FAULT, "%{public}@Failed to load persistent container (%{public}@: %zd): %@", v75, 0x2Au);
      }

      objc_autoreleasePoolPop(v53);
      if ([v70[5] code] == 256)
      {
        [(HMDCoreData *)v54 _submitABCEventFailedToLoadPersistentWithReason:v70[5] withError:?];
      }

      _Exit(1);
    }

    _Block_object_dispose(&v61, 8);
    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v69, 8);

    coordinator = [(HMDCoreData *)selfCopy2 coordinator];
    persistentStores = [coordinator persistentStores];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __24__HMDCoreData__postLoad__block_invoke;
    v84 = &unk_278677800;
    selfCopy = selfCopy2;
    [persistentStores hmf_enumerateWithAutoreleasePoolUsingBlock:buf];

    workingStore = [(HMDCoreData *)selfCopy2 workingStore];
    LODWORD(coordinator) = workingStore == 0;

    if (coordinator)
    {
      goto LABEL_34;
    }

    cloudPrivateStore = [(HMDCoreData *)selfCopy2 cloudPrivateStore];
    v27 = cloudPrivateStore == 0;

    if (v27)
    {
      goto LABEL_34;
    }

    cloudSharedStore = [(HMDCoreData *)selfCopy2 cloudSharedStore];
    v29 = cloudSharedStore == 0;

    if (v29 || ([(HMDCoreData *)selfCopy2 localStore], v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == 0, v30, v31))
    {
LABEL_34:
      _HMFPreconditionFailure();
      __break(1u);
      return;
    }

    if ([(HMDCoreData *)selfCopy2 _shouldPruneWorkingStoreHistory])
    {
      mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
      v33 = [mEMORY[0x277D0F8D0] preferenceForKey:@"workingStoreMaxHistoryPercentage"];
      numberValue = [v33 numberValue];

      v35 = numberValue ? [numberValue integerValue] : 20;
      if ([(HMDCoreData *)selfCopy2 _pruneStoreHistoryWhenHistoryPercentageOfStoreIsGreaterThan:v35 storeType:2])
      {
        v36 = +[HMDHomeKitVersion currentVersion];
        versionString = [v36 versionString];

        userDefaults = [(HMDCoreData *)selfCopy2 userDefaults];
        [userDefaults setObject:versionString forKey:@"workingStoreHistoryPruneRanHomeKitVersionKey"];

        userDefaults2 = [(HMDCoreData *)selfCopy2 userDefaults];
        v40 = [MEMORY[0x277CBEAA8] now];
        v41 = [v40 description];
        [userDefaults2 setObject:v41 forKey:@"workingStoreHistoryPruneRanDateKey"];
      }
    }

    if ([(HMDCoreData *)selfCopy2 _shouldPruneCloudStoreHistory])
    {
      mEMORY[0x277D0F8D0]2 = [MEMORY[0x277D0F8D0] sharedPreferences];
      v43 = [mEMORY[0x277D0F8D0]2 preferenceForKey:@"cloudStoreMaxHistoryPercentage"];
      numberValue2 = [v43 numberValue];

      v45 = numberValue2 ? [numberValue2 integerValue] : 20;
      if ([(HMDCoreData *)selfCopy2 _pruneStoreHistoryWhenHistoryPercentageOfStoreIsGreaterThan:v45 storeType:0])
      {
        v46 = +[HMDHomeKitVersion currentVersion];
        versionString2 = [v46 versionString];

        userDefaults3 = [(HMDCoreData *)selfCopy2 userDefaults];
        [userDefaults3 setObject:versionString2 forKey:@"cloudStoreHistoryPruneRanHomeKitVersionKey"];

        userDefaults4 = [(HMDCoreData *)selfCopy2 userDefaults];
        v50 = [MEMORY[0x277CBEAA8] now];
        v51 = [v50 description];
        [userDefaults4 setObject:v51 forKey:@"cloudStoreHistoryPruneRanDateKey"];
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];

  [(HMDCoreData *)self _checkFirstCloudKitImportComplete];
}

void __24__HMDCoreData__postLoad__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 configurationName];
  v6 = [v5 isEqualToString:@"Working"];

  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_storeStrong((v7 + 80), a2);
    }

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 identifier];
      v13 = [v4 URL];
      v25 = 138543874;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      v29 = 2114;
      v30 = v13;
      v14 = "%{public}@Found working store with identifier %{public}@ at '%{public}@'";
LABEL_11:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, v14, &v25, 0x20u);

LABEL_12:
    }
  }

  else
  {
    v15 = [v4 configurationName];
    v16 = [v15 isEqualToString:@"Local"];

    if (v16)
    {
      v17 = *(a1 + 32);
      if (v17)
      {
        objc_storeStrong((v17 + 104), a2);
      }

      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v4 identifier];
        v13 = [v4 URL];
        v25 = 138543874;
        v26 = v11;
        v27 = 2114;
        v28 = v12;
        v29 = 2114;
        v30 = v13;
        v14 = "%{public}@Found local store with identifier %{public}@ at '%{public}@'";
        goto LABEL_11;
      }
    }

    else
    {
      v19 = [v4 configurationName];
      v20 = [v19 isEqualToString:@"CloudKit"];

      if ((v20 & 1) == 0)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 32);
        v10 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v11 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v11;
        v27 = 2114;
        v28 = v4;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Found store with unexpected configuration: %{public}@", &v25, 0x16u);
        goto LABEL_12;
      }

      v21 = [v4 URL];
      v22 = [v21 lastPathComponent];
      v23 = [v22 containsString:@"shared"];

      v24 = *(a1 + 32);
      if (v23)
      {
        if (v24)
        {
          objc_storeStrong((v24 + 96), a2);
        }

        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 32);
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = HMFGetLogIdentifier();
          v12 = [v4 identifier];
          v13 = [v4 URL];
          v25 = 138543874;
          v26 = v11;
          v27 = 2114;
          v28 = v12;
          v29 = 2114;
          v30 = v13;
          v14 = "%{public}@Found shared cloud store with identifier %{public}@ at '%{public}@'";
          goto LABEL_11;
        }
      }

      else
      {
        if (v24)
        {
          objc_storeStrong((v24 + 88), a2);
        }

        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 32);
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = HMFGetLogIdentifier();
          v12 = [v4 identifier];
          v13 = [v4 URL];
          v25 = 138543874;
          v26 = v11;
          v27 = 2114;
          v28 = v12;
          v29 = 2114;
          v30 = v13;
          v14 = "%{public}@Found private cloud store with identifier %{public}@ at '%{public}@'";
          goto LABEL_11;
        }
      }
    }
  }

LABEL_13:

  objc_autoreleasePoolPop(v8);
  v18 = *MEMORY[0x277D85DE8];
}

void __20__HMDCoreData__load__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 cloudKitContainerOptions];
  [v7 setActivityVouchers:0];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v5 URL];
      v48 = 138543874;
      v49 = v12;
      v50 = 2114;
      v51 = v13;
      v52 = 2112;
      v53 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to load persistent store at '%{public}@': %@", &v48, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v14 = HMDSanitizeCoreDataError(v6);
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    if ([HMDCoreData isDatabaseCorruptedFromError:v6])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v17 = [v5 configuration];
      v18 = [v17 isEqualToString:@"CloudKit"];

      if (v18)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 32);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          v48 = 138543362;
          v49 = v22;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Will clean up with steps for cloudkit stores", &v48, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        v23 = *(*(a1 + 56) + 8);
        v24 = *(v23 + 24) | 0x16;
      }

      else
      {
        v31 = [v5 configuration];
        v32 = [v31 isEqualToString:@"Local"];

        if (v32)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = *(a1 + 32);
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = HMFGetLogIdentifier();
            v48 = 138543362;
            v49 = v36;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Will clean up with steps for local store", &v48, 0xCu);
          }

          objc_autoreleasePoolPop(v33);
          v23 = *(*(a1 + 56) + 8);
          v24 = *(v23 + 24) | 8;
        }

        else
        {
          v37 = [v5 configuration];
          v38 = [v37 isEqualToString:@"Working"];

          v39 = objc_autoreleasePoolPush();
          v40 = *(a1 + 32);
          v41 = HMFGetOSLogHandle();
          v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
          if (v38)
          {
            if (v42)
            {
              v43 = HMFGetLogIdentifier();
              v48 = 138543362;
              v49 = v43;
              _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Will clean up with steps for working store", &v48, 0xCu);
            }

            objc_autoreleasePoolPop(v39);
            v23 = *(*(a1 + 56) + 8);
            v24 = *(v23 + 24) | 2;
          }

          else
          {
            if (v42)
            {
              v44 = HMFGetLogIdentifier();
              v45 = [v5 URL];
              v46 = [v5 configuration];
              v48 = 138543874;
              v49 = v44;
              v50 = 2114;
              v51 = v45;
              v52 = 2114;
              v53 = v46;
              _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Can't decide cleanup steps - unknown store configuration '%{public}@': %{public}@", &v48, 0x20u);
            }

            objc_autoreleasePoolPop(v39);
            v23 = *(*(a1 + 48) + 8);
            v24 = 2;
          }
        }
      }

LABEL_29:
      *(v23 + 24) = v24;
      goto LABEL_30;
    }

    if ([HMDCoreData isDiskFullFromError:v6])
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 32);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        v30 = HMFGetLogIdentifier();
        v48 = 138543362;
        v49 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_FAULT, "%{public}@Disk full error. Exit.", &v48, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v23 = *(*(a1 + 48) + 8);
      v24 = 3;
      goto LABEL_29;
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v5 URL];
      v48 = 138543618;
      v49 = v25;
      v50 = 2114;
      v51 = v26;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Loaded persistent store at '%{public}@'", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

LABEL_30:

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_submitABCEventFailedToLoadPersistentWithReason:(void *)reason withError:
{
  v37 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  processInfo = [MEMORY[0x277D0F8E0] processInfo];
  v7 = objc_alloc(MEMORY[0x277D6AFC8]);
  v8 = dispatch_get_global_queue(2, 0);
  v9 = [v7 initWithQueue:v8];

  name = [processInfo name];
  v11 = [v9 signatureWithDomain:@"HomeKit" type:@"CoreData" subType:@"Initialization" detectedProcess:name triggerThresholdValues:0];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(processInfo, "identifier")}];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D6B1E0]];

  if ((a2 - 1) >= 4)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"UnknownReason (%ld)", a2];
  }

  else
  {
    v13 = off_2786779B0[a2 - 1];
  }

  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277D6B1F0]];

  v14 = [reasonCopy description];
  [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x277D6B1B8]];

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v18;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Submitting ABC event with signature: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __73__HMDCoreData__submitABCEventFailedToLoadPersistentWithReason_withError___block_invoke;
  v31[3] = &unk_278682C28;
  v31[4] = selfCopy;
  v20 = v19;
  v32 = v20;
  if (([v9 snapshotWithSignature:v11 duration:0 event:0 payload:v31 reply:15.0] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to submit ABC event", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v20, v25))
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Timed out waiting for ABC event submission to finish", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __73__HMDCoreData__submitABCEventFailedToLoadPersistentWithReason_withError___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@ABC event submission finished with response: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __23__HMDCoreData__preLoad__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1)
  {
    v5 = [v3 cloudKitContainerOptions];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [objc_opt_class() userInitiatedVoucherWithLabel:@"Setup export voucher" forEventsOfType:2 affectingObjectsMatching:0];
      v8 = *(a1 + 32);
      v9 = [objc_opt_class() userInitiatedVoucherWithLabel:@"Setup import voucher" forEventsOfType:1 affectingObjectsMatching:0];
      v10 = [v4 URL];
      v11 = [v10 lastPathComponent];
      v12 = [v11 hasSuffix:@"core-cloudkit.sqlite"];

      if (v12)
      {
        v13 = *(a1 + 32);
        os_unfair_lock_lock_with_options();
        [(HMDCoreData *)*(a1 + 32) setPrivateStoreSetupExportVoucher:v7];
        v14 = *(a1 + 32);
        if (v14)
        {
          objc_storeStrong((v14 + 48), v9);
        }

        os_unfair_lock_unlock(v13 + 4);
        v15 = objc_autoreleasePoolPush();
        v16 = *(a1 + 32);
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          v32 = v18;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Attaching setup vouchers for private cloud store", buf, 0xCu);
        }
      }

      else
      {
        v19 = [v4 URL];
        v20 = [v19 lastPathComponent];
        v21 = [v20 hasSuffix:@"core-cloudkit-shared.sqlite"];

        if (v21)
        {
          v22 = *(a1 + 32);
          os_unfair_lock_lock_with_options();
          [(HMDCoreData *)*(a1 + 32) setSharedStoreSetupExportVoucher:v7];
          v23 = *(a1 + 32);
          if (v23)
          {
            objc_storeStrong((v23 + 64), v9);
          }

          os_unfair_lock_unlock(v22 + 4);
          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 32);
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v24 = HMFGetLogIdentifier();
            *buf = 138543362;
            v32 = v24;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Attaching setup vouchers for shared cloud store", buf, 0xCu);
          }
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 32);
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            v26 = [v4 URL];
            *buf = 138543618;
            v32 = v25;
            v33 = 2114;
            v34 = v26;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Attaching setup vouchers to unexpected store at '%{public}@'", buf, 0x16u);
          }
        }
      }

      objc_autoreleasePoolPop(v15);
      v30[0] = v7;
      v30[1] = v9;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
      v28 = [v4 cloudKitContainerOptions];
      [v28 setActivityVouchers:v27];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldPruneCloudStoreHistory
{
  v25 = *MEMORY[0x277D85DE8];
  userDefaults = [(HMDCoreData *)self userDefaults];
  v4 = [userDefaults objectForKey:@"cloudStoreHistoryPruneRanHomeKitVersionKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  userDefaults2 = [(HMDCoreData *)self userDefaults];
  v8 = [userDefaults2 objectForKey:@"cloudStoreHistoryPruneRanDateKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v6)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v14;
      v21 = 2114;
      v22 = v6;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Cloud store history was already pruned on version %{public}@ at %{public}@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
  }

  else
  {
    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    v15 = [productInfo productPlatform] == 3;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_pruneStoreHistoryWhenHistoryPercentageOfStoreIsGreaterThan:(int64_t)than storeType:(unint64_t)type
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  newManagedObjectContext = [(HMDCoreData *)self newManagedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__HMDCoreData__pruneStoreHistoryWhenHistoryPercentageOfStoreIsGreaterThan_storeType___block_invoke;
  v10[3] = &unk_278677828;
  v8 = newManagedObjectContext;
  v11 = v8;
  selfCopy = self;
  v13 = &v16;
  typeCopy = type;
  thanCopy = than;
  [v8 performBlockAndWait:v10];
  LOBYTE(than) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return than;
}

void __85__HMDCoreData__pruneStoreHistoryWhenHistoryPercentageOfStoreIsGreaterThan_storeType___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = +[MKFCloudSyncMetadata fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = *(a1 + 32);
  v69 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v69];
  v5 = v69;
  if (v4)
  {
    if ([(__CFString *)v4 count])
    {
      if ([(__CFString *)v4 count]>= 2)
      {
        v6 = objc_autoreleasePoolPush();
        v7 = *(a1 + 40);
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v9;
          v72 = 2114;
          v73 = v4;
          _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@More than one MKFCloudSyncMetadata object (using first): %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v6);
      }

      v10 = [(__CFString *)v4 firstObject];
      v11 = v10;
      v12 = *(a1 + 56);
      if (v12)
      {
        if (v12 != 2)
        {
          v31 = objc_autoreleasePoolPush();
          v32 = *(a1 + 40);
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = HMFGetLogIdentifier();
            v35 = v34;
            v36 = *(a1 + 56) - 1;
            if (v36 > 2)
            {
              v37 = @"Cloud";
            }

            else
            {
              v37 = off_2786779D0[v36];
            }

            *buf = 138543618;
            v71 = v34;
            v72 = 2112;
            v73 = v37;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Do not support to prune %@ store", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v31);
          goto LABEL_49;
        }

        v13 = [v10 historyTokenForWorkingStore];
      }

      else
      {
        v13 = [v10 historyTokenForCloudStore];
      }

      v22 = v13;
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 40);
      v25 = HMFGetOSLogHandle();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v22)
      {
        v67 = v11;
        if (v26)
        {
          v27 = HMFGetLogIdentifier();
          v28 = v27;
          v29 = *(a1 + 56) - 1;
          if (v29 > 2)
          {
            v30 = @"Cloud";
          }

          else
          {
            v30 = off_2786779D0[v29];
          }

          v42 = *(a1 + 64);
          *buf = 138544130;
          v71 = v27;
          v72 = 2112;
          v73 = v30;
          v74 = 2114;
          v75 = *&v22;
          v76 = 2050;
          v77 = v42;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Will prune %@ store history before history token %{public}@ when history percentage is > %{public}zd%%", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v23);
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v44 = v43;
        v45 = [MEMORY[0x277CBE4B0] deleteHistoryBeforeToken:v22 whenHistoryPercentageOfStoreIsGreaterThan:*(a1 + 64)];
        v46 = *(a1 + 32);
        v68 = v5;
        v47 = [v46 executeRequest:v45 error:&v68];
        v48 = v68;

        if (v48)
        {
          v49 = objc_autoreleasePoolPush();
          v50 = *(a1 + 40);
          v51 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = HMFGetLogIdentifier();
            v53 = v52;
            v54 = *(a1 + 56) - 1;
            if (v54 > 2)
            {
              v55 = @"Cloud";
            }

            else
            {
              v55 = off_2786779D0[v54];
            }

            *buf = 138543874;
            v71 = v52;
            v72 = 2112;
            v73 = v55;
            v74 = 2114;
            v75 = *&v48;
            _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Pruning %@ store history failed with %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v49);
        }

        else
        {
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v57 = v56;
          v58 = objc_autoreleasePoolPush();
          v59 = *(a1 + 40);
          v60 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            v61 = v57 - v44;
            v62 = HMFGetLogIdentifier();
            v63 = v62;
            v64 = *(a1 + 56) - 1;
            if (v64 > 2)
            {
              v65 = @"Cloud";
            }

            else
            {
              v65 = off_2786779D0[v64];
            }

            *buf = 138543874;
            v71 = v62;
            v72 = 2112;
            v73 = v65;
            v74 = 2050;
            v75 = v61;
            _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@Successfully pruned %@ store history in %{public}.3lf seconds", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v58);
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        v5 = v48;
        v11 = v67;
      }

      else
      {
        if (v26)
        {
          v38 = HMFGetLogIdentifier();
          v39 = v38;
          v40 = *(a1 + 56) - 1;
          if (v40 > 2)
          {
            v41 = @"Cloud";
          }

          else
          {
            v41 = off_2786779D0[v40];
          }

          *buf = 138543618;
          v71 = v38;
          v72 = 2112;
          v73 = v41;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@No last history token for %@ store, this must be a new device", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

LABEL_49:

      goto LABEL_50;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@No MKFCloudSyncMetadata found, this must be a new device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v17;
      v72 = 2114;
      v73 = v5;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFCloudSyncMetadata: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

LABEL_50:

  v66 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldPruneWorkingStoreHistory
{
  v26 = *MEMORY[0x277D85DE8];
  userDefaults = [(HMDCoreData *)self userDefaults];
  v4 = [userDefaults objectForKey:@"workingStoreHistoryPruneRanHomeKitVersionKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  userDefaults2 = [(HMDCoreData *)self userDefaults];
  v8 = [userDefaults2 objectForKey:@"workingStoreHistoryPruneRanDateKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v6)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v14;
      v22 = 2114;
      v23 = v6;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Working store history was already pruned on version %{public}@ at %{public}@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
  }

  else
  {
    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    if ([productInfo productPlatform] == 4)
    {
      v15 = 1;
    }

    else
    {
      productInfo2 = [MEMORY[0x277D0F8E8] productInfo];
      v15 = [productInfo2 productPlatform] == 3;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (HMDCoreData)initWithCloudKitContainer:(id)container notificationCenter:(id)center userDefaults:(id)defaults automaticallyAttachSetupVouchers:(BOOL)vouchers
{
  containerCopy = container;
  centerCopy = center;
  defaultsCopy = defaults;
  v32.receiver = self;
  v32.super_class = HMDCoreData;
  v14 = [(HMDCoreData *)&v32 init];
  if (v14)
  {
    v15 = HMFGetOSLogHandle();
    logger = v14->_logger;
    v14->_logger = v15;

    v14->_lock._os_unfair_lock_opaque = 0;
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    contexts = v14->_contexts;
    v14->_contexts = strongToWeakObjectsMapTable;

    objc_storeStrong(&v14->_container, container);
    objc_storeStrong(&v14->_notificationCenter, center);
    objc_storeStrong(&v14->_userDefaults, defaults);
    v14->_automaticallyAttachSetupVouchers = vouchers;
    v19 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    listeners = v14->_listeners;
    v14->_listeners = v19;

    v14->_firstCloudKitImportComplete = 0;
    v21 = [MEMORY[0x277D0F7C0] futureWithPromise:&v14->_firstCloudKitImportPromise];
    firstCloudKitImportFuture = v14->_firstCloudKitImportFuture;
    v14->_firstCloudKitImportFuture = v21;

    v23 = HMDispatchQueueNameString();
    uTF8String = [v23 UTF8String];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create(uTF8String, v25);
    queue = v14->_queue;
    v14->_queue = v26;

    persistentStoreDescriptions = [containerCopy persistentStoreDescriptions];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __106__HMDCoreData_initWithCloudKitContainer_notificationCenter_userDefaults_automaticallyAttachSetupVouchers___block_invoke;
    v30[3] = &unk_278677760;
    v31 = v14;
    [persistentStoreDescriptions hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
  }

  return v14;
}

void __106__HMDCoreData_initWithCloudKitContainer_notificationCenter_userDefaults_automaticallyAttachSetupVouchers___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 cloudKitContainerOptions];

  if (v6)
  {
    *(*(a1 + 32) + 33) = 1;
    *a4 = 1;
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t101 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t101, &__block_literal_global_94600);
  }

  v3 = logCategory__hmf_once_v102;

  return v3;
}

void __26__HMDCoreData_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v102;
  logCategory__hmf_once_v102 = v1;
}

+ (uint64_t)isError:(void *)error domain:(void *)domain fromError:
{
  v36 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  domainCopy = domain;
  v8 = objc_opt_self();
  v9 = domainCopy;
  if (v9)
  {
    array = [MEMORY[0x277CBEB18] array];
    v11 = 0;
    v12 = *MEMORY[0x277CCA7E8];
    v13 = v9;
    do
    {
      [array addObject:v13];
      userInfo = [v13 userInfo];
      v15 = [userInfo objectForKeyedSubscript:v12];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        v18 = v11 >= 9;
      }

      else
      {
        v18 = 1;
      }

      ++v11;
      v13 = v15;
    }

    while (!v18);
    v19 = [array copy];
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v8;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v23;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@all underlying errors : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __40__HMDCoreData_isError_domain_fromError___block_invoke;
  v28[3] = &unk_2786777D8;
  v29 = errorCopy;
  v30 = a2;
  v31 = v21;
  v24 = errorCopy;
  v25 = [v19 na_any:v28];

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

BOOL __40__HMDCoreData_isError_domain_fromError___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 code];
    v6 = *(a1 + 40);

    if (v5 == v6)
    {
      v7 = 1;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v8 = [v3 userInfo];
  v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 48);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 32);
      v19 = 138544130;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Found the %@ error domain and error code : %@, %@", &v19, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v7 = [v11 integerValue] == *(a1 + 40);
  }

  else
  {
    v7 = 0;
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (NSArray)defaultPersistentStoreDescriptions
{
  v10[4] = *MEMORY[0x277D85DE8];
  cloudPrivateStoreDescription = [self cloudPrivateStoreDescription];
  v10[0] = cloudPrivateStoreDescription;
  cloudSharedStoreDescription = [self cloudSharedStoreDescription];
  v10[1] = cloudSharedStoreDescription;
  localStoreDescription = [self localStoreDescription];
  v10[2] = localStoreDescription;
  workingStoreDescription = [self workingStoreDescription];
  v10[3] = workingStoreDescription;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (NSPersistentStoreDescription)workingStoreDescription
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [self storeNameForConfiguration:@"core.sqlite"];
  v4 = [(HMDCoreData *)self _storeDescriptionForConfiguration:v3 storeName:?];

  [v4 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE270]];
  v9 = *MEMORY[0x277CBE208];
  entitiesExcludedFromWorkingStoreHistory = [self entitiesExcludedFromWorkingStoreHistory];
  v10[0] = entitiesExcludedFromWorkingStoreHistory;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [v4 setOption:v6 forKey:*MEMORY[0x277CBE210]];
  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_storeDescriptionForConfiguration:(void *)configuration storeName:
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  configurationCopy = configuration;
  v6 = objc_opt_self();
  v7 = storeDirectoryPath;
  v8 = MEMORY[0x277CBEBC0];
  v9 = [v7 stringByAppendingPathComponent:configurationCopy];
  v10 = [v8 fileURLWithPath:v9];

  v11 = [MEMORY[0x277CBE4E0] persistentStoreDescriptionWithURL:v10];
  [v11 setConfiguration:v4];
  v12 = MEMORY[0x277CBEC38];
  [v11 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE210]];
  [v11 setOption:v12 forKey:*MEMORY[0x277CBE268]];
  [v11 setOption:&unk_283E72920 forKey:*MEMORY[0x277CBE218]];
  [v11 setOption:v12 forKey:*MEMORY[0x277CBE280]];
  if (([v6 isUsingProductionObjectModel] & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v16;
      v21 = 2112;
      v22 = v4;
      v23 = 2112;
      v24 = configurationCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Disabling automatic store migration for: [%@ / %@]", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [v11 setShouldMigrateStoreAutomatically:0];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (NSPersistentStoreDescription)localStoreDescription
{
  v3 = [self storeNameForConfiguration:@"core-local.sqlite"];
  v4 = [(HMDCoreData *)self _storeDescriptionForConfiguration:v3 storeName:?];

  return v4;
}

+ (NSPersistentStoreDescription)cloudSharedStoreDescription
{
  v3 = [self storeNameForConfiguration:@"core-cloudkit-shared.sqlite"];
  v4 = [(HMDCoreData *)self _storeDescriptionForConfiguration:v3 storeName:?];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [self getPersistentCloudKitContainerOptionsForStore:@"core-cloudkit-shared.sqlite" userDefaults:standardUserDefaults];
  [v4 setCloudKitContainerOptions:v6];

  cloudKitContainerOptions = [v4 cloudKitContainerOptions];
  [cloudKitContainerOptions setDatabaseScope:3];

  return v4;
}

+ (NSPersistentStoreDescription)cloudPrivateStoreDescription
{
  v3 = [self storeNameForConfiguration:@"core-cloudkit.sqlite"];
  v4 = [(HMDCoreData *)self _storeDescriptionForConfiguration:v3 storeName:?];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [self getPersistentCloudKitContainerOptionsForStore:@"core-cloudkit.sqlite" userDefaults:standardUserDefaults];
  [v4 setCloudKitContainerOptions:v6];

  return v4;
}

+ (id)getPersistentCloudKitContainerOptionsForStore:(id)store userDefaults:(id)defaults
{
  v22 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  defaultsCopy = defaults;
  objc_opt_self();
  v8 = objc_opt_new();
  [v8 setUseZoneWidePCS:1];
  [v8 setApplicationBundleIdentifierOverrideForPushTopicGeneration:@"com.apple.willowd.homekit.config"];
  v9 = [objc_alloc(MEMORY[0x277CBE3A0]) initWithContainerIdentifier:@"com.apple.homekit.config"];
  [v9 setUseDeviceToDeviceEncryption:1];
  [v9 setAutomaticallyScheduleImportAndExportOperations:1];
  [v9 setContainerOptions:v8];
  [v9 setApsConnectionMachServiceName:@"com.apple.aps.homekit"];

  activityVouchers = [v9 activityVouchers];
  v11 = [activityVouchers count];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = storeCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@CloudKitContainerOptions contain activityVouchers for: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)storeNameForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([self isUsingProductionObjectModel])
  {
    configurationCopy = configurationCopy;
  }

  else
  {
    configurationCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"dev-%@", configurationCopy];
  }

  v6 = configurationCopy;

  return v6;
}

- (id)initWithPersistentStoreDescriptions:(void *)descriptions notificationCenter:(void *)center userDefaults:(uint64_t)defaults automaticallyAttachSetupVouchers:
{
  if (!self)
  {
    return 0;
  }

  v9 = MEMORY[0x277CBE470];
  centerCopy = center;
  descriptionsCopy = descriptions;
  v12 = a2;
  v13 = [v9 alloc];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = +[HMDCoreData managedObjectModel];
  v17 = [v13 initWithName:v15 managedObjectModel:v16];

  v18 = [v12 copy];
  [v17 setPersistentStoreDescriptions:v18];

  v19 = [self initWithCloudKitContainer:v17 notificationCenter:descriptionsCopy userDefaults:centerCopy automaticallyAttachSetupVouchers:defaults];
  v20 = v19;

  return v20;
}

+ (id)sharedInstanceWithoutLiveCloudKit
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDCoreData_sharedInstanceWithoutLiveCloudKit__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_onceToken != -1)
  {
    dispatch_once(&_onceToken, block);
  }

  v2 = _sharedInstance;

  return v2;
}

void __48__HMDCoreData_sharedInstanceWithoutLiveCloudKit__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) defaultPersistentStoreDescriptions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HMDCoreData_sharedInstanceWithoutLiveCloudKit__block_invoke_2;
  v10[3] = &__block_descriptor_40_e45_v32__0__NSPersistentStoreDescription_8Q16_B24l;
  v10[4] = *(a1 + 32);
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating HMDCoreData instance without Live CloudKit", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCoreData *)*(a1 + 32) createWithPersistentStoreDescriptions:v2];
  v8 = _sharedInstance;
  _sharedInstance = v7;

  [_sharedInstance startWatchingManagedObjectChanges];
  [_sharedInstance startLoadingStores];

  v9 = *MEMORY[0x277D85DE8];
}

void __48__HMDCoreData_sharedInstanceWithoutLiveCloudKit__block_invoke_2(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Not configuring [%@] with cloud kit container options", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 setCloudKitContainerOptions:0];

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)createWithPersistentStoreDescriptions:(uint64_t)descriptions
{
  v2 = a2;
  v3 = objc_alloc(objc_opt_self());
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [(HMDCoreData *)v3 initWithPersistentStoreDescriptions:v2 notificationCenter:defaultCenter userDefaults:standardUserDefaults automaticallyAttachSetupVouchers:1];

  return v6;
}

+ (BOOL)isUsingProductionObjectModel
{
  v3 = +[HMDCoreData productionManagedObjectModelURL];
  managedObjectModelURL = [self managedObjectModelURL];
  v5 = HMFEqualObjects();

  return v5;
}

+ (id)productionManagedObjectModelURL
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDCoreData_productionManagedObjectModelURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (productionManagedObjectModelURL_onceTokenForBundle != -1)
  {
    dispatch_once(&productionManagedObjectModelURL_onceTokenForBundle, block);
  }

  v1 = productionManagedObjectModelURL_sProductionURL;

  return v1;
}

void __46__HMDCoreData_productionManagedObjectModelURL__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];
  v3 = [v2 URLForResource:@"HomeKitCoreDataModel" withExtension:@"momd"];
  v4 = productionManagedObjectModelURL_sProductionURL;
  productionManagedObjectModelURL_sProductionURL = v3;

  if (!productionManagedObjectModelURL_sProductionURL)
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_self();
    *v21 = MEMORY[0x277D85DD0];
    *&v21[8] = 3221225472;
    *&v21[16] = __47__HMDCoreData_developmentManagedObjectModelURL__block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0l;
    *v23 = v6;
    if (developmentManagedObjectModelURL_onceTokenForBundle != -1)
    {
      dispatch_once(&developmentManagedObjectModelURL_onceTokenForBundle, v21);
    }

    v7 = developmentManagedObjectModelURL_developmentManagedObjectModelURL;
    v8 = [v7 path];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *v21 = 138544386;
      *&v21[4] = v12;
      *&v21[12] = 2112;
      *&v21[14] = @"HomeKitCoreDataModel";
      *&v21[22] = 2112;
      v22 = @"momd";
      *v23 = 2112;
      *&v23[2] = v2;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to find [%@.%@] in bundle [%@]. Going to look into development momd directory: %@", v21, 0x34u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CCA8D8] pathForResource:@"Production" ofType:@"mom" inDirectory:v8];
    v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v13];
    v15 = productionManagedObjectModelURL_sProductionURL;
    productionManagedObjectModelURL_sProductionURL = v14;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *v21 = 138543618;
    *&v21[4] = v19;
    *&v21[12] = 2112;
    *&v21[14] = productionManagedObjectModelURL_sProductionURL;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Production URL: %@", v21, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = *MEMORY[0x277D85DE8];
}

void __47__HMDCoreData_developmentManagedObjectModelURL__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];
  v3 = [v2 URLForResource:@"HomeKitCoreDataModel-Development" withExtension:@"momd"];
  v4 = developmentManagedObjectModelURL_developmentManagedObjectModelURL;
  developmentManagedObjectModelURL_developmentManagedObjectModelURL = v3;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = developmentManagedObjectModelURL_developmentManagedObjectModelURL;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Development URL: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

+ (NSURL)managedObjectModelURL
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDCoreData_managedObjectModelURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (managedObjectModelURL_onceTokenForURL != -1)
  {
    dispatch_once(&managedObjectModelURL_onceTokenForURL, block);
  }

  v2 = managedObjectModelURL_managedObjectModelURL;

  return v2;
}

void __36__HMDCoreData_managedObjectModelURL__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = +[HMDFeaturesDataSource defaultDataSource];
  v3 = *(a1 + 32);
  v13 = v2;
  v4 = objc_opt_self();
  if (isInternalBuild())
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138544130;
      v15 = v8;
      v16 = 2112;
      v17 = v13;
      v18 = 1024;
      v19 = 0;
      v20 = 1024;
      v21 = 0;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%@, HomeAS: %{BOOL}d, C: %{BOOL}d", buf, 0x22u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *(a1 + 32);
  v10 = +[HMDCoreData productionManagedObjectModelURL];
  v11 = managedObjectModelURL_managedObjectModelURL;
  managedObjectModelURL_managedObjectModelURL = v10;

  if (!managedObjectModelURL_managedObjectModelURL)
  {
    _HMFPreconditionFailure();
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (NSManagedObjectModel)managedObjectModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMDCoreData_managedObjectModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (managedObjectModel_once != -1)
  {
    dispatch_once(&managedObjectModel_once, block);
  }

  v2 = managedObjectModel_model;

  return v2;
}

void __33__HMDCoreData_managedObjectModel__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectModelURL];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v2;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Using : %{public}@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (!v2)
  {
    _HMFPreconditionFailure();
  }

  v7 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v2];
  v8 = managedObjectModel_model;
  managedObjectModel_model = v7;

  [managedObjectModel_model hmd_makeImmutable];
  v9 = *MEMORY[0x277D85DE8];
}

+ (void)cleanUpSharedInstance
{
  [_sharedInstance stopWatchingManagedObjectChanges];
  v2 = _sharedInstance;
  _sharedInstance = 0;
}

uint64_t __29__HMDCoreData_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_self();
  v3 = [v2 defaultPersistentStoreDescriptions];
  v4 = [(HMDCoreData *)v2 createWithPersistentStoreDescriptions:v3];

  v5 = _sharedInstance;
  _sharedInstance = v4;

  [_sharedInstance startWatchingManagedObjectChanges];
  v6 = _sharedInstance;

  return [v6 startLoadingStores];
}

- (id)_applyVoucherForModel:(id)model modelID:(id)d eventType:(int64_t)type storeType:(unint64_t)storeType
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  dCopy = d;
  if (storeType == 1)
  {
    cloudSharedStore = [(HMDCoreData *)self cloudSharedStore];
    goto LABEL_5;
  }

  if (!storeType)
  {
    cloudSharedStore = [(HMDCoreData *)self cloudPrivateStore];
LABEL_5:
    v13 = cloudSharedStore;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:
  name = [modelCopy name];
  v15 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:name];
  if (dCopy)
  {
    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"modelID", dCopy];
    [v15 setPredicate:dCopy];
  }

  v26 = modelCopy;
  v17 = [objc_opt_class() userInitiatedVoucherWithLabel:name forEventsOfType:type affectingObjectsMatching:v15];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138544130;
    v29 = v21;
    v30 = 2114;
    v31 = name;
    v32 = 2112;
    v33 = dCopy;
    v34 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@applyVoucherForModel: %{public}@, modelID: %@, eventType: %zd", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  container = [(HMDCoreData *)selfCopy container];
  v27 = v13;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  [container applyActivityVoucher:v17 toStores:v23];

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)userInitiatedVoucherWithLabel:(id)label forEventsOfType:(int64_t)type affectingObjectsMatching:(id)matching
{
  v8 = MEMORY[0x277CBE478];
  matchingCopy = matching;
  labelCopy = label;
  v11 = [v8 alloc];
  userInitiatedCKOperationConfiguration = [self userInitiatedCKOperationConfiguration];
  v13 = [v11 initWithLabel:labelCopy forEventsOfType:type withConfiguration:userInitiatedCKOperationConfiguration affectingObjectsMatching:matchingCopy];

  return v13;
}

+ (id)userInitiatedCKOperationConfiguration
{
  v2 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &__block_literal_global_590);
  if (userInitiatedCKOperationConfiguration_onceToken != -1)
  {
    dispatch_once(&userInitiatedCKOperationConfiguration_onceToken, v2);
  }

  v3 = userInitiatedCKOperationConfiguration_configuration;
  v4 = userInitiatedCKOperationConfiguration_configuration;

  return v3;
}

uint64_t __61__HMDCoreData_Voucher__userInitiatedCKOperationConfiguration__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  v1 = userInitiatedCKOperationConfiguration_configuration;
  userInitiatedCKOperationConfiguration_configuration = v0;

  v2 = userInitiatedCKOperationConfiguration_configuration;

  return [v2 setQualityOfService:25];
}

@end