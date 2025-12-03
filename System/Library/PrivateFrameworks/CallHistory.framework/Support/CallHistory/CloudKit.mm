@interface CloudKit
+ (id)create;
- (BOOL)isAccountActive;
- (CKDatabase)database;
- (CKServerChangeToken)previousServerChangeToken;
- (CloudKit)init;
- (id)containerUserDefaultsObjectForKey:(id)key;
- (id)createRecord:(id)record;
- (void)addRecord:(id)record withInsertAndUpdate:(id)update withDelete:(id)delete;
- (void)createRecordZoneWithAttemptCount:(unsigned int)count completionHandler:(id)handler;
- (void)dealloc;
- (void)deleteAndRecreateRecordZone:(id)zone;
- (void)fetchTransactionRecordZoneWithCompletion:(id)completion;
- (void)getUpdatesWithRetryCount:(unsigned int)count withQualityOfService:(int64_t)service withCallback:(id)callback;
- (void)handleCKAccountChangedNotification:(id)notification;
- (void)handlePartialUploadFailure:(id)failure withUploadRecordsToSave:(id)save withRecordsToDelete:(id)delete withRetryCount:(unsigned int)count withCallback:(id)callback;
- (void)performInitialSyncIfNeeded;
- (void)queryAccountStatusWithRetryCount:(unsigned int)count;
- (void)registerForNotifications;
- (void)removeLegacyUserDefaults;
- (void)resolveUploadConflicts:(id)conflicts withInsertAndUpdateRecords:(id)records;
- (void)retryCloudKitOperationForError:(id)error withRetryCount:(unsigned int)count withCallback:(id)callback;
- (void)setAccountActive:(BOOL)active;
- (void)setContainerUserDefaultsObject:(id)object forKey:(id)key;
- (void)setPreviousServerChangeToken:(id)token;
- (void)setupSubscription;
- (void)setupSubscriptionWithRetryCount:(unsigned int)count;
- (void)uploadRecordsToSave:(id)save withRecordsToDelete:(id)delete withRetryCount:(unsigned int)count withCallback:(id)callback;
@end

@implementation CloudKit

+ (id)create
{
  if (NSClassFromString(@"CKContainer"))
  {
    v2 = objc_alloc_init(CloudKit);
  }

  else
  {
    v3 = +[CHLogServer sharedInstance];
    v4 = [v3 logHandleForDomain:"CloudKit"];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did not find CloudKit framework, disabling iCloud syncing", v6, 2u);
    }

    v2 = 0;
  }

  return v2;
}

- (CloudKit)init
{
  v15.receiver = self;
  v15.super_class = CloudKit;
  v2 = [(CloudKit *)&v15 initWithName:"CloudKit"];
  v3 = v2;
  if (v2)
  {
    v2->_accountActive = 0;
    v4 = +[NSUUID UUID];
    uUIDString = [v4 UUIDString];
    operationIdentifier = v3->_operationIdentifier;
    v3->_operationIdentifier = uUIDString;

    v7 = +[CKContainer chsh_secureContainer];
    container = v3->_container;
    v3->_container = v7;

    v9 = +[CKRecordZone chsh_transactionRecordZone];
    transactionRecordZone = v3->_transactionRecordZone;
    v3->_transactionRecordZone = v9;

    containerIdentifier = [(CKContainer *)v3->_container containerIdentifier];
    if ([containerIdentifier length])
    {
      v12 = [[CHSHCKContainerUserDefaults alloc] initWithContainerIdentifier:containerIdentifier];
      p_super = &v3->_containerUserDefaults->super;
      v3->_containerUserDefaults = v12;
    }

    else
    {
      p_super = [(CloudKit *)v3 logHandle];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_100032B68(v3);
      }
    }

    [(CloudKit *)v3 registerForNotifications];
    [(CloudKit *)v3 queryAccountStatus];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CloudKit;
  [(CloudKit *)&v4 dealloc];
}

- (void)registerForNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleCKAccountChangedNotification:" name:CKAccountChangedNotification object:0];
}

- (BOOL)isAccountActive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100011890;
  v4[3] = &unk_100051290;
  v4[4] = self;
  v4[5] = &v5;
  [(CloudKit *)self executeSync:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setAccountActive:(BOOL)active
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001191C;
  v3[3] = &unk_1000512B8;
  v3[4] = self;
  activeCopy = active;
  [(CloudKit *)self execute:v3];
}

- (CKDatabase)database
{
  container = [(CloudKit *)self container];
  privateCloudDatabase = [container privateCloudDatabase];

  return privateCloudDatabase;
}

- (CKServerChangeToken)previousServerChangeToken
{
  containerUserDefaults = [(CloudKit *)self containerUserDefaults];
  previousServerChangeTokenData = [containerUserDefaults previousServerChangeTokenData];

  if (previousServerChangeTokenData)
  {
    v9 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:previousServerChangeTokenData error:&v9];
    v6 = v9;
    if (!v5)
    {
      logHandle = [(CloudKit *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100032BF4();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPreviousServerChangeToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v9 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v9];
    v6 = v9;
    if (v5)
    {
      containerUserDefaults = [(CloudKit *)self containerUserDefaults];
      [containerUserDefaults setPreviousServerChangeTokenData:v5];
    }

    else
    {
      containerUserDefaults = [(CloudKit *)self logHandle];
      if (os_log_type_enabled(containerUserDefaults, OS_LOG_TYPE_ERROR))
      {
        sub_100032C60();
      }
    }
  }

  else
  {
    containerUserDefaults2 = [(CloudKit *)self containerUserDefaults];
    [containerUserDefaults2 setPreviousServerChangeTokenData:0];
  }
}

- (void)queryAccountStatusWithRetryCount:(unsigned int)count
{
  v5 = +[ACAccountStore ch_sharedAccountStore];
  aa_primaryAppleAccount = [v5 aa_primaryAppleAccount];
  aa_isManagedAppleID = [aa_primaryAppleAccount aa_isManagedAppleID];

  logHandle = [(CloudKit *)self logHandle];
  v9 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
  if (aa_isManagedAppleID)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Managed Apple ID detected; disabling CloudKit sync", buf, 2u);
    }

    [(CloudKit *)self setAccountActive:0];
  }

  else
  {
    if (v9)
    {
      *buf = 67109120;
      countCopy = count;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Requesting account status; attempt %d", buf, 8u);
    }

    container = [(CloudKit *)self container];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100011DC4;
    v11[3] = &unk_100051330;
    v11[4] = self;
    countCopy2 = count;
    [container accountInfoWithCompletionHandler:v11];
  }
}

- (void)createRecordZoneWithAttemptCount:(unsigned int)count completionHandler:(id)handler
{
  handlerCopy = handler;
  logHandle = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    transactionRecordZone = [(CloudKit *)self transactionRecordZone];
    zoneID = [transactionRecordZone zoneID];
    zoneName = [zoneID zoneName];
    *buf = 138543618;
    v18 = zoneName;
    v19 = 1024;
    countCopy = count;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Creating record zone %{public}@; attempt %d", buf, 0x12u);
  }

  database = [(CloudKit *)self database];
  transactionRecordZone2 = [(CloudKit *)self transactionRecordZone];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001254C;
  v14[3] = &unk_100051380;
  v14[4] = self;
  v15 = handlerCopy;
  countCopy2 = count;
  v13 = handlerCopy;
  [database saveRecordZone:transactionRecordZone2 completionHandler:v14];
}

- (void)getUpdatesWithRetryCount:(unsigned int)count withQualityOfService:(int64_t)service withCallback:(id)callback
{
  callbackCopy = callback;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100012A40;
  v26[4] = sub_100012A50;
  v27 = objc_alloc_init(NSMutableArray);
  v9 = [CKFetchRecordChangesOperation alloc];
  transactionRecordZone = [(CloudKit *)self transactionRecordZone];
  zoneID = [transactionRecordZone zoneID];
  previousServerChangeToken = [(CloudKit *)self previousServerChangeToken];
  v13 = [v9 initWithRecordZoneID:zoneID previousServerChangeToken:previousServerChangeToken];

  objc_initWeak(&location, v13);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100012A58;
  v20[3] = &unk_1000513F8;
  v20[4] = self;
  v23[1] = service;
  v14 = callbackCopy;
  v21 = v14;
  countCopy = count;
  objc_copyWeak(v23, &location);
  v22 = v26;
  [v13 setFetchRecordChangesCompletionBlock:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100012FF0;
  v19[3] = &unk_100051420;
  v19[4] = self;
  v19[5] = v26;
  [v13 setRecordChangedBlock:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100013348;
  v18[3] = &unk_100051448;
  v18[4] = self;
  v18[5] = v26;
  [v13 setRecordWithIDWasDeletedBlock:v18];
  [v13 setFetchAllChanges:0];
  [v13 setQualityOfService:17];
  if (service >= 25)
  {
    configuration = [v13 configuration];
    [configuration setDiscretionaryNetworkBehavior:0];
  }

  logHandle = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    serviceCopy = service;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Fetching record changes with QoS (%ld)...", buf, 0xCu);
  }

  database = [(CloudKit *)self database];
  [database addOperation:v13];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(v26, 8);
}

- (void)uploadRecordsToSave:(id)save withRecordsToDelete:(id)delete withRetryCount:(unsigned int)count withCallback:(id)callback
{
  saveCopy = save;
  deleteCopy = delete;
  callbackCopy = callback;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  logHandle = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [saveCopy count];
    v15 = [deleteCopy count];
    *buf = 134218240;
    v36 = v14;
    v37 = 2048;
    v38 = v15;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Modifying %lu insert and update records %lu delete records", buf, 0x16u);
  }

  v16 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:saveCopy recordIDsToDelete:deleteCopy];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100013B2C;
  v32[3] = &unk_100051470;
  v32[4] = self;
  [v16 setPerRecordProgressBlock:v32];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100013C14;
  v31[3] = &unk_100051498;
  v31[4] = self;
  v31[5] = v33;
  [v16 setPerRecordCompletionBlock:v31];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100013FAC;
  v25[3] = &unk_100051510;
  v29 = v33;
  v25[4] = self;
  v17 = saveCopy;
  v26 = v17;
  v18 = deleteCopy;
  v27 = v18;
  countCopy = count;
  v19 = callbackCopy;
  v28 = v19;
  [v16 setModifyRecordsCompletionBlock:v25];
  [v16 setQualityOfService:17];
  configuration = [v16 configuration];
  [configuration setDiscretionaryNetworkBehavior:0];

  logHandle2 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Modifying records...", buf, 2u);
  }

  database = [(CloudKit *)self database];
  [database addOperation:v16];

  ct_green_tea_logger_create_static();
  v23 = getCTGreenTeaOsLogHandle();
  v24 = v23;
  if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Transmit over iCloud", buf, 2u);
  }

  _Block_object_dispose(v33, 8);
}

- (void)handlePartialUploadFailure:(id)failure withUploadRecordsToSave:(id)save withRecordsToDelete:(id)delete withRetryCount:(unsigned int)count withCallback:(id)callback
{
  failureCopy = failure;
  saveCopy = save;
  deleteCopy = delete;
  callbackCopy = callback;
  v12 = objc_opt_new();
  userInfo = [failureCopy userInfo];
  v14 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  selfCopy = self;
  logHandle = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v73 = [v14 count];
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Partial failure modifying %lu records", buf, 0xCu);
  }

  v53 = v12;

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (!v17)
  {
    v52 = 0;
    goto LABEL_32;
  }

  v18 = v17;
  v52 = 0;
  v19 = *v68;
  do
  {
    v20 = 0;
    do
    {
      if (*v68 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v67 + 1) + 8 * v20);
      v22 = [v16 objectForKey:v21];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v21;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          domain = [v22 domain];
          v25 = [domain isEqualToString:CKErrorDomain];

          if (v25)
          {
            if ([v22 code] == 14)
            {
              logHandle2 = [(CloudKit *)self logHandle];
              if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
              {
                recordName = [v23 recordName];
                *buf = 138543362;
                v73 = recordName;
                _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Adding record %{public}@ to conflict list", buf, 0xCu);
              }

              [v53 addObject:v23];
              goto LABEL_18;
            }

            if ([v22 code] == 7)
            {
              if (!v52)
              {
                logHandle3 = [(CloudKit *)self logHandle];
                if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
                {
                  recordName2 = [v23 recordName];
                  *buf = 138543362;
                  v73 = recordName2;
                  _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Partial failure was rate limited for record %{public}@, will retry", buf, 0xCu);
                }

                v52 = v22;
              }

              goto LABEL_18;
            }

            if ([v22 code] != 22)
            {
              logHandle4 = [(CloudKit *)self logHandle];
              if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
              {
                recordName3 = [v23 recordName];
                *buf = 138543618;
                v73 = recordName3;
                v74 = 2114;
                v75 = v22;
                _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Partial failure for record %{public}@: %{public}@", buf, 0x16u);
              }

              goto LABEL_17;
            }
          }

          else
          {
            logHandle4 = [(CloudKit *)self logHandle];
            if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v73 = failureCopy;
              _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Partial failure error is not CloudKit: %{public}@", buf, 0xCu);
            }

LABEL_17:
          }
        }

LABEL_18:
      }

      v20 = v20 + 1;
    }

    while (v18 != v20);
    v32 = [v16 countByEnumeratingWithState:&v67 objects:v76 count:16];
    v18 = v32;
  }

  while (v32);
LABEL_32:

  v33 = v53;
  if ([v53 count])
  {
    v54 = failureCopy;
    [(CloudKit *)self resolveUploadConflicts:v53 withInsertAndUpdateRecords:saveCopy];
    v66 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v34 = saveCopy;
    v35 = [v34 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v64;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v64 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v63 + 1) + 8 * i);
          logHandle5 = [(CloudKit *)selfCopy logHandle];
          if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEFAULT))
          {
            recordID = [v39 recordID];
            recordName4 = [recordID recordName];
            *buf = 138543362;
            v73 = recordName4;
            _os_log_impl(&_mh_execute_header, logHandle5, OS_LOG_TYPE_DEFAULT, "insert/update %{public}@", buf, 0xCu);
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v36);
    }

    v43 = v34;
    v45 = callbackCopy;
    v44 = deleteCopy;
    [(CloudKit *)selfCopy uploadRecordsToSave:v43 withRecordsToDelete:deleteCopy withRetryCount:count withCallback:callbackCopy];
    v33 = v53;
    failureCopy = v54;
    v46 = v52;
  }

  else
  {
    v46 = v52;
    if (v52)
    {
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_100014B08;
      v56[3] = &unk_100051538;
      v56[4] = selfCopy;
      v57 = saveCopy;
      v44 = deleteCopy;
      v58 = deleteCopy;
      countCopy = count;
      v45 = callbackCopy;
      v61 = callbackCopy;
      v59 = v52;
      v60 = failureCopy;
      v46 = v52;
      [(CloudKit *)selfCopy retryCloudKitOperationForError:v59 withRetryCount:count + 1 withCallback:v56];
    }

    else
    {
      logHandle6 = [(CloudKit *)selfCopy logHandle];
      v45 = callbackCopy;
      v44 = deleteCopy;
      if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_ERROR))
      {
        sub_1000331E0();
      }

      (*(callbackCopy + 2))(callbackCopy, failureCopy);
    }
  }
}

- (void)resolveUploadConflicts:(id)conflicts withInsertAndUpdateRecords:(id)records
{
  conflictsCopy = conflicts;
  recordsCopy = records;
  logHandle = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v46 = [conflictsCopy count];
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Resolving %lu conflicting records", buf, 0xCu);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = conflictsCopy;
  v40 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v40)
  {
    v39 = *v42;
    v11 = @"type";
    *&v10 = 138543618;
    v35 = v10;
    v36 = v9;
    selfCopy = self;
    do
    {
      v12 = 0;
      do
      {
        v13 = v11;
        if (*v42 != v39)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v41 + 1) + 8 * v12);
        if (![recordsCopy count])
        {
          goto LABEL_19;
        }

        v15 = 0;
        while (1)
        {
          logHandle5 = [recordsCopy objectAtIndexedSubscript:v15];
          recordID = [logHandle5 recordID];
          v18 = [recordID isEqual:v14];

          if (v18)
          {
            break;
          }

          if (++v15 >= [recordsCopy count])
          {
            goto LABEL_19;
          }
        }

        if (logHandle5)
        {
          encryptedValuesByKey = [logHandle5 encryptedValuesByKey];
          v20 = [encryptedValuesByKey objectForKeyedSubscript:@"encryptedData"];

          if (v20)
          {
            v38 = v20;
            v11 = v13;
            logHandle4 = [logHandle5 objectForKeyedSubscript:v13];
            if (logHandle4)
            {
              transactionRecordZone = [(CloudKit *)self transactionRecordZone];
              zoneID = [transactionRecordZone zoneID];
              logHandle3 = [CKRecord chsh_transactionRecordWithZoneID:zoneID];

              encryptedValuesByKey2 = [logHandle3 encryptedValuesByKey];
              [encryptedValuesByKey2 setObject:v38 forKeyedSubscript:@"encryptedData"];

              v26 = [logHandle5 objectForKeyedSubscript:@"syncOperationIdentifier"];
              valuesByKey = [logHandle3 valuesByKey];
              [valuesByKey setObject:v26 forKeyedSubscript:@"syncOperationIdentifier"];

              valuesByKey2 = [logHandle3 valuesByKey];
              [valuesByKey2 setObject:logHandle4 forKeyedSubscript:@"type"];

              v29 = [CKReference alloc];
              recordID2 = [logHandle5 recordID];
              v31 = [v29 initWithRecordID:recordID2 action:1];
              [logHandle3 setObject:v31 forKeyedSubscript:@"parentTransaction"];

              self = selfCopy;
              logHandle2 = [(CloudKit *)selfCopy logHandle];
              if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v35;
                v46 = logHandle3;
                v47 = 2114;
                v48 = logHandle5;
                _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Created a reference between record %{public}@ and parent record %{public}@", buf, 0x16u);
              }

              [recordsCopy replaceObjectAtIndex:v15 withObject:logHandle3];
              v9 = v36;
              v11 = v13;
            }

            else
            {
              logHandle3 = [(CloudKit *)self logHandle];
              if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v46 = v13;
                _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Missing %{public}@ key in parent record", buf, 0xCu);
              }
            }

            v20 = v38;
          }

          else
          {
            logHandle4 = [(CloudKit *)self logHandle];
            v11 = v13;
            if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v46 = @"encryptedData";
              _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Missing %{public}@ key in parent record", buf, 0xCu);
            }
          }
        }

        else
        {
LABEL_19:
          logHandle5 = [(CloudKit *)self logHandle];
          if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEFAULT))
          {
            recordName = [v14 recordName];
            *buf = 138543362;
            v46 = recordName;
            _os_log_impl(&_mh_execute_header, logHandle5, OS_LOG_TYPE_DEFAULT, "Could not find original record %{public}@ to resolve conflict", buf, 0xCu);
          }

          v11 = v13;
        }

        v12 = v12 + 1;
      }

      while (v12 != v40);
      v34 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
      v40 = v34;
    }

    while (v34);
  }
}

- (id)createRecord:(id)record
{
  recordCopy = record;
  record = [recordCopy record];
  v33 = 0;
  v6 = [CHRecentCall unarchivedObjectFromData:record error:&v33];
  v7 = v33;

  if (v6)
  {
    uniqueId = [v6 uniqueId];
    if ([uniqueId length])
    {
      serviceProvider = [v6 serviceProvider];
      if (([serviceProvider isEqualToString:@"com.apple.FaceTime"]& 1) != 0 || [serviceProvider isEqualToString:@"com.apple.Telephony"])
      {
        logHandle4 = [CHRecentCallPb protoRecentCallWithRecentCall:v6];
        [logHandle4 setLocalParticipantUUID:0];
        [logHandle4 setOutgoingLocalParticipantUUID:0];
        data = [logHandle4 data];
        v12 = data;
        if (data)
        {
          v31 = data;
          v32 = v7;
          if ([recordCopy transactionType])
          {
            transactionRecordZone = [(CloudKit *)self transactionRecordZone];
            zoneID = [transactionRecordZone zoneID];
            v15 = [CKRecord chsh_transactionRecordWithZoneID:zoneID];

            logHandle = [(CloudKit *)self logHandle];
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
            {
              log = logHandle;
              v17 = +[CHTransaction toString:](CHTransaction, "toString:", [recordCopy transactionType]);
              recordID = [v15 recordID];
              recordName = [recordID recordName];
              *buf = 138543874;
              v35 = v17;
              v36 = 2114;
              v37 = recordName;
              v38 = 2114;
              v39 = uniqueId;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Created %{public}@ record with identifier %{public}@ for parent record with identifier %{public}@", buf, 0x20u);

              logHandle = log;
            }
          }

          else
          {
            v21 = [CKRecordID alloc];
            transactionRecordZone2 = [(CloudKit *)self transactionRecordZone];
            zoneID2 = [transactionRecordZone2 zoneID];
            logHandle = [v21 initWithRecordName:uniqueId zoneID:zoneID2];

            v15 = [CKRecord chsh_transactionRecordWithRecordID:logHandle];
            logHandle2 = [(CloudKit *)self logHandle];
            if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v35 = uniqueId;
              _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Created insert transaction record for call with UUID %{public}@", buf, 0xCu);
            }
          }

          v12 = v31;

          encryptedValuesByKey = [v15 encryptedValuesByKey];
          [encryptedValuesByKey setObject:v31 forKeyedSubscript:@"encryptedData"];

          operationIdentifier = [(CloudKit *)self operationIdentifier];
          valuesByKey = [v15 valuesByKey];
          [valuesByKey setObject:operationIdentifier forKeyedSubscript:@"syncOperationIdentifier"];

          logHandle3 = +[CHTransaction toString:](CHTransaction, "toString:", [recordCopy transactionType]);
          valuesByKey2 = [v15 valuesByKey];
          [valuesByKey2 setObject:logHandle3 forKeyedSubscript:@"type"];

          v7 = v32;
        }

        else
        {
          logHandle3 = [(CloudKit *)self logHandle];
          if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
          {
            sub_1000332F8();
          }

          v15 = 0;
        }
      }

      else
      {
        logHandle4 = [(CloudKit *)self logHandle];
        if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR))
        {
          sub_100033290();
        }

        v15 = 0;
      }
    }

    else
    {
      serviceProvider = [(CloudKit *)self logHandle];
      if (os_log_type_enabled(serviceProvider, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v6;
        _os_log_impl(&_mh_execute_header, serviceProvider, OS_LOG_TYPE_DEFAULT, "Cancelling transaction record creation; could not obtain a unique identifier from call %@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    if (!v7)
    {
      v15 = 0;
      goto LABEL_31;
    }

    uniqueId = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(uniqueId, OS_LOG_TYPE_ERROR))
    {
      sub_100033360();
    }

    v15 = 0;
  }

LABEL_31:

  return v15;
}

- (void)addRecord:(id)record withInsertAndUpdate:(id)update withDelete:(id)delete
{
  recordCopy = record;
  updateCopy = update;
  deleteCopy = delete;
  encryptedValuesByKey = [recordCopy encryptedValuesByKey];
  v12 = [encryptedValuesByKey objectForKeyedSubscript:@"encryptedData"];

  if ([v12 length])
  {
    v13 = [[CHRecentCallPb alloc] initWithData:v12];
    logHandle10 = v13;
    if (!v13)
    {
      logHandle = [(CloudKit *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_1000334B0();
      }

      goto LABEL_62;
    }

    logHandle = [(CHRecentCallPb *)v13 uniqueId];
    if ([logHandle length])
    {
      logHandle9 = [recordCopy objectForKeyedSubscript:@"type"];
      if ([logHandle9 length])
      {
        v64 = logHandle10;
        v65 = v12;
        v17 = [CHTransaction toString:0];
        v18 = [logHandle9 isEqualToString:v17];

        v66 = logHandle9;
        v67 = deleteCopy;
        if ((v18 & 1) == 0)
        {
          v19 = [CKRecordID alloc];
          transactionRecordZone = [(CloudKit *)self transactionRecordZone];
          zoneID = [transactionRecordZone zoneID];
          v22 = [v19 initWithRecordName:logHandle zoneID:zoneID];

          v23 = [[CKReference alloc] initWithRecordID:v22 action:1];
          [recordCopy setObject:v23 forKeyedSubscript:@"parentTransaction"];
          logHandle2 = [(CloudKit *)self logHandle];
          if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
          {
            recordID = [recordCopy recordID];
            *buf = 138543618;
            v80 = recordID;
            v81 = 2114;
            v82 = v22;
            _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Created a reference between record %{public}@ and parent record %{public}@", buf, 0x16u);
          }

          logHandle9 = v66;
          deleteCopy = v67;
        }

        v26 = [CHTransaction toString:2];
        v27 = [logHandle9 isEqualToString:v26];

        if (v27)
        {
          v63 = recordCopy;
          v68 = +[NSMutableArray array];
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v62 = updateCopy;
          v28 = updateCopy;
          v29 = [v28 countByEnumeratingWithState:&v73 objects:v78 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v74;
            do
            {
              for (i = 0; i != v30; i = i + 1)
              {
                if (*v74 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v73 + 1) + 8 * i);
                recordID2 = [v33 recordID];
                recordName = [recordID2 recordName];
                v36 = [recordName isEqualToString:logHandle];

                if (v36)
                {
                  logHandle3 = [(CloudKit *)self logHandle];
                  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v80 = logHandle;
                    _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Removing record %{public}@ since we are deleting it", buf, 0xCu);
                  }

                  [v68 addObject:v33];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v73 objects:v78 count:16];
            }

            while (v30);
          }

          [v28 removeObjectsInArray:v68];
          recordCopy = v63;
          v38 = [v63 objectForKeyedSubscript:@"parentTransaction"];
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v39 = v67;
          v40 = [v39 countByEnumeratingWithState:&v69 objects:v77 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v70;
            while (2)
            {
              for (j = 0; j != v41; j = j + 1)
              {
                if (*v70 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v69 + 1) + 8 * j);
                recordID3 = [v38 recordID];
                LODWORD(v44) = [v44 isEqual:recordID3];

                if (v44)
                {
                  logHandle4 = [(CloudKit *)self logHandle];
                  v12 = v65;
                  if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
                  {
                    recordID4 = [v38 recordID];
                    *buf = 138543362;
                    v80 = recordID4;
                    _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Found existing delete transaction record for identifier %{public}@", buf, 0xCu);
                  }

                  goto LABEL_52;
                }
              }

              v41 = [v39 countByEnumeratingWithState:&v69 objects:v77 count:16];
              if (v41)
              {
                continue;
              }

              break;
            }
          }

          recordID5 = [v38 recordID];
          logHandle5 = [(CloudKit *)self logHandle];
          if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v80 = recordID5;
            _os_log_impl(&_mh_execute_header, logHandle5, OS_LOG_TYPE_DEFAULT, "Deleting record with identifier %{public}@", buf, 0xCu);
          }

          [v39 addObject:recordID5];
          v39 = recordID5;
          v12 = v65;
LABEL_52:
          logHandle9 = v66;

          updateCopy = v62;
          deleteCopy = v67;
        }

        else
        {
          v49 = [CHTransaction toString:0];
          v50 = [logHandle9 isEqualToString:v49];

          if (v50)
          {
            if ([updateCopy count])
            {
              v51 = 0;
              while (1)
              {
                v52 = [updateCopy objectAtIndexedSubscript:v51];
                recordID6 = [v52 recordID];
                recordID7 = [recordCopy recordID];
                v55 = [recordID6 isEqual:recordID7];

                if (v55)
                {
                  break;
                }

                if (++v51 >= [updateCopy count])
                {
                  goto LABEL_46;
                }
              }

              logHandle6 = [(CloudKit *)self logHandle];
              logHandle9 = v66;
              if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v80 = v52;
                v81 = 2114;
                v82 = recordCopy;
                _os_log_impl(&_mh_execute_header, logHandle6, OS_LOG_TYPE_DEFAULT, "Replacing record %{public}@ with record %{public}@", buf, 0x16u);
              }

              [updateCopy replaceObjectAtIndex:v51 withObject:recordCopy];
              v12 = v65;
            }

            else
            {
LABEL_46:
              logHandle7 = [(CloudKit *)self logHandle];
              if (os_log_type_enabled(logHandle7, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v80 = recordCopy;
                _os_log_impl(&_mh_execute_header, logHandle7, OS_LOG_TYPE_DEFAULT, "Adding record %{public}@", buf, 0xCu);
              }

              [updateCopy addObject:recordCopy];
              v12 = v65;
              logHandle9 = v66;
            }

            deleteCopy = v67;
            goto LABEL_61;
          }

          v59 = [CHTransaction toString:1];
          v60 = [logHandle9 isEqualToString:v59];

          if (v60)
          {
            [updateCopy addObject:recordCopy];
          }

          v12 = v65;
        }

        logHandle10 = v64;
      }

      else
      {
        logHandle8 = [(CloudKit *)self logHandle];
        if (os_log_type_enabled(logHandle8, OS_LOG_TYPE_ERROR))
        {
          sub_1000333C8();
        }
      }
    }

    else
    {
      logHandle9 = [(CloudKit *)self logHandle];
      if (os_log_type_enabled(logHandle9, OS_LOG_TYPE_ERROR))
      {
        sub_100033448();
      }
    }

LABEL_61:

LABEL_62:
    goto LABEL_63;
  }

  logHandle10 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle10, OS_LOG_TYPE_ERROR))
  {
    sub_100033518();
  }

LABEL_63:
}

- (void)deleteAndRecreateRecordZone:(id)zone
{
  zoneCopy = zone;
  logHandle = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    transactionRecordZone = [(CloudKit *)self transactionRecordZone];
    zoneID = [transactionRecordZone zoneID];
    zoneName = [zoneID zoneName];
    *buf = 138543362;
    v16 = zoneName;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Deleting and recreating CKRecordZone %{public}@", buf, 0xCu);
  }

  database = [(CloudKit *)self database];
  transactionRecordZone2 = [(CloudKit *)self transactionRecordZone];
  zoneID2 = [transactionRecordZone2 zoneID];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015F90;
  v13[3] = &unk_100051588;
  v13[4] = self;
  v14 = zoneCopy;
  v12 = zoneCopy;
  [database deleteRecordZoneWithID:zoneID2 completionHandler:v13];
}

- (void)performInitialSyncIfNeeded
{
  previousServerChangeToken = [(CloudKit *)self previousServerChangeToken];

  logHandle = [(CloudKit *)self logHandle];
  v5 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
  if (previousServerChangeToken)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Found previous change token, no need to perform initial sync", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Did not find previous change token, fetching initial changes from iCloud", v6, 2u);
    }

    logHandle = +[NSNotificationCenter defaultCenter];
    [logHandle postNotificationName:@"kCallHistoryFetchChangesNotification" object:0 userInfo:0];
  }
}

- (void)setupSubscription
{
  containerUserDefaults = [(CloudKit *)self containerUserDefaults];
  transactionRecordZoneSubscriptionCreationDate = [containerUserDefaults transactionRecordZoneSubscriptionCreationDate];

  if (transactionRecordZoneSubscriptionCreationDate && ([transactionRecordZoneSubscriptionCreationDate timeIntervalSinceNow], v5 < 172800.0))
  {
    logHandle = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = transactionRecordZoneSubscriptionCreationDate;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Not attempting to create subscription, it was created on %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    logHandle = +[NSDate date];
    containerUserDefaults2 = [(CloudKit *)self containerUserDefaults];
    [containerUserDefaults2 setTransactionRecordZoneSubscriptionCreationDate:logHandle];

    logHandle2 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = logHandle;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Set Transactions record zone subscription creation date to %{public}@", &v9, 0xCu);
    }

    [(CloudKit *)self setupSubscriptionWithRetryCount:0];
  }
}

- (void)fetchTransactionRecordZoneWithCompletion:(id)completion
{
  completionCopy = completion;
  transactionRecordZone = [(CloudKit *)self transactionRecordZone];
  zoneID = [transactionRecordZone zoneID];

  containerUserDefaults = [(CloudKit *)self containerUserDefaults];
  transactionRecordZoneFetchDate = [containerUserDefaults transactionRecordZoneFetchDate];

  if (transactionRecordZoneFetchDate && ([transactionRecordZoneFetchDate timeIntervalSinceNow], v9 >= 604800.0))
  {
    logHandle = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = zoneID;
      v17 = 2114;
      v18 = transactionRecordZoneFetchDate;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Fetched record zone with identifier %{public}@ on %{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 1);
  }

  else
  {
    database = [(CloudKit *)self database];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000166C8;
    v12[3] = &unk_1000515B0;
    v12[4] = self;
    v14 = completionCopy;
    v13 = zoneID;
    [database fetchRecordZoneWithID:v13 completionHandler:v12];
  }
}

- (void)setupSubscriptionWithRetryCount:(unsigned int)count
{
  v5 = [CKRecordZoneSubscription alloc];
  transactionRecordZone = [(CloudKit *)self transactionRecordZone];
  zoneID = [transactionRecordZone zoneID];
  v8 = [v5 initWithZoneID:zoneID subscriptionID:@"CallHistorySubscription"];

  v9 = [CKModifySubscriptionsOperation alloc];
  v10 = [NSArray arrayWithObject:v8];
  v11 = [v9 initWithSubscriptionsToSave:v10 subscriptionIDsToDelete:0];

  [v11 setQualityOfService:17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100016BF0;
  v15[3] = &unk_1000515D8;
  countCopy = count;
  v15[4] = self;
  [v11 setModifySubscriptionsCompletionBlock:v15];
  logHandle = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Modifying subscription...", v14, 2u);
  }

  database = [(CloudKit *)self database];
  [database addOperation:v11];
}

- (void)retryCloudKitOperationForError:(id)error withRetryCount:(unsigned int)count withCallback:(id)callback
{
  errorCopy = error;
  callbackCopy = callback;
  logHandle = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [CKPrettyError descriptionForError:errorCopy];
    *buf = 138543362;
    *v34 = v11;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Operation failed: %{public}@ ", buf, 0xCu);
  }

  domain = [errorCopy domain];
  v13 = [domain isEqualToString:CKErrorDomain];

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (count >= 5)
  {
    logHandle2 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      sub_100033700();
    }

    goto LABEL_8;
  }

  code = [errorCopy code];
  if (code > 0x19 || ((1 << code) & 0x29000F8) == 0)
  {
LABEL_8:
    callbackCopy[2](callbackCopy, 0);
    goto LABEL_20;
  }

  userInfo = [errorCopy userInfo];
  v17 = [userInfo objectForKeyedSubscript:CKErrorRetryAfterKey];

  if (!v17)
  {
    v17 = [&off_100053AF8 objectAtIndexedSubscript:count];
    logHandle3 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v34 = CKErrorRetryAfterKey;
      *&v34[8] = 2114;
      *&v34[10] = v17;
      _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Missing %{public}@ key, defaulting to %{public}@", buf, 0x16u);
    }
  }

  intValue = [v17 intValue];
  intValue2 = [v17 intValue];
  intValue3 = [v17 intValue];
  logHandle4 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
  {
    v23 = intValue3 % 60;
    v24 = intValue2 / 60 % 60;
    v25 = intValue / 3600;
    intValue4 = [v17 intValue];
    *buf = 67110146;
    v27 = "s";
    *v34 = count;
    *&v34[4] = 2048;
    if (intValue4 == 1)
    {
      v27 = "";
    }

    *&v34[6] = v25;
    *&v34[14] = 2048;
    *&v34[16] = v24;
    v35 = 2048;
    v36 = v23;
    v37 = 2080;
    v38 = v27;
    _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Retrying attempt %u after %lu hours %lu minutes and %lu second%s", buf, 0x30u);
  }

  v28 = sub_10001D104(v17);
  v29 = dispatch_time(0, 1000000000 * [v17 intValue]);
  queue = [(CloudKit *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017214;
  block[3] = &unk_100051600;
  v32 = callbackCopy;
  dispatch_after(v29, queue, block);

LABEL_20:
}

- (void)handleCKAccountChangedNotification:(id)notification
{
  notificationCopy = notification;
  logHandle = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = notificationCopy;
    v6 = v8;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "%{public}@ is handling %{public}@", &v7, 0x16u);
  }

  [(CloudKit *)self queryAccountStatus];
}

- (id)containerUserDefaultsObjectForKey:(id)key
{
  keyCopy = key;
  container = [(CloudKit *)self container];
  containerIdentifier = [container containerIdentifier];

  if (containerIdentifier)
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 dictionaryForKey:containerIdentifier];

    v9 = [v8 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    logHandle = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100032B68(self);
    }

    v9 = 0;
  }

  return v9;
}

- (void)setContainerUserDefaultsObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  container = [(CloudKit *)self container];
  containerIdentifier = [container containerIdentifier];

  if (containerIdentifier)
  {
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 dictionaryForKey:containerIdentifier];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
      v12 = +[NSMutableDictionary dictionary];
    }

    [v12 setObject:objectCopy forKeyedSubscript:keyCopy];
    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 setObject:v12 forKey:containerIdentifier];
  }

  else
  {
    logHandle = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100032B68(self);
    }
  }
}

- (void)removeLegacyUserDefaults
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"CallHistorySubscriptionCreationDate"];
  [v2 removeObjectForKey:@"ChangeToken"];
  [v2 removeObjectForKey:@"CallHistoryDeviceCount"];
  [v2 removeObjectForKey:@"CallHistoryDeviceCountLastQueryDate"];
}

@end