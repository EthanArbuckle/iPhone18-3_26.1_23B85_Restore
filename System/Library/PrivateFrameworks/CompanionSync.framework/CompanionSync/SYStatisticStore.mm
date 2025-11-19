@interface SYStatisticStore
+ (id)unpackMessageData:(id)a3;
- (BOOL)_LOCKED_pruneFileTransferLogForServices:(id)a3;
- (BOOL)_LOCKED_pruneMessageLogForServices:(id)a3;
- (BOOL)_openDBFile:(BOOL)a3;
- (BOOL)_tableEmpty:(id)a3;
- (NSURL)presentedItemURL;
- (SYStatisticStore)init;
- (SYStatisticStore)initWithPath:(id)a3;
- (double)_getMachTimestamp;
- (id)_LOCKED_allServiceNames;
- (id)_keySetForMessageLogTable;
- (id)_openDBIfNecessary;
- (id)_unpackMessageData:(id)a3;
- (id)_unpackMetadata:(id)a3;
- (int)_closeDB;
- (int)_getSchemaVersion;
- (unint64_t)rowIDForPartialMessage:(id)a3;
- (void)_ensureCorrectFileOwnership:(id)a3;
- (void)_getSchemaVersion;
- (void)_initializeFilePresentation;
- (void)_letGoForUnitTests:(id)a3;
- (void)_onQueueAsync:(id)a3;
- (void)_onQueueSync:(id)a3;
- (void)_openDB;
- (void)_pruneOldData;
- (void)_unpackPBRequest:(id)a3 forMessageID:(unsigned __int16)a4 intoDictionary:(id)a5;
- (void)_unpackPBResponse:(id)a3 forMessageID:(unsigned __int16)a4 intoDictionary:(id)a5;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3;
- (void)assignIdentifier:(id)a3 toOutgoingMessage:(id)a4;
- (void)confirmDeliveryOfOutgoingFileTransfer:(id)a3;
- (void)confirmDeliveryOfOutgoingMessage:(id)a3;
- (void)dealloc;
- (void)markLastIncomingMessageComplete;
- (void)presentedItemDidMoveToURL:(id)a3;
- (void)recordIncomingFileTransferAtURL:(id)a3 metadata:(id)a4 identifier:(id)a5 forService:(id)a6;
- (void)recordIncomingMessage:(id)a3 forService:(id)a4;
- (void)recordOutgoingFileTransferAtURL:(id)a3 metadata:(id)a4 identifier:(id)a5 error:(id)a6 forService:(id)a7;
- (void)recordOutgoingMessage:(id)a3 forService:(id)a4;
- (void)setFileTransferIdentifier:(id)a3 forOutgoingMessagesWithRowIDs:(id)a4;
- (void)updateLastIncomingMessageWithError:(id)a3;
- (void)updateLastIncomingMessageWithProcessingTime:(double)a3;
- (void)updateOutgoingFileTransferWithIdentifier:(id)a3 sentSuccessfully:(BOOL)a4 error:(id)a5;
- (void)updateOutgoingMessageWithIdentifier:(id)a3 didReceiveResponse:(BOOL)a4 error:(id)a5;
- (void)updateOutgoingMessageWithIdentifier:(id)a3 forService:(id)a4 sentSuccessfully:(BOOL)a5 sendError:(id)a6;
@end

@implementation SYStatisticStore

- (SYStatisticStore)init
{
  v3 = +[SYLogs logFolder];
  v4 = [v3 stringByAppendingPathComponent:@"statistics.db"];

  v5 = [(SYStatisticStore *)self initWithPath:v4];
  return v5;
}

- (SYStatisticStore)initWithPath:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SYStatisticStore;
  v5 = [(SYStatisticStore *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);

    v8 = dispatch_queue_create("CSStatisticsQueueCore", v7);
    v9 = *(v5 + 17);
    *(v5 + 17) = v8;

    v10 = dispatch_queue_create_with_target_V2("CSStatisticsQueue", v7, *(v5 + 17));
    v11 = *(v5 + 18);
    *(v5 + 18) = v10;

    v12 = [v4 stringByStandardizingPath];
    v13 = [v12 copy];
    v14 = *(v5 + 1);
    *(v5 + 1) = v13;

    [v5 _initializeFilePresentation];
    [v5 _openDB];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v5 selector:sel__letGoForUnitTests_ name:@"SYUnitTestTearDown" object:0];

    v16 = v5;
  }

  return v5;
}

- (void)dealloc
{
  operations_queue = self->_operations_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SYStatisticStore_dealloc__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_sync(operations_queue, block);
  [MEMORY[0x1E696ABF8] removeFilePresenter:self];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SYStatisticStore;
  [(SYStatisticStore *)&v5 dealloc];
}

- (int)_closeDB
{
  db = self->_db;
  if (!db)
  {
    return 0;
  }

  self->_db = 0;
  sqlite3_finalize(self->_insertIncoming);
  self->_insertIncoming = 0;
  sqlite3_finalize(self->_addProcessingTimeIncoming);
  self->_addProcessingTimeIncoming = 0;
  sqlite3_finalize(self->_addErrorIncoming);
  self->_addErrorIncoming = 0;
  sqlite3_finalize(self->_markCompleteIncoming);
  self->_markCompleteIncoming = 0;
  sqlite3_finalize(self->_insertOutgoing);
  self->_insertOutgoing = 0;
  sqlite3_finalize(self->_updateOutgoingIdentifier);
  self->_updateOutgoingIdentifier = 0;
  sqlite3_finalize(self->_updateOutgoing);
  self->_updateOutgoing = 0;
  sqlite3_finalize(self->_timestampForID);
  self->_timestampForID = 0;
  sqlite3_finalize(self->_reserveRowID);
  self->_reserveRowID = 0;
  sqlite3_finalize(self->_responseReceived);
  self->_responseReceived = 0;
  sqlite3_finalize(self->_requestAcked);
  self->_requestAcked = 0;
  sqlite3_finalize(self->_logFileActivity);
  self->_logFileActivity = 0;
  sqlite3_finalize(self->_updateFileOutgoing);
  self->_updateFileOutgoing = 0;
  v4 = sqlite3_close(db);
  [MEMORY[0x1E696ABF8] removeFilePresenter:self];
  return v4;
}

- (void)_letGoForUnitTests:(id)a3
{
  operations_queue = self->_operations_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SYStatisticStore__letGoForUnitTests___block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_sync(operations_queue, block);
}

- (BOOL)_tableEmpty:(id)a3
{
  ppStmt = 0;
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:@"SELECT COUNT(*) FROM %@", v5];

  v7 = [v6 UTF8String];
  v8 = strlen(v7);
  v9 = sqlite3_prepare_v2(self->_db, v7, v8, &ppStmt, 0);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      if (_stats_log_pred != -1)
      {
        [SYStatisticStore _tableEmpty:];
      }

      if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
      {
        [SYStatisticStore _tableEmpty:];
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
        if (_stats_log_pred != -1)
        {
          [SYStatisticStore _tableEmpty:];
        }

        if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
        {
          [SYStatisticStore _tableEmpty:];
        }

        v10 = 1;
      }
    }

    sqlite3_finalize(ppStmt);
  }

  return v10;
}

- (void)_ensureCorrectFileOwnership:(id)a3
{
  v3 = a3;
  memset(&v5, 0, sizeof(v5));
  if (stat([v3 fileSystemRepresentation], &v5) == -1)
  {
    [SYStatisticStore _ensureCorrectFileOwnership:];
  }

  if (!v5.st_uid && !geteuid() && chown([v3 fileSystemRepresentation], 0x1F5u, 0x1F5u))
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    v4 = _stats_log;
    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      [(SYStatisticStore *)v3 _ensureCorrectFileOwnership:v4];
    }
  }

  if ((v5.st_mode & 0x10) == 0)
  {
    chmod([v3 fileSystemRepresentation], 0x1B4u);
  }
}

- (BOOL)_openDBFile:(BOOL)a3
{
  v3 = a3;
  v48[4] = *MEMORY[0x1E69E9840];
  v33 = 4227074;
  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:self->_path isDirectory:0];
  if (v3)
  {
    v32 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
    v6 = objc_alloc(MEMORY[0x1E695DFF8]);
    v7 = [(NSString *)self->_path stringByAppendingString:@"-shm"];
    v8 = [v6 initFileURLWithPath:v7 isDirectory:0];

    v9 = objc_alloc(MEMORY[0x1E695DFF8]);
    v10 = [(NSString *)self->_path stringByAppendingString:@"-wal"];
    v11 = [v9 initFileURLWithPath:v10 isDirectory:0];

    v12 = [MEMORY[0x1E696ABF0] readingIntentWithURL:v5 options:0];
    v48[0] = v12;
    v13 = [MEMORY[0x1E696ABF0] writingIntentWithURL:v5 options:1];
    v48[1] = v13;
    v14 = [MEMORY[0x1E696ABF0] writingIntentWithURL:v8 options:1];
    v48[2] = v14;
    v15 = [MEMORY[0x1E696ABF0] writingIntentWithURL:v11 options:1];
    v48[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];

    v17 = dispatch_semaphore_create(0);
    v18 = [(SYStatisticStore *)self presentedItemOperationQueue];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __32__SYStatisticStore__openDBFile___block_invoke;
    v43[3] = &unk_1E86CBA28;
    v43[4] = self;
    v44 = v5;
    v45 = v8;
    v46 = v11;
    v47 = v17;
    v19 = v17;
    v20 = v11;
    v21 = v8;
    [v32 coordinateAccessWithIntents:v16 queue:v18 byAccessor:v43];

    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    v33 = 4227078;
  }

  v22 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v24 = [MEMORY[0x1E696ABF0] readingIntentWithURL:v5 options:0];
  [v23 addObject:v24];

  if (v3)
  {
    v25 = [MEMORY[0x1E696ABF0] writingIntentWithURL:v5 options:0];
    [v23 addObject:v25];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v26 = dispatch_semaphore_create(0);
  v27 = [(SYStatisticStore *)self presentedItemOperationQueue];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __32__SYStatisticStore__openDBFile___block_invoke_92;
  v34[3] = &unk_1E86CBA50;
  v37 = v33;
  v38 = v3;
  v34[4] = self;
  v36 = &v39;
  v28 = v26;
  v35 = v28;
  [v22 coordinateAccessWithIntents:v23 queue:v27 byAccessor:v34];

  dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
  v29 = *(v40 + 24);

  _Block_object_dispose(&v39, 8);
  v30 = *MEMORY[0x1E69E9840];
  return v29 & 1;
}

void __32__SYStatisticStore__openDBFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __32__SYStatisticStore__openDBFile___block_invoke_cold_2();
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 fileExistsAtPath:*(*(a1 + 32) + 8)];

    if (v5)
    {
      v6 = [MEMORY[0x1E696AC08] defaultManager];
      [v6 removeItemAtURL:*(a1 + 40) error:0];

      v7 = [MEMORY[0x1E696AC08] defaultManager];
      [v7 removeItemAtURL:*(a1 + 48) error:0];

      v8 = [MEMORY[0x1E696AC08] defaultManager];
      [v8 removeItemAtURL:*(a1 + 56) error:0];
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));
}

intptr_t __32__SYStatisticStore__openDBFile___block_invoke_92(uint64_t a1)
{
  if (sqlite3_open_v2([*(*(a1 + 32) + 8) fileSystemRepresentation], (*(a1 + 32) + 16), *(a1 + 56), 0) || (v2 = *(a1 + 32), !*(v2 + 16)))
  {
    if (*(a1 + 60) == 1)
    {
      if (_stats_log_pred != -1)
      {
        [SYStatisticStore _tableEmpty:];
      }

      if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
      {
        __32__SYStatisticStore__openDBFile___block_invoke_92_cold_2();
      }
    }

    v2 = *(a1 + 32);
    if (*(v2 + 16))
    {
      sqlite3_close(*(v2 + 16));
      *(*(a1 + 32) + 16) = 0;
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v2 = *(a1 + 32);
    }
  }

  [v2 _ensureCorrectFileOwnership:*(v2 + 8)];
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (int)_getSchemaVersion
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(self->_db, "SELECT COUNT(*) FROM meta", 25, &ppStmt, 0);
  if (v2)
  {
    if (v2 != 1)
    {
      if (_stats_log_pred != -1)
      {
        [SYStatisticStore _tableEmpty:];
      }

      if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
      {
        [SYStatisticStore _getSchemaVersion];
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
        if (_stats_log_pred != -1)
        {
          [SYStatisticStore _tableEmpty:];
        }

        if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
        {
          [SYStatisticStore _getSchemaVersion];
        }

        v3 = 0;
      }
    }

    sqlite3_finalize(ppStmt);
  }

  return v3;
}

- (void)_onQueueAsync:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__15;
  v10[4] = __Block_byref_object_dispose__15;
  v11 = os_transaction_create();
  operations_queue = self->_operations_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SYStatisticStore__onQueueAsync___block_invoke;
  block[3] = &unk_1E86CBA78;
  block[4] = self;
  v8 = v4;
  v9 = v10;
  v6 = v4;
  dispatch_async(operations_queue, block);

  _Block_object_dispose(v10, 8);
}

void __34__SYStatisticStore__onQueueAsync___block_invoke(void *a1)
{
  if (*(a1[4] + 16))
  {
    (*(a1[5] + 16))();
    v2 = *(a1[6] + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    v4 = _stats_log;
    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "Statistics DB closed before an enqueued async block could run.", v5, 2u);
    }
  }
}

- (void)_onQueueSync:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  dispatch_suspend(self->_operations_queue);
  preemption_queue = self->_preemption_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__SYStatisticStore__onQueueSync___block_invoke;
  v8[3] = &unk_1E86CA388;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(preemption_queue, v8);
  dispatch_resume(self->_operations_queue);
}

void __33__SYStatisticStore__onQueueSync___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v6 = v1;
    v7 = v2;
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    v4 = _stats_log;
    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "Statistics DB closed before an enqueued sync block could run.", v5, 2u);
    }
  }
}

- (id)_openDBIfNecessary
{
  v2 = self;
  if (!self->_db)
  {
    [(SYStatisticStore *)self _openDB];
    if (!v2->_db)
    {
      v2 = 0;
    }
  }

  v3 = v2;

  return v3;
}

- (void)_openDB
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = _SYObfuscate(a2);
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1DF835000, v3, OS_LOG_TYPE_ERROR, "Error creating parent folder: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    sqlite3_busy_timeout(v2, 60000);
    v3 = 1;
    sqlite3_extended_result_codes(*(*(a1 + 32) + 16), 1);
    sqlite3_wal_checkpoint_v2(*(*(a1 + 32) + 16), 0, 3, 0, 0);
    sqlite3_wal_hook(*(*(a1 + 32) + 16), _SYStatisticsPrune, 0);
    ExecuteSQL_2(*(*(a1 + 32) + 16), "PRAGMA journal_mode=WAL;");
    ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE TABLE IF NOT EXISTS meta (version INTEGER PRIMARY KEY AUTOINCREMENT, timestamp REAL)");
    v4 = [*(a1 + 32) _getSchemaVersion];
    if (v4 > 4)
    {
      if (v4 > 7)
      {
        if (v4 != 8)
        {
          if (v4 != 9)
          {
            if (v4 != 10)
            {
              goto LABEL_34;
            }

            goto LABEL_32;
          }

LABEL_31:
          ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN is_reset_session INTEGER");
          ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN metadata TEXT");
          ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN rollback INTEGER");
          ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN accepted INTEGER");
          ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
          if (!v3)
          {
LABEL_33:
            ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
LABEL_34:
            if (sqlite3_table_column_metadata(*(*(a1 + 32) + 16), 0, "file_transfer_log", "mach_time", 0, 0, 0, 0, 0))
            {
              ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE file_transfer_log ADD COLUMN mach_time REAL DEFAULT 0");
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "INSERT INTO message_log (incoming, timestamp, delivery_time, service, type, identifier, change_count, vector_clock, is_request, sync_id, request_id, error, wants_response, proto_version, msg_seqno, mach_time, chunk_index, is_reset_session, metadata, rollback, accepted) VALUES (1, datetime('now'), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, (*(a1 + 32) + 24), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v6 = _stats_log;
              if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_2();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "UPDATE message_log SET processing_time_ms=? WHERE pk=?", -1, (*(a1 + 32) + 32), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v7 = _stats_log;
              if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_4();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "UPDATE message_log SET error=? WHERE pk=?", -1, (*(a1 + 32) + 40), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v8 = _stats_log;
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_6();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "UPDATE message_log SET complete=1 WHERE pk=?", -1, (*(a1 + 32) + 48), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v9 = _stats_log;
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_8();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "INSERT INTO message_log (service, mach_time) VALUES ('reserving row id', ?)", -1, (*(a1 + 32) + 88), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v10 = _stats_log;
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_10();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "UPDATE message_log SET incoming=0, timestamp=datetime('now'), service=?, type=?, change_count=?, vector_clock=?, is_request=?, sync_id=?, request_id=?, wants_response=?, wants_delivery_ack=?, proto_version=?, msg_seqno=?, chunk_index=?, is_reset_session=?, metadata=?, rollback=?, accepted=? WHERE pk=?", -1, (*(a1 + 32) + 56), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v11 = _stats_log;
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_12();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "UPDATE message_log SET identifier=?, mach_time=? WHERE pk=?", -1, (*(a1 + 32) + 64), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v12 = _stats_log;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_14();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "UPDATE message_log SET delivery_time=?, complete=?, got_response=?, error=? WHERE identifier=?", -1, (*(a1 + 32) + 72), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v13 = _stats_log;
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_16();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "SELECT timestamp FROM message_log WHERE identifier=? ORDER BY timestamp DESC LIMIT 1", -1, (*(a1 + 32) + 80), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v14 = _stats_log;
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_18();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "UPDATE message_log SET got_response=? WHERE identifier=?", -1, (*(a1 + 32) + 96), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v15 = _stats_log;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_20();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "UPDATE message_log SET delivery_acked=1 WHERE identifier=?", -1, (*(a1 + 32) + 104), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v16 = _stats_log;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_22();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "INSERT INTO file_transfer_log (incoming, timestamp, file_url, service, identifier, peer_id, mach_time, delivery_time) VALUES (?, datetime('now'), ?, ?, ?, ?, ?, ?)", -1, (*(a1 + 32) + 112), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v17 = _stats_log;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_24();
              }
            }

            if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "UPDATE file_transfer_log SET delivery_time=?, complete=?, error=? WHERE identifier=?", -1, (*(a1 + 32) + 120), 0))
            {
              if (_stats_log_pred != -1)
              {
                [SYStatisticStore _tableEmpty:];
              }

              v18 = _stats_log;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                __27__SYStatisticStore__openDB__block_invoke_cold_26();
              }
            }

            return;
          }

LABEL_32:
          ExecuteSQL_2(*(*(a1 + 32) + 16), "DROP INDEX msg_by_id");
          ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE INDEX msg_by_id ON message_log (identifier ASC, timestamp DESC)");
          ExecuteSQL_2(*(*(a1 + 32) + 16), "DROP INDEX response_by_request");
          ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE INDEX response_by_request ON message_log (request_id ASC, timestamp DESC, identifier ASC, type ASC)");
          goto LABEL_33;
        }

LABEL_30:
        ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE TABLE IF NOT EXISTS file_transfer_log (pk INTEGER PRIMARY KEY AUTOINCREMENT, file_url TEXT, service TEXT, incoming INTEGER, timestamp REAL, delivery_time REAL, identifier TEXT, error TEXT, complete INTEGER DEFAULT 0, delivery_acked INTEGER DEFAULT 0, peer_id TEXT, mach_time REAL DEFAULT 0)");
        ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE INDEX file_transfer_by_service ON file_transfer_log (service, identifier, timestamp ASC)");
        ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN file_transfer_id TEXT DEFAULT NIL");
        ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE INDEX file_transfer_messages ON message_log (service, file_transfer_id, timestamp ASC)");
        ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
        goto LABEL_31;
      }

      if (v4 != 5)
      {
        if (v4 != 6)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_27:
      ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN chunk_index INTEGER");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
LABEL_28:
      ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE INDEX msg_by_service ON message_log (service, timestamp ASC)");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE VIEW receipt_sequence_info AS SELECT msg_seqno, datetime(timestamp, 'localtime'), mach_time, type, identifier, service FROM message_log WHERE incoming=1 ORDER BY service, timestamp ASC");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE VIEW sent_sequence_info AS SELECT msg_seqno, datetime(timestamp, 'localtime'), mach_time, type, identifier, service FROM message_log WHERE incoming=0 ORDER BY service, timestamp ASC");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
LABEL_29:
      ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN processing_time_ms INTEGER");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
      goto LABEL_30;
    }

    if (v4 <= 1)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE TABLE IF NOT EXISTS message_log (pk INTEGER PRIMARY KEY AUTOINCREMENT, service TEXT, incoming INTEGER, timestamp REAL, delivery_time REAL, type TEXT, identifier TEXT, change_count INTEGER DEFAULT 0, msg_version INTEGER, change_version INTEGER, error TEXT, complete INTEGER DEFAULT 0)");
        ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE INDEX IF NOT EXISTS msg_by_id ON message_log (identifier ASC, timestamp DESC)");
        ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
        v3 = 0;
      }

      ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN is_request INTEGER DEFAULT 1");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN sync_id TEXT DEFAULT ''");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN request_id TEXT DEFAULT ''");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN vector_clock TEXT DEFAULT ''");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN wants_response INTEGER DEFAULT 0");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN got_response INTEGER DEFAULT 0");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE INDEX msg_by_type ON message_log (type ASC, timestamp ASC)");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE INDEX response_by_request ON message_log (request_id ASC, timestamp DESC, identifier ASC, type ASC)");
      ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
    }

    else if (v4 != 2)
    {
      if (v4 != 3)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN wants_delivery_ack INTEGER DEFAULT 0");
    ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN delivery_acked INTEGER DEFAULT 0");
    ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
LABEL_25:
    ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN proto_version INTEGER DEFAULT 0");
    ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN msg_seqno INTEGER DEFAULT 0");
    ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
LABEL_26:
    ExecuteSQL_2(*(*(a1 + 32) + 16), "ALTER TABLE message_log ADD COLUMN mach_time REAL DEFAULT 0");
    ExecuteSQL_2(*(*(a1 + 32) + 16), "DROP INDEX msg_by_id");
    ExecuteSQL_2(*(*(a1 + 32) + 16), "CREATE INDEX msg_by_id ON message_log (identifier ASC, timestamp ASC)");
    ExecuteSQL_2(*(*(a1 + 32) + 16), "INSERT INTO meta (timestamp) VALUES (datetime('now'))");
    goto LABEL_27;
  }

  if (_stats_log_pred != -1)
  {
    [SYStatisticStore _tableEmpty:];
  }

  v5 = _stats_log;
  if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Statistics DB closed before an enqueued async block could run.", buf, 2u);
  }
}

- (double)_getMachTimestamp
{
  if (_getMachTimestamp_onceToken != -1)
  {
    [SYStatisticStore _getMachTimestamp];
  }

  return *&_getMachTimestamp___scale * mach_absolute_time();
}

double __37__SYStatisticStore__getMachTimestamp__block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 * 0.000000001 / v1;
  _getMachTimestamp___scale = *&result;
  return result;
}

- (id)_keySetForMessageLogTable
{
  if (_keySetForMessageLogTable_onceToken != -1)
  {
    [SYStatisticStore _keySetForMessageLogTable];
  }

  v3 = _keySetForMessageLogTable___keyset;

  return v3;
}

void __45__SYStatisticStore__keySetForMessageLogTable__block_invoke()
{
  v5[20] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DF20];
  v5[0] = @"Duration";
  v5[1] = @"Service";
  v5[2] = @"Type";
  v5[3] = @"Identifier";
  v5[4] = @"ChangeCount";
  v5[5] = @"VectorClock";
  v5[6] = @"IsRequest";
  v5[7] = @"SyncID";
  v5[8] = @"RequestIdentifier";
  v5[9] = @"Error";
  v5[10] = @"WantsResponse";
  v5[11] = @"GotResponse";
  v5[12] = @"ChunkIndex";
  v5[13] = @"WantsDeliveryAck";
  v5[14] = @"ProtocolVersion";
  v5[15] = @"MessageSequenceNumber";
  v5[16] = @"IsResetSyncSession";
  v5[17] = @"SessionMetadata";
  v5[18] = @"WantsRollback";
  v5[19] = @"RequestAccepted";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:20];
  v2 = [v0 sharedKeySetForKeys:v1];
  v3 = _keySetForMessageLogTable___keyset;
  _keySetForMessageLogTable___keyset = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (id)_unpackMetadata:(id)a3
{
  v3 = a3;
  v4 = [SYSession unarchiveMetadata:v3];
  v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:0];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
  }

  else
  {
    v6 = [v4 description];
  }

  return v6;
}

- (void)_unpackPBRequest:(id)a3 forMessageID:(unsigned __int16)a4 intoDictionary:(id)a5
{
  v6 = a4;
  v49 = a3;
  v8 = a5;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v8 setObject:v10 forKeyedSubscript:@"Type"];

  if (v6 <= 100)
  {
    if (v6 <= 3)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          if (v6 != 3)
          {
            goto LABEL_39;
          }

          v11 = v49;
          v12 = [v11 syncID];
          [v8 setObject:v12 forKeyedSubscript:@"SyncID"];

          if ([v11 hasEstimatedChangeCount])
          {
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v11, "estimatedChangeCount")}];
            v14 = @"ChangeCount";
LABEL_24:
            [v8 setObject:v13 forKeyedSubscript:v14];
          }

LABEL_37:
          v24 = [v11 header];

          if (!v24)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        v11 = v49;
        v32 = [v11 syncID];
        [v8 setObject:v32 forKeyedSubscript:@"SyncID"];

        v33 = MEMORY[0x1E696AD98];
        v34 = [v11 allObjects];
        v35 = [v33 numberWithUnsignedInteger:{objc_msgSend(v34, "count")}];
        [v8 setObject:v35 forKeyedSubscript:@"ChangeCount"];

LABEL_36:
        [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WantsResponse"];
        goto LABEL_37;
      }

      goto LABEL_21;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
LABEL_21:
        v11 = v49;
        v25 = [v11 syncID];
LABEL_26:
        v30 = v25;
        v31 = @"SyncID";
LABEL_27:
        [v8 setObject:v30 forKeyedSubscript:v31];

        goto LABEL_36;
      }

      if (v6 != 6)
      {
        goto LABEL_39;
      }

      v20 = MEMORY[0x1E696AD98];
      v11 = v49;
      v21 = [v11 changes];
      v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
      v23 = @"ChangeCount";
LABEL_31:
      [v8 setObject:v22 forKeyedSubscript:v23];

      goto LABEL_37;
    }

    v11 = v49;
    v26 = [v11 syncID];
    [v8 setObject:v26 forKeyedSubscript:@"SyncID"];

    v27 = MEMORY[0x1E696AD98];
    v28 = [v11 objects];
    v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    [v8 setObject:v29 forKeyedSubscript:@"ChangeCount"];

    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WantsResponse"];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v11, "chunkIndex")}];
    goto LABEL_23;
  }

  if (v6 > 103)
  {
    if (v6 == 104)
    {
      v11 = v49;
      v25 = [v11 sessionID];
      goto LABEL_26;
    }

    if (v6 == 105)
    {
      v11 = v49;
      v38 = [v11 sessionID];
      [v8 setObject:v38 forKeyedSubscript:@"SyncID"];

      if ([v11 hasError])
      {
        v39 = [v11 error];
        v40 = [v39 description];
        [v8 setObject:v40 forKeyedSubscript:@"Error"];
      }

      if (![v11 hasRollback])
      {
        goto LABEL_36;
      }

      v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "rollback")}];
      v31 = @"WantsRollback";
      goto LABEL_27;
    }

    if (v6 != 0x7FFF)
    {
      goto LABEL_39;
    }
  }

  else if (v6 != 101)
  {
    if (v6 == 102)
    {
      v11 = v49;
      v36 = [v11 sessionID];
      [v8 setObject:v36 forKeyedSubscript:@"SyncID"];

      v37 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isResetSync")}];
      [v8 setObject:v37 forKeyedSubscript:@"IsResetSyncSession"];

      [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WantsResponse"];
      if (![v11 hasMetadata])
      {
        goto LABEL_37;
      }

      v21 = [v11 metadata];
      v22 = [(SYStatisticStore *)self _unpackMetadata:v21];
      v23 = @"SessionMetadata";
      goto LABEL_31;
    }

    v11 = v49;
    v15 = [v11 sessionID];
    [v8 setObject:v15 forKeyedSubscript:@"SyncID"];

    v16 = MEMORY[0x1E696AD98];
    v17 = [v11 changes];
    v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
    [v8 setObject:v18 forKeyedSubscript:@"ChangeCount"];

    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WantsResponse"];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "index")}];
LABEL_23:
    v13 = v19;
    v14 = @"ChunkIndex";
    goto LABEL_24;
  }

  v24 = [v49 header];
  if (v24)
  {
LABEL_38:
    v41 = MEMORY[0x1E696AD98];
    Current = CFAbsoluteTimeGetCurrent();
    [v24 timestamp];
    v44 = [v41 numberWithDouble:Current - v43];
    [v8 setObject:v44 forKeyedSubscript:@"Duration"];

    v45 = [v24 state];
    v46 = [v45 jsonRepresentation];
    [v8 setObject:v46 forKeyedSubscript:@"VectorClock"];

    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v24, "version")}];
    [v8 setObject:v47 forKeyedSubscript:@"ProtocolVersion"];

    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v24, "sequenceNumber")}];
    [v8 setObject:v48 forKeyedSubscript:@"MessageSequenceNumber"];
  }

LABEL_39:
}

- (void)_unpackPBResponse:(id)a3 forMessageID:(unsigned __int16)a4 intoDictionary:(id)a5
{
  v6 = a4;
  v46 = a3;
  v8 = a5;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v8 setObject:v10 forKeyedSubscript:@"Type"];

  if (v6 <= 100)
  {
    if (v6 > 3)
    {
      if (v6 == 4)
      {
        v17 = v46;
        v30 = [v17 syncID];
        [v8 setObject:v30 forKeyedSubscript:@"SyncID"];

        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v17, "chunkIndex")}];
LABEL_29:
        v18 = v31;
        v19 = @"ChunkIndex";
        goto LABEL_33;
      }

      if (v6 != 5)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v6 == 1)
      {
        v25 = v46;
        v26 = [v25 requestSyncID];
        [v8 setObject:v26 forKeyedSubscript:@"SyncID"];

        if (![v25 hasError])
        {
          goto LABEL_37;
        }

        v27 = [v25 error];
        v15 = [v27 description];

        if ([v25 hasInProgressSyncID])
        {
          v28 = [v25 inProgressSyncID];
          v29 = [v15 stringByAppendingFormat:@" InProgressSyncID=%@", v28];

          v15 = v29;
        }

        v16 = @"Error";
        goto LABEL_26;
      }

      if (v6 != 2)
      {
        goto LABEL_39;
      }
    }

    v17 = v46;
    v18 = [v17 syncID];
    v19 = @"SyncID";
LABEL_33:
    [v8 setObject:v18 forKeyedSubscript:v19];

    if (![v17 hasError])
    {
      goto LABEL_37;
    }

    v24 = v17;
    goto LABEL_35;
  }

  if (v6 <= 102)
  {
    if (v6 != 101)
    {
      v20 = v46;
      v21 = [v20 sessionID];
      [v8 setObject:v21 forKeyedSubscript:@"SyncID"];

      if ([v20 hasMetadata])
      {
        v22 = [v20 metadata];
        v23 = [(SYStatisticStore *)self _unpackMetadata:v22];
        [v8 setObject:v23 forKeyedSubscript:@"SessionMetadata"];
      }

      if (![v20 hasError])
      {
        goto LABEL_37;
      }

      v24 = v20;
LABEL_35:
      v15 = [v24 error];
      v36 = [v15 description];
      [v8 setObject:v36 forKeyedSubscript:@"Error"];

      goto LABEL_36;
    }

    v33 = v46;
    v17 = v33;
    v34 = MEMORY[0x1E696AD98];
    goto LABEL_32;
  }

  if (v6 == 103)
  {
    v17 = v46;
    v32 = [v17 sessionID];
    [v8 setObject:v32 forKeyedSubscript:@"SyncID"];

    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v17, "index")}];
    goto LABEL_29;
  }

  if (v6 == 104)
  {
    v17 = v46;
    v35 = [v17 sessionID];
    [v8 setObject:v35 forKeyedSubscript:@"SyncID"];

    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WantsResponse"];
    v34 = MEMORY[0x1E696AD98];
    v33 = v17;
LABEL_32:
    v18 = [v34 numberWithBool:{objc_msgSend(v33, "accepted")}];
    v19 = @"RequestAccepted";
    goto LABEL_33;
  }

  if (v6 != 105)
  {
    goto LABEL_39;
  }

  v11 = v46;
  v12 = [v11 sessionID];
  [v8 setObject:v12 forKeyedSubscript:@"SyncID"];

  if ([v11 hasError])
  {
    v13 = [v11 error];
    v14 = [v13 description];
    [v8 setObject:v14 forKeyedSubscript:@"Error"];
  }

  if (![v11 hasDidRollback])
  {
    goto LABEL_37;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "didRollback")}];
  v16 = @"WantsRollback";
LABEL_26:
  [v8 setObject:v15 forKeyedSubscript:v16];
LABEL_36:

LABEL_37:
  v37 = [v46 header];

  if (v37)
  {
    v38 = MEMORY[0x1E696AD98];
    Current = CFAbsoluteTimeGetCurrent();
    [v37 timestamp];
    v41 = [v38 numberWithDouble:Current - v40];
    [v8 setObject:v41 forKeyedSubscript:@"Duration"];

    v42 = [v37 state];
    v43 = [v42 jsonRepresentation];
    [v8 setObject:v43 forKeyedSubscript:@"VectorClock"];

    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v37, "version")}];
    [v8 setObject:v44 forKeyedSubscript:@"ProtocolVersion"];

    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v37, "sequenceNumber")}];
    [v8 setObject:v45 forKeyedSubscript:@"MessageSequenceNumber"];
  }

LABEL_39:
}

- (id)_unpackMessageData:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v6 = [(SYStatisticStore *)self _keySetForMessageLogTable];
  v7 = [v5 dictionaryWithSharedKeySet:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsRequest"];
    v9 = [v8 idsIdentifier];

    if (v9)
    {
      v10 = [v8 idsIdentifier];
      [v7 setObject:v10 forKeyedSubscript:@"Identifier"];
    }

    v11 = [v8 pbRequest];

    if (v11)
    {
      v12 = [v8 pbRequest];
      -[SYStatisticStore _unpackPBRequest:forMessageID:intoDictionary:](self, "_unpackPBRequest:forMessageID:intoDictionary:", v12, [v8 messageID], v7);
    }

    v13 = [v8 extraIDSOptions];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69A47E0]];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WantsDeliveryAck"];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v4;
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsRequest"];
      v17 = [v16 idsIdentifier];

      if (v17)
      {
        v18 = [v16 idsIdentifier];
        [v7 setObject:v18 forKeyedSubscript:@"Identifier"];
      }

      v19 = [v16 pbRequest];

      if (v19)
      {
        v20 = [v16 pbRequest];
        -[SYStatisticStore _unpackPBRequest:forMessageID:intoDictionary:](self, "_unpackPBRequest:forMessageID:intoDictionary:", v20, [v16 messageID], v7);
      }

      v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "expectsResponse")}];
      [v7 setObject:v21 forKeyedSubscript:@"WantsResponse"];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v4;
        [v7 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"IsRequest"];
        v23 = [v22 request];
        v24 = [v23 idsIdentifier];

        if (v24)
        {
          v25 = [v23 idsIdentifier];
          [v7 setObject:v25 forKeyedSubscript:@"RequestIdentifier"];
        }

        v26 = [v22 pbResponse];

        if (v26)
        {
          v27 = [v22 pbResponse];
          -[SYStatisticStore _unpackPBResponse:forMessageID:intoDictionary:](self, "_unpackPBResponse:forMessageID:intoDictionary:", v27, [v23 messageID], v7);
        }

        v28 = [v22 extraIDSOptions];
        v29 = [v28 objectForKeyedSubscript:*MEMORY[0x1E69A47E0]];
        v30 = [v29 BOOLValue];

        if (v30)
        {
          [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WantsDeliveryAck"];
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_30;
        }

        v31 = v4;
        [v7 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"IsRequest"];
        v32 = [v31 idsIdentifier];

        if (v32)
        {
          v33 = [v31 idsIdentifier];
          [v7 setObject:v33 forKeyedSubscript:@"Identifier"];
        }

        v34 = [v31 requestIDSIdentifier];

        if (v34)
        {
          v35 = [v31 requestIDSIdentifier];
          [v7 setObject:v35 forKeyedSubscript:@"RequestIdentifier"];
        }

        v36 = [v31 pbResponse];

        if (v36)
        {
          v37 = [v31 pbResponse];
          -[SYStatisticStore _unpackPBResponse:forMessageID:intoDictionary:](self, "_unpackPBResponse:forMessageID:intoDictionary:", v37, [v31 messageID], v7);
        }
      }
    }
  }

LABEL_30:

  return v7;
}

- (void)recordIncomingMessage:(id)a3 forService:(id)a4
{
  v6 = a4;
  v7 = [(SYStatisticStore *)self _unpackMessageData:a3];
  v8 = [v7 objectForKeyedSubscript:@"RequestIdentifier"];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"RequestIdentifier"];
    [(SYStatisticStore *)self updateOutgoingMessageWithIdentifier:v9 didReceiveResponse:1 error:0];
  }

  [(SYStatisticStore *)self _getMachTimestamp];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__SYStatisticStore_recordIncomingMessage_forService___block_invoke;
  v13[3] = &unk_1E86CBAA0;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v16 = v10;
  v11 = v6;
  v12 = v7;
  [(SYStatisticStore *)self _onQueueAsync:v13];
}

sqlite3_int64 __53__SYStatisticStore_recordIncomingMessage_forService___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"Duration"];
  [v3 doubleValue];
  sqlite3_bind_double(v2, 1, v4);

  BindString_0(*(*(a1 + 32) + 24), 2, *(a1 + 48));
  v5 = *(*(a1 + 32) + 24);
  v6 = [*(a1 + 40) objectForKeyedSubscript:@"Type"];
  BindString_0(v5, 3, v6);

  v7 = *(*(a1 + 32) + 24);
  v8 = [*(a1 + 40) objectForKeyedSubscript:@"Identifier"];
  BindString_0(v7, 4, v8);

  v9 = *(*(a1 + 32) + 24);
  v10 = [*(a1 + 40) objectForKeyedSubscript:@"ChangeCount"];
  sqlite3_bind_int(v9, 5, [v10 intValue]);

  v11 = *(*(a1 + 32) + 24);
  v12 = [*(a1 + 40) objectForKeyedSubscript:@"VectorClock"];
  BindString_0(v11, 6, v12);

  v13 = *(*(a1 + 32) + 24);
  v14 = [*(a1 + 40) objectForKeyedSubscript:@"IsRequest"];
  sqlite3_bind_int(v13, 7, [v14 BOOLValue]);

  v15 = *(*(a1 + 32) + 24);
  v16 = [*(a1 + 40) objectForKeyedSubscript:@"SyncID"];
  BindString_0(v15, 8, v16);

  v17 = *(*(a1 + 32) + 24);
  v18 = [*(a1 + 40) objectForKeyedSubscript:@"RequestIdentifier"];
  BindString_0(v17, 9, v18);

  v19 = *(*(a1 + 32) + 24);
  v20 = [*(a1 + 40) objectForKeyedSubscript:@"Error"];
  BindString_0(v19, 10, v20);

  v21 = *(*(a1 + 32) + 24);
  v22 = [*(a1 + 40) objectForKeyedSubscript:@"WantsResponse"];
  sqlite3_bind_int(v21, 11, [v22 BOOLValue]);

  v23 = *(*(a1 + 32) + 24);
  v24 = [*(a1 + 40) objectForKeyedSubscript:@"ProtocolVersion"];
  sqlite3_bind_int(v23, 12, [v24 intValue]);

  v25 = *(*(a1 + 32) + 24);
  v26 = [*(a1 + 40) objectForKeyedSubscript:@"MessageSequenceNumber"];
  sqlite3_bind_int64(v25, 13, [v26 longLongValue]);

  sqlite3_bind_double(*(*(a1 + 32) + 24), 14, *(a1 + 56));
  v27 = *(*(a1 + 32) + 24);
  v28 = [*(a1 + 40) objectForKeyedSubscript:@"ChunkIndex"];
  sqlite3_bind_int(v27, 15, [v28 intValue]);

  v29 = *(*(a1 + 32) + 24);
  v30 = [*(a1 + 40) objectForKeyedSubscript:@"IsResetSyncSession"];
  sqlite3_bind_int(v29, 16, [v30 BOOLValue]);

  v31 = *(*(a1 + 32) + 24);
  v32 = [*(a1 + 40) objectForKeyedSubscript:@"SessionMetadata"];
  v33 = [v32 description];
  BindString_0(v31, 17, v33);

  v34 = *(*(a1 + 32) + 24);
  v35 = [*(a1 + 40) objectForKeyedSubscript:@"WantsRollback"];
  sqlite3_bind_int(v34, 18, [v35 BOOLValue]);

  v36 = *(*(a1 + 32) + 24);
  v37 = [*(a1 + 40) objectForKeyedSubscript:@"RequestAccepted"];
  sqlite3_bind_int(v36, 19, [v37 BOOLValue]);

  if ((sqlite3_step(*(*(a1 + 32) + 24)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __53__SYStatisticStore_recordIncomingMessage_forService___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 24));
  sqlite3_clear_bindings(*(*(a1 + 32) + 24));
  result = sqlite3_last_insert_rowid(*(*(a1 + 32) + 16));
  *(*(a1 + 32) + 128) = result;
  return result;
}

- (void)updateLastIncomingMessageWithProcessingTime:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__SYStatisticStore_updateLastIncomingMessageWithProcessingTime___block_invoke;
  v3[3] = &unk_1E86C9F88;
  *&v3[5] = a3;
  v3[4] = self;
  [(SYStatisticStore *)self _onQueueAsync:v3];
}

uint64_t __64__SYStatisticStore_updateLastIncomingMessageWithProcessingTime___block_invoke(uint64_t a1)
{
  sqlite3_bind_int64(*(*(a1 + 32) + 32), 1, llround(*(a1 + 40) * 1000.0));
  sqlite3_bind_int64(*(*(a1 + 32) + 32), 2, *(*(a1 + 32) + 128));
  if ((sqlite3_step(*(*(a1 + 32) + 32)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __64__SYStatisticStore_updateLastIncomingMessageWithProcessingTime___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 32));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 32));
}

- (void)updateLastIncomingMessageWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__SYStatisticStore_updateLastIncomingMessageWithError___block_invoke;
  v6[3] = &unk_1E86C9E90;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SYStatisticStore *)self _onQueueAsync:v6];
}

uint64_t __55__SYStatisticStore_updateLastIncomingMessageWithError___block_invoke(uint64_t a1)
{
  BindString_0(*(*(a1 + 32) + 40), 1, *(a1 + 40));
  sqlite3_bind_int64(*(*(a1 + 32) + 40), 2, *(*(a1 + 32) + 128));
  if ((sqlite3_step(*(*(a1 + 32) + 40)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __55__SYStatisticStore_updateLastIncomingMessageWithError___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 40));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 40));
}

- (void)markLastIncomingMessageComplete
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__SYStatisticStore_markLastIncomingMessageComplete__block_invoke;
  v2[3] = &unk_1E86C9FB0;
  v2[4] = self;
  [(SYStatisticStore *)self _onQueueAsync:v2];
}

uint64_t __51__SYStatisticStore_markLastIncomingMessageComplete__block_invoke(uint64_t a1)
{
  sqlite3_bind_int64(*(*(a1 + 32) + 48), 1, *(*(a1 + 32) + 128));
  if ((sqlite3_step(*(*(a1 + 32) + 48)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __51__SYStatisticStore_markLastIncomingMessageComplete__block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 48));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 48));
}

- (void)recordOutgoingMessage:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = -1;
    [(SYStatisticStore *)self _getMachTimestamp];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__SYStatisticStore_recordOutgoingMessage_forService___block_invoke;
    v16[3] = &unk_1E86CB8E0;
    v16[6] = v8;
    v16[4] = self;
    v16[5] = &v17;
    [(SYStatisticStore *)self _onQueueSync:v16];
    if (v18[3] != -1)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
      objc_setAssociatedObject(v6, "CompanionSync.StatisticStore.ReservedRowID", v9, 1);

      v10 = [(SYStatisticStore *)self _unpackMessageData:v6];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __53__SYStatisticStore_recordOutgoingMessage_forService___block_invoke_179;
      v12[3] = &unk_1E86CBAC8;
      v12[4] = self;
      v13 = v7;
      v11 = v10;
      v14 = v11;
      v15 = &v17;
      [(SYStatisticStore *)self _onQueueAsync:v12];
    }

    _Block_object_dispose(&v17, 8);
  }
}

uint64_t __53__SYStatisticStore_recordOutgoingMessage_forService___block_invoke(uint64_t a1)
{
  sqlite3_bind_double(*(*(a1 + 32) + 88), 1, *(a1 + 48));
  if ((sqlite3_step(*(*(a1 + 32) + 88)) - 102) > 0xFFFFFFFD)
  {
    *(*(*(a1 + 40) + 8) + 24) = sqlite3_last_insert_rowid(*(*(a1 + 32) + 16));
  }

  else
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __53__SYStatisticStore_recordOutgoingMessage_forService___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 88));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 88));
}

uint64_t __53__SYStatisticStore_recordOutgoingMessage_forService___block_invoke_179(uint64_t a1)
{
  BindString_0(*(*(a1 + 32) + 56), 1, *(a1 + 40));
  v2 = *(*(a1 + 32) + 56);
  v3 = [*(a1 + 48) objectForKeyedSubscript:@"Type"];
  BindString_0(v2, 2, v3);

  v4 = *(*(a1 + 32) + 56);
  v5 = [*(a1 + 48) objectForKeyedSubscript:@"ChangeCount"];
  sqlite3_bind_int(v4, 3, [v5 intValue]);

  v6 = *(*(a1 + 32) + 56);
  v7 = [*(a1 + 48) objectForKeyedSubscript:@"VectorClock"];
  BindString_0(v6, 4, v7);

  v8 = *(*(a1 + 32) + 56);
  v9 = [*(a1 + 48) objectForKeyedSubscript:@"IsRequest"];
  sqlite3_bind_int(v8, 5, [v9 BOOLValue]);

  v10 = *(*(a1 + 32) + 56);
  v11 = [*(a1 + 48) objectForKeyedSubscript:@"SyncID"];
  BindString_0(v10, 6, v11);

  v12 = *(*(a1 + 32) + 56);
  v13 = [*(a1 + 48) objectForKeyedSubscript:@"RequestIdentifier"];
  BindString_0(v12, 7, v13);

  v14 = *(*(a1 + 32) + 56);
  v15 = [*(a1 + 48) objectForKeyedSubscript:@"WantsResponse"];
  sqlite3_bind_int(v14, 8, [v15 BOOLValue]);

  v16 = *(*(a1 + 32) + 56);
  v17 = [*(a1 + 48) objectForKeyedSubscript:@"WantsDeliveryAck"];
  sqlite3_bind_int(v16, 9, [v17 BOOLValue]);

  v18 = *(*(a1 + 32) + 56);
  v19 = [*(a1 + 48) objectForKeyedSubscript:@"ProtocolVersion"];
  sqlite3_bind_int(v18, 10, [v19 intValue]);

  v20 = *(*(a1 + 32) + 56);
  v21 = [*(a1 + 48) objectForKeyedSubscript:@"MessageSequenceNumber"];
  sqlite3_bind_int64(v20, 11, [v21 longLongValue]);

  v22 = *(*(a1 + 32) + 56);
  v23 = [*(a1 + 48) objectForKeyedSubscript:@"ChunkIndex"];
  sqlite3_bind_int(v22, 12, [v23 intValue]);

  v24 = *(*(a1 + 32) + 56);
  v25 = [*(a1 + 48) objectForKeyedSubscript:@"IsResetSyncSession"];
  sqlite3_bind_int(v24, 13, [v25 BOOLValue]);

  v26 = *(*(a1 + 32) + 56);
  v27 = [*(a1 + 48) objectForKeyedSubscript:@"SessionMetadata"];
  v28 = [v27 description];
  BindString_0(v26, 14, v28);

  v29 = *(*(a1 + 32) + 56);
  v30 = [*(a1 + 48) objectForKeyedSubscript:@"WantsRollback"];
  sqlite3_bind_int(v29, 15, [v30 BOOLValue]);

  v31 = *(*(a1 + 32) + 56);
  v32 = [*(a1 + 48) objectForKeyedSubscript:@"RequestAccepted"];
  sqlite3_bind_int(v31, 16, [v32 BOOLValue]);

  sqlite3_bind_int64(*(*(a1 + 32) + 56), 17, *(*(*(a1 + 56) + 8) + 24));
  if ((sqlite3_step(*(*(a1 + 32) + 56)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __53__SYStatisticStore_recordOutgoingMessage_forService___block_invoke_179_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 56));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 56));
}

- (void)assignIdentifier:(id)a3 toOutgoingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_getAssociatedObject(v7, "CompanionSync.StatisticStore.ReservedRowID");
  if (v8 || ([(SYStatisticStore *)self recordOutgoingMessage:v7 forService:@"<unknown>"], objc_getAssociatedObject(v7, "CompanionSync.StatisticStore.ReservedRowID"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [v8 longLongValue];
    [(SYStatisticStore *)self _getMachTimestamp];
    v12 = v11;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__SYStatisticStore_assignIdentifier_toOutgoingMessage___block_invoke;
    v13[3] = &unk_1E86CBAF0;
    v13[4] = self;
    v14 = v6;
    v15 = v12;
    v16 = v10;
    [(SYStatisticStore *)self _onQueueAsync:v13];
  }
}

uint64_t __55__SYStatisticStore_assignIdentifier_toOutgoingMessage___block_invoke(uint64_t a1)
{
  BindString_0(*(*(a1 + 32) + 64), 1, *(a1 + 40));
  sqlite3_bind_double(*(*(a1 + 32) + 64), 2, *(a1 + 48));
  sqlite3_bind_int64(*(*(a1 + 32) + 64), 3, *(a1 + 56));
  if ((sqlite3_step(*(*(a1 + 32) + 64)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __55__SYStatisticStore_assignIdentifier_toOutgoingMessage___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 64));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 64));
}

- (void)updateOutgoingMessageWithIdentifier:(id)a3 forService:(id)a4 sentSuccessfully:(BOOL)a5 sendError:(id)a6
{
  v9 = a3;
  v10 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__SYStatisticStore_updateOutgoingMessageWithIdentifier_forService_sentSuccessfully_sendError___block_invoke;
  v13[3] = &unk_1E86CBB18;
  v13[4] = self;
  v14 = v9;
  v16 = a5;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [(SYStatisticStore *)self _onQueueAsync:v13];
}

uint64_t __94__SYStatisticStore_updateOutgoingMessageWithIdentifier_forService_sentSuccessfully_sendError___block_invoke(uint64_t a1)
{
  BindString_0(*(*(a1 + 32) + 80), 1, *(a1 + 40));
  if ((sqlite3_step(*(*(a1 + 32) + 80)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __94__SYStatisticStore_updateOutgoingMessageWithIdentifier_forService_sentSuccessfully_sendError___block_invoke_cold_2();
    }
  }

  v2 = sqlite3_column_double(*(*(a1 + 32) + 80), 0);
  v3 = 0.0;
  if (v2 > 0.0)
  {
    v3 = CFAbsoluteTimeGetCurrent() - v2;
  }

  sqlite3_reset(*(*(a1 + 32) + 80));
  sqlite3_clear_bindings(*(*(a1 + 32) + 80));
  sqlite3_bind_double(*(*(a1 + 32) + 72), 1, v3);
  sqlite3_bind_int(*(*(a1 + 32) + 72), 2, *(a1 + 56));
  sqlite3_bind_int(*(*(a1 + 32) + 72), 3, 0);
  v4 = *(*(a1 + 32) + 72);
  v5 = [*(a1 + 48) localizedDescription];
  BindString_0(v4, 4, v5);

  BindString_0(*(*(a1 + 32) + 72), 5, *(a1 + 40));
  if ((sqlite3_step(*(*(a1 + 32) + 72)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __94__SYStatisticStore_updateOutgoingMessageWithIdentifier_forService_sentSuccessfully_sendError___block_invoke_cold_4();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 72));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 72));
}

- (void)updateOutgoingMessageWithIdentifier:(id)a3 didReceiveResponse:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__SYStatisticStore_updateOutgoingMessageWithIdentifier_didReceiveResponse_error___block_invoke;
  v9[3] = &unk_1E86C9E40;
  v11 = a4;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(SYStatisticStore *)self _onQueueAsync:v9];
}

uint64_t __81__SYStatisticStore_updateOutgoingMessageWithIdentifier_didReceiveResponse_error___block_invoke(uint64_t a1)
{
  sqlite3_bind_int(*(*(a1 + 32) + 96), 1, *(a1 + 48));
  BindString_0(*(*(a1 + 32) + 96), 2, *(a1 + 40));
  if ((sqlite3_step(*(*(a1 + 32) + 96)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __81__SYStatisticStore_updateOutgoingMessageWithIdentifier_didReceiveResponse_error___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 96));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 96));
}

- (void)confirmDeliveryOfOutgoingMessage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SYStatisticStore_confirmDeliveryOfOutgoingMessage___block_invoke;
  v6[3] = &unk_1E86C9E90;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SYStatisticStore *)self _onQueueAsync:v6];
}

uint64_t __53__SYStatisticStore_confirmDeliveryOfOutgoingMessage___block_invoke(uint64_t a1)
{
  BindString_0(*(*(a1 + 32) + 104), 1, *(a1 + 40));
  if ((sqlite3_step(*(*(a1 + 32) + 104)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __53__SYStatisticStore_confirmDeliveryOfOutgoingMessage___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 104));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 104));
}

- (void)recordIncomingFileTransferAtURL:(id)a3 metadata:(id)a4 identifier:(id)a5 forService:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(SYStatisticStore *)self _getMachTimestamp];
  v15 = v14;
  v16 = [v11 objectForKeyedSubscript:@"EnqueuedAt"];
  if (v16)
  {
    v17 = objc_opt_new();
    [v17 timeIntervalSinceDate:v16];
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83__SYStatisticStore_recordIncomingFileTransferAtURL_metadata_identifier_forService___block_invoke;
  v24[3] = &unk_1E86CBB40;
  v24[4] = self;
  v25 = v10;
  v26 = v13;
  v27 = v12;
  v28 = v11;
  v29 = v15;
  v30 = v19;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v10;
  [(SYStatisticStore *)self _onQueueAsync:v24];
}

uint64_t __83__SYStatisticStore_recordIncomingFileTransferAtURL_metadata_identifier_forService___block_invoke(uint64_t a1)
{
  sqlite3_bind_int(*(*(a1 + 32) + 112), 1, 1);
  v2 = *(*(a1 + 32) + 112);
  v3 = [*(a1 + 40) absoluteString];
  BindString_0(v2, 2, v3);

  BindString_0(*(*(a1 + 32) + 112), 3, *(a1 + 48));
  BindString_0(*(*(a1 + 32) + 112), 4, *(a1 + 56));
  v4 = *(*(a1 + 32) + 112);
  v5 = [*(a1 + 64) objectForKeyedSubscript:@"PeerID"];
  BindString_0(v4, 5, v5);

  sqlite3_bind_double(*(*(a1 + 32) + 112), 6, *(a1 + 72));
  sqlite3_bind_double(*(*(a1 + 32) + 112), 7, *(a1 + 80));
  if ((sqlite3_step(*(*(a1 + 32) + 112)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __83__SYStatisticStore_recordIncomingFileTransferAtURL_metadata_identifier_forService___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 112));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 112));
}

- (void)recordOutgoingFileTransferAtURL:(id)a3 metadata:(id)a4 identifier:(id)a5 error:(id)a6 forService:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  [(SYStatisticStore *)self _getMachTimestamp];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__SYStatisticStore_recordOutgoingFileTransferAtURL_metadata_identifier_error_forService___block_invoke;
  v20[3] = &unk_1E86CBB68;
  v20[4] = self;
  v21 = v11;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  v25 = v15;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v11;
  [(SYStatisticStore *)self _onQueueAsync:v20];
}

uint64_t __89__SYStatisticStore_recordOutgoingFileTransferAtURL_metadata_identifier_error_forService___block_invoke(uint64_t a1)
{
  sqlite3_bind_int(*(*(a1 + 32) + 112), 1, 0);
  v2 = *(*(a1 + 32) + 112);
  v3 = [*(a1 + 40) absoluteString];
  BindString_0(v2, 2, v3);

  BindString_0(*(*(a1 + 32) + 112), 3, *(a1 + 48));
  BindString_0(*(*(a1 + 32) + 112), 4, *(a1 + 56));
  v4 = *(*(a1 + 32) + 112);
  v5 = [*(a1 + 64) objectForKeyedSubscript:@"PeerID"];
  BindString_0(v4, 5, v5);

  sqlite3_bind_double(*(*(a1 + 32) + 112), 6, *(a1 + 72));
  if ((sqlite3_step(*(*(a1 + 32) + 112)) - 102) <= 0xFFFFFFFD)
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __89__SYStatisticStore_recordOutgoingFileTransferAtURL_metadata_identifier_error_forService___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 112));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 112));
}

- (void)updateOutgoingFileTransferWithIdentifier:(id)a3 sentSuccessfully:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__SYStatisticStore_updateOutgoingFileTransferWithIdentifier_sentSuccessfully_error___block_invoke;
  v12[3] = &unk_1E86CBB18;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(SYStatisticStore *)self _onQueueAsync:v12];
}

void __84__SYStatisticStore_updateOutgoingFileTransferWithIdentifier_sentSuccessfully_error___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "SELECT timestamp FROM file_transfer_log WHERE identifier=? ORDER BY timestamp DESC LIMIT 1", -1, &ppStmt, 0))
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __84__SYStatisticStore_updateOutgoingFileTransferWithIdentifier_sentSuccessfully_error___block_invoke_cold_2();
    }
  }

  else
  {
    BindString_0(ppStmt, 1, *(a1 + 40));
    if ((sqlite3_step(ppStmt) - 102) <= 0xFFFFFFFD)
    {
      if (_stats_log_pred != -1)
      {
        [SYStatisticStore _tableEmpty:];
      }

      if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
      {
        __94__SYStatisticStore_updateOutgoingMessageWithIdentifier_forService_sentSuccessfully_sendError___block_invoke_cold_2();
      }
    }

    v2 = sqlite3_column_double(ppStmt, 0);
    v3 = 0.0;
    if (v2 > 0.0)
    {
      v3 = CFAbsoluteTimeGetCurrent() - v2;
    }

    sqlite3_reset(ppStmt);
    sqlite3_clear_bindings(ppStmt);
    sqlite3_finalize(ppStmt);
    sqlite3_bind_double(*(*(a1 + 32) + 72), 1, v3);
    sqlite3_bind_int(*(*(a1 + 32) + 72), 2, *(a1 + 56));
    v4 = *(*(a1 + 32) + 72);
    v5 = [*(a1 + 48) localizedDescription];
    BindString_0(v4, 3, v5);

    BindString_0(*(*(a1 + 32) + 72), 4, *(a1 + 40));
    if ((sqlite3_step(*(*(a1 + 32) + 72)) - 102) <= 0xFFFFFFFD)
    {
      if (_stats_log_pred != -1)
      {
        [SYStatisticStore _tableEmpty:];
      }

      if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
      {
        __94__SYStatisticStore_updateOutgoingMessageWithIdentifier_forService_sentSuccessfully_sendError___block_invoke_cold_4();
      }
    }

    sqlite3_reset(*(*(a1 + 32) + 72));
    sqlite3_clear_bindings(*(*(a1 + 32) + 72));
  }
}

- (void)confirmDeliveryOfOutgoingFileTransfer:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SYStatisticStore_confirmDeliveryOfOutgoingFileTransfer___block_invoke;
  v6[3] = &unk_1E86C9E90;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SYStatisticStore *)self _onQueueAsync:v6];
}

void __58__SYStatisticStore_confirmDeliveryOfOutgoingFileTransfer___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(*(*(a1 + 32) + 16), "UPDATE message_log SET delivery_acked=1 WHERE identifier=?", -1, &ppStmt, 0))
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __53__SYStatisticStore_confirmDeliveryOfOutgoingMessage___block_invoke_cold_2();
    }
  }

  else
  {
    BindString_0(ppStmt, 1, *(a1 + 40));
    if ((sqlite3_step(ppStmt) - 102) <= 0xFFFFFFFD)
    {
      if (_stats_log_pred != -1)
      {
        [SYStatisticStore _tableEmpty:];
      }

      if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
      {
        __53__SYStatisticStore_confirmDeliveryOfOutgoingMessage___block_invoke_cold_2();
      }
    }

    sqlite3_reset(ppStmt);
    sqlite3_clear_bindings(ppStmt);
    sqlite3_finalize(ppStmt);
  }
}

- (unint64_t)rowIDForPartialMessage:(id)a3
{
  v3 = objc_getAssociatedObject(a3, "CompanionSync.StatisticStore.ReservedRowID");
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (void)setFileTransferIdentifier:(id)a3 forOutgoingMessagesWithRowIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__SYStatisticStore_setFileTransferIdentifier_forOutgoingMessagesWithRowIDs___block_invoke;
  v10[3] = &unk_1E86CA0F8;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(SYStatisticStore *)self _onQueueAsync:v10];
}

void __76__SYStatisticStore_setFileTransferIdentifier_forOutgoingMessagesWithRowIDs___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AD60]);
  v3 = *(a1 + 32);
  [*(a1 + 40) _getMachTimestamp];
  v5 = objc_msgSend(v2, "initWithFormat:", @"UPDATE message_log SET identifier='FileTransfer:%@', file_transfer_id='%@', mach_time='%f' WHERE pk IN ("), v3, v3, v4;
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__SYStatisticStore_setFileTransferIdentifier_forOutgoingMessagesWithRowIDs___block_invoke_2;
  v8[3] = &unk_1E86CBB90;
  v7 = v5;
  v9 = v7;
  v10 = *(a1 + 48);
  [v6 enumerateIndexesUsingBlock:v8];
  [v7 appendString:@""]);
  if (ExecuteSQL_2(*(*(a1 + 40) + 16), [v7 UTF8String]))
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      __76__SYStatisticStore_setFileTransferIdentifier_forOutgoingMessagesWithRowIDs___block_invoke_cold_2();
    }
  }
}

unint64_t __76__SYStatisticStore_setFileTransferIdentifier_forOutgoingMessagesWithRowIDs___block_invoke_2(uint64_t a1, unint64_t a2)
{
  [*(a1 + 32) appendFormat:@"'%lu'", a2];
  result = [*(a1 + 40) lastIndex];
  if (result > a2)
  {
    v5 = *(a1 + 32);

    return [v5 appendString:{@", "}];
  }

  return result;
}

- (void)_initializeFilePresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  presenterOperationQueue = self->_presenterOperationQueue;
  self->_presenterOperationQueue = v3;

  operations_queue = self->_operations_queue;
  v5 = self->_presenterOperationQueue;

  [(NSOperationQueue *)v5 setUnderlyingQueue:operations_queue];
}

- (NSURL)presentedItemURL
{
  v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:self->_path isDirectory:0];

  return v2;
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_db)
  {
    if ([(SYStatisticStore *)self _closeDB])
    {
      if (_stats_log_pred != -1)
      {
        [SYStatisticStore _tableEmpty:];
      }

      if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
      {
        [SYStatisticStore(NSFilePresentation) accommodatePresentedItemDeletionWithCompletionHandler:];
      }
    }

    self->_db = 0;
  }

  v4[2](v4, 0);
}

- (void)presentedItemDidMoveToURL:(id)a3
{
  v7 = [a3 URLByAppendingPathComponent:@"statistics.db"];
  v4 = [v7 absoluteURL];
  v5 = [v4 path];
  path = self->_path;
  self->_path = v5;
}

+ (id)unpackMessageData:(id)a3
{
  v3 = a3;
  v4 = +[SYStatisticStore sharedInstance];
  v5 = [v4 _unpackMessageData:v3];

  return v5;
}

- (id)_LOCKED_allServiceNames
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, "SELECT DISTINCT service FROM message_log", -1, &ppStmt, 0))
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      [SYStatisticStore(DatabaseTidying) _LOCKED_allServiceNames];
    }

    v2 = 0;
  }

  else
  {
    v3 = objc_opt_new();
    while (1)
    {
      v4 = sqlite3_step(ppStmt);
      if (v4 != 100)
      {
        break;
      }

      v5 = sqlite3_column_text(ppStmt, 0);
      if (v5)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
        if (v6)
        {
          v7 = v6;
          [v3 addObject:v6];
        }
      }
    }

    if (!v4 || v4 == 101)
    {
      goto LABEL_19;
    }

    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      [SYStatisticStore(DatabaseTidying) _LOCKED_allServiceNames];
    }

    if ([v3 count])
    {
LABEL_19:
      sqlite3_finalize(ppStmt);
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (BOOL)_LOCKED_pruneMessageLogForServices:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, "DELETE FROM message_log WHERE service=? ORDER BY pk DESC LIMIT -1 OFFSET 250", -1, &ppStmt, 0))
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      [SYStatisticStore(DatabaseTidying) _LOCKED_pruneMessageLogForServices:];
    }

    ExecuteSQL_2(self->_db, "ROLLBACK");
    v5 = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          BindString_0(ppStmt, 1, *(*(&v14 + 1) + 8 * i));
          v11 = sqlite3_step(ppStmt);
          if (v11 && v11 != 101)
          {
            if (_stats_log_pred != -1)
            {
              [SYStatisticStore _tableEmpty:];
            }

            if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
            {
              [SYStatisticStore(DatabaseTidying) _LOCKED_pruneMessageLogForServices:];
            }

            v5 = 0;
            goto LABEL_22;
          }

          sqlite3_reset(ppStmt);
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 1;
LABEL_22:

    sqlite3_finalize(ppStmt);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)_LOCKED_pruneFileTransferLogForServices:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, "DELETE FROM file_transfer_log WHERE service=? ORDER BY pk DESC LIMIT -1 OFFSET 250", -1, &ppStmt, 0))
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      [SYStatisticStore(DatabaseTidying) _LOCKED_pruneMessageLogForServices:];
    }

    ExecuteSQL_2(self->_db, "ROLLBACK");
    v5 = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          BindString_0(ppStmt, 1, *(*(&v14 + 1) + 8 * i));
          v11 = sqlite3_step(ppStmt);
          if (v11 && v11 != 101)
          {
            if (_stats_log_pred != -1)
            {
              [SYStatisticStore _tableEmpty:];
            }

            if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
            {
              [SYStatisticStore(DatabaseTidying) _LOCKED_pruneMessageLogForServices:];
            }

            v5 = 0;
            goto LABEL_22;
          }

          sqlite3_reset(ppStmt);
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 1;
LABEL_22:

    sqlite3_finalize(ppStmt);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_pruneOldData
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__SYStatisticStore_DatabaseTidying___pruneOldData__block_invoke;
  v2[3] = &unk_1E86C9FB0;
  v2[4] = self;
  [(SYStatisticStore *)self _onQueueAsync:v2];
}

void __50__SYStatisticStore_DatabaseTidying___pruneOldData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _LOCKED_allServiceNames];
  if (v2)
  {
    if (ExecuteSQL_2(*(*(a1 + 32) + 16), "BEGIN EXCLUSIVE TRANSACTION"))
    {
      if (_stats_log_pred != -1)
      {
        [SYStatisticStore _tableEmpty:];
      }

      if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
      {
        __50__SYStatisticStore_DatabaseTidying___pruneOldData__block_invoke_cold_2();
      }
    }

    else if ([*(a1 + 32) _LOCKED_pruneMessageLogForServices:v2] && objc_msgSend(*(a1 + 32), "_LOCKED_pruneFileTransferLogForServices:", v2))
    {
      if (ExecuteSQL_2(*(*(a1 + 32) + 16), "COMMIT"))
      {
        if (_stats_log_pred != -1)
        {
          [SYStatisticStore _tableEmpty:];
        }

        if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
        {
          __50__SYStatisticStore_DatabaseTidying___pruneOldData__block_invoke_cold_4();
        }
      }
    }

    else
    {
      ExecuteSQL_2(*(*(a1 + 32) + 16), "ROLLBACK");
    }
  }
}

- (void)_tableEmpty:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error checking for empty table - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_ensureCorrectFileOwnership:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *__error();
  v6 = 138543618;
  v7 = a1;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_1DF835000, v3, OS_LOG_TYPE_ERROR, "Error chowning path %{public}@, error: %d", &v6, 0x12u);

  v5 = *MEMORY[0x1E69E9840];
}

void __32__SYStatisticStore__openDBFile___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __32__SYStatisticStore__openDBFile___block_invoke_92_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Failed to open statistics DB - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_getSchemaVersion
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error fetching schema version - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_10()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_12()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_14()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_16()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_18()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_20()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_22()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_24()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SYStatisticStore__openDB__block_invoke_cold_26()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __53__SYStatisticStore_recordIncomingMessage_forService___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error inserting incoming message - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__SYStatisticStore_updateLastIncomingMessageWithProcessingTime___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error adding processing time to incoming message - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__SYStatisticStore_updateLastIncomingMessageWithError___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Failed to add error to incoming message - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__SYStatisticStore_markLastIncomingMessageComplete__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error marking incoming message as complete - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__SYStatisticStore_recordOutgoingMessage_forService___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error reserving db row for outgoing message - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__SYStatisticStore_recordOutgoingMessage_forService___block_invoke_179_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error inserting outgoing message - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__SYStatisticStore_assignIdentifier_toOutgoingMessage___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error recording identifier for outgoing message - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __94__SYStatisticStore_updateOutgoingMessageWithIdentifier_forService_sentSuccessfully_sendError___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error finding timestamp for ID - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __94__SYStatisticStore_updateOutgoingMessageWithIdentifier_forService_sentSuccessfully_sendError___block_invoke_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error updating outgoing message for ID - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __81__SYStatisticStore_updateOutgoingMessageWithIdentifier_didReceiveResponse_error___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error while updating response state for outgoing message - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__SYStatisticStore_confirmDeliveryOfOutgoingMessage___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error while recording delivery confirmation for outgoing message - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __83__SYStatisticStore_recordIncomingFileTransferAtURL_metadata_identifier_forService___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error while recording incoming file transfer - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __89__SYStatisticStore_recordOutgoingFileTransferAtURL_metadata_identifier_error_forService___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error while recording outgoing file transfer - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __84__SYStatisticStore_updateOutgoingFileTransferWithIdentifier_sentSuccessfully_error___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Error while updating outgoing file transfer for send-success notification - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__SYStatisticStore_setFileTransferIdentifier_forOutgoingMessagesWithRowIDs___block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_5(&dword_1DF835000, v0, v1, "Error bulk-updating identifiers (statement = %{public}@) - %{companionsync:sqlite3err, public}d");
  v2 = *MEMORY[0x1E69E9840];
}

void __50__SYStatisticStore_DatabaseTidying___pruneOldData__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Failed to create transaction for DB prune - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__SYStatisticStore_DatabaseTidying___pruneOldData__block_invoke_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "Prune transaction failed to commit - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end