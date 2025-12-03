@interface HDDatabaseSchemaManager
- (BOOL)setVersion:(int64_t)version schema:(id)schema protectionClass:(int64_t)class error:(id *)error;
- (HDDatabaseSchemaManager)initWithTransaction:(id)transaction;
- (__CFString)_schemaTableNameForDatabaseName:(__CFString *)name;
- (int64_t)currentVersionForSchema:(id)schema protectionClass:(int64_t)class error:(id *)error;
- (uint64_t)_createSchemaMigrationTableIfNeededForDatabaseName:(uint64_t)name error:(uint64_t)error;
@end

@implementation HDDatabaseSchemaManager

- (HDDatabaseSchemaManager)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v9.receiver = self;
  v9.super_class = HDDatabaseSchemaManager;
  v6 = [(HDDatabaseSchemaManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
  }

  return v7;
}

- (int64_t)currentVersionForSchema:(id)schema protectionClass:(int64_t)class error:(id *)error
{
  schemaCopy = schema;
  transaction = self->_transaction;
  if (class == 2)
  {
    [(HDDatabaseMigrationTransaction *)transaction protectedDatabase];
  }

  else
  {
    [(HDDatabaseMigrationTransaction *)transaction unprotectedDatabase];
  }
  v10 = ;
  v11 = v10;
  if (schemaCopy)
  {
    if ([HDDatabaseSchemaManager _createSchemaMigrationTableIfNeededForDatabaseName:error error:?])
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v12 = [HDDatabaseSchemaManager _schemaTableNameForDatabaseName:?];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT version FROM %@ WHERE schema LIKE ?", v12];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __73__HDDatabaseSchemaManager_currentVersionForSchema_protectionClass_error___block_invoke;
      v17[3] = &unk_278614860;
      v18 = schemaCopy;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __73__HDDatabaseSchemaManager_currentVersionForSchema_protectionClass_error___block_invoke_2;
      v16[3] = &unk_278614620;
      v16[4] = &v19;
      if ([v11 executeUncachedSQL:v13 error:error bindingHandler:v17 enumerationHandler:v16])
      {
        v14 = v20[3];
      }

      else
      {
        v14 = -1;
      }

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v14 = [v10 userVersionWithDatabaseName:0 error:error];
  }

  return v14;
}

- (uint64_t)_createSchemaMigrationTableIfNeededForDatabaseName:(uint64_t)name error:(uint64_t)error
{
  if (!name)
  {
    return 0;
  }

  v4 = @"main";
  if ([*(name + 8) containsObject:@"main"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [HDDatabaseSchemaManager _schemaTableNameForDatabaseName:name];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (schema TEXT NOT NULL PRIMARY KEY, version INTEGER NOT NULL, modification_date DOUBLE NOT NULL)", v6];
    isProtectedMigration = [*(name + 16) isProtectedMigration];
    v9 = *(name + 16);
    if (isProtectedMigration)
    {
      [v9 protectedDatabase];
    }

    else
    {
      [v9 unprotectedDatabase];
    }
    v10 = ;
    v5 = [v10 executeUncachedSQL:v7 error:error bindingHandler:0 enumerationHandler:0];
    if (v5)
    {
      v11 = *(name + 8);
      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v13 = *(name + 8);
        *(name + 8) = v12;

        v11 = *(name + 8);
      }

      [v11 addObject:@"main"];
    }
  }

  return v5;
}

- (__CFString)_schemaTableNameForDatabaseName:(__CFString *)name
{
  nameCopy = name;
  if (name)
  {
    if ([0 length])
    {
      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.schema_user_versions", 0];
    }

    else
    {
      nameCopy = @"schema_user_versions";
    }
  }

  return nameCopy;
}

- (BOOL)setVersion:(int64_t)version schema:(id)schema protectionClass:(int64_t)class error:(id *)error
{
  schemaCopy = schema;
  transaction = self->_transaction;
  if (class == 2)
  {
    [(HDDatabaseMigrationTransaction *)transaction protectedDatabase];
  }

  else
  {
    [(HDDatabaseMigrationTransaction *)transaction unprotectedDatabase];
  }
  v12 = ;
  v13 = v12;
  if (schemaCopy)
  {
    if ([HDDatabaseSchemaManager _createSchemaMigrationTableIfNeededForDatabaseName:error error:?])
    {
      v14 = [HDDatabaseSchemaManager _schemaTableNameForDatabaseName:?];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR REPLACE INTO %@ (schema, version, modification_date) VALUES (?, ?, ?)", v14];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __67__HDDatabaseSchemaManager_setVersion_schema_protectionClass_error___block_invoke;
      v18[3] = &unk_278613B58;
      v19 = schemaCopy;
      versionCopy = version;
      v16 = [v13 executeUncachedSQL:v15 error:error bindingHandler:v18 enumerationHandler:0];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = [v12 setUserVersion:version withDatabaseName:0 error:error];
  }

  return v16;
}

uint64_t __67__HDDatabaseSchemaManager_setVersion_schema_protectionClass_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  sqlite3_bind_int64(a2, 2, *(a1 + 40));
  Current = CFAbsoluteTimeGetCurrent();

  return sqlite3_bind_double(a2, 3, Current);
}

@end