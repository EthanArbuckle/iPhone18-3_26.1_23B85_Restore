@interface CPLPrequeliteStorage
- (BOOL)_checkSuperWasCalled;
- (BOOL)addColumnVariable:(id)a3 error:(id *)a4;
- (BOOL)addColumnVariableGroup:(id)a3 error:(id *)a4;
- (BOOL)createIndex:(id)a3 withDefinition:(id)a4 condition:(id)a5 unique:(BOOL)a6 error:(id *)a7;
- (BOOL)createIndexOnColumn:(id)a3 error:(id *)a4;
- (BOOL)createIndexOnColumnVariable:(id)a3 error:(id *)a4;
- (BOOL)createMainTableWithColumnVariables:(id)a3 error:(id *)a4;
- (BOOL)createMainTableWithDefinition:(id)a3 error:(id *)a4;
- (BOOL)createStorage;
- (BOOL)createVariable:(id)a3 defaultValue:(id)a4 error:(id *)a5;
- (BOOL)dropIndexWithName:(id)a3 error:(id *)a4;
- (BOOL)initializeStorage;
- (BOOL)isAlive;
- (BOOL)isCloudScopeIndexValid:(int64_t)a3;
- (BOOL)isEmpty;
- (BOOL)isLocalScopeIndexValid:(int64_t)a3;
- (BOOL)recreateMainTableWithCopyInstructions:(id)a3 oldFields:(id)a4 error:(id *)a5;
- (BOOL)resetValueForVariable:(id)a3 error:(id *)a4;
- (BOOL)setValue:(id)a3 forVariable:(id)a4 error:(id *)a5;
- (BOOL)shouldIncludeInStatus;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteStorage)initWithAbstractObject:(id)a3;
- (NSString)mainScopeIdentifier;
- (id)_scopes;
- (id)_statusPerScopeIndex;
- (id)engineLibrary;
- (id)filterForExcludedScopeIdentifiers:(id)a3;
- (id)filterForIncludedScopeIdentifiers:(id)a3;
- (id)pqStore;
- (id)scopeIdentifierForCloudScopeIndex:(int64_t)a3;
- (id)scopeIndexes;
- (id)scopedIdentifierForCloudIdentifier:(id)a3 scopeIndex:(int64_t)a4;
- (id)scopedIdentifierForLocalIdentifier:(id)a3 scopeIndex:(int64_t)a4;
- (id)status;
- (id)statusDictionary;
- (id)statusPerScopeIndexWithGroupProperty:(id)a3 valueDescription:(id)a4;
- (id)valueForVariable:(id)a3;
- (id)variableWithName:(id)a3 defaultValue:(id)a4 type:(id)a5;
- (int64_t)cloudScopeIndexForScopeIdentifier:(id)a3;
- (int64_t)localScopeIndexForScopeIdentifier:(id)a3;
- (int64_t)scopeIndexForCloudScopedIdentifier:(id)a3;
- (int64_t)scopeIndexForLocalScopedIdentifier:(id)a3;
- (int64_t)stableScopeIndexForScopeIdentifier:(id)a3;
- (void)_afterInitializeStorage;
@end

@implementation CPLPrequeliteStorage

- (id)pqStore
{
  v2 = [(CPLPrequeliteStorage *)self abstractObject];
  v3 = [v2 engineStore];
  v4 = [v3 platformObject];

  return v4;
}

- (id)_scopes
{
  v2 = [(CPLPrequeliteStorage *)self pqStore];
  v3 = [v2 abstractObject];
  v4 = [v3 scopes];

  return v4;
}

- (CPLPrequeliteStorage)initWithAbstractObject:(id)a3
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteStorage;
  v3 = [(CPLPrequeliteStorage *)&v10 initWithAbstractObject:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CPLPrequeliteStorage *)v3 abstractObject];
    v6 = [v5 name];

    v7 = [CPLPrequeliteTable tableWithName:v6];
    mainTable = v4->_mainTable;
    v4->_mainTable = v7;

    objc_storeStrong(&v4->_nameTable, v4->_mainTable);
    v4->_shouldUpgradeSchema = 1;
  }

  return v4;
}

- (NSString)mainScopeIdentifier
{
  v2 = [(CPLPrequeliteStorage *)self abstractObject];
  v3 = [v2 mainScopeIdentifier];

  return v3;
}

- (id)engineLibrary
{
  v2 = [(CPLPrequeliteStorage *)self abstractObject];
  v3 = [v2 engineStore];
  v4 = [v3 engineLibrary];

  return v4;
}

- (void)_afterInitializeStorage
{
  if (!self->_initializeSuperWasCalled)
  {
    sub_1001B880C(a2, self);
  }

  self->_initializingStorage = 0;
  self->_initializeSuperWasCalled = 0;
}

- (BOOL)initializeStorage
{
  if (self->_initializingStorage)
  {
    sub_1001B8A38(_CPLSilentLogging, self);
    return 1;
  }

  else
  {
    v3 = sub_1001B8924(_CPLSilentLogging, self, a2);
    return [(CPLPrequeliteStorage *)v3 fixStorageAfterAnyVersionChange];
  }
}

- (BOOL)addColumnVariable:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (self->_initializingStorage)
  {
    sub_1001B8C0C(self, a2, v7);
  }

  if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    sub_1001B8B28(self, a2, v7);
  }

  if (self->_initializingStorage)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10014C718();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = "temporary ";
        mainTable = self->_mainTable;
        if (!self->_tempTable)
        {
          v9 = "";
        }

        *buf = 138412802;
        v23 = v7;
        v24 = 2080;
        v25 = v9;
        v26 = 2112;
        v27 = mainTable;
        v11 = "Creating column %@ on %s%@";
        v12 = v8;
        v13 = OS_LOG_TYPE_DEBUG;
        v14 = 32;
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10014C718();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_mainTable;
      *buf = 138412546;
      v23 = v7;
      v24 = 2112;
      v25 = v15;
      v11 = "Adding column %@ on %@";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 22;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
    }

LABEL_13:
  }

  v16 = [(CPLPrequeliteStorage *)self pqStore];
  v17 = [v16 pqlConnection];

  v18 = [(CPLPrequeliteStorage *)self mainTable];
  v19 = [v7 columnDefinition];
  v20 = [v17 cplExecute:{@"ALTER TABLE %@ ADD COLUMN %@", v18, v19}];

  if (a4 && (v20 & 1) == 0)
  {
    *a4 = [v17 lastCPLError];
  }

  return v20;
}

- (BOOL)addColumnVariableGroup:(id)a3 error:(id *)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 variables];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![(CPLPrequeliteStorage *)self addColumnVariable:*(*(&v13 + 1) + 8 * i) error:a4])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)createIndex:(id)a3 withDefinition:(id)a4 condition:(id)a5 unique:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (self->_initializingStorage)
  {
    goto LABEL_4;
  }

  if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    sub_1001B8CF0(self, a2, v13);
  }

  if (self->_initializingStorage)
  {
LABEL_4:
    if (_CPLSilentLogging)
    {
      goto LABEL_14;
    }

    v16 = sub_10014C718();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v17 = "temporary ";
    mainTable = self->_mainTable;
    if (!self->_tempTable)
    {
      v17 = "";
    }

    *buf = 138412802;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = v17;
    *&buf[22] = 2112;
    v35 = mainTable;
    v19 = "Creating index %@ on %s%@";
    v20 = v16;
    v21 = OS_LOG_TYPE_DEBUG;
    v22 = 32;
    goto LABEL_12;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_14;
  }

  v16 = sub_10014C718();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v23 = self->_mainTable;
    *buf = 138412546;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    v19 = "Adding index %@ on %@";
    v20 = v16;
    v21 = OS_LOG_TYPE_DEFAULT;
    v22 = 22;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v20, v21, v19, buf, v22);
  }

LABEL_13:

LABEL_14:
  v24 = [CPLPrequeliteVariable indexVariableForVariableWithName:v13 forTable:self->_nameTable];
  v25 = [(CPLPrequeliteStorage *)self pqStore];
  v26 = [v25 pqlConnection];
  v27 = v26;
  if (!v8)
  {
    if (!v15)
    {
      v28 = [v26 cplExecute:{@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@)", v24, self->_mainTable, v14, v33, *buf, *&buf[8], v35}];
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v15)
  {
LABEL_18:
    v28 = [v26 cplExecute:{@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@) WHERE %@", v24, self->_mainTable, v14, v15, *buf, *&buf[8], v35}];
    goto LABEL_20;
  }

  v28 = [v26 cplExecute:{@"CREATE UNIQUE INDEX IF NOT EXISTS %@ ON %@ (%@)", v24, self->_mainTable, v14, v33, *buf, *&buf[16], v35}];
LABEL_20:
  v29 = v28;

  if (a7 && !v29)
  {
    v30 = [(CPLPrequeliteStorage *)self pqStore];
    v31 = [v30 pqlConnection];
    *a7 = [v31 lastCPLError];
  }

  return v29;
}

- (BOOL)createIndexOnColumnVariable:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 variableName];
  LOBYTE(a4) = [(CPLPrequeliteStorage *)self createIndex:v7 withDefinition:v6 condition:0 unique:0 error:a4];

  return a4;
}

- (BOOL)createIndexOnColumn:(id)a3 error:(id *)a4
{
  v6 = [(CPLPrequeliteStorage *)self createIndexWithName:a3 withDefinition:a3 unique:0 error:a4];
  v7 = v6;
  if (a4 && (v6 & 1) == 0)
  {
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [v8 pqlConnection];
    *a4 = [v9 lastCPLError];
  }

  return v7;
}

- (id)variableWithName:(id)a3 defaultValue:(id)a4 type:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_tempTable)
  {
    sub_1001B8DD4(self, a2, v9);
  }

  v12 = v11;
  v13 = [CPLPrequeliteVariable variableWithName:v9 forTable:self->_mainTable type:v11];

  return v13;
}

- (BOOL)createVariable:(id)a3 defaultValue:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (self->_tempTable)
  {
    v11 = 1;
    goto LABEL_18;
  }

  v12 = [v9 table];
  mainTable = self->_mainTable;

  if (v12 != mainTable)
  {
    sub_1001B8EB8(a2, self, v9);
  }

  if (self->_initializingStorage)
  {
    goto LABEL_7;
  }

  if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = sub_10014C718();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = self->_mainTable;
        *buf = 138412546;
        v27 = v9;
        v28 = 2112;
        v29 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Trying to create variable %@ for %@ but the table has just been created", buf, 0x16u);
      }
    }

    v24 = +[NSAssertionHandler currentHandler];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
    [v24 handleFailureInMethod:a2 object:self file:v25 lineNumber:240 description:{@"Trying to create variable %@ for %@ but the table has just been created", v9, self->_mainTable}];

    abort();
  }

  if (self->_initializingStorage)
  {
LABEL_7:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_10014C718();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v27 = v9;
        v28 = 2112;
        v29 = v10;
        v15 = "Creating variable %@ with default value %@";
        v16 = v14;
        v17 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, 0x16u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = sub_10014C718();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      v15 = "Adding variable %@ with default value %@";
      v16 = v14;
      v17 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_13;
    }

LABEL_14:
  }

  v18 = [(CPLPrequeliteStorage *)self pqStore];
  v11 = [v18 addGlobalVariable:v9 defaultValue:v10 error:a5];

  if (a5 && (v11 & 1) == 0)
  {
    v19 = [(CPLPrequeliteStorage *)self pqStore];
    v20 = [v19 pqlConnection];
    *a5 = [v20 lastCPLError];

    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (BOOL)setValue:(id)a3 forVariable:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 table];
  mainTable = self->_mainTable;

  if (v11 != mainTable)
  {
    sub_1001B8F88(a2, self, v10);
  }

  v13 = [(CPLPrequeliteStorage *)self pqStore];
  v14 = [v13 setValue:v9 forGlobalVariable:v10 error:a5];

  return v14;
}

- (id)valueForVariable:(id)a3
{
  v5 = a3;
  v6 = [v5 table];
  mainTable = self->_mainTable;

  if (v6 != mainTable)
  {
    sub_1001B9058(a2, self, v5);
  }

  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [v8 valueForGlobalVariable:v5];

  return v9;
}

- (BOOL)resetValueForVariable:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 table];
  mainTable = self->_mainTable;

  if (v8 != mainTable)
  {
    sub_1001B9128(a2, self, v7);
  }

  v10 = [(CPLPrequeliteStorage *)self pqStore];
  v11 = [v10 resetValueForGlobalVariable:v7 error:a4];

  return v11;
}

- (BOOL)isEmpty
{
  v3 = [(CPLPrequeliteStorage *)self abstractObject];
  if (![v3 shouldBeCreatedDynamically])
  {

    goto LABEL_5;
  }

  v4 = [(CPLPrequeliteStorage *)self isAlive];

  if (v4)
  {
LABEL_5:
    v6 = [(CPLPrequeliteStorage *)self pqStore];
    v7 = [(CPLPrequeliteStorage *)self mainTable];
    v5 = [v6 tableHasRecords:v7] ^ 1;

    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (BOOL)isAlive
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [v3 hasTable:v4];

  return v5;
}

- (BOOL)shouldIncludeInStatus
{
  v3 = [(CPLPrequeliteStorage *)self abstractObject];
  v4 = [v3 shouldBeCreatedDynamically];

  if (!v4)
  {
    return 1;
  }

  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [v5 hasTable:v6];

  return v7;
}

- (id)status
{
  v3 = [(CPLPrequeliteStorage *)self abstractObject];
  if ([v3 shouldBeCreatedDynamically])
  {
    v4 = [(CPLPrequeliteStorage *)self pqStore];
    v5 = [(CPLPrequeliteStorage *)self mainTable];
    v6 = [v4 hasTable:v5];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [v8 tableCountOfRecords:v9];

  v11 = [(CPLPrequeliteStorage *)self recordsDesignation];
  v7 = [NSString stringWithFormat:@"%lu %@", v10, v11];

LABEL_6:

  return v7;
}

- (id)statusDictionary
{
  v3 = [(CPLPrequeliteStorage *)self abstractObject];
  if ([v3 shouldBeCreatedDynamically])
  {
    v4 = [(CPLPrequeliteStorage *)self pqStore];
    v5 = [(CPLPrequeliteStorage *)self mainTable];
    v6 = [v4 hasTable:v5];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [v8 tableCountOfRecords:v9];

  v13 = @"records";
  v11 = [NSNumber numberWithUnsignedInteger:v10];
  v14 = v11;
  v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

LABEL_6:

  return v7;
}

- (id)_statusPerScopeIndex
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(CPLPrequeliteStorage *)self pqStore];
  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [(CPLPrequeliteStorage *)self scopeIndexColumnName];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014DC10;
  v11[3] = &unk_10027B348;
  v11[4] = self;
  v7 = v3;
  v12 = v7;
  [v4 table:v5 enumerateCountGroupedByProperty:v6 block:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

- (id)scopeIndexes
{
  v3 = objc_alloc_init(NSMutableIndexSet);
  v4 = [(CPLPrequeliteStorage *)self pqStore];
  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [(CPLPrequeliteStorage *)self scopeIndexColumnName];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014DE08;
  v10[3] = &unk_10027B370;
  v11 = v3;
  v7 = v3;
  [v4 table:v5 enumerateDistinctValuesOfProperty:v6 block:v10];

  v8 = [v7 copy];

  return v8;
}

- (id)statusPerScopeIndexWithGroupProperty:(id)a3 valueDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLPrequeliteStorage *)self _statusPerScopeIndex];
  v9 = [(CPLPrequeliteStorage *)self pqStore];
  v10 = [v9 pqlConnection];

  v11 = [(CPLPrequeliteStorage *)self scopeIndexColumnName];
  v12 = [PQLNameInjection nameWithString:v11];

  v13 = [PQLNameInjection nameWithString:v6];
  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v23 = v13;
  v24 = v12;
  v15 = [v10 cplFetch:{@"SELECT %@, %@, count(%@) FROM %@ GROUP BY scopeIndex, %@", v12, v13, v13, v14, v13}];

  if ([v15 next])
  {
    do
    {
      v16 = [v15 integerAtIndex:0];
      v17 = [v15 objectAtIndex:1];
      v18 = [v15 unsignedIntegerAtIndex:2];
      if (v17)
      {
        v19 = v7[2](v7, v17);
      }

      else
      {
        v19 = @"(nil)";
      }

      v20 = [NSNumber numberWithInteger:v16];
      v21 = [v8 objectForKeyedSubscript:v20];

      [v21 appendFormat:@"\n\t%@: %lu", v19, v18];
    }

    while (([v15 next] & 1) != 0);
  }

  return v8;
}

- (BOOL)_checkSuperWasCalled
{
  superWasCalled = self->_superWasCalled;
  self->_superWasCalled = 0;
  return superWasCalled;
}

- (int64_t)scopeIndexForLocalScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [v5 scopedIdentifierForLocalScopedIdentifier:v4];

  if (v6)
  {
    v7 = [v6 scopeIndex];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (int64_t)scopeIndexForCloudScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [v5 scopedIdentifierForCloudScopedIdentifier:v4];

  if (v6)
  {
    v7 = [v6 scopeIndex];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (int64_t)localScopeIndexForScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [v5 indexForLocalScopeIdentifier:v4];

  return v6;
}

- (int64_t)cloudScopeIndexForScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [v5 indexForCloudScopeIdentifier:v4];

  return v6;
}

- (int64_t)stableScopeIndexForScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [v5 stableScopeIndexForScopeIdentifier:v4];

  return v6;
}

- (id)filterForIncludedScopeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [v5 filterForIncludedScopeIdentifiers:v4];

  return v6;
}

- (id)filterForExcludedScopeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [v5 filterForExcludedScopeIdentifiers:v4];

  return v6;
}

- (id)scopedIdentifierForLocalIdentifier:(id)a3 scopeIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self _scopes];
  v8 = [v7 scopeIdentifierForLocalScopeIndex:a4];

  if (v8)
  {
    v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v8 identifier:v6];
    [v9 setScopeIndex:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)scopedIdentifierForCloudIdentifier:(id)a3 scopeIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self _scopes];
  v8 = [v7 scopeIdentifierForCloudScopeIndex:a4];

  if (v8)
  {
    v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v8 identifier:v6];
    [v9 setScopeIndex:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)scopeIdentifierForCloudScopeIndex:(int64_t)a3
{
  v4 = [(CPLPrequeliteStorage *)self _scopes];
  v5 = [v4 scopeIdentifierForCloudScopeIndex:a3];

  return v5;
}

- (BOOL)isLocalScopeIndexValid:(int64_t)a3
{
  v4 = [(CPLPrequeliteStorage *)self _scopes];
  v5 = [v4 validLocalScopeIndexes];
  LOBYTE(a3) = [v5 containsIndex:a3];

  return a3;
}

- (BOOL)isCloudScopeIndexValid:(int64_t)a3
{
  v4 = [(CPLPrequeliteStorage *)self _scopes];
  v5 = [v4 validCloudScopeIndexes];
  LOBYTE(a3) = [v5 containsIndex:a3];

  return a3;
}

- (BOOL)recreateMainTableWithCopyInstructions:(id)a3 oldFields:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (self->_tempTable)
  {
    sub_1001B91F8(self, a2);
  }

  v11 = v10;
  if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    sub_1001B92DC(self, a2);
  }

  v58 = a5;
  v12 = [(CPLPrequeliteStorage *)self abstractObject];
  v13 = [v12 name];
  v14 = [v13 stringByAppendingString:@"_temp"];

  v15 = [CPLPrequeliteTable tableWithName:v14];
  tempTable = self->_tempTable;
  self->_tempTable = v15;

  v17 = [(CPLPrequeliteStorage *)self pqStore];
  v18 = [v17 pqlConnection];

  if (![v18 cplExecute:{@"DROP TABLE IF EXISTS %@", self->_tempTable}])
  {
    goto LABEL_31;
  }

  v56 = v11;
  v19 = [(CPLPrequeliteTable *)self->_mainTable tableName];
  v20 = [v19 stringByAppendingString:@"."];

  v21 = objc_alloc_init(NSMutableArray);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v57 = self;
  v22 = [v18 cplFetch:{@"SELECT name FROM sqlite_master WHERE type = index AND tbl_name = %@", self->_mainTable}];
  v23 = [v22 enumerateObjectsOfClass:objc_opt_class()];

  v24 = [v23 countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v64;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v64 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v63 + 1) + 8 * i);
        if ([v28 hasPrefix:v20])
        {
          [v21 addObject:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v25);
  }

  v55 = v14;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v29 = v21;
  v30 = [v29 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v60;
    while (2)
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v60 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [PQLNameInjection nameWithString:*(*(&v59 + 1) + 8 * j)];
        v35 = [v18 cplExecute:{@"DROP INDEX %@", v34}];

        if ((v35 & 1) == 0)
        {

          self = v57;
          v14 = v55;
          v11 = v56;
          goto LABEL_31;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v59 objects:v75 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  self = v57;
  v36 = v57->_mainTable;
  objc_storeStrong(&self->_mainTable, self->_tempTable);
  v37 = [(CPLPrequeliteStorage *)v57 createStorage];
  mainTable = v57->_mainTable;
  v57->_mainTable = v36;

  v14 = v55;
  v11 = v56;
  if (!v37)
  {
    goto LABEL_31;
  }

  v39 = [v9 UTF8String];
  v40 = [PQLRawInjection rawInjection:v39 length:strlen(v39)];
  v41 = [v56 UTF8String];
  v42 = [PQLRawInjection rawInjection:v41 length:strlen(v41)];
  v43 = [v18 cplExecute:{@"INSERT INTO %@ (%@) SELECT %@ FROM %@", v57->_tempTable, v40, v42, v57->_mainTable}];
  v54 = [v18 changes];

  if (!v43)
  {
    goto LABEL_31;
  }

  if ([v18 cplExecute:{@"DROP TABLE %@", v57->_mainTable}] && (v44 = v57->_tempTable, (objc_msgSend(v18, "cplExecute:", @"ALTER TABLE %@ RENAME TO %@", v44, v57->_mainTable) & 1) != 0))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v45 = sub_10014C718();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v57->_mainTable;
        *buf = 138413058;
        v68 = v46;
        v69 = 2112;
        v70 = v56;
        v71 = 2112;
        v72 = v9;
        v73 = 2048;
        v74 = v54;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "successfully recreated %@ using copy %@ -> %@ (%lld records copied)", buf, 0x2Au);
      }
    }

    v47 = [(CPLPrequeliteStorage *)v57 pqStore];
    [v47 recordUpgradeEvent:{@"successfully recreated %@ using copy %@ -> %@ (%lld records copied)", v57->_mainTable, v56, v9, v54}];

    v48 = 1;
  }

  else
  {
LABEL_31:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v49 = sub_10014C718();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = self->_mainTable;
        v51 = [v18 lastError];
        *buf = 138413058;
        v68 = v50;
        v69 = 2112;
        v70 = v11;
        v71 = 2112;
        v72 = v9;
        v73 = 2112;
        v74 = v51;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to recreate %@ using copy %@ -> %@: %@", buf, 0x2Au);
      }
    }

    if (v58)
    {
      [v18 lastError];
      *v58 = v48 = 0;
    }

    else
    {
      v48 = 0;
    }
  }

  v52 = self->_tempTable;
  self->_tempTable = 0;

  return v48;
}

- (BOOL)createStorage
{
  if (![(CPLPrequeliteStorage *)self isAlive]&& (_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10014C718();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CPLPrequeliteStorage *)self mainTable];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating storage for %@", &v7, 0xCu);
    }
  }

  [(CPLPrequeliteStorage *)self _beforeInitializeStorage];
  v5 = [(CPLPrequeliteStorage *)self initializeStorage];
  [(CPLPrequeliteStorage *)self _afterInitializeStorage];
  return v5;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10014C718();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Upgrading to %lld", &v6, 0xCu);
    }
  }

  return 1;
}

- (BOOL)createMainTableWithColumnVariables:(id)a3 error:(id *)a4
{
  sub_1000587D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_10014C718();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v7[3];
      v22 = [v9 variables];
      sub_10014EC90();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }
  }

  v16 = [v7 pqStore];
  v17 = [v16 pqlConnection];

  v18 = v7[2];
  v19 = [v9 definitionInjection];
  v20 = [v17 cplExecute:{@"CREATE TABLE %@ (%@)", v18, v19}];

  if (v5 && (v20 & 1) == 0)
  {
    *v5 = [v17 lastCPLError];
  }

  return v20;
}

- (BOOL)createMainTableWithDefinition:(id)a3 error:(id *)a4
{
  sub_1000587D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_10014C718();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v7[3];
      sub_10014EC90();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }
  }

  v16 = [PQLRawInjection alloc];
  v17 = [v9 dataUsingEncoding:4];
  v18 = [v16 initWithData:v17];

  v19 = [v7 pqStore];
  v20 = [v19 pqlConnection];

  v21 = [v20 cplExecute:{@"CREATE TABLE %@ (%@)", v7[2], v18}];
  v22 = v21;
  if (v5 && (v21 & 1) == 0)
  {
    *v5 = [v20 lastCPLError];
  }

  return v22;
}

- (BOOL)dropIndexWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10014C718();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10014EC90();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    }
  }

  v13 = [CPLPrequeliteVariable indexVariableForVariableWithName:v6 forTable:self->_nameTable];
  v14 = [(CPLPrequeliteStorage *)self pqStore];
  v15 = [v14 pqlConnection];
  v16 = [v15 cplExecute:{@"DROP INDEX IF EXISTS %@", v13}];

  if (a4 && (v16 & 1) == 0)
  {
    v17 = [(CPLPrequeliteStorage *)self pqStore];
    v18 = [v17 pqlConnection];
    *a4 = [v18 lastCPLError];
  }

  return v16;
}

@end