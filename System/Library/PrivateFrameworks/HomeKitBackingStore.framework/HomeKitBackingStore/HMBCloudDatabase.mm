@interface HMBCloudDatabase
+ (id)logCategory;
- (BOOL)_retryCloudKitOperationAfterError:(id)error retryBlock:(id)block;
- (BOOL)needsZoneCreationForZoneWithID:(id)d;
- (BOOL)reopenOrRecreatePrivateZone:(id)zone error:(id *)error;
- (BOOL)retryCloudKitOperation:(id)operation afterError:(id)error retryBlock:(id)block;
- (CKContainerID)containerID;
- (HMBCloudDatabase)initWithLocalDatabase:(id)database configuration:(id)configuration error:(id *)error;
- (HMBCloudDatabase)initWithLocalDatabase:(id)database stateZone:(id)zone container:(id)container configuration:(id)configuration databaseStateModelsByScope:(id)scope zoneStateModels:(id)models credentialsAvailabilityListener:(id)listener dataSource:(id)self0;
- (HMBCloudDatabaseDelegate)delegate;
- (NAScheduler)operationScheduler;
- (id)_acceptInvitation:(id)invitation;
- (id)_openOrCreateZoneWithScope:(int64_t)scope recordZoneID:(id)d delegate:(id)delegate shouldCreate:(BOOL)create configuration:(id)configuration existingCloudZone:(id)zone error:(id *)error;
- (id)_updateAPSRegistration:(BOOL)registration;
- (id)_zonesWithScope:(int64_t)scope;
- (id)acceptInvitation:(id)invitation;
- (id)acceptInvitationWithShareMetadata:(id)metadata;
- (id)attributeDescriptions;
- (id)createPrivateZoneWithID:(id)d;
- (id)databaseStateForDatabaseScope:(int64_t)scope;
- (id)fetchCurrentUserRecordForDatabase:(id)database;
- (id)fetchParticipantWithLookupInfo:(id)info;
- (id)fetchShareMetadataForInvitation:(id)invitation;
- (id)fetchSubscriptionsInDatabase:(id)database;
- (id)fetchZonesWithIDs:(id)ds inDatabase:(id)database;
- (id)logIdentifier;
- (id)openExistingPrivateZoneWithID:(id)d configuration:(id)configuration delegate:(id)delegate error:(id *)error;
- (id)openExistingSharedZoneWithID:(id)d configuration:(id)configuration delegate:(id)delegate error:(id *)error;
- (id)openOrCreatePrivateZoneWithID:(id)d configuration:(id)configuration delegate:(id)delegate error:(id *)error;
- (id)operationConfigurationWithProcessingOptions:(id)options;
- (id)performCloudPullForScope:(int64_t)scope;
- (id)performCodeOperationWithServiceName:(id)name functionName:(id)functionName request:(id)request responseClass:(Class)class;
- (id)performInitialCloudSync;
- (id)pushSubscriptionsForDatabase:(id)database subscriptionsToSave:(id)save subscriptionIDsToRemove:(id)remove;
- (id)registerPrivateSubscription:(id)subscription;
- (id)registerPrivateSubscriptionForExternalRecordType:(id)type;
- (id)registerSharedSubscriptionForExternalRecordType:(id)type;
- (id)registerSubscription:(id)subscription forZoneWithID:(id)d;
- (id)registerSubscriptionForExternalRecordType:(id)type databaseState:(id)state;
- (id)removePrivateZoneWithID:(id)d;
- (id)removeZoneWithID:(id)d;
- (id)serverChangeTokenForZoneWithID:(id)d;
- (id)subscriptionIDForCloudID:(id)d recordType:(id)type;
- (id)subscriptionIDForZoneID:(id)d recordType:(id)type;
- (id)subscriptionsForZoneWithID:(id)d;
- (id)synchronizeSharedZones;
- (id)synchronizeZoneStateForZoneIDs:(id)ds;
- (id)unregisterPrivateSubscriptionForExternalRecordType:(id)type;
- (id)unregisterPrivateSubscriptionForSubscriptionID:(id)d;
- (id)unregisterSharedSubscriptionForExternalRecordType:(id)type;
- (id)unregisterSharedSubscriptionForSubscriptionID:(id)d;
- (id)unregisterSubscription:(id)subscription forZoneWithID:(id)d;
- (void)_performInitialCloudSync;
- (void)addContainerOperation:(id)operation;
- (void)addDatabaseOperation:(id)operation forScope:(int64_t)scope;
- (void)handleCreatedZoneIDs:(id)ds;
- (void)handleRemovedZoneIDs:(id)ds userInitiated:(BOOL)initiated;
- (void)handleUpdatedZonesIDs:(id)ds;
- (void)handler:(id)handler didReceiveCKNotification:(id)notification;
- (void)handler:(id)handler didReceiveMessageWithUserInfo:(id)info;
- (void)notifyDelegateOfError:(id)error forOperation:(id)operation;
- (void)removeStateForZoneID:(id)d;
- (void)retryStartupBlock:(id)block;
- (void)updateRebuildStatus:(id)status forZoneWithID:(id)d;
- (void)updateServerChangeToken:(id)token forDatabaseWithScope:(int64_t)scope;
- (void)updateServerChangeToken:(id)token forZoneWithID:(id)d;
@end

@implementation HMBCloudDatabase

- (id)performCodeOperationWithServiceName:(id)name functionName:(id)functionName request:(id)request responseClass:(Class)class
{
  nameCopy = name;
  functionNameCopy = functionName;
  requestCopy = request;
  v13 = MEMORY[0x277D2C900];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __99__HMBCloudDatabase_CKCode__performCodeOperationWithServiceName_functionName_request_responseClass___block_invoke;
  v21[3] = &unk_2786E0B58;
  v21[4] = self;
  v22 = nameCopy;
  v23 = functionNameCopy;
  v24 = requestCopy;
  classCopy = class;
  v14 = MEMORY[0x277D2C938];
  v15 = requestCopy;
  v16 = functionNameCopy;
  v17 = nameCopy;
  globalAsyncScheduler = [v14 globalAsyncScheduler];
  v19 = [v13 futureWithBlock:v21 scheduler:globalAsyncScheduler];

  return v19;
}

- (id)_acceptInvitation:(id)invitation
{
  v22 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = invitationCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Accepting invitation: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  objc_initWeak(buf, selfCopy);
  v9 = [(HMBCloudDatabase *)selfCopy fetchShareMetadataForInvitation:invitationCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__HMBCloudDatabase_User___acceptInvitation___block_invoke;
  v16[3] = &unk_2786E0E68;
  objc_copyWeak(&v17, buf);
  v10 = [v9 flatMap:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__HMBCloudDatabase_User___acceptInvitation___block_invoke_2;
  v14[3] = &unk_2786E0E90;
  objc_copyWeak(&v15, buf);
  v11 = [v10 flatMap:v14];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __44__HMBCloudDatabase_User___acceptInvitation___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetched share metadata: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v6 acceptInvitationWithShareMetadata:v3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __44__HMBCloudDatabase_User___acceptInvitation___block_invoke_2(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v40 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_autoreleasePoolPush();
  v5 = WeakRetained;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v7;
    v45 = 2112;
    v46 = v40;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Accepted invitation with share: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [HMBCloudZoneID alloc];
  v9 = [(os_unfair_lock_s *)v5 containerID];
  v10 = [(HMBCloudZoneStateModel *)v40 recordID];
  v11 = [v10 zoneID];
  v12 = [(HMBCloudZoneID *)v8 initWithContainerID:v9 scope:3 zoneID:v11];

  os_unfair_lock_lock_with_options();
  v13 = [(os_unfair_lock_s *)v5 zoneStateByZoneID];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v5;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v18;
      v45 = 2112;
      v46 = v14;
      _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_INFO, "%{public}@Not adding zone state model because one already exists: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v19 = [HMBCloudZoneStateModel alloc];
    v20 = [(HMBCloudID *)v12 modelID];
    v21 = [(os_unfair_lock_s *)v5 sharedDatabaseState];
    v22 = [v21 hmbModelID];
    v23 = [(HMBCloudZoneStateModel *)v19 initWithModelID:v20 parentModelID:v22];

    [(HMBCloudZoneStateModel *)v23 setZoneID:v12];
    v24 = objc_autoreleasePoolPush();
    v25 = v5;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v27;
      v45 = 2112;
      v46 = v23;
      _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_INFO, "%{public}@Adding zone state model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [(os_unfair_lock_s *)v25 zoneStateByZoneID];
    [v28 setObject:v23 forKeyedSubscript:v12];

    v29 = [(os_unfair_lock_s *)v25 stateZone];
    v42 = v23;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    v31 = [v29 update:v30];

    if (v31)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v25;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v35;
        v45 = 2112;
        v46 = v31;
        _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to add zone state model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
    }
  }

  os_unfair_lock_unlock(v5 + 2);
  v41 = v12;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  [(os_unfair_lock_s *)v5 handleCreatedZoneIDs:v36];

  v37 = [MEMORY[0x277D2C900] futureWithResult:v12];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)acceptInvitation:(id)invitation
{
  v26 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = invitationCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Queueing up accept for invitation %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [HMBFutureOperation alloc];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __43__HMBCloudDatabase_User__acceptInvitation___block_invoke;
  v19 = &unk_2786E2288;
  v20 = selfCopy;
  v21 = invitationCopy;
  v10 = invitationCopy;
  v11 = [(HMBFutureOperation *)v9 initWithBlock:&v16];
  v12 = [(HMBCloudDatabase *)selfCopy invitationOperationQueue:v16];
  [v12 addOperation:v11];

  future = [(HMBFutureOperation *)v11 future];

  v14 = *MEMORY[0x277D85DE8];

  return future;
}

- (HMBCloudDatabaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  container = [(HMBCloudDatabase *)self container];
  v5 = [v3 initWithName:@"Container" value:container];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  container = [(HMBCloudDatabase *)self container];
  containerID = [container containerID];
  containerIdentifier = [containerID containerIdentifier];

  return containerIdentifier;
}

- (void)handler:(id)handler didReceiveMessageWithUserInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  infoCopy = info;
  delegate = [(HMBCloudDatabase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = infoCopy;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Received message that did not translate to a CKNotification; deferring to delegate: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [delegate cloudDatabase:selfCopy didReceiveMessageWithUserInfo:infoCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)handler didReceiveCKNotification:(id)notification
{
  v66 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  notificationCopy = notification;
  containerIdentifier = [notificationCopy containerIdentifier];
  container = [(HMBCloudDatabase *)self container];
  containerIdentifier2 = [container containerIdentifier];
  v11 = [containerIdentifier isEqualToString:containerIdentifier2];

  if (v11)
  {
LABEL_2:
    v12 = notificationCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v63 = v18;
        v64 = 2112;
        v65 = v14;
        _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Handling CKDatabaseNotification: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [(HMBCloudDatabase *)selfCopy performCloudPullForScope:[(HMBCloudZoneID *)v14 databaseScope]];
    }

    else
    {
      v34 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;

      if (v36)
      {
        v37 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543618;
          v63 = v40;
          v64 = 2112;
          v65 = v36;
          _os_log_impl(&dword_22AD27000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Handling CKRecordZoneNotification: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v41 = [HMBCloudZoneID alloc];
        containerID = [(HMBCloudDatabase *)selfCopy2 containerID];
        databaseScope = [(HMBCloudZoneID *)v36 databaseScope];
        recordZoneID = [(HMBCloudZoneID *)v36 recordZoneID];
        v45 = [(HMBCloudZoneID *)v41 initWithContainerID:containerID scope:databaseScope zoneID:recordZoneID];

        v46 = objc_autoreleasePoolPush();
        v47 = selfCopy2;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = HMFGetLogIdentifier();
          name = [(HMBCloudID *)v45 name];
          *buf = 138543618;
          v63 = v49;
          v64 = 2112;
          v65 = name;
          _os_log_impl(&dword_22AD27000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Starting update for zone: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v46);
        v61 = v45;
        v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
        [(HMBCloudDatabase *)v47 handleUpdatedZonesIDs:v51];
      }

      else
      {
        v52 = v34;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        v45 = v53;

        v54 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v56 = HMFGetOSLogHandle();
        v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
        if (v45)
        {
          if (v57)
          {
            v58 = HMFGetLogIdentifier();
            *buf = 138543618;
            v63 = v58;
            v64 = 2112;
            v65 = v45;
            _os_log_impl(&dword_22AD27000, v56, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected query notification: %@", buf, 0x16u);
          }
        }

        else if (v57)
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543618;
          v63 = v59;
          v64 = 2112;
          v65 = v52;
          _os_log_impl(&dword_22AD27000, v56, OS_LOG_TYPE_ERROR, "%{public}@Received unknown CKNotification: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v54);
      }
    }

    goto LABEL_38;
  }

  container2 = [(HMBCloudDatabase *)self container];
  containerIdentifier3 = [container2 containerIdentifier];
  if ([containerIdentifier3 isEqualToString:@"com.apple.willow.config"])
  {
    containerIdentifier4 = [notificationCopy containerIdentifier];
    v23 = [containerIdentifier4 isEqualToString:@"com.apple.homekit.config"];

    if (v23)
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = HMFGetLogIdentifier();
        containerIdentifier5 = [notificationCopy containerIdentifier];
        *buf = 138543618;
        v63 = v27;
        v64 = 2112;
        v65 = containerIdentifier5;
        _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Allowing CKNotification for %@ container to trigger operations", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      goto LABEL_2;
    }
  }

  else
  {
  }

  v29 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v32 = HMFGetLogIdentifier();
    containerIdentifier6 = [notificationCopy containerIdentifier];
    *buf = 138543618;
    v63 = v32;
    v64 = 2112;
    v65 = containerIdentifier6;
    _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring CKNotification for irrelevant container identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v29);
LABEL_38:

  v60 = *MEMORY[0x277D85DE8];
}

- (id)operationConfigurationWithProcessingOptions:(id)options
{
  optionsCopy = options;
  configuration = [(HMBCloudDatabase *)self configuration];
  defaultOperationConfiguration = [configuration defaultOperationConfiguration];
  v7 = defaultOperationConfiguration;
  if (optionsCopy)
  {
    v8 = [defaultOperationConfiguration copy];

    [v8 setQualityOfService:{objc_msgSend(optionsCopy, "qualityOfService")}];
    [v8 setAllowsCellularAccess:{objc_msgSend(optionsCopy, "disallowsCellularAccessForMirrorOutput") ^ 1}];
    v7 = v8;
  }

  else
  {
  }

  return v7;
}

- (void)retryStartupBlock:(id)block
{
  blockCopy = block;
  dataSource = [(HMBCloudDatabase *)self dataSource];
  [dataSource performAfterDelay:blockCopy block:300.0];
}

- (void)removeStateForZoneID:(id)d
{
  v54 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v38 = 8;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  selfCopy2 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v8;
    v48 = 2112;
    v49 = dCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing state for zone ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  zoneStateByZoneID = [(HMBCloudDatabase *)selfCopy2 zoneStateByZoneID];
  v10 = [zoneStateByZoneID objectForKeyedSubscript:dCopy];

  if (v10)
  {
    stateZone = [(HMBCloudDatabase *)selfCopy2 stateZone];
    hmbModelID = [v10 hmbModelID];
    v44 = 0;
    v13 = [stateZone fetchModelsWithParentModelID:hmbModelID error:&v44];
    v14 = v44;

    if (!v13)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy2;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138544130;
        v47 = v18;
        v48 = 2112;
        v49 = v10;
        v50 = 2112;
        v51 = dCopy;
        v52 = 2112;
        v53 = v14;
        _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine children of zone state model %@ with ID %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
      v13 = [MEMORY[0x277CBEB98] set];
    }

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count", 8) + 1}];
    hmbModelID2 = [v10 hmbModelID];
    [v19 addObject:hmbModelID2];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v21 = v13;
    v22 = [v21 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v22)
    {
      v23 = *v41;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v21);
          }

          hmbModelID3 = [*(*(&v40 + 1) + 8 * i) hmbModelID];
          [v19 addObject:hmbModelID3];
        }

        v22 = [v21 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v22);
    }

    stateZone2 = [(HMBCloudDatabase *)selfCopy2 stateZone];
    v27 = [stateZone2 remove:v19];

    if (v27)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy2;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v47 = v31;
        v48 = 2112;
        v49 = dCopy;
        v50 = 2112;
        v51 = v27;
        _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove cloud zone state models for zone ID %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
    }

    zoneStateByZoneID2 = [(HMBCloudDatabase *)selfCopy2 zoneStateByZoneID];
    [zoneStateByZoneID2 setObject:0 forKeyedSubscript:dCopy];
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy2;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v36;
      v48 = 2112;
      v49 = dCopy;
      _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_INFO, "%{public}@Asked to remove state for zoneID %@ that has already been removed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

  os_unfair_lock_unlock((selfCopy + v38));
  v37 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateOfError:(id)error forOperation:(id)operation
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  operationCopy = operation;
  delegate = [(HMBCloudDatabase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138544130;
      v16 = v12;
      v17 = 2112;
      v18 = delegate;
      v19 = 2112;
      v20 = operationCopy;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Notifying delegate %@ for error on operation %@: %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    containerID = [(HMBCloudDatabase *)selfCopy containerID];
    [delegate cloudDatabase:selfCopy encounteredError:errorCopy withOperation:operationCopy onContainer:containerID];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_retryCloudKitOperationAfterError:(id)error retryBlock:(id)block
{
  v58 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  blockCopy = block;
  if (![errorCopy hmbIsCKMissingManateeIdentityError])
  {
    [errorCopy hmbCloudKitRetryDelay];
    v18 = v17;
    if (v17 == -1.0)
    {
      if ([errorCopy hmbIsCKManateeUnavailableError])
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v55 = v22;
          _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_INFO, "%{public}@Manatee is unavailable. Waiting for Manatee to become available before retrying", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        credentialsAvailabilityListener = [(HMBCloudDatabase *)selfCopy credentialsAvailabilityListener];
        waitForAccountAvailabilityAndRecheckIfAlreadyAvailable = [credentialsAvailabilityListener waitForAccountAvailabilityAndRecheckIfAlreadyAvailable];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __65__HMBCloudDatabase__retryCloudKitOperationAfterError_retryBlock___block_invoke;
        v52[3] = &unk_2786E1008;
        v52[4] = selfCopy;
        v53 = blockCopy;
        v25 = [waitForAccountAvailabilityAndRecheckIfAlreadyAvailable addSuccessBlock:v52];

        v26 = v53;
      }

      else if ([errorCopy hmbIsCKNotAuthenticatedError])
      {
        v33 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543362;
          v55 = v36;
          _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_INFO, "%{public}@CloudKit account status is no longer authenticated. Waiting for Manatee to become available before retrying", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v33);
        credentialsAvailabilityListener2 = [(HMBCloudDatabase *)selfCopy2 credentialsAvailabilityListener];
        waitForAccountAvailabilityAndRecheckIfAlreadyAvailable2 = [credentialsAvailabilityListener2 waitForAccountAvailabilityAndRecheckIfAlreadyAvailable];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __65__HMBCloudDatabase__retryCloudKitOperationAfterError_retryBlock___block_invoke_89;
        v50[3] = &unk_2786E1008;
        v50[4] = selfCopy2;
        v51 = blockCopy;
        v39 = [waitForAccountAvailabilityAndRecheckIfAlreadyAvailable2 addSuccessBlock:v50];

        v26 = v51;
      }

      else
      {
        hmbIsCKUnsyncedKeychainError = [errorCopy hmbIsCKUnsyncedKeychainError];
        v8 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v41 = HMFGetOSLogHandle();
        v10 = v41;
        if (!hmbIsCKUnsyncedKeychainError)
        {
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_5;
          }

          v11 = HMFGetLogIdentifier();
          *buf = 138543362;
          v55 = v11;
          v12 = "%{public}@Not retrying failed CloudKit operation";
          v13 = v10;
          v14 = OS_LOG_TYPE_DEBUG;
          v15 = 12;
          goto LABEL_4;
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v55 = v42;
          _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Keychain is unsynced. Waiting for keychain to become available before retrying", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
        credentialsAvailabilityListener3 = [(HMBCloudDatabase *)selfCopy5 credentialsAvailabilityListener];
        waitForKeychainAvailability = [credentialsAvailabilityListener3 waitForKeychainAvailability];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __65__HMBCloudDatabase__retryCloudKitOperationAfterError_retryBlock___block_invoke_90;
        v48[3] = &unk_2786E1008;
        v48[4] = selfCopy5;
        v49 = blockCopy;
        v45 = [waitForKeychainAvailability addSuccessBlock:v48];

        v26 = v49;
      }
    }

    else
    {
      v27 = dispatch_time(0, (v17 * 1000000000.0));
      v28 = dispatch_get_global_queue(0, 0);
      dispatch_after(v27, v28, blockCopy);

      v29 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v32;
        v56 = 2048;
        v57 = v18;
        _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_INFO, "%{public}@Will retry cloud operation after %.2f seconds", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
    }

    v16 = 1;
    goto LABEL_24;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v55 = v11;
    v56 = 2112;
    v57 = *&errorCopy;
    v12 = "%{public}@Received missing Manatee identity error on database specific query (this is not expected): %@";
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 22;
LABEL_4:
    _os_log_impl(&dword_22AD27000, v13, v14, v12, buf, v15);
  }

LABEL_5:

  objc_autoreleasePoolPop(v8);
  v16 = 0;
LABEL_24:

  v46 = *MEMORY[0x277D85DE8];
  return v16;
}

void __65__HMBCloudDatabase__retryCloudKitOperationAfterError_retryBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Retrying operation that received Manatee unavailable error", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __65__HMBCloudDatabase__retryCloudKitOperationAfterError_retryBlock___block_invoke_89(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Retrying operation that received account not authenticated error", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __65__HMBCloudDatabase__retryCloudKitOperationAfterError_retryBlock___block_invoke_90(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Retrying operation that received keychain unsynced error", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)retryCloudKitOperation:(id)operation afterError:(id)error retryBlock:(id)block
{
  blockCopy = block;
  errorCopy = error;
  [(HMBCloudDatabase *)self notifyDelegateOfError:errorCopy forOperation:operation];
  LOBYTE(operation) = [(HMBCloudDatabase *)self _retryCloudKitOperationAfterError:errorCopy retryBlock:blockCopy];

  return operation;
}

- (id)removeZoneWithID:(id)d
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(HMBCloudDatabase *)self updateNeedsZoneDeletion:1 forZoneWithID:dCopy];
  array = [MEMORY[0x277CBEB18] array];
  delegate = [(HMBCloudDatabase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate cloudDatabase:self willRemoveZoneWithID:dCopy];
    [array addObject:v7];
  }

  scope = [dCopy scope];
  if (scope == 1)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v19;
      v40 = 2112;
      v41 = dCopy;
      _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove zone with public zoneID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [(HMBCloudDatabase *)selfCopy updateNeedsZoneDeletion:0 forZoneWithID:dCopy];
    v20 = MEMORY[0x277D2C900];
    v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v22 = [v20 futureWithError:v21];
    [array addObject:v22];
  }

  else
  {
    if (scope == 3)
    {
      v13 = MEMORY[0x277D2C900];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __37__HMBCloudDatabase_removeZoneWithID___block_invoke_2;
      v34[3] = &unk_2786E2000;
      v34[4] = self;
      v35 = dCopy;
      immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
      v15 = [v13 lazyFutureWithBlock:v34 scheduler:immediateScheduler];

      [array addObject:v15];
      v12 = v35;
    }

    else
    {
      if (scope != 2)
      {
        goto LABEL_12;
      }

      v9 = MEMORY[0x277D2C900];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __37__HMBCloudDatabase_removeZoneWithID___block_invoke;
      v36[3] = &unk_2786E2000;
      v36[4] = self;
      v37 = dCopy;
      immediateScheduler2 = [MEMORY[0x277D2C938] immediateScheduler];
      v11 = [v9 lazyFutureWithBlock:v36 scheduler:immediateScheduler2];

      [array addObject:v11];
      v12 = v37;
    }
  }

LABEL_12:
  v23 = MEMORY[0x277D2C900];
  v31 = MEMORY[0x277D85DD0];
  selfCopy2 = self;
  v33 = dCopy;
  v24 = MEMORY[0x277D2C938];
  v25 = dCopy;
  immediateScheduler3 = [v24 immediateScheduler];
  v27 = [v23 lazyFutureWithBlock:&v31 scheduler:immediateScheduler3];

  [array addObject:v27];
  v28 = [MEMORY[0x277D2C900] chainFutures:array];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void __37__HMBCloudDatabase_removeZoneWithID___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) zoneID];
  v6 = objc_alloc_init(HMBCloudZoneConfiguration);
  v34 = 0;
  v7 = [v4 openExistingPrivateZoneWithID:v5 configuration:v6 delegate:0 error:&v34];
  v8 = v34;

  if (v7)
  {
    v9 = objc_alloc_init(HMBMutableLocalZoneConfiguration);
    [(HMBLocalZoneConfiguration *)v9 setCreateIfNeeded:1];
    v10 = [*(a1 + 32) localDatabase];
    v33 = v8;
    v11 = [v10 openZoneWithMirror:v7 configuration:v9 error:&v33];
    v12 = v33;

    if (v11)
    {
      [v11 startUp];
      v13 = [v7 startUp];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __37__HMBCloudDatabase_removeZoneWithID___block_invoke_86;
      v30 = &unk_2786E2C20;
      v14 = *(a1 + 40);
      v31 = *(a1 + 32);
      v32 = v14;
      v15 = [v13 flatMap:&v27];
      v16 = [v3 completionHandlerAdapter];
      v17 = [v15 addCompletionBlock:v16];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v25;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to open private local zone for removal: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      [v3 finishWithError:v12];
    }

    v8 = v12;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v21;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to open existing private cloud zone for removal: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [v3 finishWithError:v8];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __37__HMBCloudDatabase_removeZoneWithID___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) zoneID];
  v6 = objc_alloc_init(HMBCloudZoneConfiguration);
  v26 = 0;
  v7 = [v4 openExistingSharedZoneWithID:v5 configuration:v6 delegate:0 error:&v26];
  v8 = v26;

  if (v7)
  {
    v9 = objc_alloc_init(HMBMutableLocalZoneConfiguration);
    [(HMBLocalZoneConfiguration *)v9 setCreateIfNeeded:1];
    v10 = [*(a1 + 32) localDatabase];
    v25 = v8;
    v11 = [v10 openZoneWithMirror:v7 configuration:v9 error:&v25];
    v12 = v25;

    if (v11)
    {
      [v11 startUp];
      v13 = [v7 leaveCloudShareRequestingNewInvitationToken:0];
      v14 = [v3 completionHandlerAdapter];
      v15 = [v13 addCompletionBlock:v14];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v23;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to open shared local zone for removal: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      [v3 finishWithError:v12];
    }

    v8 = v12;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to open existing shared cloud zone for removal: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [v3 finishWithError:v8];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __37__HMBCloudDatabase_removeZoneWithID___block_invoke_88(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v2 handleRemovedZoneIDs:v5 userInitiated:{1, v7, v8}];

  [v4 finishWithNoResult];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)_openOrCreateZoneWithScope:(int64_t)scope recordZoneID:(id)d delegate:(id)delegate shouldCreate:(BOOL)create configuration:(id)configuration existingCloudZone:(id)zone error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  dCopy = d;
  delegateCopy = delegate;
  configurationCopy = configuration;
  zoneCopy = zone;
  v16 = [HMBCloudZoneID alloc];
  containerID = [(HMBCloudDatabase *)self containerID];
  v18 = [(HMBCloudZoneID *)v16 initWithContainerID:containerID scope:scope zoneID:dCopy];

  os_unfair_lock_lock_with_options();
  zoneStateByZoneID = [(HMBCloudDatabase *)self zoneStateByZoneID];
  v20 = [zoneStateByZoneID objectForKey:v18];

  if (v20)
  {
    goto LABEL_2;
  }

  if (!create)
  {
    v56 = objc_autoreleasePoolPush();
    selfCopy = self;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v59;
      v73 = 2112;
      v74 = v18;
      _os_log_impl(&dword_22AD27000, v58, OS_LOG_TYPE_INFO, "%{public}@No cloud zone state found with ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v56);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      *error = v32 = 0;
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  if (scope != 2)
  {
    _HMFPreconditionFailure();
    __break(1u);
  }

  v33 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543618;
    v72 = v36;
    v73 = 2112;
    v74 = v18;
    _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_INFO, "%{public}@Creating state for cloud zone with ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v33);
  v37 = [HMBCloudZoneStateModel alloc];
  modelID = [(HMBCloudID *)v18 modelID];
  privateDatabaseState = [(HMBCloudDatabase *)selfCopy2 privateDatabaseState];
  hmbModelID = [privateDatabaseState hmbModelID];
  v20 = [(HMBCloudZoneStateModel *)v37 initWithModelID:modelID parentModelID:hmbModelID];

  [(HMBCloudZoneStateModel *)v20 setZoneID:v18];
  [(HMBCloudZoneStateModel *)v20 setNeedsZoneCreation:MEMORY[0x277CBEC38]];
  stateZone = [(HMBCloudDatabase *)selfCopy2 stateZone];
  v70 = v20;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  v43 = [stateZone update:v42];

  if (v43)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy2;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v47;
      v73 = 2112;
      v74 = v43;
      _os_log_impl(&dword_22AD27000, v46, OS_LOG_TYPE_ERROR, "%{public}@Unable to save new zone to database: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    if (error)
    {
      v48 = v43;
      *error = v43;
    }

LABEL_38:
    v32 = 0;
    goto LABEL_46;
  }

  zoneStateByZoneID2 = [(HMBCloudDatabase *)selfCopy2 zoneStateByZoneID];
  [zoneStateByZoneID2 setObject:v20 forKey:v18];

LABEL_2:
  cloudZone = [(HMBCloudZoneStateModel *)v20 cloudZone];
  v22 = cloudZone;
  if (cloudZone)
  {
    delegate = [(HMBCloudZoneID *)cloudZone delegate];
    v24 = delegate;
    if (delegateCopy)
    {
      v25 = delegate == 0;
    }

    else
    {
      v25 = 1;
    }

    v27 = v25 || delegate == delegateCopy;
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    if (v27)
    {
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v31;
        v73 = 2112;
        v74 = v22;
        _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_INFO, "%{public}@Using existing HMBCloudZone instance: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v32 = v22;
    }

    else
    {
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v55;
        v73 = 2112;
        v74 = v18;
        _os_log_impl(&dword_22AD27000, v54, OS_LOG_TYPE_ERROR, "%{public}@Cannot set a delegate on cloud zone with identifier %@ because that cloud zone has already been opened with a different delegate", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      if (v66)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:1];
        *v66 = v32 = 0;
      }

      else
      {
        v32 = 0;
      }
    }
  }

  else
  {
    v49 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    if (zoneCopy)
    {
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v52;
        v73 = 2112;
        v74 = zoneCopy;
        _os_log_impl(&dword_22AD27000, v51, OS_LOG_TYPE_INFO, "%{public}@Using re-opened HMBCloudZone instance: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
      v53 = zoneCopy;
    }

    else
    {
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v61;
        v73 = 2112;
        v74 = v18;
        _os_log_impl(&dword_22AD27000, v60, OS_LOG_TYPE_INFO, "%{public}@Creating new HMBCloudZone instance with ID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
      cloudZoneFactory = [(HMBCloudDatabase *)selfCopy4 cloudZoneFactory];
      v53 = (cloudZoneFactory)[2](cloudZoneFactory, selfCopy4, configurationCopy, v20);

      [(HMBCloudZoneID *)v53 setDelegate:delegateCopy];
    }

    [(HMBCloudZoneStateModel *)v20 setCloudZone:v53];
    v22 = v53;
    v32 = v22;
  }

LABEL_46:
  os_unfair_lock_unlock(&self->_propertyLock);

  v63 = *MEMORY[0x277D85DE8];

  return v32;
}

- (BOOL)reopenOrRecreatePrivateZone:(id)zone error:(id *)error
{
  zoneCopy = zone;
  cloudZoneID = [zoneCopy cloudZoneID];
  scope = [cloudZoneID scope];

  if (scope == 2)
  {
    cloudZoneID2 = [zoneCopy cloudZoneID];
    scope2 = [cloudZoneID2 scope];
    cloudZoneID3 = [zoneCopy cloudZoneID];
    zoneID = [cloudZoneID3 zoneID];
    delegate = [zoneCopy delegate];
    configuration = [zoneCopy configuration];
    v15 = [(HMBCloudDatabase *)self _openOrCreateZoneWithScope:scope2 recordZoneID:zoneID delegate:delegate shouldCreate:1 configuration:configuration existingCloudZone:zoneCopy error:error];
    v16 = v15 != 0;

    return v16;
  }

  else
  {
    v18 = _HMFPreconditionFailure();
    return [(HMBCloudDatabase *)v18 openExistingSharedZoneWithID:v19 configuration:v20 delegate:v21 error:v22, v23];
  }
}

- (id)openExistingSharedZoneWithID:(id)d configuration:(id)configuration delegate:(id)delegate error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = dCopy;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_INFO, "%{public}@Asked to open existing shared zone with ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [(HMBCloudDatabase *)selfCopy _openOrCreateZoneWithScope:3 recordZoneID:dCopy delegate:delegateCopy shouldCreate:0 configuration:configurationCopy existingCloudZone:0 error:error];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)openExistingPrivateZoneWithID:(id)d configuration:(id)configuration delegate:(id)delegate error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = dCopy;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_INFO, "%{public}@Asked to open existing private zone with ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [(HMBCloudDatabase *)selfCopy _openOrCreateZoneWithScope:2 recordZoneID:dCopy delegate:delegateCopy shouldCreate:0 configuration:configurationCopy existingCloudZone:0 error:error];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)openOrCreatePrivateZoneWithID:(id)d configuration:(id)configuration delegate:(id)delegate error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = dCopy;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_INFO, "%{public}@Asked to open or create private zone with ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [(HMBCloudDatabase *)selfCopy _openOrCreateZoneWithScope:2 recordZoneID:dCopy delegate:delegateCopy shouldCreate:1 configuration:configurationCopy existingCloudZone:0 error:error];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)handleRemovedZoneIDs:(id)ds userInitiated:(BOOL)initiated
{
  v52 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = ds;
  v38 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v38)
  {
    v36 = *v40;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v39 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        selfCopy = self;
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v9;
          v48 = 2112;
          v49 = v5;
          _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling removed zone ID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v6);
        os_unfair_lock_lock_with_options();
        zoneStateByZoneID = [(HMBCloudDatabase *)selfCopy zoneStateByZoneID];
        v11 = [zoneStateByZoneID objectForKey:v5];
        cloudZone = [v11 cloudZone];

        os_unfair_lock_unlock(&selfCopy->_propertyLock);
        if ([cloudZone isZoneRebuildInProgress] && !initiated)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = selfCopy;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            *buf = 138543618;
            v47 = v16;
            v48 = 2112;
            v49 = v5;
            _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_INFO, "%{public}@Normal remove behavior for zone %@ suppressed due to rebuild.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          goto LABEL_25;
        }

        v17 = selfCopy;
        v18 = v5;
        localDatabase = [(HMBCloudDatabase *)v17 localDatabase];
        v20 = objc_alloc_init(HMBLocalZoneConfiguration);
        v44 = 0;
        v21 = [localDatabase openZoneWithZoneID:v18 configuration:v20 error:&v44];
        v22 = v44;

        if (!v21)
        {
          v26 = objc_autoreleasePoolPush();
          v27 = v17;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543874;
            v47 = v29;
            v48 = 2112;
            v49 = v18;
            v50 = 2112;
            v51 = v22;
            _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to open local zone with ID %@ for removal: %@", buf, 0x20u);
          }

          goto LABEL_21;
        }

        localDatabase2 = [(HMBCloudDatabase *)v17 localDatabase];
        v43 = v22;
        v24 = [localDatabase2 removeLocalDataForZone:v21 error:&v43];
        v25 = v43;

        if ((v24 & 1) == 0)
        {
          v26 = objc_autoreleasePoolPush();
          v30 = v17;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            *buf = 138543874;
            v47 = v31;
            v48 = 2112;
            v49 = v21;
            v50 = 2112;
            v51 = v25;
            _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove local data for zone %@: %@", buf, 0x20u);
          }

          v22 = v25;
LABEL_21:

          objc_autoreleasePoolPop(v26);
          goto LABEL_22;
        }

        v22 = v25;
LABEL_22:

        [(HMBCloudDatabase *)v17 removeStateForZoneID:v18];
        delegate = [(HMBCloudDatabase *)v17 delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate cloudDatabase:v17 didRemoveZoneWithID:v18];
        }

LABEL_25:
      }

      v38 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v38);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedZonesIDs:(id)ds
{
  v50 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v34 = [MEMORY[0x277CBEB58] set];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = dsCopy;
  v38 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v38)
  {
    v36 = *v40;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v39 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        selfCopy = self;
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = HMFGetLogIdentifier();
          *buf = 138543618;
          v44 = v9;
          v45 = 2112;
          v46 = v5;
          _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling updated zone ID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v6);
        os_unfair_lock_lock_with_options();
        zoneStateByZoneID = [(HMBCloudDatabase *)selfCopy zoneStateByZoneID];
        v11 = [zoneStateByZoneID objectForKey:v5];

        cloudZone = [v11 cloudZone];
        if (!v11)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = selfCopy;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v13;
            v16 = HMFGetLogIdentifier();
            zoneStateByZoneID2 = [(HMBCloudDatabase *)v14 zoneStateByZoneID];
            *buf = 138543874;
            v44 = v16;
            v45 = 2112;
            v46 = v5;
            v47 = 2112;
            v48 = zoneStateByZoneID2;
            _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Got update for a zone ID %@ we don't have state for. All zone states: %@", buf, 0x20u);

            v13 = v33;
          }

          objc_autoreleasePoolPop(v13);
          [v34 addObject:v5];
        }

        os_unfair_lock_unlock(&selfCopy->_propertyLock);
        if (cloudZone)
        {
          isZoneRebuildInProgress = [cloudZone isZoneRebuildInProgress];
          v19 = objc_autoreleasePoolPush();
          v20 = selfCopy;
          v21 = HMFGetOSLogHandle();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
          if (isZoneRebuildInProgress)
          {
            if (v22)
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543618;
              v44 = v23;
              v45 = 2112;
              v46 = v5;
              _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_INFO, "%{public}@Normal update behavior for suppressed due to rebuild for zoneID: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v19);
            [cloudZone handleZoneChangedNotification];
          }

          else
          {
            if (v22)
            {
              v28 = HMFGetLogIdentifier();
              *buf = 138543618;
              v44 = v28;
              v45 = 2112;
              v46 = v5;
              _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_INFO, "%{public}@Performing cloud pull for open cloud zone with updated zoneID: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v19);
            v29 = [HMBProcessingOptions optionsWithLabel:@"Fetch due to Subscription Push"];
            v30 = [cloudZone performCloudPullWithOptions:v29];
          }
        }

        else
        {
          v24 = objc_autoreleasePoolPush();
          v25 = selfCopy;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v44 = v27;
            v45 = 2112;
            v46 = v5;
            _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_INFO, "%{public}@No open HMBCloudZone exists for zoneID %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
        }
      }

      v38 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v38);
  }

  if ([v34 count])
  {
    v31 = [(HMBCloudDatabase *)self synchronizeZoneStateForZoneIDs:v34];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)handleCreatedZoneIDs:(id)ds
{
  v33 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  delegate = [(HMBCloudDatabase *)self delegate];
  v22 = objc_opt_respondsToSelector();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = dsCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v12;
          v30 = 2112;
          v31 = v8;
          _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling created zone ID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        os_unfair_lock_lock_with_options();
        zoneStateByZoneID = [(HMBCloudDatabase *)selfCopy zoneStateByZoneID];
        v14 = [zoneStateByZoneID objectForKey:v8];
        cloudZone = [v14 cloudZone];

        os_unfair_lock_unlock(&selfCopy->_propertyLock);
        if ([cloudZone isZoneRebuildInProgress])
        {
          v16 = objc_autoreleasePoolPush();
          v17 = selfCopy;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v29 = v19;
            v30 = 2112;
            v31 = v8;
            _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_INFO, "%{public}@Due to rebuild, suppressing normal create behavior for zone with ID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
        }

        else if (v22)
        {
          [delegate cloudDatabase:selfCopy didCreateZoneWithID:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)synchronizeZoneStateForZoneIDs:(id)ds
{
  v4 = [ds na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_62];
  array = [MEMORY[0x277CBEB18] array];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __51__HMBCloudDatabase_synchronizeZoneStateForZoneIDs___block_invoke_2;
  v12 = &unk_2786E0FE0;
  selfCopy = self;
  v14 = array;
  v6 = array;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];
  v7 = [MEMORY[0x277D2C900] chainFutures:{v6, v9, v10, v11, v12, selfCopy}];

  return v7;
}

void __51__HMBCloudDatabase_synchronizeZoneStateForZoneIDs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 integerValue];
  switch(v7)
  {
    case 1:
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = CKDatabaseScopeString();
        v20 = 138543618;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@Asked to perform zone state synchronization for unsupported database scope: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = MEMORY[0x277D2C900];
      v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      v11 = [v17 futureWithError:v10];
      goto LABEL_10;
    case 3:
      v8 = *(a1 + 32);
      v9 = [v8 sharedDatabaseState];
      goto LABEL_6;
    case 2:
      v8 = *(a1 + 32);
      v9 = [v8 privateDatabaseState];
LABEL_6:
      v10 = v9;
      v11 = __synchronizeZoneStateForZoneIDs(v8, v6, v9, 1);
LABEL_10:
      v18 = v11;

      [*(a1 + 40) addObject:v18];
      break;
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HMBCloudDatabase_synchronizeZoneStateForZoneIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 scope];

  return [v2 numberWithInteger:v3];
}

- (void)addDatabaseOperation:(id)operation forScope:(int64_t)scope
{
  operationCopy = operation;
  switch(scope)
  {
    case 3:
      v9 = operationCopy;
      sharedDatabase = [(HMBCloudDatabase *)self sharedDatabase];
      break;
    case 2:
      v9 = operationCopy;
      sharedDatabase = [(HMBCloudDatabase *)self privateDatabase];
      break;
    case 1:
      v9 = operationCopy;
      sharedDatabase = [(HMBCloudDatabase *)self publicDatabase];
      break;
    default:
      goto LABEL_8;
  }

  v8 = sharedDatabase;
  [sharedDatabase addOperation:v9];

  operationCopy = v9;
LABEL_8:
}

- (void)addContainerOperation:(id)operation
{
  operationCopy = operation;
  container = [(HMBCloudDatabase *)self container];
  [container addOperation:operationCopy];
}

- (id)_updateAPSRegistration:(BOOL)registration
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HMBCloudDatabase__updateAPSRegistration___block_invoke;
  v9[3] = &unk_2786E0F98;
  objc_copyWeak(&v10, &location);
  registrationCopy = registration;
  operationScheduler = [(HMBCloudDatabase *)self operationScheduler];
  v7 = [v5 lazyFutureWithBlock:v9 scheduler:operationScheduler];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __43__HMBCloudDatabase__updateAPSRegistration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained container];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMBCloudDatabase__updateAPSRegistration___block_invoke_2;
  v7[3] = &unk_2786E0F70;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = v3;
  v8 = v6;
  v10 = *(a1 + 40);
  [v5 serverPreferredPushEnvironmentWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
}

void __43__HMBCloudDatabase__updateAPSRegistration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@[HMBCloudDatabase] Failed to resolve preferred CloudKit environment with error: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    if (WeakRetained)
    {
      v12 = v5;
      if (!v12)
      {
        v12 = *MEMORY[0x277CEE9F0];
        v13 = objc_autoreleasePoolPush();
        v14 = v8;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = HMFGetLogIdentifier();
          v30 = 138543618;
          v31 = v16;
          v32 = 2112;
          v33 = v12;
          _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Did not receive a preferred push environment, defaulting to %@", &v30, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
      }

      v17 = objc_autoreleasePoolPush();
      v18 = v8;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v20;
        v32 = 2112;
        v33 = v12;
        _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_INFO, "%{public}@Registering APS Connection for environment: %@", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [HMBCloudPushHandler sharedHandlerForEnvironment:v12];
      v22 = *(a1 + 48);
      v23 = [v18 configuration];
      v24 = [v23 sourceApplicationBundleIdentifier];
      if (v22 == 1)
      {
        [v21 addObserver:v18 forBundleIdentifier:v24];
      }

      else
      {
        [v21 removeAllObserversForBundleIdentifier:v24];
      }

      [*(a1 + 32) finishWithNoResult];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v27;
        _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@[HMBCloudDatabase] Lost self.", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v28 = *(a1 + 32);
      v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      [v28 finishWithError:v12];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_performInitialCloudSync
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_INFO, "%{public}@Performing initial cloud sync", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  array = [MEMORY[0x277CBEB18] array];
  v8 = __waitForAccountAvailability(selfCopy);
  [array addObject:v8];

  configuration = [(HMBCloudDatabase *)selfCopy configuration];
  subscriptionPushRegistrationAction = [configuration subscriptionPushRegistrationAction];

  if (subscriptionPushRegistrationAction == 1)
  {
    v11 = 1;
    goto LABEL_7;
  }

  if (subscriptionPushRegistrationAction == 2)
  {
    v11 = 0;
LABEL_7:
    v12 = [(HMBCloudDatabase *)selfCopy _updateAPSRegistration:v11];
    [array addObject:v12];
  }

  v13 = selfCopy;
  v14 = MEMORY[0x277D2C900];
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v29 = ____synchronizeAllZoneState_block_invoke;
  v30 = &unk_2786E1080;
  v31 = v13;
  v32 = 0;
  immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
  v16 = [v14 lazyFutureWithBlock:&buf scheduler:immediateScheduler];

  [array addObject:v16];
  v17 = v13;
  v18 = MEMORY[0x277D2C900];
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v29 = ____removeDeletedZones_block_invoke;
  v30 = &unk_2786E10F8;
  v31 = v17;
  v19 = v17;
  operationScheduler = [(HMBCloudDatabase *)v19 operationScheduler];
  v21 = [v18 lazyFutureWithBlock:&buf scheduler:operationScheduler];

  [array addObject:v21];
  v22 = [MEMORY[0x277D2C900] chainFutures:array];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __44__HMBCloudDatabase__performInitialCloudSync__block_invoke;
  v27[3] = &unk_2786E1E10;
  v27[4] = v19;
  v23 = [v22 addSuccessBlock:v27];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__HMBCloudDatabase__performInitialCloudSync__block_invoke_52;
  v26[3] = &unk_2786E13E8;
  v26[4] = v19;
  v24 = [v23 addFailureBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __44__HMBCloudDatabase__performInitialCloudSync__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully performed initial cloud sync", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) initialCloudSyncFuture];
  [v8 finishWithNoResult];

  v9 = *MEMORY[0x277D85DE8];
}

void __44__HMBCloudDatabase__performInitialCloudSync__block_invoke_52(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform initial cloud sync (will retry after delay): %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HMBCloudDatabase__performInitialCloudSync__block_invoke_53;
  v10[3] = &unk_2786E0F48;
  v10[4] = v8;
  [v8 retryStartupBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __44__HMBCloudDatabase__performInitialCloudSync__block_invoke_53(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22AD27000, v4, OS_LOG_TYPE_INFO, "%{public}@Retrying initial cloud sync", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _performInitialCloudSync];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)performInitialCloudSync
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  initialCloudSyncFuture = self->_initialCloudSyncFuture;
  if (initialCloudSyncFuture)
  {
    v4 = initialCloudSyncFuture;
    os_unfair_lock_unlock(&self->_propertyLock);
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Returning existing initial cloud sync future: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v10 = self->_initialCloudSyncFuture;
    self->_initialCloudSyncFuture = v9;

    v4 = self->_initialCloudSyncFuture;
    os_unfair_lock_unlock(&self->_propertyLock);
    [(HMBCloudDatabase *)self _performInitialCloudSync];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NAScheduler)operationScheduler
{
  v2 = MEMORY[0x277D2C938];
  configuration = [(HMBCloudDatabase *)self configuration];
  operationQueue = [configuration operationQueue];
  v5 = [v2 schedulerWithDispatchQueue:operationQueue];

  return v5;
}

- (CKContainerID)containerID
{
  container = [(HMBCloudDatabase *)self container];
  containerID = [container containerID];

  return containerID;
}

- (HMBCloudDatabase)initWithLocalDatabase:(id)database configuration:(id)configuration error:(id *)error
{
  v127 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  configurationCopy = configuration;
  if (!databaseCopy)
  {
    _HMFPreconditionFailure();
LABEL_49:
    _HMFPreconditionFailure();
  }

  v10 = configurationCopy;
  if (!configurationCopy)
  {
    goto LABEL_49;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v122 = v14;
    v123 = 2112;
    v124 = databaseCopy;
    v125 = 2112;
    v126 = v10;
    _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating cloud database with localDatabase: %@ configuration: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [HMBLocalZoneIDUnshared alloc];
  containerID = [v10 containerID];
  containerIdentifier = [containerID containerIdentifier];
  v18 = selfCopy;
  v19 = [(HMBLocalZoneIDUnshared *)v15 initWithName:containerIdentifier];

  v20 = objc_alloc_init(HMBMutableLocalZoneConfiguration);
  [(HMBLocalZoneConfiguration *)v20 setCreateIfNeeded:1];
  v109 = 0;
  v21 = [databaseCopy openZoneWithZoneID:v19 configuration:v20 error:&v109];
  v107 = v109;
  if (v21)
  {
    v99 = v18;
    v103 = databaseCopy;
    v22 = objc_alloc_init(MEMORY[0x277CBC230]);
    [v22 setUseZoneWidePCS:{objc_msgSend(v10, "isManateeContainer")}];
    v23 = objc_alloc(MEMORY[0x277CBC218]);
    containerID2 = [v10 containerID];
    v98 = v22;
    v25 = [v23 initWithContainerID:containerID2 options:v22];

    sourceApplicationBundleIdentifier = [v10 sourceApplicationBundleIdentifier];
    v97 = v25;
    [v25 setSourceApplicationBundleIdentifier:sourceApplicationBundleIdentifier];

    containerID3 = [v10 containerID];
    v28 = v21;
    v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    array = [MEMORY[0x277CBEB18] array];
    v30 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A089A5B9-6D32-4A0E-B611-0492B7D9F3D5"];
    v31 = objc_opt_class();
    v114 = 0;
    v105 = v28;
    v106 = v30;
    v32 = [v28 fetchModelsWithParentModelID:v30 ofType:v31 error:&v114];
    v104 = v114;
    if (!v32)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v122 = v35;
        v123 = 2112;
        v124 = v104;
        _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to load cloud database states: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
    }

    v100 = v21;
    v101 = v20;
    v102 = v19;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v36 = v32;
    v37 = [v36 countByEnumeratingWithState:&v110 objects:buf count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v111;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v111 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v110 + 1) + 8 * i);
          cloudID = [v41 cloudID];
          scope = [cloudID scope];

          v44 = [MEMORY[0x277CCABB0] numberWithInteger:scope];
          [v29 setObject:v41 forKeyedSubscript:v44];
        }

        v38 = [v36 countByEnumeratingWithState:&v110 objects:buf count:16];
      }

      while (v38);
    }

    v45 = [v29 objectForKeyedSubscript:&unk_283EB9DB0];

    if (!v45)
    {
      v46 = [[HMBCloudID alloc] initWithContainerID:containerID3 scope:1];
      v47 = [HMBCloudDatabaseStateModel alloc];
      modelID = [(HMBCloudID *)v46 modelID];
      v49 = [(HMBCloudDatabaseStateModel *)v47 initWithModelID:modelID parentModelID:v106];

      [(HMBCloudDatabaseStateModel *)v49 setCloudID:v46];
      v50 = objc_autoreleasePoolPush();
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        *v115 = 138543874;
        v116 = v52;
        v117 = 2112;
        v118 = v46;
        v119 = 2112;
        v120 = v49;
        _os_log_impl(&dword_22AD27000, v51, OS_LOG_TYPE_INFO, "%{public}@Created public database state model with cloudID %@: %@", v115, 0x20u);
      }

      objc_autoreleasePoolPop(v50);
      [v29 setObject:v49 forKeyedSubscript:&unk_283EB9DB0];
      [array addObject:v49];
    }

    v53 = [v29 objectForKeyedSubscript:&unk_283EB9DC8];

    v54 = array;
    if (!v53)
    {
      v55 = [[HMBCloudID alloc] initWithContainerID:containerID3 scope:2];
      v56 = [HMBCloudDatabaseStateModel alloc];
      modelID2 = [(HMBCloudID *)v55 modelID];
      v58 = [(HMBCloudDatabaseStateModel *)v56 initWithModelID:modelID2 parentModelID:v106];

      [(HMBCloudDatabaseStateModel *)v58 setCloudID:v55];
      v59 = objc_autoreleasePoolPush();
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = HMFGetLogIdentifier();
        *v115 = 138543874;
        v116 = v61;
        v117 = 2112;
        v118 = v55;
        v119 = 2112;
        v120 = v58;
        _os_log_impl(&dword_22AD27000, v60, OS_LOG_TYPE_INFO, "%{public}@Created private database state model with cloudID %@: %@", v115, 0x20u);
      }

      objc_autoreleasePoolPop(v59);
      [v29 setObject:v58 forKeyedSubscript:&unk_283EB9DC8];
      v54 = array;
      [array addObject:v58];
    }

    v62 = [v29 objectForKeyedSubscript:&unk_283EB9DE0];

    v21 = v100;
    if (!v62)
    {
      v63 = [[HMBCloudID alloc] initWithContainerID:containerID3 scope:3];
      v64 = [HMBCloudDatabaseStateModel alloc];
      modelID3 = [(HMBCloudID *)v63 modelID];
      v66 = [(HMBCloudDatabaseStateModel *)v64 initWithModelID:modelID3 parentModelID:v106];

      [(HMBCloudDatabaseStateModel *)v66 setCloudID:v63];
      v67 = objc_autoreleasePoolPush();
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        v69 = HMFGetLogIdentifier();
        *v115 = 138543874;
        v116 = v69;
        v117 = 2112;
        v118 = v63;
        v119 = 2112;
        v120 = v66;
        _os_log_impl(&dword_22AD27000, v68, OS_LOG_TYPE_INFO, "%{public}@Created shared database state model with cloudID %@: %@", v115, 0x20u);
      }

      objc_autoreleasePoolPop(v67);
      [v29 setObject:v66 forKeyedSubscript:&unk_283EB9DE0];
      v54 = array;
      [array addObject:v66];
    }

    v70 = v105;
    if ([v54 count])
    {
      v71 = [v105 update:v54];
      if (v71)
      {
        v72 = objc_autoreleasePoolPush();
        v73 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v74 = HMFGetLogIdentifier();
          *v115 = 138543618;
          v116 = v74;
          v117 = 2112;
          v118 = v71;
          _os_log_impl(&dword_22AD27000, v73, OS_LOG_TYPE_ERROR, "%{public}@Unable to update cloud database models: %@", v115, 0x16u);

          v70 = v105;
        }

        objc_autoreleasePoolPop(v72);
        v54 = array;
      }
    }

    v75 = [v29 copy];

    v76 = v70;
    v77 = objc_opt_class();
    *&v110 = 0;
    v78 = [v76 fetchModelsOfType:v77 error:&v110];
    v79 = v110;
    if (v78)
    {
      v80 = v78;
    }

    else
    {
      v88 = objc_autoreleasePoolPush();
      v89 = v76;
      v90 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
      {
        v91 = HMFGetLogIdentifier();
        *buf = 138543618;
        v122 = v91;
        v123 = 2112;
        v124 = v79;
        _os_log_impl(&dword_22AD27000, v90, OS_LOG_TYPE_FAULT, "%{public}@Unable to load zone model state: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v88);
      v80 = [MEMORY[0x277CBEB98] set];
    }

    v92 = v80;

    v93 = [[HMBCloudCredentialsAvailabilityListener alloc] initWithContainer:v97];
    v94 = objc_alloc_init(HMBCloudDatabaseDataSource);
    databaseCopy = v103;
    v82 = [(HMBCloudDatabase *)v99 initWithLocalDatabase:v103 stateZone:v76 container:v97 configuration:v10 databaseStateModelsByScope:v75 zoneStateModels:v92 credentialsAvailabilityListener:v93 dataSource:v94];

    v87 = v82;
    v20 = v101;
    v19 = v102;
    goto LABEL_45;
  }

  v81 = objc_autoreleasePoolPush();
  v82 = v18;
  v83 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    v84 = HMFGetLogIdentifier();
    *buf = 138543618;
    v122 = v84;
    v123 = 2112;
    v124 = v107;
    _os_log_impl(&dword_22AD27000, v83, OS_LOG_TYPE_ERROR, "%{public}@Failed to create state zone for HMBCloudDatabase initialization: %@", buf, 0x16u);

    v21 = 0;
  }

  objc_autoreleasePoolPop(v81);
  if (!error)
  {
    v87 = 0;
LABEL_45:
    v85 = v107;
    goto LABEL_46;
  }

  v85 = v107;
  v86 = v107;
  v87 = 0;
  *error = v107;
LABEL_46:

  v95 = *MEMORY[0x277D85DE8];
  return v87;
}

- (HMBCloudDatabase)initWithLocalDatabase:(id)database stateZone:(id)zone container:(id)container configuration:(id)configuration databaseStateModelsByScope:(id)scope zoneStateModels:(id)models credentialsAvailabilityListener:(id)listener dataSource:(id)self0
{
  v70 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  obj = zone;
  zoneCopy = zone;
  containerCopy = container;
  configurationCopy = configuration;
  scopeCopy = scope;
  modelsCopy = models;
  listenerCopy = listener;
  sourceCopy = source;
  v60 = databaseCopy;
  if (!databaseCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_24;
  }

  if (!zoneCopy)
  {
LABEL_24:
    _HMFPreconditionFailure();
    goto LABEL_25;
  }

  if (!containerCopy)
  {
LABEL_25:
    _HMFPreconditionFailure();
    goto LABEL_26;
  }

  if (!scopeCopy)
  {
LABEL_26:
    _HMFPreconditionFailure();
    goto LABEL_27;
  }

  if (!modelsCopy)
  {
LABEL_27:
    _HMFPreconditionFailure();
    goto LABEL_28;
  }

  if (!listenerCopy)
  {
LABEL_28:
    _HMFPreconditionFailure();
    goto LABEL_29;
  }

  if (!sourceCopy)
  {
LABEL_29:
    _HMFPreconditionFailure();
LABEL_30:
    _HMFPreconditionFailure();
    goto LABEL_31;
  }

  v59 = sourceCopy;
  v68.receiver = self;
  v68.super_class = HMBCloudDatabase;
  v22 = [(HMBCloudDatabase *)&v68 init];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_22;
  }

  objc_storeStrong(&v22->_localDatabase, database);
  objc_storeStrong(&v23->_stateZone, obj);
  objc_storeStrong(&v23->_container, container);
  v24 = [configurationCopy copy];
  configuration = v23->_configuration;
  v23->_configuration = v24;

  objc_storeStrong(&v23->_credentialsAvailabilityListener, listener);
  objc_storeStrong(&v23->_dataSource, source);
  publicCloudDatabase = [(CKContainer *)v23->_container publicCloudDatabase];
  publicDatabase = v23->_publicDatabase;
  v23->_publicDatabase = publicCloudDatabase;

  v28 = [scopeCopy objectForKeyedSubscript:&unk_283EB9DB0];
  publicDatabaseState = v23->_publicDatabaseState;
  v23->_publicDatabaseState = v28;

  [(HMBCloudDatabaseStateModel *)v23->_publicDatabaseState setDatabase:v23->_publicDatabase];
  if (!v23->_publicDatabaseState)
  {
    goto LABEL_30;
  }

  privateCloudDatabase = [(CKContainer *)v23->_container privateCloudDatabase];
  privateDatabase = v23->_privateDatabase;
  v23->_privateDatabase = privateCloudDatabase;

  v32 = [scopeCopy objectForKeyedSubscript:&unk_283EB9DC8];
  privateDatabaseState = v23->_privateDatabaseState;
  v23->_privateDatabaseState = v32;

  [(HMBCloudDatabaseStateModel *)v23->_privateDatabaseState setDatabase:v23->_privateDatabase];
  if (!v23->_privateDatabaseState)
  {
LABEL_31:
    _HMFPreconditionFailure();
LABEL_32:
    _HMFPreconditionFailure();
  }

  sharedCloudDatabase = [(CKContainer *)v23->_container sharedCloudDatabase];
  sharedDatabase = v23->_sharedDatabase;
  v23->_sharedDatabase = sharedCloudDatabase;

  v36 = [scopeCopy objectForKeyedSubscript:&unk_283EB9DE0];
  sharedDatabaseState = v23->_sharedDatabaseState;
  v23->_sharedDatabaseState = v36;

  [(HMBCloudDatabaseStateModel *)v23->_sharedDatabaseState setDatabase:v23->_sharedDatabase];
  if (!v23->_sharedDatabaseState)
  {
    goto LABEL_32;
  }

  v58 = zoneCopy;
  v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(modelsCopy, "count")}];
  zoneStateByZoneID = v23->_zoneStateByZoneID;
  v23->_zoneStateByZoneID = v38;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obja = modelsCopy;
  v40 = modelsCopy;
  v41 = [v40 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v65;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v65 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v64 + 1) + 8 * i);
        zoneID = [v45 zoneID];

        if (zoneID)
        {
          v47 = v23->_zoneStateByZoneID;
          zoneID2 = [v45 zoneID];
          [(NSMutableDictionary *)v47 setObject:v45 forKey:zoneID2];
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v42);
  }

  v49 = objc_alloc_init(MEMORY[0x277CCABD8]);
  invitationOperationQueue = v23->_invitationOperationQueue;
  v23->_invitationOperationQueue = v49;

  [(NSOperationQueue *)v23->_invitationOperationQueue setMaxConcurrentOperationCount:1];
  [(NSOperationQueue *)v23->_invitationOperationQueue setQualityOfService:17];
  v51 = objc_alloc_init(MEMORY[0x277CCABD8]);
  databaseFetchOperationQueue = v23->_databaseFetchOperationQueue;
  v23->_databaseFetchOperationQueue = v51;

  [(NSOperationQueue *)v23->_databaseFetchOperationQueue setMaxConcurrentOperationCount:1];
  [(NSOperationQueue *)v23->_databaseFetchOperationQueue setQualityOfService:25];
  cloudZoneFactory = v23->_cloudZoneFactory;
  v23->_cloudZoneFactory = &__block_literal_global_3775;

  zoneCopy = v58;
  modelsCopy = obja;
LABEL_22:

  v54 = *MEMORY[0x277D85DE8];
  return v23;
}

HMBCloudZone *__162__HMBCloudDatabase_initWithLocalDatabase_stateZone_container_configuration_databaseStateModelsByScope_zoneStateModels_credentialsAvailabilityListener_dataSource___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[HMBCloudZone alloc] initWithCloudDatabase:v8 configuration:v7 state:v6];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t101 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t101, &__block_literal_global_106);
  }

  v3 = logCategory__hmf_once_v102;

  return v3;
}

uint64_t __31__HMBCloudDatabase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v102;
  logCategory__hmf_once_v102 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (id)removePrivateZoneWithID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy scope] == 2)
  {
    v5 = MEMORY[0x277D2C900];
    v16 = MEMORY[0x277D85DD0];
    v17 = dCopy;
    v6 = [(HMBCloudDatabase *)self operationScheduler:v16];
    v7 = [v5 lazyFutureWithBlock:&v16 scheduler:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove zone with ID %@ on a non-private database", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    v7 = [v12 futureWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

void __55__HMBCloudDatabase_CloudZone__removePrivateZoneWithID___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing private cloud zone with ID %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 32);
  v10 = [v9 privateDatabase];
  v11 = [*(a1 + 40) zoneID];
  __modifyRecordZoneOperation(v9, v10, 0, v11, 0, v3);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)createPrivateZoneWithID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy scope] == 2)
  {
    v5 = MEMORY[0x277D2C900];
    v16 = MEMORY[0x277D85DD0];
    v17 = dCopy;
    v6 = [(HMBCloudDatabase *)self operationScheduler:v16];
    v7 = [v5 lazyFutureWithBlock:&v16 scheduler:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to create zone with ID %@ on a non-private database.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    v7 = [v12 futureWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

void __55__HMBCloudDatabase_CloudZone__createPrivateZoneWithID___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    *buf = 138543618;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating private cloud zone with ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = objc_alloc_init(MEMORY[0x277D2C918]);
  v10 = objc_alloc(MEMORY[0x277CBC5E8]);
  v11 = [*(a1 + 40) zoneID];
  v12 = [v10 initWithZoneID:v11];

  v13 = *(a1 + 32);
  v14 = [v13 privateDatabase];
  __modifyRecordZoneOperation(v13, v14, v12, 0, 0, v9);

  v15 = [v9 future];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __55__HMBCloudDatabase_CloudZone__createPrivateZoneWithID___block_invoke_5;
  v24 = &unk_2786E13C0;
  v16 = *(a1 + 40);
  v25 = *(a1 + 32);
  v26 = v16;
  v17 = [v15 addSuccessBlock:&v21];
  v18 = [v3 completionHandlerAdapter];
  v19 = [v17 addCompletionBlock:v18];

  v20 = *MEMORY[0x277D85DE8];
}

void __55__HMBCloudDatabase_CloudZone__createPrivateZoneWithID___block_invoke_5(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v5 = [*(a1 + 32) zoneStateByZoneID];
  v6 = [v5 objectForKey:*(a1 + 40)];

  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      *buf = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_FAULT, "%{public}@Local zone model state was removed while creating CKRecordZone with ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [HMBCloudZoneStateModel alloc];
    v13 = [*(a1 + 40) modelID];
    v14 = [*(a1 + 32) privateDatabaseState];
    v15 = [v14 hmbModelID];
    v6 = [(HMBCloudZoneStateModel *)v12 initWithModelID:v13 parentModelID:v15];

    [(HMBCloudZoneStateModel *)v6 setZoneID:*(a1 + 40)];
    v16 = [*(a1 + 32) zoneStateByZoneID];
    [v16 setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }

  [(HMBCloudZoneStateModel *)v6 setNeedsZoneCreation:MEMORY[0x277CBEC28]];
  v17 = [*(a1 + 32) stateZone];
  v21 = v6;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v19 = [v17 update:v18];

  os_unfair_lock_unlock(v4 + 2);
  v20 = *MEMORY[0x277D85DE8];
}

- (id)fetchZonesWithIDs:(id)ds inDatabase:(id)database
{
  dsCopy = ds;
  databaseCopy = database;
  v8 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HMBCloudDatabase_CloudZone__fetchZonesWithIDs_inDatabase___block_invoke;
  v14[3] = &unk_2786E1258;
  v15 = dsCopy;
  selfCopy = self;
  v17 = databaseCopy;
  v9 = databaseCopy;
  v10 = dsCopy;
  operationScheduler = [(HMBCloudDatabase *)self operationScheduler];
  v12 = [v8 lazyFutureWithBlock:v14 scheduler:operationScheduler];

  return v12;
}

void __60__HMBCloudDatabase_CloudZone__fetchZonesWithIDs_inDatabase___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 na_map:&__block_literal_global_3889];
  __fetchCloudZones(*(a1 + 40), v5, *(a1 + 48), 0, v4);
}

- (void)updateRebuildStatus:(id)status forZoneWithID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v28 = v11;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = statusCopy;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Updating rebuild state for zone %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  zoneStateByZoneID = [(HMBCloudDatabase *)selfCopy zoneStateByZoneID];
  v13 = [zoneStateByZoneID objectForKey:dCopy];

  if (v13)
  {
    [v13 setRebuilderStatus:statusCopy];
    stateZone = [(HMBCloudDatabase *)selfCopy stateZone];
    v26 = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v16 = [stateZone update:v15];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v20;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to update state model for zone: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v24;
      _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to find state model for zone.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  os_unfair_lock_unlock(&self->_propertyLock);
  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateServerChangeToken:(id)token forZoneWithID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  zoneStateByZoneID = [(HMBCloudDatabase *)self zoneStateByZoneID];
  v9 = [zoneStateByZoneID objectForKey:dCopy];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (v9)
  {
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      hmbDescription = [tokenCopy hmbDescription];
      *buf = 138543874;
      v28 = v13;
      v29 = 2112;
      v30 = dCopy;
      v31 = 2112;
      v32 = hmbDescription;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Updating server change token of %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    serverChangeToken = [v9 serverChangeToken];
    [v9 setServerChangeToken:tokenCopy];
    stateZone = [(HMBCloudDatabase *)selfCopy stateZone];
    v26 = v9;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v18 = [stateZone update:v17];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v28 = v22;
        v29 = 2112;
        v30 = v9;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to update server change token for zone %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      [v9 setServerChangeToken:serverChangeToken];
    }
  }

  else
  {
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = dCopy;
      _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot find zone model to update server change for with zone ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  os_unfair_lock_unlock(&self->_propertyLock);
  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateServerChangeToken:(id)token forDatabaseWithScope:(int64_t)scope
{
  v23[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  os_unfair_lock_lock_with_options();
  v7 = [(HMBCloudDatabase *)self databaseStateForDatabaseScope:scope];
  serverChangeToken = [v7 serverChangeToken];
  [v7 setServerChangeToken:tokenCopy];
  stateZone = [(HMBCloudDatabase *)self stateZone];
  v23[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v11 = [stateZone update:v10];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v15;
      v19 = 2048;
      scopeCopy = scope;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to update server change token for scope %ld: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [v7 setServerChangeToken:serverChangeToken];
  }

  os_unfair_lock_unlock(&self->_propertyLock);
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)needsZoneCreationForZoneWithID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock_with_options();
  zoneStateByZoneID = [(HMBCloudDatabase *)self zoneStateByZoneID];
  v6 = [zoneStateByZoneID objectForKey:dCopy];

  if (v6)
  {
    needsZoneCreation = [v6 needsZoneCreation];
    bOOLValue = [needsZoneCreation BOOLValue];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot find zone model to fetch needs zone creation for with zone ID %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    bOOLValue = 0;
  }

  os_unfair_lock_unlock(&self->_propertyLock);
  v13 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (id)serverChangeTokenForZoneWithID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock_with_options();
  zoneStateByZoneID = [(HMBCloudDatabase *)self zoneStateByZoneID];
  v6 = [zoneStateByZoneID objectForKey:dCopy];

  if (v6)
  {
    serverChangeToken = [v6 serverChangeToken];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot find zone model to fetch server change token for with zone ID %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    serverChangeToken = 0;
  }

  os_unfair_lock_unlock(&self->_propertyLock);
  v12 = *MEMORY[0x277D85DE8];

  return serverChangeToken;
}

- (id)subscriptionIDForZoneID:(id)d recordType:(id)type
{
  dCopy = d;
  if (type)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@".%@", type];
  }

  else
  {
    type = &stru_283EAC008;
  }

  v7 = MEMORY[0x277CCACA8];
  [dCopy scope];
  v8 = CKDatabaseScopeString();
  containerID = [dCopy containerID];
  containerIdentifier = [containerID containerIdentifier];
  zoneID = [dCopy zoneID];
  hmbDescription = [zoneID hmbDescription];
  v13 = [v7 stringWithFormat:@"ZoneSubscription_%@.%@.%@%@", v8, containerIdentifier, hmbDescription, type];

  return v13;
}

- (id)subscriptionIDForCloudID:(id)d recordType:(id)type
{
  dCopy = d;
  if (type)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@".%@", type];
  }

  else
  {
    type = &stru_283EAC008;
  }

  v7 = MEMORY[0x277CCACA8];
  [dCopy scope];
  v8 = CKDatabaseScopeString();
  containerID = [dCopy containerID];
  containerIdentifier = [containerID containerIdentifier];
  v11 = [v7 stringWithFormat:@"DBSubscription_%@.%@%@", v8, containerIdentifier, type];

  return v11;
}

- (id)fetchSubscriptionsInDatabase:(id)database
{
  databaseCopy = database;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D2C900];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HMBCloudDatabase_CloudSubscription__fetchSubscriptionsInDatabase___block_invoke;
  v10[3] = &unk_2786E1830;
  objc_copyWeak(&v12, &location);
  v6 = databaseCopy;
  v11 = v6;
  operationScheduler = [(HMBCloudDatabase *)self operationScheduler];
  v8 = [v5 lazyFutureWithBlock:v10 scheduler:operationScheduler];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __68__HMBCloudDatabase_CloudSubscription__fetchSubscriptionsInDatabase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  __fetchSubscriptions(WeakRetained, *(a1 + 32), 0, v3);
}

- (id)fetchCurrentUserRecordForDatabase:(id)database
{
  databaseCopy = database;
  v5 = MEMORY[0x277D2C900];
  v10 = MEMORY[0x277D85DD0];
  v11 = databaseCopy;
  v6 = databaseCopy;
  v7 = [(HMBCloudDatabase *)self operationScheduler:v10];
  v8 = [v5 lazyFutureWithBlock:&v10 scheduler:v7];

  return v8;
}

- (id)acceptInvitationWithShareMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = MEMORY[0x277D2C900];
  v10 = MEMORY[0x277D85DD0];
  v11 = metadataCopy;
  v6 = metadataCopy;
  v7 = [(HMBCloudDatabase *)self operationScheduler:v10];
  v8 = [v5 lazyFutureWithBlock:&v10 scheduler:v7];

  return v8;
}

- (id)fetchShareMetadataForInvitation:(id)invitation
{
  invitationCopy = invitation;
  v5 = MEMORY[0x277D2C900];
  v10 = MEMORY[0x277D85DD0];
  v11 = invitationCopy;
  v6 = invitationCopy;
  v7 = [(HMBCloudDatabase *)self operationScheduler:v10];
  v8 = [v5 lazyFutureWithBlock:&v10 scheduler:v7];

  return v8;
}

- (id)fetchParticipantWithLookupInfo:(id)info
{
  infoCopy = info;
  v5 = MEMORY[0x277D2C900];
  v10 = MEMORY[0x277D85DD0];
  v11 = infoCopy;
  v6 = infoCopy;
  v7 = [(HMBCloudDatabase *)self operationScheduler:v10];
  v8 = [v5 lazyFutureWithBlock:&v10 scheduler:v7];

  return v8;
}

- (id)performCloudPullForScope:(int64_t)scope
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = [(HMBCloudDatabase *)self databaseStateForDatabaseScope:?];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D2C900]);
    os_unfair_lock_lock_with_options();
    queuedCloudPullFuture = [v4 queuedCloudPullFuture];
    if (queuedCloudPullFuture)
    {
      completionHandlerAdapter = [v5 completionHandlerAdapter];
      v8 = [queuedCloudPullFuture addCompletionBlock:completionHandlerAdapter];

      os_unfair_lock_unlock(&self->_propertyLock);
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = CKDatabaseScopeString();
        *buf = 138543618;
        v41 = v12;
        v42 = 2112;
        v43 = v13;
        _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_INFO, "%{public}@Coalescing cloud pull for scope: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      [v4 setQueuedCloudPullFuture:v5];
      os_unfair_lock_unlock(&self->_propertyLock);
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = CKDatabaseScopeString();
        *buf = 138543618;
        v41 = v24;
        v42 = 2112;
        v43 = v25;
        _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_INFO, "%{public}@Queueing up cloud pull for scope: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v26 = [HMBFutureOperation alloc];
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __56__HMBCloudDatabase_ZoneFetch__performCloudPullForScope___block_invoke;
      v37 = &unk_2786E2288;
      v38 = selfCopy2;
      v39 = v4;
      v27 = [(HMBFutureOperation *)v26 initWithBlock:&v34];
      v28 = [(HMBCloudDatabase *)selfCopy2 databaseFetchOperationQueue:v34];
      [v28 addOperation:v27];

      future = [(HMBFutureOperation *)v27 future];
      completionHandlerAdapter2 = [v5 completionHandlerAdapter];
      v31 = [future addCompletionBlock:completionHandlerAdapter2];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = CKDatabaseScopeString();
      *buf = 138543618;
      v41 = v17;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch updated zones for unsupported database scope: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    v5 = [v19 futureWithError:v20];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v5;
}

id __56__HMBCloudDatabase_ZoneFetch__performCloudPullForScope___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  [*(a1 + 40) setQueuedCloudPullFuture:0];
  os_unfair_lock_unlock(v2 + 2);
  v3 = objc_alloc_init(MEMORY[0x277D2C918]);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [v4 serverChangeToken];
  __performCloudPull(v5, v4, v6, 0, v3);

  v7 = [v3 future];

  return v7;
}

- (id)databaseStateForDatabaseScope:(int64_t)scope
{
  switch(scope)
  {
    case 1:
      publicDatabaseState = [(HMBCloudDatabase *)self publicDatabaseState];
      break;
    case 3:
      publicDatabaseState = [(HMBCloudDatabase *)self sharedDatabaseState];
      break;
    case 2:
      publicDatabaseState = [(HMBCloudDatabase *)self privateDatabaseState];
      break;
    default:
      publicDatabaseState = 0;
      break;
  }

  return publicDatabaseState;
}

- (id)synchronizeSharedZones
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_INFO, "%{public}@Asked to synchronize shared zones", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMBCloudDatabase *)selfCopy performCloudPullForScope:3];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_zonesWithScope:(int64_t)scope
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  zoneStateByZoneID = [(HMBCloudDatabase *)self zoneStateByZoneID];
  allKeys = [zoneStateByZoneID allKeys];

  os_unfair_lock_unlock(&self->_propertyLock);
  v7 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = allKeys;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 scope] == scope)
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v7 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)registerPrivateSubscription:(id)subscription
{
  v39 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v8;
    v35 = 2112;
    v36 = subscriptionCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to register subscription for Private DB: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  privateDatabaseState = [(HMBCloudDatabase *)selfCopy privateDatabaseState];
  subscriptions = [privateDatabaseState subscriptions];
  os_unfair_lock_unlock(&selfCopy->_propertyLock);
  if (subscriptions)
  {
    if ([subscriptions count])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = selfCopy;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543874;
        v34 = v14;
        v35 = 2112;
        v36 = subscriptionCopy;
        v37 = 2112;
        v38 = subscriptions;
        _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Not registering DB subscription %@ because it appears to already exist in our list of subscriptions: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      database = [privateDatabaseState database];
      v32 = subscriptionCopy;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      v24 = [(HMBCloudDatabase *)selfCopy pushSubscriptionsForDatabase:database subscriptionsToSave:v23 subscriptionIDsToRemove:MEMORY[0x277CBEBF8]];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __71__HMBCloudDatabase_Subscription_Internal__registerPrivateSubscription___block_invoke;
      v27[3] = &unk_2786E2BA8;
      v28 = subscriptions;
      v29 = subscriptionCopy;
      v30 = selfCopy;
      v31 = privateDatabaseState;
      futureWithNoResult = [v24 addSuccessBlock:v27];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Asked to register subscription on PrivateDB, but no subscriptions!.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = MEMORY[0x277D2C900];
    v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    futureWithNoResult = [v20 futureWithError:v21];
  }

  v25 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

void __71__HMBCloudDatabase_Subscription_Internal__registerPrivateSubscription___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) setByAddingObject:*(a1 + 40)];
  v5 = *(a1 + 48);
  os_unfair_lock_lock_with_options();
  [*(a1 + 56) setSubscriptions:v4];
  v6 = [*(a1 + 48) stateZone];
  v18[0] = *(a1 + 56);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v8 = [v6 update:v7];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 48);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to update zone state: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  os_unfair_lock_unlock(v5 + 2);
  v13 = *MEMORY[0x277D85DE8];
}

- (id)unregisterSharedSubscriptionForSubscriptionID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to unregister shared subscription for subscription ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  performInitialCloudSync = [(HMBCloudDatabase *)selfCopy performInitialCloudSync];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__HMBCloudDatabase_Subscription_Internal__unregisterSharedSubscriptionForSubscriptionID___block_invoke;
  v14[3] = &unk_2786E2C20;
  v14[4] = selfCopy;
  v15 = dCopy;
  v10 = dCopy;
  v11 = [performInitialCloudSync flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __89__HMBCloudDatabase_Subscription_Internal__unregisterSharedSubscriptionForSubscriptionID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 sharedDatabaseState];
  v4 = __unregisterSubscriptionForSubscriptionID(v1, v2, v3);

  return v4;
}

- (id)unregisterPrivateSubscriptionForSubscriptionID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to unregister private subscription for subscription ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  performInitialCloudSync = [(HMBCloudDatabase *)selfCopy performInitialCloudSync];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__HMBCloudDatabase_Subscription_Internal__unregisterPrivateSubscriptionForSubscriptionID___block_invoke;
  v14[3] = &unk_2786E2C20;
  v14[4] = selfCopy;
  v15 = dCopy;
  v10 = dCopy;
  v11 = [performInitialCloudSync flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __90__HMBCloudDatabase_Subscription_Internal__unregisterPrivateSubscriptionForSubscriptionID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 privateDatabaseState];
  v4 = __unregisterSubscriptionForSubscriptionID(v1, v2, v3);

  return v4;
}

- (id)subscriptionsForZoneWithID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock_with_options();
  zoneStateByZoneID = [(HMBCloudDatabase *)self zoneStateByZoneID];
  v6 = [zoneStateByZoneID objectForKey:dCopy];

  if (v6)
  {
    subscriptions = [v6 subscriptions];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      zoneStateByZoneID2 = [(HMBCloudDatabase *)selfCopy zoneStateByZoneID];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = dCopy;
      v20 = 2112;
      v21 = zoneStateByZoneID2;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find zone state for zone ID %@ when fetching subscriptions. All zone ID state: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    subscriptions = [MEMORY[0x277CBEB98] set];
  }

  v13 = subscriptions;

  os_unfair_lock_unlock(&self->_propertyLock);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)unregisterSubscription:(id)subscription forZoneWithID:(id)d
{
  v50 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v43 = v11;
    v44 = 2112;
    v45 = subscriptionCopy;
    v46 = 2112;
    v47 = dCopy;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Asked to unregister subscription for zone ID %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  zoneStateByZoneID = [(HMBCloudDatabase *)selfCopy zoneStateByZoneID];
  v13 = [zoneStateByZoneID objectForKeyedSubscript:dCopy];
  subscriptions = [v13 subscriptions];

  os_unfair_lock_unlock(&selfCopy->_propertyLock);
  if (subscriptions)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __80__HMBCloudDatabase_Subscription_Internal__unregisterSubscription_forZoneWithID___block_invoke;
    v40[3] = &unk_2786E2BD0;
    v15 = subscriptionCopy;
    v41 = v15;
    v16 = [subscriptions na_map:v40];
    if ([v16 count])
    {
      v17 = -[HMBCloudDatabase databaseStateForDatabaseScope:](selfCopy, "databaseStateForDatabaseScope:", [dCopy scope]);
      database = [v17 database];
      allObjects = [v16 allObjects];
      v20 = [(HMBCloudDatabase *)selfCopy pushSubscriptionsForDatabase:database subscriptionsToSave:MEMORY[0x277CBEBF8] subscriptionIDsToRemove:allObjects];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __80__HMBCloudDatabase_Subscription_Internal__unregisterSubscription_forZoneWithID___block_invoke_7;
      v35[3] = &unk_2786E2BA8;
      v36 = subscriptions;
      v37 = v16;
      v38 = selfCopy;
      v39 = dCopy;
      futureWithNoResult = [v20 addSuccessBlock:v35];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543874;
        v43 = v32;
        v44 = 2112;
        v45 = v15;
        v46 = 2112;
        v47 = subscriptions;
        _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Not unregistering zone subscription %@ because it is not in our list of existing subscriptions: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v28 = v41;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      zoneStateByZoneID2 = [(HMBCloudDatabase *)v23 zoneStateByZoneID];
      *buf = 138544130;
      v43 = v25;
      v44 = 2112;
      v45 = subscriptionCopy;
      v46 = 2112;
      v47 = dCopy;
      v48 = 2112;
      v49 = zoneStateByZoneID2;
      _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Asked to unregister subscription %@ on unknown zoneID %@. All zone ID state: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v27 = MEMORY[0x277D2C900];
    v28 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    futureWithNoResult = [v27 futureWithError:v28];
  }

  v33 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

id __80__HMBCloudDatabase_Subscription_Internal__unregisterSubscription_forZoneWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) subscriptionID];
  v5 = [v3 subscriptionID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [v3 subscriptionID];
  }

  else
  {
    v8 = v3;
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

    v11 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v7 = 0;
    if (v10 && v13)
    {
      v14 = [v10 zoneID];
      v15 = [v13 zoneID];
      v16 = [v14 isEqual:v15];

      if (v16 && ([v10 recordType], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "recordType"), v18 = objc_claimAutoreleasedReturnValue(), v19 = HMFEqualObjects(), v18, v17, v19))
      {
        v7 = [v10 subscriptionID];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

void __80__HMBCloudDatabase_Subscription_Internal__unregisterSubscription_forZoneWithID___block_invoke_7(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __80__HMBCloudDatabase_Subscription_Internal__unregisterSubscription_forZoneWithID___block_invoke_2;
  v24[3] = &unk_2786E2BF8;
  v4 = *(a1 + 32);
  v25 = *(a1 + 40);
  v5 = [v4 na_filter:v24];
  v6 = *(a1 + 48);
  os_unfair_lock_lock_with_options();
  v7 = [*(a1 + 48) zoneStateByZoneID];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 56)];

  if (v8)
  {
    [v8 setSubscriptions:v5];
    v9 = [*(a1 + 48) stateZone];
    v26 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v11 = [v9 update:v10];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 48);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v15;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to update zone state: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 48);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = v3;
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 56);
      v21 = [*(a1 + 48) zoneStateByZoneID];
      *buf = 138543874;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find zone state for zone ID %@ after updating subscriptions. All zone ID state: %@", buf, 0x20u);

      v3 = v23;
    }

    objc_autoreleasePoolPop(v16);
  }

  os_unfair_lock_unlock(v6 + 2);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __80__HMBCloudDatabase_Subscription_Internal__unregisterSubscription_forZoneWithID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 subscriptionID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)registerSubscription:(id)subscription forZoneWithID:(id)d
{
  v50 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v43 = v11;
    v44 = 2112;
    v45 = subscriptionCopy;
    v46 = 2112;
    v47 = dCopy;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Asked to register subscription for zone ID %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  zoneStateByZoneID = [(HMBCloudDatabase *)selfCopy zoneStateByZoneID];
  v13 = [zoneStateByZoneID objectForKeyedSubscript:dCopy];
  subscriptions = [v13 subscriptions];

  os_unfair_lock_unlock(&selfCopy->_propertyLock);
  if (!subscriptions)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      zoneStateByZoneID2 = [(HMBCloudDatabase *)v24 zoneStateByZoneID];
      *buf = 138544130;
      v43 = v26;
      v44 = 2112;
      v45 = subscriptionCopy;
      v46 = 2112;
      v47 = dCopy;
      v48 = 2112;
      v49 = zoneStateByZoneID2;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Asked to register subscription %@ on unknown zoneID %@. All zone ID state: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v23);
    v28 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    futureWithNoResult = [v28 futureWithError:v15];
    goto LABEL_11;
  }

  v15 = [subscriptions na_map:&__block_literal_global_8419];
  subscriptionID = [subscriptionCopy subscriptionID];
  v17 = [v15 containsObject:subscriptionID];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v43 = v21;
      v44 = 2112;
      v45 = subscriptionCopy;
      v46 = 2112;
      v47 = subscriptions;
      _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Not registering zone subscription %@ because it is already in our list of subscriptions: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_11:
    v29 = futureWithNoResult;
    goto LABEL_13;
  }

  v30 = -[HMBCloudDatabase databaseStateForDatabaseScope:](selfCopy, "databaseStateForDatabaseScope:", [dCopy scope]);
  database = [v30 database];
  v41 = subscriptionCopy;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v33 = [(HMBCloudDatabase *)selfCopy pushSubscriptionsForDatabase:database subscriptionsToSave:v32 subscriptionIDsToRemove:MEMORY[0x277CBEBF8]];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __78__HMBCloudDatabase_Subscription_Internal__registerSubscription_forZoneWithID___block_invoke_4;
  v36[3] = &unk_2786E2BA8;
  v37 = subscriptions;
  v38 = subscriptionCopy;
  v39 = selfCopy;
  v40 = dCopy;
  v29 = [v33 addSuccessBlock:v36];

LABEL_13:
  v34 = *MEMORY[0x277D85DE8];

  return v29;
}

void __78__HMBCloudDatabase_Subscription_Internal__registerSubscription_forZoneWithID___block_invoke_4(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) setByAddingObject:*(a1 + 40)];
  v5 = *(a1 + 48);
  os_unfair_lock_lock_with_options();
  v6 = [*(a1 + 48) zoneStateByZoneID];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 56)];

  if (v7)
  {
    [v7 setSubscriptions:v4];
    v8 = [*(a1 + 48) stateZone];
    v23 = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v10 = [v8 update:v9];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 48);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v14;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to update zone state: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 48);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = v3;
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 56);
      v20 = [*(a1 + 48) zoneStateByZoneID];
      *buf = 138543874;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not find zone state for zone ID %@ after updating subscriptions. All zone ID state: %@", buf, 0x20u);

      v3 = v22;
    }

    objc_autoreleasePoolPop(v15);
  }

  os_unfair_lock_unlock(v5 + 2);
  v21 = *MEMORY[0x277D85DE8];
}

- (id)pushSubscriptionsForDatabase:(id)database subscriptionsToSave:(id)save subscriptionIDsToRemove:(id)remove
{
  databaseCopy = database;
  saveCopy = save;
  removeCopy = remove;
  v11 = MEMORY[0x277D2C900];
  v18 = MEMORY[0x277D85DD0];
  v19 = databaseCopy;
  v20 = saveCopy;
  v21 = removeCopy;
  v12 = removeCopy;
  v13 = saveCopy;
  v14 = databaseCopy;
  v15 = [(HMBCloudDatabase *)self operationScheduler:v18];
  v16 = [v11 lazyFutureWithBlock:&v18 scheduler:v15];

  return v16;
}

- (id)unregisterSharedSubscriptionForExternalRecordType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = typeCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to unregister shared subscription for external record type %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  performInitialCloudSync = [(HMBCloudDatabase *)selfCopy performInitialCloudSync];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HMBCloudDatabase_Subscription__unregisterSharedSubscriptionForExternalRecordType___block_invoke;
  v14[3] = &unk_2786E2C20;
  v14[4] = selfCopy;
  v15 = typeCopy;
  v10 = typeCopy;
  v11 = [performInitialCloudSync flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __84__HMBCloudDatabase_Subscription__unregisterSharedSubscriptionForExternalRecordType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 sharedDatabaseState];
  v4 = [v3 cloudID];
  v5 = [v2 subscriptionIDForCloudID:v4 recordType:*(a1 + 40)];
  v6 = [*(a1 + 32) sharedDatabaseState];
  v7 = __unregisterSubscriptionForSubscriptionID(v2, v5, v6);

  return v7;
}

- (id)unregisterPrivateSubscriptionForExternalRecordType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = typeCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to unregister private subscription for external record type %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  performInitialCloudSync = [(HMBCloudDatabase *)selfCopy performInitialCloudSync];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__HMBCloudDatabase_Subscription__unregisterPrivateSubscriptionForExternalRecordType___block_invoke;
  v14[3] = &unk_2786E2C20;
  v14[4] = selfCopy;
  v15 = typeCopy;
  v10 = typeCopy;
  v11 = [performInitialCloudSync flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __85__HMBCloudDatabase_Subscription__unregisterPrivateSubscriptionForExternalRecordType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 privateDatabaseState];
  v4 = [v3 cloudID];
  v5 = [v2 subscriptionIDForCloudID:v4 recordType:*(a1 + 40)];
  v6 = [*(a1 + 32) privateDatabaseState];
  v7 = __unregisterSubscriptionForSubscriptionID(v2, v5, v6);

  return v7;
}

- (id)registerSharedSubscriptionForExternalRecordType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = typeCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to register shared subscription for external record type %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  performInitialCloudSync = [(HMBCloudDatabase *)selfCopy performInitialCloudSync];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HMBCloudDatabase_Subscription__registerSharedSubscriptionForExternalRecordType___block_invoke;
  v14[3] = &unk_2786E2C20;
  v14[4] = selfCopy;
  v15 = typeCopy;
  v10 = typeCopy;
  v11 = [performInitialCloudSync flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __82__HMBCloudDatabase_Subscription__registerSharedSubscriptionForExternalRecordType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 sharedDatabaseState];
  v4 = [v1 registerSubscriptionForExternalRecordType:v2 databaseState:v3];

  return v4;
}

- (id)registerPrivateSubscriptionForExternalRecordType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = typeCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to register private subscription for external record type %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  performInitialCloudSync = [(HMBCloudDatabase *)selfCopy performInitialCloudSync];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__HMBCloudDatabase_Subscription__registerPrivateSubscriptionForExternalRecordType___block_invoke;
  v14[3] = &unk_2786E2C20;
  v14[4] = selfCopy;
  v15 = typeCopy;
  v10 = typeCopy;
  v11 = [performInitialCloudSync flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __83__HMBCloudDatabase_Subscription__registerPrivateSubscriptionForExternalRecordType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 privateDatabaseState];
  v4 = [v1 registerSubscriptionForExternalRecordType:v2 databaseState:v3];

  return v4;
}

- (id)registerSubscriptionForExternalRecordType:(id)type databaseState:(id)state
{
  v39 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  stateCopy = state;
  initialCloudSyncFuture = [(HMBCloudDatabase *)self initialCloudSyncFuture];
  isFinished = [initialCloudSyncFuture isFinished];

  if ((isFinished & 1) == 0)
  {
    _HMFPreconditionFailure();
  }

  cloudID = [stateCopy cloudID];
  v11 = [(HMBCloudDatabase *)self subscriptionIDForCloudID:cloudID recordType:typeCopy];

  os_unfair_lock_lock_with_options();
  subscriptions = [stateCopy subscriptions];
  os_unfair_lock_unlock(&self->_propertyLock);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __90__HMBCloudDatabase_Subscription__registerSubscriptionForExternalRecordType_databaseState___block_invoke;
  v30[3] = &unk_2786E2C48;
  v13 = v11;
  v31 = v13;
  if ([subscriptions na_any:v30])
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v34 = v17;
      v35 = 2112;
      v36 = v13;
      v37 = 2112;
      v38 = subscriptions;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_INFO, "%{public}@Not pushing database subscription ID %@ because it is already in our list of registered database subscriptions: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x277CBC2A0]) initWithSubscriptionID:v13];
    [v19 setRecordType:typeCopy];
    database = [stateCopy database];
    v32 = v19;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v22 = [(HMBCloudDatabase *)self pushSubscriptionsForDatabase:database subscriptionsToSave:v21 subscriptionIDsToRemove:MEMORY[0x277CBEBF8]];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __90__HMBCloudDatabase_Subscription__registerSubscriptionForExternalRecordType_databaseState___block_invoke_22;
    v26[3] = &unk_2786E2BA8;
    v26[4] = self;
    v27 = stateCopy;
    v28 = subscriptions;
    v29 = v19;
    v23 = v19;
    futureWithNoResult = [v22 addSuccessBlock:v26];
  }

  v24 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

uint64_t __90__HMBCloudDatabase_Subscription__registerSubscriptionForExternalRecordType_databaseState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 subscriptionID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __90__HMBCloudDatabase_Subscription__registerSubscriptionForExternalRecordType_databaseState___block_invoke_22(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v5 = [*(a1 + 48) setByAddingObject:*(a1 + 56)];
  [*(a1 + 40) setSubscriptions:v5];

  v6 = [*(a1 + 32) stateZone];
  v18[0] = *(a1 + 40);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v8 = [v6 update:v7];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to update database state: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  os_unfair_lock_unlock(v4 + 2);
  v13 = *MEMORY[0x277D85DE8];
}

@end