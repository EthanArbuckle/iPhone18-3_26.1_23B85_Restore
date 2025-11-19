@interface LCFDatabaseColumnConnection
- (BOOL)doQueryEachStep:(id)a3 statementStepHandler:(id)a4;
- (BOOL)doQueryExec:(id)a3;
- (BOOL)writeFeatures:(id)a3 featureValueType:(int64_t)a4;
- (id)init:(id)a3 databaseName:(id)a4 tableName:(id)a5;
- (id)query;
- (void)ensureDatabaseTable;
@end

@implementation LCFDatabaseColumnConnection

- (id)init:(id)a3 databaseName:(id)a4 tableName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = LCFDatabaseColumnConnection;
  v12 = [(LCFDatabaseColumnConnection *)&v17 init];
  if (v12)
  {
    LCFLoggingUtilsInit();
    objc_storeStrong(&v12->_databaseBaseURL, a3);
    objc_storeStrong(&v12->_databaseName, a4);
    objc_storeStrong(&v12->_tableName, a5);
    v13 = [(NSURL *)v12->_databaseBaseURL path];
    v14 = [v13 stringByAppendingPathComponent:v12->_databaseName];
    databaseNamePath = v12->_databaseNamePath;
    v12->_databaseNamePath = v14;

    [(LCFDatabaseColumnConnection *)v12 ensureDatabaseTable];
  }

  return v12;
}

- (void)ensureDatabaseTable
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(NSURL *)self->_databaseBaseURL path];
  if (([v3 fileExistsAtPath:v4] & 1) == 0)
  {
    [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }

  p_databaseNamePath = &self->_databaseNamePath;
  v6 = [(NSString *)self->_databaseNamePath UTF8String];
  ppDb = 0;
  if (sqlite3_open(v6, &ppDb))
  {
    v7 = LCFLogDatabaseColumnConnection;
    if (os_log_type_enabled(LCFLogDatabaseColumnConnection, OS_LOG_TYPE_ERROR))
    {
      [(LCFDatabaseConnection *)p_databaseNamePath ensureDatabaseTable:v7];
    }
  }

  else
  {
    sqlite3_exec(ppDb, "BEGIN", 0, 0, 0);
    v14 = LCFLogDatabaseColumnConnection;
    if (os_log_type_enabled(LCFLogDatabaseColumnConnection, OS_LOG_TYPE_INFO))
    {
      v15 = *p_databaseNamePath;
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&dword_255F22000, v14, OS_LOG_TYPE_INFO, "sqlite3_open succeeded %@", buf, 0xCu);
    }

    *buf = 0;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (ID INTEGER PRIMARY KEY AUTOINCREMENT, ColumnName TEXT, Type INTEGER)", self->_tableName];
    if (sqlite3_exec(ppDb, [v16 UTF8String], 0, 0, buf))
    {
      v17 = LCFLogDatabaseColumnConnection;
      if (os_log_type_enabled(LCFLogDatabaseColumnConnection, OS_LOG_TYPE_ERROR))
      {
        [(LCFDatabaseConnection *)v16 ensureDatabaseTable:v17];
      }
    }

    sqlite3_exec(ppDb, "COMMIT", 0, 0, 0);
    sqlite3_close(ppDb);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)doQueryEachStep:(id)a3 statementStepHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v8 fileExistsAtPath:self->_databaseNamePath])
  {
    v9 = [(NSString *)self->_databaseNamePath UTF8String];
    ppDb = 0;
    if (!sqlite3_open(v9, &ppDb))
    {
      v12 = 0;
      sqlite3_prepare_v2(ppDb, [v6 UTF8String], -1, &v12, 0);
      while (1)
      {
        v10 = sqlite3_step(v12);
        if (v10 != 100)
        {
          break;
        }

        v7[2](v7, v12);
      }

      if (v10 != 101)
      {
        [LCFDatabaseColumnConnection doQueryEachStep:statementStepHandler:];
      }

      sqlite3_close(ppDb);
    }
  }

  return 1;
}

- (BOOL)doQueryExec:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v5 fileExistsAtPath:self->_databaseNamePath] && (v6 = -[NSString UTF8String](self->_databaseNamePath, "UTF8String"), ppDb = 0, !sqlite3_open(v6, &ppDb)))
  {
    sqlite3_exec(ppDb, "BEGIN", 0, 0, 0);
    v17 = 0;
    v9 = sqlite3_exec(ppDb, [v4 UTF8String], 0, 0, &v17);
    v7 = v9 == 0;
    if (v9)
    {
      v10 = LCFLogDatabaseConnection;
      if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_ERROR))
      {
        [(LCFDatabaseConnection *)v4 ensureDatabaseTable:v10];
      }
    }

    sqlite3_exec(ppDb, "COMMIT", 0, 0, 0);
    sqlite3_close(ppDb);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)writeFeatures:(id)a3 featureValueType:(int64_t)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(LCFDatabaseColumnConnection *)self query];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v30 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 featureName];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v21 = [v12 featureValueType];
          v20 = v21 == a4;
          if (v21 != a4)
          {
            v22 = LCFLogDatabaseConnection;
            if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_ERROR))
            {
              v25 = v22;
              v26 = [v12 featureValueType];
              *buf = 138412802;
              v32 = v6;
              v33 = 2048;
              v34 = v26;
              v35 = 2048;
              v36 = a4;
              _os_log_error_impl(&dword_255F22000, v25, OS_LOG_TYPE_ERROR, "Wrong type is asked %@ %ld %ld", buf, 0x20u);
            }

            v20 = 0;
          }

          v18 = v7;
          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = MEMORY[0x277CCACA8];
  tableName = self->_tableName;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v18 = [v15 stringWithFormat:@"INSERT INTO %@ (ColumnName, Type) VALUES('%@', %@)", tableName, v6, v17];

  [(LCFDatabaseColumnConnection *)self doQueryExec:v18];
  nameTypesCache = self->_nameTypesCache;
  self->_nameTypesCache = 0;

  v20 = 1;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)query
{
  p_nameTypesCache = &self->_nameTypesCache;
  nameTypesCache = self->_nameTypesCache;
  if (nameTypesCache)
  {
    v4 = nameTypesCache;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM %@", self->_tableName];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__LCFDatabaseColumnConnection_query__block_invoke;
    v9[3] = &unk_279815EC0;
    v4 = v6;
    v10 = v4;
    [(LCFDatabaseColumnConnection *)self doQueryEachStep:v7 statementStepHandler:v9];
    objc_storeStrong(p_nameTypesCache, v6);
  }

  return v4;
}

void __36__LCFDatabaseColumnConnection_query__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = a2;
  v4 = sqlite3_column_text(a2, 1);
  LODWORD(v2) = sqlite3_column_int(v2, 2);
  v5 = [LCFFetureValueNameType alloc];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v7 = [(LCFFetureValueNameType *)v5 init:v6 featureValueType:v2];

  [*(a1 + 32) addObject:v7];
}

@end