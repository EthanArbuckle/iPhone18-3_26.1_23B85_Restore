@interface MBCKDatabaseManager
+ (BOOL)fetchedSyncZoneWithAccount:(id)account;
+ (CKRecordZoneID)defaultZoneID;
+ (CKRecordZoneID)syncZoneID;
+ (id)zoneIDOfType:(unint64_t)type;
+ (void)_cacheSyncZoneFetchedWithAccount:(id)account;
+ (void)_clearSyncZoneFetchedWithAccount:(id)account;
- (BOOL)fetchDeviceToDeviceEncryptionSupportedByAccount:(BOOL *)account account:(id)a4 error:(id *)error;
- (BOOL)resetDatabaseWithAccount:(id)account policy:(id)policy operationGroup:(id)group error:(id *)error;
- (BOOL)resetDatabaseWithError:(id *)error;
- (BOOL)setUpSyncZoneWithAccount:(id)account policy:(id)policy operationGroup:(id)group xpcActivity:(id)activity error:(id *)error;
- (BOOL)shouldSupportBudgeting;
- (MBCKDatabaseManager)init;
- (id)_configureModifyRecordsOperation:(id)operation container:(id)container;
- (id)_createContainerWithSyncZoneForAccount:(id)account policy:(id)policy operationGroup:(id)group xpcActivity:(id)activity error:(id *)error;
- (id)_makeContainerForAccount:(id)account;
- (void)_addDatabaseOperation:(id)operation account:(id)account container:(id)container policy:(id)policy operationGroup:(id)group xpcActivity:(id)activity;
- (void)_configureCKOperation:(id)operation container:(id)container policy:(id)policy operationGroup:(id)group xpcActivity:(id)activity;
- (void)_handleAccountChangeNotification:(id)notification;
- (void)_removeContainerForPersonaIdentifier:(id)identifier;
- (void)_setUpSyncZoneWithContainer:(id)container policy:(id)policy operationGroup:(id)group xpcActivity:(id)activity completion:(id)completion;
- (void)addDatabaseOperation:(id)operation container:(id)container policy:(id)policy operationGroup:(id)group;
- (void)dealloc;
- (void)fetchConfigurationWithAccount:(id)account configuration:(id)configuration completion:(id)completion;
- (void)setShouldSupportBudgeting:(BOOL)budgeting account:(id)account;
- (void)submitCKEventMetric:(id)metric account:(id)account completionHandler:(id)handler;
@end

@implementation MBCKDatabaseManager

- (MBCKDatabaseManager)init
{
  v15.receiver = self;
  v15.super_class = MBCKDatabaseManager;
  v2 = [(MBCKDatabaseManager *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(MBCKDatabaseManager *)v2 setContainersByPersonaIdentifier:v3];

    v4 = objc_opt_new();
    [v4 setName:@"com.apple.backupd.ck.operations"];
    [v4 setMaxConcurrentOperationCount:7];
    [v4 setQualityOfService:17];
    [(MBCKDatabaseManager *)v2 setOperationQueue:v4];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.backupd.ck.notifications", v5);

    v7 = objc_opt_new();
    [v7 setMaxConcurrentOperationCount:1];
    [v7 setQualityOfService:17];
    [v7 setUnderlyingQueue:v6];
    objc_initWeak(&location, v2);
    v8 = +[NSNotificationCenter defaultCenter];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10013088C;
    v12[3] = &unk_1003BF6A0;
    objc_copyWeak(&v13, &location);
    v9 = [v8 addObserverForName:CKAccountChangedNotification object:0 queue:v7 usingBlock:v12];
    accountObserver = v2->_accountObserver;
    v2->_accountObserver = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  if (self->_accountObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_accountObserver];
  }

  v4.receiver = self;
  v4.super_class = MBCKDatabaseManager;
  [(MBCKDatabaseManager *)&v4 dealloc];
}

- (void)_handleAccountChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    *buf = 138412290;
    v10 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received notification: %@", buf, 0xCu);

    name2 = [notificationCopy name];
    _MBLog();
  }

  containersByPersonaIdentifier = [(MBCKDatabaseManager *)self containersByPersonaIdentifier];
  [containersByPersonaIdentifier enumerateKeysAndObjectsUsingBlock:&stru_1003BF6E0];
}

+ (void)_clearSyncZoneFetchedWithAccount:(id)account
{
  accountCopy = account;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 138543618;
    v9 = @"SyncZoneFetched";
    v10 = 2114;
    v11 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing %{public}@ for account %{public}@", buf, 0x16u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog();
  }

  persona = [accountCopy persona];
  [persona setPreferencesValue:0 forKey:@"SyncZoneFetched"];
}

+ (void)_cacheSyncZoneFetchedWithAccount:(id)account
{
  accountCopy = account;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 138543618;
    v9 = @"SyncZoneFetched";
    v10 = 2114;
    v11 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Caching %{public}@ for account %{public}@", buf, 0x16u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog();
  }

  persona = [accountCopy persona];
  [persona setPreferencesValue:&__kCFBooleanTrue forKey:@"SyncZoneFetched"];
}

+ (BOOL)fetchedSyncZoneWithAccount:(id)account
{
  v7 = 0;
  persona = [account persona];
  v4 = [persona getBooleanValueForKey:@"SyncZoneFetched" keyExists:&v7];

  if (v4)
  {
    v5 = v7 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

+ (CKRecordZoneID)defaultZoneID
{
  if (qword_1004217D0 != -1)
  {
    dispatch_once(&qword_1004217D0, &stru_1003BF728);
  }

  v3 = qword_1004217C8;

  return v3;
}

+ (CKRecordZoneID)syncZoneID
{
  if (qword_1004217E0 != -1)
  {
    dispatch_once(&qword_1004217E0, &stru_1003BF748);
  }

  v3 = qword_1004217D8;

  return v3;
}

+ (id)zoneIDOfType:(unint64_t)type
{
  if (type == 2)
  {
    syncZoneID = [self syncZoneID];
  }

  else
  {
    if (type != 1)
    {
      __assert_rtn("+[MBCKDatabaseManager zoneIDOfType:]", "MBCKDatabaseManager.m", 217, "0 && Unexpected call");
    }

    syncZoneID = [self defaultZoneID];
  }

  return syncZoneID;
}

- (void)setShouldSupportBudgeting:(BOOL)budgeting account:(id)account
{
  budgetingCopy = budgeting;
  accountCopy = account;
  v6 = [(MBCKDatabaseManager *)self _makeContainerForAccount:?];
  v7 = v6;
  if (v6)
  {
    ckContainer = [v6 ckContainer];
    if (!ckContainer)
    {
      __assert_rtn("[MBCKDatabaseManager setShouldSupportBudgeting:account:]", "MBCKDatabaseManager.m", 226, "ckContainer");
    }

    v9 = ckContainer;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (budgetingCopy)
    {
      v11 = [(MBCKDatabaseManager *)selfCopy requestsToSupportBudget]+ 1;
    }

    else
    {
      v11 = [(MBCKDatabaseManager *)selfCopy requestsToSupportBudget]- 1;
    }

    [(MBCKDatabaseManager *)selfCopy setRequestsToSupportBudget:v11];
    if ([(MBCKDatabaseManager *)selfCopy requestsToSupportBudget])
    {
      [v9 setSourceApplicationSecondaryIdentifier:@"com.apple.icloud.restore"];
    }

    else
    {
      [v9 setSourceApplicationSecondaryIdentifier:0];
    }

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)shouldSupportBudgeting
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(MBCKDatabaseManager *)selfCopy requestsToSupportBudget]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setUpSyncZoneWithContainer:(id)container policy:(id)policy operationGroup:(id)group xpcActivity:(id)activity completion:(id)completion
{
  containerCopy = container;
  policyCopy = policy;
  groupCopy = group;
  activityCopy = activity;
  completionCopy = completion;
  if (!containerCopy)
  {
    __assert_rtn("[MBCKDatabaseManager _setUpSyncZoneWithContainer:policy:operationGroup:xpcActivity:completion:]", "MBCKDatabaseManager.m", 251, "container");
  }

  if (!policyCopy)
  {
    __assert_rtn("[MBCKDatabaseManager _setUpSyncZoneWithContainer:policy:operationGroup:xpcActivity:completion:]", "MBCKDatabaseManager.m", 252, "policy");
  }

  v35 = activityCopy;
  account = [containerCopy account];
  personaIdentifier = [containerCopy personaIdentifier];
  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [account accountIdentifier];
    *buf = 138543618;
    *&buf[4] = accountIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = personaIdentifier;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating the sync zone for account %{public}@(%{public}@)", buf, 0x16u);

    accountIdentifier2 = [account accountIdentifier];
    _MBLog();
  }

  ckDatabase = [containerCopy ckDatabase];
  if (!ckDatabase)
  {
    __assert_rtn("[MBCKDatabaseManager _setUpSyncZoneWithContainer:policy:operationGroup:xpcActivity:completion:]", "MBCKDatabaseManager.m", 259, "database");
  }

  syncZoneID = [objc_opt_class() syncZoneID];
  if (!syncZoneID)
  {
    __assert_rtn("[MBCKDatabaseManager _setUpSyncZoneWithContainer:policy:operationGroup:xpcActivity:completion:]", "MBCKDatabaseManager.m", 261, "syncZoneID");
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v56 = sub_100131808;
  v57 = sub_100131818;
  v58 = 0;
  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  v21 = [CKFetchRecordZonesOperation alloc];
  v54 = syncZoneID;
  v22 = [NSArray arrayWithObjects:&v54 count:1];
  v23 = [v21 initWithRecordZoneIDs:v22];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100131820;
  v44[3] = &unk_1003BF798;
  v34 = syncZoneID;
  v45 = v34;
  v53 = buf;
  v24 = v20;
  v46 = v24;
  selfCopy = self;
  v25 = containerCopy;
  v48 = v25;
  v26 = policyCopy;
  v49 = v26;
  v27 = groupCopy;
  v50 = v27;
  v28 = v35;
  v51 = v28;
  v29 = ckDatabase;
  v52 = v29;
  [v23 setFetchRecordZonesCompletionBlock:v44];
  [(MBCKDatabaseManager *)self _configureCKOperation:v23 container:v25 policy:v26 operationGroup:v27 xpcActivity:v28];
  [v29 addOperation:v23];
  v36 = v25;
  v30 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100131D5C;
  block[3] = &unk_1003BF7C0;
  block[4] = self;
  v41 = account;
  v43 = buf;
  v42 = completionCopy;
  v31 = completionCopy;
  v32 = account;
  dispatch_group_notify(v24, v30, block);

  _Block_object_dispose(buf, 8);
}

- (BOOL)setUpSyncZoneWithAccount:(id)account policy:(id)policy operationGroup:(id)group xpcActivity:(id)activity error:(id *)error
{
  accountCopy = account;
  policyCopy = policy;
  groupCopy = group;
  activityCopy = activity;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKDatabaseManager setUpSyncZoneWithAccount:policy:operationGroup:xpcActivity:error:]", "MBCKDatabaseManager.m", 315, "account");
  }

  if (!error)
  {
    __assert_rtn("[MBCKDatabaseManager setUpSyncZoneWithAccount:policy:operationGroup:xpcActivity:error:]", "MBCKDatabaseManager.m", 316, "error");
  }

  v16 = activityCopy;
  [objc_opt_class() _clearSyncZoneFetchedWithAccount:accountCopy];
  v17 = [(MBCKDatabaseManager *)self _createContainerWithSyncZoneForAccount:accountCopy policy:policyCopy operationGroup:groupCopy xpcActivity:v16 error:error];
  v18 = v17 != 0;

  return v18;
}

- (BOOL)resetDatabaseWithAccount:(id)account policy:(id)policy operationGroup:(id)group error:(id *)error
{
  accountCopy = account;
  policyCopy = policy;
  groupCopy = group;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKDatabaseManager resetDatabaseWithAccount:policy:operationGroup:error:]", "MBCKDatabaseManager.m", 324, "account");
  }

  if (!policyCopy)
  {
    __assert_rtn("[MBCKDatabaseManager resetDatabaseWithAccount:policy:operationGroup:error:]", "MBCKDatabaseManager.m", 325, "policy");
  }

  [objc_opt_class() _clearSyncZoneFetchedWithAccount:accountCopy];
  v12 = [[MBCKContainer alloc] initWithAccount:accountCopy error:error];
  if (v12)
  {
    v13 = v12;
    syncZoneID = [objc_opt_class() syncZoneID];
    v46[0] = syncZoneID;
    defaultZoneID = [objc_opt_class() defaultZoneID];
    v46[1] = defaultZoneID;
    v16 = [NSArray arrayWithObjects:v46 count:2];

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      persona = [accountCopy persona];
      personaIdentifier = [persona personaIdentifier];
      *buf = 138412546;
      *&buf[4] = personaIdentifier;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Deleting all CK zones for persona:%@: %{public}@", buf, 0x16u);

      persona2 = [accountCopy persona];
      personaIdentifier2 = [persona2 personaIdentifier];
      _MBLog();
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = sub_100131808;
    v44 = sub_100131818;
    v45 = 0;
    v21 = dispatch_semaphore_create(0);
    v22 = [[CKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:0 recordZoneIDsToDelete:v16];
    operationID = [v22 operationID];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100132334;
    v37[3] = &unk_1003BF7E8;
    v24 = v16;
    v38 = v24;
    v25 = operationID;
    v39 = v25;
    v41 = buf;
    v26 = v21;
    v40 = v26;
    [v22 setModifyRecordZonesCompletionBlock:v37];
    [(MBCKDatabaseManager *)self addDatabaseOperation:v22 container:v13 policy:policyCopy operationGroup:groupCopy];
    MBSemaphoreWaitForever();
    v27 = *(*&buf[8] + 40);
    if (v27)
    {
      v28 = 0;
      if (error)
      {
        *error = v27;
      }
    }

    else
    {
      persona3 = [accountCopy persona];
      personaIdentifier3 = [persona3 personaIdentifier];
      [(MBCKDatabaseManager *)self _removeContainerForPersonaIdentifier:personaIdentifier3];

      v31 = (*&buf[8] + 40);
      obj = *(*&buf[8] + 40);
      v32 = [(MBCKDatabaseManager *)self _createContainerWithSyncZoneForAccount:accountCopy policy:policyCopy operationGroup:groupCopy xpcActivity:0 error:&obj];
      objc_storeStrong(v31, obj);

      v28 = v32 != 0;
      v13 = v32;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)resetDatabaseWithError:(id *)error
{
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:error];

  if (v7)
  {
    v8 = +[MBCKOperationPolicy expensiveCellularPolicy];
    v9 = [v8 operationGroupWithName:@"resetDatabase" processName:0];
    v10 = [(MBCKDatabaseManager *)self resetDatabaseWithAccount:v7 policy:v8 operationGroup:v9 error:error];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "nil service account", v13, 2u);
      _MBLog();
    }

    v10 = 0;
  }

  return v10;
}

- (id)_configureModifyRecordsOperation:(id)operation container:(id)container
{
  operationCopy = operation;
  containerCopy = container;
  if (!operationCopy)
  {
    __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 392, "operation");
  }

  v7 = containerCopy;
  if (!containerCopy)
  {
    __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 393, "container");
  }

  [operationCopy recordsToSave];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v38 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    zoneID = 0;
    v12 = *v36;
    do
    {
      v13 = 0;
      v14 = zoneID;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v8);
        }

        recordID = [*(*(&v35 + 1) + 8 * v13) recordID];
        zoneID = [recordID zoneID];

        if (v14 && ([v14 isEqual:zoneID] & 1) == 0)
        {
          __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 400, "!saveZoneID || [saveZoneID isEqual:currentZoneID]");
        }

        v13 = v13 + 1;
        v14 = zoneID;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
  }

  else
  {
    zoneID = 0;
  }

  if ([v8 count] && !zoneID)
  {
    __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 403, "!records.count || saveZoneID != nil");
  }

  [operationCopy recordIDsToDelete];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = v34 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    zoneID2 = 0;
    v20 = *v32;
    do
    {
      v21 = 0;
      v22 = zoneID2;
      do
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v16);
        }

        zoneID2 = [*(*(&v31 + 1) + 8 * v21) zoneID];
        if (v22 && ([v22 isEqual:zoneID2] & 1) == 0)
        {
          __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 410, "!deleteZoneID || [deleteZoneID isEqual:currentZoneID]");
        }

        v21 = v21 + 1;
        v22 = zoneID2;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v18);
  }

  else
  {
    zoneID2 = 0;
  }

  if ([v16 count] && !zoneID2)
  {
    __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 413, "!recordIDs.count || deleteZoneID != nil");
  }

  if (zoneID | zoneID2)
  {
    if (zoneID && zoneID2 && ([zoneID isEqual:zoneID2] & 1) == 0)
    {
      __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 423, "!saveZoneID || !deleteZoneID || [saveZoneID isEqual:deleteZoneID]");
    }

    if (zoneID)
    {
      v23 = zoneID;
    }

    else
    {
      v23 = zoneID2;
    }

    v24 = v23;
    defaultZoneID = [objc_opt_class() defaultZoneID];
    v26 = [v24 isEqual:defaultZoneID];

    if (v26)
    {
      ckDatabaseWithZoneWidePCS = [v7 ckDatabaseWithZoneWidePCS];
      [operationCopy setAtomic:0];
    }

    else
    {
      ckDatabaseWithZoneWidePCS = [v7 ckDatabase];
    }

    if (!ckDatabaseWithZoneWidePCS)
    {
      __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 431, "database");
    }

    [operationCopy setDatabase:ckDatabaseWithZoneWidePCS];
    v29 = ckDatabaseWithZoneWidePCS;
  }

  else
  {
    ckDatabase = [v7 ckDatabase];
    if (!ckDatabase)
    {
      __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 419, "database");
    }

    v29 = ckDatabase;
  }

  return v29;
}

- (void)_configureCKOperation:(id)operation container:(id)container policy:(id)policy operationGroup:(id)group xpcActivity:(id)activity
{
  operationCopy = operation;
  containerCopy = container;
  policyCopy = policy;
  groupCopy = group;
  activityCopy = activity;
  if (!containerCopy)
  {
    __assert_rtn("[MBCKDatabaseManager _configureCKOperation:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 437, "container");
  }

  if (!policyCopy)
  {
    __assert_rtn("[MBCKDatabaseManager _configureCKOperation:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 438, "policy");
  }

  v16 = activityCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ckDatabase = [(MBCKDatabaseManager *)self _configureModifyRecordsOperation:operationCopy container:containerCopy];
  }

  else
  {
    ckDatabase = [containerCopy ckDatabase];
    [operationCopy setDatabase:ckDatabase];
  }

  if (!ckDatabase)
  {
    __assert_rtn("[MBCKDatabaseManager _configureCKOperation:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 446, "database");
  }

  v18 = objc_opt_new();
  container = [ckDatabase container];
  [v18 setContainer:container];

  cellularAccess = [policyCopy cellularAccess];
  v21 = cellularAccess;
  if (cellularAccess)
  {
    allowsExpensiveNetworkAccess = [cellularAccess allowsExpensiveNetworkAccess];
    [v18 setAllowsCellularAccess:1];
    [v18 setAllowsExpensiveNetworkAccess:allowsExpensiveNetworkAccess];
  }

  else
  {
    [v18 setAllowsCellularAccess:0];
  }

  [v18 setQualityOfService:{objc_msgSend(policyCopy, "qualityOfService")}];
  [v18 setAutomaticallyRetryNetworkFailures:{objc_msgSend(policyCopy, "automaticallyRetryNetworkFailures")}];
  if (v16)
  {
    [v18 setXpcActivity:v16];
  }

  else
  {
    [v18 setDiscretionaryNetworkBehavior:0];
  }

  [operationCopy setConfiguration:v18];
  if (groupCopy)
  {
    group = [operationCopy group];

    if (!group)
    {
      [operationCopy setGroup:groupCopy];
    }
  }
}

- (void)_addDatabaseOperation:(id)operation account:(id)account container:(id)container policy:(id)policy operationGroup:(id)group xpcActivity:(id)activity
{
  operationCopy = operation;
  accountCopy = account;
  containerCopy = container;
  policyCopy = policy;
  groupCopy = group;
  activityCopy = activity;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKDatabaseManager _addDatabaseOperation:account:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 471, "account");
  }

  v20 = activityCopy;
  if (containerCopy)
  {
    v21 = 0;
    v22 = 1;
LABEL_6:
    [(MBCKDatabaseManager *)self _configureCKOperation:operationCopy container:containerCopy policy:policyCopy operationGroup:groupCopy xpcActivity:v20];
    if (MBIsInternalInstall())
    {
      v46 = policyCopy;
      group = [operationCopy group];
      name = [group name];

      if (name)
      {
        policyCopy = v46;
      }

      else
      {
        policyCopy = v46;
        if (!dword_1004217C0 && !atomic_fetch_add_explicit(&dword_1004217C0, 1u, memory_order_relaxed))
        {
          v26 = MBGetDefaultLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            v43 = objc_opt_class();
            operationID = [operationCopy operationID];
            [operationCopy group];
            v28 = v45 = v26;
            *buf = 138413058;
            v49 = v43;
            v50 = 2112;
            v51 = operationID;
            v52 = 2112;
            v53 = groupCopy;
            v54 = 2112;
            v55 = v28;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "%@(%@) doesn't have a group name: %@, %@", buf, 0x2Au);

            v44 = objc_opt_class();
            operationID2 = [operationCopy operationID];
            [operationCopy group];
            v42 = v41 = groupCopy;
            v37 = v44;
            v39 = operationID2;
            _MBLog();

            policyCopy = v46;
            v26 = v45;
          }
        }
      }
    }

    goto LABEL_14;
  }

  v47 = 0;
  containerCopy = [(MBCKDatabaseManager *)self _createContainerWithSyncZoneForAccount:accountCopy policy:policyCopy operationGroup:groupCopy xpcActivity:activityCopy error:&v47];
  v23 = v47;
  v22 = v23 == 0;
  if (!(containerCopy | v23))
  {
    __assert_rtn("[MBCKDatabaseManager _addDatabaseOperation:account:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 475, "container || localError");
  }

  v21 = v23;
  if (containerCopy)
  {
    goto LABEL_6;
  }

LABEL_14:
  v30 = [(MBCKDatabaseManager *)self operationQueue:v37];
  if (!v30)
  {
    __assert_rtn("[MBCKDatabaseManager _addDatabaseOperation:account:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 484, "operationQueue");
  }

  v31 = v30;
  if (!v22)
  {
    v32 = policyCopy;
    operationID3 = [operationCopy operationID];
    v34 = [MBError errorWithCode:202 error:v21 format:@"Failed to configure operation %@", operationID3];

    v35 = MBGetDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      operationID4 = [operationCopy operationID];
      *buf = 138543618;
      v49 = operationID4;
      v50 = 2114;
      v51 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Canceling operation %{public}@ since we don't have a container: %{public}@", buf, 0x16u);

      operationID5 = [operationCopy operationID];
      v40 = v34;
      _MBLog();
    }

    [operationCopy cancelWithUnderlyingError:v34];
    policyCopy = v32;
  }

  [v31 addOperation:{operationCopy, operationID5, v40}];
}

- (void)addDatabaseOperation:(id)operation container:(id)container policy:(id)policy operationGroup:(id)group
{
  groupCopy = group;
  policyCopy = policy;
  containerCopy = container;
  operationCopy = operation;
  account = [containerCopy account];
  [(MBCKDatabaseManager *)self _addDatabaseOperation:operationCopy account:account container:containerCopy policy:policyCopy operationGroup:groupCopy xpcActivity:0];
}

- (void)submitCKEventMetric:(id)metric account:(id)account completionHandler:(id)handler
{
  metricCopy = metric;
  accountCopy = account;
  handlerCopy = handler;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKDatabaseManager submitCKEventMetric:account:completionHandler:]", "MBCKDatabaseManager.m", 504, "account");
  }

  v10 = handlerCopy;
  v11 = [(MBCKDatabaseManager *)self _makeContainerForAccount:accountCopy];
  v12 = v11;
  if (v11)
  {
    ckContainer = [v11 ckContainer];
    [ckContainer submitEventMetric:metricCopy completionHandler:v10];
  }

  else if (v10)
  {
    v10[2](v10);
  }
}

- (BOOL)fetchDeviceToDeviceEncryptionSupportedByAccount:(BOOL *)account account:(id)a4 error:(id *)error
{
  v8 = a4;
  if (!account)
  {
    __assert_rtn("[MBCKDatabaseManager fetchDeviceToDeviceEncryptionSupportedByAccount:account:error:]", "MBCKDatabaseManager.m", 515, "enabled");
  }

  v9 = v8;
  if (!v8)
  {
    __assert_rtn("[MBCKDatabaseManager fetchDeviceToDeviceEncryptionSupportedByAccount:account:error:]", "MBCKDatabaseManager.m", 516, "account");
  }

  if (!error)
  {
    __assert_rtn("[MBCKDatabaseManager fetchDeviceToDeviceEncryptionSupportedByAccount:account:error:]", "MBCKDatabaseManager.m", 517, "error");
  }

  v10 = [(MBCKDatabaseManager *)self _makeContainerForAccount:v8];
  v11 = v10;
  if (!v10)
  {
    [MBError errorWithCode:1 format:@"nil container"];
    *error = v18 = 0;
    goto LABEL_16;
  }

  ckContainer = [v10 ckContainer];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100131808;
  v44 = sub_100131818;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100131808;
  v38 = sub_100131818;
  v39 = 0;
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100133988;
  v30[3] = &unk_1003BF810;
  v32 = &v40;
  v33 = &v34;
  v14 = v13;
  v31 = v14;
  [ckContainer accountInfoWithCompletionHandler:v30];
  MBGroupWaitForever();
  if (v41[5])
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v41[5];
      *buf = 138412290;
      v47 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to fetch the CK account info: %@", buf, 0xCu);
      v28 = v41[5];
      _MBLog();
    }

    v17 = v41[5];
  }

  else
  {
    if (v35[5])
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v35[5];
        *buf = 138543362;
        v47 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Fetched the CK account info: %{public}@", buf, 0xCu);
        v29 = v35[5];
        _MBLog();
      }

      if ([v35[5] accountStatus] != 1)
      {
        v18 = 1;
        goto LABEL_11;
      }

      deviceToDeviceEncryptionAvailability = [v35[5] deviceToDeviceEncryptionAvailability];
      v19 = deviceToDeviceEncryptionAvailability & 1;
      *account = deviceToDeviceEncryptionAvailability & 1;
      v18 = 1;
      if (!*error || (deviceToDeviceEncryptionAvailability & 1) == 0)
      {
        goto LABEL_12;
      }

      v25 = "!*error || !isDeviceToDeviceEncryptionSupportedByAccount";
      v26 = 558;
LABEL_32:
      __assert_rtn("[MBCKDatabaseManager fetchDeviceToDeviceEncryptionSupportedByAccount:account:error:]", "MBCKDatabaseManager.m", v26, v25);
    }

    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "nil CK account info", buf, 2u);
      _MBLog();
    }

    v17 = [MBError errorWithCode:1 format:@"nil CK account info"];
  }

  *error = v17;
  if (!v17)
  {
    v25 = "result || *error";
    v26 = 555;
    goto LABEL_32;
  }

  v18 = 0;
LABEL_11:
  v19 = 0;
  *account = 0;
LABEL_12:
  v20 = MBGetDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v47) = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "isDeviceToDeviceEncryptionSupportedByAccount:%{BOOL}d", buf, 8u);
    _MBLog();
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

LABEL_16:
  return v18;
}

- (id)_makeContainerForAccount:(id)account
{
  accountCopy = account;
  persona = [accountCopy persona];
  personaIdentifier = [persona personaIdentifier];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  containersByPersonaIdentifier = [(MBCKDatabaseManager *)selfCopy containersByPersonaIdentifier];
  v9 = [containersByPersonaIdentifier objectForKeyedSubscript:personaIdentifier];

  if (!v9)
  {
    v13 = 0;
    v9 = [[MBCKContainer alloc] initWithAccount:accountCopy error:&v13];
    v10 = v13;
    if (v9)
    {
      containersByPersonaIdentifier2 = [(MBCKDatabaseManager *)selfCopy containersByPersonaIdentifier];
      [containersByPersonaIdentifier2 setObject:v9 forKeyedSubscript:personaIdentifier];
    }

    else
    {
      containersByPersonaIdentifier2 = MBGetDefaultLog();
      if (os_log_type_enabled(containersByPersonaIdentifier2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, containersByPersonaIdentifier2, OS_LOG_TYPE_ERROR, "Failed to make container for account: %@", buf, 0xCu);
        _MBLog();
      }
    }
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)_createContainerWithSyncZoneForAccount:(id)account policy:(id)policy operationGroup:(id)group xpcActivity:(id)activity error:(id *)error
{
  accountCopy = account;
  policyCopy = policy;
  groupCopy = group;
  activityCopy = activity;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKDatabaseManager _createContainerWithSyncZoneForAccount:policy:operationGroup:xpcActivity:error:]", "MBCKDatabaseManager.m", 584, "account");
  }

  if (!error)
  {
    __assert_rtn("[MBCKDatabaseManager _createContainerWithSyncZoneForAccount:policy:operationGroup:xpcActivity:error:]", "MBCKDatabaseManager.m", 585, "error");
  }

  persona = [accountCopy persona];
  personaIdentifier = [persona personaIdentifier];

  if (!personaIdentifier)
  {
    __assert_rtn("[MBCKDatabaseManager _createContainerWithSyncZoneForAccount:policy:operationGroup:xpcActivity:error:]", "MBCKDatabaseManager.m", 587, "personaIdentifier");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  containersByPersonaIdentifier = [(MBCKDatabaseManager *)selfCopy containersByPersonaIdentifier];
  v18 = [containersByPersonaIdentifier objectForKeyedSubscript:personaIdentifier];

  if (v18 || (v18 = [[MBCKContainer alloc] initWithAccount:accountCopy error:error]) != 0)
  {
    v19 = +[MBRemoteConfiguration sharedInstance];
    v20 = [v19 shouldReloadConfigurationWithAccount:accountCopy];
    fetchedSyncZone = [(MBCKContainer *)v18 fetchedSyncZone];
    if (v20 & 1 | ((fetchedSyncZone & 1) == 0))
    {
      v22 = dispatch_group_create();
      if (v20)
      {
        if (!policyCopy)
        {
          policyCopy = +[MBCKOperationPolicy expensiveCellularPolicy];
        }

        v23 = groupCopy;
        if (!groupCopy)
        {
          v23 = [policyCopy operationGroupWithName:@"setUpSyncZone" processName:0];
        }

        dispatch_group_enter(v22);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10013413C;
        v44[3] = &unk_1003BC010;
        v45 = v22;
        groupCopy = v23;
        [v19 loadConfigurationWithContainer:v18 databaseManager:selfCopy policy:policyCopy operationGroup:v23 completion:v44];
      }

      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = sub_100131808;
      v42 = sub_100131818;
      v43 = 0;
      if (fetchedSyncZone)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v24 = v24;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            syncZoneID = [objc_opt_class() syncZoneID];
            *buf = 138543362;
            v47 = syncZoneID;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Sync zone %{public}@ already exists", buf, 0xCu);
          }

          syncZoneID2 = [objc_opt_class() syncZoneID];
          _MBLog();
        }
      }

      else
      {
        if (!policyCopy)
        {
          policyCopy = +[MBCKOperationPolicy expensiveCellularPolicy];
        }

        v28 = groupCopy;
        if (!groupCopy)
        {
          v28 = [policyCopy operationGroupWithName:@"setUpSyncZone" processName:0];
        }

        dispatch_group_enter(v22);
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100134144;
        v35[3] = &unk_1003BC160;
        v37 = &v38;
        v36 = v22;
        groupCopy = v28;
        [(MBCKDatabaseManager *)selfCopy _setUpSyncZoneWithContainer:v18 policy:policyCopy operationGroup:v28 xpcActivity:activityCopy completion:v35];
        v24 = v36;
      }

      MBGroupWaitForever();
      v29 = v39[5];
      v27 = v29 == 0;
      if (v29)
      {
        *error = v29;
      }

      else
      {
        containersByPersonaIdentifier2 = [(MBCKDatabaseManager *)selfCopy containersByPersonaIdentifier];
        [containersByPersonaIdentifier2 setObject:v18 forKeyedSubscript:personaIdentifier];
      }

      _Block_object_dispose(&v38, 8);

      v26 = 0;
    }

    else
    {
      v26 = v18;
      v27 = 0;
    }

    objc_sync_exit(selfCopy);
    if (v27)
    {
      v18 = v18;
      v26 = v18;
    }
  }

  else
  {
    objc_sync_exit(selfCopy);

    v26 = 0;
  }

  return v26;
}

- (void)_removeContainerForPersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    __assert_rtn("[MBCKDatabaseManager _removeContainerForPersonaIdentifier:]", "MBCKDatabaseManager.m", 648, "personaIdentifier");
  }

  v7 = identifierCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  containersByPersonaIdentifier = [(MBCKDatabaseManager *)selfCopy containersByPersonaIdentifier];
  [containersByPersonaIdentifier removeObjectForKey:v7];

  objc_sync_exit(selfCopy);
}

- (void)fetchConfigurationWithAccount:(id)account configuration:(id)configuration completion:(id)completion
{
  accountCopy = account;
  configurationCopy = configuration;
  completionCopy = completion;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKDatabaseManager fetchConfigurationWithAccount:configuration:completion:]", "MBCKDatabaseManager.m", 656, "account");
  }

  if (!configurationCopy)
  {
    __assert_rtn("[MBCKDatabaseManager fetchConfigurationWithAccount:configuration:completion:]", "MBCKDatabaseManager.m", 657, "configuration");
  }

  v11 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKDatabaseManager fetchConfigurationWithAccount:configuration:completion:]", "MBCKDatabaseManager.m", 658, "completion");
  }

  persona = [accountCopy persona];
  personaIdentifier = [persona personaIdentifier];

  if (!personaIdentifier)
  {
    __assert_rtn("[MBCKDatabaseManager fetchConfigurationWithAccount:configuration:completion:]", "MBCKDatabaseManager.m", 660, "personaIdentifier");
  }

  v14 = dispatch_get_global_queue(17, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013440C;
  v18[3] = &unk_1003BF838;
  v18[4] = self;
  v19 = accountCopy;
  v20 = configurationCopy;
  v21 = v11;
  v15 = configurationCopy;
  v16 = v11;
  v17 = accountCopy;
  dispatch_async(v14, v18);
}

@end