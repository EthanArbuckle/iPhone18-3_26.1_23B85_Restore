@interface HDSQLiteDatabase
+ (id)memoryDatabaseFromURL:(id)l;
+ (uint64_t)_copyContentsFromDatabase:(sqlite3 *)database toDatabase:;
- (BOOL)_executeStatementWithError:(id *)error statementProvider:(id)provider bindingHandler:(id)handler enumerationHandler:(id)enumerationHandler;
- (BOOL)columnIsNullable:(id)nullable inTable:(id)table error:(id *)error;
- (BOOL)enableIncrementalAutovacuumForDatabaseWithName:(id)name error:(id *)error;
- (BOOL)executeCachedStatementForKey:(const char *)key error:(id *)error SQLGenerator:(id)generator bindingHandler:(id)handler enumerationHandler:(id)enumerationHandler;
- (BOOL)executeSQLStatements:(id)statements error:(id *)error;
- (BOOL)foreignKeyExistsFromTable:(id)table column:(id)column toTable:(id)toTable column:(id)a6 error:(id *)error;
- (BOOL)incrementalVacuumDatabaseIfNeeded:(id)needed error:(id *)error;
- (BOOL)performIntegrityCheckOnDatabase:(id)database error:(id *)error integrityErrorHandler:(id)handler;
- (BOOL)performTransactionWithType:(int64_t)type error:(id *)error usingBlock:(id)block;
- (BOOL)table:(id)table hasColumnWithName:(id)name error:(id *)error;
- (HDSQLiteDatabase)initWithDatabaseURL:(id)l;
- (HDSQLiteDatabaseDelegate)delegate;
- (HDSQLiteDatabaseSchema)_schemaForDatabaseWithName:(uint64_t)name error:;
- (HDSQLiteDatabaseTableSchema)_schemaForTableWithName:(void *)name database:(uint64_t)database error:;
- (NSNumber)lastInsertRowID;
- (id)_statementCache;
- (id)_tableNamesForDatabaseWithName:(uint64_t)name error:;
- (id)dumpSchemaWithError:(id *)error;
- (id)getLastErrorWithStatement:(sqlite3_stmt *)statement context:(id)context;
- (id)typeOfColumn:(id)column inTable:(id)table error:(id *)error;
- (int)getChangesCount;
- (int64_t)userVersionWithDatabaseName:(id)name error:(id *)error;
- (int64_t)validateForeignKeysForTable:(id)table databaseName:(id)name error:(id *)error;
- (uint64_t)_executeSQL:(char)l cache:(uint64_t)cache error:(void *)error bindingHandler:(void *)handler enumerationHandler:;
- (uint64_t)_executeUncachedSQL:(void *)l error:;
- (uint64_t)_executeUncachedSQL:(void *)l error:(int)error retryIfBusy:(int)busy interruptible:;
- (uint64_t)_handleInterruptionWithError:(uint64_t)error;
- (uint64_t)_integerValueForPragma:(void *)pragma databaseName:(uint64_t)name value:(uint64_t)value error:;
- (uint64_t)_openForWriting:(int)writing additionalFlags:(void *)flags error:;
- (uint64_t)_setPragma:(uint64_t)pragma integerValue:(void *)value withDatabaseName:(void *)name error:;
- (uint64_t)_stepStatement:(_BYTE *)statement hasRow:(void *)row error:;
- (void)_statementCache;
- (void)accessDatabaseUsingBlock:(id)block;
- (void)beforeCommit:(id)commit;
- (void)close;
- (void)dealloc;
- (void)onCommit:(id)commit orRollback:(id)rollback;
- (void)requireRollback;
- (void)setFileProtectionType:(id)type;
- (void)setTransactionInterruptRequested:(BOOL)requested;
@end

@implementation HDSQLiteDatabase

- (void)_statementCache
{
  if (self)
  {
    selfCopy = self;
    v2 = self + 1;
    if (!self[1])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__statementCache object:selfCopy file:@"HDSQLiteDatabase.mm" lineNumber:1331 description:{@"Invalid parameter not satisfying: %@", @"_db != NULL"}];
    }

    [(HDSQLiteDatabase *)selfCopy _statementCache];
    self = v5;
  }

  return self;
}

- (id)_statementCache
{
  v5 = *(self + 104);
  if (!v5)
  {
    v6 = [[HDSQLiteStatementCache alloc] initWithDatabase:*a2];
    v7 = *(self + 104);
    *(self + 104) = v6;

    v5 = *(self + 104);
  }

  *a3 = v5;

  return v5;
}

- (HDSQLiteDatabase)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = HDSQLiteDatabase;
  v5 = [(HDSQLiteDatabase *)&v10 init];
  if (v5)
  {
    if (lCopy && ([lCopy isFileURL] & 1) == 0)
    {

      v6 = 0;
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid database URL"];
    }

    else
    {
      v6 = v5;
    }

    v7 = [lCopy copy];
    fileURL = v6->_fileURL;
    v6->_fileURL = v7;

    v6->_interruptionLock._os_unfair_lock_opaque = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (uint64_t)_copyContentsFromDatabase:(sqlite3 *)database toDatabase:
{
  objc_opt_self();
  v5 = sqlite3_backup_init(database, "main", a2, "main");
  if (v5)
  {
    v6 = v5;
    sqlite3_backup_step(v5, -1);
    sqlite3_backup_finish(v6);
  }

  return sqlite3_errcode(database);
}

+ (id)memoryDatabaseFromURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithDatabaseURL:lCopy];
  v6 = v5;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v13 = 0;
  v7 = [(HDSQLiteDatabase *)v5 _openForWriting:0 additionalFlags:&v13 error:?];
  v8 = v13;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      +[HDSQLiteDatabase memoryDatabaseFromURL:];
    }
  }

  else
  {
    v12 = 0;
    if (sqlite3_open(":memory:", &v12))
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        +[HDSQLiteDatabase memoryDatabaseFromURL:];
      }
    }

    else
    {
      if (![(HDSQLiteDatabase *)self _copyContentsFromDatabase:v12 toDatabase:?])
      {
        [v6 close];
        v11 = *(v6 + 72);
        *(v6 + 72) = 0;

        *(v6 + 8) = v12;
        v9 = v6;
        goto LABEL_14;
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        +[HDSQLiteDatabase memoryDatabaseFromURL:];
      }
    }

    [v6 close];
  }

  v9 = 0;
LABEL_14:

LABEL_15:

  return v9;
}

- (uint64_t)_openForWriting:(int)writing additionalFlags:(void *)flags error:
{
  v41 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = (self + 8);
    if (!*(self + 8))
    {
      v10 = *(self + 72);
      if (v10)
      {
        path = [v10 path];
      }

      else
      {
        path = @":memory:";
      }

      if (a2)
      {
        v12 = 6;
      }

      else
      {
        v12 = 1;
      }

      v14 = (self + 80);
      v13 = *(self + 80);
      v15 = MEMORY[0x277CCC2A0];
      if (v13)
      {
        if ([v13 isEqualToString:*MEMORY[0x277CCA1B8]])
        {
          v12 |= 0x400000u;
        }

        else if ([*v14 isEqualToString:*MEMORY[0x277CCA1A0]])
        {
          v12 |= 0x300000u;
        }

        else if ([*v14 isEqualToString:*MEMORY[0x277CCA198]])
        {
          v12 |= 0x200000u;
        }

        else if ([*v14 isEqualToString:*MEMORY[0x277CCA190]])
        {
          v12 |= 0x100000u;
        }

        else
        {
          _HKInitializeLogging();
          v16 = *v15;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = objc_opt_class();
            [(HDSQLiteDatabase *)v17 _openForWriting:buf additionalFlags:v16 error:?];
          }
        }
      }

      os_unfair_lock_lock((self + 64));
      v18 = path;
      busy = sqlite3_open_v2([(__CFString *)path fileSystemRepresentation], v5, v12 | writing & ~(writing >> 31), 0);
      os_unfair_lock_unlock((self + 64));
      if (busy)
      {
        v19 = @"opening database";
      }

      else
      {
        busy = sqlite3_exec_busy_retry(*v5, "PRAGMA cache_size=384;", 0, 0, 0);
        if (busy)
        {
          v19 = @"setting cache_size";
        }

        else
        {
          busy = sqlite3_busy_timeout(*v5, 60000);
          if (busy)
          {
            v19 = @"setting busy timeout";
          }

          else
          {
            mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
            features = [mEMORY[0x277CCDD30] features];
            databasePerfTrace = [features databasePerfTrace];

            if (databasePerfTrace)
            {
              sqlite3_trace_v2(*v5, 2u, _SqliteEventTrace, *v5);
            }

            if (a2)
            {
              busy = sqlite3_exec_busy_retry(*v5, "PRAGMA journal_mode = WAL;", 0, 0, 0);
              if (busy)
              {
                v19 = @"setting journal_mode";
                goto LABEL_28;
              }

              busy = sqlite3_exec_busy_retry(*v5, "PRAGMA foreign_keys = ON;", 0, 0, 0);
              if (busy)
              {
                v19 = @"enabling foreign keys";
                goto LABEL_28;
              }
            }

            if (HDSQLiteInstallCustomFunctionsInDatabase(*v5))
            {
              busy = 0;
LABEL_35:

              goto LABEL_36;
            }

            v31 = sqlite3_extended_errcode(*v5);
            if (v31 <= 1)
            {
              busy = 1;
            }

            else
            {
              busy = v31;
            }

            v19 = @"installing custom functions";
          }
        }
      }

LABEL_28:
      v20 = HDSQLiteErrorFromDatabase(*v5, 0, v19);
      v21 = HDSQLiteDatabaseErrorFromSQLiteError(v20);
      v22 = v21;
      if (v21)
      {
        if (flags)
        {
          v23 = v21;
          *flags = v22;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      _HKInitializeLogging();
      v24 = *v15;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v20 localizedDescription];
        v32 = 138544130;
        v33 = v19;
        v34 = 1024;
        v35 = busy;
        v36 = 2114;
        v37 = path;
        v38 = 2112;
        v39 = localizedDescription;
        _os_log_error_impl(&dword_25156C000, v24, OS_LOG_TYPE_ERROR, "Error %{public}@: [%d, %{public}@] (%@)", &v32, 0x26u);
      }

      [self close];
      goto LABEL_35;
    }
  }

  busy = 0;
LABEL_36:
  v25 = *MEMORY[0x277D85DE8];
  return busy;
}

- (void)dealloc
{
  if (self->_db)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"_db == NULL"}];

    if (self->_db)
    {
      [(HDSQLiteDatabase *)self close];
    }
  }

  v5.receiver = self;
  v5.super_class = HDSQLiteDatabase;
  [(HDSQLiteDatabase *)&v5 dealloc];
}

- (void)close
{
  [(HDSQLiteStatementCache *)self->_statementCache clearCachedStatements];
  statementCache = self->_statementCache;
  self->_statementCache = 0;

  os_unfair_lock_lock(&self->_interruptionLock);
  db = self->_db;
  if (db)
  {
    sqlite3_close(db);
    self->_db = 0;
  }

  os_unfair_lock_unlock(&self->_interruptionLock);
}

- (void)setTransactionInterruptRequested:(BOOL)requested
{
  requestedCopy = requested;
  os_unfair_lock_lock(&self->_interruptionLock);
  v5 = !requestedCopy;
  atomic_compare_exchange_strong(&self->_transactionInterruptRequested, &v5, requestedCopy);
  if (v5 == !requestedCopy && requestedCopy)
  {
    db = self->_db;
    if (db)
    {
      sqlite3_interrupt(db);
    }
  }

  os_unfair_lock_unlock(&self->_interruptionLock);
}

- (void)setFileProtectionType:(id)type
{
  typeCopy = type;
  if ([(HDSQLiteDatabase *)self isOpen])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"self.open == NO"}];
  }

  fileURL = [(HDSQLiteDatabase *)self fileURL];

  if (!fileURL)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"self.fileURL != nil"}];
  }

  v6 = [typeCopy copy];
  fileProtectionType = self->_fileProtectionType;
  self->_fileProtectionType = v6;
}

- (void)accessDatabaseUsingBlock:(id)block
{
  blockCopy = block;
  if (![(HDSQLiteDatabase *)self isOpen])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"self.open"}];
  }

  if (self->_db)
  {
    blockCopy[2]();
  }
}

- (uint64_t)_executeUncachedSQL:(void *)l error:
{
  v5 = a2;
  if (self)
  {
    v6 = [(HDSQLiteDatabase *)self _executeUncachedSQL:v5 error:l retryIfBusy:0 interruptible:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_executeUncachedSQL:(void *)l error:(int)error retryIfBusy:(int)busy interruptible:
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (!self)
  {
    goto LABEL_9;
  }

  if (([self isOpen] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__executeUncachedSQL_error_retryIfBusy_interruptible_ object:self file:@"HDSQLiteDatabase.mm" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"self.open"}];
  }

  v10 = *(self + 8);
  if (!v10)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:l code:3 description:@"Database connection is closed"];
LABEL_9:
    v12 = 0;
    goto LABEL_25;
  }

  if (busy)
  {
    v11 = atomic_load((self + 32));
    if (v11)
    {
      v12 = [(HDSQLiteDatabase *)self _handleInterruptionWithError:l];
      goto LABEL_25;
    }

    v10 = *(self + 8);
  }

  v25 = 0;
  uTF8String = [v9 UTF8String];
  if (error)
  {
    busy = sqlite3_exec_busy_retry(v10, uTF8String, 0, 0, &v25);
  }

  else
  {
    busy = MEMORY[0x277D82C88](v10, uTF8String, 0, 0, &v25);
  }

  busyCopy = busy;
  v12 = busy == 0;
  if (busy)
  {
    v16 = v25;
    if (!v25)
    {
      v16 = sqlite3_errmsg(*(self + 8));
    }

    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v27 = v9;
      v28 = 1024;
      v29 = busyCopy;
      v30 = 2082;
      v31 = v16;
      _os_log_error_impl(&dword_25156C000, v17, OS_LOG_TYPE_ERROR, "Could not execute SQL: %{public}@: [%d, %{public}s]", buf, 0x1Cu);
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"_executeUncachedSQL(%@)", v9];
    v19 = [self getLastErrorWithStatement:0 context:v18];
    v20 = v19;
    if (v19)
    {
      if (l)
      {
        v21 = v19;
        *l = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    if (v25)
    {
      sqlite3_free(v25);
    }
  }

LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (uint64_t)_handleInterruptionWithError:(uint64_t)error
{
  if (error)
  {
    os_unfair_lock_lock((error + 64));
    os_unfair_lock_unlock((error + 64));
    *(error + 17) = 1;
    hk_transactionInterruptedError = [MEMORY[0x277CCA9B8] hk_transactionInterruptedError];
    v5 = hk_transactionInterruptedError;
    if (hk_transactionInterruptedError)
    {
      if (a2)
      {
        v6 = hk_transactionInterruptedError;
        *a2 = v5;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return 0;
}

- (id)getLastErrorWithStatement:(sqlite3_stmt *)statement context:(id)context
{
  contextCopy = context;
  if (![(HDSQLiteDatabase *)self isOpen])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:492 description:{@"Invalid parameter not satisfying: %@", @"self.open"}];
  }

  db = self->_db;
  if (db)
  {
    if (sqlite3_errcode(db) == 9)
    {
      v13 = 0;
      [(HDSQLiteDatabase *)self _handleInterruptionWithError:?];
      v9 = v13;
    }

    else
    {
      v10 = HDSQLiteErrorFromDatabase(self->_db, statement, contextCopy);
      v9 = HDSQLiteDatabaseErrorFromSQLiteError(v10);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)getChangesCount
{
  if (![(HDSQLiteDatabase *)self isOpen])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:506 description:{@"Invalid parameter not satisfying: %@", @"self.open"}];
  }

  db = self->_db;
  if (db)
  {

    LODWORD(db) = sqlite3_changes(db);
  }

  return db;
}

- (BOOL)performTransactionWithType:(int64_t)type error:(id *)error usingBlock:(id)block
{
  v95[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if ([(HDSQLiteDatabase *)self isOpen])
  {
    if (!self)
    {
      goto LABEL_10;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:518 description:{@"Invalid parameter not satisfying: %@", @"self.open"}];

    if (!self)
    {
      goto LABEL_10;
    }
  }

  if (self->_db)
  {
    _statementCache = [(HDSQLiteDatabase *)self _statementCache];
    isInTransaction = self->_isInTransaction;
    cacheScope = self->_cacheScope;
    if (isInTransaction)
    {
      if (self->_transactionType < type)
      {
        v10 = HDSQLiteTransactionTypeString(type);
        v11 = HDSQLiteTransactionTypeString(self->_transactionType);
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
        {
          [HDSQLiteDatabase performTransactionWithType:error:usingBlock:];
        }

        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Cannot perform %@ transaction inside an existing %@ transaction", v10, v11}];
      }
    }

    else
    {
      [(HDSQLiteDatabase *)self setTransactionInterruptRequested:0];
      self->_permitWritesInReadTransaction = 0;
      self->_requiresRollback = 0;
      if (type >= 3)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_2796BE088[type];
      }

      self->_transactionType = type;
      v14 = [(HDSQLiteDatabase *)self _executeUncachedSQL:v13 error:error retryIfBusy:1 interruptible:1];
      self->_isInTransaction = v14;
      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }

      if (cacheScope == 1)
      {
        [_statementCache beginTransaction];
      }
    }

    if (self->_isInTransaction)
    {
      v87 = 0;
      v81 = MEMORY[0x277D85DD0];
      v82 = 3221225472;
      v83 = __64__HDSQLiteDatabase_performTransactionWithType_error_usingBlock___block_invoke;
      v84 = &unk_2796BDEA8;
      selfCopy = self;
      v86 = blockCopy;
      v58 = _statementCache;
      v12 = HKWithAutoreleasePool();
      v15 = 0;
      v16 = v15;
      if (v12)
      {
        goto LABEL_30;
      }

      if (v15)
      {
        v16 = v15;
      }

      else
      {
        if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            [HDSQLiteDatabase performTransactionWithType:v17 error:? usingBlock:?];
          }
        }

        v18 = MEMORY[0x277CCA9B8];
        v94 = *MEMORY[0x277CCA450];
        v95[0] = @"Transaction block failed without an error.";
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:&v94 count:1];
        v20 = [v18 errorWithDomain:@"com.apple.healthd.SQLite" code:1 userInfo:v19];

        v16 = v20;
        if (!v16)
        {
          goto LABEL_29;
        }
      }

      if (error)
      {
        v21 = v16;
        *error = v16;
      }

      else
      {
        _HKLogDroppedError();
      }

LABEL_29:

LABEL_30:
      if (!isInTransaction)
      {
        if (v12)
        {
          if (self->_requiresRollback && [(HDSQLiteDatabase *)self transactionInterruptRequested])
          {
            hk_transactionInterruptedError = [MEMORY[0x277CCA9B8] hk_transactionInterruptedError];
            v23 = hk_transactionInterruptedError;
            if (hk_transactionInterruptedError)
            {
              if (error)
              {
                v24 = hk_transactionInterruptedError;
                *error = v23;
              }

              else
              {
                _HKLogDroppedError();
              }
            }
          }

          v25 = !self->_requiresRollback;
        }

        else
        {
          v25 = 0;
        }

        [(HDSQLiteDatabase *)self setTransactionInterruptRequested:0];
        self->_isHandlingTransactionBeforeCommit = 1;
        if (v25)
        {
          for (i = 10; ; --i)
          {
            if (![(NSMutableArray *)self->_beforeCommitBlocks count])
            {
              v38 = 1;
              goto LABEL_61;
            }

            if (!i)
            {
              break;
            }

            v27 = self->_beforeCommitBlocks;
            beforeCommitBlocks = self->_beforeCommitBlocks;
            self->_beforeCommitBlocks = 0;

            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v29 = v27;
            v30 = [v29 countByEnumeratingWithState:&v77 objects:v93 count:16];
            if (v30)
            {
              v31 = *v78;
              while (2)
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v78 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v75 = *(*(&v77 + 1) + 8 * j);
                  v76 = 0;
                  v71 = MEMORY[0x277D85DD0];
                  v72 = 3221225472;
                  v73 = __64__HDSQLiteDatabase_performTransactionWithType_error_usingBlock___block_invoke_373;
                  v74 = &unk_2796BDED8;
                  v33 = HKWithAutoreleasePool();
                  v34 = 0;
                  if ((v33 & 1) == 0)
                  {
                    v35 = v34;
                    v36 = v35;
                    if (v35)
                    {
                      if (error)
                      {
                        v37 = v35;
                        *error = v36;
                      }

                      else
                      {
                        _HKLogDroppedError();
                      }
                    }

                    goto LABEL_59;
                  }
                }

                v30 = [v29 countByEnumeratingWithState:&v77 objects:v93 count:16];
                if (v30)
                {
                  continue;
                }

                break;
              }
            }
          }

          [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:@"beforeCommitLoopLimit limit reached in transaction"];
          _HKInitializeLogging();
          v29 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            v56 = objc_opt_class();
            [HDSQLiteDatabase performTransactionWithType:v56 error:v92 usingBlock:?];
          }

LABEL_59:
        }

        v38 = 0;
LABEL_61:
        v39 = self->_beforeCommitBlocks;
        self->_beforeCommitBlocks = 0;

        self->_isHandlingTransactionBeforeCommit = 0;
        if (cacheScope == 1)
        {
          [v58 endTransaction];
        }

        if (v38)
        {
          v40 = [(HDSQLiteDatabase *)self _executeUncachedSQL:error error:1 retryIfBusy:0 interruptible:?];
          self->_isHandlingTransactionEnd = 1;
          if (v40)
          {
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v41 = self->_onCommitBlocks;
            v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v67 objects:v91 count:16];
            if (v42)
            {
              v43 = *v68;
              do
              {
                for (k = 0; k != v42; ++k)
                {
                  if (*v68 != v43)
                  {
                    objc_enumerationMutation(v41);
                  }

                  (*(*(*(&v67 + 1) + 8 * k) + 16))();
                }

                v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v67 objects:v91 count:16];
              }

              while (v42);
            }

            LOBYTE(v12) = 1;
LABEL_85:

            onCommitBlocks = self->_onCommitBlocks;
            self->_onCommitBlocks = 0;

            onRollbackBlocks = self->_onRollbackBlocks;
            self->_onRollbackBlocks = 0;

            self->_isHandlingTransactionEnd = 0;
            *&self->_isInTransaction = 0;
            _statementCache = v58;
            goto LABEL_86;
          }
        }

        else
        {
          self->_isHandlingTransactionEnd = 1;
        }

        os_unfair_lock_lock(&self->_interruptionLock);
        v66 = 0;
        v45 = [(HDSQLiteDatabase *)self _executeUncachedSQL:&v66 error:1 retryIfBusy:0 interruptible:?];
        v41 = v66;
        v46 = MEMORY[0x277CCC2A0];
        if ((v45 & 1) == 0)
        {
          _HKInitializeLogging();
          v47 = *v46;
          if (os_log_type_enabled(*v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v90 = v41;
            _os_log_impl(&dword_25156C000, v47, OS_LOG_TYPE_DEFAULT, "Failed to roll back transaction: %{public}@", buf, 0xCu);
          }
        }

        os_unfair_lock_unlock(&self->_interruptionLock);
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v48 = self->_onRollbackBlocks;
        v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v62 objects:v88 count:16];
        if (v49)
        {
          v50 = *v63;
          do
          {
            for (m = 0; m != v49; ++m)
            {
              if (*v63 != v50)
              {
                objc_enumerationMutation(v48);
              }

              (*(*(*(&v62 + 1) + 8 * m) + 16))();
            }

            v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v62 objects:v88 count:16];
          }

          while (v49);
        }

        LOBYTE(v12) = 0;
        goto LABEL_85;
      }

LABEL_86:

      goto LABEL_87;
    }

LABEL_21:
    LOBYTE(v12) = 0;
    goto LABEL_86;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Database connection is closed"];
LABEL_10:
  LOBYTE(v12) = 0;
LABEL_87:

  v54 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_executeStatementWithError:(id *)error statementProvider:(id)provider bindingHandler:(id)handler enumerationHandler:(id)enumerationHandler
{
  v53 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  handlerCopy = handler;
  enumerationHandlerCopy = enumerationHandler;
  v40 = providerCopy;
  if ([(HDSQLiteDatabase *)self isOpen])
  {
    if (!self)
    {
      goto LABEL_9;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:691 description:{@"Invalid parameter not satisfying: %@", @"self.open"}];

    if (!self)
    {
      goto LABEL_9;
    }
  }

  if (self->_db)
  {
    if (self->_isHandlingTransactionEnd)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:@"Attempt to execute SQL within a commit or rollback block."];
      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        v13 = objc_opt_class();
        [HDSQLiteDatabase _executeStatementWithError:v13 statementProvider:buf bindingHandler:? enumerationHandler:?];
      }

      v14 = 0;
      goto LABEL_50;
    }

    [(HDSQLiteDatabase *)self _statementCache];
    v38 = v46[0] = 0;
    v15 = (*(providerCopy + 2))(providerCopy, v38, v46);
    v16 = v46[0];
    v17 = v46[0];
    v18 = v17;
    pStmt = v15;
    errorCopy = error;
    if (v15)
    {
      if (!self->_isInTransaction || self->_transactionType || self->_permitWritesInReadTransaction || sqlite3_stmt_readonly(v15))
      {
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, v15);
        }

        if (enumerationHandlerCopy)
        {
          *buf = &unk_286379B38;
          v49 = 0;
          v19 = v15;
          v20 = 0;
          v50 = sqlite3_column_count(v15);
          memset(v51, 0, sizeof(v51));
          v52 = 1065353216;
          v48 = v15;
          v45 = 0;
          while (1)
          {
            v44 = v18;
            v21 = [(HDSQLiteDatabase *)self _stepStatement:v19 hasRow:&v45 error:&v44];
            v22 = v44;

            if (!v21 || v45 != 1)
            {
              break;
            }

            v23 = objc_autoreleasePoolPush();
            v43 = v20;
            v24 = enumerationHandlerCopy[2](enumerationHandlerCopy, buf, &v43);
            v25 = v43;

            objc_autoreleasePoolPop(v23);
            if (v24)
            {
              v18 = v22;
              v20 = v25;
              v19 = pStmt;
              if (v45)
              {
                continue;
              }
            }

            goto LABEL_34;
          }

          v25 = v20;
LABEL_34:
          if (v25)
          {
            v18 = v25;

            LOBYTE(v21) = 0;
          }

          else
          {
            v18 = v22;
          }

          *buf = &unk_286379B38;
          std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(v51);
          if (v21)
          {
            v14 = 1;
            goto LABEL_48;
          }
        }

        else
        {
          v42 = v18;
          v28 = [(HDSQLiteDatabase *)self _stepStatement:v15 hasRow:0 error:&v42];
          v29 = v42;

          if (v28)
          {
            v14 = 1;
            v18 = v29;
LABEL_48:
            [v38 checkInStatement:pStmt];
            goto LABEL_49;
          }

          v18 = v29;
        }

        v30 = v18;
        v18 = v30;
        if (v30)
        {
          if (errorCopy)
          {
            v31 = v30;
            *errorCopy = v18;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v14 = 0;
        goto LABEL_48;
      }

      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        v35 = sqlite3_sql(pStmt);
        [HDSQLiteDatabase _executeStatementWithError:v35 statementProvider:buf bindingHandler:v34 enumerationHandler:?];
      }

      [MEMORY[0x277CCA9B8] hk_assignError:error code:131 format:{@"Unsafe statement in read-only transaction: %s", sqlite3_sql(pStmt)}];
    }

    else
    {
      if ([v17 hd_isDatabaseCorruptionError])
      {
        objc_storeStrong(&self->_corruptionError, v16);
      }

      if ([v18 hk_isTransactionInterruptedError])
      {
        [(HDSQLiteDatabase *)self _handleInterruptionWithError:?];
      }

      v26 = v18;
      v18 = v26;
      if (v26)
      {
        if (error)
        {
          v27 = v26;
          *error = v18;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    v14 = 0;
LABEL_49:

LABEL_50:
    goto LABEL_51;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Database connection is closed"];
LABEL_9:
  v14 = 0;
LABEL_51:

  v32 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

- (uint64_t)_stepStatement:(_BYTE *)statement hasRow:(void *)row error:
{
  v31 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    goto LABEL_38;
  }

  v7 = result;
  if (statement)
  {
    *statement = 0;
  }

  if (!a2)
  {
LABEL_15:
    result = 1;
    goto LABEL_38;
  }

  while (1)
  {
    v8 = atomic_load((v7 + 32));
    if (v8)
    {
      v14 = *MEMORY[0x277D85DE8];

      return [(HDSQLiteDatabase *)v7 _handleInterruptionWithError:row];
    }

    v9 = sqlite3_step(a2);
    if (v9 == 9)
    {
      goto LABEL_33;
    }

    if (v9 == 101)
    {
      goto LABEL_15;
    }

    if (v9 == 100)
    {
      break;
    }

    v10 = v9;
    if (v9 - 5 >= 2)
    {
      switch(v9)
      {
        case 0x13u:
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC2A0];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_33;
          }

          v16 = v17;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v18 = sqlite3_db_handle(a2);
            v19 = sqlite3_errmsg(v18);
            v20 = sqlite3_sql(a2);
            [(HDSQLiteDatabase *)v19 _stepStatement:v20 hasRow:&v27 error:v16];
          }

          break;
        case 0xDu:
          *(v7 + 70) = 1;
          _HKInitializeLogging();
          v15 = *MEMORY[0x277CCC2A0];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            goto LABEL_33;
          }

          v16 = v15;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v27 = 136315138;
            *v28 = sqlite3_sql(a2);
            _os_log_impl(&dword_25156C000, v16, OS_LOG_TYPE_INFO, "Encountered device out of space during statement step: %s", &v27, 0xCu);
          }

          break;
        case 0xBu:
          v11 = HDSQLiteErrorFromDatabase(*(v7 + 8), a2, 0);
          v12 = HDSQLiteDatabaseErrorFromSQLiteError(v11);
          v13 = *(v7 + 112);
          *(v7 + 112) = v12;

          _HKInitializeLogging();
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            [HDSQLiteDatabase _stepStatement:? hasRow:? error:?];
          }

          goto LABEL_33;
        default:
          _HKInitializeLogging();
          v21 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            v16 = v21;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v22 = sqlite3_db_handle(a2);
              v27 = 67109634;
              *v28 = v10;
              *&v28[4] = 2080;
              *&v28[6] = sqlite3_errmsg(v22);
              v29 = 2080;
              v30 = sqlite3_sql(a2);
              _os_log_impl(&dword_25156C000, v16, OS_LOG_TYPE_INFO, "Step failed: [%d, %s]: %s", &v27, 0x1Cu);
            }

            break;
          }

LABEL_33:
          v23 = [v7 getLastErrorWithStatement:a2 context:0];
          v24 = v23;
          if (v23)
          {
            if (row)
            {
              v25 = v23;
              *row = v24;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          result = 0;
          goto LABEL_38;
      }

      goto LABEL_33;
    }
  }

  result = 1;
  if (statement)
  {
    *statement = 1;
  }

LABEL_38:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)_executeSQL:(char)l cache:(uint64_t)cache error:(void *)error bindingHandler:(void *)handler enumerationHandler:
{
  v11 = a2;
  errorCopy = error;
  handlerCopy = handler;
  if (self)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__HDSQLiteDatabase__executeSQL_cache_error_bindingHandler_enumerationHandler___block_invoke;
    v16[3] = &unk_2796BDF28;
    v17 = v11;
    lCopy = l;
    v14 = [self _executeStatementWithError:cache statementProvider:v16 bindingHandler:errorCopy enumerationHandler:handlerCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)executeSQLStatements:(id)statements error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  statementsCopy = statements;
  v7 = [statementsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(statementsCopy);
        }

        if (![(HDSQLiteDatabase *)self executeUncachedSQL:*(*(&v13 + 1) + 8 * i) error:error bindingHandler:0 enumerationHandler:0, v13])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [statementsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)executeCachedStatementForKey:(const char *)key error:(id *)error SQLGenerator:(id)generator bindingHandler:(id)handler enumerationHandler:(id)enumerationHandler
{
  generatorCopy = generator;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__HDSQLiteDatabase_executeCachedStatementForKey_error_SQLGenerator_bindingHandler_enumerationHandler___block_invoke;
  v15[3] = &unk_2796BDF00;
  v16 = generatorCopy;
  keyCopy = key;
  v13 = generatorCopy;
  LOBYTE(enumerationHandler) = [(HDSQLiteDatabase *)self _executeStatementWithError:error statementProvider:v15 bindingHandler:handler enumerationHandler:enumerationHandler];

  return enumerationHandler;
}

- (uint64_t)_setPragma:(uint64_t)pragma integerValue:(void *)value withDatabaseName:(void *)name error:
{
  v9 = a2;
  valueCopy = value;
  v11 = valueCopy;
  if (self)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = HDSQLiteDatabaseNamePrefix(valueCopy);
    pragma = [v12 stringWithFormat:@"PRAGMA %@%@=%lld", v13, v9, pragma];

    v15 = [(HDSQLiteDatabase *)self _executeUncachedSQL:pragma error:name];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)userVersionWithDatabaseName:(id)name error:(id *)error
{
  v5 = -1;
  [(HDSQLiteDatabase *)self _integerValueForPragma:name databaseName:&v5 value:error error:?];
  return v5;
}

- (uint64_t)_integerValueForPragma:(void *)pragma databaseName:(uint64_t)name value:(uint64_t)value error:
{
  v9 = a2;
  pragmaCopy = pragma;
  v11 = pragmaCopy;
  if (self)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = HDSQLiteDatabaseNamePrefix(pragmaCopy);
    v14 = [v12 stringWithFormat:@"PRAGMA %@%@", v13, v9];;

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__HDSQLiteDatabase__integerValueForPragma_databaseName_value_error___block_invoke;
    v17[3] = &unk_2796BDF50;
    v17[4] = &v18;
    v17[5] = name;
    [(HDSQLiteDatabase *)self _executeSQL:v14 cache:0 error:value bindingHandler:0 enumerationHandler:v17];
    v15 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (NSNumber)lastInsertRowID
{
  v2 = MEMORY[0x277CCABB0];
  insert_rowid = sqlite3_last_insert_rowid(self->_db);

  return [v2 numberWithLongLong:insert_rowid];
}

uint64_t __68__HDSQLiteDatabase__integerValueForPragma_databaseName_value_error___block_invoke(uint64_t a1, uint64_t a2)
{
  **(a1 + 40) = HDSQLiteColumnAsInt64(a2);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return 0;
}

- (void)onCommit:(id)commit orRollback:(id)rollback
{
  commitCopy = commit;
  rollbackCopy = rollback;
  if (!self->_isInTransaction)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:858 description:{@"Invalid parameter not satisfying: %@", @"_isInTransaction"}];
  }

  if (!self->_isHandlingTransactionEnd || ([MEMORY[0x277CCA890] currentHandler], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"HDSQLiteDatabase.mm", 859, @"Cannot add new commit or rollback handlers from within a commit or rollback handler."), v19, !self->_isHandlingTransactionEnd))
  {
    if (commitCopy)
    {
      onCommitBlocks = self->_onCommitBlocks;
      if (!onCommitBlocks)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v10 = self->_onCommitBlocks;
        self->_onCommitBlocks = v9;

        onCommitBlocks = self->_onCommitBlocks;
      }

      v11 = [commitCopy copy];
      v12 = _Block_copy(v11);
      [(NSMutableArray *)onCommitBlocks addObject:v12];
    }

    if (rollbackCopy)
    {
      onRollbackBlocks = self->_onRollbackBlocks;
      if (!onRollbackBlocks)
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v15 = self->_onRollbackBlocks;
        self->_onRollbackBlocks = v14;

        onRollbackBlocks = self->_onRollbackBlocks;
      }

      v16 = [rollbackCopy copy];
      v17 = _Block_copy(v16);
      [(NSMutableArray *)onRollbackBlocks addObject:v17];
    }
  }
}

- (void)beforeCommit:(id)commit
{
  commitCopy = commit;
  v13 = commitCopy;
  if (!self->_isInTransaction)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:881 description:{@"Invalid parameter not satisfying: %@", @"_isInTransaction"}];

    commitCopy = v13;
  }

  if (self->_isHandlingTransactionEnd)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:882 description:{@"Invalid parameter not satisfying: %@", @"!_isHandlingTransactionEnd"}];

    commitCopy = v13;
  }

  beforeCommitBlocks = self->_beforeCommitBlocks;
  if (!beforeCommitBlocks)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = self->_beforeCommitBlocks;
    self->_beforeCommitBlocks = v7;

    beforeCommitBlocks = self->_beforeCommitBlocks;
    commitCopy = v13;
  }

  v9 = [commitCopy copy];
  v10 = _Block_copy(v9);
  [(NSMutableArray *)beforeCommitBlocks addObject:v10];
}

- (void)requireRollback
{
  if (self->_isInTransaction)
  {
    self->_requiresRollback = 1;
  }
}

- (int64_t)validateForeignKeysForTable:(id)table databaseName:(id)name error:(id *)error
{
  tableCopy = table;
  nameCopy = name;
  if (!error)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:897 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = HDSQLiteDatabaseNamePrefix(nameCopy);
  if (tableCopy)
  {
    [v11 stringWithFormat:@"PRAGMA %@foreign_key_check(%@)", v12, tableCopy];
  }

  else
  {
    [v11 stringWithFormat:@"PRAGMA %@foreign_key_check", v12];
  }
  v13 = ;

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__HDSQLiteDatabase_validateForeignKeysForTable_databaseName_error___block_invoke;
  v17[3] = &unk_2796BDF78;
  v17[4] = &v24;
  v17[5] = &v18;
  if (([(HDSQLiteDatabase *)self _executeSQL:v13 cache:0 error:error bindingHandler:0 enumerationHandler:v17]& 1) != 0)
  {
    if (*(v25 + 24) == 1)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:v19[5]];
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      [HDSQLiteDatabase validateForeignKeysForTable:error databaseName:? error:?];
    }

    v14 = 2;
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v14;
}

uint64_t __67__HDSQLiteDatabase_validateForeignKeysForTable_databaseName_error___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v4 = MEMORY[0x277CCACA8];
  v5 = HDSQLiteColumnAsString(a2, 0);
  v6 = HDSQLiteColumnAsNumber(a2, 1);
  v7 = HDSQLiteColumnAsString(a2, 2);
  v8 = [v4 stringWithFormat:@"Foreign key check failed for reference from %@ to row %@ in %@", v5, v6, v7];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 0;
}

- (BOOL)table:(id)table hasColumnWithName:(id)name error:(id *)error
{
  nameCopy = name;
  v9 = [(HDSQLiteDatabase *)self _schemaForTableWithName:table database:0 error:error];
  v10 = v9;
  if (v9)
  {
    columns = [v9 columns];
    v12 = [columns objectForKeyedSubscript:nameCopy];

    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HDSQLiteDatabaseTableSchema)_schemaForTableWithName:(void *)name database:(uint64_t)database error:
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a2;
  nameCopy = name;
  v8 = nameCopy;
  if (self)
  {
    if (!nameCopy)
    {
      v40 = v6;
      v9 = [v6 componentsSeparatedByString:@"."];
      if ([v9 count] < 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v9 objectAtIndexedSubscript:0];
        v6 = [v9 objectAtIndexedSubscript:1];
      }
    }

    v41 = v6;
    v39 = objc_alloc_init(HDSQLiteDatabaseTableSchema);
    [(HDSQLiteDatabaseTableSchema *)v39 setName:v6];
    v37 = objc_opt_new();
    if (v8)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA %@.table_info(%@);", v8, v6];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info(%@);", v6];
    }
    v10 = ;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke;
    v62[3] = &unk_2796BDFC8;
    v38 = v37;
    v63 = v38;
    if (([(HDSQLiteDatabase *)self _executeSQL:v10 cache:0 error:database bindingHandler:0 enumerationHandler:v62]& 1) != 0)
    {
      [(HDSQLiteDatabaseTableSchema *)v39 setColumns:v38];
      if (v8)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT sql FROM %@.sqlite_master WHERE type='table' AND tbl_name='%@';", v8, v6];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT sql FROM sqlite_master WHERE type='table' AND tbl_name='%@';", v6];
      }
      v12 = ;

      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_2;
      v60[3] = &unk_2796BDFC8;
      v13 = v39;
      v61 = v13;
      if (([(HDSQLiteDatabase *)self _executeSQL:v12 cache:0 error:database bindingHandler:0 enumerationHandler:v60]& 1) != 0)
      {
        v34 = v13;
        if (v8)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA %@.index_list(%@)", v8, v6];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA index_list(%@)", v6];
        }
        v14 = ;

        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_3;
        v58[3] = &unk_2796BDFC8;
        v16 = v15;
        v59 = v16;
        v35 = v16;
        if (([(HDSQLiteDatabase *)self _executeSQL:v14 cache:0 error:database bindingHandler:0 enumerationHandler:v58]& 1) != 0)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          obj = v16;
          v17 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
          if (v17)
          {
            v18 = *v55;
            while (2)
            {
              v19 = 0;
              v20 = v14;
              do
              {
                if (*v55 != v18)
                {
                  objc_enumerationMutation(obj);
                }

                v21 = *(*(&v54 + 1) + 8 * v19);
                v22 = MEMORY[0x277CCACA8];
                name = [v21 name];
                if (v8)
                {
                  [v22 stringWithFormat:@"PRAGMA %@.index_info(%@)", v8, name];
                }

                else
                {
                  [v22 stringWithFormat:@"PRAGMA index_info(%@)", name];
                }
                v14 = ;

                v24 = objc_opt_new();
                v52[0] = MEMORY[0x277D85DD0];
                v52[1] = 3221225472;
                v52[2] = __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_4;
                v52[3] = &unk_2796BDFC8;
                v25 = v24;
                v53 = v25;
                if (([(HDSQLiteDatabase *)self _executeSQL:v14 cache:0 error:database bindingHandler:0 enumerationHandler:v52]& 1) == 0)
                {

                  v11 = 0;
                  goto LABEL_47;
                }

                [v21 setColumns:v25];

                ++v19;
                v20 = v14;
              }

              while (v17 != v19);
              v17 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v26 = [MEMORY[0x277CBEB98] setWithArray:obj];
          [(HDSQLiteDatabaseTableSchema *)v34 setIndices:v26];

          if (v8)
          {
            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"select name, sql from %@.sqlite_master where type='trigger' AND tbl_name=?", v8];
          }

          else
          {
            v27 = @"select name, sql from sqlite_master where type='trigger' AND tbl_name=?";
          }

          v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_5;
          v50[3] = &unk_2796BDFF0;
          v51 = v41;
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_6;
          v47[3] = &unk_2796BE018;
          v29 = v51;
          v48 = v29;
          obj = v28;
          v49 = obj;
          if (([(HDSQLiteDatabase *)self _executeSQL:v27 cache:0 error:database bindingHandler:v50 enumerationHandler:v47]& 1) != 0)
          {
            v30 = [MEMORY[0x277CBEB98] setWithArray:obj];
            [(HDSQLiteDatabaseTableSchema *)v34 setTriggers:v30];

            if (v8)
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA %@.foreign_key_list(%@);", v8, v29];
            }

            else
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA foreign_key_list(%@);", v29];
            }
            v31 = ;

            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_7;
            v43[3] = &unk_2796BE040;
            selfCopy = self;
            v46 = sel__schemaForTableWithName_database_error_;
            v44 = v38;
            if (([(HDSQLiteDatabase *)self _executeSQL:v31 cache:0 error:database bindingHandler:0 enumerationHandler:v43]& 1) != 0)
            {
              v11 = v34;
            }

            else
            {
              v11 = 0;
            }

            v27 = v31;
          }

          else
          {
            v11 = 0;
          }

          v25 = v51;
          v14 = v27;
LABEL_47:
        }

        else
        {
          v11 = 0;
        }

        v12 = v14;
      }

      else
      {
        v11 = 0;
      }

      v10 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v41 = v6;
    v11 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)foreignKeyExistsFromTable:(id)table column:(id)column toTable:(id)toTable column:(id)a6 error:(id *)error
{
  columnCopy = column;
  toTableCopy = toTable;
  v14 = a6;
  v15 = [(HDSQLiteDatabase *)self _schemaForTableWithName:table database:0 error:error];
  v16 = v15;
  if (v15)
  {
    columns = [v15 columns];
    v18 = [columns objectForKeyedSubscript:columnCopy];

    foreignKeyTargetTable = [v18 foreignKeyTargetTable];
    if ([foreignKeyTargetTable isEqualToString:toTableCopy])
    {
      foreignKeyTargetColumn = [v18 foreignKeyTargetColumn];
      v21 = [foreignKeyTargetColumn isEqualToString:v14];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)typeOfColumn:(id)column inTable:(id)table error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  columnCopy = column;
  tableCopy = table;
  if (!error)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:952 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v11 = [(HDSQLiteDatabase *)self _schemaForTableWithName:tableCopy database:0 error:error];
  v12 = v11;
  if (v11)
  {
    columns = [v11 columns];
    v14 = [columns objectForKeyedSubscript:columnCopy];

    if (v14)
    {
      type = [v14 type];
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        columns2 = [v12 columns];
        *buf = 138543874;
        v22 = tableCopy;
        v23 = 2114;
        v24 = columnCopy;
        v25 = 2114;
        v26 = columns2;
        _os_log_error_impl(&dword_25156C000, v16, OS_LOG_TYPE_ERROR, "Table '%{public}@' has no column %{public}@: %{public}@", buf, 0x20u);
      }

      type = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      [HDSQLiteDatabase typeOfColumn:tableCopy inTable:error error:?];
    }

    type = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return type;
}

- (BOOL)columnIsNullable:(id)nullable inTable:(id)table error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  nullableCopy = nullable;
  tableCopy = table;
  if (!error)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSQLiteDatabase.mm" lineNumber:970 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v11 = [(HDSQLiteDatabase *)self _schemaForTableWithName:tableCopy database:0 error:error];
  v12 = v11;
  if (v11)
  {
    columns = [v11 columns];
    v14 = [columns objectForKeyedSubscript:nullableCopy];

    if (v14)
    {
      isNullable = [v14 isNullable];
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        columns2 = [v12 columns];
        *buf = 138543874;
        v22 = tableCopy;
        v23 = 2114;
        v24 = nullableCopy;
        v25 = 2114;
        v26 = columns2;
        _os_log_error_impl(&dword_25156C000, v16, OS_LOG_TYPE_ERROR, "Table '%{public}@' has no column %{public}@: %{public}@", buf, 0x20u);
      }

      isNullable = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      [HDSQLiteDatabase typeOfColumn:tableCopy inTable:error error:?];
    }

    isNullable = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return isNullable;
}

- (BOOL)enableIncrementalAutovacuumForDatabaseWithName:(id)name error:(id *)error
{
  nameCopy = name;
  v23 = 0;
  if (([(HDSQLiteDatabase *)self _integerValueForPragma:nameCopy databaseName:&v23 value:error error:?]& 1) == 0)
  {
    goto LABEL_20;
  }

  if (v23 == 2)
  {
    v7 = 1;
    goto LABEL_21;
  }

  if (![(HDSQLiteDatabase *)self _setPragma:2 integerValue:nameCopy withDatabaseName:error error:?])
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  v21 = 0;
  v22 = 2500;
  v8 = [(HDSQLiteDatabase *)self _integerValueForPragma:nameCopy databaseName:&v22 value:&v21 error:?];
  v9 = v21;
  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      [HDSQLiteDatabase enableIncrementalAutovacuumForDatabaseWithName:error:];
    }
  }

  if (v22 >= 625)
  {
    v10 = 625;
  }

  else
  {
    v10 = v22;
  }

  v20 = v9;
  v11 = [(HDSQLiteDatabase *)self _setPragma:v10 integerValue:nameCopy withDatabaseName:&v20 error:?];
  v12 = v20;

  if ((v11 & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      [(HDSQLiteDatabase *)v12 enableIncrementalAutovacuumForDatabaseWithName:v10 error:v13];
    }
  }

  v14 = &stru_28637B800;
  if (nameCopy)
  {
    v14 = nameCopy;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"VACUUM %@", v14];;
  v7 = [(HDSQLiteDatabase *)self _executeUncachedSQL:v15 error:error];
  v19 = v12;
  v16 = [(HDSQLiteDatabase *)self _setPragma:v22 integerValue:nameCopy withDatabaseName:&v19 error:?];
  v17 = v19;

  if ((v16 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      [HDSQLiteDatabase enableIncrementalAutovacuumForDatabaseWithName:error:];
    }
  }

LABEL_21:
  return v7;
}

- (BOOL)incrementalVacuumDatabaseIfNeeded:(id)needed error:(id *)error
{
  neededCopy = needed;
  v12 = 0;
  if (([(HDSQLiteDatabase *)self _integerValueForPragma:neededCopy databaseName:&v12 value:error error:?]& 1) == 0)
  {
    goto LABEL_8;
  }

  if (!v12)
  {
LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  v11 = 0;
  if (([(HDSQLiteDatabase *)self _integerValueForPragma:neededCopy databaseName:&v11 value:error error:?]& 1) == 0)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_10;
  }

  if (v12 <= 0x200000 / v11)
  {
    goto LABEL_9;
  }

  v7 = @"main";
  if (neededCopy)
  {
    v7 = neededCopy;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA %@.incremental_vacuum(%lld)", v7, v12 - 0x200000 / v11];
  v9 = [(HDSQLiteDatabase *)self _executeUncachedSQL:v8 error:error];

LABEL_10:
  return v9;
}

- (BOOL)performIntegrityCheckOnDatabase:(id)database error:(id *)error integrityErrorHandler:(id)handler
{
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  database = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA %@.INTEGRITY_CHECK", database];;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HDSQLiteDatabase_performIntegrityCheckOnDatabase_error_integrityErrorHandler___block_invoke;
  v13[3] = &unk_2796BDFA0;
  v15 = &v16;
  v10 = handlerCopy;
  v14 = v10;
  if ([(HDSQLiteDatabase *)self executeUncachedSQL:database error:error bindingHandler:0 enumerationHandler:v13])
  {
    if (*(v17 + 24) != 1)
    {
      v11 = 1;
      goto LABEL_6;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:102 format:@"Access error during integrity check."];
  }

  v11 = 0;
LABEL_6:

  _Block_object_dispose(&v16, 8);
  return v11;
}

uint64_t __80__HDSQLiteDatabase_performIntegrityCheckOnDatabase_error_integrityErrorHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = HDSQLiteColumnAsString(a2, 0);
  if ([v3 isEqualToString:@"ok"])
  {
    v4 = 0;
  }

  else if ([v3 containsString:@"=266"])
  {
    v4 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
    v4 = 1;
  }

  return v4;
}

uint64_t __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke(uint64_t a1, HDSQLiteRow *a2)
{
  v4 = objc_alloc_init(HDSQLiteDatabaseColumnSchema);
  v5 = HDSQLiteColumnWithNameAsString(a2, @"name");
  [(HDSQLiteDatabaseColumnSchema *)v4 setName:v5];

  v6 = HDSQLiteColumnWithNameAsString(a2, @"type");
  [(HDSQLiteDatabaseColumnSchema *)v4 setType:v6];

  v7 = HDSQLiteColumnWithNameAsString(a2, @"dflt_value");
  [(HDSQLiteDatabaseColumnSchema *)v4 setDefaultValue:v7];

  [(HDSQLiteDatabaseColumnSchema *)v4 setIsNullable:!HDSQLiteColumnWithNameAsBoolean(a2, @"notnull")];
  [(HDSQLiteDatabaseColumnSchema *)v4 setIsPrimaryKey:HDSQLiteColumnWithNameAsBoolean(a2, @"pk")];
  v8 = *(a1 + 32);
  v9 = [(HDSQLiteDatabaseColumnSchema *)v4 name];
  [v8 setObject:v4 forKeyedSubscript:v9];

  return 1;
}

uint64_t __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_2(uint64_t a1, HDSQLiteRow *a2)
{
  v3 = HDSQLiteColumnWithNameAsString(a2, @"sql");
  [*(a1 + 32) setCreateTableSchema:v3];

  return 1;
}

uint64_t __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_3(uint64_t a1, HDSQLiteRow *a2)
{
  v4 = objc_alloc_init(HDSQLiteDatabaseIndexSchema);
  [(HDSQLiteDatabaseIndexSchema *)v4 setIsUnique:HDSQLiteColumnWithNameAsBoolean(a2, @"unique")];
  v5 = HDSQLiteColumnWithNameAsString(a2, @"name");
  [(HDSQLiteDatabaseIndexSchema *)v4 setName:v5];

  [*(a1 + 32) addObject:v4];
  return 1;
}

uint64_t __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_4(uint64_t a1, HDSQLiteRow *a2)
{
  v2 = *(a1 + 32);
  v3 = HDSQLiteColumnWithNameAsString(a2, @"name");
  [v2 addObject:v3];

  return 1;
}

uint64_t __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_6(uint64_t a1, HDSQLiteRow *a2)
{
  v4 = objc_alloc_init(HDSQLiteDatabaseTriggerSchema);
  v5 = HDSQLiteColumnWithNameAsString(a2, @"name");
  [(HDSQLiteDatabaseTriggerSchema *)v4 setName:v5];

  [(HDSQLiteDatabaseTriggerSchema *)v4 setTableName:*(a1 + 32)];
  v6 = HDSQLiteColumnWithNameAsString(a2, @"sql");
  [(HDSQLiteDatabaseTriggerSchema *)v4 setSql:v6];

  [*(a1 + 40) addObject:v4];
  return 1;
}

uint64_t __59__HDSQLiteDatabase__schemaForTableWithName_database_error___block_invoke_7(void *a1, HDSQLiteRow *a2)
{
  v4 = a1[4];
  v5 = HDSQLiteColumnWithNameAsString(a2, @"from");
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = HDSQLiteColumnWithNameAsString(a2, @"table");
  [v6 setForeignKeyTargetTable:v7];

  v8 = HDSQLiteColumnWithNameAsString(a2, @"to");
  [v6 setForeignKeyTargetColumn:v8];

  v9 = HDSQLiteColumnWithNameAsString(a2, @"on_delete");
  if ([v9 isEqualToString:@"CASCADE"])
  {
    v10 = 2;
  }

  else if ([v9 isEqualToString:@"RESTRICT"])
  {
    v10 = 1;
  }

  else if ([v9 isEqualToString:@"NO ACTION"])
  {
    v10 = 0;
  }

  else if ([v9 isEqualToString:@"SET NULL"])
  {
    v10 = 3;
  }

  else
  {
    if (![v9 isEqualToString:@"SET DEFAULT"])
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a1[6] object:a1[5] file:@"HDSQLiteDatabase.mm" lineNumber:1194 description:{@"Unable to determine deletion action for %@", v9}];

      goto LABEL_12;
    }

    v10 = 4;
  }

  [v6 setDeletionAction:v10];
LABEL_12:

  return 1;
}

- (HDSQLiteDatabaseSchema)_schemaForDatabaseWithName:(uint64_t)name error:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v16 = objc_alloc_init(HDSQLiteDatabaseSchema);
    v17 = [(HDSQLiteDatabase *)self _tableNamesForDatabaseWithName:v5 error:name];
    if (v17)
    {
      v6 = objc_opt_new();
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v17;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = *v19;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v18 + 1) + 8 * i);
            v12 = [(HDSQLiteDatabase *)self _schemaForTableWithName:v11 database:v5 error:name];
            if (!v12)
            {

              v13 = 0;
              goto LABEL_13;
            }

            [v6 setObject:v12 forKeyedSubscript:v11];
          }

          v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      [(HDSQLiteDatabaseSchema *)v16 setTables:v6];
      v13 = v16;
LABEL_13:
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_tableNamesForDatabaseWithName:(uint64_t)name error:
{
  v5 = a2;
  if (self)
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT name FROM %@.sqlite_master WHERE type='table'", v5];;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__HDSQLiteDatabase__tableNamesForDatabaseWithName_error___block_invoke;
    v11[3] = &unk_2796BDFC8;
    v8 = v6;
    v12 = v8;
    if (([(HDSQLiteDatabase *)self _executeSQL:v7 cache:0 error:name bindingHandler:0 enumerationHandler:v11]& 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __57__HDSQLiteDatabase__tableNamesForDatabaseWithName_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = HDSQLiteColumnAsString(a2, 0);
  [v2 addObject:v3];

  return 1;
}

- (id)dumpSchemaWithError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __40__HDSQLiteDatabase_dumpSchemaWithError___block_invoke;
  v21[3] = &unk_2796BDFC8;
  v16 = v5;
  v22 = v16;
  if (([(HDSQLiteDatabase *)self _executeSQL:0 cache:error error:0 bindingHandler:v21 enumerationHandler:?]& 1) != 0)
  {
    v6 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v16;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (([v11 isEqualToString:@"temp"] & 1) == 0)
          {
            v12 = [(HDSQLiteDatabase *)self _schemaForDatabaseWithName:v11 error:error];
            if (!v12)
            {

              v13 = 0;
              goto LABEL_15;
            }

            [v6 setObject:v12 forKeyedSubscript:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = v6;
LABEL_15:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __40__HDSQLiteDatabase_dumpSchemaWithError___block_invoke(uint64_t a1, HDSQLiteRow *a2)
{
  v2 = *(a1 + 32);
  v3 = HDSQLiteColumnWithNameAsString(a2, @"name");
  [v2 addObject:v3];

  return 1;
}

- (HDSQLiteDatabaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)memoryDatabaseFromURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)memoryDatabaseFromURL:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_openForWriting:(uint8_t *)buf additionalFlags:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_25156C000, log, OS_LOG_TYPE_ERROR, "%{public}@: Invalid fileProtectionType %{public}@", buf, 0x16u);
}

- (void)performTransactionWithType:error:usingBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_3();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_25156C000, v1, OS_LOG_TYPE_FAULT, "Cannot perform %@ transaction inside an existing %@ transaction", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)performTransactionWithType:(void *)a1 error:(uint64_t)a2 usingBlock:.cold.3(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  v2 = a1;
  OUTLINED_FUNCTION_3_1(&dword_25156C000, v3, v4, "%{public}@ beforeCommitLoopLimit limit reached in transaction");
}

- (void)_executeStatementWithError:(os_log_t)log statementProvider:bindingHandler:enumerationHandler:.cold.1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_25156C000, log, OS_LOG_TYPE_FAULT, "Unsafe statement in read-only transaction: %s", buf, 0xCu);
}

- (void)_executeStatementWithError:(void *)a1 statementProvider:(uint64_t)a2 bindingHandler:enumerationHandler:.cold.2(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  v2 = a1;
  OUTLINED_FUNCTION_3_1(&dword_25156C000, v3, v4, "%{public}@ Attempt to execute SQL within a commit or rollback block");
}

- (void)_stepStatement:(uint8_t *)buf hasRow:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109634;
  *(buf + 1) = 19;
  *(buf + 4) = 2082;
  *(buf + 10) = a1;
  *(buf + 9) = 2080;
  *(buf + 20) = a2;
  _os_log_debug_impl(&dword_25156C000, log, OS_LOG_TYPE_DEBUG, "Constraint violation during statement step: [%d, %{public}s]  %s", buf, 0x1Cu);
}

- (void)_stepStatement:(uint64_t *)a1 hasRow:error:.cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)validateForeignKeysForTable:(uint64_t *)a1 databaseName:error:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)typeOfColumn:(uint64_t)a1 inTable:(uint64_t *)a2 error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_4(&dword_25156C000, v3, v4, "Failed to retrieve schema for '%{public}@': %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enableIncrementalAutovacuumForDatabaseWithName:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enableIncrementalAutovacuumForDatabaseWithName:(NSObject *)a3 error:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2114;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_1_4(&dword_25156C000, a2, a3, "Failed to set %lld for CACHE_SPILL when enabling incremental autovacuum: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)enableIncrementalAutovacuumForDatabaseWithName:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end