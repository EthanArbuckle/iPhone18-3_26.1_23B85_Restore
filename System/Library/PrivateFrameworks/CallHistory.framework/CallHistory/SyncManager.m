@interface SyncManager
- (SyncManager)init;
- (SyncManager)initWithTransactionManager:(id)a3 dbHandle:(id)a4;
- (double)timerIncoming;
- (double)timerLifetime;
- (double)timerOutgoing;
- (id)archiveCallObject:(id)a3;
- (id)bundleIDToServiceProvider:(id)a3;
- (id)fetchAllObjects;
- (id)fetchCallIdentifiersWithPredicate:(id)a3 sortDescriptors:(id)a4 limitsDictionary:(id)a5 limit:(unint64_t)a6 offset:(unint64_t)a7 batchSize:(unint64_t)a8;
- (id)fetchCallsWithPredicate:(id)a3 sortDescriptors:(id)a4 limitsDictionary:(id)a5 limit:(unint64_t)a6 offset:(unint64_t)a7 batchSize:(unint64_t)a8;
- (id)fetchCoalescedCallsWithPredicate:(id)a3 sortDescriptors:(id)a4 limitsDictionary:(id)a5 limit:(unint64_t)a6 offset:(unint64_t)a7 batchSize:(unint64_t)a8;
- (id)fetchObjectWithUniqueId:(id)a3;
- (id)fetchObjectsWithLimits:(id)a3;
- (id)predicateForCallKind:(id)a3;
- (id)predicateForCallKinds:(id)a3;
- (id)predicateForLimits:(id)a3;
- (id)updatedPredicate:(id)a3 withLimits:(id)a4;
- (int64_t)deleteCallsWithPredicate:(id)a3 withTransaction:(BOOL)a4 error:(id *)a5;
- (unint64_t)fetchCallCountWithPredicate:(id)a3 sortDescriptors:(id)a4 limitsDictionary:(id)a5;
- (unint64_t)fetchCoalescedCallCountWithPredicate:(id)a3 sortDescriptors:(id)a4 limitsDictionary:(id)a5;
- (void)addUpdateTransactions:(id)a3;
- (void)deleteAllObjects;
- (void)deleteObjectsWithLimits:(id)a3;
- (void)deleteObjectsWithUniqueIds:(id)a3 withTransaction:(BOOL)a4;
- (void)initDBHandle;
- (void)insert:(id)a3 withTransaction:(BOOL)a4;
- (void)insertRecords:(id)a3;
- (void)insertRecordsWithoutTransactions:(id)a3;
- (void)resetTimers;
- (void)updateAllObjects:(id)a3;
- (void)updateObjects:(id)a3;
- (void)updateObjectsWithCalls:(id)a3 withTransactions:(BOOL)a4;
@end

@implementation SyncManager

- (SyncManager)init
{
  v3 = +[TransactionManager instance];
  v4 = +[CHDatabaseClientHandleManager sharedInstance];
  v5 = [v4 databaseClientHandle];
  v6 = [(SyncManager *)self initWithTransactionManager:v3 dbHandle:v5];

  return v6;
}

- (SyncManager)initWithTransactionManager:(id)a3 dbHandle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SyncManager;
  v9 = [(CHLogger *)&v14 initWithDomain:"SyncManager"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transactionManager, a3);
    v11 = objc_alloc_init(CHFeatureFlags);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    objc_storeStrong(&v10->_dbHandle, a4);
  }

  return v10;
}

- (void)initDBHandle
{
  v5 = +[CHDatabaseClientHandleManager sharedInstance];
  v3 = [v5 databaseClientHandle];
  dbHandle = self->_dbHandle;
  self->_dbHandle = v3;
}

- (void)insert:(id)a3 withTransaction:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SyncManager *)self dbHandle];
  v8 = [CHCallFingerprint matchCallWithFingerprint:v6 usingDatabase:v7];

  if (v8)
  {
    if ([CHCallFingerprint shouldCall:v6 updateMatchingCall:v8])
    {
      v9 = [CHCallFingerprint updateCall:v6 withFingerprintedCall:v8 areBothCallsLocal:1];

      v10 = [(CHLogger *)self logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = v8;
        v32 = 2114;
        v33 = v9;
        _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Updating %{public}@ with %{public}@", buf, 0x16u);
      }

      v11 = [v8 uniqueId];
      v28 = v11;
      v29 = v9;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [(SyncManager *)self updateObjectsWithCalls:v12 withTransactions:0];
      v6 = v9;
      goto LABEL_20;
    }

    v13 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v8;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_1C3E90000, v13, OS_LOG_TYPE_DEFAULT, "Not updating matching call %@ with new call %@", buf, 0x16u);
    }
  }

  v14 = objc_alloc(MEMORY[0x1E696AFB0]);
  v15 = [v6 uniqueId];
  v16 = [v14 initWithUUIDString:v15];

  if (!v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v18 = [v17 UUIDString];
    [v6 setUniqueId:v18];
  }

  v19 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v6 uniqueId];
    *buf = 138543362;
    v31 = v20;
    _os_log_impl(&dword_1C3E90000, v19, OS_LOG_TYPE_DEFAULT, "Inserting call with UUID %{public}@", buf, 0xCu);
  }

  v21 = [(SyncManager *)self dbHandle];
  [v21 createCallRecord:v6];

  if (v4)
  {
    v27 = 0;
    v12 = [v6 archivedDataWithError:&v27];
    v22 = v27;
    v11 = v22;
    if (v12)
    {
      v23 = [[CHTransaction alloc] initWithType:0 andRecord:v12];
      transactionManager = self->_transactionManager;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObject:v23];
      [(TransactionManagerProtocol *)transactionManager appendTransactions:v25];
    }

    else
    {
      if (!v22)
      {
LABEL_20:

        goto LABEL_21;
      }

      v23 = [(CHLogger *)self logHandle];
      if (os_log_type_enabled(&v23->super, OS_LOG_TYPE_ERROR))
      {
        [SyncManager insert:withTransaction:];
      }
    }

    goto LABEL_20;
  }

LABEL_21:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)insertRecords:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = self;
  [(SyncManager *)self insertRecordsWithoutTransactions:v4];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v24;
    *&v8 = 138412546;
    v20 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v22 = 0;
        v13 = [v12 archivedDataWithError:{&v22, v20}];
        v14 = v22;
        v15 = v14;
        if (v13)
        {
          v16 = [[CHTransaction alloc] initWithType:0 andRecord:v13];
          [v5 addObject:v16];
        }

        else
        {
          if (!v14)
          {
            goto LABEL_12;
          }

          v16 = [(CHLogger *)v21 logHandle];
          if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v28 = v12;
            v29 = 2114;
            v30 = v15;
            _os_log_error_impl(&dword_1C3E90000, &v16->super, OS_LOG_TYPE_ERROR, "Attempt to archive %@ failed with error %{public}@", buf, 0x16u);
          }
        }

LABEL_12:
        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    transactionManager = v21->_transactionManager;
    v18 = [v5 copy];
    [(TransactionManagerProtocol *)transactionManager appendTransactions:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)insertRecordsWithoutTransactions:(id)a3
{
  v4 = a3;
  v5 = [(SyncManager *)self dbHandle];
  [v5 createCallRecords:v4];
}

- (int64_t)deleteCallsWithPredicate:(id)a3 withTransaction:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v6)
  {
    v10 = [(SyncManager *)self dbHandle];
    v11 = [v10 fetchObjectsWithPredicate:v8];

    if (![v11 count])
    {

      v20 = 0;
      goto LABEL_16;
    }

    v25 = a5;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        v16 = 0;
        do
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(SyncManager *)self archiveCallObject:*(*(&v26 + 1) + 8 * v16)];
          v18 = [[CHTransaction alloc] initWithType:2 andRecord:v17];
          [v9 addObject:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    a5 = v25;
  }

  v19 = [(SyncManager *)self dbHandle];
  v20 = [v19 deleteCallsWithPredicate:v8];

  if (v20 >= 1)
  {
    v21 = [(SyncManager *)self dbHandle];
    v22 = [v21 saveDatabase:a5];

    if (v22)
    {
      [(TransactionManagerProtocol *)self->_transactionManager appendTransactions:v9];
    }

    else
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_16:

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (unint64_t)fetchCallCountWithPredicate:(id)a3 sortDescriptors:(id)a4 limitsDictionary:(id)a5
{
  v8 = a4;
  v9 = [(SyncManager *)self updatedPredicate:a3 withLimits:a5];
  v10 = [(SyncManager *)self dbHandle];
  v11 = [v10 fetchCallCountWithPredicate:v9 sortDescriptors:v8];

  return v11;
}

- (id)fetchCallsWithPredicate:(id)a3 sortDescriptors:(id)a4 limitsDictionary:(id)a5 limit:(unint64_t)a6 offset:(unint64_t)a7 batchSize:(unint64_t)a8
{
  v14 = a4;
  v15 = [(SyncManager *)self updatedPredicate:a3 withLimits:a5];
  v16 = [(SyncManager *)self dbHandle];
  v17 = [v16 fetchCallsWithPredicate:v15 sortDescriptors:v14 limit:a6 offset:a7 batchSize:a8];

  return v17;
}

- (id)fetchCallIdentifiersWithPredicate:(id)a3 sortDescriptors:(id)a4 limitsDictionary:(id)a5 limit:(unint64_t)a6 offset:(unint64_t)a7 batchSize:(unint64_t)a8
{
  v14 = a4;
  v15 = [(SyncManager *)self updatedPredicate:a3 withLimits:a5];
  v16 = [(SyncManager *)self dbHandle];
  v17 = [v16 fetchCallIdentifiersWithPredicate:v15 sortDescriptors:v14 limit:a6 offset:a7 batchSize:a8];

  return v17;
}

- (unint64_t)fetchCoalescedCallCountWithPredicate:(id)a3 sortDescriptors:(id)a4 limitsDictionary:(id)a5
{
  v8 = a4;
  v9 = [(SyncManager *)self updatedPredicate:a3 withLimits:a5];
  v10 = [(SyncManager *)self dbHandle];
  v11 = [v10 fetchCoalescedCallCountWithPredicate:v9 sortDescriptors:v8];

  return v11;
}

- (id)fetchCoalescedCallsWithPredicate:(id)a3 sortDescriptors:(id)a4 limitsDictionary:(id)a5 limit:(unint64_t)a6 offset:(unint64_t)a7 batchSize:(unint64_t)a8
{
  v14 = a4;
  v15 = [(SyncManager *)self updatedPredicate:a3 withLimits:a5];
  v16 = [(SyncManager *)self dbHandle];
  v17 = [v16 fetchCoalescedCallsWithPredicate:v15 sortDescriptors:v14 limit:a6 offset:a7 batchSize:a8];

  return v17;
}

- (id)fetchAllObjects
{
  v2 = [(SyncManager *)self dbHandle];
  v3 = [v2 fetchAll];

  return v3;
}

- (id)fetchObjectWithUniqueId:(id)a3
{
  v4 = a3;
  v5 = [(SyncManager *)self dbHandle];
  v6 = [v5 fetchObjectWithUniqueId:v4];

  return v6;
}

- (id)predicateForCallKind:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 objectForKeyedSubscript:@"kCHMediaTypeKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[CHRecentCall predicateForCallsWithMediaType:](CHRecentCall, "predicateForCallsWithMediaType:", [v5 integerValue]);
    [v4 addObject:v6];
  }

  v7 = [v3 objectForKeyedSubscript:@"kCHTTYTypeKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = +[CHRecentCall predicateForCallsWithTTYType:](CHRecentCall, "predicateForCallsWithTTYType:", [v7 integerValue]);
    [v4 addObject:v8];
  }

  v9 = [v3 objectForKeyedSubscript:@"kCHServiceProviderKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    if ([v10 length])
    {
      v11 = [CHRecentCall predicateForCallsWithServiceProvider:v10];
      [v4 addObject:v11];
    }
  }

  if ([v4 count] >= 2)
  {
    v12 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
LABEL_13:
    v13 = v12;
    goto LABEL_15;
  }

  if ([v4 count] == 1)
  {
    v12 = [v4 firstObject];
    goto LABEL_13;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)predicateForCallKinds:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SyncManager *)self predicateForCallKind:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)updatedPredicate:(id)a3 withLimits:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SyncManager *)self predicateForLimits:a4];
  v8 = v7;
  if (v6)
  {
    v9 = MEMORY[0x1E696AB28];
    v14[0] = v6;
    v14[1] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [v9 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = v7;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)predicateForLimits:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"kCHLimitCallKindsKey"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(SyncManager *)self predicateForCallKinds:v5];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v35 = v7;
  v8 = [v4 objectForKeyedSubscript:@"kCHLimitStartDateKey"];

  if (v8)
  {
    v9 = MEMORY[0x1E696AE18];
    v10 = [v4 objectForKeyedSubscript:@"kCHLimitStartDateKey"];
    v11 = [v9 predicateWithFormat:@"%K >= %@", @"date", v10];

    [v6 addObject:v11];
  }

  v12 = [v4 objectForKeyedSubscript:@"kCHLimitEndDateKey"];

  if (v12)
  {
    v13 = MEMORY[0x1E696AE18];
    v14 = [v4 objectForKeyedSubscript:@"kCHLimitEndDateKey"];
    v15 = [v13 predicateWithFormat:@"%K <= %@", @"date", v14];

    [v6 addObject:v15];
  }

  v16 = [v4 objectForKeyedSubscript:@"kCHLimitProtectedBundleIDsKey"];
  if (v16)
  {
    v17 = v16;
    v18 = [(SyncManager *)self featureFlags];
    v19 = [v18 protectedAppsEnabled];

    if (v19)
    {
      v20 = [v4 objectForKeyedSubscript:@"kCHLimitProtectedBundleIDsKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v5;
        v34 = v4;
        v21 = v20;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v37;
          do
          {
            v25 = 0;
            do
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v36 + 1) + 8 * v25);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = [(SyncManager *)self bundleIDToServiceProvider:v26];
                if ([v27 length])
                {
                  v28 = [CHRecentCall predicateForCallsContainingServiceProvider:v27];
                  v29 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v28];

                  [v6 addObject:v29];
                }
              }

              else
              {
                v27 = [(CHLogger *)self logHandle];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v41 = v26;
                  _os_log_error_impl(&dword_1C3E90000, v27, OS_LOG_TYPE_ERROR, "Invalid bundleID %{public}@", buf, 0xCu);
                }
              }

              ++v25;
            }

            while (v23 != v25);
            v23 = [v21 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v23);
        }

        v5 = v33;
        v4 = v34;
      }
    }
  }

  v30 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v6];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)bundleIDToServiceProvider:(id)a3
{
  v3 = a3;
  if ([(__CFString *)v3 caseInsensitiveCompare:@"com.apple.mobilephone"])
  {
    v4 = @"com.apple.FaceTime";
    if ([(__CFString *)v3 caseInsensitiveCompare:@"com.apple.FaceTime"])
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = @"com.apple.Telephony";
  }

  v5 = v4;

  return v4;
}

- (id)fetchObjectsWithLimits:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [(SyncManager *)self predicateForLimits:a3];
  v5 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 predicateFormat];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "fetching with predicate: %@", &v11, 0xCu);
  }

  v7 = [(SyncManager *)self dbHandle];
  v8 = [v7 fetchObjectsWithPredicate:v4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)deleteObjectsWithUniqueIds:(id)a3 withTransaction:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SyncManager *)self dbHandle];
  v8 = [v7 fetchObjectsWithUniqueIds:v6];

  v9 = [v8 count];
  v10 = [(CHLogger *)self logHandle];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 134217984;
      v29 = [v8 count];
      _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Deleting all %lu objects", buf, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v4)
    {
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          v16 = 0;
          do
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [(SyncManager *)self archiveCallObject:*(*(&v23 + 1) + 8 * v16)];
            v18 = [[CHTransaction alloc] initWithType:2 andRecord:v17];
            [v10 addObject:v18];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      v19 = [(SyncManager *)self dbHandle];
      v6 = v22;
      [v19 deleteObjectsWithUniqueIds:v22];

      [(TransactionManagerProtocol *)self->_transactionManager appendTransactions:v10];
    }

    else
    {
      v20 = [(SyncManager *)self dbHandle];
      [v20 deleteObjectsWithUniqueIds:v6];
    }

    notify_post("com.apple.callhistory.RecentDeletedNotification");
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "No Call Records found", buf, 2u);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllObjects
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(SyncManager *)self dbHandle];
  v5 = [v4 fetchAllNoLimit];

  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v31 = v3;
    v32 = self;
    v8 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = v7;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Deleting %lu calls", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        v14 = 0;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          v34 = 0;
          v16 = [v15 archivedDataWithError:{&v34, v29}];
          v17 = v34;
          v18 = v17;
          if (v16)
          {
            v19 = [[CHTransaction alloc] initWithType:2 andRecord:v16];
            [v9 addObject:v19];
          }

          else
          {
            if (!v17)
            {
              goto LABEL_15;
            }

            v19 = [(CHLogger *)v32 logHandle];
            if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v40 = v15;
              v41 = 2114;
              v42 = v18;
              _os_log_error_impl(&dword_1C3E90000, &v19->super, OS_LOG_TYPE_ERROR, "Attempt to archive %@ failed with error %{public}@", buf, 0x16u);
            }
          }

LABEL_15:
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v12);
    }

    v20 = objc_alloc_init(CHRecentCall);
    v21 = [CHTransaction toString:3];
    [(CHRecentCall *)v20 setUniqueId:v21];

    v33 = 0;
    v22 = [(CHRecentCall *)v20 archivedDataWithError:&v33];
    v23 = v33;
    v24 = v23;
    if (v22)
    {
      v25 = [[CHTransaction alloc] initWithType:3 andRecord:v22];
      [v9 addObject:v25];
      v3 = v31;
      p_isa = &v32->super.super.isa;
    }

    else
    {
      v3 = v31;
      p_isa = &v32->super.super.isa;
      if (!v23)
      {
LABEL_23:
        v27 = [p_isa dbHandle];
        [v27 deleteAll];

        [p_isa[4] appendTransactions:v9];
        notify_post("com.apple.callhistory.RecentsClearedNotification");

        v5 = v30;
        goto LABEL_24;
      }

      v25 = [(CHLogger *)v32 logHandle];
      if (os_log_type_enabled(&v25->super, OS_LOG_TYPE_ERROR))
      {
        [SyncManager insert:withTransaction:];
      }
    }

    goto LABEL_23;
  }

LABEL_24:

  objc_autoreleasePoolPop(v3);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)deleteObjectsWithLimits:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v21 = v4;
  v5 = [(SyncManager *)self fetchObjectsWithLimits:v4];
  v6 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v30) = [v5 count];
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Deleting %d objects", buf, 8u);
  }

  v24 = objc_opt_new();
  v23 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 uniqueId];

        if (v12)
        {
          v13 = [(SyncManager *)self archiveCallObject:v11];
          v14 = [[CHTransaction alloc] initWithType:2 andRecord:v13];
          [v24 addObject:v14];
          v15 = [v11 uniqueId];
          [v23 addObject:v15];
        }

        else
        {
          v13 = [(CHLogger *)self logHandle];
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          v14 = +[CHRecentCall callMediaTypeAsString:](CHRecentCall, "callMediaTypeAsString:", [v11 mediaType]);
          v16 = +[CHRecentCall callTTYTypeAsString:](CHRecentCall, "callTTYTypeAsString:", [v11 ttyType]);
          v17 = [v11 date];
          *buf = 138543874;
          v30 = v14;
          v31 = 2114;
          v32 = v16;
          v33 = 2114;
          v34 = v17;
          _os_log_impl(&dword_1C3E90000, v13, OS_LOG_TYPE_DEFAULT, "Cannot delete call with mediaType %{public}@ and ttyType %{public}@ placed on %{public}@ with nil unique ID", buf, 0x20u);
        }

LABEL_13:
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v8);
  }

  v18 = [(SyncManager *)self dbHandle];
  [v18 deleteObjectsWithUniqueIds:v23];

  [(TransactionManagerProtocol *)self->_transactionManager appendTransactions:v24];
  objc_autoreleasePoolPop(context);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateObjectsWithCalls:(id)a3 withTransactions:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(SyncManager *)self dbHandle];
  v8 = [v7 updateCallRecordsWithCalls:v9 error:0 save:1];

  if (v4)
  {
    [(SyncManager *)self addUpdateTransactions:v8];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)updateObjects:(id)a3
{
  v7 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(SyncManager *)self dbHandle];
  v6 = [v5 updateCallRecords:v7];
  [(SyncManager *)self addUpdateTransactions:v6];

  objc_autoreleasePoolPop(v4);
}

- (void)updateAllObjects:(id)a3
{
  v7 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(SyncManager *)self dbHandle];
  v6 = [v5 updateAllCallRecords:v7];
  [(SyncManager *)self addUpdateTransactions:v6];

  objc_autoreleasePoolPop(v4);
}

- (void)addUpdateTransactions:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SyncManager *)self archiveCallObject:*(*(&v14 + 1) + 8 * v10), v14];
        if (v11)
        {
          v12 = [[CHTransaction alloc] initWithType:1 andRecord:v11];
          [v5 addObject:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(TransactionManagerProtocol *)self->_transactionManager appendTransactions:v5];
  v13 = *MEMORY[0x1E69E9840];
}

- (double)timerLifetime
{
  v2 = [(SyncManager *)self dbHandle];
  v3 = [v2 timerLifetime];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)timerIncoming
{
  v2 = [(SyncManager *)self dbHandle];
  v3 = [v2 timerIncoming];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)timerOutgoing
{
  v2 = [(SyncManager *)self dbHandle];
  v3 = [v2 timerOutgoing];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)resetTimers
{
  v2 = [(SyncManager *)self dbHandle];
  [v2 resetTimers];
}

- (id)archiveCallObject:(id)a3
{
  v3 = MEMORY[0x1E696ACC8];
  v4 = a3;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 setOutputFormat:200];
  [v5 encodeObject:v4 forKey:*MEMORY[0x1E696A508]];

  v6 = [v5 encodedData];

  return v6;
}

- (void)insert:withTransaction:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Attempt to archive %@ failed with error %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end