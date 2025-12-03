@interface ML3DatabaseDistantResult
- (BOOL)_fetchRowsIfEmpty;
- (ML3DatabaseDistantResult)init;
- (ML3DatabaseDistantResult)initWithDistantConnection:(id)connection sql:(id)sql parameters:(id)parameters;
- (ML3DatabaseDistantResult)initWithStatement:(id)statement;
- (id)columnNameIndexMap;
- (id)description;
- (unint64_t)indexForColumnName:(id)name;
- (void)_localEnumerateRowsWithBlock:(id)block;
- (void)_remoteEnumerateRowsWithBlock:(id)block;
- (void)enumerateRowsWithBlock:(id)block;
@end

@implementation ML3DatabaseDistantResult

- (BOOL)_fetchRowsIfEmpty
{
  v37 = *MEMORY[0x277D85DE8];
  sql = self->_sql;
  if (sql)
  {
    v4 = 1;
    if ([(NSString *)sql length])
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 1;
      if (!self->_cachedRows)
      {
        distantConnection = self->_distantConnection;
        if (distantConnection)
        {
          currentTransactionID = [(ML3DatabaseDistantConnection *)distantConnection currentTransactionID];
          if (currentTransactionID)
          {
            [(ML3DatabaseConnection *)self->_distantConnection pushTransaction];
            v7 = +[MLMediaLibraryService sharedMediaLibraryService];
            v8 = dispatch_semaphore_create(0);
            v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            limitProperty = [(ML3DatabaseResult *)self limitProperty];
            v11 = limitProperty == 0;

            if (v11)
            {
              v14 = 0;
            }

            else
            {
              v33[0] = @"MLDatabaseQueryOptionLimitPropertyKey";
              limitProperty2 = [(ML3DatabaseResult *)self limitProperty];
              v33[1] = @"MLDatabaseQueryOptionLimitValueKey";
              v34[0] = limitProperty2;
              v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ML3DatabaseResult limitValue](self, "limitValue")}];
              v34[1] = v13;
              v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
            }

            v17 = self->_sql;
            parameters = self->_parameters;
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __45__ML3DatabaseDistantResult__fetchRowsIfEmpty__block_invoke;
            v24[3] = &unk_278765ED8;
            v19 = v9;
            v28 = &v29;
            v25 = v19;
            selfCopy = self;
            v20 = v8;
            v27 = v20;
            [v7 executeQuery:v17 withParameters:parameters options:v14 onTransaction:currentTransactionID withCompletionHandler:v24];
            dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
            cachedRows = self->_cachedRows;
            self->_cachedRows = v19;
            v22 = v19;

            v4 = *(v30 + 24);
            goto LABEL_17;
          }

          v15 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = self->_distantConnection;
            *buf = 138543362;
            v36 = v16;
            _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "ERROR: Tried to fetch distant result set without a transaction ID. (Connection used: %{public}@)", buf, 0xCu);
          }
        }

        else
        {
          v15 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "ERROR: Tried to fetch distant result set without a connection.", buf, 2u);
          }
        }

        v4 = 0;
      }

LABEL_17:
      _Block_object_dispose(&v29, 8);
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void __45__ML3DatabaseDistantResult__fetchRowsIfEmpty__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v6;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "Could not fetch results for distant result set. %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v8 = MSVPropertyListDataClasses();
    v9 = MSVUnarchivedObjectOfClasses();

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [ML3DatabaseCachedRow alloc];
          v17 = [(ML3DatabaseCachedRow *)v16 initWithArray:v15, v18];
          [*(a1 + 32) addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v12);
    }
  }

  [*(*(a1 + 40) + 72) popTransactionAndCommit:{1, v18}];
  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_localEnumerateRowsWithBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  distantConnection = self->_distantConnection;
  if (distantConnection)
  {
    _owningPool = [(ML3DatabaseConnection *)distantConnection _owningPool];

    if (_owningPool)
    {
      _owningPool2 = [(ML3DatabaseConnection *)self->_distantConnection _owningPool];
      v8 = [_owningPool2 _connectionForWriting:0 useThreadConnection:0 storeThreadLocalConnection:0];
      limitProperty = [(ML3DatabaseResult *)self limitProperty];

      sql = self->_sql;
      parameters = self->_parameters;
      if (limitProperty)
      {
        limitProperty2 = [(ML3DatabaseResult *)self limitProperty];
        v13 = [v8 executeQuery:sql withParameters:parameters limitProperty:limitProperty2 limitValue:{-[ML3DatabaseResult limitValue](self, "limitValue")}];

        if (v13)
        {
LABEL_5:
          [v13 enumerateRowsWithBlock:blockCopy];
LABEL_12:
          [_owningPool2 checkInConnection:v8];

          goto LABEL_13;
        }
      }

      else
      {
        v13 = [v8 executeQuery:self->_sql withParameters:self->_parameters];
        if (v13)
        {
          goto LABEL_5;
        }
      }

      v15 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sqliteError = [v8 sqliteError];
        v17 = 138543362;
        v18 = sqliteError;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Could not fallback to local connection. Local result could not be obtained from query. %{public}@", &v17, 0xCu);
      }

      goto LABEL_12;
    }
  }

  _owningPool2 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(_owningPool2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_distantConnection;
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&dword_22D2FA000, _owningPool2, OS_LOG_TYPE_DEFAULT, "Could not fallback to local connection. Result does not have a connection or a pool reference. %{public}@", &v17, 0xCu);
  }

LABEL_13:
}

- (void)_remoteEnumerateRowsWithBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if ([(ML3DatabaseDistantResult *)self _fetchRowsIfEmpty])
  {
    v11[0] = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_cachedRows;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(blockCopy + 2))(blockCopy, *(*(&v12 + 1) + 8 * v9), 0, v11);
        if (v11[0])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Distant result fetch failed. Trying to fallback to a local connection...", v11, 2u);
    }

    [(ML3DatabaseDistantResult *)self _localEnumerateRowsWithBlock:blockCopy];
  }
}

- (void)enumerateRowsWithBlock:(id)block
{
  distantConnection = self->_distantConnection;
  blockCopy = block;
  if ([(ML3DatabaseConnection *)distantConnection isInTransaction])
  {
    [(ML3DatabaseDistantResult *)self _remoteEnumerateRowsWithBlock:blockCopy];
  }

  else
  {
    [(ML3DatabaseDistantResult *)self _localEnumerateRowsWithBlock:blockCopy];
  }
}

- (id)columnNameIndexMap
{
  cachedColumnNameIndexMap = self->_cachedColumnNameIndexMap;
  if (!cachedColumnNameIndexMap)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__ML3DatabaseDistantResult_columnNameIndexMap__block_invoke;
    v5[3] = &unk_278766118;
    v5[4] = self;
    [(ML3DatabaseDistantResult *)self _localEnumerateRowsWithBlock:v5];
    cachedColumnNameIndexMap = self->_cachedColumnNameIndexMap;
  }

  return cachedColumnNameIndexMap;
}

void __46__ML3DatabaseDistantResult_columnNameIndexMap__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  if (v12)
  {
    v8 = [v12 parentResult];
    v9 = [v8 columnNameIndexMap];
    v10 = *(a1 + 32);
    v11 = *(v10 + 64);
    *(v10 + 64) = v9;
  }

  if (a4)
  {
    *a4 = 1;
  }
}

- (unint64_t)indexForColumnName:(id)name
{
  nameCopy = name;
  columnNameIndexMap = [(ML3DatabaseDistantResult *)self columnNameIndexMap];
  v6 = [columnNameIndexMap objectForKeyedSubscript:nameCopy];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ML3DatabaseDistantResult;
  v4 = [(ML3DatabaseDistantResult *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, sql = %@, parameters = %@", v4, self->_sql, self->_parameters];

  return v5;
}

- (ML3DatabaseDistantResult)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"-[%@ init] is unsupported. Use -[%@ initWithTransactionID:] instead.", v4, v4}];

  return 0;
}

- (ML3DatabaseDistantResult)initWithStatement:(id)statement
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"-[%@ initWithStatement:] is invalid for distant results. Use -[%@ initWithTransactionID:] instead.", v5, v5}];

  return 0;
}

- (ML3DatabaseDistantResult)initWithDistantConnection:(id)connection sql:(id)sql parameters:(id)parameters
{
  connectionCopy = connection;
  sqlCopy = sql;
  parametersCopy = parameters;
  v18.receiver = self;
  v18.super_class = ML3DatabaseDistantResult;
  v12 = [(ML3DatabaseResult *)&v18 initWithStatement:0 connection:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_distantConnection, connection);
    v14 = [sqlCopy copy];
    sql = v13->_sql;
    v13->_sql = v14;

    objc_storeStrong(&v13->_parameters, parameters);
    cachedRows = v13->_cachedRows;
    v13->_cachedRows = 0;
  }

  return v13;
}

@end