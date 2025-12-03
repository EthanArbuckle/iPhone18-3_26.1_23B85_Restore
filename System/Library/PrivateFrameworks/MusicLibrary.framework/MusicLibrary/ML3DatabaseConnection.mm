@interface ML3DatabaseConnection
- (BOOL)_alterTableNamed:(id)named withNewColumnDefinitions:(id)definitions newColumnNames:(id)names oldColumnNames:(id)columnNames;
- (BOOL)_closeAndFlushTransactionState:(BOOL)state;
- (BOOL)_closeConnectionWhenCheckingIn;
- (BOOL)_databaseFileExists;
- (BOOL)_databaseFilesAreWritable;
- (BOOL)_executeStatement:(id)statement withError:(id *)error;
- (BOOL)_handleBusyLockWithNumberOfRetries:(int)retries;
- (BOOL)_handleConnectionErrorWhileOpening:(int)opening;
- (BOOL)_handleDiskIOError;
- (BOOL)_handleZombieSQLiteConnection:(sqlite3 *)connection;
- (BOOL)_internalBeginTransactionWithBehaviorType:(unint64_t)type;
- (BOOL)_internalEndTransactionAndCommit:(BOOL)commit;
- (BOOL)_internalExecuteUpdate:(id)update withParameters:(id)parameters error:(id *)error;
- (BOOL)_isDeviceMediaLibraryDatabase;
- (BOOL)_openWithFlags:(int)flags;
- (BOOL)_validatePreparedStatement:(id)statement error:(id *)error;
- (BOOL)close;
- (BOOL)databasePathExists;
- (BOOL)deleteDatabase;
- (BOOL)executeUpdate:(id)update withParameters:(id)parameters error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)open;
- (BOOL)performTransactionWithBlock:(id)block usingBehaviorType:(unint64_t)type;
- (BOOL)popToRootTransactionAndCommit:(BOOL)commit;
- (BOOL)popTransactionAndCommit:(BOOL)commit;
- (BOOL)pushTransactionUsingBehaviorType:(unint64_t)type;
- (BOOL)registerFunctionName:(id)name argumentCount:(int)count block:(id)block;
- (BOOL)registerFunctionName:(id)name argumentCount:(int)count functionPointer:(void *)pointer userData:(void *)data;
- (BOOL)registerModule:(id)module;
- (BOOL)registerModuleName:(id)name moduleMethods:(sqlite3_module *)methods;
- (BOOL)removeModuleNamed:(id)named;
- (BOOL)schemaAddColumnDefinition:(id)definition toTable:(id)table;
- (BOOL)schemaDeleteColumn:(id)column inTable:(id)table;
- (BOOL)schemaDeleteColumns:(id)columns inTable:(id)table;
- (BOOL)schemaInsertColumnDefinition:(id)definition intoTable:(id)table atIndex:(unint64_t)index;
- (BOOL)schemaInsertColumnDefinitions:(id)definitions intoTable:(id)table atIndex:(unint64_t)index;
- (BOOL)schemaRenameColumn:(id)column inTable:(id)table toNewColumnName:(id)name;
- (BOOL)tableExists:(id)exists;
- (BOOL)transactionMarkedForRollBack;
- (ML3DatabaseConnection)init;
- (ML3DatabaseConnection)initWithDatabasePath:(id)path;
- (ML3DatabaseConnectionDelegate)connectionDelegate;
- (id)_databaseFilePaths;
- (id)_internalExecuteQuery:(id)query withParameters:(id)parameters limitProperty:(id)property limitValue:(int64_t)value;
- (id)_owningPool;
- (id)_prepareStatement:(id)statement error:(id *)error;
- (id)_registeredModuleNamed:(id)named;
- (id)_shortDescription;
- (id)debugDescription;
- (id)description;
- (id)openBlobInTable:(id)table column:(id)column row:(int64_t)row readOnly:(BOOL)only;
- (id)sqliteError;
- (int)_distrustQueriesDuringBlock:(id)block;
- (int)checkpointDatabase;
- (unint64_t)transactionLevel;
- (void)_createDatabaseDirectoryIfNonexistent;
- (void)_createDatabaseFileIfNonexistent;
- (void)_ensureConnectionIsOpen;
- (void)_enumerateTableColumnNamesAndDefinitionsFromTable:(id)table usingBlock:(id)block;
- (void)_executeTransactionCommitBlocks:(BOOL)blocks;
- (void)_handleDatabaseCorruption;
- (void)_internalLogQuery:(id)query withParameters:(id)parameters limitProperty:(id)property limitValue:(int64_t)value;
- (void)_logCurrentError;
- (void)_logCurrentErrorWhilePerformingStatementOperation:(id)operation statement:(id)statement;
- (void)_logCurrentErrorWhilePerformingStatementOperation:(id)operation statementSQL:(id)l;
- (void)_logDatabaseFileDebugInformation;
- (void)_raiseConnectionClosedException;
- (void)_resetUnfinalizedStatements;
- (void)_setCloseConnectionWhenCheckingIn;
- (void)dealloc;
- (void)enqueueBlockForTransactionCommit:(id)commit;
- (void)flush;
- (void)setReadOnly:(BOOL)only;
- (void)setTransactionLevel:(unint64_t)level;
@end

@implementation ML3DatabaseConnection

- (void)_ensureConnectionIsOpen
{
  if (![(ML3DatabaseConnection *)self isOpen])
  {
    [(ML3DatabaseConnection *)self open];
    if (![(ML3DatabaseConnection *)self isOpen])
    {

      [(ML3DatabaseConnection *)self _raiseConnectionClosedException];
    }
  }
}

- (BOOL)open
{
  if (self->_isReadOnly)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [(ML3DatabaseConnection *)self _openWithFlags:v2];
}

- (BOOL)_isDeviceMediaLibraryDatabase
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[ML3MusicLibrary mediaFolderPath];
  msv_stringByResolvingRealPath = [v3 msv_stringByResolvingRealPath];

  databasePath = [(ML3DatabaseConnection *)self databasePath];
  if ([databasePath hasPrefix:msv_stringByResolvingRealPath])
  {
    databasePath2 = [(ML3DatabaseConnection *)self databasePath];
    v7 = [databasePath2 containsString:@"MediaLibrary.sqlitedb"];

    if (v7)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    databasePath3 = [(ML3DatabaseConnection *)self databasePath];
    v12 = 138543618;
    v13 = databasePath3;
    v14 = 2114;
    v15 = msv_stringByResolvingRealPath;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "Database at path %{public}@, mediaFolderPath %{public}@ is not mediaLibraryDatabase", &v12, 0x16u);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  databasePath = self->_databasePath;
  v6 = @"YES";
  if ([(ML3DatabaseConnection *)self isOpen])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(ML3DatabaseConnection *)self isReadOnly])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(ML3DatabaseConnection *)self _closeConnectionWhenCheckingIn])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (![(ML3DatabaseConnection *)self isInTransaction])
  {
    v6 = @"NO";
  }

  WeakRetained = objc_loadWeakRetained(&self->_owningPool);
  weakRetained = [v3 stringWithFormat:@"<%@ %p, path=%@, open=%@, readonly=%@, _closeConnectionWhenCheckingIn=%@, in transaction=%@, owning pool=%@>", v4, self, databasePath, v7, v8, v9, v6, WeakRetained];

  return weakRetained;
}

- (BOOL)_databaseFilesAreWritable
{
  v14 = *MEMORY[0x277D85DE8];
  _databaseFilePaths = [(ML3DatabaseConnection *)self _databaseFilePaths];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = _databaseFilePaths;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![defaultManager isWritableFileAtPath:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          LOBYTE(v5) = 0;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    LOBYTE(v5) = 1;
  }

LABEL_11:

  return v5;
}

- (id)_databaseFilePaths
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (_databaseFilePaths___once != -1)
  {
    dispatch_once(&_databaseFilePaths___once, &__block_literal_global_26580);
  }

  v4 = _databaseFilePaths___dbfileSuffixesForJournalingMode;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_journalingMode];
  v6 = [v4 objectForKey:v5];

  v7 = [v6 count];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (v7 != -1)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      databasePath = [(ML3DatabaseConnection *)self databasePath];
      if (v7 != v9)
      {
        v12 = [v6 objectAtIndex:v9];
        v13 = [databasePath stringByAppendingString:v12];

        databasePath = v13;
      }

      if ([defaultManager fileExistsAtPath:databasePath])
      {
        [v3 addObject:databasePath];
      }

      v9 = v10;
    }

    while (v7 + 1 > v10++);
  }

  return v3;
}

void __43__ML3DatabaseConnection__databaseFilePaths__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2840CA490;
  v2[1] = &unk_2840CA4A8;
  v3[0] = &unk_2840C8678;
  v3[1] = &unk_2840C8690;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _databaseFilePaths___dbfileSuffixesForJournalingMode;
  _databaseFilePaths___dbfileSuffixesForJournalingMode = v0;
}

- (BOOL)_closeConnectionWhenCheckingIn
{
  os_unfair_lock_lock(&self->_lock);
  closeConnectionWhenCheckingIn = self->_closeConnectionWhenCheckingIn;
  os_unfair_lock_unlock(&self->_lock);
  return closeConnectionWhenCheckingIn;
}

- (unint64_t)transactionLevel
{
  os_unfair_lock_lock(&self->_lock);
  transactionLevel = self->_transactionLevel;
  os_unfair_lock_unlock(&self->_lock);
  return transactionLevel;
}

- (void)flush
{
  [(ML3DatabaseConnection *)self popToRootTransactionAndCommit:0];

  [(ML3DatabaseConnection *)self _resetUnfinalizedStatements];
}

- (void)_resetUnfinalizedStatements
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allStatements = [(ML3DatabaseStatementCache *)self->_statementCache allStatements];
  v3 = [allStatements countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allStatements);
        }

        [*(*(&v7 + 1) + 8 * v6++) reset];
      }

      while (v4 != v6);
      v4 = [allStatements countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)transactionMarkedForRollBack
{
  os_unfair_lock_lock(&self->_lock);
  nestedTransactionWantsToRollback = self->_nestedTransactionWantsToRollback;
  os_unfair_lock_unlock(&self->_lock);
  return nestedTransactionWantsToRollback;
}

- (ML3DatabaseConnectionDelegate)connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);

  return WeakRetained;
}

- (BOOL)_alterTableNamed:(id)named withNewColumnDefinitions:(id)definitions newColumnNames:(id)names oldColumnNames:(id)columnNames
{
  namedCopy = named;
  definitionsCopy = definitions;
  namesCopy = names;
  columnNamesCopy = columnNames;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __114__ML3DatabaseConnection_SchemaUtilities___alterTableNamed_withNewColumnDefinitions_newColumnNames_oldColumnNames___block_invoke;
  v19[3] = &unk_2787622B0;
  v14 = definitionsCopy;
  v20 = v14;
  v15 = namedCopy;
  v25 = &v26;
  v21 = v15;
  selfCopy = self;
  v16 = namesCopy;
  v23 = v16;
  v17 = columnNamesCopy;
  v24 = v17;
  [(ML3DatabaseConnection *)self performTransactionWithBlock:v19];
  LOBYTE(self) = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return self;
}

uint64_t __114__ML3DatabaseConnection_SchemaUtilities___alterTableNamed_withNewColumnDefinitions_newColumnNames_oldColumnNames___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_new", *(a1 + 40)];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TABLE %@ (%@)", v3, v2];
  v5 = *(a1 + 48);
  v31 = 0;
  v6 = [v5 executeUpdate:v4 withParameters:0 error:&v31];
  v7 = v31;
  *(*(*(a1 + 72) + 8) + 24) = v6;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v8 = [*(a1 + 56) componentsJoinedByString:{@", "}];
    v9 = [*(a1 + 64) componentsJoinedByString:{@", "}];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO %@ (%@) SELECT %@ FROM %@", v3, v8, v9, *(a1 + 40)];
    v11 = *(a1 + 48);
    v30 = v7;
    v27 = v10;
    v12 = [v11 executeUpdate:? withParameters:? error:?];
    v13 = v30;

    *(*(*(a1 + 72) + 8) + 24) = v12;
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v26 = v9;
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE %@", *(a1 + 40)];
      v15 = *(a1 + 48);
      v29 = v13;
      v16 = [v15 executeUpdate:v14 withParameters:0 error:&v29];
      v17 = v29;

      *(*(*(a1 + 72) + 8) + 24) = v16;
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"ALTER TABLE %@ RENAME TO %@", v3, *(a1 + 40)];
        v19 = *(a1 + 48);
        v28 = v17;
        v20 = [v19 executeUpdate:v18 withParameters:0 error:&v28];
        v13 = v28;

        *(*(*(a1 + 72) + 8) + 24) = v20;
        if (*(*(*(a1 + 72) + 8) + 24))
        {
          v21 = 1;
        }

        else
        {
          v23 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 40);
            *buf = 138543874;
            v33 = v3;
            v34 = 2114;
            v35 = v24;
            v36 = 2114;
            v37 = v13;
            _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_ERROR, "Failed to rename temporary table %{public}@ to permanent name %{public}@. %{public}@", buf, 0x20u);
          }

          v21 = 0;
        }
      }

      else
      {
        v18 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 40);
          *buf = 138543618;
          v33 = v22;
          v34 = 2114;
          v35 = v17;
          _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Failed to drop old %{public}@ table. %{public}@", buf, 0x16u);
        }

        v21 = 0;
        v13 = v17;
      }

      v9 = v26;
    }

    else
    {
      v14 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v33 = v13;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Failed to migrate data to temporary table for column rename. %{public}@", buf, 0xCu);
      }

      v21 = 0;
    }

    v7 = v13;
  }

  else
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Failed to create temporary table for rename. %{public}@", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

- (void)_enumerateTableColumnNamesAndDefinitionsFromTable:(id)table usingBlock:(id)block
{
  v41[1] = *MEMORY[0x277D85DE8];
  tableCopy = table;
  blockCopy = block;
  v9 = blockCopy;
  if (tableCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  v41[0] = tableCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v11 = [(ML3DatabaseConnection *)self executeQuery:@"SELECT sql FROM sqlite_master WHERE type='table' AND name=?" withParameters:v10];
  stringValueForFirstRowAndColumn = [v11 stringValueForFirstRowAndColumn];

  v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^CREATE( TEMPORARY)* TABLE *(\\w+)*( IF NOT EXISTS)* \\(([\\w\\s' options:]+)\\)" error:{1, 0}];
  v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\w+)( \\w+)*( \\w+)*" options:0 error:0];
  v15 = [v13 firstMatchInString:stringValueForFirstRowAndColumn options:0 range:{0, objc_msgSend(stringValueForFirstRowAndColumn, "length")}];
  if ([v15 numberOfRanges] < 5)
  {
    v28 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_ERROR, "Unable to parse table schema from sqlite_master.", buf, 2u);
    }
  }

  else
  {
    v32 = v15;
    v33 = v13;
    v34 = tableCopy;
    v16 = [v15 rangeAtIndex:4];
    v31 = [stringValueForFirstRowAndColumn substringWithRange:{v16, v17}];
    v18 = [v31 componentsSeparatedByString:@", "];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v36 + 1) + 8 * i);
          v24 = [v14 firstMatchInString:v23 options:0 range:{0, objc_msgSend(v23, "length")}];
          v25 = 0;
          if ([v24 numberOfRanges] >= 2)
          {
            v26 = [v24 rangeAtIndex:1];
            v25 = [v23 substringWithRange:{v26, v27}];
          }

          (v9)[2](v9, v25, v23);
        }

        v20 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v20);
    }

    tableCopy = v34;
    v15 = v32;
    v13 = v33;
    v28 = v31;
  }
}

- (BOOL)schemaDeleteColumns:(id)columns inTable:(id)table
{
  v29 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  tableCopy = table;
  if (!tableCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__ML3DatabaseConnection_SchemaUtilities__schemaDeleteColumns_inTable___block_invoke;
  v18[3] = &unk_278762288;
  v11 = columnsCopy;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v13 = v10;
  v21 = v13;
  v22 = &v23;
  [(ML3DatabaseConnection *)self _enumerateTableColumnNamesAndDefinitionsFromTable:tableCopy usingBlock:v18];
  if (*(v24 + 24) == 1)
  {
    v14 = [(ML3DatabaseConnection *)self _alterTableNamed:tableCopy withNewColumnDefinitions:v12 newColumnNames:v13 oldColumnNames:v13];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = tableCopy;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "Could not find columns in table %{public}@", buf, 0xCu);
    }

    v14 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v14;
}

void __70__ML3DatabaseConnection_SchemaUtilities__schemaDeleteColumns_inTable___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else if (v6)
  {
    [*(a1 + 40) addObject:v5];
    [*(a1 + 48) addObject:v6];
  }
}

- (BOOL)schemaDeleteColumn:(id)column inTable:(id)table
{
  v13[1] = *MEMORY[0x277D85DE8];
  columnCopy = column;
  tableCopy = table;
  if (!columnCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"columnName"}];
  }

  v13[0] = columnCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [(ML3DatabaseConnection *)self schemaDeleteColumns:v9 inTable:tableCopy];

  return v10;
}

- (BOOL)schemaRenameColumn:(id)column inTable:(id)table toNewColumnName:(id)name
{
  columnCopy = column;
  tableCopy = table;
  nameCopy = name;
  if (columnCopy)
  {
    if (tableCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];

    if (nameCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"newName"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"columnName"}];

  if (!tableCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!nameCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __85__ML3DatabaseConnection_SchemaUtilities__schemaRenameColumn_inTable_toNewColumnName___block_invoke;
  v25[3] = &unk_278762260;
  v26 = columnCopy;
  v27 = nameCopy;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  v18 = nameCopy;
  v19 = columnCopy;
  [(ML3DatabaseConnection *)self _enumerateTableColumnNamesAndDefinitionsFromTable:tableCopy usingBlock:v25];
  v20 = [(ML3DatabaseConnection *)self _alterTableNamed:tableCopy withNewColumnDefinitions:v17 newColumnNames:v15 oldColumnNames:v16];

  return v20;
}

void __85__ML3DatabaseConnection_SchemaUtilities__schemaRenameColumn_inTable_toNewColumnName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  v7 = v6;
  v8 = v10;
  v9 = v7;
  if ([v10 isEqualToString:*(a1 + 32)])
  {
    v8 = *(a1 + 40);

    v9 = [v7 stringByReplacingOccurrencesOfString:v10 withString:*(a1 + 40)];
  }

  [*(a1 + 48) addObject:v9];
  [*(a1 + 56) addObject:v10];
  [*(a1 + 64) addObject:v8];
}

- (BOOL)schemaInsertColumnDefinitions:(id)definitions intoTable:(id)table atIndex:(unint64_t)index
{
  definitionsCopy = definitions;
  tableCopy = table;
  v11 = tableCopy;
  if (!definitionsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"newDefinitions"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];

    goto LABEL_3;
  }

  if (!tableCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__ML3DatabaseConnection_SchemaUtilities__schemaInsertColumnDefinitions_intoTable_atIndex___block_invoke;
  v21[3] = &unk_278762238;
  v25 = v27;
  indexCopy = index;
  v14 = v12;
  v22 = v14;
  v15 = definitionsCopy;
  v23 = v15;
  v16 = v13;
  v24 = v16;
  [(ML3DatabaseConnection *)self _enumerateTableColumnNamesAndDefinitionsFromTable:v11 usingBlock:v21];
  v17 = [(ML3DatabaseConnection *)self _alterTableNamed:v11 withNewColumnDefinitions:v14 newColumnNames:v16 oldColumnNames:v16];

  _Block_object_dispose(v27, 8);
  return v17;
}

void __90__ML3DatabaseConnection_SchemaUtilities__schemaInsertColumnDefinitions_intoTable_atIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(*(a1 + 56) + 8) + 24) == *(a1 + 64))
  {
    [*(a1 + 32) addObjectsFromArray:*(a1 + 40)];
  }

  [*(a1 + 48) addObject:v6];
  [*(a1 + 32) addObject:v5];
  ++*(*(*(a1 + 56) + 8) + 24);
}

- (BOOL)schemaInsertColumnDefinition:(id)definition intoTable:(id)table atIndex:(unint64_t)index
{
  v14 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  v8 = MEMORY[0x277CBEA60];
  tableCopy = table;
  definitionCopy2 = definition;
  v11 = [v8 arrayWithObjects:&definitionCopy count:1];

  LOBYTE(index) = [(ML3DatabaseConnection *)self schemaInsertColumnDefinitions:v11 intoTable:tableCopy atIndex:index, definitionCopy, v14];
  return index;
}

- (BOOL)schemaAddColumnDefinition:(id)definition toTable:(id)table
{
  v22 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  tableCopy = table;
  v9 = tableCopy;
  if (definitionCopy)
  {
    if (tableCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"columnDefinition"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionAdditions.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];

LABEL_3:
  definitionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ALTER TABLE %@ ADD COLUMN %@", v9, definitionCopy];
  v17 = 0;
  v11 = [(ML3DatabaseConnection *)self executeUpdate:definitionCopy withParameters:0 error:&v17];
  v12 = v17;
  if (!v11)
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "Could not add column to table %{public}@. %{public}@", buf, 0x16u);
    }
  }

  return v11;
}

- (BOOL)_handleZombieSQLiteConnection:(sqlite3 *)connection
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    connectionCopy2 = connection;
    v23 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Database connection was unable to close SQLite handle %p. Attempting to clean up remaining resources and close again. (connection = %{public}@)", buf, 0x16u);
  }

  if (!connection)
  {
    return 0;
  }

  stmt = sqlite3_next_stmt(connection, 0);
  if (stmt)
  {
    v7 = stmt;
    do
    {
      v8 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        connectionCopy2 = v7;
        _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Cleaning up unfinalized statement %p.", buf, 0xCu);
      }

      v9 = sqlite3_finalize(v7);
      if (v9)
      {
        v10 = v9;
        v11 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = sqlite3_errmsg(connection);
          *buf = 134218498;
          connectionCopy2 = connection;
          v23 = 2080;
          selfCopy = v12;
          v25 = 1024;
          v26 = v10;
          _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "Failed to finalize statement %p. %s (%d)", buf, 0x1Cu);
        }
      }

      v7 = sqlite3_next_stmt(connection, v7);
    }

    while (v7);
  }

  v13 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Reattempting close of connection...", buf, 2u);
  }

  v14 = sqlite3_close(connection);
  v15 = os_log_create("com.apple.amp.medialibrary", "Default");
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Failed to close connection.", buf, 2u);
    }

    v17 = MEMORY[0x277CBEAD8];
    v18 = *MEMORY[0x277CBE658];
    v19 = sqlite3_errmsg(connection);
    [v17 raise:v18 format:{@"Failed to close connection for database. %s (errno = %d)", v19, *__error()}];
    return 0;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Successfully closed connection.", buf, 2u);
  }

  return 1;
}

- (BOOL)_handleConnectionErrorWhileOpening:(int)opening
{
  if (opening == 11)
  {
    [(ML3DatabaseConnection *)self _handleDatabaseCorruption:v3];
    return 0;
  }

  else if (opening == 10)
  {

    return [(ML3DatabaseConnection *)self _handleDiskIOError];
  }

  else
  {
    return 1;
  }
}

- (void)_executeTransactionCommitBlocks:(BOOL)blocks
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableArray *)self->_enqueuedTransactionCommitBlocks copy];
  [(NSMutableArray *)self->_enqueuedTransactionCommitBlocks removeAllObjects];
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 1024;
    v15 = [v5 count];
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ running %d transaction commit blocks", buf, 0x12u);
  }

  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ML3DatabaseConnection__executeTransactionCommitBlocks___block_invoke;
  v9[3] = &unk_278765E08;
  v10 = v5;
  blocksCopy = blocks;
  v8 = v5;
  dispatch_async(v7, v9);
}

void __57__ML3DatabaseConnection__executeTransactionCommitBlocks___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_logDatabaseFileDebugInformation
{
  v33 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(ML3DatabaseConnection *)self _databaseFilePaths];
  v4 = [obj countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 138543362;
    v16 = v5;
    v17 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v19 = 0;
        v10 = [defaultManager attributesOfItemAtPath:v9 error:{&v19, v16}];
        v11 = v19;
        if (v10)
        {
          v12 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            sqliteError = [(ML3DatabaseConnection *)self sqliteError];
            _databaseFilesAreWritable = [(ML3DatabaseConnection *)self _databaseFilesAreWritable];
            *buf = 138544130;
            v15 = "false";
            if (_databaseFilesAreWritable)
            {
              v15 = "true";
            }

            v25 = v9;
            v26 = 2114;
            v27 = sqliteError;
            v28 = 2082;
            v29 = v15;
            v30 = 2114;
            v31 = v10;
            _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "** Information about database file at path %{public}@\nlastError = %{public}@\nwritable = %{public}s\nattributes = %{public}@", buf, 0x2Au);

            v7 = v17;
          }
        }

        else
        {
          v12 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v25 = v11;
            _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "Error fetching attributes from database file. %{public}@", buf, 0xCu);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v6);
  }
}

- (void)_logCurrentError
{
  v9 = *MEMORY[0x277D85DE8];
  sqliteError = [(ML3DatabaseConnection *)self sqliteError];
  if (sqliteError)
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543618;
      v6 = objc_opt_class();
      v7 = 2114;
      v8 = sqliteError;
      v4 = v6;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database error: %{public}@", &v5, 0x16u);
    }
  }
}

- (void)_logCurrentErrorWhilePerformingStatementOperation:(id)operation statement:(id)statement
{
  v19 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  statementCopy = statement;
  sqliteError = [(ML3DatabaseConnection *)self sqliteError];
  if (sqliteError)
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138544130;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = operationCopy;
      v15 = 2114;
      v16 = sqliteError;
      v17 = 2114;
      v18 = statementCopy;
      v10 = v12;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database error while %{public}@ statement '%{public}@': %{public}@", &v11, 0x2Au);
    }
  }
}

- (void)_logCurrentErrorWhilePerformingStatementOperation:(id)operation statementSQL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  lCopy = l;
  sqliteError = [(ML3DatabaseConnection *)self sqliteError];
  if (sqliteError)
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138544130;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = operationCopy;
      v15 = 2114;
      v16 = sqliteError;
      v17 = 2114;
      v18 = lCopy;
      v10 = v12;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database error while %{public}@ statement '%{public}@': %{public}@", &v11, 0x2Au);
    }
  }
}

- (void)_createDatabaseFileIfNonexistent
{
  if (![(ML3DatabaseConnection *)self _databaseFileExists])
  {
    [(ML3DatabaseConnection *)self _createDatabaseDirectoryIfNonexistent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [defaultManager createFileAtPath:self->_databasePath contents:0 attributes:0];

    if ((v4 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"Could not create database file at %@, error = %@", self->_databasePath, 0}];
    }
  }
}

- (void)_createDatabaseDirectoryIfNonexistent
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  stringByDeletingLastPathComponent = [(NSString *)self->_databasePath stringByDeletingLastPathComponent];
  if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
  {
    v7 = 0;
    v5 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v7];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      ML3DatabaseConnectionCheckDatabasePathAndRaiseIfNecessary(self->_databasePath);
      ML3RaiseExceptionWithError(v6);
    }
  }
}

- (BOOL)_databaseFileExists
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  stringByDeletingLastPathComponent = [(NSString *)self->_databasePath stringByDeletingLastPathComponent];
  if ([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent])
  {
    v5 = [defaultManager fileExistsAtPath:self->_databasePath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_registeredModuleNamed:(id)named
{
  v18 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_registeredModules;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:namedCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_validatePreparedStatement:(id)statement error:(id *)error
{
  v22[2] = *MEMORY[0x277D85DE8];
  statementCopy = statement;
  if (-[ML3DatabaseConnection isReadOnly](self, "isReadOnly") && ([statementCopy isReadOnly] & 1) == 0)
  {
    statementCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to write a readonly database with statement %@", statementCopy];
    v21[0] = *MEMORY[0x277CCA450];
    v22[0] = statementCopy;
    v9 = [objc_opt_class() description];
    v21[1] = v9;
    v10 = [(ML3DatabaseConnection *)self description];
    v22[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ML3DatabaseErrorDomain" code:200 userInfo:v11];
    v13 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [statementCopy sql];
      *buf = 138543618;
      v18 = v14;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Error preparing statement SQL. %{public}@ %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v15 = v12;
      *error = v12;
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_shortDescription
{
  v4.receiver = self;
  v4.super_class = ML3DatabaseConnection;
  v2 = [(ML3DatabaseConnection *)&v4 description];

  return v2;
}

- (BOOL)_internalEndTransactionAndCommit:(BOOL)commit
{
  commitCopy = commit;
  v19 = *MEMORY[0x277D85DE8];
  v5 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v6 = v5;
  if (commitCopy)
  {
    [v5 commitTransactionStatement];
  }

  else
  {
    [v5 rollbackTransactionStatement];
  }
  v7 = ;

  v14 = 0;
  v8 = [(ML3DatabaseConnection *)self _internalExecuteUpdate:v7 withParameters:0 error:&v14];
  v9 = v14;
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained connection:self didEndDatabaseTransactionAndCommit:commitCopy];
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "Error ending transaction on connection: %{public}@. %{public}@", buf, 0x16u);
    }
  }

  currentTransactionID = self->_currentTransactionID;
  self->_currentTransactionID = 0;

  return v8;
}

- (BOOL)_internalBeginTransactionWithBehaviorType:(unint64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v6 = [v5 beginTransactionStatementWithBehaviorType:type];

  v14 = 0;
  v7 = [(ML3DatabaseConnection *)self _internalExecuteUpdate:v6 withParameters:0 error:&v14];
  v8 = v14;
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      if (!self->_currentTransactionID)
      {
        v10 = objc_alloc_init(MEMORY[0x277CCAD78]);
        currentTransactionID = self->_currentTransactionID;
        self->_currentTransactionID = v10;
      }

      [WeakRetained connectionDidBeginDatabaseTransaction:self];
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "Error beginning transaction on connection: %{public}@. %{public}@", buf, 0x16u);
    }
  }

  return v7;
}

- (BOOL)_internalExecuteUpdate:(id)update withParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  updateCopy = update;
  [(ML3DatabaseConnection *)self _ensureConnectionIsOpen];
  [(ML3DatabaseConnection *)self _internalLogQuery:updateCopy withParameters:parametersCopy limitProperty:0 limitValue:0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  v23 = 0;
  v12 = [(ML3DatabaseConnection *)self _prepareStatement:updateCopy error:&v23];

  v13 = v23;
  if (!v12)
  {
    v14 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (parametersCopy)
  {
    [v12 bindValuesInArray:parametersCopy];
  }

  v22 = v13;
  v14 = [(ML3DatabaseConnection *)self _executeStatement:v12 withError:&v22];
  v15 = v22;

  [v12 reset];
  v13 = v15;
  if (error)
  {
LABEL_7:
    if (v13)
    {
      v16 = v13;
      *error = v13;
    }
  }

LABEL_9:
  if (self->_automaticCheckpointingEnabled && v14 && ![(ML3DatabaseConnection *)self isReadOnly])
  {
    v17 = self->_statementsSinceLastCheckpoint + 1;
    self->_statementsSinceLastCheckpoint = v17;
    if (v17 >= self->_checkpointStatementThreshold && ![(ML3DatabaseConnection *)self checkpointDatabase])
    {
      self->_statementsSinceLastCheckpoint = 0;
    }
  }

  if ([(ML3DatabaseConnection *)self logQueryPlans])
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Executed in %.1f", v18 - v11];
    NSLog(&stru_28408CEB0.isa, v19);
  }

  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained connectionDidAccessDatabase:self];
  }

  return v14;
}

- (id)_internalExecuteQuery:(id)query withParameters:(id)parameters limitProperty:(id)property limitValue:(int64_t)value
{
  parametersCopy = parameters;
  propertyCopy = property;
  queryCopy = query;
  [(ML3DatabaseConnection *)self _ensureConnectionIsOpen];
  [(ML3DatabaseConnection *)self _internalLogQuery:queryCopy withParameters:parametersCopy limitProperty:propertyCopy limitValue:value];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = [(ML3DatabaseConnection *)self _prepareStatement:queryCopy error:0];

  if (v15)
  {
    if (parametersCopy)
    {
      [v15 bindValuesInArray:parametersCopy];
    }

    v16 = [[ML3DatabaseResult alloc] initWithStatement:v15 connection:self];
    v17 = v16;
    if (propertyCopy)
    {
      [(ML3DatabaseResult *)v16 setLimitProperty:propertyCopy limitValue:value];
    }
  }

  else
  {
    v17 = 0;
  }

  if ([(ML3DatabaseConnection *)self logQueryPlans])
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Executed in %.1f", v18 - v14];
    NSLog(&stru_28408CEB0.isa, v19);
  }

  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained connectionDidAccessDatabase:self];
  }

  return v17;
}

- (void)_internalLogQuery:(id)query withParameters:(id)parameters limitProperty:(id)property limitValue:(int64_t)value
{
  queryCopy = query;
  parametersCopy = parameters;
  propertyCopy = property;
  if ([(ML3DatabaseConnection *)self logQueryPlans])
  {
    [(ML3DatabaseConnection *)self setLogQueryPlans:0];
    queryCopy = [MEMORY[0x277CCAB68] stringWithFormat:@"EXPLAIN QUERY PLAN for: %@\n", queryCopy];
    v14 = [@"EXPLAIN QUERY PLAN " stringByAppendingString:queryCopy];

    v15 = [(ML3DatabaseConnection *)self _internalExecuteQuery:v14 withParameters:parametersCopy limitProperty:propertyCopy limitValue:value];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __83__ML3DatabaseConnection__internalLogQuery_withParameters_limitProperty_limitValue___block_invoke;
    v20 = &unk_278766118;
    v21 = queryCopy;
    v16 = queryCopy;
    [v15 enumerateRowsWithBlock:&v17];
    NSLog(&stru_28408CEB0.isa, v16, v17, v18, v19, v20);
    [(ML3DatabaseConnection *)self setLogQueryPlans:1];

    queryCopy = v14;
  }
}

void __83__ML3DatabaseConnection__internalLogQuery_withParameters_limitProperty_limitValue___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 columnCount])
  {
    v3 = 0;
    do
    {
      if (v3)
      {
        [*(a1 + 32) appendString:@"|"];
      }

      v4 = *(a1 + 32);
      v5 = [v7 valueForColumnIndex:v3];
      v6 = [v5 description];
      [v4 appendString:v6];

      ++v3;
    }

    while ([v7 columnCount] > v3);
  }

  [*(a1 + 32) appendString:@"\n"];
}

- (BOOL)_executeStatement:(id)statement withError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  statementCopy = statement;
  [(ML3DatabaseConnection *)self _ensureConnectionIsOpen];
  v8 = 0;
  v9 = *MEMORY[0x277D27EB8];
  while (1)
  {
    v10 = objc_autoreleasePoolPush();
    step = [statementCopy step];
    if (step - 5 >= 2)
    {
      break;
    }

    v12 = step;
    [statementCopy reset];
    if ([(ML3DatabaseConnection *)self _handleBusyLockWithNumberOfRetries:v8])
    {
      sqliteError = [(ML3DatabaseConnection *)self sqliteError];
      v15 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        Name = sel_getName(a2);
        v17 = "locked";
        *buf = 136315906;
        v35 = Name;
        v36 = 2080;
        if (v12 == 5)
        {
          v17 = "busy";
        }

        v37 = v17;
        v38 = 1024;
        v39 = v8;
        v40 = 2114;
        v41 = sqliteError;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "(%s) SQLite was %s after %u retries. %{public}@", buf, 0x26u);
      }

      goto LABEL_25;
    }

    v8 = (v8 + 1);
    objc_autoreleasePoolPop(v10);
  }

  if (step <= 0x63u)
  {
    if (step == 10)
    {
      v18 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v35 = statementCopy;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Disk IO error detected while executing statement %{public}@", buf, 0xCu);
      }

      sqliteError = ML3DatabaseCreateDiskIOError();
      [(ML3DatabaseConnection *)self _handleDiskIOError];
      goto LABEL_25;
    }

    if (step == 11 || step == 26)
    {
      v13 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = statementCopy;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Database corruption detected while executing statement %{public}@", buf, 0xCu);
      }

      [(ML3DatabaseConnection *)self _handleDatabaseCorruption];
      sqliteError = ML3DatabaseCreateCorruptionError();
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (step - 100 > 1)
  {
LABEL_24:
    sqliteError = [(ML3DatabaseConnection *)self sqliteError];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error stepping statement. %@ %@", statementCopy, sqliteError];
    v28 = dispatch_semaphore_create(0);
    v29 = MEMORY[0x277D27EF0];
    v19 = MEMORY[0x277CCACA8];
    domain = [sqliteError domain];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(sqliteError, "code")}];
    v22 = [v19 stringWithFormat:@"Error domain=%@ code=%@", domain, v21];
    v33 = v30;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __53__ML3DatabaseConnection__executeStatement_withError___block_invoke;
    v31[3] = &unk_278765FB8;
    v32 = v28;
    v24 = v28;
    [v29 snapshotWithDomain:v9 type:@"Bug" subType:@"ML3SQLiteBug" context:v22 triggerThresholdValues:0 events:v23 completion:v31];

    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    v25 = [ML3DatabaseException databaseExceptionWithReason:v30 sqliteError:sqliteError];
    [v25 raise];

LABEL_25:
    objc_autoreleasePoolPop(v10);
    if (error && sqliteError)
    {
      v26 = sqliteError;
      *error = sqliteError;
    }

    goto LABEL_28;
  }

  if ([statementCopy clearBindingsAfterRunning])
  {
    [statementCopy clearBindings];
  }

  objc_autoreleasePoolPop(v10);
  sqliteError = 0;
LABEL_28:

  return sqliteError == 0;
}

- (id)_prepareStatement:(id)statement error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  statementCopy = statement;
  if (!statementCopy)
  {
    v9 = 0;
    goto LABEL_42;
  }

  [(ML3DatabaseConnection *)self _ensureConnectionIsOpen];
  v8 = [(ML3DatabaseStatementCache *)self->_statementCache cachedStatementForSQL:statementCopy];
  if (v8)
  {
    v9 = v8;
    [(ML3DatabaseStatement *)v8 reset];
    goto LABEL_42;
  }

  errorCopy = error;
  uTF8String = [statementCopy UTF8String];
  v11 = 0;
  ppStmt = 0;
  while (1)
  {
    while (1)
    {
      v12 = sqlite3_prepare_v3(self->_sqlitedb, uTF8String, -1, 1u, &ppStmt, 0);
      if (v12 != 10)
      {
        break;
      }

      v13 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v35 = statementCopy;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "Disk IO error detected while preparing statement %{public}@", buf, 0xCu);
      }

      if (![(ML3DatabaseConnection *)self _handleDiskIOError])
      {
        sqliteError = ML3DatabaseCreateDiskIOError();
        goto LABEL_29;
      }
    }

    if (v12 > 0xAu)
    {
      if (v12 == 11 || v12 == 26)
      {
        v16 = errorCopy;
        if (ppStmt)
        {
          sqlite3_finalize(ppStmt);
          ppStmt = 0;
        }

        [(ML3DatabaseConnection *)self _handleDatabaseCorruption];
        sqliteError = ML3DatabaseCreateCorruptionError();
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    if (v12 - 5 >= 2)
    {
      if (!v12)
      {
        v16 = errorCopy;
        if (ppStmt)
        {
          sqliteError = 0;
          goto LABEL_31;
        }

LABEL_35:
        v32 = *MEMORY[0x277CCA450];
        v33 = @"An unknown error occurred while preparing a database statement.";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ML3DatabaseErrorDomain" code:300 userInfo:v21];
        goto LABEL_36;
      }

LABEL_26:
      sqliteError = [(ML3DatabaseConnection *)self sqliteError];
      v16 = errorCopy;
      if (ppStmt)
      {
        sqlite3_finalize(ppStmt);
        ppStmt = 0;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error preparing statement SQL. %@ %@", statementCopy, sqliteError];
      v18 = [ML3DatabaseException databaseExceptionWithReason:v17 sqliteError:sqliteError];
      [v18 raise];

      goto LABEL_30;
    }

    v14 = v12;
    if ([(ML3DatabaseConnection *)self _handleBusyLockWithNumberOfRetries:v11])
    {
      break;
    }

    v11 = (v11 + 1);
  }

  sqliteError = [(ML3DatabaseConnection *)self sqliteError];
  v26 = _ML3LogCategoryDefault();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    Name = sel_getName(a2);
    v28 = "locked";
    *buf = 136315906;
    v35 = Name;
    v36 = 2080;
    if (v14 == 5)
    {
      v28 = "busy";
    }

    v37 = v28;
    v38 = 1024;
    v39 = v11;
    v40 = 2114;
    v41 = sqliteError;
    _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "(%s) SQLite was %s after %u retries. %{public}@", buf, 0x26u);
  }

LABEL_29:
  v16 = errorCopy;
LABEL_30:
  if (!ppStmt)
  {
    if (sqliteError)
    {
      v9 = 0;
      goto LABEL_38;
    }

    goto LABEL_35;
  }

LABEL_31:
  v20 = [ML3DatabaseStatement alloc];
  v21 = [(ML3DatabaseStatement *)v20 initWithSQLiteStatement:ppStmt SQL:statementCopy];
  v30 = sqliteError;
  v22 = [(ML3DatabaseConnection *)self _validatePreparedStatement:v21 error:&v30];
  v23 = v30;

  if (v22)
  {
    v21 = v21;
    [(ML3DatabaseStatementCache *)self->_statementCache cacheStatement:v21];
    v9 = v21;
    goto LABEL_37;
  }

LABEL_36:
  v9 = 0;
LABEL_37:

  sqliteError = v23;
LABEL_38:
  if (v16 && sqliteError)
  {
    v24 = sqliteError;
    *v16 = sqliteError;
  }

LABEL_42:

  return v9;
}

- (void)_setCloseConnectionWhenCheckingIn
{
  os_unfair_lock_lock(&self->_lock);
  self->_closeConnectionWhenCheckingIn = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTransactionLevel:(unint64_t)level
{
  os_unfair_lock_lock(&self->_lock);
  self->_transactionLevel = level;

  os_unfair_lock_unlock(&self->_lock);
}

- (int)_distrustQueriesDuringBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  pUserData = 0;
  v5 = sqlite3_set_authorizer(self->_sqlitedb, _databaseAuthorizer, &pUserData + 4);
  if (v5)
  {
    v6 = v5;
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sqlitedb = self->_sqlitedb;
      *buf = 67109376;
      v26 = v6;
      v27 = 2048;
      v28 = sqlitedb;
      v9 = "Enabling authorizer failed: %d, connection: %p";
LABEL_10:
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v10 = sqlite3_db_config(self->_sqlitedb, 1010, 1, &pUserData);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = pUserData == 1;
  }

  if (!v11)
  {
    v12 = v10;
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_sqlitedb;
      *buf = 67109376;
      v26 = v12;
      v27 = 2048;
      v28 = v13;
      v9 = "Enabling defensive mode failed: %d, connection: %p";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  blockCopy[2](blockCopy);
LABEL_12:
  v14 = sqlite3_db_config(self->_sqlitedb, 1010, 0, &pUserData);
  if (v14 | pUserData)
  {
    v15 = v14;
    v16 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = self->_sqlitedb;
      *buf = 67109376;
      v26 = v15;
      v27 = 2048;
      v28 = v17;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Disabling defensive mode failed: %d, connection: %p", buf, 0x12u);
    }
  }

  v18 = sqlite3_set_authorizer(self->_sqlitedb, 0, 0);
  if (v18)
  {
    v19 = v18;
    v20 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = self->_sqlitedb;
      *buf = 67109376;
      v26 = v19;
      v27 = 2048;
      v28 = v21;
      _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_ERROR, "Disabling authorizer failed: %d, connection: %p", buf, 0x12u);
    }
  }

  v22 = HIDWORD(pUserData);

  return v22;
}

- (BOOL)_handleDiskIOError
{
  v47 = *MEMORY[0x277D85DE8];
  [(ML3DatabaseConnection *)self _logDatabaseFileDebugInformation];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "DISK IO ERROR: attempting to close and re-open connection for recovery.", buf, 2u);
  }

  v4 = 0;
  *buf = 0;
  v41 = buf;
  v42 = 0x2020000000;
  v43 = 0;
  if (!self->_isHandlingIOError)
  {
    transactionLevel = [(ML3DatabaseConnection *)self transactionLevel];
    self->_isHandlingIOError = 1;
    v6 = [(ML3DatabaseConnection *)self _closeAndFlushTransactionState:0];
    v41[24] = v6;
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      if (v8)
      {
        *v44 = 0;
        _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "[_handleDiskIOError] failed to close database connection", v44, 2u);
      }

LABEL_18:

      v15 = v41[24];
      v16 = os_log_create("com.apple.amp.medialibrary", "Default");
      defaultManager = v16;
      if (v15 == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v44 = 0;
          _os_log_impl(&dword_22D2FA000, defaultManager, OS_LOG_TYPE_DEBUG, "[_handleDiskIOError] successfully recovered from disk IO error", v44, 2u);
        }

        goto LABEL_44;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        _os_log_impl(&dword_22D2FA000, defaultManager, OS_LOG_TYPE_ERROR, "[_handleDiskIOError] FAILED TO HANDLE DISK IO ERROR", v44, 2u);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [(ML3DatabaseConnection *)self _databaseFilePaths];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v18 = v34 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v46 count:16];
      if (v19)
      {
        v20 = *v34;
LABEL_25:
        v21 = 0;
        while (1)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v33 + 1) + 8 * v21);
          if ([v22 containsString:{@"-shm", v33}])
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [v18 countByEnumeratingWithState:&v33 objects:v46 count:16];
            if (v19)
            {
              goto LABEL_25;
            }

            goto LABEL_31;
          }
        }

        v23 = v22;

        if (!v23 || ![defaultManager fileExistsAtPath:v23])
        {
          goto LABEL_39;
        }

        v24 = v23;
        if (unlink([v23 fileSystemRepresentation]) == -1)
        {
          v26 = _ML3LogCategoryDefault();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_43;
          }

          v32 = *__error();
          *v44 = 67109120;
          v45 = v32;
          v28 = "[_handleDiskIOError] failed to delete SHM file from disk (errno = %d)";
          v29 = v26;
          v30 = 8;
          goto LABEL_42;
        }

        _isDeviceMediaLibraryDatabase = [(ML3DatabaseConnection *)self _isDeviceMediaLibraryDatabase];
        v26 = _ML3LogCategoryDefault();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        if (_isDeviceMediaLibraryDatabase)
        {
          if (v27)
          {
            *v44 = 0;
            _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_ERROR, "[_handleDiskIOError] unlink successful. performing coordinated termination.", v44, 2u);
          }

          v26 = +[ML3TerminationCoordinator sharedCoordinator];
          [v26 execute];
          goto LABEL_43;
        }

        if (!v27)
        {
          goto LABEL_43;
        }

        *v44 = 0;
        v28 = "[_handleDiskIOError] unlink successful.";
      }

      else
      {
LABEL_31:

        v23 = 0;
LABEL_39:
        v26 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *v44 = 0;
        v28 = "[_handleDiskIOError] SHM file not found—unable to unlink";
      }

      v29 = v26;
      v30 = 2;
LABEL_42:
      _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_ERROR, v28, v44, v30);
LABEL_43:

LABEL_44:
      self->_isHandlingIOError = 0;
      v4 = v41[24];
      goto LABEL_45;
    }

    if (v8)
    {
      *v44 = 0;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "[_handleDiskIOError] checking database consistency", v44, 2u);
    }

    v9 = dispatch_semaphore_create(0);
    v10 = +[MLMediaLibraryService sharedMediaLibraryService];
    databasePath = self->_databasePath;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __43__ML3DatabaseConnection__handleDiskIOError__block_invoke;
    v37[3] = &unk_278765DE0;
    v39 = buf;
    v37[4] = self;
    v7 = v9;
    v38 = v7;
    [v10 checkIntegrityOfDatabaseAtPath:databasePath repairFaults:1 withCompletionHandler:v37];

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    if (v41[24] == 1 && (v12 = [(ML3DatabaseConnection *)self open], (v41[24] = v12) != 0))
    {
      if (!transactionLevel)
      {
LABEL_17:

        goto LABEL_18;
      }

      v13 = [(ML3DatabaseConnection *)self _internalBeginTransactionWithBehaviorType:0];
      v41[24] = v13;
      if (v13)
      {
        os_unfair_lock_lock(&self->_lock);
        self->_transactionLevel = transactionLevel;
        self->_nestedTransactionWantsToRollback = 1;
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_17;
      }

      v14 = _ML3LogCategoryDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "[_handleDiskIOError] failed to restart transaction after re-opening database connection", v44, 2u);
      }
    }

    else
    {
      v14 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "[_handleDiskIOError] failed to re-open database connection", v44, 2u);
      }
    }

    goto LABEL_17;
  }

LABEL_45:
  _Block_object_dispose(buf, 8);
  return v4 & 1;
}

intptr_t __43__ML3DatabaseConnection__handleDiskIOError__block_invoke(uint64_t a1, char a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "[_handleDiskIOError] Database integrity check passed.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "[_handleDiskIOError] Database integrity check failed - treating as corrupted", v7, 2u);
    }

    [*(a1 + 32) _handleDatabaseCorruption];
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_handleBusyLockWithNumberOfRetries:(int)retries
{
  if (retries)
  {
    if (retries >= 10 && self->_journalingMode == 1)
    {
      return 1;
    }

    usleep(0xF4240u);
  }

  else
  {
    [(ML3DatabaseConnection *)self _resetUnfinalizedStatements];
  }

  return 0;
}

- (void)_handleDatabaseCorruption
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v4 = v14;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] ✘ Database Corruption Detected ✘", buf, 0xCu);
  }

  [(ML3DatabaseConnection *)self _logDatabaseFileDebugInformation];
  if ([(ML3DatabaseConnection *)self isOpen])
  {
    [(ML3DatabaseConnection *)self close];
  }

  if (!+[ML3MusicLibrary deviceSupportsMultipleLibraries]&& [(ML3DatabaseConnection *)self _isDeviceMediaLibraryDatabase])
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Attempting database recovery...", buf, 2u);
    }

    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v7 = [callStackSymbols componentsJoinedByString:@"\n"];

    v8 = +[MLMediaLibraryService sharedMediaLibraryService];
    databasePath = self->_databasePath;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__ML3DatabaseConnection__handleDatabaseCorruption__block_invoke;
    v11[3] = &unk_278765DB8;
    v11[4] = self;
    v12 = v7;
    v10 = v7;
    [v8 attemptDatabaseFileRecoveryAtPath:databasePath withCompletionHandler:v11];
  }
}

void __50__ML3DatabaseConnection__handleDatabaseCorruption__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Database recovery was reported to be successful.", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Database recovery failed. %{public}@", buf, 0xCu);
    }

    if (MSVDeviceOSIsInternalInstall() && !__daemonProcessInfo)
    {
      [MLException raise:*MEMORY[0x277CBE658] format:@"Database at path %@ is corrupted. (Detected on connection %@) backtrace: %@", *(*(a1 + 32) + 120), *(a1 + 32), *(a1 + 40)];
    }
  }
}

- (void)_raiseConnectionClosedException
{
  databasePath = self->_databasePath;
  if (!databasePath)
  {
    ML3DatabaseConnectionRaiseNilDatabasePath(0, a2);
    databasePath = self->_databasePath;
  }

  ML3DatabaseConnectionCheckDatabasePathAndRaiseIfNecessary(databasePath);

  ML3DatabaseConnectionRaiseUnknownException();
}

- (id)_owningPool
{
  WeakRetained = objc_loadWeakRetained(&self->_owningPool);

  return WeakRetained;
}

- (int)checkpointDatabase
{
  v10 = *MEMORY[0x277D85DE8];
  if (![(ML3DatabaseConnection *)self isOpen])
  {
    return -1;
  }

  if ([(ML3DatabaseConnection *)self isReadOnly])
  {
    return -1;
  }

  sqlitedb = self->_sqlitedb;
  if (!sqlitedb)
  {
    return -1;
  }

  errmsg = 0;
  v4 = sqlite3_exec(sqlitedb, "PRAGMA wal_checkpoint;", 0, 0, &errmsg);
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = errmsg;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Could not checkpoint WAL file. %{public}s", buf, 0xCu);
    }
  }

  return v4;
}

- (BOOL)deleteDatabase
{
  if ([(ML3DatabaseConnection *)self isReadOnly])
  {
    return 0;
  }

  if ([(ML3DatabaseConnection *)self isOpen])
  {
    [(ML3DatabaseConnection *)self close];
  }

  databasePath = self->_databasePath;
  v5 = self->_journalingMode == 1;

  return ML3TruncateDatabase(databasePath, v5);
}

- (id)sqliteError
{
  v21[2] = *MEMORY[0x277D85DE8];
  sqlitedb = self->_sqlitedb;
  if (!sqlitedb)
  {
    v18[0] = *MEMORY[0x277CCA450];
    v19[0] = @"Database connection lost or invalid.";
    v14 = [objc_opt_class() description];
    v18[1] = v14;
    v15 = [(ML3DatabaseConnection *)self description];
    v19[1] = v15;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ML3DatabaseErrorDomain" code:200 userInfo:v8];
    goto LABEL_5;
  }

  v4 = sqlite3_errcode(sqlitedb);
  v5 = sqlite3_extended_errcode(self->_sqlitedb);
  v17 = 0;
  if (v4)
  {
    v6 = v5;
    v7 = sqlite3_errmsg(self->_sqlitedb);
    sqlite3_file_control(self->_sqlitedb, "main", 4, &v17);
    v8 = MLSQLiteExtendedResultString(v6);
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- extended errcode: %d (%@), last errno = %d", v7, v6, v8, v17];
    v20[0] = *MEMORY[0x277CCA450];
    v21[0] = v9;
    v10 = [objc_opt_class() description];
    v20[1] = v10;
    v11 = [(ML3DatabaseConnection *)self description];
    v21[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ML3DatabaseErrorDomain" code:v4 userInfo:v12];

LABEL_5:
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)openBlobInTable:(id)table column:(id)column row:(int64_t)row readOnly:(BOOL)only
{
  onlyCopy = only;
  v20[1] = *MEMORY[0x277D85DE8];
  tableCopy = table;
  columnCopy = column;
  [(ML3DatabaseConnection *)self _ensureConnectionIsOpen];
  ppBlob = 0;
  tableCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT 1 FROM %@ WHERE ROWID=?", tableCopy];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:row];
  v20[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v15 = [(ML3DatabaseConnection *)self executeQuery:tableCopy withParameters:v14];

  v16 = 0;
  if ([v15 hasAtLeastOneRow])
  {
    if (sqlite3_blob_open(self->_sqlitedb, "main", [tableCopy UTF8String], objc_msgSend(columnCopy, "UTF8String"), row, !onlyCopy, &ppBlob))
    {
      [(ML3DatabaseConnection *)self _logCurrentError];
      v16 = 0;
    }

    else
    {
      v17 = [ML3DatabaseBlob alloc];
      v16 = [(ML3DatabaseBlob *)v17 initWithSQLiteHandle:ppBlob];
    }
  }

  return v16;
}

- (BOOL)removeModuleNamed:(id)named
{
  v21 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_registeredModules;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      name = [v10 name];
      v12 = [name isEqualToString:namedCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v10;

    if (v14)
    {
      [(NSMutableArray *)self->_registeredModules removeObject:v14];
      v13 = 1;
      v5 = v14;
      goto LABEL_12;
    }

    v13 = 0;
  }

  else
  {
LABEL_9:
    v13 = 0;
LABEL_12:
  }

  return v13;
}

- (BOOL)registerModuleName:(id)name moduleMethods:(sqlite3_module *)methods
{
  nameCopy = name;
  v8 = [(ML3DatabaseConnection *)self _registeredModuleNamed:nameCopy];
  if (!v8)
  {
    v9 = [[ML3DatabaseModule alloc] initWithName:nameCopy moduleMethods:methods];

    v13 = [(ML3DatabaseConnection *)self registerModule:v9];
    goto LABEL_6;
  }

  v9 = v8;
  name = [(ML3DatabaseModule *)v8 name];
  v11 = [name isEqualToString:nameCopy];

  if (!v11)
  {

    goto LABEL_8;
  }

  moduleMethods = [(ML3DatabaseModule *)v9 moduleMethods];

  if (moduleMethods != methods)
  {
LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnection.m" lineNumber:817 description:@"modules can only be registered one time"];
  }

  v13 = 1;
LABEL_6:

  return v13;
}

- (BOOL)registerModule:(id)module
{
  v20 = *MEMORY[0x277D85DE8];
  moduleCopy = module;
  if (!self->_sqlitedb)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnection.m" lineNumber:794 description:{@"Cannot register module. SQLite handle not available, or connection is not open."}];
  }

  context = [moduleCopy context];

  if (context)
  {
    context2 = [moduleCopy context];
  }

  else
  {
    context2 = moduleCopy;
  }

  v8 = context2;
  sqlitedb = self->_sqlitedb;
  name = [moduleCopy name];
  module = sqlite3_create_module(sqlitedb, [name UTF8String], objc_msgSend(moduleCopy, "moduleMethods"), v8);

  if (module)
  {
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sqliteError = [(ML3DatabaseConnection *)self sqliteError];
      v16 = 138543618;
      v17 = moduleCopy;
      v18 = 2114;
      v19 = sqliteError;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "Error registering module: %{public}@. %{public}@", &v16, 0x16u);
    }
  }

  else
  {
    [(NSMutableArray *)self->_registeredModules addObject:moduleCopy];
  }

  return module == 0;
}

- (BOOL)registerFunctionName:(id)name argumentCount:(int)count functionPointer:(void *)pointer userData:(void *)data
{
  v8 = *&count;
  nameCopy = name;
  v11 = [[ML3DatabaseFunctionPointer alloc] initWithName:nameCopy argumentCount:v8];

  [(ML3DatabaseFunctionPointer *)v11 setFunctionPointer:pointer];
  if (data)
  {
    [(ML3DatabaseFunctionPointer *)v11 setUserData:data];
  }

  v12 = [(ML3DatabaseFunctionPointer *)v11 registerWithConnection:self];
  if (v12)
  {
    [(NSMutableArray *)self->_registeredFunctions addObject:v11];
  }

  return v12;
}

- (BOOL)registerFunctionName:(id)name argumentCount:(int)count block:(id)block
{
  v5 = *&count;
  blockCopy = block;
  nameCopy = name;
  v10 = [[ML3DatabaseFunctionBlock alloc] initWithName:nameCopy argumentCount:v5];

  [(ML3DatabaseFunctionBlock *)v10 setBlock:blockCopy];
  v11 = [(ML3DatabaseFunctionBlock *)v10 registerWithConnection:self];
  if (v11)
  {
    [(NSMutableArray *)self->_registeredFunctions addObject:v10];
  }

  return v11;
}

- (void)enqueueBlockForTransactionCommit:(id)commit
{
  enqueuedTransactionCommitBlocks = self->_enqueuedTransactionCommitBlocks;
  v4 = MEMORY[0x2318CDB10](commit, a2);
  [(NSMutableArray *)enqueuedTransactionCommitBlocks addObject:v4];
}

- (BOOL)performTransactionWithBlock:(id)block usingBehaviorType:(unint64_t)type
{
  blockCopy = block;
  if ([(ML3DatabaseConnection *)self pushTransactionUsingBehaviorType:type])
  {
    v7 = [(ML3DatabaseConnection *)self popTransactionAndCommit:blockCopy[2](blockCopy)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)popToRootTransactionAndCommit:(BOOL)commit
{
  commitCopy = commit;
  v10 = *MEMORY[0x277D85DE8];
  if (![(ML3DatabaseConnection *)self isInTransaction])
  {
    return 0;
  }

  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ ending transaction", &v8, 0xCu);
  }

  v6 = [(ML3DatabaseConnection *)self _internalEndTransactionAndCommit:commitCopy];
  os_unfair_lock_lock(&self->_lock);
  self->_transactionLevel = 0;
  self->_nestedTransactionWantsToRollback = 0;
  os_unfair_lock_unlock(&self->_lock);
  [(ML3DatabaseConnection *)self _executeTransactionCommitBlocks:commitCopy];
  return v6;
}

- (BOOL)popTransactionAndCommit:(BOOL)commit
{
  commitCopy = commit;
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  transactionLevel = self->_transactionLevel;
  nestedTransactionWantsToRollback = self->_nestedTransactionWantsToRollback;
  os_unfair_lock_unlock(&self->_lock);
  if (transactionLevel)
  {
    if (transactionLevel == 1)
    {
      v7 = !nestedTransactionWantsToRollback;
      v8 = [(ML3DatabaseConnection *)self _internalEndTransactionAndCommit:commitCopy && !nestedTransactionWantsToRollback];
      if (v8)
      {
        os_unfair_lock_lock(&self->_lock);
        self->_transactionLevel = 0;
        self->_nestedTransactionWantsToRollback = 0;
        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        v10 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543362;
          selfCopy = self;
          _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Warning: unable to end transaction on connection %{public}@", &v12, 0xCu);
        }
      }

      [(ML3DatabaseConnection *)self _executeTransactionCommitBlocks:commitCopy & v7];
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      --self->_transactionLevel;
      self->_nestedTransactionWantsToRollback |= !commitCopy;
      os_unfair_lock_unlock(&self->_lock);
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "Warning: attempted to end a non-existent transaction.", &v12, 2u);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)pushTransactionUsingBehaviorType:(unint64_t)type
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(ML3DatabaseConnection *)self isInTransaction])
  {
    [(ML3DatabaseConnection *)self setTransactionLevel:[(ML3DatabaseConnection *)self transactionLevel]+ 1];
    return 1;
  }

  else if ([(ML3DatabaseConnection *)self _internalBeginTransactionWithBehaviorType:type])
  {
    os_unfair_lock_lock(&self->_lock);
    self->_nestedTransactionWantsToRollback = 0;
    v5 = 1;
    self->_transactionLevel = 1;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Warning: unable to begin transaction on connection: %{public}@", &v8, 0xCu);
    }

    return 0;
  }

  return v5;
}

- (BOOL)executeUpdate:(id)update withParameters:(id)parameters error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  parametersCopy = parameters;
  if ([(ML3DatabaseConnection *)self transactionMarkedForRollBack])
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = updateCopy;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "failing update request in a transaction marked for rollback. sql=%{public}@", &v13, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = [(ML3DatabaseConnection *)self _internalExecuteUpdate:updateCopy withParameters:parametersCopy error:error];
  }

  return v11;
}

- (BOOL)tableExists:(id)exists
{
  exists = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name='%@'", exists];
  v5 = [(ML3DatabaseConnection *)self executeQuery:exists];
  hasAtLeastOneRow = [v5 hasAtLeastOneRow];

  return hasAtLeastOneRow;
}

- (BOOL)databasePathExists
{
  if (ML3IsMemorySQLiteDatabasePath(self->_databasePath))
  {
    return 1;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:self->_databasePath];

  return v5;
}

- (BOOL)_closeAndFlushTransactionState:(BOOL)state
{
  stateCopy = state;
  v22 = *MEMORY[0x277D85DE8];
  if (![(ML3DatabaseConnection *)self isOpen])
  {
    WeakRetained = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_22D2FA000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%{public}@ is not open", &v17, 0xCu);
    }

    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained connectionWillCloseDatabase:self];
  }

  if (stateCopy)
  {
    [(ML3DatabaseConnection *)self flush];
  }

  [(ML3DatabaseConnection *)self setTransactionLevel:0];
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    selfCopy4 = self;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to finalize all statements", &v17, 0xCu);
  }

  [(ML3DatabaseConnection *)self _finalizeAllStatements];
  iTunesExtensions = self->_iTunesExtensions;
  if (iTunesExtensions)
  {
    DestroySQLExtensions(iTunesExtensions);
    self->_iTunesExtensions = 0;
  }

  sqlitedb = self->_sqlitedb;
  if (!sqlitedb || !self->_isOpen)
  {
    sqliteError = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
    if (os_log_type_enabled(sqliteError, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_sqlitedb;
      isOpen = self->_isOpen;
      v17 = 138543874;
      selfCopy4 = self;
      v19 = 2048;
      *v20 = v13;
      *&v20[8] = 1024;
      v21 = isOpen;
      _os_log_impl(&dword_22D2FA000, sqliteError, OS_LOG_TYPE_DEFAULT, "%{public}@ not closing _sqlitedb=%p, _isOpen=%{BOOL}u", &v17, 0x1Cu);
    }

    goto LABEL_19;
  }

  v9 = sqlite3_close(sqlitedb);
  if (v9)
  {
    v10 = [(ML3DatabaseConnection *)self _handleZombieSQLiteConnection:self->_sqlitedb];
  }

  else
  {
    v10 = 1;
  }

  v16 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543874;
    selfCopy4 = self;
    v19 = 1024;
    *v20 = v9;
    *&v20[4] = 1024;
    *&v20[6] = v10;
    _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ closed with result=%d, status=%{BOOL}u", &v17, 0x18u);
  }

  if (!v10)
  {
    [(ML3DatabaseConnection *)self _logCurrentError];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_20;
    }

    sqliteError = [(ML3DatabaseConnection *)self sqliteError];
    [WeakRetained connection:self didFailToCloseDatabaseWithError:sqliteError];
LABEL_19:

LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  self->_sqlitedb = 0;
  self->_isOpen = 0;
  [(NSMutableArray *)self->_registeredFunctions removeAllObjects];
  [(NSMutableArray *)self->_registeredModules removeAllObjects];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained connectionDidCloseDatabase:self];
  }

LABEL_16:
  v11 = 1;
LABEL_21:

  return v11;
}

- (BOOL)close
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to close", &v5, 0xCu);
  }

  return [(ML3DatabaseConnection *)self _closeAndFlushTransactionState:1];
}

- (BOOL)_openWithFlags:(int)flags
{
  v126 = *MEMORY[0x277D85DE8];
  if (self->_databasePath)
  {
    selfCopy = self;
    WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained connectionWillOpenDatabase:selfCopy];
    }

    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (selfCopy->_isReadOnly)
      {
        v7 = @"readonly";
      }

      else
      {
        v7 = @"readwrite";
      }

      databasePath = [(ML3DatabaseConnection *)selfCopy databasePath];
      *buf = 138544130;
      *&buf[4] = selfCopy;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      *&buf[22] = 2114;
      *&v121 = databasePath;
      WORD4(v121) = 1024;
      *(&v121 + 10) = flags;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Trying to open %{public}@ connection %{public}@ to database at path %{public}@ with flags=%d", buf, 0x26u);
    }

    if ((flags & 2) != 0)
    {
      selfCopy->_isReadOnly = 0;
      v9 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        isReadOnly = selfCopy->_isReadOnly;
        *buf = 138543618;
        *&buf[4] = selfCopy;
        *&buf[12] = 1024;
        *&buf[14] = isReadOnly;
        v11 = "Adjusting connection %{public}@ setting _isReadOnly=%{BOOL}u as the flags are SQLITE_OPEN_READWRITE";
        goto LABEL_16;
      }
    }

    else
    {
      if ((flags & 1) == 0)
      {
LABEL_18:
        if ([(ML3DatabaseConnection *)selfCopy _databaseFilesAreWritable]|| selfCopy->_journalingMode == 1)
        {
          flags = flags & 0xFFFFFFFC | 2;
          v13 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = selfCopy;
            *&buf[12] = 1024;
            *&buf[14] = flags;
            _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Adjusting connection %{public}@ setting openFlags=%d to account for WAL files", buf, 0x12u);
          }
        }

        v14 = __daemonProcessInfo;
        v15 = __daemonProcessInfo != 0;
        if (__daemonProcessInfo)
        {
          flags |= 0x1000000u;
          v16 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = selfCopy;
            *&buf[12] = 1024;
            *&buf[14] = flags;
            _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "Adjusting connection %{public}@ setting openFlags=%d for medialibrary deamon", buf, 0x12u);
          }
        }

        _isDeviceMediaLibraryDatabase = [(ML3DatabaseConnection *)selfCopy _isDeviceMediaLibraryDatabase];
        if (!_isDeviceMediaLibraryDatabase)
        {
          v15 = !selfCopy->_isReadOnly;
        }

        v18 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          databasePath = selfCopy->_databasePath;
          v20 = selfCopy->_isReadOnly;
          *buf = 138544898;
          *&buf[4] = selfCopy;
          *&buf[12] = 2114;
          *&buf[14] = databasePath;
          *&buf[22] = 1024;
          LODWORD(v121) = v20;
          WORD2(v121) = 1024;
          *(&v121 + 6) = _isDeviceMediaLibraryDatabase;
          WORD5(v121) = 1024;
          HIDWORD(v121) = v14 != 0;
          v122 = 1024;
          v123 = v15;
          v124 = 1024;
          flagsCopy = flags;
          _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ attempting to open database at %{public}@ _isReadOnly=%{BOOL}u, isDeviceMediaLibraryDatabase=%{BOOL}u, isMediaLibraryDeamon=%{BOOL}u, canCreateDatabase=%{BOOL}u, openFlags=%d,", buf, 0x34u);
        }

        if (v15)
        {
          flags |= 4u;
          [(ML3DatabaseConnection *)selfCopy _createDatabaseDirectoryIfNonexistent];
        }

        else if (selfCopy->_isReadOnly)
        {
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v22 = [defaultManager fileExistsAtPath:selfCopy->_databasePath];

          if ((v22 & 1) == 0)
          {
            v39 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = selfCopy->_databasePath;
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 2114;
              *&buf[14] = v40;
              _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_ERROR, "Connection %{public}@ is readOnly, creating DB is NOT allowed and database file doesn't exist at %{public}@", buf, 0x16u);
            }

            goto LABEL_136;
          }
        }

        protectionLevel = selfCopy->_protectionLevel;
        if (protectionLevel > 3)
        {
          v24 = 7340032;
        }

        else
        {
          v24 = dword_22D5C6B10[protectionLevel];
        }

        ppDb = 0;
        errmsg = 0;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __MLSetSQLiteAutoTraceEnabled_block_invoke;
        *&v121 = &__block_descriptor_33_e5_v8__0l;
        BYTE8(v121) = 1;
        _MLDispatchToSerialQueue(0, buf);
        fileSystemRepresentation = [(NSString *)selfCopy->_databasePath fileSystemRepresentation];
        v26 = sqlite3_open_v2(fileSystemRepresentation, &ppDb, v24 | flags, 0);
        v99 = WeakRetained;
        v103 = selfCopy;
        v97 = v15;
        v95 = v24;
        if (v26)
        {
          v27 = v26;
          v28 = v26;
          v29 = v26 == 11 || v26 == 267 || v26 == 26;
          v32 = sqlite3_errstr(v26);
          v33 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = "<nil>";
            *buf = 136447234;
            if (v32)
            {
              v34 = v32;
            }

            *&buf[4] = fileSystemRepresentation;
            *&buf[12] = 1024;
            *&buf[14] = v27;
            *&buf[18] = 1024;
            *&buf[20] = v28;
            LOWORD(v121) = 1024;
            *(&v121 + 2) = v29;
            WORD3(v121) = 2082;
            *(&v121 + 1) = v34;
            _os_log_impl(&dword_22D2FA000, v33, OS_LOG_TYPE_DEFAULT, "SQLite detected while opening database at '%{public}s'. errorCode=%d, minimalCode=%d, corrupted=%{BOOL}u, errorMsg=%{public}s", buf, 0x28u);
          }

          if (v29)
          {
            sqliteError = ML3DatabaseCreateCorruptionError();
          }

          else
          {
            if (((v27 & 0xFB) == 0xA || v28 == 15) && [(ML3DatabaseConnection *)selfCopy _handleDiskIOError])
            {
              v29 = 0;
              v102 = 0;
LABEL_63:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              goto LABEL_111;
            }

            sqliteError = [(ML3DatabaseConnection *)selfCopy sqliteError];
          }

          v102 = sqliteError;
          goto LABEL_63;
        }

        sqlite3_extended_result_codes(ppDb, 1);
        journalingMode = selfCopy->_journalingMode;
        flagsCopy2 = flags;
        if (journalingMode)
        {
          if (journalingMode != 1)
          {
            v91 = 1;
            v89 = 0;
            v93 = 0;
            v100 = 0;
            goto LABEL_86;
          }

          v112 = 1;
          v93 = sqlite3_file_control(ppDb, 0, 10, &v112);
          if (v93)
          {
            v31 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 1024;
              *&buf[14] = v93;
              _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ could not enable SQLITE_FCNTL_PERSIST_WAL option, result %d", buf, 0x12u);
            }

            v100 = @"enable SQLITE_FCNTL_PERSIST_WAL option failed";
            if (![(ML3DatabaseConnection *)selfCopy _handleConnectionErrorWhileOpening:v93])
            {
              v89 = 0;
LABEL_72:
              v91 = 0;
LABEL_86:
              v119[0] = selfCopy->_databasePath;
              v48 = [v119[0] stringByAppendingString:@"-shm"];
              v119[1] = v48;
              v49 = [(NSString *)selfCopy->_databasePath stringByAppendingString:@"-wal"];
              v119[2] = v49;
              v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:3];

              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v51 = v50;
              v52 = [v51 countByEnumeratingWithState:&v107 objects:v118 count:16];
              if (v52)
              {
                v53 = v52;
                v54 = *v108;
                do
                {
                  for (i = 0; i != v53; ++i)
                  {
                    if (*v108 != v54)
                    {
                      objc_enumerationMutation(v51);
                    }

                    v56 = *(*(&v107 + 1) + 8 * i);
                    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
                    v58 = [defaultManager2 fileExistsAtPath:v56];

                    if (v58)
                    {
                      value = 0;
                      v59 = [MEMORY[0x277CBEBC0] fileURLWithPath:v56];
                      if (getxattr([v59 fileSystemRepresentation], "com.apple.runningboard.can-suspend-locked", 0, 0, 0, 0) == 1)
                      {
                        getxattr([v59 fileSystemRepresentation], "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);
                      }

                      if (!value)
                      {
                        value = -1;
                        v60 = setxattr([v59 fileSystemRepresentation], "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);
                        if (v60)
                        {
                          v61 = v60;
                          v62 = os_log_create("com.apple.amp.medialibrary", "Default");
                          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138543874;
                            *&buf[4] = v103;
                            *&buf[12] = 2114;
                            *&buf[14] = v59;
                            *&buf[22] = 1024;
                            LODWORD(v121) = v61;
                            _os_log_impl(&dword_22D2FA000, v62, OS_LOG_TYPE_ERROR, "%{public}@ Failed to set can-suspend-locked xattr on file %{public}@. err=%d", buf, 0x1Cu);
                          }
                        }
                      }
                    }
                  }

                  v53 = [v51 countByEnumeratingWithState:&v107 objects:v118 count:16];
                }

                while (v53);
              }

              if (v91)
              {
                selfCopy = v103;
                if (__daemonProcessInfo && !v103->_isReadOnly && (v63 = sqlite3_exec(ppDb, "PRAGMA cache_size=500", 0, 0, &errmsg), v63))
                {
                  v38 = v63;
                  v64 = _ML3LogCategoryDefault();
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543874;
                    *&buf[4] = v103;
                    *&buf[12] = 2082;
                    *&buf[14] = errmsg;
                    *&buf[22] = 1024;
                    LODWORD(v121) = v38;
                    _os_log_impl(&dword_22D2FA000, v64, OS_LOG_TYPE_DEFAULT, "Warning: connection %{public}@ could not set cache size. %{public}s, result %d", buf, 0x1Cu);
                  }

                  v65 = [(ML3DatabaseConnection *)v103 _handleConnectionErrorWhileOpening:v38];
                  MLSetSQLiteAutoTraceEnabled(0);
                  if (!v65)
                  {
                    v29 = 0;
                    v102 = 0;
                    v28 = 0;
                    v36 = @"set cache size error";
                    flags = flagsCopy2;
                    v37 = v93;
LABEL_112:
                    selfCopy->_isOpen = 0;
                    v66 = os_log_create("com.apple.amp.medialibrary", "Default");
                    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                    {
                      v67 = objc_opt_class();
                      v68 = v38;
                      v69 = selfCopy->_databasePath;
                      v70 = sqlite3_errmsg(ppDb);
                      *buf = 138412802;
                      *&buf[4] = v67;
                      *&buf[12] = 2114;
                      *&buf[14] = v69;
                      v38 = v68;
                      *&buf[22] = 2082;
                      *&v121 = v70;
                      _os_log_impl(&dword_22D2FA000, v66, OS_LOG_TYPE_ERROR, "[%@] Unable to open database connection to path %{public}@. %{public}s", buf, 0x20u);
                    }

                    if (errmsg)
                    {
                      errmsg = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", errmsg];
                    }

                    else
                    {
                      errmsg = &stru_28408B690;
                    }

                    v88 = dispatch_semaphore_create(0);
                    v90 = MEMORY[0x277D27EF0];
                    v115[0] = @"corrupted";
                    v94 = [MEMORY[0x277CCABB0] numberWithBool:v29];
                    v116[0] = v94;
                    v115[1] = @"openError";
                    null = v102;
                    if (!v102)
                    {
                      null = [MEMORY[0x277CBEB68] null];
                    }

                    v73 = MEMORY[0x277D27EC0];
                    v83 = null;
                    v116[1] = null;
                    v115[2] = @"minimalCode";
                    v92 = [MEMORY[0x277CCABB0] numberWithInt:v28];
                    v116[2] = v92;
                    v115[3] = @"canCreateDatabase";
                    v98 = [MEMORY[0x277CCABB0] numberWithBool:v97];
                    v116[3] = v98;
                    v115[4] = @"openFlags";
                    flags = [MEMORY[0x277CCABB0] numberWithInt:v95 | flags];
                    v116[4] = flags;
                    v115[5] = @"isReadOnly";
                    v87 = [MEMORY[0x277CCABB0] numberWithBool:selfCopy->_isReadOnly];
                    v116[5] = v87;
                    v115[6] = @"sqliteResult";
                    v85 = [MEMORY[0x277CCABB0] numberWithInt:v38];
                    v116[6] = v85;
                    v115[7] = @"walResult";
                    v84 = [MEMORY[0x277CCABB0] numberWithInt:v37];
                    v116[7] = v84;
                    v115[8] = @"path";
                    v74 = selfCopy->_databasePath;
                    null2 = v74;
                    if (!v74)
                    {
                      null2 = [MEMORY[0x277CBEB68] null];
                    }

                    v76 = *v73;
                    v116[8] = null2;
                    v115[9] = @"context";
                    null3 = v36;
                    if (!v36)
                    {
                      null3 = [MEMORY[0x277CBEB68] null];
                    }

                    v101 = v36;
                    v116[9] = null3;
                    v115[10] = @"sqlErrorString";
                    null4 = errmsg;
                    if (!errmsg)
                    {
                      null4 = [MEMORY[0x277CBEB68] null];
                    }

                    v116[10] = null4;
                    v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:11];
                    v117 = v79;
                    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
                    v104[0] = MEMORY[0x277D85DD0];
                    v104[1] = 3221225472;
                    v104[2] = __40__ML3DatabaseConnection__openWithFlags___block_invoke;
                    v104[3] = &unk_278765FB8;
                    v81 = v88;
                    v105 = v81;
                    [v90 snapshotWithDomain:v76 type:@"Bug" subType:@"Database Validation Bug" context:@"database open error" triggerThresholdValues:0 events:v80 completion:v104];

                    if (!errmsg)
                    {
                    }

                    if (!v101)
                    {
                    }

                    WeakRetained = v99;
                    if (!v74)
                    {
                    }

                    if (!v102)
                    {
                    }

                    dispatch_semaphore_wait(v81, 0xFFFFFFFFFFFFFFFFLL);
                    [(ML3DatabaseConnection *)v103 _logDatabaseFileDebugInformation];
                    sqlite3_close(ppDb);
                    if (objc_opt_respondsToSelector())
                    {
                      [v99 connection:v103 didFailToOpenDatabaseWithError:v102];
                    }

LABEL_136:
                    return 0;
                  }
                }

                else
                {

                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __MLSetSQLiteAutoTraceEnabled_block_invoke;
                  *&v121 = &__block_descriptor_33_e5_v8__0l;
                  BYTE8(v121) = 0;
                  _MLDispatchToSerialQueue(0, buf);
                }

                v103->_isOpen = 1;
                v103->_sqlitedb = ppDb;
                if (v103->_iTunesExtensions)
                {
                  DestroySQLExtensions(v103->_iTunesExtensions);
                }

                CreateSQLExtensionsOnSqliteConnection();
              }

              v29 = 0;
              v102 = 0;
              v28 = 0;
              selfCopy = v103;
              flags = flagsCopy2;
              v36 = v100;
              v37 = v93;
              v38 = v89;
LABEL_111:
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __MLSetSQLiteAutoTraceEnabled_block_invoke;
              *&v121 = &__block_descriptor_33_e5_v8__0l;
              BYTE8(v121) = 0;
              _MLDispatchToSerialQueue(0, buf);
              goto LABEL_112;
            }
          }

          else
          {
            v100 = 0;
          }

          v44 = sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL", 0, 0, &errmsg);
          if (v44)
          {
            v45 = v44;
            v46 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              *&buf[4] = selfCopy;
              *&buf[12] = 2082;
              *&buf[14] = errmsg;
              *&buf[22] = 1024;
              LODWORD(v121) = v45;
              _os_log_impl(&dword_22D2FA000, v46, OS_LOG_TYPE_DEFAULT, "Warning: connection %{public}@ could not enable WAL journal mode. %{public}s, result %d", buf, 0x1Cu);
            }

            v89 = 0;
            v100 = @"enable WAL journal mode failed";
            v93 = v45;
LABEL_84:

            v91 = [(ML3DatabaseConnection *)selfCopy _handleConnectionErrorWhileOpening:v45];
            goto LABEL_86;
          }
        }

        else
        {
          v111 = 0;
          v41 = sqlite3_file_control(ppDb, 0, 10, &v111);
          if (v41)
          {
            v42 = v41;
            v43 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 1024;
              *&buf[14] = v42;
              _os_log_impl(&dword_22D2FA000, v43, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ could not disable SQLITE_FCNTL_PERSIST_WAL option, result %d", buf, 0x12u);
            }

            v100 = @"disable SQLITE_FCNTL_PERSIST_WAL option failed";
            if (![(ML3DatabaseConnection *)selfCopy _handleConnectionErrorWhileOpening:v42])
            {
              v89 = v42;
              v93 = 0;
              goto LABEL_72;
            }
          }

          else
          {
            v100 = 0;
          }

          v47 = sqlite3_exec(ppDb, "PRAGMA journal_mode=DELETE", 0, 0, &errmsg);
          if (v47)
          {
            v45 = v47;
            v46 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              *&buf[4] = selfCopy;
              *&buf[12] = 2082;
              *&buf[14] = errmsg;
              *&buf[22] = 1024;
              LODWORD(v121) = v45;
              _os_log_impl(&dword_22D2FA000, v46, OS_LOG_TYPE_DEFAULT, "Warning: connection %{public}@ could not update journaling mode to DELETE. %{public}s, result %d", buf, 0x1Cu);
            }

            v93 = 0;
            v100 = @"update journaling mode to DELETE failed";
            v89 = v45;
            goto LABEL_84;
          }
        }

        v89 = 0;
        v93 = 0;
        v91 = 1;
        goto LABEL_86;
      }

      selfCopy->_isReadOnly = 1;
      v9 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = selfCopy->_isReadOnly;
        *buf = 138543618;
        *&buf[4] = selfCopy;
        *&buf[12] = 1024;
        *&buf[14] = v10;
        v11 = "Adjusting connection %{public}@ setting _isReadOnly=%{BOOL}u as the flags are SQLITE_OPEN_READONLY";
LABEL_16:
        _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0x12u);
      }
    }

    goto LABEL_18;
  }

  ML3DatabaseConnectionRaiseNilDatabasePath(self, a2);
  return 0;
}

- (void)setReadOnly:(BOOL)only
{
  isOpen = [(ML3DatabaseConnection *)self isOpen];
  if ([(ML3DatabaseConnection *)self isOpen])
  {
    [(ML3DatabaseConnection *)self close];
  }

  self->_isReadOnly = only;
  if (isOpen)
  {

    [(ML3DatabaseConnection *)self open];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    uniqueIdentifier = [equalCopy uniqueIdentifier];
    v7 = [(NSUUID *)uniqueIdentifier isEqual:uniqueIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  databasePath = self->_databasePath;
  if ([(ML3DatabaseConnection *)self isOpen])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(ML3DatabaseConnection *)self isReadOnly])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(ML3DatabaseConnection *)self _closeConnectionWhenCheckingIn])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(ML3DatabaseConnection *)self isInTransaction])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  WeakRetained = objc_loadWeakRetained(&self->_owningPool);
  v11 = [WeakRetained debugDescription];
  v12 = [v3 stringWithFormat:@"<%@ %p, path=%@, open=%@, readonly=%@, _closeConnectionWhenCheckingIn=%@, in transaction=%@, owning pool=%@>", v4, self, databasePath, v6, v7, v8, v9, v11];

  return v12;
}

- (void)dealloc
{
  if ([(ML3DatabaseConnection *)self isOpen])
  {
    [(ML3DatabaseConnection *)self close];
  }

  v3.receiver = self;
  v3.super_class = ML3DatabaseConnection;
  [(ML3DatabaseConnection *)&v3 dealloc];
}

- (ML3DatabaseConnection)initWithDatabasePath:(id)path
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = ML3DatabaseConnection;
  v5 = [(ML3DatabaseConnection *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [pathCopy copy];
    databasePath = v6->_databasePath;
    v6->_databasePath = v7;

    v6->_isOpen = 0;
    v6->_isReadOnly = [(ML3DatabaseConnection *)v6 _isDeviceMediaLibraryDatabase];
    *&v6->_journalingMode = xmmword_22D5C6AF0;
    v6->_checkpointStatementThreshold = 1000;
    v6->_automaticCheckpointingEnabled = 0;
    *&v6->_isHandlingIOError = 0;
    v6->_closeConnectionWhenCheckingIn = 0;
    v6->_sqlitedb = 0;
    v9 = [[ML3DatabaseStatementCache alloc] initWithCacheSize:10];
    statementCache = v6->_statementCache;
    v6->_statementCache = v9;

    v6->_statementsSinceLastCheckpoint = 0;
    v6->_transactionLevel = 0;
    v6->_nestedTransactionWantsToRollback = 0;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    enqueuedTransactionCommitBlocks = v6->_enqueuedTransactionCommitBlocks;
    v6->_enqueuedTransactionCommitBlocks = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    registeredFunctions = v6->_registeredFunctions;
    v6->_registeredFunctions = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    registeredModules = v6->_registeredModules;
    v6->_registeredModules = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v17;
  }

  return v6;
}

- (ML3DatabaseConnection)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"-[%@ init] is unsupported. Use -[%@ initWithDatabasePath:] instead.", v4, v4}];

  return 0;
}

@end