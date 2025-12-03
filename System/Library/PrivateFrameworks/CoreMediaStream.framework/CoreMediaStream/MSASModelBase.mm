@interface MSASModelBase
- (MSASModelBase)initWithPersonID:(id)d databasePath:(id)path currentVersion:(int)version;
- (id)dbQueuePersistentDataForKey:(id)key;
- (id)dbQueuePersistentObjectForKey:(id)key;
- (id)dbQueuePersistentStringForKey:(id)key;
- (id)persistentObjectForKey:(id)key;
- (id)persistentStringForKey:(id)key;
- (sqlite3)db;
- (sqlite3_stmt)statementForString:(id)string;
- (void)beginTransaction;
- (void)dbQueueBeginTransaction;
- (void)dbQueueDeletePersistentValueWithKey:(id)key;
- (void)dbQueueEndTransaction;
- (void)dbQueueRollbackTransaction;
- (void)dbQueueSetPersistentData:(id)data forKey:(id)key;
- (void)dbQueueSetPersistentObject:(id)object forKey:(id)key;
- (void)dbQueueSetPersistentString:(id)string forKey:(id)key;
- (void)deletePersistentValueWithKey:(id)key;
- (void)endTransaction;
- (void)setPersistentObject:(id)object forKey:(id)key;
- (void)setPersistentString:(id)string forKey:(id)key;
- (void)shutDownForDestruction:(BOOL)destruction completionBlock:(id)block;
@end

@implementation MSASModelBase

- (void)dbQueueRollbackTransaction
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Rolling back transaction.", &v8, 0xCu);
  }

  v3 = [(MSASModelBase *)self statementForString:@"rollback transaction;"];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (!v5)
  {
    v6 = sqlite3_step(v3);
    MSSqliteTrapForDBLockError(v6);
  }

  sqlite3_reset(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dbQueueEndTransaction
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Ending transaction.", &v8, 0xCu);
  }

  v3 = [(MSASModelBase *)self statementForString:@"release savepoint save;"];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (!v5)
  {
    v6 = sqlite3_step(v3);
    MSSqliteTrapForDBLockError(v6);
  }

  sqlite3_reset(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)endTransaction
{
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MSASModelBase_endTransaction__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

- (void)dbQueueBeginTransaction
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Beginning transaction.", &v8, 0xCu);
  }

  v3 = [(MSASModelBase *)self statementForString:@"savepoint save;"];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (!v5)
  {
    v6 = sqlite3_step(v3);
    MSSqliteTrapForDBLockError(v6);
  }

  sqlite3_reset(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)beginTransaction
{
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MSASModelBase_beginTransaction__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

- (void)dbQueueDeletePersistentValueWithKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = 138543618;
    selfCopy2 = self;
    v15 = 2114;
    v16 = keyCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Deleting persistent value for key %{public}@.", &v13, 0x16u);
  }

  v5 = [(MSASModelBase *)self statementForString:@"delete from Properties where key = ?;"];
  v6 = sqlite3_reset(v5);
  v7 = v6;
  MSSqliteTrapForDBLockError(v6);
  if (v7 || (v8 = sqlite3_bind_text(v5, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), v9 = v8, MSSqliteTrapForDBLockError(v8), v9) || (v10 = sqlite3_step(v5), v11 = v10, MSSqliteTrapForDBLockError(v10), v11 != 101))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = keyCopy;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not delete persistent value for key %{public}@.", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dbQueueSetPersistentObject:(id)object forKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v14 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:object requiringSecureCoding:1 error:&v14];
  v8 = v14;
  v9 = v8;
  if (!v7)
  {
    v10 = MEMORY[0x277CCACA8];
    userInfo = [v8 userInfo];
    v12 = [v10 stringWithFormat:@"Failed to archive an object. Error: %@ Info: %@", v9, userInfo];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  [(MSASModelBase *)self dbQueueSetPersistentData:v7 forKey:keyCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dbQueueSetPersistentString:(id)string forKey:(id)key
{
  keyCopy = key;
  v7 = [string dataUsingEncoding:4];
  [(MSASModelBase *)self dbQueueSetPersistentData:v7 forKey:keyCopy];
}

- (void)dbQueueSetPersistentData:(id)data forKey:(id)key
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = 138543618;
    selfCopy2 = self;
    v23 = 2114;
    v24 = keyCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Setting persistent value for key %{public}@.", &v21, 0x16u);
    if (dataCopy)
    {
LABEL_3:
      v8 = [(MSASModelBase *)self statementForString:@"insert or replace into Properties (key, value) values (?, ?);"];
      v9 = sqlite3_reset(v8);
      v10 = v9;
      MSSqliteTrapForDBLockError(v9);
      if (v10)
      {
        goto LABEL_11;
      }

      v11 = sqlite3_bind_text(v8, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      v12 = v11;
      MSSqliteTrapForDBLockError(v11);
      if (v12)
      {
        goto LABEL_11;
      }

      v13 = [dataCopy length];
      if (v13 >> 31)
      {
        __assert_rtn("[MSASModelBase dbQueueSetPersistentData:forKey:]", "MSASModelBase.m", 384, "dataLength <= INT_MAX");
      }

      v14 = sqlite3_bind_blob(v8, 2, [dataCopy bytes], v13, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_10;
    }
  }

  else if (dataCopy)
  {
    goto LABEL_3;
  }

  v8 = [(MSASModelBase *)self statementForString:@"delete from Properties where key = ?;"];
  v15 = sqlite3_reset(v8);
  v16 = v15;
  MSSqliteTrapForDBLockError(v15);
  if (v16)
  {
    goto LABEL_11;
  }

  v14 = sqlite3_bind_text(v8, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
LABEL_10:
  v17 = v14;
  MSSqliteTrapForDBLockError(v14);
  if (!v17)
  {
    v19 = sqlite3_step(v8);
    v20 = v19;
    MSSqliteTrapForDBLockError(v19);
    sqlite3_reset(v8);
    if (v20 == 101)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_11:
  sqlite3_reset(v8);
LABEL_12:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v21 = 138543618;
    selfCopy2 = self;
    v23 = 2114;
    v24 = keyCopy;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not set persistent value for key %{public}@.", &v21, 0x16u);
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)dbQueuePersistentObjectForKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(MSASModelBase *)self dbQueuePersistentDataForKey:keyCopy];
  if (v5)
  {
    v10 = 0;
    v6 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v5 outError:&v10];
    v7 = v10;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v13 = 2114;
        v14 = v6;
        v15 = 2114;
        v16 = keyCopy;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieved persistent object %{public}@ for key %{public}@.", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v13 = 2114;
      v14 = keyCopy;
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not unarchive persistent object for key %{public}@: %@", buf, 0x20u);
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dbQueuePersistentStringForKey:(id)key
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(MSASModelBase *)self dbQueuePersistentDataForKey:keyCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = 138543874;
    selfCopy = self;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = keyCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieved persistent string %{public}@ for key %{public}@.", &v9, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dbQueuePersistentDataForKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = 138543618;
    selfCopy2 = self;
    v18 = 2114;
    v19 = keyCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieving persistent value for key: %{public}@", &v16, 0x16u);
  }

  v5 = [(MSASModelBase *)self statementForString:@"select value from Properties where key = ?"];
  v6 = 1;
  v7 = sqlite3_bind_text(v5, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v7;
  MSSqliteTrapForDBLockError(v7);
  if (v8)
  {
LABEL_4:
    v9 = 0;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = sqlite3_step(v5);
  if (v13 == 101)
  {
    v6 = 0;
    goto LABEL_4;
  }

  v14 = v13;
  if (v13 != 100)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = 138543874;
      selfCopy2 = self;
      v18 = 2114;
      v19 = keyCopy;
      v20 = 1024;
      v21 = v14;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot retrieve persistent value for key %{public}@. sqlite status: %d", &v16, 0x1Cu);
    }

    goto LABEL_4;
  }

  v15 = sqlite3_column_blob(v5, 0);
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:{sqlite3_column_bytes(v5, 0)}];
  v6 = 0;
  if (v5)
  {
LABEL_5:
    sqlite3_reset(v5);
  }

LABEL_6:
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)deletePersistentValueWithKey:(id)key
{
  keyCopy = key;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__MSASModelBase_deletePersistentValueWithKey___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(dbQueue, v7);
}

- (void)setPersistentObject:(id)object forKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v20 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:object requiringSecureCoding:1 error:&v20];
  v8 = v20;
  v9 = v8;
  if (!v7)
  {
    v10 = MEMORY[0x277CCACA8];
    userInfo = [v8 userInfo];
    v12 = [v10 stringWithFormat:@"Failed to archive an object. Error: %@ Info: %@", v9, userInfo];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v12;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__MSASModelBase_setPersistentObject_forKey___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v18 = v7;
  v19 = keyCopy;
  v14 = keyCopy;
  v15 = v7;
  dispatch_async(dbQueue, block);

  v16 = *MEMORY[0x277D85DE8];
}

- (id)persistentObjectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5293;
  v16 = __Block_byref_object_dispose__5294;
  v17 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSASModelBase_persistentObjectForKey___block_invoke;
  block[3] = &unk_278E91C78;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(dbQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __40__MSASModelBase_persistentObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueuePersistentObjectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setPersistentString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__MSASModelBase_setPersistentString_forKey___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = stringCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = stringCopy;
  dispatch_async(dbQueue, block);
}

- (id)persistentStringForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5293;
  v16 = __Block_byref_object_dispose__5294;
  v17 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSASModelBase_persistentStringForKey___block_invoke;
  block[3] = &unk_278E91C78;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(dbQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __40__MSASModelBase_persistentStringForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueuePersistentStringForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (sqlite3_stmt)statementForString:(id)string
{
  stringCopy = string;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (stringCopy)
  {
    statementQueue = [(MSASModelBase *)self statementQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__MSASModelBase_statementForString___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v9 = stringCopy;
    v10 = &v11;
    dispatch_sync(statementQueue, block);

    v6 = v12[3];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __36__MSASModelBase_statementForString___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (!v3)
  {
LABEL_5:
    ppStmt = 0;
    if (sqlite3_prepare_v2(*(v2 + 16), [*(a1 + 40) UTF8String], -1, &ppStmt, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v9 = sqlite3_errmsg(*(v7 + 16));
        *buf = 138543874;
        v12 = v7;
        v13 = 2114;
        v14 = v8;
        v15 = 2082;
        v16 = v9;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not compile SQL query: %{public}@. sqlite error: %{public}s", buf, 0x20u);
      }
    }

    else if (ppStmt)
    {
      CFDictionarySetValue(*(*(a1 + 32) + 32), *(a1 + 40), ppStmt);
      v5 = ppStmt;
      goto LABEL_11;
    }

    v5 = 0;
LABEL_11:
    *(*(*(a1 + 48) + 8) + 24) = v5;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v3, *(a1 + 40));
  if (!Value)
  {
    v2 = *(a1 + 32);
    goto LABEL_5;
  }

  *(*(*(a1 + 48) + 8) + 24) = Value;
LABEL_12:
  v6 = *MEMORY[0x277D85DE8];
}

- (void)shutDownForDestruction:(BOOL)destruction completionBlock:(id)block
{
  destructionCopy = destruction;
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 1024;
    v15 = destructionCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Shutting down. For destruction: %d", buf, 0x12u);
  }

  dbQueue = [(MSASModelBase *)self dbQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__MSASModelBase_shutDownForDestruction_completionBlock___block_invoke;
  v10[3] = &unk_278E927A0;
  v10[4] = self;
  v11 = blockCopy;
  v8 = blockCopy;
  dispatch_async(dbQueue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __56__MSASModelBase_shutDownForDestruction_completionBlock___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statementQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MSASModelBase_shutDownForDestruction_completionBlock___block_invoke_2;
  block[3] = &unk_278E926D8;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);

  v3 = *(*(a1 + 32) + 16);
  if (v3)
  {
    if (sqlite3_close(v3) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = sqlite3_errmsg(*(v7 + 16));
      *buf = 138543618;
      v11 = v7;
      v12 = 2082;
      v13 = v8;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Can't shut down. sqlite error: %{public}s. Ignoring.", buf, 0x16u);
    }

    *(*(a1 + 32) + 16) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    dispatch_async(v5, v4);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __56__MSASModelBase_shutDownForDestruction_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    if (Count)
    {
      v4 = Count;
      v5 = 8 * Count;
      v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      v7 = malloc_type_malloc(v5, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(*(*(a1 + 32) + 32), v6, v7);
      if (v4 >= 1)
      {
        v8 = v7;
        do
        {
          v9 = *v8++;
          sqlite3_finalize(v9);
          --v4;
        }

        while (v4);
      }

      free(v6);
      free(v7);
    }

    CFRelease(*(*(a1 + 32) + 32));
    *(*(a1 + 32) + 32) = 0;
  }
}

- (sqlite3)db
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __19__MSASModelBase_db__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (MSASModelBase)initWithPersonID:(id)d databasePath:(id)path currentVersion:(int)version
{
  dCopy = d;
  pathCopy = path;
  v30.receiver = self;
  v30.super_class = MSASModelBase;
  v11 = [(MSASModelBase *)&v30 init];
  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"MSASModelBase statement queue - %@", v14];

    v16 = dispatch_queue_create([v15 UTF8String], 0);
    statementQueue = v11->_statementQueue;
    v11->_statementQueue = v16;

    v18 = MEMORY[0x277CCACA8];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 stringWithFormat:@"MSASModelBase db queue - %@", v20];

    v22 = dispatch_queue_create([v21 UTF8String], 0);
    dbQueue = v11->_dbQueue;
    v11->_dbQueue = v22;

    objc_storeStrong(&v11->_personID, d);
    v11->_statements = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], &initWithPersonID_databasePath_currentVersion__doNothingCallbacks);
    dbQueue = [(MSASModelBase *)v11 dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__MSASModelBase_initWithPersonID_databasePath_currentVersion___block_invoke;
    block[3] = &unk_278E91F20;
    v27 = v11;
    v28 = pathCopy;
    versionCopy = version;
    dispatch_sync(dbQueue, block);
  }

  return v11;
}

@end