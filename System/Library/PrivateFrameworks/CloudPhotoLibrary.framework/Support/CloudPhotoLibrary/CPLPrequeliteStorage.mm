@interface CPLPrequeliteStorage
- (BOOL)_checkSuperWasCalled;
- (BOOL)addColumnVariable:(id)variable error:(id *)error;
- (BOOL)addColumnVariableGroup:(id)group error:(id *)error;
- (BOOL)createIndex:(id)index withDefinition:(id)definition condition:(id)condition unique:(BOOL)unique error:(id *)error;
- (BOOL)createIndexOnColumn:(id)column error:(id *)error;
- (BOOL)createIndexOnColumnVariable:(id)variable error:(id *)error;
- (BOOL)createMainTableWithColumnVariables:(id)variables error:(id *)error;
- (BOOL)createMainTableWithDefinition:(id)definition error:(id *)error;
- (BOOL)createStorage;
- (BOOL)createVariable:(id)variable defaultValue:(id)value error:(id *)error;
- (BOOL)dropIndexWithName:(id)name error:(id *)error;
- (BOOL)initializeStorage;
- (BOOL)isAlive;
- (BOOL)isCloudScopeIndexValid:(int64_t)valid;
- (BOOL)isEmpty;
- (BOOL)isLocalScopeIndexValid:(int64_t)valid;
- (BOOL)recreateMainTableWithCopyInstructions:(id)instructions oldFields:(id)fields error:(id *)error;
- (BOOL)resetValueForVariable:(id)variable error:(id *)error;
- (BOOL)setValue:(id)value forVariable:(id)variable error:(id *)error;
- (BOOL)shouldIncludeInStatus;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteStorage)initWithAbstractObject:(id)object;
- (NSString)mainScopeIdentifier;
- (id)_scopes;
- (id)_statusPerScopeIndex;
- (id)engineLibrary;
- (id)filterForExcludedScopeIdentifiers:(id)identifiers;
- (id)filterForIncludedScopeIdentifiers:(id)identifiers;
- (id)pqStore;
- (id)scopeIdentifierForCloudScopeIndex:(int64_t)index;
- (id)scopeIndexes;
- (id)scopedIdentifierForCloudIdentifier:(id)identifier scopeIndex:(int64_t)index;
- (id)scopedIdentifierForLocalIdentifier:(id)identifier scopeIndex:(int64_t)index;
- (id)status;
- (id)statusDictionary;
- (id)statusPerScopeIndexWithGroupProperty:(id)property valueDescription:(id)description;
- (id)valueForVariable:(id)variable;
- (id)variableWithName:(id)name defaultValue:(id)value type:(id)type;
- (int64_t)cloudScopeIndexForScopeIdentifier:(id)identifier;
- (int64_t)localScopeIndexForScopeIdentifier:(id)identifier;
- (int64_t)scopeIndexForCloudScopedIdentifier:(id)identifier;
- (int64_t)scopeIndexForLocalScopedIdentifier:(id)identifier;
- (int64_t)stableScopeIndexForScopeIdentifier:(id)identifier;
- (void)_afterInitializeStorage;
@end

@implementation CPLPrequeliteStorage

- (id)pqStore
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  engineStore = [abstractObject engineStore];
  platformObject = [engineStore platformObject];

  return platformObject;
}

- (id)_scopes
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  abstractObject = [pqStore abstractObject];
  scopes = [abstractObject scopes];

  return scopes;
}

- (CPLPrequeliteStorage)initWithAbstractObject:(id)object
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteStorage;
  v3 = [(CPLPrequeliteStorage *)&v10 initWithAbstractObject:object];
  v4 = v3;
  if (v3)
  {
    abstractObject = [(CPLPrequeliteStorage *)v3 abstractObject];
    name = [abstractObject name];

    v7 = [CPLPrequeliteTable tableWithName:name];
    mainTable = v4->_mainTable;
    v4->_mainTable = v7;

    objc_storeStrong(&v4->_nameTable, v4->_mainTable);
    v4->_shouldUpgradeSchema = 1;
  }

  return v4;
}

- (NSString)mainScopeIdentifier
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  mainScopeIdentifier = [abstractObject mainScopeIdentifier];

  return mainScopeIdentifier;
}

- (id)engineLibrary
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  engineStore = [abstractObject engineStore];
  engineLibrary = [engineStore engineLibrary];

  return engineLibrary;
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

- (BOOL)addColumnVariable:(id)variable error:(id *)error
{
  variableCopy = variable;
  if (self->_initializingStorage)
  {
    sub_1001B8C0C(self, a2, variableCopy);
  }

  if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    sub_1001B8B28(self, a2, variableCopy);
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
        v23 = variableCopy;
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
      v23 = variableCopy;
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

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  columnDefinition = [variableCopy columnDefinition];
  v20 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN %@", mainTable, columnDefinition}];

  if (error && (v20 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v20;
}

- (BOOL)addColumnVariableGroup:(id)group error:(id *)error
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  variables = [group variables];
  v7 = [variables countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(variables);
        }

        if (![(CPLPrequeliteStorage *)self addColumnVariable:*(*(&v13 + 1) + 8 * i) error:error])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [variables countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)createIndex:(id)index withDefinition:(id)definition condition:(id)condition unique:(BOOL)unique error:(id *)error
{
  uniqueCopy = unique;
  indexCopy = index;
  definitionCopy = definition;
  conditionCopy = condition;
  if (self->_initializingStorage)
  {
    goto LABEL_4;
  }

  if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    sub_1001B8CF0(self, a2, indexCopy);
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
    *&buf[4] = indexCopy;
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
    *&buf[4] = indexCopy;
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
  v24 = [CPLPrequeliteVariable indexVariableForVariableWithName:indexCopy forTable:self->_nameTable];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];
  v27 = pqlConnection;
  if (!uniqueCopy)
  {
    if (!conditionCopy)
    {
      v28 = [pqlConnection cplExecute:{@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@)", v24, self->_mainTable, definitionCopy, v33, *buf, *&buf[8], v35}];
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (conditionCopy)
  {
LABEL_18:
    v28 = [pqlConnection cplExecute:{@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@) WHERE %@", v24, self->_mainTable, definitionCopy, conditionCopy, *buf, *&buf[8], v35}];
    goto LABEL_20;
  }

  v28 = [pqlConnection cplExecute:{@"CREATE UNIQUE INDEX IF NOT EXISTS %@ ON %@ (%@)", v24, self->_mainTable, definitionCopy, v33, *buf, *&buf[16], v35}];
LABEL_20:
  v29 = v28;

  if (error && !v29)
  {
    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection2 = [pqStore2 pqlConnection];
    *error = [pqlConnection2 lastCPLError];
  }

  return v29;
}

- (BOOL)createIndexOnColumnVariable:(id)variable error:(id *)error
{
  variableCopy = variable;
  variableName = [variableCopy variableName];
  LOBYTE(error) = [(CPLPrequeliteStorage *)self createIndex:variableName withDefinition:variableCopy condition:0 unique:0 error:error];

  return error;
}

- (BOOL)createIndexOnColumn:(id)column error:(id *)error
{
  v6 = [(CPLPrequeliteStorage *)self createIndexWithName:column withDefinition:column unique:0 error:error];
  v7 = v6;
  if (error && (v6 & 1) == 0)
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];
    *error = [pqlConnection lastCPLError];
  }

  return v7;
}

- (id)variableWithName:(id)name defaultValue:(id)value type:(id)type
{
  nameCopy = name;
  valueCopy = value;
  typeCopy = type;
  if (self->_tempTable)
  {
    sub_1001B8DD4(self, a2, nameCopy);
  }

  v12 = typeCopy;
  v13 = [CPLPrequeliteVariable variableWithName:nameCopy forTable:self->_mainTable type:typeCopy];

  return v13;
}

- (BOOL)createVariable:(id)variable defaultValue:(id)value error:(id *)error
{
  variableCopy = variable;
  valueCopy = value;
  if (self->_tempTable)
  {
    v11 = 1;
    goto LABEL_18;
  }

  table = [variableCopy table];
  mainTable = self->_mainTable;

  if (table != mainTable)
  {
    sub_1001B8EB8(a2, self, variableCopy);
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
        v27 = variableCopy;
        v28 = 2112;
        v29 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Trying to create variable %@ for %@ but the table has just been created", buf, 0x16u);
      }
    }

    v24 = +[NSAssertionHandler currentHandler];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
    [v24 handleFailureInMethod:a2 object:self file:v25 lineNumber:240 description:{@"Trying to create variable %@ for %@ but the table has just been created", variableCopy, self->_mainTable}];

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
        v27 = variableCopy;
        v28 = 2112;
        v29 = valueCopy;
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
      v27 = variableCopy;
      v28 = 2112;
      v29 = valueCopy;
      v15 = "Adding variable %@ with default value %@";
      v16 = v14;
      v17 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_13;
    }

LABEL_14:
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  v11 = [pqStore addGlobalVariable:variableCopy defaultValue:valueCopy error:error];

  if (error && (v11 & 1) == 0)
  {
    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore2 pqlConnection];
    *error = [pqlConnection lastCPLError];

    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (BOOL)setValue:(id)value forVariable:(id)variable error:(id *)error
{
  valueCopy = value;
  variableCopy = variable;
  table = [variableCopy table];
  mainTable = self->_mainTable;

  if (table != mainTable)
  {
    sub_1001B8F88(a2, self, variableCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  v14 = [pqStore setValue:valueCopy forGlobalVariable:variableCopy error:error];

  return v14;
}

- (id)valueForVariable:(id)variable
{
  variableCopy = variable;
  table = [variableCopy table];
  mainTable = self->_mainTable;

  if (table != mainTable)
  {
    sub_1001B9058(a2, self, variableCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [pqStore valueForGlobalVariable:variableCopy];

  return v9;
}

- (BOOL)resetValueForVariable:(id)variable error:(id *)error
{
  variableCopy = variable;
  table = [variableCopy table];
  mainTable = self->_mainTable;

  if (table != mainTable)
  {
    sub_1001B9128(a2, self, variableCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  v11 = [pqStore resetValueForGlobalVariable:variableCopy error:error];

  return v11;
}

- (BOOL)isEmpty
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  if (![abstractObject shouldBeCreatedDynamically])
  {

    goto LABEL_5;
  }

  isAlive = [(CPLPrequeliteStorage *)self isAlive];

  if (isAlive)
  {
LABEL_5:
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v5 = [pqStore tableHasRecords:mainTable] ^ 1;

    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (BOOL)isAlive
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore hasTable:mainTable];

  return v5;
}

- (BOOL)shouldIncludeInStatus
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  shouldBeCreatedDynamically = [abstractObject shouldBeCreatedDynamically];

  if (!shouldBeCreatedDynamically)
  {
    return 1;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [pqStore hasTable:mainTable];

  return v7;
}

- (id)status
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  if ([abstractObject shouldBeCreatedDynamically])
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v6 = [pqStore hasTable:mainTable];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
  mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [pqStore2 tableCountOfRecords:mainTable2];

  recordsDesignation = [(CPLPrequeliteStorage *)self recordsDesignation];
  v7 = [NSString stringWithFormat:@"%lu %@", v10, recordsDesignation];

LABEL_6:

  return v7;
}

- (id)statusDictionary
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  if ([abstractObject shouldBeCreatedDynamically])
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v6 = [pqStore hasTable:mainTable];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
  mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [pqStore2 tableCountOfRecords:mainTable2];

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
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  scopeIndexColumnName = [(CPLPrequeliteStorage *)self scopeIndexColumnName];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014DC10;
  v11[3] = &unk_10027B348;
  v11[4] = self;
  v7 = v3;
  v12 = v7;
  [pqStore table:mainTable enumerateCountGroupedByProperty:scopeIndexColumnName block:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

- (id)scopeIndexes
{
  v3 = objc_alloc_init(NSMutableIndexSet);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  scopeIndexColumnName = [(CPLPrequeliteStorage *)self scopeIndexColumnName];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014DE08;
  v10[3] = &unk_10027B370;
  v11 = v3;
  v7 = v3;
  [pqStore table:mainTable enumerateDistinctValuesOfProperty:scopeIndexColumnName block:v10];

  v8 = [v7 copy];

  return v8;
}

- (id)statusPerScopeIndexWithGroupProperty:(id)property valueDescription:(id)description
{
  propertyCopy = property;
  descriptionCopy = description;
  _statusPerScopeIndex = [(CPLPrequeliteStorage *)self _statusPerScopeIndex];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  scopeIndexColumnName = [(CPLPrequeliteStorage *)self scopeIndexColumnName];
  v12 = [PQLNameInjection nameWithString:scopeIndexColumnName];

  v13 = [PQLNameInjection nameWithString:propertyCopy];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v23 = v13;
  v24 = v12;
  v15 = [pqlConnection cplFetch:{@"SELECT %@, %@, count(%@) FROM %@ GROUP BY scopeIndex, %@", v12, v13, v13, mainTable, v13}];

  if ([v15 next])
  {
    do
    {
      v16 = [v15 integerAtIndex:0];
      v17 = [v15 objectAtIndex:1];
      v18 = [v15 unsignedIntegerAtIndex:2];
      if (v17)
      {
        v19 = descriptionCopy[2](descriptionCopy, v17);
      }

      else
      {
        v19 = @"(nil)";
      }

      v20 = [NSNumber numberWithInteger:v16];
      v21 = [_statusPerScopeIndex objectForKeyedSubscript:v20];

      [v21 appendFormat:@"\n\t%@: %lu", v19, v18];
    }

    while (([v15 next] & 1) != 0);
  }

  return _statusPerScopeIndex;
}

- (BOOL)_checkSuperWasCalled
{
  superWasCalled = self->_superWasCalled;
  self->_superWasCalled = 0;
  return superWasCalled;
}

- (int64_t)scopeIndexForLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes scopedIdentifierForLocalScopedIdentifier:identifierCopy];

  if (v6)
  {
    scopeIndex = [v6 scopeIndex];
  }

  else
  {
    scopeIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return scopeIndex;
}

- (int64_t)scopeIndexForCloudScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes scopedIdentifierForCloudScopedIdentifier:identifierCopy];

  if (v6)
  {
    scopeIndex = [v6 scopeIndex];
  }

  else
  {
    scopeIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return scopeIndex;
}

- (int64_t)localScopeIndexForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes indexForLocalScopeIdentifier:identifierCopy];

  return v6;
}

- (int64_t)cloudScopeIndexForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes indexForCloudScopeIdentifier:identifierCopy];

  return v6;
}

- (int64_t)stableScopeIndexForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes stableScopeIndexForScopeIdentifier:identifierCopy];

  return v6;
}

- (id)filterForIncludedScopeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes filterForIncludedScopeIdentifiers:identifiersCopy];

  return v6;
}

- (id)filterForExcludedScopeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes filterForExcludedScopeIdentifiers:identifiersCopy];

  return v6;
}

- (id)scopedIdentifierForLocalIdentifier:(id)identifier scopeIndex:(int64_t)index
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v8 = [_scopes scopeIdentifierForLocalScopeIndex:index];

  if (v8)
  {
    v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v8 identifier:identifierCopy];
    [v9 setScopeIndex:index];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)scopedIdentifierForCloudIdentifier:(id)identifier scopeIndex:(int64_t)index
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v8 = [_scopes scopeIdentifierForCloudScopeIndex:index];

  if (v8)
  {
    v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v8 identifier:identifierCopy];
    [v9 setScopeIndex:index];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)scopeIdentifierForCloudScopeIndex:(int64_t)index
{
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v5 = [_scopes scopeIdentifierForCloudScopeIndex:index];

  return v5;
}

- (BOOL)isLocalScopeIndexValid:(int64_t)valid
{
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  validLocalScopeIndexes = [_scopes validLocalScopeIndexes];
  LOBYTE(valid) = [validLocalScopeIndexes containsIndex:valid];

  return valid;
}

- (BOOL)isCloudScopeIndexValid:(int64_t)valid
{
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  validCloudScopeIndexes = [_scopes validCloudScopeIndexes];
  LOBYTE(valid) = [validCloudScopeIndexes containsIndex:valid];

  return valid;
}

- (BOOL)recreateMainTableWithCopyInstructions:(id)instructions oldFields:(id)fields error:(id *)error
{
  instructionsCopy = instructions;
  fieldsCopy = fields;
  if (self->_tempTable)
  {
    sub_1001B91F8(self, a2);
  }

  v11 = fieldsCopy;
  if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    sub_1001B92DC(self, a2);
  }

  errorCopy = error;
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  name = [abstractObject name];
  v14 = [name stringByAppendingString:@"_temp"];

  v15 = [CPLPrequeliteTable tableWithName:v14];
  tempTable = self->_tempTable;
  self->_tempTable = v15;

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  if (![pqlConnection cplExecute:{@"DROP TABLE IF EXISTS %@", self->_tempTable}])
  {
    goto LABEL_31;
  }

  v56 = v11;
  tableName = [(CPLPrequeliteTable *)self->_mainTable tableName];
  v20 = [tableName stringByAppendingString:@"."];

  v21 = objc_alloc_init(NSMutableArray);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  selfCopy = self;
  v22 = [pqlConnection cplFetch:{@"SELECT name FROM sqlite_master WHERE type = index AND tbl_name = %@", self->_mainTable}];
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
        v35 = [pqlConnection cplExecute:{@"DROP INDEX %@", v34}];

        if ((v35 & 1) == 0)
        {

          self = selfCopy;
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

  self = selfCopy;
  v36 = selfCopy->_mainTable;
  objc_storeStrong(&self->_mainTable, self->_tempTable);
  createStorage = [(CPLPrequeliteStorage *)selfCopy createStorage];
  mainTable = selfCopy->_mainTable;
  selfCopy->_mainTable = v36;

  v14 = v55;
  v11 = v56;
  if (!createStorage)
  {
    goto LABEL_31;
  }

  uTF8String = [instructionsCopy UTF8String];
  v40 = [PQLRawInjection rawInjection:uTF8String length:strlen(uTF8String)];
  uTF8String2 = [v56 UTF8String];
  v42 = [PQLRawInjection rawInjection:uTF8String2 length:strlen(uTF8String2)];
  v43 = [pqlConnection cplExecute:{@"INSERT INTO %@ (%@) SELECT %@ FROM %@", selfCopy->_tempTable, v40, v42, selfCopy->_mainTable}];
  changes = [pqlConnection changes];

  if (!v43)
  {
    goto LABEL_31;
  }

  if ([pqlConnection cplExecute:{@"DROP TABLE %@", selfCopy->_mainTable}] && (v44 = selfCopy->_tempTable, (objc_msgSend(pqlConnection, "cplExecute:", @"ALTER TABLE %@ RENAME TO %@", v44, selfCopy->_mainTable) & 1) != 0))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v45 = sub_10014C718();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = selfCopy->_mainTable;
        *buf = 138413058;
        v68 = v46;
        v69 = 2112;
        v70 = v56;
        v71 = 2112;
        v72 = instructionsCopy;
        v73 = 2048;
        v74 = changes;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "successfully recreated %@ using copy %@ -> %@ (%lld records copied)", buf, 0x2Au);
      }
    }

    pqStore2 = [(CPLPrequeliteStorage *)selfCopy pqStore];
    [pqStore2 recordUpgradeEvent:{@"successfully recreated %@ using copy %@ -> %@ (%lld records copied)", selfCopy->_mainTable, v56, instructionsCopy, changes}];

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
        lastError = [pqlConnection lastError];
        *buf = 138413058;
        v68 = v50;
        v69 = 2112;
        v70 = v11;
        v71 = 2112;
        v72 = instructionsCopy;
        v73 = 2112;
        v74 = lastError;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to recreate %@ using copy %@ -> %@: %@", buf, 0x2Au);
      }
    }

    if (errorCopy)
    {
      [pqlConnection lastError];
      *errorCopy = v48 = 0;
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
      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      v7 = 138412290;
      v8 = mainTable;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating storage for %@", &v7, 0xCu);
    }
  }

  [(CPLPrequeliteStorage *)self _beforeInitializeStorage];
  initializeStorage = [(CPLPrequeliteStorage *)self initializeStorage];
  [(CPLPrequeliteStorage *)self _afterInitializeStorage];
  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10014C718();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      versionCopy = version;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Upgrading to %lld", &v6, 0xCu);
    }
  }

  return 1;
}

- (BOOL)createMainTableWithColumnVariables:(id)variables error:(id *)error
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
      variables = [v9 variables];
      sub_10014EC90();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }
  }

  pqStore = [v7 pqStore];
  pqlConnection = [pqStore pqlConnection];

  v18 = v7[2];
  definitionInjection = [v9 definitionInjection];
  v20 = [pqlConnection cplExecute:{@"CREATE TABLE %@ (%@)", v18, definitionInjection}];

  if (v5 && (v20 & 1) == 0)
  {
    *v5 = [pqlConnection lastCPLError];
  }

  return v20;
}

- (BOOL)createMainTableWithDefinition:(id)definition error:(id *)error
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

  pqStore = [v7 pqStore];
  pqlConnection = [pqStore pqlConnection];

  v21 = [pqlConnection cplExecute:{@"CREATE TABLE %@ (%@)", v7[2], v18}];
  v22 = v21;
  if (v5 && (v21 & 1) == 0)
  {
    *v5 = [pqlConnection lastCPLError];
  }

  return v22;
}

- (BOOL)dropIndexWithName:(id)name error:(id *)error
{
  nameCopy = name;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10014C718();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10014EC90();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    }
  }

  v13 = [CPLPrequeliteVariable indexVariableForVariableWithName:nameCopy forTable:self->_nameTable];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];
  v16 = [pqlConnection cplExecute:{@"DROP INDEX IF EXISTS %@", v13}];

  if (error && (v16 & 1) == 0)
  {
    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection2 = [pqStore2 pqlConnection];
    *error = [pqlConnection2 lastCPLError];
  }

  return v16;
}

@end