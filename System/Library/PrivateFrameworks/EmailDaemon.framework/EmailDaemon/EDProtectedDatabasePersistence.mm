@interface EDProtectedDatabasePersistence
+ (BOOL)_isRecoverableError:(id)a3;
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
+ (unint64_t)_resultForConnection:(id)a3 success:(BOOL)a4 error:(id)a5 errorMessage:(id)a6;
- (BOOL)_attachProtectedDatabaseToConnection:(id)a3 withSchema:(id)a4 error:(id *)a5;
- (BOOL)_initializeDatabase:(id)a3 withConnection:(id)a4 schema:(id)a5 error:(id *)a6;
- (BOOL)_isJournalMalformedForSchema:(id)a3 connection:(id)a4;
- (BOOL)_performOnDemandReconciliationForConnection:(id)a3 withSchema:(id)a4;
- (BOOL)_removeExistingDatabaseIDs:(id)a3 withColumn:(id)a4 connection:(id)a5;
- (BOOL)_updateSqliteSequenceForDatabase:(id)a3 schema:(id)a4 withConnection:(id)a5 error:(id *)a6;
- (BOOL)_upgradeJournalWithConnection:(id)a3 schema:(id)a4 error:(id *)a5;
- (BOOL)protectedDataAvailable;
- (EDProtectedDatabasePersistence)initWithBasePath:(id)a3 hookRegistry:(id)a4;
- (EDProtectedDatabasePersistence)initWithJournalManager:(id)a3 hookRegistry:(id)a4;
- (id)_allReferencingColumnsForTable:(id)a3;
- (id)_databaseIDsToDeleteForTable:(id)a3;
- (id)database;
- (int64_t)_maxRowIDForColumn:(id)a3 withConnection:(id)a4;
- (unint64_t)_deleteRowIDs:(id)a3 fromJournal:(id)a4 withConnection:(id)a5;
- (unint64_t)_executeStatementString:(id)a3 onConnection:(id)a4 errorMessage:(id)a5;
- (unint64_t)_executeUpdateStatement:(id)a3 onConnection:(id)a4 errorMessage:(id)a5;
- (unint64_t)_mergeSchema:(id)a3 connection:(id)a4 journaledRows:(unint64_t *)a5 newRows:(unint64_t *)a6;
- (unint64_t)_mergeTable:(id)a3 connection:(id)a4 journaledRows:(unint64_t *)a5 newRows:(unint64_t *)a6;
- (unint64_t)_reconcileJournalsWithSchema:(id)a3 connection:(id)a4;
- (unint64_t)_runReconciliationWithSchema:(id)a3 connection:(id)a4;
- (unint64_t)signpostID;
- (void)_attachJournalDatabaseToConnection:(id)a3 withSchema:(id)a4;
- (void)_deleteDatabaseIDs:(id)a3 fromTable:(id)a4;
- (void)_detachJournalDatabaseFromConnection:(id)a3;
- (void)_ensureJournalIsAttachedToConnection:(id)a3 withSchema:(id)a4;
- (void)_ensureProtectedDatabaseOrJournalIsAttachedToConnection:(id)a3 withSchema:(id)a4;
- (void)attachProtectedOrJournalDatabaseToConnectionIfNecessary:(id)a3 withSchema:(id)a4;
- (void)detachProtectedOrJournalDatabaseFromConnectionIfNecessary:(id)a3;
- (void)reconcileJournalsWithSchema:(id)a3 completionBlock:(id)a4;
- (void)registerMergeHandler:(id)a3 forTable:(id)a4;
- (void)scheduleRecurringActivity;
- (void)test_tearDown;
@end

@implementation EDProtectedDatabasePersistence

- (BOOL)protectedDataAvailable
{
  v2 = [(EDProtectedDatabasePersistence *)self database];
  v3 = [v2 protectedDatabaseIsAvailable];

  return v3;
}

- (id)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EDProtectedDatabasePersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_80 != -1)
  {
    dispatch_once(&log_onceToken_80, block);
  }

  v2 = log_log_80;

  return v2;
}

void __37__EDProtectedDatabasePersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_80;
  log_log_80 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EDProtectedDatabasePersistence_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_7 != -1)
  {
    dispatch_once(&signpostLog_onceToken_7, block);
  }

  v2 = signpostLog_log_7;

  return v2;
}

void __45__EDProtectedDatabasePersistence_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_7;
  signpostLog_log_7 = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (EDProtectedDatabasePersistence)initWithBasePath:(id)a3 hookRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[EDPersistenceDatabaseJournalManager alloc] initWithBasePath:v6];
  v9 = [(EDProtectedDatabasePersistence *)self initWithJournalManager:v8 hookRegistry:v7];

  return v9;
}

- (EDProtectedDatabasePersistence)initWithJournalManager:(id)a3 hookRegistry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = EDProtectedDatabasePersistence;
  v9 = [(EDProtectedDatabasePersistence *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_journalManager, a3);
    objc_storeStrong(&v10->_hookRegistry, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.email.protectedDatabasePersistence.reconciliationQueue", v12);
    reconciliationQueue = v10->_reconciliationQueue;
    v10->_reconciliationQueue = v13;

    *&v10->_initializationLock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc(MEMORY[0x1E699B7F0]);
    v16 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v17 = [v15 initWithObject:v16];
    reconciliationMergeHandlers = v10->_reconciliationMergeHandlers;
    v10->_reconciliationMergeHandlers = v17;
  }

  return v10;
}

- (void)attachProtectedOrJournalDatabaseToConnectionIfNecessary:(id)a3 withSchema:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if ([(EDProtectedDatabasePersistence *)self supportsJournaling])
  {
    if (![(EDProtectedDatabasePersistence *)self protectedDataAvailable])
    {
      if ([v7 protectedDatabaseAttached])
      {
        [(EDProtectedDatabasePersistence *)self _detachProtectedDatabaseFromConnection:v7];
      }

      else if ([v7 journalDatabaseAttached])
      {
        goto LABEL_19;
      }

      [(EDProtectedDatabasePersistence *)self _attachJournalDatabaseToConnection:v7 withSchema:v8];
      goto LABEL_19;
    }

    if (([v7 protectedDatabaseAttached] & 1) == 0)
    {
      if ([v7 journalDatabaseAttached])
      {
        if ([(EDProtectedDatabasePersistence *)self _performOnDemandReconciliationForConnection:v7 withSchema:v8])
        {
          [(EDProtectedDatabasePersistence *)self _ensureProtectedDatabaseOrJournalIsAttachedToConnection:v7 withSchema:v8];
        }

        else
        {
          [(EDProtectedDatabasePersistence *)self _ensureJournalIsAttachedToConnection:v7 withSchema:v8];
        }
      }

      else
      {
        v19 = 0;
        v10 = [(EDProtectedDatabasePersistence *)self _attachProtectedDatabaseToConnection:v7 withSchema:v8 error:&v19];
        v11 = v19;
        if (!v10)
        {
          if ([EDProtectedDatabasePersistence _isRecoverableError:v11])
          {
            v12 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v15 = [v11 ef_publicDescription];
              v16 = EFProtectedDataAvailable();
              v17 = [(EDProtectedDatabasePersistence *)self database];
              v18 = [v17 protectedDatabaseIsAvailable];
              *buf = 138543874;
              v21 = v15;
              v22 = 1024;
              v23 = v16;
              v24 = 1024;
              v25 = v18;
              _os_log_error_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_ERROR, "Got error %{public}@ attaching protected database.  ProtectedDataAvailable = %d, protectedDatabaseIsAvailable = %d", buf, 0x18u);
            }

            [(EDProtectedDatabasePersistence *)self _attachJournalDatabaseToConnection:v7 withSchema:v8];
          }

          else
          {
            [v7 handleError:v11 message:@"Unable to attach protected database"];
            v13 = [MEMORY[0x1E696AAA8] currentHandler];
            [v13 handleFailureInMethod:a2 object:self file:@"EDProtectedDatabasePersistence.m" lineNumber:141 description:@"Unable to attach protected database"];
          }
        }
      }
    }
  }

LABEL_19:
  objc_autoreleasePoolPop(v9);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)detachProtectedOrJournalDatabaseFromConnectionIfNecessary:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  if (-[EDProtectedDatabasePersistence supportsJournaling](self, "supportsJournaling") && [v5 protectedDatabaseAttached] && !-[EDProtectedDatabasePersistence protectedDataAvailable](self, "protectedDataAvailable"))
  {
    [(EDProtectedDatabasePersistence *)self _detachProtectedDatabaseFromConnection:v5];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_ensureJournalIsAttachedToConnection:(id)a3 withSchema:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 protectedDatabaseAttached])
  {
    [(EDProtectedDatabasePersistence *)self _detachProtectedDatabaseFromConnection:v7];
  }

  if (([v7 journalDatabaseAttached] & 1) == 0)
  {
    [(EDProtectedDatabasePersistence *)self _attachJournalDatabaseToConnection:v7 withSchema:v6];
  }
}

- (void)_ensureProtectedDatabaseOrJournalIsAttachedToConnection:(id)a3 withSchema:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 protectedDatabaseAttached])
  {
    v9 = 0;
    goto LABEL_4;
  }

  v18 = 0;
  v10 = [(EDProtectedDatabasePersistence *)self _attachProtectedDatabaseToConnection:v7 withSchema:v8 error:&v18];
  v9 = v18;
  if (v10)
  {
LABEL_4:
    if ([v7 journalDatabaseAttached])
    {
      [(EDProtectedDatabasePersistence *)self _detachJournalDatabaseFromConnection:v7];
    }

    goto LABEL_12;
  }

  if ([EDProtectedDatabasePersistence _isRecoverableError:v9])
  {
    v11 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [v9 ef_publicDescription];
      v15 = EFProtectedDataAvailable();
      v16 = [(EDProtectedDatabasePersistence *)self database];
      v17 = [v16 protectedDatabaseIsAvailable];
      *buf = 138543874;
      v20 = v14;
      v21 = 1024;
      v22 = v15;
      v23 = 1024;
      v24 = v17;
      _os_log_error_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_ERROR, "Got error %{public}@ attaching protected database.  ProtectedDataAvailable = %d, protectedDatabaseIsAvailable = %d", buf, 0x18u);
    }

    if (([v7 journalDatabaseAttached] & 1) == 0)
    {
      [(EDProtectedDatabasePersistence *)self _attachJournalDatabaseToConnection:v7 withSchema:v8];
    }
  }

  else
  {
    [v7 handleError:v9 message:@"Unable to attach protected database"];
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"EDProtectedDatabasePersistence.m" lineNumber:213 description:@"Unable to attach protected database"];
  }

LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_attachProtectedDatabaseToConnection:(id)a3 withSchema:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_opt_class() protectedDatabaseName];
  v11 = [v8 attachProtectedDatabaseWithName:v10 error:a5];

  if (!v11)
  {
    goto LABEL_9;
  }

  os_unfair_lock_lock(&self->_initializationLock);
  if ([(EDProtectedDatabasePersistence *)self isInitialized])
  {
    os_unfair_lock_unlock(&self->_initializationLock);
  }

  else
  {
    v12 = [objc_opt_class() protectedDatabaseName];
    v13 = [(EDProtectedDatabasePersistence *)self _initializeDatabase:v12 withConnection:v8 schema:v9 error:a5];

    [(EDProtectedDatabasePersistence *)self setIsInitialized:v13];
    os_unfair_lock_unlock(&self->_initializationLock);
    if (!v13)
    {
LABEL_8:
      [v8 detachProtectedDatabase];
LABEL_9:
      v16 = 0;
      goto LABEL_10;
    }
  }

  if ([v8 isWriter])
  {
    v14 = [objc_opt_class() protectedDatabaseName];
    v15 = [(EDProtectedDatabasePersistence *)self _updateSqliteSequenceForDatabase:v14 schema:v9 withConnection:v8 error:a5];

    if (!v15)
    {
      goto LABEL_8;
    }
  }

  v16 = 1;
LABEL_10:

  return v16;
}

- (void)_attachJournalDatabaseToConnection:(id)a3 withSchema:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 isWriter])
  {
    v9 = [(EDProtectedDatabasePersistence *)self journalManager];
    v10 = [v9 currentJournalCreateIfNeeded:1];

    v11 = [objc_opt_class() journalDatabaseName];
    v12 = [v7 attachJournalDatabase:v10 withName:v11];

    if (v12)
    {
      v13 = [objc_opt_class() journalDatabaseName];
      v22 = 0;
      v14 = [(EDProtectedDatabasePersistence *)self _initializeDatabase:v13 withConnection:v7 schema:v8 error:&v22];
      v15 = v22;

      if (v14)
      {
        v16 = [objc_opt_class() journalDatabaseName];
        v21 = v15;
        v17 = [(EDProtectedDatabasePersistence *)self _updateSqliteSequenceForDatabase:v16 schema:v8 withConnection:v7 error:&v21];
        v18 = v21;

        v15 = v18;
        if (v17)
        {
          goto LABEL_9;
        }
      }

      v19 = +[EDProtectedDatabasePersistence log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [EDProtectedDatabasePersistence _attachJournalDatabaseToConnection:v19 withSchema:?];
      }

      [v7 detachJournalDatabase];
      v20 = [(EDProtectedDatabasePersistence *)self journalManager];
      [v20 mergedJournal:v10];

      [v7 handleError:v15 message:@"Initializing journal database"];
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"EDProtectedDatabasePersistence.m" lineNumber:270 description:@"Unable to attach journal database"];
LABEL_9:
  }
}

- (void)_detachJournalDatabaseFromConnection:(id)a3
{
  v6 = a3;
  if (([v6 detachJournalDatabase] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDProtectedDatabasePersistence.m" lineNumber:276 description:@"Unable to detach journal database"];
  }
}

- (BOOL)_initializeDatabase:(id)a3 withConnection:(id)a4 schema:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA %@.journal_mode = WAL;", v9];
  v13 = [v10 sqlConnection];
  v14 = [v13 executeStatementString:v12 error:a6];

  if (v14)
  {
    v15 = [v11 definitionWithDatabaseName:v9];
    v16 = [v10 sqlConnection];
    v17 = [v16 executeStatementString:v15 error:a6];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_upgradeJournalWithConnection:(id)a3 schema:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_opt_class() journalDatabaseName];
  LOBYTE(a5) = [(EDProtectedDatabasePersistence *)self _initializeDatabase:v10 withConnection:v8 schema:v9 error:a5];

  return a5;
}

- (BOOL)_updateSqliteSequenceForDatabase:(id)a3 schema:(id)a4 withConnection:(id)a5 error:(id *)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v51 = a3;
  v46 = a4;
  v9 = a5;
  v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT name FROM %@.sqlite_sequence", v51];
  v10 = [v9 preparedStatementForQueryString:?];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __95__EDProtectedDatabasePersistence__updateSqliteSequenceForDatabase_schema_withConnection_error___block_invoke;
  v63[3] = &unk_1E8250300;
  v54 = v45;
  v64 = v54;
  v44 = v10;
  if ([v10 executeUsingBlock:v63 error:a6])
  {
    v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.sqlite_sequence", v51];
    v47 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:v48];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [v46 tables];
    v11 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v11)
    {
      v52 = *v60;
      do
      {
        v53 = v11;
        for (i = 0; i != v53; ++i)
        {
          if (*v60 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v59 + 1) + 8 * i);
          v14 = [(EDProtectedDatabasePersistence *)self _allReferencingColumnsForTable:v13];
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v15 = v14;
          v16 = 0;
          v17 = [v15 countByEnumeratingWithState:&v55 objects:v71 count:16];
          if (v17)
          {
            v18 = *v56;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v56 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [(EDProtectedDatabasePersistence *)self _maxRowIDForColumn:*(*(&v55 + 1) + 8 * j) withConnection:v9];
                if (v16 <= v20)
                {
                  v16 = v20;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v55 objects:v71 count:16];
            }

            while (v17);
          }

          v21 = [v13 name];
          v22 = [EDTableMetadataPersistence largestDeletedRowIDForTableName:v21 withConnection:v9];

          v23 = +[EDProtectedDatabasePersistence log];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v13 name];
            *buf = 138412802;
            v66 = v24;
            v67 = 2048;
            v68 = v16;
            v69 = 2048;
            v70 = v22;
            _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "%@: maxRowID: %lld, largestDeletedRowID: %lld", buf, 0x20u);
          }

          if (v16 <= v22)
          {
            v25 = v22;
          }

          else
          {
            v25 = v16;
          }

          v26 = [v13 name];
          v27 = [v54 containsObject:v26];

          if (v27)
          {
            v28 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v13 fullNameWithDatabaseName:v51];
              *buf = 138543618;
              v66 = v29;
              v67 = 2048;
              v68 = v25;
              _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "Updating sqlite_sequence %{public}@ = %lld", buf, 0x16u);
            }

            v30 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:v48];
            v31 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
            [v30 setObject:v31 forKeyedSubscript:@"seq"];

            v32 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"name"];
            v33 = [v13 name];
            v34 = [v32 equalTo:v33];
            [v30 setWhereClause:v34];

            LOBYTE(v34) = [v9 executeUpdateStatement:v30 error:a6];
            if ((v34 & 1) == 0)
            {

              v40 = 0;
              goto LABEL_33;
            }
          }

          else
          {
            v35 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v13 fullNameWithDatabaseName:v51];
              *buf = 138543618;
              v66 = v36;
              v67 = 2048;
              v68 = v25;
              _os_log_impl(&dword_1C61EF000, v35, OS_LOG_TYPE_DEFAULT, "Setting sqlite_sequence %{public}@ = %lld", buf, 0x16u);
            }

            v37 = [v47 addValue];
            v38 = [v13 name];
            [v37 setObject:v38 forKeyedSubscript:@"name"];

            v39 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
            [v37 setObject:v39 forKeyedSubscript:@"seq"];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v11);
    }

    v40 = [v9 executeInsertStatement:v47 error:a6];
LABEL_33:
  }

  else
  {
    v40 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v40;
}

void __95__EDProtectedDatabasePersistence__updateSqliteSequenceForDatabase_schema_withConnection_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (int64_t)_maxRowIDForColumn:(id)a3 withConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [v5 name];
  v9 = [v5 table];
  v10 = [v9 name];
  v11 = [v7 initWithFormat:@"SELECT max(%@) FROM %@", v8, v10];

  v12 = [v6 preparedStatementForQueryString:v11];
  v19 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __68__EDProtectedDatabasePersistence__maxRowIDForColumn_withConnection___block_invoke;
  v20[3] = &unk_1E8250418;
  v20[4] = &v21;
  LOBYTE(v9) = [v12 executeUsingBlock:v20 error:&v19];
  v13 = v19;
  if ((v9 & 1) == 0)
  {
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [v5 fullNameWithDatabaseName:0];
    v16 = [v14 initWithFormat:@"Finding max %@", v15];

    [v6 handleError:v13 message:v16];
  }

  v17 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v17;
}

void __68__EDProtectedDatabasePersistence__maxRowIDForColumn_withConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 databaseIDValue];

  *a4 = 1;
}

- (BOOL)_performOnDemandReconciliationForConnection:(id)a3 withSchema:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v9 = "Skipping on-demand reconciliation from the main thread";
LABEL_10:
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, v9, &v16, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ((EFProtectedDataAvailable() & 1) == 0)
  {
    v8 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v9 = "Skipping on-demand reconciliation because protected data isn't available";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_reconciliationLock);
  if ([(EDProtectedDatabasePersistence *)self isReconciling])
  {
    os_unfair_lock_unlock(&self->_reconciliationLock);
    v8 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v9 = "Skipping on-demand reconciliation because we're already reconciling";
      goto LABEL_10;
    }

LABEL_11:
    v10 = 1;
    goto LABEL_12;
  }

  [(EDProtectedDatabasePersistence *)self setIsReconciling:1];
  os_unfair_lock_unlock(&self->_reconciliationLock);
  v13 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Triggering on-demand reconciliation", &v16, 2u);
  }

  v8 = [MEMORY[0x1E699B860] transactionWithDescription:@"on-demand reconciliation"];
  v14 = [(EDProtectedDatabasePersistence *)self _reconcileJournalsWithSchema:v7 connection:v6];
  v10 = v14 == 0;
  v15 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = v14;
    _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Completed on-demand reconciliation with result: %lu", &v16, 0xCu);
  }

  [v8 invalidate];
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)reconcileJournalsWithSchema:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_reconciliationLock);
  if (![(EDProtectedDatabasePersistence *)self isReconciling])
  {
    [(EDProtectedDatabasePersistence *)self setIsReconciling:1];
    os_unfair_lock_unlock(&self->_reconciliationLock);
    v10 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Triggering reconciliation", buf, 2u);
    }

    v11 = [MEMORY[0x1E699B860] transactionWithDescription:@"reconciliation"];
    reconciliationQueue = self->_reconciliationQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__EDProtectedDatabasePersistence_reconcileJournalsWithSchema_completionBlock___block_invoke;
    v15[3] = &unk_1E8256198;
    v15[4] = self;
    v16 = v6;
    v17 = v11;
    v18 = v7;
    v9 = v11;
    dispatch_async(reconciliationQueue, v15);

    goto LABEL_7;
  }

  os_unfair_lock_unlock(&self->_reconciliationLock);
  if (v7)
  {
    v8 = self->_reconciliationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__EDProtectedDatabasePersistence_reconcileJournalsWithSchema_completionBlock___block_invoke_62;
    block[3] = &unk_1E8251B48;
    v14 = v7;
    dispatch_async(v8, block);
    v9 = v14;
LABEL_7:
  }
}

uint64_t __78__EDProtectedDatabasePersistence_reconcileJournalsWithSchema_completionBlock___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _reconcileJournalsWithSchema:*(a1 + 40) connection:0];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v2;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Completed reconciliation with result: %lu", &v7, 0xCu);
  }

  result = [*(a1 + 48) invalidate];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)_reconcileJournalsWithSchema:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if ([v7 isWriter])
  {
    v9 = v7;
  }

  else
  {
    v10 = [(EDProtectedDatabasePersistence *)self database];
    v9 = [v10 checkOutConnectionIsWriter:1];
  }

  v11 = [(EDProtectedDatabasePersistence *)self _runReconciliationWithSchema:v6 connection:v9];
  if (v9 != v7)
  {
    v12 = [(EDProtectedDatabasePersistence *)self database];
    [v12 checkInConnection:v9];
  }

  [(EDProtectedDatabasePersistence *)self finishJournalReconciliation:v11];
  os_unfair_lock_lock(&self->_reconciliationLock);
  [(EDProtectedDatabasePersistence *)self setIsReconciling:0];
  os_unfair_lock_unlock(&self->_reconciliationLock);
  if (!v11)
  {
    v13 = [(EDProtectedDatabasePersistence *)self hookRegistry];
    [v13 persistenceDidReconcileProtectedData];
  }

  objc_autoreleasePoolPop(v8);
  return v11;
}

- (unint64_t)_runReconciliationWithSchema:(id)a3 connection:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v43 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v8 = +[EDProtectedDatabasePersistence signpostLog];
  v9 = [(EDProtectedDatabasePersistence *)self signpostID];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "EDProtectedDatabasePersistenceReconciliation", "Starting reconciliation of protected data", buf, 2u);
  }

  if (![(EDProtectedDatabasePersistence *)self protectedDataAvailable])
  {
    v24 = 1;
    goto LABEL_49;
  }

  if ([v7 journalDatabaseAttached])
  {
    [(EDProtectedDatabasePersistence *)self _detachJournalDatabaseFromConnection:v7];
  }

  if (([v7 protectedDatabaseAttached] & 1) == 0)
  {
    v48 = 0;
    v10 = [(EDProtectedDatabasePersistence *)self _attachProtectedDatabaseToConnection:v7 withSchema:v6 error:&v48];
    v11 = v48;
    v12 = v11;
    if (!v10)
    {
      v24 = [EDProtectedDatabasePersistence _resultForConnection:v7 success:0 error:v11 errorMessage:@"Unable to attach protected database"];

      goto LABEL_49;
    }
  }

  v46 = 0;
  v47 = 0;
  v13 = [(EDProtectedDatabasePersistence *)self journalManager];
  v14 = [v13 oldestJournal];
  if (!v14)
  {
LABEL_33:
    v24 = 0;
    goto LABEL_43;
  }

  *&v15 = 134217984;
  v42 = v15;
  while (1)
  {
    v16 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v14 number];
      *buf = v42;
      v54 = v17;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Reconciling journal %lu", buf, 0xCu);
    }

    v18 = [objc_opt_class() journalDatabaseName];
    v45 = 0;
    v19 = [v7 attachJournalDatabase:v14 withName:v18 error:&v45];
    v20 = v45;

    if ((v19 & 1) == 0)
    {
      break;
    }

    v44 = v20;
    v21 = [(EDProtectedDatabasePersistence *)self _upgradeJournalWithConnection:v7 schema:v6 error:&v44];
    v22 = v44;

    v20 = v22;
    if (!v21)
    {
      v34 = +[EDProtectedDatabasePersistence log];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = [v14 number];
        v36 = [v22 ef_publicDescription];
        [(EDProtectedDatabasePersistence *)v36 _runReconciliationWithSchema:buf connection:v35];
      }

      v33 = [EDProtectedDatabasePersistence _resultForConnection:v7 success:0 error:v22 errorMessage:@"Upgrading journal for merging"];
      goto LABEL_41;
    }

    v23 = [(EDProtectedDatabasePersistence *)self _mergeSchema:v6 connection:v7 journaledRows:&v47 newRows:&v46];
    v24 = v23;
    if (v23 == 2)
    {
      if ([(EDProtectedDatabasePersistence *)self _isJournalMalformedForSchema:v6 connection:v7])
      {
        v25 = +[EDProtectedDatabasePersistence log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v28 = [v14 number];
          *buf = v42;
          v54 = v28;
          _os_log_error_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_ERROR, "Skipped merging data due to malformed schema for journal %lu", buf, 0xCu);
        }

        v24 = 0;
      }

      else
      {
        v25 = +[EDProtectedDatabasePersistence log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v29 = [v14 number];
          *buf = v42;
          v54 = v29;
          _os_log_error_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_ERROR, "Permanently failed to merge data for journal %lu", buf, 0xCu);
        }

        v24 = 2;
      }
    }

    else
    {
      if (v23 != 1)
      {
        goto LABEL_29;
      }

      v25 = +[EDProtectedDatabasePersistence log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = [v14 number];
        *buf = v42;
        v54 = v27;
        _os_log_error_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_ERROR, "Temporarily failed to merge data for journal %lu", buf, 0xCu);
      }

      v24 = 1;
    }

LABEL_29:
    [(EDProtectedDatabasePersistence *)self _detachJournalDatabaseFromConnection:v7];
    if (v24)
    {
      goto LABEL_42;
    }

    [v13 mergedJournal:v14];
    v26 = [v13 oldestJournal];

    v14 = v26;
    if (!v26)
    {
      goto LABEL_33;
    }
  }

  v30 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = [v14 number];
    v32 = [v20 ef_publicDescription];
    [(EDProtectedDatabasePersistence *)v32 _runReconciliationWithSchema:buf connection:v31];
  }

  v33 = [EDProtectedDatabasePersistence _resultForConnection:v7 success:0 error:v20 errorMessage:@"Attaching journal for merging"];
LABEL_41:
  v24 = v33;
LABEL_42:

LABEL_43:
  v37 = +[EDProtectedDatabasePersistence signpostLog];
  v38 = [(EDProtectedDatabasePersistence *)self signpostID];
  if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *v49 = 134349312;
    v50 = v47;
    v51 = 2050;
    v52 = v46;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v37, OS_SIGNPOST_INTERVAL_END, v38, "EDProtectedDatabasePersistenceReconciliation", "TotalJournaledRows=%{public,signpost.telemetry:number1}lu, NewJournaledRows=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", v49, 0x16u);
  }

  [v43 timeIntervalSinceNow];
  if (v39 < -10.0)
  {
    EFSaveTailspin();
  }

LABEL_49:
  v40 = *MEMORY[0x1E69E9840];
  return v24;
}

- (unint64_t)_mergeSchema:(id)a3 connection:(id)a4 journaledRows:(unint64_t *)a5 newRows:(unint64_t *)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [a3 tables];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      v19 = 0;
      v20 = 0;
      v16 = [(EDProtectedDatabasePersistence *)self _mergeTable:v15 connection:v10 journaledRows:&v20 newRows:&v19];
      if (v16)
      {
        break;
      }

      if (a5)
      {
        *a5 += v20;
      }

      if (a6)
      {
        *a6 += v19;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (unint64_t)_mergeTable:(id)a3 connection:(id)a4 journaledRows:(unint64_t *)a5 newRows:(unint64_t *)a6
{
  v88 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v46 = a4;
  v47 = v8;
  v50 = self;
  v9 = [objc_opt_class() journalDatabaseName];
  v45 = [v8 fullNameWithDatabaseName:v9];

  v10 = [objc_opt_class() protectedDatabaseName];
  v44 = [v8 fullNameWithDatabaseName:v10];

  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v49 = [(EDProtectedDatabasePersistence *)v50 _allReferencingColumnsForTable:v8];
  v11 = [v8 uniqueColumns];
  v48 = [v11 firstObject];

  if (v48)
  {
    v12 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v8 name];
      *buf = 138543874;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v48;
      *&buf[22] = 2114;
      v87 = v49;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_INFO, "Merging table %{public}@ with unique columns: %{public}@\n  referencing columns: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v12 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = [v8 name];
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_INFO, "Merging table %{public}@ without unique columns", buf, 0xCu);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v87 = 0;
  v40 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v15 = &v78;
  do
  {
    v15[3] = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v77 = 0;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke;
    v65[3] = &unk_1E8256210;
    v17 = v45;
    v66 = v17;
    v18 = v48;
    v67 = v18;
    v19 = v44;
    v76 = a2;
    v68 = v19;
    v69 = v50;
    v20 = v16;
    v70 = v20;
    v73 = &v78;
    v74 = &v82;
    v21 = v47;
    v71 = v21;
    v22 = v46;
    v72 = v22;
    v75 = buf;
    v23 = [v22 performWithOptions:3 transactionError:&v77 block:v65];
    v24 = v77;
    v41 = v19;
    v42 = v18;
    if (v83[3] || (v25 = [EDProtectedDatabasePersistence _resultForConnection:v22 success:v23 error:v24 errorMessage:@"Committing merge batch transaction"], (v83[3] = v25) != 0))
    {
      v26 = 0;
    }

    else
    {
      v27 = &v61;
      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v64 = 0;
      v28 = MEMORY[0x1E69E9820];
      v29 = v24;
      while (1)
      {
        v27[3] = 0;
        v60 = v29;
        v51[0] = v28;
        v51[1] = 3221225472;
        v51[2] = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_95;
        v51[3] = &unk_1E8256260;
        v52 = v20;
        v53 = v21;
        v30 = v49;
        v58 = &v82;
        v54 = v30;
        v55 = v50;
        v31 = v22;
        v56 = v31;
        v59 = &v61;
        v57 = v17;
        v32 = [v31 performWithOptions:3 transactionError:&v60 block:v51];
        v24 = v60;

        if (v83[3])
        {
          break;
        }

        v33 = [EDProtectedDatabasePersistence _resultForConnection:v31 success:v32 error:v24 errorMessage:@"Committing update batch transaction"];
        v83[3] = v33;
        v34 = v33 == 0;

        if (v34)
        {
          v27 = v62;
          v29 = v24;
          if (v62[3])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

LABEL_19:
      if (!v83[3])
      {
        v40 += v79[3];
      }

      _Block_object_dispose(&v61, 8);
      v26 = 1;
    }

    if (!v26)
    {
      break;
    }

    v15 = v79;
  }

  while (v79[3]);
  if (a5)
  {
    *a5 = v40;
  }

  if (a6)
  {
    *a6 = *(*&buf[8] + 24);
  }

  v35 = v83[3];
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v82, 8);
  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

BOOL __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v35 = a2;
  v3 = objc_alloc(MEMORY[0x1E699B948]);
  v4 = *MEMORY[0x1E699B768];
  v5 = [v3 initWithResultColumn:*MEMORY[0x1E699B768] table:*(a1 + 32)];
  if ([*(a1 + 40) count])
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2;
    v41[3] = &unk_1E82561C0;
    v6 = *(a1 + 40);
    v42 = *(a1 + 48);
    v43 = *(a1 + 32);
    v7 = [v6 ef_map:v41];
    if (![v7 count])
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:*(a1 + 112) object:*(a1 + 56) file:@"EDProtectedDatabasePersistence.m" lineNumber:595 description:@"We must have at least one join constraint"];
    }

    v8 = [objc_alloc(MEMORY[0x1E699B898]) initWithExpressions:v7];
    v9 = [v5 leftOuterJoin:*(a1 + 48) on:v8];
    [v9 addResultColumn:v4];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFB0] null];
    [v5 addResult:v10 alias:v4];
  }

  [v5 setLimit:500];
  v11 = objc_alloc_init(MEMORY[0x1E699B810]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_3;
  v37[3] = &unk_1E82561E8;
  v38 = *(a1 + 64);
  v12 = v11;
  v13 = *(a1 + 88);
  v39 = v12;
  v40 = v13;
  v36 = 0;
  v14 = [v35 executeSelectStatement:v5 withBlock:v37 error:&v36];
  v15 = v36;
  *(*(*(a1 + 96) + 8) + 24) = [EDProtectedDatabasePersistence _resultForConnection:v35 success:v14 error:v15 errorMessage:@"Selecting ROWIDs to merge"];
  if (*(*(*(a1 + 96) + 8) + 24))
  {
    v16 = 0;
  }

  else
  {
    v17 = [*(a1 + 56) hookRegistry];
    v18 = *(a1 + 64);
    v19 = [*(a1 + 72) name];
    [v17 persistenceWillAddProtectedDatabaseIDsFromJournal:v12 andReplaceJournalDatabaseIDsWithProtectedDatabaseIDs:v18 forTable:v19];

    v20 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v45 = v12;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_INFO, "Inserting %{public}@", buf, 0xCu);
    }

    v21 = [*(a1 + 72) rowIDColumn];
    v22 = [v21 columnExpression];
    v23 = [v22 in:v12];

    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v25 = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = [v23 ef_SQLExpression];
    v28 = [v24 initWithFormat:@"INSERT OR IGNORE INTO %@ SELECT * FROM %@ WHERE %@", v25, v26, v27];

    v29 = objc_alloc(MEMORY[0x1E696AEC0]);
    v30 = [*(a1 + 72) name];
    v31 = [v29 initWithFormat:@"Unable to insert new rows into protected database for table %@", v30];

    *(*(*(a1 + 96) + 8) + 24) = [*(a1 + 56) _executeStatementString:v28 onConnection:*(a1 + 80) errorMessage:v31];
    if (*(*(*(a1 + 96) + 8) + 24) || (*(*(*(a1 + 96) + 8) + 24) = [*(a1 + 56) _deleteRowIDs:v12 fromJournal:*(a1 + 32) withConnection:v35]) != 0)
    {
      v16 = 0;
    }

    else
    {
      *(*(*(a1 + 104) + 8) + 24) += [v12 count];
      v16 = *(*(*(a1 + 96) + 8) + 24) == 0;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v16;
}

id __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699B8C8];
  v5 = *(a1 + 32);
  v6 = [v3 name];
  v7 = [v4 table:v5 column:v6];

  v8 = MEMORY[0x1E699B8C8];
  v9 = *(a1 + 40);
  v10 = [v3 name];
  v11 = [v8 table:v9 column:v10];

  v12 = [v7 equalTo:v11];

  return v12;
}

void __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectAtIndexedSubscript:0];
  v4 = [v3 databaseIDValue];

  v5 = [v9 objectAtIndexedSubscript:1];
  v6 = [v5 numberValue];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  else
  {
    [*(a1 + 40) addIndex:v4];
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

BOOL __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2_97;
  v17 = &unk_1E8256238;
  v5 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v6 = v3;
  v24 = *(a1 + 80);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v20 = v6;
  v21 = v7;
  v9 = v8;
  v10 = *(a1 + 88);
  v22 = v9;
  v25 = v10;
  v11 = v4;
  v23 = v11;
  [v5 enumerateKeysAndObjectsUsingBlock:&v14];
  if (*(*(*(a1 + 80) + 8) + 24))
  {
    v12 = 0;
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 56) _deleteRowIDs:v11 fromJournal:*(a1 + 72) withConnection:{v6, v14, v15, v16, v17, v18, v19, v20, v21, v22}];
    [*(a1 + 32) removeObjectsForKeys:v11];
    v12 = *(*(*(a1 + 80) + 8) + 24) == 0;
  }

  return v12;
}

void __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2_97(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v47 = a2;
  v46 = a3;
  v6 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = v47;
    *&buf[12] = 2114;
    *&buf[14] = v46;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "Replacing %{public}@ with %{public}@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) name];
  v8 = [v7 isEqualToString:@"subjects"];

  if (v8)
  {
    v9 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v47;
      *&buf[12] = 2114;
      *&buf[14] = v46;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Mapping subjectID %{public}@ to %{public}@", buf, 0x16u);
    }
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(a1 + 40);
  v10 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v10)
  {
    v44 = *v54;
    while (2)
    {
      v45 = v10;
      for (i = 0; i != v45; ++i)
      {
        if (*v54 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        v13 = [v12 table];
        v14 = [v13 name];

        v15 = [v12 name];
        v16 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:v14];
        [v16 setObject:v46 forKeyedSubscript:v15];
        v17 = [v12 columnExpression];
        v18 = [v17 equalTo:v47];
        [v16 setWhereClause:v18];

        v19 = objc_alloc(MEMORY[0x1E696AEC0]);
        v20 = [v12 table];
        v21 = [v20 name];
        v22 = [v19 initWithFormat:@"Unable to merge journal for table %@", v21];

        v23 = *(a1 + 48);
        v52 = 0;
        v24 = [v23 executeUpdateStatement:v16 error:&v52];
        v25 = v52;
        *(*(*(a1 + 80) + 8) + 24) = [EDProtectedDatabasePersistence _resultForConnection:*(a1 + 48) success:v24 error:v25 errorMessage:v22];
        v26 = *(*(*(a1 + 80) + 8) + 24);
        if (v26)
        {
          if (v26 != 2)
          {
            v38 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = [*(a1 + 32) name];
              v40 = [v12 fullNameWithDatabaseName:0];
              __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2_97_cold_1(v39, v40, buf, v38);
            }

            *a4 = 1;
            goto LABEL_32;
          }

          v27 = +[EDProtectedDatabasePersistence log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138544130;
            *&buf[4] = v14;
            *&buf[12] = 2114;
            *&buf[14] = v15;
            *&buf[22] = 2114;
            v62 = v47;
            LOWORD(v63) = 2114;
            *(&v63 + 2) = v46;
            _os_log_error_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_ERROR, "Conflict merging table %{public}@.%{public}@ %{public}@ with %{public}@", buf, 0x2Au);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v62 = __Block_byref_object_copy__34;
          *&v63 = __Block_byref_object_dispose__34;
          *(&v63 + 1) = 0;
          v28 = [*(a1 + 56) reconciliationMergeHandlers];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_104;
          v49[3] = &unk_1E82559D8;
          v51 = buf;
          v29 = v14;
          v50 = v29;
          [v28 performWhileLocked:v49];

          if (*(*&buf[8] + 40))
          {
            v30 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *v57 = 138543362;
              v58 = v29;
              _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "Merge handler found for table %{public}@", v57, 0xCu);
            }

            v31 = *(*&buf[8] + 40);
            v32 = *(a1 + 64);
            v33 = *(*(a1 + 88) + 8) + 24;
            v48 = v25;
            v34 = [v31 handleReconciliationMergeErrorForTable:v29 columnName:v15 statement:v16 journalRowID:v47 protectedRowID:v46 connection:v32 rowsUpdated:v33 error:&v48];
            v35 = v48;

            *(*(*(a1 + 80) + 8) + 24) = v34;
            v36 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = *(*(*(a1 + 80) + 8) + 24);
              *v57 = 138543618;
              v58 = v29;
              v59 = 2048;
              v60 = v37;
              _os_log_impl(&dword_1C61EF000, v36, OS_LOG_TYPE_DEFAULT, "Merge handler for table %{public}@ returned with result %lu", v57, 0x16u);
            }
          }

          else
          {
            v36 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *v57 = 138543362;
              v58 = v29;
              _os_log_error_impl(&dword_1C61EF000, v36, OS_LOG_TYPE_ERROR, "No merge handler found for table %{public}@", v57, 0xCu);
            }

            v35 = v25;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          *(*(*(a1 + 88) + 8) + 24) += sqlite3_changes([*(a1 + 48) sqlDB]);
          v35 = v25;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:

  [*(a1 + 72) addObject:v47];
  if (*(*(*(a1 + 88) + 8) + 24) >= 0x1F4uLL)
  {
    *a4 = 1;
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_104(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (unint64_t)_deleteRowIDs:(id)a3 fromJournal:(id)a4 withConnection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [EDProtectedDatabasePersistence _deleteRowIDs:v7 fromJournal:v10 withConnection:?];
  }

  v11 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v12 = [v11 in:v7];

  v13 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:v8 where:v12];
  v19 = 0;
  v14 = [v9 executeDeleteStatement:v13 error:&v19];
  v15 = v19;
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to delete rows from journal for table %@", v8];
  v17 = [EDProtectedDatabasePersistence _resultForConnection:v9 success:v14 error:v15 errorMessage:v16];

  return v17;
}

- (void)scheduleRecurringActivity
{
  if ([(EDProtectedDatabasePersistence *)self supportsJournaling])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__EDProtectedDatabasePersistence_scheduleRecurringActivity__block_invoke;
    aBlock[3] = &unk_1E8251BE0;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__EDProtectedDatabasePersistence_scheduleRecurringActivity__block_invoke_2;
    v5[3] = &unk_1E8251BE0;
    v5[4] = self;
    v4 = _Block_copy(v5);
    ef_xpc_activity_register();
  }
}

void __59__EDProtectedDatabasePersistence_scheduleRecurringActivity__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CC0]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9DB8], 0);
  [*(a1 + 32) addAdditionalCriteriaToCleanupActivity:xdict];
}

void __59__EDProtectedDatabasePersistence_scheduleRecurringActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Starting clean up", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [*(a1 + 32) database];
  v6 = [v5 protectedSchema];
  v7 = [v6 tables];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = *v15;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if (xpc_activity_should_defer(v3) && xpc_activity_set_state(v3, 3))
      {
        break;
      }

      v12 = [*(a1 + 32) _databaseIDsToDeleteForTable:v11];
      if ([v12 count])
      {
        [*(a1 + 32) _deleteDatabaseIDs:v12 fromTable:v11];
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_databaseIDsToDeleteForTable:(id)a3
{
  v4 = a3;
  v5 = [(EDProtectedDatabasePersistence *)self _allReferencingColumnsForTable:v4];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v6 = [MEMORY[0x1E696AD60] string];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke;
  v22[3] = &unk_1E8256288;
  v24 = v25;
  v7 = v6;
  v23 = v7;
  [v5 enumerateObjectsUsingBlock:v22];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [(EDProtectedDatabasePersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDProtectedDatabasePersistence _databaseIDsToDeleteForTable:]"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke_2;
  v17[3] = &unk_1E8254150;
  v11 = v4;
  v18 = v11;
  v19 = self;
  v12 = v7;
  v20 = v12;
  v13 = v8;
  v21 = v13;
  [v9 __performReadWithCaller:v10 usingBlock:v17];

  v14 = v21;
  v15 = v13;

  _Block_object_dispose(v25, 8);

  return v15;
}

void __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) appendString:@" UNION "];
  }

  v3 = *(a1 + 32);
  v4 = [v9 name];
  v5 = [v9 table];
  v6 = [v5 fullNameWithDatabaseName:0];
  [v3 appendFormat:@"SELECT DISTINCT %@ FROM %@", v4, v6];

  if ([v9 nullable])
  {
    [*(a1 + 32) appendString:@" WHERE "];
    v7 = [v9 columnExpressionWithFullName];
    v8 = [v7 isNotNull];
    [v8 ef_renderSQLExpressionInto:*(a1 + 32)];
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

uint64_t __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 protectedDatabaseAttached])
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [*(a1 + 32) rowIDColumn];
    v6 = [v5 name];
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [objc_opt_class() protectedDatabaseName];
    v10 = [v8 fullNameWithDatabaseName:v9];
    v11 = [v4 initWithFormat:@"SELECT %1$@ FROM %2$@ WHERE %1$@ NOT IN (%3$@)", v6, v10, *(a1 + 48)];

    v12 = [v3 preparedStatementForQueryString:v11];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke_3;
    v15[3] = &unk_1E8250300;
    v16 = *(a1 + 56);
    v13 = [v12 executeUsingBlock:v15 error:0];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

void __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (void)_deleteDatabaseIDs:(id)a3 fromTable:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  v9 = [(EDProtectedDatabasePersistence *)self _allReferencingColumnsForTable:v7];
  v10 = [(EDProtectedDatabasePersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDProtectedDatabasePersistence _deleteDatabaseIDs:fromTable:]"];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __63__EDProtectedDatabasePersistence__deleteDatabaseIDs_fromTable___block_invoke;
  v22 = &unk_1E8254150;
  v12 = v9;
  v23 = v12;
  v24 = self;
  v13 = v8;
  v25 = v13;
  v14 = v7;
  v26 = v14;
  [v10 __performWriteWithCaller:v11 usingBlock:&v19];

  v15 = [EDProtectedDatabasePersistence log:v19];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 count];
    v17 = [v14 name];
    *buf = 134218242;
    v28 = v16;
    v29 = 2114;
    v30 = v17;
    _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Deleted %lu rows from %{public}@", buf, 0x16u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __63__EDProtectedDatabasePersistence__deleteDatabaseIDs_fromTable___block_invoke(id *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 protectedDatabaseAttached])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = a1[4];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = *v19;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if (([a1[5] _removeExistingDatabaseIDs:a1[6] withColumn:*(*(&v18 + 1) + 8 * v7) connection:v3] & 1) == 0)
          {
            v11 = 0;
            goto LABEL_13;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = [a1[6] allObjects];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__EDProtectedDatabasePersistence__deleteDatabaseIDs_fromTable___block_invoke_2;
    v14[3] = &unk_1E8252B28;
    v9 = a1[7];
    v10 = a1[5];
    v15 = v9;
    v16 = v10;
    v17 = v3;
    [v8 ef_enumerateObjectsInBatchesOfSize:45000 block:v14];

    v11 = 1;
    v4 = v15;
LABEL_13:
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __63__EDProtectedDatabasePersistence__deleteDatabaseIDs_fromTable___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) rowIDColumn];
  v5 = [v4 columnExpressionWithFullName];
  v6 = [v5 in:v3];

  v7 = objc_alloc(MEMORY[0x1E699B8E8]);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = [objc_opt_class() protectedDatabaseName];
  v11 = [v9 fullNameWithDatabaseName:v10];
  v12 = [v7 initWithTable:v11 where:v6];

  v13 = *(a1 + 48);
  v14 = 0;
  [v13 executeDeleteStatement:v12 error:&v14];
}

- (BOOL)_removeExistingDatabaseIDs:(id)a3 withColumn:(id)a4 connection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v10 = objc_alloc(MEMORY[0x1E699B948]);
  v11 = [v8 name];
  v12 = [v8 table];
  v13 = [v12 fullNameWithDatabaseName:0];
  v14 = [v10 initWithResultColumn:v11 table:v13];

  v15 = [v8 columnExpressionWithFullName];
  v16 = [v7 allObjects];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__EDProtectedDatabasePersistence__removeExistingDatabaseIDs_withColumn_connection___block_invoke;
  v22[3] = &unk_1E82562B0;
  v17 = v14;
  v23 = v17;
  v18 = v15;
  v24 = v18;
  v27 = &v28;
  v19 = v9;
  v25 = v19;
  v20 = v7;
  v26 = v20;
  [v16 ef_enumerateObjectsInBatchesOfSize:45000 block:v22];

  LOBYTE(v7) = *(v29 + 24);
  _Block_object_dispose(&v28, 8);

  return v7;
}

void __83__EDProtectedDatabasePersistence__removeExistingDatabaseIDs_withColumn_connection___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 40) in:a2];
  [*(a1 + 32) setWhere:v5];

  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__EDProtectedDatabasePersistence__removeExistingDatabaseIDs_withColumn_connection___block_invoke_2;
  v8[3] = &unk_1E8250300;
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  *(*(*(a1 + 64) + 8) + 24) = [v7 executeSelectStatement:v6 withBlock:v8 error:0];
  *a3 = *(*(*(a1 + 64) + 8) + 24) ^ 1;
}

void __83__EDProtectedDatabasePersistence__removeExistingDatabaseIDs_withColumn_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 removeObject:v3];
}

- (BOOL)_isJournalMalformedForSchema:(id)a3 connection:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v27 = a4;
  v24 = v5;
  v6 = [objc_opt_class() journalDatabaseName];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v5 tables];
  v22 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v22)
  {
    v23 = *v34;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        v8 = [v7 name];
        v9 = [v27 tableExists:v8 inDatabase:v6];

        if ((v9 & 1) == 0)
        {
LABEL_20:
          v19 = 1;
          goto LABEL_22;
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v10 = [v7 columns];
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v11)
        {
          v12 = *v30;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v29 + 1) + 8 * j);
              v28 = 4;
              v15 = [v14 name];
              v16 = [v7 name];
              v17 = [v27 columnExists:v15 inTable:v16 database:v6 type:&v28];

              if (v17)
              {
                v18 = v28;
                if (v18 == [v14 type])
                {
                  continue;
                }
              }

              goto LABEL_20;
            }

            v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v19 = 0;
      v22 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (unint64_t)_executeUpdateStatement:(id)a3 onConnection:(id)a4 errorMessage:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14 = 0;
  v10 = [v8 executeUpdateStatement:v7 error:&v14];
  v11 = v14;
  v12 = [EDProtectedDatabasePersistence _resultForConnection:v8 success:v10 error:v11 errorMessage:v9];

  return v12;
}

- (unint64_t)_executeStatementString:(id)a3 onConnection:(id)a4 errorMessage:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 sqlConnection];
  v15 = 0;
  v11 = [v10 executeStatementString:v7 error:&v15];
  v12 = v15;

  v13 = [EDProtectedDatabasePersistence _resultForConnection:v8 success:v11 error:v12 errorMessage:v9];
  return v13;
}

+ (BOOL)_isRecoverableError:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 code];
    v4 = v5 == 23 || v5 == 10;
  }

  return v4;
}

+ (unint64_t)_resultForConnection:(id)a3 success:(BOOL)a4 error:(id)a5 errorMessage:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4)
  {
    v12 = 0;
  }

  else if (([v9 hadIOError] & 1) != 0 || +[EDProtectedDatabasePersistence _isRecoverableError:](EDProtectedDatabasePersistence, "_isRecoverableError:", v10))
  {
    v12 = 1;
  }

  else
  {
    [v9 handleError:v10 message:v11];
    v12 = 2;
  }

  return v12;
}

- (id)_allReferencingColumnsForTable:(id)a3
{
  v3 = a3;
  v4 = [v3 foreignKeyReferences];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v8 = v7;

  v9 = [v3 associatedColumns];
  if ([v9 count])
  {
    [v8 unionSet:v9];
  }

  return v8;
}

- (void)registerMergeHandler:(id)a3 forTable:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(EDProtectedDatabasePersistence *)self reconciliationMergeHandlers];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__EDProtectedDatabasePersistence_registerMergeHandler_forTable___block_invoke;
  v12[3] = &unk_1E82562D8;
  v10 = v8;
  v16 = a2;
  v13 = v10;
  v14 = self;
  v11 = v7;
  v15 = v11;
  [v9 performWhileLocked:v12];
}

void __64__EDProtectedDatabasePersistence_registerMergeHandler_forTable___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKey:a1[4]];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a1[7] object:a1[5] file:@"EDProtectedDatabasePersistence.m" lineNumber:952 description:@"Merge handler already registered for table"];
  }

  [v5 setObject:a1[6] forKey:a1[4]];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDProtectedDatabasePersistence.m" lineNumber:976 description:{@"%s can only be called from unit tests", "-[EDProtectedDatabasePersistence test_tearDown]"}];
  }

  v4 = [(EDProtectedDatabasePersistence *)self journalManager];
  [v4 test_tearDown];
}

- (void)_runReconciliationWithSchema:(uint64_t)a3 connection:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to attach journal %lu for reconciliation due to error %{public}@", v4, v5);
}

- (void)_runReconciliationWithSchema:(uint64_t)a3 connection:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to upgrade journal %lu for reconciliation due to error %{public}@", v4, v5);
}

void __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2_97_cold_1(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to merge table %{public}@ for %{public}@", a3, a4);
}

- (void)_deleteRowIDs:(uint64_t)a1 fromJournal:(NSObject *)a2 withConnection:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_DEBUG, "Deleting from journal: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end