@interface BCSPersistentStore
- (BCSPersistentStore)init;
- (BOOL)deleteDatabaseFile;
- (void)beginBatch;
- (void)dealloc;
- (void)endBatch;
@end

@implementation BCSPersistentStore

- (BCSPersistentStore)init
{
  v8.receiver = self;
  v8.super_class = BCSPersistentStore;
  v2 = [(BCSPersistentStore *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_batchCount = 0;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(objc_opt_class(), "debugQueueName")}];
    Serial = BSDispatchQueueCreateSerial();
    queue = v3->_queue;
    v3->_queue = Serial;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_batchCount >= 1)
  {
    v3 = ABSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v3, OS_LOG_TYPE_ERROR, "Dealloc'ing BCSPersistentStore with an unbalanced batchCount", buf, 2u);
    }
  }

  v4.receiver = self;
  v4.super_class = BCSPersistentStore;
  [(BCSPersistentStore *)&v4 dealloc];
}

- (BOOL)deleteDatabaseFile
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  databasePath = [(BCSPersistentStore *)self databasePath];
  v5 = [defaultManager removeItemAtPath:databasePath error:0];

  return v5;
}

void __51__BCSPersistentStore_queue_openDatabaseIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ABSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *ppDb = 138412290;
    *&ppDb[4] = v3;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Creating database at path: %@", ppDb, 0xCu);
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + 40);
  dispatch_assert_queue_V2(v6);
  *ppDb = 0;
  v8 = [v7 UTF8String];

  v9 = sqlite3_open_v2(v8, ppDb, 65542, 0) ? 0 : *ppDb;
  v10 = *(a1 + 32);
  if (v10)
  {
    dispatch_assert_queue_V2(v10[3]);
    v11 = sqlite3_exec(v9, [(dispatch_queue_t *)v10 schema], 0, 0, 0);
    v12 = *(a1 + 32);
    v13 = [(dispatch_queue_t *)v12 schemaVersion];
    if (v12)
    {
      v14 = v13;
      dispatch_assert_queue_V2(v12[3]);
      ppStmt = 0;
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version=%ld", v14];
      v16 = [v15 UTF8String];

      if (!sqlite3_prepare_v2(v9, v16, -1, &ppStmt, 0))
      {
        if (sqlite3_step(ppStmt) == 101)
        {
          sqlite3_finalize(ppStmt);
          if (!v11)
          {
            *(*(a1 + 32) + 8) = v9;
            goto LABEL_19;
          }
        }

        else
        {
          v17 = ABSLogCommon();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *ppDb = 134217984;
            *&ppDb[4] = v14;
            _os_log_error_impl(&dword_242072000, v17, OS_LOG_TYPE_ERROR, "Error while setting database to schema version:%ld", ppDb, 0xCu);
          }
        }
      }
    }
  }

  else
  {
LABEL_20:
    [0 schemaVersion];
  }

  v18 = ABSLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *ppDb = 138412290;
    *&ppDb[4] = v3;
    _os_log_error_impl(&dword_242072000, v18, OS_LOG_TYPE_ERROR, "Failed to create database at path:%@", ppDb, 0xCu);
  }

  v19 = [MEMORY[0x277CCAA00] defaultManager];
  [v19 removeItemAtPath:*(a1 + 40) error:0];

LABEL_19:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)beginBatch
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__BCSPersistentStore_beginBatch__block_invoke;
  block[3] = &unk_278D38CC8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __32__BCSPersistentStore_beginBatch__block_invoke(uint64_t a1)
{
  errmsg[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
LABEL_18:
      *(v1 + 16) = v2 + 1;
      goto LABEL_19;
    }

    dispatch_assert_queue_V2(*(v1 + 24));
    if (!*(v1 + 8))
    {
      v4 = [v1 databasePath];
      ppDb = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __51__BCSPersistentStore_queue_openDatabaseIfNecessary__block_invoke;
      v21 = &unk_278D38CA0;
      v22 = v1;
      v5 = v4;
      v23 = v5;
      v6 = MEMORY[0x245D07100](buf);
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [v7 fileExistsAtPath:v5];

      if (v8)
      {
        v9 = sqlite3_open_v2([v5 UTF8String], &ppDb, 65538, 0);
        if (v9)
        {
          v10 = v9;
          v11 = ABSLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LODWORD(errmsg[0]) = 67109120;
            HIDWORD(errmsg[0]) = v10;
            _os_log_error_impl(&dword_242072000, v11, OS_LOG_TYPE_ERROR, "Failed to open database: %d", errmsg, 8u);
          }
        }

        else
        {
          v15 = ppDb;
          dispatch_assert_queue_V2(*(v1 + 24));
          if (v15 && (errmsg[0] = 0, !sqlite3_prepare_v2(v15, "PRAGMA user_version", -1, errmsg, 0)))
          {
            if (sqlite3_step(errmsg[0]) == 100)
            {
              do
              {
                LODWORD(v16) = sqlite3_column_int(errmsg[0], 0);
              }

              while (sqlite3_step(errmsg[0]) == 100);
              v16 = v16;
            }

            else
            {
              v16 = -1;
            }

            sqlite3_finalize(errmsg[0]);
          }

          else
          {
            v16 = -1;
          }

          v17 = [v1 schemaVersion];
          if (v16 == v17)
          {
            *(v1 + 8) = ppDb;
          }

          else
          {
            v18 = v17;
            [v1 schemaVersionWillChangeForDatabase:ppDb fromSchemaVersion:v16 toSchemaVersion:v17];
            (v6)[2](v6, v5);
            [v1 schemaVersionDidChangeForDatabase:ppDb fromSchemaVersion:v16 toSchemaVersion:v18];
          }
        }
      }

      else
      {
        (v6)[2](v6, v5);
      }
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      errmsg[0] = 0;
      sqlite3_exec(*(v12 + 8), "BEGIN TRANSACTION", 0, 0, errmsg);
      if (errmsg[0])
      {
        v13 = ABSLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[BCSPersistentStore beginTransaction]";
          *&buf[12] = 2080;
          *&buf[14] = errmsg[0];
          _os_log_error_impl(&dword_242072000, v13, OS_LOG_TYPE_ERROR, "%s Error on beginning sqlite transaction: %s", buf, 0x16u);
        }

        sqlite3_free(errmsg[0]);
      }

      v1 = *(a1 + 32);
      if (v1)
      {
        v2 = *(v1 + 16);
        goto LABEL_18;
      }
    }
  }

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)endBatch
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BCSPersistentStore_endBatch__block_invoke;
  block[3] = &unk_278D38CC8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __30__BCSPersistentStore_endBatch__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    --*(v1 + 16);
    v3 = *(a1 + 32);
    if (v3)
    {
      if (!*(v3 + 16))
      {
        errmsg = 0;
        sqlite3_exec(*(v3 + 8), "END TRANSACTION", 0, 0, &errmsg);
        if (errmsg)
        {
          v4 = ABSLogCommon();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v10 = "[BCSPersistentStore endTransaction]";
            v11 = 2080;
            v12 = errmsg;
            _os_log_error_impl(&dword_242072000, v4, OS_LOG_TYPE_ERROR, "%s Error on ending sqlite transaction: %s", buf, 0x16u);
          }

          sqlite3_free(errmsg);
        }

        v5 = *(a1 + 32);
        if (v5)
        {
          dispatch_assert_queue_V2(*(v5 + 24));
          v6 = *(v5 + 8);
          if (v6)
          {
            sqlite3_close(v6);
            *(v5 + 8) = 0;
          }
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end