@interface CPLPrequeliteRemappedRecords
- (BOOL)addRemappedRecordWithScopedIdentifier:(id)identifier realScopedIdentifier:(id)scopedIdentifier error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)fixStorageAfterAnyVersionChange;
- (BOOL)initializeStorage;
- (BOOL)isRecordWithScopedIdentifierRemapped:(id)remapped;
- (BOOL)removeRemappedRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (id)realScopedIdentifierForRemappedScopedIdentifier:(id)identifier;
- (id)remappedRecordEnumeratorInScope:(id)scope;
- (id)scopedIdentifiersRemappedToScopedIdentifier:(id)identifier;
@end

@implementation CPLPrequeliteRemappedRecords

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteRemappedRecords;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:cloudIdentifier TEXT NOT NULL, realIdentifier TEXT NOT NULL", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedCloudIdentifier" withDefinition:@"scopeIndex unique:cloudIdentifier" error:1, 0];
      if (initializeStorage)
      {
        LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedRealIdentifier" withDefinition:@"scopeIndex unique:realIdentifier" error:0, 0];
      }
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteRemappedRecords;
  v5 = [(CPLPrequeliteStorage *)&v10 upgradeStorageToVersion:?];
  if (v5)
  {
    if (version == 39)
    {
      if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        LOBYTE(v5) = [(CPLPrequeliteStorage *)self recreateMainTableWithCopyInstructions:@"scopeIndex oldFields:cloudIdentifier error:realIdentifier", @"2, cloudIdentifier, realIdentifier", 0];
        return v5;
      }
    }

    else if (version == 30)
    {
      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      tableName = [mainTable tableName];
      [pqStore recordUpgradeEvent:{@"Adding index on cloudIdentifier in %@", tableName}];

      LOBYTE(v5) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"cloudIdentifier" error:0];
      return v5;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)fixStorageAfterAnyVersionChange
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteRemappedRecords;
  fixStorageAfterAnyVersionChange = [(CPLPrequeliteStorage *)&v8 fixStorageAfterAnyVersionChange];
  if (fixStorageAfterAnyVersionChange)
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v6 = [pqStore table:mainTable hasColumnWithName:@"deleteDate"];

    if (v6)
    {
      sub_1001C59CC(self, &v9);
      LOBYTE(fixStorageAfterAnyVersionChange) = v9;
    }

    else
    {
      LOBYTE(fixStorageAfterAnyVersionChange) = 1;
    }
  }

  return fixStorageAfterAnyVersionChange;
}

- (BOOL)addRemappedRecordWithScopedIdentifier:(id)identifier realScopedIdentifier:(id)scopedIdentifier error:(id *)error
{
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  v10 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = v10;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    identifier2 = [scopedIdentifierCopy identifier];
    v11 = [pqlConnection cplExecute:{@"INSERT OR REPLACE INTO %@ (scopeIndex, cloudIdentifier, realIdentifier) VALUES (%ld, %@, %@)", mainTable, v12, identifier, identifier2}];

    if (error && (v11 & 1) == 0)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v11;
}

- (BOOL)removeRemappedRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v8 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND cloudIdentifier = %@", mainTable, v9, identifier}];

    if (v8)
    {
      if ([pqlConnection changes] >= 1)
      {
        sub_1001C5AA0(identifierCopy);
      }
    }

    else if (error)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v8;
}

- (id)realScopedIdentifierForRemappedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v10 = objc_opt_class();
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v13 = [pqlConnection cplFetchObjectOfClass:v10 sql:{@"SELECT realIdentifier FROM %@ WHERE scopeIndex = %ld AND cloudIdentifier = %@", mainTable, v7, identifier}];

    if (v13)
    {
      v6 = [[CPLScopedIdentifier alloc] initRelativeToScopedIdentifier:identifierCopy identifier:v13];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)scopedIdentifiersRemappedToScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v7 = v5;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    scopeIdentifier = [identifierCopy scopeIdentifier];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v13 = [pqlConnection cplFetch:{@"SELECT cloudIdentifier FROM %@ WHERE scopeIndex = %ld AND realIdentifier = %@", mainTable, v7, identifier}];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10017C410;
    v16[3] = &unk_10027B9D8;
    v17 = scopeIdentifier;
    v18 = v7;
    v14 = scopeIdentifier;
    v6 = [v13 enumerateObjects:v16];
  }

  return v6;
}

- (BOOL)isRecordWithScopedIdentifierRemapped:(id)remapped
{
  remappedCopy = remapped;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:remappedCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [remappedCopy identifier];
    v11 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND cloudIdentifier = %@", v7, identifier];
    v6 = [pqStore table:mainTable hasRecordsMatchingQuery:v11];
  }

  return v6;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld LIMIT %ld", mainTable, index, count}];

  if (v14)
  {
    *deletedCount = [pqlConnection changes];
  }

  else if (error)
  {
    *error = [pqlConnection lastError];
  }

  return v14;
}

- (id)remappedRecordEnumeratorInScope:(id)scope
{
  scopeCopy = scope;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  cloudIndex = [scopeCopy cloudIndex];
  scopeIdentifier = [scopeCopy scopeIdentifier];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [pqlConnection cplFetch:{@"SELECT cloudIdentifier, realIdentifier FROM %@ WHERE scopeIndex = %ld", mainTable, cloudIndex}];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10017C7B0;
  v15[3] = &unk_10027B9D8;
  v16 = scopeIdentifier;
  v17 = cloudIndex;
  v11 = scopeIdentifier;
  v12 = [v10 enumerateObjects:v15];
  v13 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v12];

  return v13;
}

@end