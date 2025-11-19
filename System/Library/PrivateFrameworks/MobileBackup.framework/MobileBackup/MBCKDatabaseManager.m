@interface MBCKDatabaseManager
+ (BOOL)fetchedSyncZoneWithAccount:(id)a3;
+ (CKRecordZoneID)defaultZoneID;
+ (CKRecordZoneID)syncZoneID;
+ (id)zoneIDOfType:(unint64_t)a3;
+ (void)_cacheSyncZoneFetchedWithAccount:(id)a3;
+ (void)_clearSyncZoneFetchedWithAccount:(id)a3;
- (BOOL)fetchDeviceToDeviceEncryptionSupportedByAccount:(BOOL *)a3 account:(id)a4 error:(id *)a5;
- (BOOL)resetDatabaseWithAccount:(id)a3 policy:(id)a4 operationGroup:(id)a5 error:(id *)a6;
- (BOOL)resetDatabaseWithError:(id *)a3;
- (BOOL)setUpSyncZoneWithAccount:(id)a3 policy:(id)a4 operationGroup:(id)a5 xpcActivity:(id)a6 error:(id *)a7;
- (BOOL)shouldSupportBudgeting;
- (MBCKDatabaseManager)init;
- (id)_configureModifyRecordsOperation:(id)a3 container:(id)a4;
- (id)_createContainerWithSyncZoneForAccount:(id)a3 policy:(id)a4 operationGroup:(id)a5 xpcActivity:(id)a6 error:(id *)a7;
- (id)_makeContainerForAccount:(id)a3;
- (void)_addDatabaseOperation:(id)a3 account:(id)a4 container:(id)a5 policy:(id)a6 operationGroup:(id)a7 xpcActivity:(id)a8;
- (void)_configureCKOperation:(id)a3 container:(id)a4 policy:(id)a5 operationGroup:(id)a6 xpcActivity:(id)a7;
- (void)_handleAccountChangeNotification:(id)a3;
- (void)_removeContainerForPersonaIdentifier:(id)a3;
- (void)_setUpSyncZoneWithContainer:(id)a3 policy:(id)a4 operationGroup:(id)a5 xpcActivity:(id)a6 completion:(id)a7;
- (void)addDatabaseOperation:(id)a3 container:(id)a4 policy:(id)a5 operationGroup:(id)a6;
- (void)dealloc;
- (void)fetchConfigurationWithAccount:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)setShouldSupportBudgeting:(BOOL)a3 account:(id)a4;
- (void)submitCKEventMetric:(id)a3 account:(id)a4 completionHandler:(id)a5;
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

- (void)_handleAccountChangeNotification:(id)a3
{
  v4 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received notification: %@", buf, 0xCu);

    v8 = [v4 name];
    _MBLog();
  }

  v7 = [(MBCKDatabaseManager *)self containersByPersonaIdentifier];
  [v7 enumerateKeysAndObjectsUsingBlock:&stru_1003BF6E0];
}

+ (void)_clearSyncZoneFetchedWithAccount:(id)a3
{
  v3 = a3;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 accountIdentifier];
    *buf = 138543618;
    v9 = @"SyncZoneFetched";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing %{public}@ for account %{public}@", buf, 0x16u);

    v7 = [v3 accountIdentifier];
    _MBLog();
  }

  v6 = [v3 persona];
  [v6 setPreferencesValue:0 forKey:@"SyncZoneFetched"];
}

+ (void)_cacheSyncZoneFetchedWithAccount:(id)a3
{
  v3 = a3;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 accountIdentifier];
    *buf = 138543618;
    v9 = @"SyncZoneFetched";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Caching %{public}@ for account %{public}@", buf, 0x16u);

    v7 = [v3 accountIdentifier];
    _MBLog();
  }

  v6 = [v3 persona];
  [v6 setPreferencesValue:&__kCFBooleanTrue forKey:@"SyncZoneFetched"];
}

+ (BOOL)fetchedSyncZoneWithAccount:(id)a3
{
  v7 = 0;
  v3 = [a3 persona];
  v4 = [v3 getBooleanValueForKey:@"SyncZoneFetched" keyExists:&v7];

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

+ (id)zoneIDOfType:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = [a1 syncZoneID];
  }

  else
  {
    if (a3 != 1)
    {
      __assert_rtn("+[MBCKDatabaseManager zoneIDOfType:]", "MBCKDatabaseManager.m", 217, "0 && Unexpected call");
    }

    v3 = [a1 defaultZoneID];
  }

  return v3;
}

- (void)setShouldSupportBudgeting:(BOOL)a3 account:(id)a4
{
  v4 = a3;
  v12 = a4;
  v6 = [(MBCKDatabaseManager *)self _makeContainerForAccount:?];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 ckContainer];
    if (!v8)
    {
      __assert_rtn("[MBCKDatabaseManager setShouldSupportBudgeting:account:]", "MBCKDatabaseManager.m", 226, "ckContainer");
    }

    v9 = v8;
    v10 = self;
    objc_sync_enter(v10);
    if (v4)
    {
      v11 = [(MBCKDatabaseManager *)v10 requestsToSupportBudget]+ 1;
    }

    else
    {
      v11 = [(MBCKDatabaseManager *)v10 requestsToSupportBudget]- 1;
    }

    [(MBCKDatabaseManager *)v10 setRequestsToSupportBudget:v11];
    if ([(MBCKDatabaseManager *)v10 requestsToSupportBudget])
    {
      [v9 setSourceApplicationSecondaryIdentifier:@"com.apple.icloud.restore"];
    }

    else
    {
      [v9 setSourceApplicationSecondaryIdentifier:0];
    }

    objc_sync_exit(v10);
  }
}

- (BOOL)shouldSupportBudgeting
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MBCKDatabaseManager *)v2 requestsToSupportBudget]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)_setUpSyncZoneWithContainer:(id)a3 policy:(id)a4 operationGroup:(id)a5 xpcActivity:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v37 = a7;
  if (!v12)
  {
    __assert_rtn("[MBCKDatabaseManager _setUpSyncZoneWithContainer:policy:operationGroup:xpcActivity:completion:]", "MBCKDatabaseManager.m", 251, "container");
  }

  if (!v13)
  {
    __assert_rtn("[MBCKDatabaseManager _setUpSyncZoneWithContainer:policy:operationGroup:xpcActivity:completion:]", "MBCKDatabaseManager.m", 252, "policy");
  }

  v35 = v15;
  v39 = [v12 account];
  v38 = [v12 personaIdentifier];
  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v39 accountIdentifier];
    *buf = 138543618;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = v38;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating the sync zone for account %{public}@(%{public}@)", buf, 0x16u);

    v33 = [v39 accountIdentifier];
    _MBLog();
  }

  v18 = [v12 ckDatabase];
  if (!v18)
  {
    __assert_rtn("[MBCKDatabaseManager _setUpSyncZoneWithContainer:policy:operationGroup:xpcActivity:completion:]", "MBCKDatabaseManager.m", 259, "database");
  }

  v19 = [objc_opt_class() syncZoneID];
  if (!v19)
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
  v54 = v19;
  v22 = [NSArray arrayWithObjects:&v54 count:1];
  v23 = [v21 initWithRecordZoneIDs:v22];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100131820;
  v44[3] = &unk_1003BF798;
  v34 = v19;
  v45 = v34;
  v53 = buf;
  v24 = v20;
  v46 = v24;
  v47 = self;
  v25 = v12;
  v48 = v25;
  v26 = v13;
  v49 = v26;
  v27 = v14;
  v50 = v27;
  v28 = v35;
  v51 = v28;
  v29 = v18;
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
  v41 = v39;
  v43 = buf;
  v42 = v37;
  v31 = v37;
  v32 = v39;
  dispatch_group_notify(v24, v30, block);

  _Block_object_dispose(buf, 8);
}

- (BOOL)setUpSyncZoneWithAccount:(id)a3 policy:(id)a4 operationGroup:(id)a5 xpcActivity:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    __assert_rtn("[MBCKDatabaseManager setUpSyncZoneWithAccount:policy:operationGroup:xpcActivity:error:]", "MBCKDatabaseManager.m", 315, "account");
  }

  if (!a7)
  {
    __assert_rtn("[MBCKDatabaseManager setUpSyncZoneWithAccount:policy:operationGroup:xpcActivity:error:]", "MBCKDatabaseManager.m", 316, "error");
  }

  v16 = v15;
  [objc_opt_class() _clearSyncZoneFetchedWithAccount:v12];
  v17 = [(MBCKDatabaseManager *)self _createContainerWithSyncZoneForAccount:v12 policy:v13 operationGroup:v14 xpcActivity:v16 error:a7];
  v18 = v17 != 0;

  return v18;
}

- (BOOL)resetDatabaseWithAccount:(id)a3 policy:(id)a4 operationGroup:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v35 = a5;
  if (!v10)
  {
    __assert_rtn("[MBCKDatabaseManager resetDatabaseWithAccount:policy:operationGroup:error:]", "MBCKDatabaseManager.m", 324, "account");
  }

  if (!v11)
  {
    __assert_rtn("[MBCKDatabaseManager resetDatabaseWithAccount:policy:operationGroup:error:]", "MBCKDatabaseManager.m", 325, "policy");
  }

  [objc_opt_class() _clearSyncZoneFetchedWithAccount:v10];
  v12 = [[MBCKContainer alloc] initWithAccount:v10 error:a6];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_class() syncZoneID];
    v46[0] = v14;
    v15 = [objc_opt_class() defaultZoneID];
    v46[1] = v15;
    v16 = [NSArray arrayWithObjects:v46 count:2];

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v10 persona];
      v19 = [v18 personaIdentifier];
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Deleting all CK zones for persona:%@: %{public}@", buf, 0x16u);

      v20 = [v10 persona];
      v34 = [v20 personaIdentifier];
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
    v23 = [v22 operationID];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100132334;
    v37[3] = &unk_1003BF7E8;
    v24 = v16;
    v38 = v24;
    v25 = v23;
    v39 = v25;
    v41 = buf;
    v26 = v21;
    v40 = v26;
    [v22 setModifyRecordZonesCompletionBlock:v37];
    [(MBCKDatabaseManager *)self addDatabaseOperation:v22 container:v13 policy:v11 operationGroup:v35];
    MBSemaphoreWaitForever();
    v27 = *(*&buf[8] + 40);
    if (v27)
    {
      v28 = 0;
      if (a6)
      {
        *a6 = v27;
      }
    }

    else
    {
      v29 = [v10 persona];
      v30 = [v29 personaIdentifier];
      [(MBCKDatabaseManager *)self _removeContainerForPersonaIdentifier:v30];

      v31 = (*&buf[8] + 40);
      obj = *(*&buf[8] + 40);
      v32 = [(MBCKDatabaseManager *)self _createContainerWithSyncZoneForAccount:v10 policy:v11 operationGroup:v35 xpcActivity:0 error:&obj];
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

- (BOOL)resetDatabaseWithError:(id *)a3
{
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:a3];

  if (v7)
  {
    v8 = +[MBCKOperationPolicy expensiveCellularPolicy];
    v9 = [v8 operationGroupWithName:@"resetDatabase" processName:0];
    v10 = [(MBCKDatabaseManager *)self resetDatabaseWithAccount:v7 policy:v8 operationGroup:v9 error:a3];
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

- (id)_configureModifyRecordsOperation:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 392, "operation");
  }

  v7 = v6;
  if (!v6)
  {
    __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 393, "container");
  }

  [v5 recordsToSave];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v38 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v36;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = [*(*(&v35 + 1) + 8 * v13) recordID];
        v11 = [v15 zoneID];

        if (v14 && ([v14 isEqual:v11] & 1) == 0)
        {
          __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 400, "!saveZoneID || [saveZoneID isEqual:currentZoneID]");
        }

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if ([v8 count] && !v11)
  {
    __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 403, "!records.count || saveZoneID != nil");
  }

  [v5 recordIDsToDelete];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = v34 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v32;
    do
    {
      v21 = 0;
      v22 = v19;
      do
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v19 = [*(*(&v31 + 1) + 8 * v21) zoneID];
        if (v22 && ([v22 isEqual:v19] & 1) == 0)
        {
          __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 410, "!deleteZoneID || [deleteZoneID isEqual:currentZoneID]");
        }

        v21 = v21 + 1;
        v22 = v19;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  if ([v16 count] && !v19)
  {
    __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 413, "!recordIDs.count || deleteZoneID != nil");
  }

  if (v11 | v19)
  {
    if (v11 && v19 && ([v11 isEqual:v19] & 1) == 0)
    {
      __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 423, "!saveZoneID || !deleteZoneID || [saveZoneID isEqual:deleteZoneID]");
    }

    if (v11)
    {
      v23 = v11;
    }

    else
    {
      v23 = v19;
    }

    v24 = v23;
    v25 = [objc_opt_class() defaultZoneID];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      v27 = [v7 ckDatabaseWithZoneWidePCS];
      [v5 setAtomic:0];
    }

    else
    {
      v27 = [v7 ckDatabase];
    }

    if (!v27)
    {
      __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 431, "database");
    }

    [v5 setDatabase:v27];
    v29 = v27;
  }

  else
  {
    v28 = [v7 ckDatabase];
    if (!v28)
    {
      __assert_rtn("[MBCKDatabaseManager _configureModifyRecordsOperation:container:]", "MBCKDatabaseManager.m", 419, "database");
    }

    v29 = v28;
  }

  return v29;
}

- (void)_configureCKOperation:(id)a3 container:(id)a4 policy:(id)a5 operationGroup:(id)a6 xpcActivity:(id)a7
{
  v24 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v12)
  {
    __assert_rtn("[MBCKDatabaseManager _configureCKOperation:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 437, "container");
  }

  if (!v13)
  {
    __assert_rtn("[MBCKDatabaseManager _configureCKOperation:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 438, "policy");
  }

  v16 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(MBCKDatabaseManager *)self _configureModifyRecordsOperation:v24 container:v12];
  }

  else
  {
    v17 = [v12 ckDatabase];
    [v24 setDatabase:v17];
  }

  if (!v17)
  {
    __assert_rtn("[MBCKDatabaseManager _configureCKOperation:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 446, "database");
  }

  v18 = objc_opt_new();
  v19 = [v17 container];
  [v18 setContainer:v19];

  v20 = [v13 cellularAccess];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 allowsExpensiveNetworkAccess];
    [v18 setAllowsCellularAccess:1];
    [v18 setAllowsExpensiveNetworkAccess:v22];
  }

  else
  {
    [v18 setAllowsCellularAccess:0];
  }

  [v18 setQualityOfService:{objc_msgSend(v13, "qualityOfService")}];
  [v18 setAutomaticallyRetryNetworkFailures:{objc_msgSend(v13, "automaticallyRetryNetworkFailures")}];
  if (v16)
  {
    [v18 setXpcActivity:v16];
  }

  else
  {
    [v18 setDiscretionaryNetworkBehavior:0];
  }

  [v24 setConfiguration:v18];
  if (v14)
  {
    v23 = [v24 group];

    if (!v23)
    {
      [v24 setGroup:v14];
    }
  }
}

- (void)_addDatabaseOperation:(id)a3 account:(id)a4 container:(id)a5 policy:(id)a6 operationGroup:(id)a7 xpcActivity:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v15)
  {
    __assert_rtn("[MBCKDatabaseManager _addDatabaseOperation:account:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 471, "account");
  }

  v20 = v19;
  if (v16)
  {
    v21 = 0;
    v22 = 1;
LABEL_6:
    [(MBCKDatabaseManager *)self _configureCKOperation:v14 container:v16 policy:v17 operationGroup:v18 xpcActivity:v20];
    if (MBIsInternalInstall())
    {
      v46 = v17;
      v24 = [v14 group];
      v25 = [v24 name];

      if (v25)
      {
        v17 = v46;
      }

      else
      {
        v17 = v46;
        if (!dword_1004217C0 && !atomic_fetch_add_explicit(&dword_1004217C0, 1u, memory_order_relaxed))
        {
          v26 = MBGetDefaultLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            v43 = objc_opt_class();
            v27 = [v14 operationID];
            [v14 group];
            v28 = v45 = v26;
            *buf = 138413058;
            v49 = v43;
            v50 = 2112;
            v51 = v27;
            v52 = 2112;
            v53 = v18;
            v54 = 2112;
            v55 = v28;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "%@(%@) doesn't have a group name: %@, %@", buf, 0x2Au);

            v44 = objc_opt_class();
            v29 = [v14 operationID];
            [v14 group];
            v42 = v41 = v18;
            v37 = v44;
            v39 = v29;
            _MBLog();

            v17 = v46;
            v26 = v45;
          }
        }
      }
    }

    goto LABEL_14;
  }

  v47 = 0;
  v16 = [(MBCKDatabaseManager *)self _createContainerWithSyncZoneForAccount:v15 policy:v17 operationGroup:v18 xpcActivity:v19 error:&v47];
  v23 = v47;
  v22 = v23 == 0;
  if (!(v16 | v23))
  {
    __assert_rtn("[MBCKDatabaseManager _addDatabaseOperation:account:container:policy:operationGroup:xpcActivity:]", "MBCKDatabaseManager.m", 475, "container || localError");
  }

  v21 = v23;
  if (v16)
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
    v32 = v17;
    v33 = [v14 operationID];
    v34 = [MBError errorWithCode:202 error:v21 format:@"Failed to configure operation %@", v33];

    v35 = MBGetDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [v14 operationID];
      *buf = 138543618;
      v49 = v36;
      v50 = 2114;
      v51 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Canceling operation %{public}@ since we don't have a container: %{public}@", buf, 0x16u);

      v38 = [v14 operationID];
      v40 = v34;
      _MBLog();
    }

    [v14 cancelWithUnderlyingError:v34];
    v17 = v32;
  }

  [v31 addOperation:{v14, v38, v40}];
}

- (void)addDatabaseOperation:(id)a3 container:(id)a4 policy:(id)a5 operationGroup:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 account];
  [(MBCKDatabaseManager *)self _addDatabaseOperation:v13 account:v14 container:v12 policy:v11 operationGroup:v10 xpcActivity:0];
}

- (void)submitCKEventMetric:(id)a3 account:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    __assert_rtn("[MBCKDatabaseManager submitCKEventMetric:account:completionHandler:]", "MBCKDatabaseManager.m", 504, "account");
  }

  v10 = v9;
  v11 = [(MBCKDatabaseManager *)self _makeContainerForAccount:v8];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 ckContainer];
    [v13 submitEventMetric:v14 completionHandler:v10];
  }

  else if (v10)
  {
    v10[2](v10);
  }
}

- (BOOL)fetchDeviceToDeviceEncryptionSupportedByAccount:(BOOL *)a3 account:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (!a3)
  {
    __assert_rtn("[MBCKDatabaseManager fetchDeviceToDeviceEncryptionSupportedByAccount:account:error:]", "MBCKDatabaseManager.m", 515, "enabled");
  }

  v9 = v8;
  if (!v8)
  {
    __assert_rtn("[MBCKDatabaseManager fetchDeviceToDeviceEncryptionSupportedByAccount:account:error:]", "MBCKDatabaseManager.m", 516, "account");
  }

  if (!a5)
  {
    __assert_rtn("[MBCKDatabaseManager fetchDeviceToDeviceEncryptionSupportedByAccount:account:error:]", "MBCKDatabaseManager.m", 517, "error");
  }

  v10 = [(MBCKDatabaseManager *)self _makeContainerForAccount:v8];
  v11 = v10;
  if (!v10)
  {
    [MBError errorWithCode:1 format:@"nil container"];
    *a5 = v18 = 0;
    goto LABEL_16;
  }

  v12 = [v10 ckContainer];
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
  [v12 accountInfoWithCompletionHandler:v30];
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

      v24 = [v35[5] deviceToDeviceEncryptionAvailability];
      v19 = v24 & 1;
      *a3 = v24 & 1;
      v18 = 1;
      if (!*a5 || (v24 & 1) == 0)
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

  *a5 = v17;
  if (!v17)
  {
    v25 = "result || *error";
    v26 = 555;
    goto LABEL_32;
  }

  v18 = 0;
LABEL_11:
  v19 = 0;
  *a3 = 0;
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

- (id)_makeContainerForAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 persona];
  v6 = [v5 personaIdentifier];

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(MBCKDatabaseManager *)v7 containersByPersonaIdentifier];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v13 = 0;
    v9 = [[MBCKContainer alloc] initWithAccount:v4 error:&v13];
    v10 = v13;
    if (v9)
    {
      v11 = [(MBCKDatabaseManager *)v7 containersByPersonaIdentifier];
      [v11 setObject:v9 forKeyedSubscript:v6];
    }

    else
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to make container for account: %@", buf, 0xCu);
        _MBLog();
      }
    }
  }

  objc_sync_exit(v7);

  return v9;
}

- (id)_createContainerWithSyncZoneForAccount:(id)a3 policy:(id)a4 operationGroup:(id)a5 xpcActivity:(id)a6 error:(id *)a7
{
  v12 = a3;
  v34 = a4;
  v13 = a5;
  v33 = a6;
  if (!v12)
  {
    __assert_rtn("[MBCKDatabaseManager _createContainerWithSyncZoneForAccount:policy:operationGroup:xpcActivity:error:]", "MBCKDatabaseManager.m", 584, "account");
  }

  if (!a7)
  {
    __assert_rtn("[MBCKDatabaseManager _createContainerWithSyncZoneForAccount:policy:operationGroup:xpcActivity:error:]", "MBCKDatabaseManager.m", 585, "error");
  }

  v14 = [v12 persona];
  v15 = [v14 personaIdentifier];

  if (!v15)
  {
    __assert_rtn("[MBCKDatabaseManager _createContainerWithSyncZoneForAccount:policy:operationGroup:xpcActivity:error:]", "MBCKDatabaseManager.m", 587, "personaIdentifier");
  }

  v16 = self;
  objc_sync_enter(v16);
  v17 = [(MBCKDatabaseManager *)v16 containersByPersonaIdentifier];
  v18 = [v17 objectForKeyedSubscript:v15];

  if (v18 || (v18 = [[MBCKContainer alloc] initWithAccount:v12 error:a7]) != 0)
  {
    v19 = +[MBRemoteConfiguration sharedInstance];
    v20 = [v19 shouldReloadConfigurationWithAccount:v12];
    v21 = [(MBCKContainer *)v18 fetchedSyncZone];
    if (v20 & 1 | ((v21 & 1) == 0))
    {
      v22 = dispatch_group_create();
      if (v20)
      {
        if (!v34)
        {
          v34 = +[MBCKOperationPolicy expensiveCellularPolicy];
        }

        v23 = v13;
        if (!v13)
        {
          v23 = [v34 operationGroupWithName:@"setUpSyncZone" processName:0];
        }

        dispatch_group_enter(v22);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10013413C;
        v44[3] = &unk_1003BC010;
        v45 = v22;
        v13 = v23;
        [v19 loadConfigurationWithContainer:v18 databaseManager:v16 policy:v34 operationGroup:v23 completion:v44];
      }

      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = sub_100131808;
      v42 = sub_100131818;
      v43 = 0;
      if (v21)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v24 = v24;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [objc_opt_class() syncZoneID];
            *buf = 138543362;
            v47 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Sync zone %{public}@ already exists", buf, 0xCu);
          }

          v32 = [objc_opt_class() syncZoneID];
          _MBLog();
        }
      }

      else
      {
        if (!v34)
        {
          v34 = +[MBCKOperationPolicy expensiveCellularPolicy];
        }

        v28 = v13;
        if (!v13)
        {
          v28 = [v34 operationGroupWithName:@"setUpSyncZone" processName:0];
        }

        dispatch_group_enter(v22);
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100134144;
        v35[3] = &unk_1003BC160;
        v37 = &v38;
        v36 = v22;
        v13 = v28;
        [(MBCKDatabaseManager *)v16 _setUpSyncZoneWithContainer:v18 policy:v34 operationGroup:v28 xpcActivity:v33 completion:v35];
        v24 = v36;
      }

      MBGroupWaitForever();
      v29 = v39[5];
      v27 = v29 == 0;
      if (v29)
      {
        *a7 = v29;
      }

      else
      {
        v30 = [(MBCKDatabaseManager *)v16 containersByPersonaIdentifier];
        [v30 setObject:v18 forKeyedSubscript:v15];
      }

      _Block_object_dispose(&v38, 8);

      v26 = 0;
    }

    else
    {
      v26 = v18;
      v27 = 0;
    }

    objc_sync_exit(v16);
    if (v27)
    {
      v18 = v18;
      v26 = v18;
    }
  }

  else
  {
    objc_sync_exit(v16);

    v26 = 0;
  }

  return v26;
}

- (void)_removeContainerForPersonaIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBCKDatabaseManager _removeContainerForPersonaIdentifier:]", "MBCKDatabaseManager.m", 648, "personaIdentifier");
  }

  v7 = v4;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MBCKDatabaseManager *)v5 containersByPersonaIdentifier];
  [v6 removeObjectForKey:v7];

  objc_sync_exit(v5);
}

- (void)fetchConfigurationWithAccount:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    __assert_rtn("[MBCKDatabaseManager fetchConfigurationWithAccount:configuration:completion:]", "MBCKDatabaseManager.m", 656, "account");
  }

  if (!v9)
  {
    __assert_rtn("[MBCKDatabaseManager fetchConfigurationWithAccount:configuration:completion:]", "MBCKDatabaseManager.m", 657, "configuration");
  }

  v11 = v10;
  if (!v10)
  {
    __assert_rtn("[MBCKDatabaseManager fetchConfigurationWithAccount:configuration:completion:]", "MBCKDatabaseManager.m", 658, "completion");
  }

  v12 = [v8 persona];
  v13 = [v12 personaIdentifier];

  if (!v13)
  {
    __assert_rtn("[MBCKDatabaseManager fetchConfigurationWithAccount:configuration:completion:]", "MBCKDatabaseManager.m", 660, "personaIdentifier");
  }

  v14 = dispatch_get_global_queue(17, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013440C;
  v18[3] = &unk_1003BF838;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v11;
  v15 = v9;
  v16 = v11;
  v17 = v8;
  dispatch_async(v14, v18);
}

@end