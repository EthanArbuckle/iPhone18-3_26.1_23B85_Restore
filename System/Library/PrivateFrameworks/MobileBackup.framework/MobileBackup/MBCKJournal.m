@interface MBCKJournal
+ (id)journalForDevice:(id)a3 cache:(id)a4 engine:(id)a5;
- (BOOL)_clearSnapshotActionsWithOperationTracker:(id)a3 error:(id *)a4;
- (BOOL)_handleMergeAction:(id)a3 outputSnapshotID:(id)a4 serverSnapshot:(id)a5 shouldMergeDeletions:(BOOL)a6 operationTracker:(id)a7 error:(id *)a8;
- (BOOL)_handleRemoveDomain:(id)a3 domainHmacs:(id)a4 outputSnapshotID:(id)a5 serverSnapshot:(id)a6 operationTracker:(id)a7 error:(id *)a8;
- (BOOL)_handleSnapshotAction:(id)a3 operationTracker:(id)a4 error:(id *)a5;
- (BOOL)fetchFromServerWithOperationTracker:(id)a3 error:(id *)a4;
- (BOOL)replayJournalResetOrDisableWithOperationTracker:(id)a3 serviceManager:(id)a4 disable:(BOOL *)a5 error:(id *)a6;
- (BOOL)replayWithOperationTracker:(id)a3 actionCount:(unint64_t *)a4 error:(id *)a5;
- (MBCKDevice)device;
- (MBCKEngine)engine;
- (MBCKJournal)initWithDevice:(id)a3 cache:(id)a4 engine:(id)a5;
- (id)_getRecordIDString;
- (id)recordRepresentation;
- (void)refreshWithRecord:(id)a3;
@end

@implementation MBCKJournal

+ (id)journalForDevice:(id)a3 cache:(id)a4 engine:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MBCKJournal alloc] initWithDevice:v9 cache:v8 engine:v7];

  return v10;
}

- (MBCKJournal)initWithDevice:(id)a3 cache:(id)a4 engine:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = MBCKJournal;
  v10 = [(MBCKModel *)&v13 initWithRecord:0 cache:a4];
  v11 = v10;
  if (v10)
  {
    [(MBCKJournal *)v10 setDevice:v8];
    [(MBCKJournal *)v11 setEngine:v9];
  }

  return v11;
}

- (id)_getRecordIDString
{
  v4 = [(MBCKJournal *)self device];
  v5 = [v4 deviceUUID];

  if (!v5)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MBCKJournal.m" lineNumber:49 description:@"Journal is missing a device deviceUUID"];
  }

  v6 = [(MBCKJournal *)self recordPrefix];

  v7 = [NSString alloc];
  if (v6)
  {
    v8 = [(MBCKJournal *)self recordPrefix];
    v9 = [v4 deviceUUID];
    v10 = [v7 initWithFormat:@"%@:%@:%@", v8, v9, @"Journal"];
  }

  else
  {
    v8 = [v4 deviceUUID];
    v10 = [v7 initWithFormat:@"%@:%@", v8, @"Journal"];
  }

  return v10;
}

- (void)refreshWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"snapshotActions"];
  snapshotActions = self->_snapshotActions;
  self->_snapshotActions = v5;

  v7 = [v4 objectForKeyedSubscript:@"processedSnapshotActions"];
  processedSnapshotActions = self->_processedSnapshotActions;
  self->_processedSnapshotActions = v7;

  v9.receiver = self;
  v9.super_class = MBCKJournal;
  [(MBCKModel *)&v9 refreshWithRecord:v4];
}

- (id)recordRepresentation
{
  v5.receiver = self;
  v5.super_class = MBCKJournal;
  v3 = [(MBCKModel *)&v5 recordRepresentation];
  [v3 setObject:self->_snapshotActions forKeyedSubscript:@"snapshotActions"];
  [v3 setObject:self->_processedSnapshotActions forKeyedSubscript:@"processedSnapshotActions"];

  return v3;
}

- (BOOL)_clearSnapshotActionsWithOperationTracker:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBCKJournal _clearSnapshotActionsWithOperationTracker:error:]", "MBCKJournal.m", 77, "tracker");
  }

  v7 = v6;
  if (self->_snapshotActions)
  {
    v8 = [[NSMutableArray alloc] initWithArray:self->_processedSnapshotActions];
    [(NSArray *)v8 addObjectsFromArray:self->_snapshotActions];
    snapshotActions = self->_snapshotActions;
    self->_snapshotActions = 0;

    processedSnapshotActions = self->_processedSnapshotActions;
    self->_processedSnapshotActions = v8;

    v11 = [(MBCKModel *)self saveWithOperationTracker:v7 error:a4];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)fetchFromServerWithOperationTracker:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = MBCKJournal;
  v17 = 0;
  v7 = [(MBCKModel *)&v16 fetchFromServerWithOperationTracker:v6 error:&v17];
  v8 = v17;
  if (v7)
  {
LABEL_2:
    v9 = 1;
    goto LABEL_11;
  }

  if ([MBError isCKNotFoundError:v8])
  {

    v15 = 0;
    v10 = [(MBCKModel *)self saveWithOperationTracker:v6 error:&v15];
    v8 = v15;
    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Recreated empty journal record", v14, 2u);
        _MBLog();
      }

      goto LABEL_2;
    }
  }

  if (a4)
  {
    v12 = v8;
    v9 = 0;
    *a4 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (BOOL)replayJournalResetOrDisableWithOperationTracker:(id)a3 serviceManager:(id)a4 disable:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    __assert_rtn("[MBCKJournal replayJournalResetOrDisableWithOperationTracker:serviceManager:disable:error:]", "MBCKJournal.m", 105, "tracker");
  }

  v12 = v11;
  if (!v11)
  {
    __assert_rtn("[MBCKJournal replayJournalResetOrDisableWithOperationTracker:serviceManager:disable:error:]", "MBCKJournal.m", 106, "serviceManager");
  }

  if (!a5)
  {
    __assert_rtn("[MBCKJournal replayJournalResetOrDisableWithOperationTracker:serviceManager:disable:error:]", "MBCKJournal.m", 107, "disable");
  }

  v13 = [v10 account];
  if (!v13)
  {
    __assert_rtn("[MBCKJournal replayJournalResetOrDisableWithOperationTracker:serviceManager:disable:error:]", "MBCKJournal.m", 109, "serviceAccount");
  }

  v14 = v13;
  if (![(MBCKJournal *)self fetchFromServerWithOperationTracker:v10 error:a6])
  {
    v28 = 0;
    goto LABEL_47;
  }

  v47 = v14;
  v15 = self->_snapshotActions;
  v48 = v12;
  if (MBIsInternalInstall())
  {
    v16 = +[MBBehaviorOptions sharedOptions];
    v17 = [v16 forceCacheReset];

    if (v17)
    {
      if (v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = &__NSArray0__struct;
      }

      v15 = [(NSArray *)v18 arrayByAddingObject:@"reset"];
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v15;
  v19 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (!v19)
  {
    v28 = 0;
    goto LABEL_46;
  }

  v20 = v19;
  v44 = self;
  v45 = a6;
  v46 = v10;
  v21 = *v53;
  while (2)
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v53 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = [[NSString alloc] initWithString:*(*(&v52 + 1) + 8 * i)];
      v24 = [v23 stringByReplacingOccurrencesOfString:@"S:" withString:&stru_1003C3430];

      v25 = [v24 stringByReplacingOccurrencesOfString:@":" withString:@"|"];

      v26 = [v25 componentsSeparatedByString:@"|"];
      v27 = [v26 firstObject];
      if ([v27 containsString:@"reset"])
      {
        v29 = MBGetDefaultLog();
        v10 = v46;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Replaying journal - journal contains server reset", buf, 2u);
          _MBLog();
        }

        v30 = [(MBCKJournal *)v44 engine];
        v31 = [v30 backupPolicy];

        if (v31 == 1)
        {
          [v48 clearPrebuddyWithAccount:v47 accountSignOut:0];
        }

        v32 = [v48 resetCacheWithAccount:v47 error:v45];
        v51 = 0;
        v33 = [v48 openCacheWithAccount:v47 accessType:1 error:&v51];
        v34 = v51;
        [(MBCKModel *)v44 setCache:v33];
        v35 = [(MBCKJournal *)v44 device];
        [v35 setCache:v33];

        if (v32 && [(MBCKJournal *)v44 _clearSnapshotActionsWithOperationTracker:v46 error:v45])
        {
          goto LABEL_45;
        }

        v36 = MBGetDefaultLog();
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          goto LABEL_44;
        }

        if (v45)
        {
          v37 = *v45;
          *buf = 138412290;
          v57 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Replaying journal - unable to complete reset: %@", buf, 0xCu);
          v38 = *v45;
        }

        else
        {
          *buf = 138412290;
          v57 = @"unknown error";
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Replaying journal - unable to complete reset: %@", buf, 0xCu);
        }

        goto LABEL_43;
      }

      if ([v27 containsString:@"disable"])
      {
        v39 = MBGetDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Replaying journal - journal contains server disable", buf, 2u);
          _MBLog();
        }

        v40 = [v48 resetCacheWithAccount:v47 error:v45];
        v50 = 0;
        v33 = [v48 openCacheWithAccount:v47 accessType:1 error:&v50];
        v34 = v50;
        [(MBCKModel *)v44 setCache:v33];
        v10 = v46;
        if (v40 && [(MBCKJournal *)v44 _clearSnapshotActionsWithOperationTracker:v46 error:v45])
        {
          *a5 = 1;
LABEL_45:

          v28 = 1;
          goto LABEL_46;
        }

        v36 = MBGetDefaultLog();
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
LABEL_44:

          goto LABEL_45;
        }

        if (v45)
        {
          v41 = *v45;
          *buf = 138412290;
          v57 = v41;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Replaying journal - unable to complete disable: %@", buf, 0xCu);
          v42 = *v45;
        }

        else
        {
          *buf = 138412290;
          v57 = @"unknown error";
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Replaying journal - unable to complete disable: %@", buf, 0xCu);
        }

LABEL_43:
        _MBLog();
        goto LABEL_44;
      }
    }

    v20 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    v28 = 0;
    v10 = v46;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_46:

  v14 = v47;
  v12 = v48;
LABEL_47:

  return v28;
}

- (BOOL)replayWithOperationTracker:(id)a3 actionCount:(unint64_t *)a4 error:(id *)a5
{
  v8 = a3;
  if (!v8)
  {
    __assert_rtn("[MBCKJournal replayWithOperationTracker:actionCount:error:]", "MBCKJournal.m", 169, "tracker");
  }

  v9 = v8;
  v10 = [(MBCKJournal *)self device];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 recordIDString];
    *buf = 138543362;
    v78 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Replaying journal for device: %{public}@", buf, 0xCu);

    v51 = [v10 recordIDString];
    _MBLog();
  }

  if (([v10 hasFetchedSnapshots] & 1) == 0 && !objc_msgSend(v10, "fetchSnapshotsWithOperationTracker:error:", v9, a5) || !-[MBCKJournal fetchFromServerWithOperationTracker:error:](self, "fetchFromServerWithOperationTracker:error:", v9, a5, v51))
  {
    LOBYTE(v21) = 0;
    goto LABEL_62;
  }

  if (MBIsInternalInstall())
  {
    v13 = +[MBBehaviorOptions sharedOptions];
    v14 = [v13 cancelBackupDuringJournalReplay];

    if (v14)
    {
      v15 = [(MBCKJournal *)self engine];
      v16 = [objc_opt_class() cancellationError];
      [v15 cancelWithError:v16];
    }
  }

  v17 = [(NSArray *)self->_snapshotActions count];
  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    snapshotActions = self->_snapshotActions;
    *buf = 138543362;
    v78 = snapshotActions;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Journal actions: %{public}@", buf, 0xCu);
    v52 = self->_snapshotActions;
    _MBLog();
  }

  if (a4)
  {
    *a4 = v17;
  }

  if (!v17)
  {
    LOBYTE(v21) = 1;
    goto LABEL_62;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = self->_snapshotActions;
  v60 = [(NSArray *)obj countByEnumeratingWithState:&v71 objects:v76 count:16];
  v20 = 0;
  if (!v60)
  {
    LOBYTE(v21) = 1;
    goto LABEL_45;
  }

  v59 = *v72;
  v21 = 1;
  v55 = a5;
  v56 = v9;
  v54 = v10;
LABEL_17:
  v22 = 0;
  while (1)
  {
    if (*v72 != v59)
    {
      objc_enumerationMutation(obj);
    }

    v61 = *(*(&v71 + 1) + 8 * v22);
    v23 = objc_alloc_init(NSMutableDictionary);
    cachedSnapshotsByID = self->_cachedSnapshotsByID;
    self->_cachedSnapshotsByID = v23;

    v25 = objc_alloc_init(NSMutableDictionary);
    snapshotsByID = self->_snapshotsByID;
    self->_snapshotsByID = v25;

    v27 = objc_opt_new();
    v28 = [(MBCKModel *)self cache];
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100087BE0;
    v69[3] = &unk_1003BC450;
    v63 = v27;
    v70 = v63;
    v29 = [v28 enumerateSnapshotIDs:v69];

    if (v29)
    {
      if (a5)
      {
        v46 = v29;
        *a5 = v29;
      }

      v47 = MBGetDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v78 = v29;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Error enumerating snapshot IDs: %@", buf, 0xCu);
        _MBLog();
      }

      LOBYTE(v21) = 0;
      goto LABEL_59;
    }

    objc_storeStrong(&self->_cachedSnapshotIDs, v27);
    v30 = [(MBCKModel *)self cache];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100087C04;
    v68[3] = &unk_1003BCD40;
    v68[4] = self;
    v31 = [v30 enumerateSnapshots:v68];

    v62 = v31;
    if (v31)
    {
      if (a5)
      {
        v32 = v31;
        *a5 = v31;
      }

      v33 = MBGetDefaultLog();
      v34 = v63;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v78 = v31;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Error enumerating snapshots: %@", buf, 0xCu);
        v52 = v31;
        _MBLog();
      }

      v35 = 1;
    }

    else
    {
      v57 = v21;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      WeakRetained = objc_loadWeakRetained(&self->_device);
      v37 = [WeakRetained snapshots];

      v38 = [v37 countByEnumeratingWithState:&v64 objects:v75 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v65;
        do
        {
          for (i = 0; i != v39; i = i + 1)
          {
            if (*v65 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v64 + 1) + 8 * i);
            v43 = self->_snapshotsByID;
            v44 = [v42 snapshotID];
            [(NSMutableDictionary *)v43 setValue:v42 forKey:v44];
          }

          v39 = [v37 countByEnumeratingWithState:&v64 objects:v75 count:16];
        }

        while (v39);
      }

      a5 = v55;
      v9 = v56;
      v45 = [(MBCKJournal *)self _handleSnapshotAction:v61 operationTracker:v56 error:v55];
      v35 = v45 ? 0 : 10;
      v21 = v45 & v57;
      v34 = v63;
    }

    if (v35)
    {
      break;
    }

    v22 = v22 + 1;
    v20 = v62;
    if (v22 == v60)
    {
      v10 = v54;
      v60 = [(NSArray *)obj countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v60)
      {
        goto LABEL_17;
      }

LABEL_45:

      v29 = v20;
      if (a5)
      {
        goto LABEL_54;
      }

      goto LABEL_61;
    }
  }

  if (v35 != 10)
  {
    LOBYTE(v21) = 0;
    v29 = v62;
LABEL_59:
    v10 = v54;
    goto LABEL_61;
  }

  v29 = v62;
  v10 = v54;
  if (!a5)
  {
    goto LABEL_61;
  }

LABEL_54:
  if (*a5)
  {
    v48 = MBGetDefaultLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = *a5;
      *buf = 138412290;
      v78 = v49;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Not marking journal action as processed %@", buf, 0xCu);
      v53 = *a5;
      _MBLog();
    }
  }

  else
  {
    [(MBCKJournal *)self _clearSnapshotActionsWithOperationTracker:v9 error:0];
  }

LABEL_61:

LABEL_62:
  return v21 & 1;
}

- (BOOL)_handleMergeAction:(id)a3 outputSnapshotID:(id)a4 serverSnapshot:(id)a5 shouldMergeDeletions:(BOOL)a6 operationTracker:(id)a7 error:(id *)a8
{
  v14 = a3;
  v39 = a4;
  v38 = a5;
  v15 = a7;
  if (!v15)
  {
    __assert_rtn("[MBCKJournal _handleMergeAction:outputSnapshotID:serverSnapshot:shouldMergeDeletions:operationTracker:error:]", "MBCKJournal.m", 249, "tracker");
  }

  v16 = v15;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1000882C4;
  v53 = sub_1000882D4;
  v54 = 0;
  context = objc_autoreleasePoolPush();
  if ([v14 count] != 2)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v19 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = [v14 count];
        *buf = 134218242;
        v56 = v26;
        v57 = 2112;
        v58 = v14;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Client side merge only supports two snapshots. (%lu specified %@)", buf, 0x16u);
      }

      [v14 count];
      _MBLog();
    }

    goto LABEL_15;
  }

  if (!v39)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Merge output snapshotID not specified.", buf, 2u);
      _MBLog();
    }

LABEL_15:
    v27 = 0;
    goto LABEL_28;
  }

  cachedSnapshotsByID = self->_cachedSnapshotsByID;
  v18 = [v14 firstObject];
  v19 = [(NSMutableDictionary *)cachedSnapshotsByID valueForKey:v18];

  v20 = self->_cachedSnapshotsByID;
  v21 = [v14 lastObject];
  v36 = [(NSMutableDictionary *)v20 valueForKey:v21];

  if (v19 && v36)
  {
    v22 = [(MBCKJournal *)self device];
    [v19 setDevice:v22];
    [v36 setDevice:v22];
    if (!v38)
    {
      v25 = +[MBCKSnapshot snapshotForDevice:reason:type:snapshotFormat:snapshotID:](MBCKSnapshot, "snapshotForDevice:reason:type:snapshotFormat:snapshotID:", v22, [v36 backupReason], objc_msgSend(v36, "type"), objc_msgSend(v36, "snapshotFormat"), v39);
      v31 = [v36 created];
      [v25 setCreated:v31];

LABEL_22:
      [(MBCKJournal *)self _clearSnapshotActionsWithOperationTracker:v16 error:0];
      v32 = [(MBCKModel *)self cache];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000882DC;
      v40[3] = &unk_1003BCD68;
      v40[4] = self;
      v30 = v25;
      v41 = v30;
      v46 = &v49;
      v42 = v19;
      v43 = v36;
      v44 = v39;
      v47 = a6;
      v45 = v38;
      v33 = [v32 performInTransaction:v40];

      v27 = v33 == 0;
      if (v33 && !v50[5])
      {
        objc_storeStrong(v50 + 5, v33);
      }

LABEL_26:
      goto LABEL_27;
    }

    v23 = v50 + 5;
    obj = v50[5];
    v24 = [v38 fetchManifestsWithOperationTracker:v16 error:&obj];
    objc_storeStrong(v23, obj);
    if (v24)
    {
      v25 = v38;
      goto LABEL_22;
    }
  }

  else
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v22 = v22;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v28 = [v14 firstObject];
        v29 = [v14 lastObject];
        *buf = 138412546;
        v56 = v28;
        v57 = 2112;
        v58 = v29;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Input snapshots do not exist: %@ %@", buf, 0x16u);
      }

      v30 = [v14 firstObject];
      v35 = [v14 lastObject];
      _MBLog();

      v27 = 0;
      goto LABEL_26;
    }
  }

  v27 = 0;
LABEL_27:

LABEL_28:
  objc_autoreleasePoolPop(context);
  if (a8)
  {
    *a8 = v50[5];
  }

  _Block_object_dispose(&v49, 8);

  return v27;
}

- (BOOL)_handleRemoveDomain:(id)a3 domainHmacs:(id)a4 outputSnapshotID:(id)a5 serverSnapshot:(id)a6 operationTracker:(id)a7 error:(id *)a8
{
  v14 = a3;
  v27 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v17)
  {
    __assert_rtn("[MBCKJournal _handleRemoveDomain:domainHmacs:outputSnapshotID:serverSnapshot:operationTracker:error:]", "MBCKJournal.m", 481, "tracker");
  }

  v18 = v17;
  if (!v14)
  {
    v19 = MBGetDefaultLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Input removeDomain snapshot does not exist.", buf, 2u);
LABEL_11:
    _MBLog();
    goto LABEL_12;
  }

  if (!v15)
  {
    v19 = MBGetDefaultLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Merge output snapshotID not specified.", buf, 2u);
    goto LABEL_11;
  }

  v19 = [(MBCKJournal *)self device];
  [v14 setDevice:v19];
  if (!v16)
  {
    v20 = +[MBCKSnapshot snapshotForDevice:reason:type:snapshotFormat:snapshotID:](MBCKSnapshot, "snapshotForDevice:reason:type:snapshotFormat:snapshotID:", v19, [v14 backupReason], objc_msgSend(v14, "type"), objc_msgSend(v14, "snapshotFormat"), v15);
    v22 = [v14 created];
    [v20 setCreated:v22];

    goto LABEL_14;
  }

  if (![v16 fetchManifestsWithOperationTracker:v18 error:{a8, v27}])
  {
LABEL_12:
    v21 = 0;
    goto LABEL_20;
  }

  v20 = v16;
LABEL_14:
  *buf = 0;
  v36 = buf;
  v37 = 0x3032000000;
  v38 = sub_1000882C4;
  v39 = sub_1000882D4;
  v40 = 0;
  [(MBCKJournal *)self _clearSnapshotActionsWithOperationTracker:v18 error:0];
  v23 = [(MBCKModel *)self cache];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100089F58;
  v28[3] = &unk_1003BCD90;
  v28[4] = self;
  v24 = v20;
  v29 = v24;
  v30 = v27;
  v34 = buf;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v25 = [v23 performInTransaction:v28];

  v21 = v25 == 0;
  if (v25)
  {
    if (!*(v36 + 5))
    {
      objc_storeStrong(v36 + 5, v25);
    }

    if (a8)
    {
      *a8 = *(v36 + 5);
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_20:

  return v21;
}

- (BOOL)_handleSnapshotAction:(id)a3 operationTracker:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 stringByReplacingOccurrencesOfString:@"S:" withString:&stru_1003C3430];
  v10 = [v9 stringByReplacingOccurrencesOfString:@":" withString:@"|"];

  v11 = [v10 componentsSeparatedByString:@"|"];
  v12 = [v11 firstObject];
  v13 = [v11 lastObject];
  v14 = [(NSMutableDictionary *)self->_snapshotsByID valueForKey:v13];
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Journal snapshot action: %{public}@", buf, 0xCu);
    v26 = v10;
    _MBLog();
  }

  if (v12 && v13)
  {
    if (v14)
    {
      cachedSnapshotIDs = self->_cachedSnapshotIDs;
      v17 = [v14 snapshotID];
      LODWORD(cachedSnapshotIDs) = [(NSSet *)cachedSnapshotIDs containsObject:v17];

      if (cachedSnapshotIDs)
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v14 snapshotID];
          *buf = 138543618;
          v32 = v19;
          v33 = 2114;
          v34 = v12;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Output snapshot already exists: %{public}@ skipping %{public}@ request", buf, 0x16u);

          v27 = [v14 snapshotID];
          _MBLog();
        }

        v20 = 1;
        goto LABEL_17;
      }
    }

    if (([v12 isEqualToString:{@"merge", v26}] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"mergeBase"))
    {
      v18 = [v11 objectAtIndexedSubscript:1];
      v21 = [v18 componentsSeparatedByString:@", "];
      v20 = -[MBCKJournal _handleMergeAction:outputSnapshotID:serverSnapshot:shouldMergeDeletions:operationTracker:error:](self, "_handleMergeAction:outputSnapshotID:serverSnapshot:shouldMergeDeletions:operationTracker:error:", v21, v13, v14, [v12 isEqualToString:@"merge"], v8, a5);

      goto LABEL_17;
    }

    if ([v12 isEqualToString:@"removeDomain"])
    {
      v18 = [v11 objectAtIndexedSubscript:1];
      v23 = [v18 componentsSeparatedByString:@", "];
      cachedSnapshotsByID = self->_cachedSnapshotsByID;
      v30 = v23;
      v24 = [v23 firstObject];
      v29 = [(NSMutableDictionary *)cachedSnapshotsByID valueForKey:v24];

      v25 = [v30 subarrayWithRange:{1, objc_msgSend(v30, "count") - 1}];
      v20 = [(MBCKJournal *)self _handleRemoveDomain:v29 domainHmacs:v25 outputSnapshotID:v13 serverSnapshot:v14 operationTracker:v8 error:a5];

      goto LABEL_17;
    }

    if ([v12 isEqualToString:@"repair"])
    {
      v20 = 0;
      goto LABEL_18;
    }

    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unrecognized journal entry: %@", buf, 0xCu);
      goto LABEL_12;
    }
  }

  else
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "No action or outputSnapshot specified: %{public}@", buf, 0xCu);
LABEL_12:
      _MBLog();
    }
  }

  v20 = 0;
LABEL_17:

LABEL_18:
  return v20;
}

- (MBCKDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (MBCKEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end