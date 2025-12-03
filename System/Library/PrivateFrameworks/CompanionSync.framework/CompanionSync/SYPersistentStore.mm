@interface SYPersistentStore
+ (BOOL)_tableEmpty:(id)empty db:(sqlite3 *)db;
+ (id)_loadOrCreatePeerIDForDB:(sqlite3 *)b;
+ (id)sharedPersistentStoreForService:(id)service;
- (BOOL)_LOCKED_storeSequenceNumberSet:(id)set forPeerID:(id)d db:(sqlite3 *)db error:(id *)error;
- (BOOL)_inTransaction:(BOOL)transaction do:(id)do;
- (BOOL)_openDBAtPath:(id)path;
- (BOOL)canStartNewSyncSession;
- (BOOL)completedSync;
- (BOOL)currentSyncSendComplete;
- (BOOL)ignoringFullSyncWithID:(id)d;
- (BOOL)inFullSync;
- (BOOL)isPerformingDeltaSync;
- (BOOL)lastSyncFailed;
- (BOOL)logChanges:(id)changes error:(id *)error;
- (BOOL)logSyncCompletionToRemoteVersion:(unint64_t)version;
- (BOOL)objectChanged:(id)changed sinceVersion:(unint64_t)version;
- (BOOL)reassignCurrentSyncID:(id)d;
- (BOOL)sequenceNumberIsDuplicate:(unint64_t)duplicate forPeer:(id)peer;
- (BOOL)setLastSequenceNumber:(unint64_t)number fromPeer:(id)peer error:(id *)error;
- (BOOL)shouldIgnoreMessageID:(id)d;
- (NSDate)lastMessageReceived;
- (NSDate)overflowResyncTime;
- (NSDictionary)fullSyncIDSOptions;
- (NSDictionary)fullSyncUserInfo;
- (NSError)lastSyncError;
- (NSString)currentFullSyncID;
- (NSString)lastSyncEndID;
- (NSString)peerID;
- (NSString)vectorClockJSON;
- (NSString)waitingForSyncEndID;
- (SYPersistentStore)initWithPath:(id)path loggingFacility:(__CFString *)facility changeTrackingEnabled:(BOOL)enabled;
- (SYPersistentStore)initWithSharedDatabase:(id)database;
- (double)durationOfLastFullSync;
- (id)_decodeIndexSet:(id)set;
- (id)_encodeIndexSet:(id)set;
- (id)_sequenceNumberSetForPeerID:(id)d inDB:(sqlite3 *)b;
- (id)dbPath;
- (id)lastDBErrorInfo;
- (int)_getSchemaVersion;
- (unint64_t)_lastSequenceNumberForPeerID_LOCKED:(id)d db:(sqlite3 *)db;
- (unint64_t)_oldestVersion;
- (unint64_t)changeCount;
- (unint64_t)currentLocalVersion;
- (unint64_t)lastSeenRemoteVersion;
- (unint64_t)lastSequenceNumberForPeerID:(id)d;
- (unint64_t)nextSequenceNumber;
- (void)_cacheTTL;
- (void)_convertTimestamps;
- (void)_fixPeerInfo;
- (void)_getSchemaVersion;
- (void)_loadIgnoreList_LOCKED:(sqlite3 *)d;
- (void)_saveIgnoreList_LOCKED:(sqlite3 *)d;
- (void)_setupSharedDB;
- (void)_storeSequenceNumberSet:(id)set forPeerID:(id)d;
- (void)_verifyInTransactionForFullSync;
- (void)_withDB:(id)b;
- (void)addMessageIDsToIgnore:(id)ignore;
- (void)changeTrackingToggled:(BOOL)toggled;
- (void)clearAllChanges;
- (void)dealloc;
- (void)enterFullSyncWithID:(id)d ignoring:(BOOL)ignoring;
- (void)exitFullSyncWithID:(id)d error:(id)error;
- (void)removeMessageIDFromIgnoreList:(id)list;
- (void)resetSequenceNumber:(unint64_t)number;
- (void)resetSequenceNumbersForPeer:(id)peer;
- (void)sendCompletedForSyncWithID:(id)d;
- (void)setCompletedSync:(BOOL)sync;
- (void)setFullSyncIDSOptions:(id)options;
- (void)setFullSyncUserInfo:(id)info;
- (void)setLastMessageReceived:(id)received;
- (void)setOverflowResyncTime:(id)time;
- (void)setPerformingDeltaSync:(BOOL)sync;
- (void)setTimeToLive:(double)live;
- (void)setVectorClockJSON:(id)n;
- (void)setWaitingForSyncEndID:(id)d;
@end

@implementation SYPersistentStore

- (NSString)peerID
{
  peerID = self->_peerID;
  if (!peerID)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __27__SYPersistentStore_peerID__block_invoke;
    v5[3] = &unk_1E86C9ED8;
    v5[4] = self;
    [(SYPersistentStore *)self _withDB:v5];
    peerID = self->_peerID;
  }

  return peerID;
}

+ (id)sharedPersistentStoreForService:(id)service
{
  serviceCopy = service;
  if (sharedPersistentStoreForService__onceToken != -1)
  {
    +[SYPersistentStore sharedPersistentStoreForService:];
  }

  os_unfair_lock_lock(&sharedPersistentStoreForService____mapLock);
  v5 = [sharedPersistentStoreForService____map objectForKey:serviceCopy];
  if (!v5)
  {
    v6 = [_SYSharedServiceDB sharedInstanceForServiceName:serviceCopy];
    v5 = [[self alloc] initWithSharedDatabase:v6];
    [sharedPersistentStoreForService____map setObject:v5 forKey:serviceCopy];
  }

  os_unfair_lock_unlock(&sharedPersistentStoreForService____mapLock);

  return v5;
}

void __53__SYPersistentStore_sharedPersistentStoreForService___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0x10000 valueOptions:5 capacity:2];
  v1 = sharedPersistentStoreForService____map;
  sharedPersistentStoreForService____map = v0;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [v3 addObserverForName:@"SYDeviceTargetedNewDeviceNotification" object:0 queue:0 usingBlock:&__block_literal_global_5];
}

void __53__SYPersistentStore_sharedPersistentStoreForService___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&sharedPersistentStoreForService____mapLock);
  v2 = objc_autoreleasePoolPush();
  [sharedPersistentStoreForService____map removeAllObjects];
  objc_autoreleasePoolPop(v2);
  os_unfair_lock_unlock(&sharedPersistentStoreForService____mapLock);
}

- (SYPersistentStore)initWithSharedDatabase:(id)database
{
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = SYPersistentStore;
  v6 = [(SYPersistentStore *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_changeTrackingEnabled = 1;
    objc_storeStrong(&v6->_sharedDB, database);
    [(SYPersistentStore *)v7 setUnfinishedSyncTimeout:30.0];
    v8 = objc_opt_new();
    peerSeqnoSets = v7->_peerSeqnoSets;
    v7->_peerSeqnoSets = v8;

    [(SYPersistentStore *)v7 _setupSharedDB];
    [(SYPersistentStore *)v7 _prepareStatements];
    v10 = v7;
  }

  return v7;
}

- (SYPersistentStore)initWithPath:(id)path loggingFacility:(__CFString *)facility changeTrackingEnabled:(BOOL)enabled
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = SYPersistentStore;
  v9 = [(SYPersistentStore *)&v20 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  v9->_changeTrackingEnabled = enabled;
  if (facility)
  {
    v9->_loggingFacility = CFRetain(facility);
  }

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("SYPersistentStore.SynqQ", v11);
  syncQ = v10->_syncQ;
  v10->_syncQ = v12;

  stringByStandardizingPath = [pathCopy stringByStandardizingPath];
  v15 = [(SYPersistentStore *)v10 _openDBAtPath:stringByStandardizingPath];

  if (v15)
  {
    [(SYPersistentStore *)v10 setUnfinishedSyncTimeout:30.0];
    v16 = objc_opt_new();
    peerSeqnoSets = v10->_peerSeqnoSets;
    v10->_peerSeqnoSets = v16;

    v18 = v10;
  }

  else
  {
LABEL_6:
    v18 = 0;
  }

  return v18;
}

- (void)dealloc
{
  loggingFacility = self->_loggingFacility;
  if (loggingFacility)
  {
    CFRelease(loggingFacility);
  }

  if (self->_db || self->_sharedDB)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__SYPersistentStore_dealloc__block_invoke;
    v6[3] = &unk_1E86C9ED8;
    v6[4] = self;
    [(SYPersistentStore *)self _withDB:v6];
    db = self->_db;
    if (db)
    {
      sqlite3_close(db);
    }
  }

  v5.receiver = self;
  v5.super_class = SYPersistentStore;
  [(SYPersistentStore *)&v5 dealloc];
}

sqlite3_stmt *__28__SYPersistentStore_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[11];
  if (v3)
  {
    sqlite3_finalize(v3);
    v2 = *(a1 + 32);
  }

  v4 = v2[12];
  if (v4)
  {
    sqlite3_finalize(v4);
    v2 = *(a1 + 32);
  }

  v5 = v2[13];
  if (v5)
  {
    sqlite3_finalize(v5);
    v2 = *(a1 + 32);
  }

  v6 = v2[14];
  if (v6)
  {
    sqlite3_finalize(v6);
    v2 = *(a1 + 32);
  }

  v7 = v2[15];
  if (v7)
  {
    sqlite3_finalize(v7);
    v2 = *(a1 + 32);
  }

  v8 = v2[16];
  if (v8)
  {
    sqlite3_finalize(v8);
    v2 = *(a1 + 32);
  }

  v9 = v2[17];
  if (v9)
  {
    sqlite3_finalize(v9);
    v2 = *(a1 + 32);
  }

  v10 = v2[18];
  if (v10)
  {
    sqlite3_finalize(v10);
    v2 = *(a1 + 32);
  }

  v11 = v2[19];
  if (v11)
  {
    sqlite3_finalize(v11);
    v2 = *(a1 + 32);
  }

  v12 = v2[20];
  if (v12)
  {
    sqlite3_finalize(v12);
    v2 = *(a1 + 32);
  }

  v13 = v2[21];
  if (v13)
  {
    sqlite3_finalize(v13);
    v2 = *(a1 + 32);
  }

  v14 = v2[22];
  if (v14)
  {
    sqlite3_finalize(v14);
    v2 = *(a1 + 32);
  }

  v15 = v2[23];
  if (v15)
  {
    sqlite3_finalize(v15);
    v2 = *(a1 + 32);
  }

  v16 = v2[24];
  if (v16)
  {
    sqlite3_finalize(v16);
    v2 = *(a1 + 32);
  }

  v17 = v2[25];
  if (v17)
  {
    sqlite3_finalize(v17);
    v2 = *(a1 + 32);
  }

  v18 = v2[26];
  if (v18)
  {
    sqlite3_finalize(v18);
    v2 = *(a1 + 32);
  }

  v19 = v2[27];
  if (v19)
  {
    sqlite3_finalize(v19);
    v2 = *(a1 + 32);
  }

  v20 = v2[28];
  if (v20)
  {
    sqlite3_finalize(v20);
    v2 = *(a1 + 32);
  }

  v21 = v2[29];
  if (v21)
  {
    sqlite3_finalize(v21);
    v2 = *(a1 + 32);
  }

  v22 = v2[30];
  if (v22)
  {
    sqlite3_finalize(v22);
    v2 = *(a1 + 32);
  }

  v23 = v2[31];
  if (v23)
  {
    sqlite3_finalize(v23);
    v2 = *(a1 + 32);
  }

  v24 = v2[32];
  if (v24)
  {
    sqlite3_finalize(v24);
    v2 = *(a1 + 32);
  }

  v25 = v2[33];
  if (v25)
  {
    sqlite3_finalize(v25);
    v2 = *(a1 + 32);
  }

  v26 = v2[34];
  if (v26)
  {
    sqlite3_finalize(v26);
    v2 = *(a1 + 32);
  }

  v27 = v2[35];
  if (v27)
  {
    sqlite3_finalize(v27);
    v2 = *(a1 + 32);
  }

  v28 = v2[36];
  if (v28)
  {
    sqlite3_finalize(v28);
    v2 = *(a1 + 32);
  }

  v29 = v2[38];
  if (v29)
  {
    sqlite3_finalize(v29);
    v2 = *(a1 + 32);
  }

  v30 = v2[37];
  if (v30)
  {
    sqlite3_finalize(v30);
    v2 = *(a1 + 32);
  }

  v31 = v2[40];
  if (v31)
  {
    sqlite3_finalize(v31);
    v2 = *(a1 + 32);
  }

  result = v2[39];
  if (result)
  {

    return sqlite3_finalize(result);
  }

  return result;
}

+ (BOOL)_tableEmpty:(id)empty db:(sqlite3 *)db
{
  emptyCopy = empty;
  ppStmt = 0;
  emptyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT COUNT(*) FROM %@", emptyCopy];
  uTF8String = [emptyCopy UTF8String];
  v8 = strlen(uTF8String);
  v9 = sqlite3_prepare_v2(db, uTF8String, v8, &ppStmt, 0);
  if (v9)
  {
    v10 = v9;
    if (v9 != 1)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [SYPersistentStore _tableEmpty:emptyCopy db:?];
      }

      v10 = 1;
    }
  }

  else
  {
    v11 = sqlite3_step(ppStmt);
    v10 = 1;
    if (v11 && v11 != 101)
    {
      if (v11 == 100)
      {
        v10 = sqlite3_column_int(ppStmt, 0) == 0;
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          [SYPersistentStore _tableEmpty:emptyCopy db:?];
        }

        v10 = 1;
      }
    }

    sqlite3_finalize(ppStmt);
  }

  return v10;
}

+ (id)_loadOrCreatePeerIDForDB:(sqlite3 *)b
{
  if ([self _tableEmpty:@"syncstate" db:b])
  {
    v4 = objc_opt_new();
    uUIDString = [v4 UUIDString];

    ExecuteSQL_0(b, "INSERT INTO syncstate (remoteversion, tstamp, peer_id) VALUES (0, datetime('now'), '%s')", [uUIDString UTF8String]);
  }

  else
  {
    ppStmt = 0;
    sqlite3_prepare_v2(b, "SELECT peer_id FROM syncstate LIMIT 1", 37, &ppStmt, 0);
    sqlite3_step(ppStmt);
    uUIDString = ReadString(ppStmt);
    sqlite3_reset(ppStmt);
    sqlite3_finalize(ppStmt);
    if (![uUIDString length])
    {
      v6 = objc_opt_new();
      uUIDString2 = [v6 UUIDString];

      ExecuteSQL_0(b, "UPDATE syncstate SET peer_id='%s'", [uUIDString2 UTF8String]);
      uUIDString = uUIDString2;
    }
  }

  return uUIDString;
}

- (int)_getSchemaVersion
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(self->_db, "SELECT COUNT(*) FROM meta", 25, &ppStmt, 0);
  if (v2)
  {
    if (v2 != 1)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [SYPersistentStore _getSchemaVersion];
      }
    }

    return 0;
  }

  else
  {
    v4 = sqlite3_step(ppStmt);
    v3 = 0;
    if (v4 && v4 != 101)
    {
      if (v4 == 100)
      {
        v3 = sqlite3_column_int(ppStmt, 0);
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          [SYPersistentStore _getSchemaVersion];
        }

        v3 = 0;
      }
    }

    sqlite3_finalize(ppStmt);
  }

  return v3;
}

- (BOOL)_openDBAtPath:(id)path
{
  v26[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager fileExistsAtPath:pathCopy];

  if ((v7 & 1) == 0)
  {
    v8 = *MEMORY[0x1E696A328];
    v25[0] = *MEMORY[0x1E696A360];
    v25[1] = v8;
    v26[0] = @"mobile";
    v26[1] = @"mobile";
    v25[2] = *MEMORY[0x1E696A370];
    v26[2] = &unk_1F5AE26B0;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v9 error:0];
  }

  if (!sqlite3_open_v2([pathCopy fileSystemRepresentation], &self->_db, 4194310, 0) && self->_db)
  {
    v13 = [pathCopy copy];
    path = self->_path;
    self->_path = v13;

    ExecuteSQL_0(self->_db, "PRAGMA journal_mode=WAL;");
    sqlite3_busy_timeout(self->_db, 60000);
    sqlite3_extended_result_codes(self->_db, 1);
    sqlite3_wal_checkpoint_v2(self->_db, 0, 3, 0, 0);
    _getSchemaVersion = [(SYPersistentStore *)self _getSchemaVersion];
    v16 = _getSchemaVersion;
    v17 = _getSchemaVersion - 1;
    if (_getSchemaVersion > 5)
    {
      if (_getSchemaVersion > 8)
      {
        if (_getSchemaVersion != 9)
        {
          if (_getSchemaVersion != 10)
          {
            if (_getSchemaVersion != 11)
            {
LABEL_56:
              v20 = [SYPersistentStore _loadOrCreatePeerIDForDB:self->_db];
              peerID = self->_peerID;
              self->_peerID = v20;

              if (v17 <= 1)
              {
                [(SYPersistentStore *)self _convertTimestamps];
              }

              [(SYPersistentStore *)self _fixPeerInfo];
              [(SYPersistentStore *)self _prepareStatements];
              v12 = 1;
              goto LABEL_59;
            }

            db = self->_db;
            goto LABEL_41;
          }

LABEL_39:
          ExecuteSQL_0(self->_db, "ALTER TABLE syncstate ADD COLUMN in_delta_sync INTEGER DEFAULT 0");
          ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
          if (!v16)
          {
LABEL_55:
            ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
            goto LABEL_56;
          }

          db = self->_db;
          if (v16 <= 3)
          {
LABEL_54:
            ExecuteSQL_0(db, "UPDATE syncstate SET fullsync_sent=1");
            goto LABEL_55;
          }

LABEL_41:
          pStmt = 0;
          if (sqlite3_prepare_v2(db, "SELECT COUNT(*) FROM peer_info WHERE last_seqno IS NOT NULL AND last_seqno > 0", -1, &pStmt, 0))
          {
            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
            {
              __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
            }
          }

          else if (sqlite3_step(pStmt) == 100)
          {
            v19 = sqlite3_column_int(pStmt, 0);
            sqlite3_reset(pStmt);
            sqlite3_finalize(pStmt);
            if (v19 <= 0)
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
            {
              __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
            }

            sqlite3_reset(pStmt);
            sqlite3_finalize(pStmt);
          }

          goto LABEL_54;
        }

LABEL_38:
        ExecuteSQL_0(self->_db, "ALTER TABLE syncstate ADD COLUMN last_message_time REAL DEFAULT NIL");
        ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
        goto LABEL_39;
      }

      if (_getSchemaVersion != 6)
      {
        if (_getSchemaVersion != 7)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

LABEL_35:
      ExecuteSQL_0(self->_db, "ALTER TABLE full_sync_info ADD COLUMN send_complete INTEGER DEFAULT 0");
      ExecuteSQL_0(self->_db, "ALTER TABLE full_sync_info ADD COLUMN failed INTEGER DEFAULT 0");
      ExecuteSQL_0(self->_db, "ALTER TABLE full_sync_info ADD COLUMN error BLOB");
      ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
LABEL_36:
      ExecuteSQL_0(self->_db, "ALTER TABLE peer_info ADD COLUMN seqno_set TEXT DEFAULT NIL");
      ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
LABEL_37:
      ExecuteSQL_0(self->_db, "ALTER TABLE syncstate ADD COLUMN overflow_timeout REAL DEFAULT NIL");
      ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
      goto LABEL_38;
    }

    if (_getSchemaVersion > 2)
    {
      if (_getSchemaVersion != 3)
      {
        if (_getSchemaVersion != 4)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_32:
      ExecuteSQL_0(self->_db, "ALTER TABLE syncstate ADD COLUMN msg_seqno INTEGER DEFAULT 0");
      ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
LABEL_33:
      ExecuteSQL_0(self->_db, "CREATE TABLE IF NOT EXISTS peer_info (peerID TEXT, last_seqno INTEGER, tstamp REAL)");
      ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
LABEL_34:
      ExecuteSQL_0(self->_db, "CREATE TABLE IF NOT EXISTS full_sync_info (syncID TEXT, active INTEGER DEFAULT 1, time_started REAL, time_ended REAL, duration REAL)");
      ExecuteSQL_0(self->_db, "ALTER TABLE syncstate ADD COLUMN waiting_for_sync_id TEXT");
      ExecuteSQL_0(self->_db, "ALTER TABLE syncstate ADD COLUMN sync_user_info BLOB");
      ExecuteSQL_0(self->_db, "ALTER TABLE syncstate ADD COLUMN sync_ids_options BLOB");
      ExecuteSQL_0(self->_db, "CREATE INDEX sync_by_uuid ON full_sync_info (syncID ASC, active)");
      ExecuteSQL_0(self->_db, "CREATE INDEX sync_by_start_time ON full_sync_info (time_started ASC, time_ended, syncID)");
      ExecuteSQL_0(self->_db, "CREATE INDEX sync_by_duration ON full_sync_info (duration ASC, syncID, time_started, time_ended)");
      ExecuteSQL_0(self->_db, "CREATE INDEX changes_by_time ON changes (tstamp ASC, version)");
      ExecuteSQL_0(self->_db, "CREATE INDEX changes_by_syncid ON changes (syncid ASC, tstamp ASC, version)");
      ExecuteSQL_0(self->_db, "CREATE TRIGGER remove_prior_changes BEFORE INSERT ON changes BEGIN DELETE FROM changes WHERE syncid = new.syncid; END");
      ExecuteSQL_0(self->_db, "CREATE TRIGGER remove_old_syncs BEFORE INSERT ON full_sync_info BEGIN DELETE FROM full_sync_info WHERE syncID NOT IN (SELECT syncID FROM full_sync_info ORDER BY syncID DESC LIMIT 1) AND active=0; END");
      ExecuteSQL_0(self->_db, "CREATE TRIGGER compute_duration AFTER UPDATE OF time_ended ON full_sync_info BEGIN UPDATE full_sync_info SET duration = new.time_ended - old.time_started WHERE syncID = old.syncID; END");
      ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
      goto LABEL_35;
    }

    if (_getSchemaVersion)
    {
      if (_getSchemaVersion != 1)
      {
        if (_getSchemaVersion != 2)
        {
          goto LABEL_56;
        }

        goto LABEL_31;
      }
    }

    else
    {
      ExecuteSQL_0(self->_db, "CREATE TABLE IF NOT EXISTS meta (version INTEGER PRIMARY KEY AUTOINCREMENT, tstamp REAL)");
      ExecuteSQL_0(self->_db, "CREATE TABLE IF NOT EXISTS syncstate (remoteversion INTEGER, tstamp INTEGER, fullsync_sent INTEGER DEFAULT 0, in_full_sync INTEGER DEFAULT 0, ttl INTEGER DEFAULT 1209600)");
      ExecuteSQL_0(self->_db, "CREATE TABLE IF NOT EXISTS changes (version INTEGER PRIMARY KEY AUTOINCREMENT, tstamp INTEGER, type INTEGER, syncid TEXT, object BLOB)");
      ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
    }

    ExecuteSQL_0(self->_db, "ALTER TABLE syncstate ADD COLUMN vector_clock TEXT DEFAULT ''");
    ExecuteSQL_0(self->_db, "ALTER TABLE syncstate ADD COLUMN peer_id TEXT DEFAULT ''");
    ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
LABEL_31:
    ExecuteSQL_0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
    goto LABEL_32;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    [SYPersistentStore _openDBAtPath:pathCopy];
  }

  v11 = self->_db;
  if (v11)
  {
    sqlite3_close(v11);
    v12 = 0;
    self->_db = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_59:

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __27__SYPersistentStore_peerID__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [SYPersistentStore _loadOrCreatePeerIDForDB:a2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (void)_setupSharedDB
{
  objc_initWeak(&location, self);
  sharedDB = self->_sharedDB;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__SYPersistentStore__setupSharedDB__block_invoke;
  v6[3] = &unk_1E86CAC18;
  objc_copyWeak(&v7, &location);
  [(_SYSharedServiceDB *)sharedDB updateSchemaForClient:v5 usingBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __35__SYPersistentStore__setupSharedDB__block_invoke(uint64_t a1, sqlite3 *a2, uint64_t a3)
{
  if (a3 != 1)
  {
    v5 = a3;
    if (a3)
    {
      goto LABEL_5;
    }

    ExecuteSQL_0(a2, "CREATE TABLE IF NOT EXISTS syncstate (remoteversion INTEGER, tstamp INTEGER, fullsync_sent INTEGER DEFAULT 0, in_full_sync INTEGER DEFAULT 0, ttl INTEGER DEFAULT 86400, vector_clock TEXT DEFAULT '', peer_id TEXT DEFAULT '', msg_seqno INTEGER DEFAULT 0, waiting_for_sync_id TEXT, sync_user_info BLOB, sync_ids_options BLOB, overflow_timeout REAL DEFAULT NIL, last_message_time REAL DEFAULT NIL, in_delta_sync INTEGER DEFAULT 0)");
    ExecuteSQL_0(a2, "CREATE TABLE IF NOT EXISTS changes (version INTEGER PRIMARY KEY AUTOINCREMENT, tstamp INTEGER, type INTEGER, syncid TEXT, object BLOB)");
    ExecuteSQL_0(a2, "CREATE TABLE IF NOT EXISTS peer_info (peerID TEXT, last_seqno INTEGER, tstamp REAL, seqno_set TEXT DEFAULT NIL)");
    ExecuteSQL_0(a2, "CREATE TABLE IF NOT EXISTS full_sync_info (syncID TEXT, active INTEGER DEFAULT 1, time_started REAL, time_ended REAL, duration REAL, send_complete INTEGER DEFAULT 0, failed INTEGER DEFAULT 0, error BLOB)");
    ExecuteSQL_0(a2, "CREATE INDEX sync_by_uuid ON full_sync_info (syncID ASC, active)");
    ExecuteSQL_0(a2, "CREATE INDEX sync_by_start_time ON full_sync_info (time_started ASC, time_ended, syncID)");
    ExecuteSQL_0(a2, "CREATE INDEX sync_by_duration ON full_sync_info (duration ASC, syncID, time_started, time_ended)");
    ExecuteSQL_0(a2, "CREATE INDEX changes_by_time ON changes (tstamp ASC, version)");
    ExecuteSQL_0(a2, "CREATE INDEX changes_by_syncid ON changes (syncid ASC, tstamp ASC, version)");
    ExecuteSQL_0(a2, "CREATE TRIGGER remove_prior_changes BEFORE INSERT ON changes BEGIN DELETE FROM changes WHERE syncid = new.syncid; END");
    ExecuteSQL_0(a2, "CREATE TRIGGER remove_old_syncs BEFORE INSERT ON full_sync_info BEGIN DELETE FROM full_sync_info WHERE syncID NOT IN (SELECT syncID FROM full_sync_info ORDER BY syncID DESC LIMIT 1) AND active=0; END");
    ExecuteSQL_0(a2, "CREATE TRIGGER compute_duration AFTER UPDATE OF time_ended ON full_sync_info BEGIN UPDATE full_sync_info SET duration = new.time_ended - old.time_started WHERE syncID = old.syncID; END");
  }

  ExecuteSQL_0(a2, "ALTER TABLE syncstate ADD COLUMN ignored_message_id_set TEXT DEFAULT ''");
  v5 = 2;
LABEL_5:
  v6 = [SYPersistentStore _loadOrCreatePeerIDForDB:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 6, v6);
  }

  return v5;
}

- (void)_convertTimestamps
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Failed to update timestamp format: %{companionsync:sqlite3err}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_withDB:(id)b
{
  bCopy = b;
  sharedDB = self->_sharedDB;
  if (sharedDB)
  {
    [(_SYSharedServiceDB *)sharedDB withDBRef:bCopy];
  }

  else
  {
    v6 = os_transaction_create();
    syncQ = self->_syncQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__SYPersistentStore__withDB___block_invoke;
    block[3] = &unk_1E86CA950;
    v10 = v6;
    v11 = bCopy;
    block[4] = self;
    v8 = v6;
    dispatch_sync(syncQ, block);
  }
}

- (BOOL)_inTransaction:(BOOL)transaction do:(id)do
{
  transactionCopy = transaction;
  doCopy = do;
  sharedDB = self->_sharedDB;
  if (sharedDB)
  {
    if (transactionCopy)
    {
      v8 = [(_SYSharedServiceDB *)sharedDB inExclusiveTransaction:doCopy];
    }

    else
    {
      v8 = [(_SYSharedServiceDB *)sharedDB inTransaction:doCopy];
    }

    v12 = v8;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v9 = os_transaction_create();
    syncQ = self->_syncQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__SYPersistentStore__inTransaction_do___block_invoke;
    block[3] = &unk_1E86CAC40;
    v18 = transactionCopy;
    block[4] = self;
    v17 = &v19;
    v15 = v9;
    v16 = doCopy;
    v11 = v9;
    dispatch_sync(syncQ, block);
    v12 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  return v12 & 1;
}

void __39__SYPersistentStore__inTransaction_do___block_invoke(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  v4 = *(*(a1 + 32) + 80);
  if (v2)
  {
    v5 = ExecuteSQL_0(v4, "BEGIN TRANSACTION");
  }

  else
  {
    v5 = ExecuteSQL_0(v4, "BEGIN EXCLUSIVE TRANSACTION");
  }

  if (v5)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __39__SYPersistentStore__inTransaction_do___block_invoke_cold_2(v3);
    }
  }

  else
  {
    v6 = *(*(a1 + 32) + 80);
    *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 48) + 16))();
    if (*(*(*(a1 + 56) + 8) + 24) == 1 && ExecuteSQL_0(*(*(a1 + 32) + 80), "COMMIT TRANSACTION"))
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __39__SYPersistentStore__inTransaction_do___block_invoke_cold_4(v3);
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && ExecuteSQL_0(*(*(a1 + 32) + 80), "ROLLBACK TRANSACTION"))
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __39__SYPersistentStore__inTransaction_do___block_invoke_cold_6(v3);
      }
    }
  }
}

- (void)_fixPeerInfo
{
  if (![(SYPersistentStore *)self _inTransaction:0 do:&__block_literal_global_76])
  {

    [(SYPersistentStore *)self _withDB:&__block_literal_global_82];
  }
}

uint64_t __33__SYPersistentStore__fixPeerInfo__block_invoke(int a1, sqlite3 *db)
{
  v24 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  if (!sqlite3_prepare_v2(db, "SELECT DISTINCT peerID FROM peer_info", -1, &ppStmt, 0))
  {
    v4 = objc_opt_new();
    while (1)
    {
      v5 = sqlite3_step(ppStmt);
      if (v5 != 100)
      {
        break;
      }

      v6 = ReadString(ppStmt);
      if (v6)
      {
        [v4 addObject:v6];
      }
    }

    v7 = v5;
    sqlite3_reset(ppStmt);
    sqlite3_finalize(ppStmt);
    ppStmt = 0;
    if (!v7 || v7 == 101)
    {
      if ([v4 count])
      {
        if (sqlite3_prepare_v2(db, "DELETE FROM peer_info WHERE peerID=? AND last_seqno < (SELECT max(last_seqno) FROM peer_info WHERE peerID=?)", -1, &ppStmt, 0))
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          if (!os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = v4;
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
LABEL_27:
          v12 = 0;
          while (1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            BindString_0(ppStmt, 1, v13);
            BindString_0(ppStmt, 2, v13);
            v14 = sqlite3_step(ppStmt);
            sqlite3_reset(ppStmt);
            sqlite3_clear_bindings(ppStmt);
            if (v14 != 101 && v14 != 0)
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
              if (v10)
              {
                goto LABEL_27;
              }

              break;
            }
          }

          sqlite3_finalize(ppStmt);
          v3 = 1;
          if (!v14 || v14 == 101)
          {
            goto LABEL_45;
          }

          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
          }

          goto LABEL_24;
        }

        sqlite3_finalize(ppStmt);
      }

      v3 = 1;
      goto LABEL_45;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (!os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

LABEL_23:
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
LABEL_24:
    v3 = 0;
LABEL_45:

    goto LABEL_46;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }

  v3 = 0;
LABEL_46:
  v16 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)_encodeIndexSet:(id)set
{
  setCopy = set;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__SYPersistentStore__encodeIndexSet___block_invoke;
  v8[3] = &unk_1E86CAC88;
  v9 = v4;
  v5 = v4;
  [setCopy enumerateRangesUsingBlock:v8];

  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

void __37__SYPersistentStore__encodeIndexSet___block_invoke(uint64_t a1, NSRange range)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromRange(range);
  [v2 addObject:v3];
}

- (id)_decodeIndexSet:(id)set
{
  v19 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v4 = objc_opt_new();
  if ([setCopy length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [setCopy componentsSeparatedByString:{@", ", 0}];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([(NSString *)v10 length])
          {
            v11 = NSRangeFromString(v10);
            [v4 addIndexesInRange:{v11.location, v11.length}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_sequenceNumberSetForPeerID:(id)d inDB:(sqlite3 *)b
{
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_peerSeqnoSets objectForKeyedSubscript:dCopy];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = objc_opt_new();
    ppStmt = 0;
    if (sqlite3_prepare_v2(b, "SELECT seqno_set FROM peer_info WHERE peerID=?", -1, &ppStmt, 0))
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    else
    {
      BindString_0(ppStmt, 1, dCopy);
      if (sqlite3_step(ppStmt) == 100)
      {
        v10 = ReadString(ppStmt);
        v11 = [(SYPersistentStore *)self _decodeIndexSet:v10];
        [v9 addIndexes:v11];
      }

      sqlite3_finalize(ppStmt);
      [(NSMutableDictionary *)self->_peerSeqnoSets setObject:v9 forKeyedSubscript:dCopy];
    }

    v8 = v9;
  }

  v12 = v8;

  return v12;
}

- (BOOL)_LOCKED_storeSequenceNumberSet:(id)set forPeerID:(id)d db:(sqlite3 *)db error:(id *)error
{
  setCopy = set;
  dCopy = d;
  p_setPeerSeqNoSet = &self->_setPeerSeqNoSet;
  if (!self->_setPeerSeqNoSet && sqlite3_prepare_v2(db, "UPDATE peer_info SET seqno_set=? WHERE peerID=?", -1, &self->_setPeerSeqNoSet, 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }

    v14 = 0;
    goto LABEL_19;
  }

  if (setCopy)
  {
    v13 = [(SYPersistentStore *)self _encodeIndexSet:setCopy];
  }

  else
  {
    v13 = &stru_1F5ACC660;
  }

  v14 = 1;
  BindString_0(*p_setPeerSeqNoSet, 1, v13);
  BindString_0(*p_setPeerSeqNoSet, 2, dCopy);
  v15 = sqlite3_step(*p_setPeerSeqNoSet);
  if ((v15 - 100) >= 2 && v15 != 0)
  {
    v18 = v15;
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      if (error)
      {
        goto LABEL_24;
      }
    }

    else if (error)
    {
LABEL_24:
      NSErrorFromSQLiteError(v18);
      *error = v14 = 0;
      goto LABEL_16;
    }

    v14 = 0;
  }

LABEL_16:
  sqlite3_reset(*p_setPeerSeqNoSet);
  sqlite3_clear_bindings(*p_setPeerSeqNoSet);
  if (!setCopy)
  {
    [(NSMutableDictionary *)self->_peerSeqnoSets removeObjectForKey:dCopy];
  }

LABEL_19:
  return v14;
}

- (void)_storeSequenceNumberSet:(id)set forPeerID:(id)d
{
  setCopy = set;
  dCopy = d;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__SYPersistentStore__storeSequenceNumberSet_forPeerID___block_invoke;
  v10[3] = &unk_1E86CACB0;
  v10[4] = self;
  v11 = setCopy;
  v12 = dCopy;
  v8 = dCopy;
  v9 = setCopy;
  [(SYPersistentStore *)self _withDB:v10];
}

- (void)_cacheTTL
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __30__SYPersistentStore__cacheTTL__block_invoke;
  v2[3] = &unk_1E86C9ED8;
  v2[4] = self;
  [(SYPersistentStore *)self _withDB:v2];
}

uint64_t __30__SYPersistentStore__cacheTTL__block_invoke(uint64_t a1, sqlite3 *db)
{
  ppStmt = 0;
  sqlite3_prepare_v2(db, "SELECT MAX(ttl) FROM syncstate", 30, &ppStmt, 0);
  if (sqlite3_step(ppStmt) == 100)
  {
    *(*(a1 + 32) + 24) = sqlite3_column_int(ppStmt, 0);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 24) == 0.0)
  {
    *(v3 + 24) = 0x4132750000000000;
  }

  return sqlite3_finalize(ppStmt);
}

- (void)resetSequenceNumber:(unint64_t)number
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__SYPersistentStore_resetSequenceNumber___block_invoke;
  v3[3] = &__block_descriptor_40_e18_v16__0__sqlite3__8l;
  v3[4] = number;
  [(SYPersistentStore *)self _withDB:v3];
}

void __41__SYPersistentStore_resetSequenceNumber___block_invoke(uint64_t a1, sqlite3 *a2)
{
  if (ExecuteSQL_0(a2, "UPDATE syncstate SET msg_seqno=%llu", *(a1 + 32)))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }
}

- (unint64_t)nextSequenceNumber
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SYPersistentStore_nextSequenceNumber__block_invoke;
  v7[3] = &unk_1E86C9F28;
  v7[4] = &v8;
  [(SYPersistentStore *)self _withDB:v7];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73430;
  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_INFO))
  {
    v3 = v9[3];
    *buf = 134217984;
    v13 = v3;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Returning next sequence number: %llu", buf, 0xCu);
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __39__SYPersistentStore_nextSequenceNumber__block_invoke(uint64_t a1, sqlite3 *a2)
{
  result = ExecuteSQL_0(a2, "UPDATE syncstate SET msg_seqno=(msg_seqno+1)");
  if (!result)
  {
    ppStmt = 0;
    result = sqlite3_prepare_v2(a2, "SELECT msg_seqno FROM syncstate LIMIT 1", -1, &ppStmt, 0);
    if (!result)
    {
      if ((sqlite3_step(ppStmt) & 0xFFFFFFFE) == 0x64)
      {
        *(*(*(a1 + 32) + 8) + 24) = sqlite3_column_int64(ppStmt, 0);
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          __39__SYPersistentStore_nextSequenceNumber__block_invoke_cold_2();
        }
      }

      return sqlite3_finalize(ppStmt);
    }
  }

  return result;
}

- (BOOL)setLastSequenceNumber:(unint64_t)number fromPeer:(id)peer error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  v9 = peerCopy;
  if (number)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__7;
    v24 = __Block_byref_object_dispose__7;
    v25 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__SYPersistentStore_setLastSequenceNumber_fromPeer_error___block_invoke;
    v15[3] = &unk_1E86CACF8;
    v15[4] = self;
    v16 = peerCopy;
    v17 = &v20;
    v18 = &v26;
    numberCopy = number;
    [(SYPersistentStore *)self _withDB:v15];
    if (error)
    {
      v10 = v21[5];
      if (v10)
      {
        *error = v10;
      }
    }

    LOBYTE(error) = *(v27 + 24);

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      [SYPersistentStore setLastSequenceNumber:fromPeer:error:];
    }

    if (error)
    {
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E696A578];
      v31[0] = @"Cannot store sequence number == 0; that value is invalid";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      *error = [v11 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];

      LOBYTE(error) = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return error & 1;
}

void __58__SYPersistentStore_setLastSequenceNumber_fromPeer_error___block_invoke(uint64_t a1, sqlite3 *db)
{
  v4 = *(a1 + 32);
  if (v4[23])
  {
LABEL_2:
    v5 = [v4 _sequenceNumberSetForPeerID:*(a1 + 40) inDB:db];
    [v5 addIndex:*(a1 + 64)];
    if ([*(a1 + 32) _lastSequenceNumberForPeerID_LOCKED:*(a1 + 40) db:db])
    {
      sqlite3_bind_int64(*(*(a1 + 32) + 184), 1, *(a1 + 64));
      v6 = *(*(a1 + 32) + 184);
      Current = CFAbsoluteTimeGetCurrent();
      sqlite3_bind_double(v6, 2, Current + *MEMORY[0x1E695E468]);
      BindString_0(*(*(a1 + 32) + 184), 3, *(a1 + 40));
      v8 = sqlite3_step(*(*(a1 + 32) + 184));
      if (v8)
      {
        v9 = v8;
        if (v8 != 101)
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            __58__SYPersistentStore_setLastSequenceNumber_fromPeer_error___block_invoke_cold_4();
          }

          v10 = NSErrorFromSQLiteError(v9);
          v11 = *(*(a1 + 48) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;

          *(*(*(a1 + 56) + 8) + 24) = 0;
        }
      }

      sqlite3_reset(*(*(a1 + 32) + 184));
      sqlite3_clear_bindings(*(*(a1 + 32) + 184));
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      obj = 0;
      v15 = [v13 _LOCKED_storeSequenceNumberSet:v5 forPeerID:v14 db:db error:&obj];
      v16 = obj;
    }

    else
    {
      ppStmt = 0;
      v17 = sqlite3_prepare_v2(db, "INSERT INTO peer_info (peerID, last_seqno, tstamp) VALUES (?, ?, ?)", -1, &ppStmt, 0);
      if (v17)
      {
        v18 = v17;
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          __58__SYPersistentStore_setLastSequenceNumber_fromPeer_error___block_invoke_cold_6();
        }

        v19 = NSErrorFromSQLiteError(v18);
        v20 = *(*(a1 + 48) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        *(*(*(a1 + 56) + 8) + 24) = 0;
        goto LABEL_23;
      }

      BindString_0(ppStmt, 1, *(a1 + 40));
      sqlite3_bind_int64(ppStmt, 2, *(a1 + 64));
      v22 = ppStmt;
      v23 = CFAbsoluteTimeGetCurrent();
      sqlite3_bind_double(v22, 3, v23 + *MEMORY[0x1E695E468]);
      v24 = sqlite3_step(ppStmt);
      sqlite3_finalize(ppStmt);
      if (v24 && v24 != 101)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          __58__SYPersistentStore_setLastSequenceNumber_fromPeer_error___block_invoke_cold_8();
        }

        v25 = NSErrorFromSQLiteError(v24);
        v26 = *(*(a1 + 48) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        *(*(*(a1 + 56) + 8) + 24) = 0;
      }

      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      v31 = 0;
      v15 = [v28 _LOCKED_storeSequenceNumberSet:v5 forPeerID:v29 db:db error:&v31];
      v16 = v31;
    }

    *(*(*(a1 + 56) + 8) + 24) = v15;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v16);
LABEL_23:

    return;
  }

  if (!sqlite3_prepare_v2(db, "UPDATE peer_info SET last_seqno=?, tstamp=? WHERE peerID=?", -1, v4 + 23, 0))
  {
    v4 = *(a1 + 32);
    goto LABEL_2;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (unint64_t)_lastSequenceNumberForPeerID_LOCKED:(id)d db:(sqlite3 *)db
{
  dCopy = d;
  if (self->_db)
  {
    dispatch_assert_queue_V2(self->_syncQ);
  }

  getPeerSeqNo = self->_getPeerSeqNo;
  p_getPeerSeqNo = &self->_getPeerSeqNo;
  v7 = getPeerSeqNo;
  if (getPeerSeqNo)
  {
LABEL_4:
    BindString_0(v7, 1, dCopy);
    v10 = sqlite3_step(*p_getPeerSeqNo);
    if (v10 == 101)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v12 = qword_1EDE73430;
      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "No peer seqno recorded, returning special value zero", v14, 2u);
      }
    }

    else
    {
      if (v10 == 100)
      {
        v11 = sqlite3_column_int64(*p_getPeerSeqNo, 0);
LABEL_22:
        sqlite3_reset(*p_getPeerSeqNo);
        goto LABEL_23;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [SYPersistentStore _lastSequenceNumberForPeerID_LOCKED:db:];
      }
    }

    v11 = 0;
    goto LABEL_22;
  }

  if (!sqlite3_prepare_v2(db, "SELECT last_seqno FROM peer_info WHERE peerID=?", -1, p_getPeerSeqNo, 0))
  {
    v7 = *p_getPeerSeqNo;
    goto LABEL_4;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }

  v11 = 0;
LABEL_23:

  return v11;
}

- (unint64_t)lastSequenceNumberForPeerID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SYPersistentStore_lastSequenceNumberForPeerID___block_invoke;
  v8[3] = &unk_1E86CAD20;
  v10 = &v11;
  v8[4] = self;
  v5 = dCopy;
  v9 = v5;
  [(SYPersistentStore *)self _withDB:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __49__SYPersistentStore_lastSequenceNumberForPeerID___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _lastSequenceNumberForPeerID_LOCKED:*(a1 + 40) db:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)sequenceNumberIsDuplicate:(unint64_t)duplicate forPeer:(id)peer
{
  peerCopy = peer;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SYPersistentStore_sequenceNumberIsDuplicate_forPeer___block_invoke;
  v9[3] = &unk_1E86CAD48;
  v9[4] = self;
  v7 = peerCopy;
  v11 = &v13;
  duplicateCopy = duplicate;
  v10 = v7;
  [(SYPersistentStore *)self _withDB:v9];
  LOBYTE(duplicate) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return duplicate;
}

void __55__SYPersistentStore_sequenceNumberIsDuplicate_forPeer___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _sequenceNumberSetForPeerID:*(a1 + 40) inDB:a2];
  if ([v3 containsIndex:*(a1 + 56)])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)resetSequenceNumbersForPeer:(id)peer
{
  peerCopy = peer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SYPersistentStore_resetSequenceNumbersForPeer___block_invoke;
  v6[3] = &unk_1E86C9ED8;
  v7 = peerCopy;
  v5 = peerCopy;
  [(SYPersistentStore *)self _withDB:v6];
}

- (BOOL)isPerformingDeltaSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__SYPersistentStore_isPerformingDeltaSync__block_invoke;
  v4[3] = &unk_1E86C9F28;
  v4[4] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __42__SYPersistentStore_isPerformingDeltaSync__block_invoke(uint64_t a1, sqlite3 *db)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(db, "SELECT in_delta_sync FROM syncstate LIMIT 1", -1, &ppStmt, 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  else
  {
    v3 = sqlite3_step(ppStmt);
    if (v3 != 101)
    {
      if (v3 == 100)
      {
        *(*(*(a1 + 32) + 8) + 24) = sqlite3_column_int(ppStmt, 0) != 0;
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
        }
      }
    }

    sqlite3_reset(ppStmt);
    sqlite3_finalize(ppStmt);
  }
}

- (void)setPerformingDeltaSync:(BOOL)sync
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__SYPersistentStore_setPerformingDeltaSync___block_invoke;
  v3[3] = &__block_descriptor_33_e18_v16__0__sqlite3__8l;
  syncCopy = sync;
  [(SYPersistentStore *)self _withDB:v3];
}

void __44__SYPersistentStore_setPerformingDeltaSync___block_invoke(uint64_t a1, sqlite3 *a2)
{
  v2 = ExecuteSQL_0(a2, "UPDATE syncstate SET in_delta_sync=%d", *(a1 + 32));
  if (v2 && v2 != 101)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }
}

- (void)_loadIgnoreList_LOCKED:(sqlite3 *)d
{
  v5 = objc_autoreleasePoolPush();
  ppStmt = 0;
  if (sqlite3_prepare_v2(d, "SELECT ignored_message_id_set FROM syncstate LIMIT 1", -1, &ppStmt, 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  else
  {
    v6 = sqlite3_step(ppStmt);
    if (v6 != 101)
    {
      if (v6 == 100)
      {
        v7 = ReadString(ppStmt);
        v8 = [v7 componentsSeparatedByString:{@", "}];
        v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v8];
        ignoringMessageIDs = self->_ignoringMessageIDs;
        self->_ignoringMessageIDs = v9;
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
        }
      }
    }

    sqlite3_reset(ppStmt);
    sqlite3_finalize(ppStmt);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_saveIgnoreList_LOCKED:(sqlite3 *)d
{
  v5 = objc_autoreleasePoolPush();
  if ([(NSMutableSet *)self->_ignoringMessageIDs count])
  {
    allObjects = [(NSMutableSet *)self->_ignoringMessageIDs allObjects];
    v7 = [allObjects componentsJoinedByString:{@", "}];

    v8 = 0;
  }

  else
  {
    v8 = &stru_1F5ACC660;
  }

  v9 = ExecuteSQL_0(d, "UPDATE syncstate SET ignored_message_id_set=%s", [(__CFString *)v8 UTF8String]);
  if (v9 && v9 != 101)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)addMessageIDsToIgnore:(id)ignore
{
  ignoreCopy = ignore;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SYPersistentStore_addMessageIDsToIgnore___block_invoke;
  v6[3] = &unk_1E86CABC0;
  v6[4] = self;
  v7 = ignoreCopy;
  v5 = ignoreCopy;
  [(SYPersistentStore *)self _withDB:v6];
}

uint64_t __43__SYPersistentStore_addMessageIDsToIgnore___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4[8];
  if (!v5)
  {
    [v4 _loadIgnoreList_LOCKED:a2];
    v5 = *(*(a1 + 32) + 64);
  }

  v6 = [v5 count];
  [*(*(a1 + 32) + 64) unionSet:*(a1 + 40)];
  result = [*(*(a1 + 32) + 64) count];
  if (v6 != result)
  {
    v8 = *(a1 + 32);

    return [v8 _saveIgnoreList_LOCKED:a2];
  }

  return result;
}

- (BOOL)shouldIgnoreMessageID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SYPersistentStore_shouldIgnoreMessageID___block_invoke;
  v7[3] = &unk_1E86CAD90;
  v7[4] = self;
  v9 = &v10;
  v5 = dCopy;
  v8 = v5;
  [(SYPersistentStore *)self _withDB:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __43__SYPersistentStore_shouldIgnoreMessageID___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = v3[8];
  if (!v4)
  {
    [v3 _loadIgnoreList_LOCKED:a2];
    v4 = *(a1[4] + 64);
  }

  result = [v4 containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)removeMessageIDFromIgnoreList:(id)list
{
  listCopy = list;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SYPersistentStore_removeMessageIDFromIgnoreList___block_invoke;
  v6[3] = &unk_1E86CABC0;
  v6[4] = self;
  v7 = listCopy;
  v5 = listCopy;
  [(SYPersistentStore *)self _withDB:v6];
}

uint64_t __51__SYPersistentStore_removeMessageIDFromIgnoreList___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4[8];
  if (!v5)
  {
    [v4 _loadIgnoreList_LOCKED:a2];
    v5 = *(*(a1 + 32) + 64);
  }

  v6 = [v5 count];
  [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 64) count];
  if (v6 != result)
  {
    v8 = *(a1 + 32);

    return [v8 _saveIgnoreList_LOCKED:a2];
  }

  return result;
}

- (void)setTimeToLive:(double)live
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__SYPersistentStore_setTimeToLive___block_invoke;
  v3[3] = &unk_1E86CADB8;
  v3[4] = self;
  *&v3[5] = live;
  [(SYPersistentStore *)self _withDB:v3];
}

void __35__SYPersistentStore_setTimeToLive___block_invoke(uint64_t a1, sqlite3 *a2)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  *(*(a1 + 32) + 24) = v3;
  if (ExecuteSQL_0(a2, "UPDATE syncstate SET ttl=%d", v3))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __35__SYPersistentStore_setTimeToLive___block_invoke_cold_2(v2);
    }
  }
}

- (unint64_t)changeCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__SYPersistentStore_changeCount__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __32__SYPersistentStore_changeCount__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 96);
  v5 = (v3 + 96);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT COUNT(*) FROM changes", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 96);
LABEL_2:
    if ((sqlite3_step(v4) - 102) > 0xFFFFFFFD)
    {
      *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int64(*(*(a1 + 32) + 96), 0);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 96));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (NSString)vectorClockJSON
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SYPersistentStore_vectorClockJSON__block_invoke;
  v5[3] = &unk_1E86C9F28;
  v5[4] = &v6;
  [(SYPersistentStore *)self _withDB:v5];
  v2 = v7[5];
  if (!v2)
  {
    v2 = @"{}";
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__SYPersistentStore_vectorClockJSON__block_invoke(uint64_t a1, sqlite3 *db)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(db, "SELECT vector_clock FROM syncstate LIMIT 1", 42, &ppStmt, 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  else
  {
    if ((sqlite3_step(ppStmt) - 102) > 0xFFFFFFFD)
    {
      v3 = ReadString(ppStmt);
      v4 = *(*(a1 + 32) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(ppStmt);
    sqlite3_finalize(ppStmt);
  }
}

- (void)setVectorClockJSON:(id)n
{
  nCopy = n;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SYPersistentStore_setVectorClockJSON___block_invoke;
  v6[3] = &unk_1E86CABC0;
  v6[4] = self;
  v7 = nCopy;
  v5 = nCopy;
  [(SYPersistentStore *)self _withDB:v6];
}

void __40__SYPersistentStore_setVectorClockJSON___block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 176);
  v5 = (v3 + 176);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "UPDATE syncstate SET vector_clock=?", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 176);
LABEL_2:
    BindString_0(v4, 1, *(a1 + 40));
    if ((sqlite3_step(*(*(a1 + 32) + 176)) - 102) <= 0xFFFFFFFD)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 176));
    sqlite3_clear_bindings(*(*(a1 + 32) + 176));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (NSDate)overflowResyncTime
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SYPersistentStore_overflowResyncTime__block_invoke;
  v4[3] = &unk_1E86C9F28;
  v4[4] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __39__SYPersistentStore_overflowResyncTime__block_invoke(uint64_t a1, sqlite3 *db)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(db, "SELECT overflow_timeout FROM syncstate LIMIT 1", -1, &ppStmt, 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  else
  {
    v3 = sqlite3_step(ppStmt);
    if (v3 != 101)
    {
      if (v3 == 100)
      {
        v4 = ReadDate(ppStmt);
        v5 = *(*(a1 + 32) + 8);
        v6 = *(v5 + 40);
        *(v5 + 40) = v4;
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
        }
      }
    }

    sqlite3_reset(ppStmt);
    sqlite3_finalize(ppStmt);
  }
}

- (void)setOverflowResyncTime:(id)time
{
  timeCopy = time;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SYPersistentStore_setOverflowResyncTime___block_invoke;
  v6[3] = &unk_1E86C9ED8;
  v7 = timeCopy;
  v5 = timeCopy;
  [(SYPersistentStore *)self _withDB:v6];
}

void __43__SYPersistentStore_setOverflowResyncTime___block_invoke(uint64_t a1, sqlite3 *db)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(db, "UPDATE syncstate SET overflow_timeout=?", -1, &ppStmt, 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  else
  {
    BindDate(ppStmt, *(a1 + 32));
    if ((sqlite3_step(ppStmt) - 102) <= 0xFFFFFFFD)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(ppStmt);
    sqlite3_clear_bindings(ppStmt);
    sqlite3_finalize(ppStmt);
  }
}

- (NSDate)lastMessageReceived
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SYPersistentStore_lastMessageReceived__block_invoke;
  v4[3] = &unk_1E86C9F28;
  v4[4] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__SYPersistentStore_lastMessageReceived__block_invoke(uint64_t a1, sqlite3 *db)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(db, "SELECT last_message_time FROM syncstate LIMIT 1", -1, &ppStmt, 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  else
  {
    v3 = sqlite3_step(ppStmt);
    if (v3 != 101)
    {
      if (v3 == 100)
      {
        v4 = ReadDate(ppStmt);
        v5 = *(*(a1 + 32) + 8);
        v6 = *(v5 + 40);
        *(v5 + 40) = v4;
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
        }
      }
    }

    sqlite3_reset(ppStmt);
    sqlite3_finalize(ppStmt);
  }
}

- (void)setLastMessageReceived:(id)received
{
  receivedCopy = received;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SYPersistentStore_setLastMessageReceived___block_invoke;
  v6[3] = &unk_1E86C9ED8;
  v7 = receivedCopy;
  v5 = receivedCopy;
  [(SYPersistentStore *)self _withDB:v6];
}

void __44__SYPersistentStore_setLastMessageReceived___block_invoke(uint64_t a1, sqlite3 *db)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(db, "UPDATE syncstate SET last_message_time=?", -1, &ppStmt, 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  else
  {
    BindDate(ppStmt, *(a1 + 32));
    if ((sqlite3_step(ppStmt) - 102) <= 0xFFFFFFFD)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(ppStmt);
    sqlite3_clear_bindings(ppStmt);
    sqlite3_finalize(ppStmt);
  }
}

- (BOOL)canStartNewSyncSession
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__SYPersistentStore_canStartNewSyncSession__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __43__SYPersistentStore_canStartNewSyncSession__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 240);
  v5 = (v3 + 240);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT time_started FROM full_sync_info WHERE time_ended IS NULL ORDER BY time_started DESC LIMIT 1", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 240);
LABEL_2:
    if ((sqlite3_step(v4) - 102) > 0xFFFFFFFD)
    {
      v7 = ReadDate(*(*(a1 + 32) + 240));
      [v7 timeIntervalSinceNow];
      if (v8 <= -30.0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 240));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (void)enterFullSyncWithID:(id)d ignoring:(BOOL)ignoring
{
  dCopy = d;
  if (!self->_transaction)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73438, OS_LOG_TYPE_DEBUG))
    {
      [SYPersistentStore enterFullSyncWithID:ignoring:];
    }

    v7 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v7;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SYPersistentStore_enterFullSyncWithID_ignoring___block_invoke;
  v10[3] = &unk_1E86CADE0;
  v10[4] = self;
  v11 = dCopy;
  ignoringCopy = ignoring;
  v9 = dCopy;
  [(SYPersistentStore *)self _withDB:v10];
}

void __50__SYPersistentStore_enterFullSyncWithID_ignoring___block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 208);
  v5 = (v3 + 208);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "INSERT INTO full_sync_info (syncID, active, time_started) VALUES (?, ?, (julianday('now') - 2440587.5)*86400.0)", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 208);
LABEL_2:
    BindString_0(v4, 1, *(a1 + 40));
    sqlite3_bind_int(*(*(a1 + 32) + 208), 2, *(a1 + 48) ^ 1);
    if ((sqlite3_step(*(*(a1 + 32) + 208)) - 102) <= 0xFFFFFFFD)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 208));
    sqlite3_clear_bindings(*(*(a1 + 32) + 208));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (void)exitFullSyncWithID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
  }

  else
  {
    v8 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__SYPersistentStore_exitFullSyncWithID_error___block_invoke;
  v13[3] = &unk_1E86CAE08;
  v13[4] = self;
  v9 = errorCopy;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v11 = dCopy;
  v16 = v11;
  [(SYPersistentStore *)self _withDB:v13];
  if (self->_transaction)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73438, OS_LOG_TYPE_DEBUG))
    {
      [SYPersistentStore exitFullSyncWithID:error:];
    }

    transaction = self->_transaction;
    self->_transaction = 0;
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73438, OS_LOG_TYPE_ERROR))
    {
      [SYPersistentStore exitFullSyncWithID:error:];
    }
  }
}

void __46__SYPersistentStore_exitFullSyncWithID_error___block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 216);
  v5 = (v3 + 216);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "UPDATE full_sync_info SET active=0, failed=?, error=?, time_ended=(julianday('now')-2440587.5)*86400.0 WHERE syncID=?", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 216);
LABEL_2:
    sqlite3_bind_int(v4, 1, *(a1 + 40) != 0);
    BindData(*(*(a1 + 32) + 216), 2, *(a1 + 48));
    BindString_0(*(*(a1 + 32) + 216), 3, *(a1 + 56));
    if (sqlite3_step(*(*(a1 + 32) + 216)) != 101)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 216));
    sqlite3_clear_bindings(*(*(a1 + 32) + 216));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (BOOL)reassignCurrentSyncID:(id)d
{
  dCopy = d;
  if (!self->_transaction)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v5 = qword_1EDE73430;
    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Reassigning sync id, starting XPC transaction to stop us being Jetsammed until it's done.", buf, 2u);
    }

    v6 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v6;
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x2020000000;
  v16 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__SYPersistentStore_reassignCurrentSyncID___block_invoke;
  v10[3] = &unk_1E86CAE30;
  v12 = buf;
  v8 = dCopy;
  v11 = v8;
  [(SYPersistentStore *)self _withDB:v10];

  _Block_object_dispose(buf, 8);
  return 1;
}

void __43__SYPersistentStore_reassignCurrentSyncID___block_invoke(uint64_t a1, sqlite3 *db)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(db, "UPDATE full_sync_info SET syncID=? WHERE active=1", -1, &ppStmt, 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    BindString_0(ppStmt, 1, *(a1 + 32));
    if (sqlite3_step(ppStmt) != 101)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    sqlite3_reset(ppStmt);
    sqlite3_clear_bindings(ppStmt);
    sqlite3_finalize(ppStmt);
  }
}

- (BOOL)ignoringFullSyncWithID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SYPersistentStore_ignoringFullSyncWithID___block_invoke;
  v7[3] = &unk_1E86CAE58;
  v7[4] = self;
  v5 = dCopy;
  v8 = v5;
  v9 = &v10;
  [(SYPersistentStore *)self _withDB:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __44__SYPersistentStore_ignoringFullSyncWithID___block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 224);
  v5 = (v3 + 224);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT COUNT(*) FROM full_sync_info WHERE active=0 AND time_ended IS NULL AND syncID=?", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 224);
LABEL_2:
    BindString_0(v4, 1, *(a1 + 40));
    if ((sqlite3_step(*(*(a1 + 32) + 224)) - 102) > 0xFFFFFFFD)
    {
      *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int(*(*(a1 + 32) + 224), 0) != 0;
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 224));
    sqlite3_clear_bindings(*(*(a1 + 32) + 224));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (void)sendCompletedForSyncWithID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SYPersistentStore_sendCompletedForSyncWithID___block_invoke;
  v6[3] = &unk_1E86CABC0;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
  [(SYPersistentStore *)self _withDB:v6];
}

void __48__SYPersistentStore_sendCompletedForSyncWithID___block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  if (v4)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "UPDATE full_sync_info SET send_complete=1 WHERE syncID=?", -1, (v3 + 272), 0))
  {
    v4 = *(*(a1 + 32) + 272);
LABEL_2:
    BindString_0(v4, 1, *(a1 + 40));
    if (sqlite3_step(*(*(a1 + 32) + 272)) != 101)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 272));
    sqlite3_clear_bindings(*(*(a1 + 32) + 272));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (BOOL)currentSyncSendComplete
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SYPersistentStore_currentSyncSendComplete__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __44__SYPersistentStore_currentSyncSendComplete__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 280);
  if (v4)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT COUNT(*) FROM full_sync_info WHERE time_ended IS NULL AND send_complete=1 LIMIT 1", -1, (v3 + 280), 0))
  {
    v4 = *(*(a1 + 32) + 280);
LABEL_2:
    if ((sqlite3_step(v4) - 102) > 0xFFFFFFFD)
    {
      *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int(*(*(a1 + 32) + 280), 0) != 0;
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 280));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (BOOL)lastSyncFailed
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__SYPersistentStore_lastSyncFailed__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __35__SYPersistentStore_lastSyncFailed__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 288);
  if (v4)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT error FROM full_sync_info WHERE time_ended IS NOT NULL ORDER BY time_started DESC LIMIT 1", -1, (v3 + 288), 0))
  {
    v4 = *(*(a1 + 32) + 288);
LABEL_2:
    v5 = sqlite3_step(v4);
    if ((v5 - 102) > 0xFFFFFFFD)
    {
      if (v5 != 101)
      {
        v6 = ReadData(*(*(a1 + 32) + 288));
        *(*(*(a1 + 40) + 8) + 24) = v6 != 0;
      }
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 288));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (NSError)lastSyncError
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SYPersistentStore_lastSyncError__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __34__SYPersistentStore_lastSyncError__block_invoke(uint64_t a1)
{
  if (sqlite3_step(*(*(a1 + 32) + 288)) == 100)
  {
    v2 = ReadData(*(*(a1 + 32) + 288));
    if (v2)
    {
      v3 = [MEMORY[0x1E696ACD0] sy_unarchivedObjectFromData:v2];
      v4 = *(*(a1 + 40) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  return sqlite3_reset(*(*(a1 + 32) + 288));
}

- (void)_verifyInTransactionForFullSync
{
  if (!self->_transaction)
  {
    v9 = v2;
    v10 = v3;
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v5 = qword_1EDE73430;
    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Current sync ID is non-nil but we're not in a transaction. Must be left-over from a dead process? Either way, I'm entering a new transaction now. Yes, it's hacky. Hackiness is inversely proportional to the amount of coffee ingested.", v8, 2u);
    }

    v6 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v6;
  }
}

- (NSString)currentFullSyncID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__SYPersistentStore_currentFullSyncID__block_invoke;
  v5[3] = &unk_1E86CABE8;
  v5[4] = self;
  v5[5] = &v6;
  [(SYPersistentStore *)self _withDB:v5];
  if ([v7[5] length])
  {
    [(SYPersistentStore *)self _verifyInTransactionForFullSync];
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__SYPersistentStore_currentFullSyncID__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 232);
  v5 = (v3 + 232);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT syncID FROM full_sync_info WHERE time_ended IS NULL ORDER BY time_started DESC LIMIT 1", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 232);
LABEL_2:
    v7 = sqlite3_step(v4);
    if (v7 != 101)
    {
      if (v7 == 100)
      {
        v8 = ReadString(*(*(a1 + 32) + 232));
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
        }
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 232));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (BOOL)inFullSync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SYPersistentStore_inFullSync__block_invoke;
  v5[3] = &unk_1E86CABE8;
  v5[4] = self;
  v5[5] = &v6;
  [(SYPersistentStore *)self _withDB:v5];
  if (*(v7 + 24) == 1)
  {
    [(SYPersistentStore *)self _verifyInTransactionForFullSync];
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

void __31__SYPersistentStore_inFullSync__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 88);
  v5 = (v3 + 88);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT COUNT(*) FROM full_sync_info WHERE time_ended IS NULL", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 88);
LABEL_2:
    if ((sqlite3_step(v4) - 102) > 0xFFFFFFFD)
    {
      *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int(*(*(a1 + 32) + 88), 0) != 0;
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __31__SYPersistentStore_inFullSync__block_invoke_cold_4();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 88));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (NSString)lastSyncEndID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SYPersistentStore_lastSyncEndID__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __34__SYPersistentStore_lastSyncEndID__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 248);
  v5 = (v3 + 248);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT syncID FROM full_sync_info WHERE time_ended IS NOT NULL ORDER BY time_ended DESC LIMIT 1", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 248);
LABEL_2:
    v7 = sqlite3_step(v4);
    if (v7 != 101)
    {
      if (v7 == 100)
      {
        v8 = ReadString(*(*(a1 + 32) + 248));
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
        }
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 248));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (NSString)waitingForSyncEndID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SYPersistentStore_waitingForSyncEndID__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__SYPersistentStore_waitingForSyncEndID__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  if (v4)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT waiting_for_sync_id FROM syncstate LIMIT 1", -1, (v3 + 256), 0))
  {
    v4 = *(*(a1 + 32) + 256);
LABEL_2:
    v5 = sqlite3_step(v4);
    if (v5 != 101)
    {
      if (v5 == 100)
      {
        v6 = ReadString(*(*(a1 + 32) + 256));
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
        }
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 256));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (void)setWaitingForSyncEndID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SYPersistentStore_setWaitingForSyncEndID___block_invoke;
  v6[3] = &unk_1E86CABC0;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
  [(SYPersistentStore *)self _withDB:v6];
}

void __44__SYPersistentStore_setWaitingForSyncEndID___block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 264);
  if (v4)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "UPDATE syncstate SET waiting_for_sync_id=?", -1, (v3 + 264), 0))
  {
    v4 = *(*(a1 + 32) + 264);
LABEL_2:
    BindString_0(v4, 1, *(a1 + 40));
    if (sqlite3_step(*(*(a1 + 32) + 264)) != 101)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 264));
    sqlite3_clear_bindings(*(*(a1 + 32) + 264));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (NSDictionary)fullSyncUserInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__SYPersistentStore_fullSyncUserInfo__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __37__SYPersistentStore_fullSyncUserInfo__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 304);
  if (v4)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT sync_user_info FROM syncstate LIMIT 1", -1, (v3 + 304), 0))
  {
    v4 = *(*(a1 + 32) + 304);
LABEL_2:
    if (sqlite3_step(v4) == 100)
    {
      v5 = ReadData(*(*(a1 + 32) + 304));
      v6 = v5;
      if (v5)
      {
        v7 = _DictionaryFromData(v5);
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;
      }
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 304));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (void)setFullSyncUserInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__SYPersistentStore_setFullSyncUserInfo___block_invoke;
  v6[3] = &unk_1E86CABC0;
  v6[4] = self;
  v7 = infoCopy;
  v5 = infoCopy;
  [(SYPersistentStore *)self _withDB:v6];
}

void __41__SYPersistentStore_setFullSyncUserInfo___block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  if (*(v3 + 296) || !sqlite3_prepare_v2(db, "UPDATE syncstate SET sync_user_info=?", -1, (v3 + 296), 0))
  {
    v4 = _DataFromDictionary(*(a1 + 40));
    BindData(*(*(a1 + 32) + 296), 1, v4);
    if (sqlite3_step(*(*(a1 + 32) + 296)) != 101)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 296));
    sqlite3_clear_bindings(*(*(a1 + 32) + 296));
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }
}

- (NSDictionary)fullSyncIDSOptions
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SYPersistentStore_fullSyncIDSOptions__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __39__SYPersistentStore_fullSyncIDSOptions__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 320);
  if (v4)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT sync_ids_options FROM syncstate LIMIT 1", -1, (v3 + 320), 0))
  {
    v4 = *(*(a1 + 32) + 320);
LABEL_2:
    if (sqlite3_step(v4) == 100)
    {
      v5 = ReadData(*(*(a1 + 32) + 320));
      v6 = v5;
      if (v5)
      {
        v7 = _DictionaryFromData(v5);
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;
      }
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 320));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (void)setFullSyncIDSOptions:(id)options
{
  optionsCopy = options;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SYPersistentStore_setFullSyncIDSOptions___block_invoke;
  v6[3] = &unk_1E86CABC0;
  v6[4] = self;
  v7 = optionsCopy;
  v5 = optionsCopy;
  [(SYPersistentStore *)self _withDB:v6];
}

void __43__SYPersistentStore_setFullSyncIDSOptions___block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  if (*(v3 + 312) || !sqlite3_prepare_v2(db, "UPDATE syncstate SET sync_ids_options=?", -1, (v3 + 312), 0))
  {
    v4 = _DataFromDictionary(*(a1 + 40));
    BindData(*(*(a1 + 32) + 312), 1, v4);
    if (sqlite3_step(*(*(a1 + 32) + 312)) != 101)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 312));
    sqlite3_clear_bindings(*(*(a1 + 32) + 312));
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }
}

- (BOOL)completedSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SYPersistentStore_completedSync__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__SYPersistentStore_completedSync__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 128);
  v5 = (v3 + 128);
  v4 = v6;
  if (v6)
  {
LABEL_2:
    if ((sqlite3_step(v4) - 102) > 0xFFFFFFFD)
    {
      *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int(*(*(a1 + 32) + 128), 0) != 0;
      v7 = *(*(a1 + 32) + 128);

      sqlite3_reset(v7);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    return;
  }

  if (!sqlite3_prepare_v2(db, "SELECT MAX(fullsync_sent) FROM syncstate", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 128);
    goto LABEL_2;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (void)setCompletedSync:(BOOL)sync
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__SYPersistentStore_setCompletedSync___block_invoke;
  v3[3] = &unk_1E86CAE80;
  v3[4] = self;
  syncCopy = sync;
  [(SYPersistentStore *)self _withDB:v3];
}

void __38__SYPersistentStore_setCompletedSync___block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 136);
  v5 = (v3 + 136);
  v4 = v6;
  if (!v6)
  {
    if (sqlite3_prepare_v2(db, "UPDATE syncstate SET fullsync_sent=?", -1, v5, 0))
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      return;
    }

    v4 = *(*(a1 + 32) + 136);
  }

  sqlite3_bind_int(v4, 1, *(a1 + 40));
  if ((sqlite3_step(*(*(a1 + 32) + 136)) - 102) > 0xFFFFFFFD)
  {
    sqlite3_reset(*(*(a1 + 32) + 136));
    v7 = *(*(a1 + 32) + 136);

    sqlite3_clear_bindings(v7);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }
}

- (double)durationOfLastFullSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__SYPersistentStore_durationOfLastFullSync__block_invoke;
  v4[3] = &unk_1E86C9F28;
  v4[4] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

sqlite3_stmt *__43__SYPersistentStore_durationOfLastFullSync__block_invoke(uint64_t a1, sqlite3 *db)
{
  ppStmt = 0;
  if (!sqlite3_prepare_v2(db, "SELECT duration FROM full_sync_info ORDER BY time_ended DESC LIMIT 1", -1, &ppStmt, 0))
  {
    if ((sqlite3_step(ppStmt) - 102) > 0xFFFFFFFD)
    {
      *(*(*(a1 + 32) + 8) + 24) = sqlite3_column_double(ppStmt, 0);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    result = ppStmt;
    return sqlite3_finalize(result);
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }

  result = ppStmt;
  if (ppStmt)
  {
    return sqlite3_finalize(result);
  }

  return result;
}

- (unint64_t)currentLocalVersion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SYPersistentStore_currentLocalVersion__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __40__SYPersistentStore_currentLocalVersion__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 160);
  v5 = (v3 + 160);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT seq FROM sqlite_sequence WHERE name='changes'", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 160);
LABEL_2:
    if ((sqlite3_step(v4) - 102) > 0xFFFFFFFD)
    {
      *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int64(*(*(a1 + 32) + 160), 0);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 160));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (unint64_t)lastSeenRemoteVersion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__SYPersistentStore_lastSeenRemoteVersion__block_invoke;
  v4[3] = &unk_1E86C9F28;
  v4[4] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

sqlite3_stmt *__42__SYPersistentStore_lastSeenRemoteVersion__block_invoke(uint64_t a1, sqlite3 *db)
{
  ppStmt = 0;
  if (!sqlite3_prepare_v2(db, "SELECT MAX(remoteversion) FROM syncstate", 40, &ppStmt, 0))
  {
    if ((sqlite3_step(ppStmt) - 102) > 0xFFFFFFFD)
    {
      *(*(*(a1 + 32) + 8) + 24) = sqlite3_column_int64(ppStmt, 0);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    result = ppStmt;
    return sqlite3_finalize(result);
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }

  result = ppStmt;
  if (ppStmt)
  {
    return sqlite3_finalize(result);
  }

  return result;
}

- (BOOL)logChanges:(id)changes error:(id *)error
{
  changesCopy = changes;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__SYPersistentStore_logChanges_error___block_invoke;
  v10[3] = &unk_1E86CAEA8;
  v10[4] = self;
  v11 = changesCopy;
  errorCopy = error;
  v7 = changesCopy;
  v8 = [(SYPersistentStore *)self _inTransaction:1 do:v10];
  [(SYPersistentStore *)self setCachedChangedSyncIDsVersion:0];

  return v8;
}

uint64_t __38__SYPersistentStore_logChanges_error___block_invoke(uint64_t a1, sqlite3 *db)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v6 = *(v4 + 120);
  v5 = (v4 + 120);
  if (v6 || !sqlite3_prepare_v2(db, "INSERT INTO changes (tstamp, type, syncid) VALUES (?, ?, ?)", -1, v5, 0))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      v11 = *MEMORY[0x1E695E468];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = *(*(a1 + 32) + 120);
          Current = CFAbsoluteTimeGetCurrent();
          sqlite3_bind_double(v14, 1, Current + v11);
          sqlite3_bind_int(*(*(a1 + 32) + 120), 2, [v13 type]);
          v16 = *(*(a1 + 32) + 120);
          v17 = [v13 objectId];
          BindString_0(v16, 3, v17);

          v18 = sqlite3_step(*(*(a1 + 32) + 120));
          sqlite3_reset(*(*(a1 + 32) + 120));
          sqlite3_clear_bindings(*(*(a1 + 32) + 120));
          if ((v18 & 0xFFFFFFFE) != 0x64)
          {
            v20 = sqlite3_errmsg(db);
            if (*(a1 + 48))
            {
              v21 = MEMORY[0x1E696ABC0];
              v22 = v18;
              v31 = *MEMORY[0x1E696A578];
              v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
              v32 = v23;
              v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
              **(a1 + 48) = [v21 errorWithDomain:@"SYPersistentStoreErrorDomain" code:v22 userInfo:v24];
            }

            v19 = 0;
            goto LABEL_14;
          }

          [v13 setVersion:sqlite3_last_insert_rowid(db)];
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v19 = 1;
LABEL_14:
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }

    v19 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)logSyncCompletionToRemoteVersion:(unint64_t)version
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SYPersistentStore_logSyncCompletionToRemoteVersion___block_invoke;
  v5[3] = &unk_1E86CAED0;
  v5[5] = &v6;
  v5[6] = version;
  v5[4] = self;
  [(SYPersistentStore *)self _withDB:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __54__SYPersistentStore_logSyncCompletionToRemoteVersion___block_invoke(void *a1, sqlite3 *db)
{
  v3 = a1[4];
  v6 = *(v3 + 144);
  v5 = (v3 + 144);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "UPDATE syncstate SET tstamp=(julianday('now')-2440587.5)*86400.0, remoteversion=?", -1, v5, 0))
  {
    v4 = *(a1[4] + 144);
LABEL_2:
    sqlite3_bind_int64(v4, 1, a1[6]);
    if ((sqlite3_step(*(a1[4] + 144)) - 102) <= 0xFFFFFFFD)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }

      *(*(a1[5] + 8) + 24) = 0;
    }

    sqlite3_reset(*(a1[4] + 144));
    sqlite3_clear_bindings(*(a1[4] + 144));
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (unint64_t)_oldestVersion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__SYPersistentStore__oldestVersion__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __35__SYPersistentStore__oldestVersion__block_invoke(uint64_t a1, sqlite3 *db)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 168);
  v5 = (v3 + 168);
  v4 = v6;
  if (v6)
  {
LABEL_2:
    sqlite3_step(v4);
    *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int64(*(*(a1 + 32) + 168), 0);
    v7 = *(*(a1 + 32) + 168);

    sqlite3_reset(v7);
    return;
  }

  if (!sqlite3_prepare_v2(db, "SELECT MIN(version) FROM changes", -1, v5, 0))
  {
    v4 = *(*(a1 + 32) + 168);
    goto LABEL_2;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (BOOL)objectChanged:(id)changed sinceVersion:(unint64_t)version
{
  changedCopy = changed;
  if ([(SYPersistentStore *)self cachedChangedSyncIDsVersion]!= version || ([(SYPersistentStore *)self cachedChangedSyncIDs], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    currentLocalVersion = [(SYPersistentStore *)self currentLocalVersion];
    _oldestVersion = [(SYPersistentStore *)self _oldestVersion];
    v11 = currentLocalVersion < version && _oldestVersion > version + 1;
    [(SYPersistentStore *)self setCachedVersionStale:v11];
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (![(SYPersistentStore *)self cachedVersionStale])
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __48__SYPersistentStore_objectChanged_sinceVersion___block_invoke;
      v17[3] = &unk_1E86CAEF8;
      v17[4] = self;
      versionCopy = version;
      v18 = v12;
      [(SYPersistentStore *)self _withDB:v17];
    }

    [(SYPersistentStore *)self setCachedChangedSyncIDs:v12];
    [(SYPersistentStore *)self setCachedChangedSyncIDsVersion:version];
  }

  if ([(SYPersistentStore *)self cachedVersionStale])
  {
    v13 = 1;
  }

  else
  {
    cachedChangedSyncIDs = [(SYPersistentStore *)self cachedChangedSyncIDs];
    syncId = [changedCopy syncId];
    v13 = [cachedChangedSyncIDs containsObject:syncId];
  }

  return v13;
}

void __48__SYPersistentStore_objectChanged_sinceVersion___block_invoke(void *a1, sqlite3 *db)
{
  v3 = a1[4];
  v6 = *(v3 + 152);
  v5 = (v3 + 152);
  v4 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  if (!sqlite3_prepare_v2(db, "SELECT DISTINCT syncid FROM changes WHERE version > ?", -1, v5, 0))
  {
    v4 = *(a1[4] + 152);
LABEL_2:
    sqlite3_bind_int64(v4, 1, a1[6]);
    while (sqlite3_step(*(a1[4] + 152)) == 100)
    {
      v7 = a1[5];
      v8 = ReadString(*(a1[4] + 152));
      [v7 addObject:v8];
    }

    sqlite3_reset(*(a1[4] + 152));
    v9 = *(a1[4] + 152);

    sqlite3_clear_bindings(v9);
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }
}

- (void)clearAllChanges
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __36__SYPersistentStore_clearAllChanges__block_invoke;
  v2[3] = &unk_1E86C9ED8;
  v2[4] = self;
  [(SYPersistentStore *)self _withDB:v2];
}

void __36__SYPersistentStore_clearAllChanges__block_invoke(uint64_t a1, sqlite3 *a2)
{
  [*(a1 + 32) setCachedChangedSyncIDs:0];
  v3 = ExecuteSQL_0(a2, "DELETE FROM changes");
  if (v3 && v3 != 101)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }
}

- (void)changeTrackingToggled:(BOOL)toggled
{
  if (self->_changeTrackingEnabled != toggled)
  {
    self->_changeTrackingEnabled = toggled;
    if (!toggled)
    {
      [(SYPersistentStore *)self _withDB:&__block_literal_global_153];
    }
  }
}

- (id)lastDBErrorInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SYPersistentStore_UnitTestHelper__lastDBErrorInfo__block_invoke;
  v4[3] = &unk_1E86C9F28;
  v4[4] = &v5;
  [(SYPersistentStore *)self _withDB:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __52__SYPersistentStore_UnitTestHelper__lastDBErrorInfo__block_invoke(uint64_t a1, sqlite3 *db)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = sqlite3_errcode(db);
  v5 = sqlite3_errmsg(db);
  if (v5 && v4)
  {
    v6 = v5;
    v13[0] = @"code";
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v13[1] = @"message";
    v14[0] = v7;
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    v14[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dbPath
{
  if (self->_sharedDB)
  {
    _dbPath = [(_SYSharedServiceDB *)self->_sharedDB _dbPath];
  }

  else
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__7;
    v9 = __Block_byref_object_dispose__7;
    v10 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __43__SYPersistentStore_UnitTestHelper__dbPath__block_invoke;
    v4[3] = &unk_1E86C9F28;
    v4[4] = &v5;
    [(SYPersistentStore *)self _withDB:v4];
    _dbPath = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return _dbPath;
}

const char *__43__SYPersistentStore_UnitTestHelper__dbPath__block_invoke(uint64_t a1, sqlite3 *db)
{
  result = sqlite3_db_filename(db, "main");
  if (result)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:result];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8](v4, v6);
  }

  return result;
}

+ (void)_tableEmpty:(uint64_t)a1 db:.cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5(&dword_1DF835000, v1, v2, "Error checking for empty table %{public}@: %{companionsync:sqlite3err}d", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_getSchemaVersion
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error fetching schema version: %{companionsync:sqlite3err}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_openDBAtPath:(uint64_t)a1 .cold.6(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5(&dword_1DF835000, v1, v2, "Error opening SQLite3 DB at (%@): %{companionsync:sqlite3err}d", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __39__SYPersistentStore__inTransaction_do___block_invoke_cold_2(_BYTE *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *a1;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_5(&dword_1DF835000, v1, v2, "Failed to begin %s transaction: %{companionsync:sqlite3err}d");
  v3 = *MEMORY[0x1E69E9840];
}

void __39__SYPersistentStore__inTransaction_do___block_invoke_cold_4(_BYTE *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *a1;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_5(&dword_1DF835000, v1, v2, "Failed to commit %s transaction: %{companionsync:sqlite3err}d");
  v3 = *MEMORY[0x1E69E9840];
}

void __39__SYPersistentStore__inTransaction_do___block_invoke_cold_6(_BYTE *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *a1;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_5(&dword_1DF835000, v1, v2, "Failed to rollback %s transaction: %{companionsync:sqlite3err}d");
  v3 = *MEMORY[0x1E69E9840];
}

void __39__SYPersistentStore_nextSequenceNumber__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "SQLite error fetching incremented sequence number: %{companionsync:sqlite3err}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__SYPersistentStore_setLastSequenceNumber_fromPeer_error___block_invoke_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "SQLite error updating peer message sequence number: %{companionsync:sqlite3err}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__SYPersistentStore_setLastSequenceNumber_fromPeer_error___block_invoke_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "SQLite error creating peer_info insert statement: %{companionsync:sqlite3err}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__SYPersistentStore_setLastSequenceNumber_fromPeer_error___block_invoke_cold_8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "SQLite error inserting new Peer Sequence Number: %{companionsync:sqlite3err}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_lastSequenceNumberForPeerID_LOCKED:db:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "SQLite error fetching peer message sequence number: %{companionsync:sqlite3err}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __35__SYPersistentStore_setTimeToLive___block_invoke_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_5(&dword_1DF835000, v2, v3, "SQLite error while storing new TTL value %f: %{companionsync:sqlite3err}d");
  v4 = *MEMORY[0x1E69E9840];
}

void __31__SYPersistentStore_inFullSync__block_invoke_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "SQLite error: %{companionsync:sqlite3err}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end