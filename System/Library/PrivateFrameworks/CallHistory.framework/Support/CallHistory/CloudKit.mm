@interface CloudKit
+ (id)create;
- (BOOL)isAccountActive;
- (CKDatabase)database;
- (CKServerChangeToken)previousServerChangeToken;
- (CloudKit)init;
- (id)containerUserDefaultsObjectForKey:(id)a3;
- (id)createRecord:(id)a3;
- (void)addRecord:(id)a3 withInsertAndUpdate:(id)a4 withDelete:(id)a5;
- (void)createRecordZoneWithAttemptCount:(unsigned int)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)deleteAndRecreateRecordZone:(id)a3;
- (void)fetchTransactionRecordZoneWithCompletion:(id)a3;
- (void)getUpdatesWithRetryCount:(unsigned int)a3 withQualityOfService:(int64_t)a4 withCallback:(id)a5;
- (void)handleCKAccountChangedNotification:(id)a3;
- (void)handlePartialUploadFailure:(id)a3 withUploadRecordsToSave:(id)a4 withRecordsToDelete:(id)a5 withRetryCount:(unsigned int)a6 withCallback:(id)a7;
- (void)performInitialSyncIfNeeded;
- (void)queryAccountStatusWithRetryCount:(unsigned int)a3;
- (void)registerForNotifications;
- (void)removeLegacyUserDefaults;
- (void)resolveUploadConflicts:(id)a3 withInsertAndUpdateRecords:(id)a4;
- (void)retryCloudKitOperationForError:(id)a3 withRetryCount:(unsigned int)a4 withCallback:(id)a5;
- (void)setAccountActive:(BOOL)a3;
- (void)setContainerUserDefaultsObject:(id)a3 forKey:(id)a4;
- (void)setPreviousServerChangeToken:(id)a3;
- (void)setupSubscription;
- (void)setupSubscriptionWithRetryCount:(unsigned int)a3;
- (void)uploadRecordsToSave:(id)a3 withRecordsToDelete:(id)a4 withRetryCount:(unsigned int)a5 withCallback:(id)a6;
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
    v5 = [v4 UUIDString];
    operationIdentifier = v3->_operationIdentifier;
    v3->_operationIdentifier = v5;

    v7 = +[CKContainer chsh_secureContainer];
    container = v3->_container;
    v3->_container = v7;

    v9 = +[CKRecordZone chsh_transactionRecordZone];
    transactionRecordZone = v3->_transactionRecordZone;
    v3->_transactionRecordZone = v9;

    v11 = [(CKContainer *)v3->_container containerIdentifier];
    if ([v11 length])
    {
      v12 = [[CHSHCKContainerUserDefaults alloc] initWithContainerIdentifier:v11];
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

- (void)setAccountActive:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001191C;
  v3[3] = &unk_1000512B8;
  v3[4] = self;
  v4 = a3;
  [(CloudKit *)self execute:v3];
}

- (CKDatabase)database
{
  v2 = [(CloudKit *)self container];
  v3 = [v2 privateCloudDatabase];

  return v3;
}

- (CKServerChangeToken)previousServerChangeToken
{
  v3 = [(CloudKit *)self containerUserDefaults];
  v4 = [v3 previousServerChangeTokenData];

  if (v4)
  {
    v9 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v9];
    v6 = v9;
    if (!v5)
    {
      v7 = [(CloudKit *)self logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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

- (void)setPreviousServerChangeToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v9];
    v6 = v9;
    if (v5)
    {
      v7 = [(CloudKit *)self containerUserDefaults];
      [v7 setPreviousServerChangeTokenData:v5];
    }

    else
    {
      v7 = [(CloudKit *)self logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100032C60();
      }
    }
  }

  else
  {
    v8 = [(CloudKit *)self containerUserDefaults];
    [v8 setPreviousServerChangeTokenData:0];
  }
}

- (void)queryAccountStatusWithRetryCount:(unsigned int)a3
{
  v5 = +[ACAccountStore ch_sharedAccountStore];
  v6 = [v5 aa_primaryAppleAccount];
  v7 = [v6 aa_isManagedAppleID];

  v8 = [(CloudKit *)self logHandle];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Managed Apple ID detected; disabling CloudKit sync", buf, 2u);
    }

    [(CloudKit *)self setAccountActive:0];
  }

  else
  {
    if (v9)
    {
      *buf = 67109120;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting account status; attempt %d", buf, 8u);
    }

    v10 = [(CloudKit *)self container];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100011DC4;
    v11[3] = &unk_100051330;
    v11[4] = self;
    v12 = a3;
    [v10 accountInfoWithCompletionHandler:v11];
  }
}

- (void)createRecordZoneWithAttemptCount:(unsigned int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CloudKit *)self transactionRecordZone];
    v9 = [v8 zoneID];
    v10 = [v9 zoneName];
    *buf = 138543618;
    v18 = v10;
    v19 = 1024;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating record zone %{public}@; attempt %d", buf, 0x12u);
  }

  v11 = [(CloudKit *)self database];
  v12 = [(CloudKit *)self transactionRecordZone];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001254C;
  v14[3] = &unk_100051380;
  v14[4] = self;
  v15 = v6;
  v16 = a3;
  v13 = v6;
  [v11 saveRecordZone:v12 completionHandler:v14];
}

- (void)getUpdatesWithRetryCount:(unsigned int)a3 withQualityOfService:(int64_t)a4 withCallback:(id)a5
{
  v8 = a5;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100012A40;
  v26[4] = sub_100012A50;
  v27 = objc_alloc_init(NSMutableArray);
  v9 = [CKFetchRecordChangesOperation alloc];
  v10 = [(CloudKit *)self transactionRecordZone];
  v11 = [v10 zoneID];
  v12 = [(CloudKit *)self previousServerChangeToken];
  v13 = [v9 initWithRecordZoneID:v11 previousServerChangeToken:v12];

  objc_initWeak(&location, v13);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100012A58;
  v20[3] = &unk_1000513F8;
  v20[4] = self;
  v23[1] = a4;
  v14 = v8;
  v21 = v14;
  v24 = a3;
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
  if (a4 >= 25)
  {
    v15 = [v13 configuration];
    [v15 setDiscretionaryNetworkBehavior:0];
  }

  v16 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = a4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetching record changes with QoS (%ld)...", buf, 0xCu);
  }

  v17 = [(CloudKit *)self database];
  [v17 addOperation:v13];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(v26, 8);
}

- (void)uploadRecordsToSave:(id)a3 withRecordsToDelete:(id)a4 withRetryCount:(unsigned int)a5 withCallback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v13 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 count];
    v15 = [v11 count];
    *buf = 134218240;
    v36 = v14;
    v37 = 2048;
    v38 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Modifying %lu insert and update records %lu delete records", buf, 0x16u);
  }

  v16 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v10 recordIDsToDelete:v11];
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
  v17 = v10;
  v26 = v17;
  v18 = v11;
  v27 = v18;
  v30 = a5;
  v19 = v12;
  v28 = v19;
  [v16 setModifyRecordsCompletionBlock:v25];
  [v16 setQualityOfService:17];
  v20 = [v16 configuration];
  [v20 setDiscretionaryNetworkBehavior:0];

  v21 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Modifying records...", buf, 2u);
  }

  v22 = [(CloudKit *)self database];
  [v22 addOperation:v16];

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

- (void)handlePartialUploadFailure:(id)a3 withUploadRecordsToSave:(id)a4 withRecordsToDelete:(id)a5 withRetryCount:(unsigned int)a6 withCallback:(id)a7
{
  v11 = a3;
  v51 = a4;
  v50 = a5;
  v49 = a7;
  v12 = objc_opt_new();
  v13 = [v11 userInfo];
  v14 = [v13 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v55 = self;
  v15 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v73 = [v14 count];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Partial failure modifying %lu records", buf, 0xCu);
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
          v24 = [v22 domain];
          v25 = [v24 isEqualToString:CKErrorDomain];

          if (v25)
          {
            if ([v22 code] == 14)
            {
              v26 = [(CloudKit *)self logHandle];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [v23 recordName];
                *buf = 138543362;
                v73 = v27;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Adding record %{public}@ to conflict list", buf, 0xCu);
              }

              [v53 addObject:v23];
              goto LABEL_18;
            }

            if ([v22 code] == 7)
            {
              if (!v52)
              {
                v29 = [(CloudKit *)self logHandle];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = [v23 recordName];
                  *buf = 138543362;
                  v73 = v30;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Partial failure was rate limited for record %{public}@, will retry", buf, 0xCu);
                }

                v52 = v22;
              }

              goto LABEL_18;
            }

            if ([v22 code] != 22)
            {
              v28 = [(CloudKit *)self logHandle];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v31 = [v23 recordName];
                *buf = 138543618;
                v73 = v31;
                v74 = 2114;
                v75 = v22;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Partial failure for record %{public}@: %{public}@", buf, 0x16u);
              }

              goto LABEL_17;
            }
          }

          else
          {
            v28 = [(CloudKit *)self logHandle];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v73 = v11;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Partial failure error is not CloudKit: %{public}@", buf, 0xCu);
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
    v54 = v11;
    [(CloudKit *)self resolveUploadConflicts:v53 withInsertAndUpdateRecords:v51];
    v66 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v34 = v51;
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
          v40 = [(CloudKit *)v55 logHandle];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = [v39 recordID];
            v42 = [v41 recordName];
            *buf = 138543362;
            v73 = v42;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "insert/update %{public}@", buf, 0xCu);
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v36);
    }

    v43 = v34;
    v45 = v49;
    v44 = v50;
    [(CloudKit *)v55 uploadRecordsToSave:v43 withRecordsToDelete:v50 withRetryCount:a6 withCallback:v49];
    v33 = v53;
    v11 = v54;
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
      v56[4] = v55;
      v57 = v51;
      v44 = v50;
      v58 = v50;
      v62 = a6;
      v45 = v49;
      v61 = v49;
      v59 = v52;
      v60 = v11;
      v46 = v52;
      [(CloudKit *)v55 retryCloudKitOperationForError:v59 withRetryCount:a6 + 1 withCallback:v56];
    }

    else
    {
      v47 = [(CloudKit *)v55 logHandle];
      v45 = v49;
      v44 = v50;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1000331E0();
      }

      (*(v49 + 2))(v49, v11);
    }
  }
}

- (void)resolveUploadConflicts:(id)a3 withInsertAndUpdateRecords:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v46 = [v6 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolving %lu conflicting records", buf, 0xCu);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v6;
  v40 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v40)
  {
    v39 = *v42;
    v11 = @"type";
    *&v10 = 138543618;
    v35 = v10;
    v36 = v9;
    v37 = self;
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
        if (![v7 count])
        {
          goto LABEL_19;
        }

        v15 = 0;
        while (1)
        {
          v16 = [v7 objectAtIndexedSubscript:v15];
          v17 = [v16 recordID];
          v18 = [v17 isEqual:v14];

          if (v18)
          {
            break;
          }

          if (++v15 >= [v7 count])
          {
            goto LABEL_19;
          }
        }

        if (v16)
        {
          v19 = [v16 encryptedValuesByKey];
          v20 = [v19 objectForKeyedSubscript:@"encryptedData"];

          if (v20)
          {
            v38 = v20;
            v11 = v13;
            v21 = [v16 objectForKeyedSubscript:v13];
            if (v21)
            {
              v22 = [(CloudKit *)self transactionRecordZone];
              v23 = [v22 zoneID];
              v24 = [CKRecord chsh_transactionRecordWithZoneID:v23];

              v25 = [v24 encryptedValuesByKey];
              [v25 setObject:v38 forKeyedSubscript:@"encryptedData"];

              v26 = [v16 objectForKeyedSubscript:@"syncOperationIdentifier"];
              v27 = [v24 valuesByKey];
              [v27 setObject:v26 forKeyedSubscript:@"syncOperationIdentifier"];

              v28 = [v24 valuesByKey];
              [v28 setObject:v21 forKeyedSubscript:@"type"];

              v29 = [CKReference alloc];
              v30 = [v16 recordID];
              v31 = [v29 initWithRecordID:v30 action:1];
              [v24 setObject:v31 forKeyedSubscript:@"parentTransaction"];

              self = v37;
              v32 = [(CloudKit *)v37 logHandle];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v35;
                v46 = v24;
                v47 = 2114;
                v48 = v16;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Created a reference between record %{public}@ and parent record %{public}@", buf, 0x16u);
              }

              [v7 replaceObjectAtIndex:v15 withObject:v24];
              v9 = v36;
              v11 = v13;
            }

            else
            {
              v24 = [(CloudKit *)self logHandle];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v46 = v13;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Missing %{public}@ key in parent record", buf, 0xCu);
              }
            }

            v20 = v38;
          }

          else
          {
            v21 = [(CloudKit *)self logHandle];
            v11 = v13;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v46 = @"encryptedData";
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Missing %{public}@ key in parent record", buf, 0xCu);
            }
          }
        }

        else
        {
LABEL_19:
          v16 = [(CloudKit *)self logHandle];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v14 recordName];
            *buf = 138543362;
            v46 = v33;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Could not find original record %{public}@ to resolve conflict", buf, 0xCu);
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

- (id)createRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 record];
  v33 = 0;
  v6 = [CHRecentCall unarchivedObjectFromData:v5 error:&v33];
  v7 = v33;

  if (v6)
  {
    v8 = [v6 uniqueId];
    if ([v8 length])
    {
      v9 = [v6 serviceProvider];
      if (([v9 isEqualToString:@"com.apple.FaceTime"]& 1) != 0 || [v9 isEqualToString:@"com.apple.Telephony"])
      {
        v10 = [CHRecentCallPb protoRecentCallWithRecentCall:v6];
        [v10 setLocalParticipantUUID:0];
        [v10 setOutgoingLocalParticipantUUID:0];
        v11 = [v10 data];
        v12 = v11;
        if (v11)
        {
          v31 = v11;
          v32 = v7;
          if ([v4 transactionType])
          {
            v13 = [(CloudKit *)self transactionRecordZone];
            v14 = [v13 zoneID];
            v15 = [CKRecord chsh_transactionRecordWithZoneID:v14];

            v16 = [(CloudKit *)self logHandle];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              log = v16;
              v17 = +[CHTransaction toString:](CHTransaction, "toString:", [v4 transactionType]);
              v18 = [v15 recordID];
              v19 = [v18 recordName];
              *buf = 138543874;
              v35 = v17;
              v36 = 2114;
              v37 = v19;
              v38 = 2114;
              v39 = v8;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Created %{public}@ record with identifier %{public}@ for parent record with identifier %{public}@", buf, 0x20u);

              v16 = log;
            }
          }

          else
          {
            v21 = [CKRecordID alloc];
            v22 = [(CloudKit *)self transactionRecordZone];
            v23 = [v22 zoneID];
            v16 = [v21 initWithRecordName:v8 zoneID:v23];

            v15 = [CKRecord chsh_transactionRecordWithRecordID:v16];
            v24 = [(CloudKit *)self logHandle];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v35 = v8;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Created insert transaction record for call with UUID %{public}@", buf, 0xCu);
            }
          }

          v12 = v31;

          v25 = [v15 encryptedValuesByKey];
          [v25 setObject:v31 forKeyedSubscript:@"encryptedData"];

          v26 = [(CloudKit *)self operationIdentifier];
          v27 = [v15 valuesByKey];
          [v27 setObject:v26 forKeyedSubscript:@"syncOperationIdentifier"];

          v20 = +[CHTransaction toString:](CHTransaction, "toString:", [v4 transactionType]);
          v28 = [v15 valuesByKey];
          [v28 setObject:v20 forKeyedSubscript:@"type"];

          v7 = v32;
        }

        else
        {
          v20 = [(CloudKit *)self logHandle];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_1000332F8();
          }

          v15 = 0;
        }
      }

      else
      {
        v10 = [(CloudKit *)self logHandle];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100033290();
        }

        v15 = 0;
      }
    }

    else
    {
      v9 = [(CloudKit *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cancelling transaction record creation; could not obtain a unique identifier from call %@", buf, 0xCu);
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

    v8 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100033360();
    }

    v15 = 0;
  }

LABEL_31:

  return v15;
}

- (void)addRecord:(id)a3 withInsertAndUpdate:(id)a4 withDelete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 encryptedValuesByKey];
  v12 = [v11 objectForKeyedSubscript:@"encryptedData"];

  if ([v12 length])
  {
    v13 = [[CHRecentCallPb alloc] initWithData:v12];
    v14 = v13;
    if (!v13)
    {
      v15 = [(CloudKit *)self logHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000334B0();
      }

      goto LABEL_62;
    }

    v15 = [(CHRecentCallPb *)v13 uniqueId];
    if ([v15 length])
    {
      v16 = [v8 objectForKeyedSubscript:@"type"];
      if ([v16 length])
      {
        v64 = v14;
        v65 = v12;
        v17 = [CHTransaction toString:0];
        v18 = [v16 isEqualToString:v17];

        v66 = v16;
        v67 = v10;
        if ((v18 & 1) == 0)
        {
          v19 = [CKRecordID alloc];
          v20 = [(CloudKit *)self transactionRecordZone];
          v21 = [v20 zoneID];
          v22 = [v19 initWithRecordName:v15 zoneID:v21];

          v23 = [[CKReference alloc] initWithRecordID:v22 action:1];
          [v8 setObject:v23 forKeyedSubscript:@"parentTransaction"];
          v24 = [(CloudKit *)self logHandle];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v8 recordID];
            *buf = 138543618;
            v80 = v25;
            v81 = 2114;
            v82 = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Created a reference between record %{public}@ and parent record %{public}@", buf, 0x16u);
          }

          v16 = v66;
          v10 = v67;
        }

        v26 = [CHTransaction toString:2];
        v27 = [v16 isEqualToString:v26];

        if (v27)
        {
          v63 = v8;
          v68 = +[NSMutableArray array];
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v62 = v9;
          v28 = v9;
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
                v34 = [v33 recordID];
                v35 = [v34 recordName];
                v36 = [v35 isEqualToString:v15];

                if (v36)
                {
                  v37 = [(CloudKit *)self logHandle];
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v80 = v15;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Removing record %{public}@ since we are deleting it", buf, 0xCu);
                  }

                  [v68 addObject:v33];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v73 objects:v78 count:16];
            }

            while (v30);
          }

          [v28 removeObjectsInArray:v68];
          v8 = v63;
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
                v45 = [v38 recordID];
                LODWORD(v44) = [v44 isEqual:v45];

                if (v44)
                {
                  v57 = [(CloudKit *)self logHandle];
                  v12 = v65;
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                  {
                    v58 = [v38 recordID];
                    *buf = 138543362;
                    v80 = v58;
                    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Found existing delete transaction record for identifier %{public}@", buf, 0xCu);
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

          v46 = [v38 recordID];
          v47 = [(CloudKit *)self logHandle];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v80 = v46;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Deleting record with identifier %{public}@", buf, 0xCu);
          }

          [v39 addObject:v46];
          v39 = v46;
          v12 = v65;
LABEL_52:
          v16 = v66;

          v9 = v62;
          v10 = v67;
        }

        else
        {
          v49 = [CHTransaction toString:0];
          v50 = [v16 isEqualToString:v49];

          if (v50)
          {
            if ([v9 count])
            {
              v51 = 0;
              while (1)
              {
                v52 = [v9 objectAtIndexedSubscript:v51];
                v53 = [v52 recordID];
                v54 = [v8 recordID];
                v55 = [v53 isEqual:v54];

                if (v55)
                {
                  break;
                }

                if (++v51 >= [v9 count])
                {
                  goto LABEL_46;
                }
              }

              v61 = [(CloudKit *)self logHandle];
              v16 = v66;
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v80 = v52;
                v81 = 2114;
                v82 = v8;
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Replacing record %{public}@ with record %{public}@", buf, 0x16u);
              }

              [v9 replaceObjectAtIndex:v51 withObject:v8];
              v12 = v65;
            }

            else
            {
LABEL_46:
              v56 = [(CloudKit *)self logHandle];
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v80 = v8;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Adding record %{public}@", buf, 0xCu);
              }

              [v9 addObject:v8];
              v12 = v65;
              v16 = v66;
            }

            v10 = v67;
            goto LABEL_61;
          }

          v59 = [CHTransaction toString:1];
          v60 = [v16 isEqualToString:v59];

          if (v60)
          {
            [v9 addObject:v8];
          }

          v12 = v65;
        }

        v14 = v64;
      }

      else
      {
        v48 = [(CloudKit *)self logHandle];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000333C8();
        }
      }
    }

    else
    {
      v16 = [(CloudKit *)self logHandle];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100033448();
      }
    }

LABEL_61:

LABEL_62:
    goto LABEL_63;
  }

  v14 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100033518();
  }

LABEL_63:
}

- (void)deleteAndRecreateRecordZone:(id)a3
{
  v4 = a3;
  v5 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CloudKit *)self transactionRecordZone];
    v7 = [v6 zoneID];
    v8 = [v7 zoneName];
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting and recreating CKRecordZone %{public}@", buf, 0xCu);
  }

  v9 = [(CloudKit *)self database];
  v10 = [(CloudKit *)self transactionRecordZone];
  v11 = [v10 zoneID];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015F90;
  v13[3] = &unk_100051588;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [v9 deleteRecordZoneWithID:v11 completionHandler:v13];
}

- (void)performInitialSyncIfNeeded
{
  v3 = [(CloudKit *)self previousServerChangeToken];

  v4 = [(CloudKit *)self logHandle];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found previous change token, no need to perform initial sync", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did not find previous change token, fetching initial changes from iCloud", v6, 2u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"kCallHistoryFetchChangesNotification" object:0 userInfo:0];
  }
}

- (void)setupSubscription
{
  v3 = [(CloudKit *)self containerUserDefaults];
  v4 = [v3 transactionRecordZoneSubscriptionCreationDate];

  if (v4 && ([v4 timeIntervalSinceNow], v5 < 172800.0))
  {
    v6 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not attempting to create subscription, it was created on %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    v6 = +[NSDate date];
    v7 = [(CloudKit *)self containerUserDefaults];
    [v7 setTransactionRecordZoneSubscriptionCreationDate:v6];

    v8 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set Transactions record zone subscription creation date to %{public}@", &v9, 0xCu);
    }

    [(CloudKit *)self setupSubscriptionWithRetryCount:0];
  }
}

- (void)fetchTransactionRecordZoneWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CloudKit *)self transactionRecordZone];
  v6 = [v5 zoneID];

  v7 = [(CloudKit *)self containerUserDefaults];
  v8 = [v7 transactionRecordZoneFetchDate];

  if (v8 && ([v8 timeIntervalSinceNow], v9 >= 604800.0))
  {
    v11 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fetched record zone with identifier %{public}@ on %{public}@", buf, 0x16u);
    }

    v4[2](v4, 1);
  }

  else
  {
    v10 = [(CloudKit *)self database];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000166C8;
    v12[3] = &unk_1000515B0;
    v12[4] = self;
    v14 = v4;
    v13 = v6;
    [v10 fetchRecordZoneWithID:v13 completionHandler:v12];
  }
}

- (void)setupSubscriptionWithRetryCount:(unsigned int)a3
{
  v5 = [CKRecordZoneSubscription alloc];
  v6 = [(CloudKit *)self transactionRecordZone];
  v7 = [v6 zoneID];
  v8 = [v5 initWithZoneID:v7 subscriptionID:@"CallHistorySubscription"];

  v9 = [CKModifySubscriptionsOperation alloc];
  v10 = [NSArray arrayWithObject:v8];
  v11 = [v9 initWithSubscriptionsToSave:v10 subscriptionIDsToDelete:0];

  [v11 setQualityOfService:17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100016BF0;
  v15[3] = &unk_1000515D8;
  v16 = a3;
  v15[4] = self;
  [v11 setModifySubscriptionsCompletionBlock:v15];
  v12 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Modifying subscription...", v14, 2u);
  }

  v13 = [(CloudKit *)self database];
  [v13 addOperation:v11];
}

- (void)retryCloudKitOperationForError:(id)a3 withRetryCount:(unsigned int)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [CKPrettyError descriptionForError:v8];
    *buf = 138543362;
    *v34 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Operation failed: %{public}@ ", buf, 0xCu);
  }

  v12 = [v8 domain];
  v13 = [v12 isEqualToString:CKErrorDomain];

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (a4 >= 5)
  {
    v14 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100033700();
    }

    goto LABEL_8;
  }

  v15 = [v8 code];
  if (v15 > 0x19 || ((1 << v15) & 0x29000F8) == 0)
  {
LABEL_8:
    v9[2](v9, 0);
    goto LABEL_20;
  }

  v16 = [v8 userInfo];
  v17 = [v16 objectForKeyedSubscript:CKErrorRetryAfterKey];

  if (!v17)
  {
    v17 = [&off_100053AF8 objectAtIndexedSubscript:a4];
    v18 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v34 = CKErrorRetryAfterKey;
      *&v34[8] = 2114;
      *&v34[10] = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Missing %{public}@ key, defaulting to %{public}@", buf, 0x16u);
    }
  }

  v19 = [v17 intValue];
  v20 = [v17 intValue];
  v21 = [v17 intValue];
  v22 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v21 % 60;
    v24 = v20 / 60 % 60;
    v25 = v19 / 3600;
    v26 = [v17 intValue];
    *buf = 67110146;
    v27 = "s";
    *v34 = a4;
    *&v34[4] = 2048;
    if (v26 == 1)
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
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Retrying attempt %u after %lu hours %lu minutes and %lu second%s", buf, 0x30u);
  }

  v28 = sub_10001D104(v17);
  v29 = dispatch_time(0, 1000000000 * [v17 intValue]);
  v30 = [(CloudKit *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017214;
  block[3] = &unk_100051600;
  v32 = v9;
  dispatch_after(v29, v30, block);

LABEL_20:
}

- (void)handleCKAccountChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CloudKit *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v4;
    v6 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is handling %{public}@", &v7, 0x16u);
  }

  [(CloudKit *)self queryAccountStatus];
}

- (id)containerUserDefaultsObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(CloudKit *)self container];
  v6 = [v5 containerIdentifier];

  if (v6)
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 dictionaryForKey:v6];

    v9 = [v8 objectForKeyedSubscript:v4];
  }

  else
  {
    v10 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100032B68(self);
    }

    v9 = 0;
  }

  return v9;
}

- (void)setContainerUserDefaultsObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudKit *)self container];
  v9 = [v8 containerIdentifier];

  if (v9)
  {
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 dictionaryForKey:v9];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
      v12 = +[NSMutableDictionary dictionary];
    }

    [v12 setObject:v6 forKeyedSubscript:v7];
    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 setObject:v12 forKey:v9];
  }

  else
  {
    v14 = [(CloudKit *)self logHandle];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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