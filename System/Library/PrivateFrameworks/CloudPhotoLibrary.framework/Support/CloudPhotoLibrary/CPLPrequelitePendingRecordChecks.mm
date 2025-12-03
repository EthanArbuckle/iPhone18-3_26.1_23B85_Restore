@interface CPLPrequelitePendingRecordChecks
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)dequeueCloudScopedIdentifiersToCheck:(id)check error:(id *)error;
- (BOOL)enqueueCloudScopedIdentifiersToCheck:(id)check error:(id *)error;
- (BOOL)hasRecordsToCheckWithScopeIdentifier:(id)identifier;
- (BOOL)initializeStorage;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (id)nextBatchOfRecordsToCheckWithScopeIdentifier:(id)identifier;
- (id)status;
@end

@implementation CPLPrequelitePendingRecordChecks

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequelitePendingRecordChecks;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:identifier TEXT NOT NULL", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
      if (initializeStorage)
      {
        LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"scopeIndex unique:identifier" error:1, 0];
      }
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v7.receiver = self;
  v7.super_class = CPLPrequelitePendingRecordChecks;
  v5 = [(CPLPrequeliteStorage *)&v7 upgradeStorageToVersion:?];
  if (version == 72 && v5)
  {
    LOBYTE(v5) = [(CPLPrequeliteStorage *)self createStorage];
  }

  return v5;
}

- (BOOL)enqueueCloudScopedIdentifiersToCheck:(id)check error:(id *)error
{
  checkCopy = check;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = checkCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (![v13 scopeIndex])
        {
          sub_1001C29D0(a2, self, v13);
        }

        mainTable = [(CPLPrequeliteStorage *)self mainTable];
        scopeIndex = [v13 scopeIndex];
        identifier = [v13 identifier];
        LODWORD(scopeIndex) = [pqlConnection cplExecute:{@"INSERT OR IGNORE INTO %@ (scopeIndex, identifier) VALUES (%ld, %@)", mainTable, scopeIndex, identifier}];

        if (!scopeIndex)
        {

          if (error)
          {
            [pqlConnection lastError];
            *error = v17 = 0;
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_14:

  return v17;
}

- (id)nextBatchOfRecordsToCheckWithScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:identifierCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v7 = v5;
    v8 = [[NSMutableArray alloc] initWithCapacity:200];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [pqlConnection cplFetch:{@"SELECT identifier FROM %@ WHERE scopeIndex = %ld LIMIT %lu", mainTable, v7, 200}];

    if ([v12 next])
    {
      do
      {
        v13 = [CPLScopedIdentifier alloc];
        v14 = [v12 stringAtIndex:0];
        v15 = [v13 initWithScopeIdentifier:identifierCopy identifier:v14 scopeIndex:v7];

        [v8 addObject:v15];
      }

      while (([v12 next] & 1) != 0);
    }

    v6 = [v8 copy];
  }

  return v6;
}

- (BOOL)dequeueCloudScopedIdentifiersToCheck:(id)check error:(id *)error
{
  checkCopy = check;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = checkCopy;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v9)
  {

    v11 = 0;
    v23 = 1;
    goto LABEL_18;
  }

  v10 = v9;
  errorCopy = error;
  v11 = 0;
  v12 = 0;
  v13 = *v29;
  v26 = 1;
  do
  {
    v14 = v8;
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v14);
      }

      v16 = *(*(&v28 + 1) + 8 * i);
      if (!v11 || ([*(*(&v28 + 1) + 8 * i) scopeIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", v11), v17, (v18 & 1) == 0))
      {
        scopeIdentifier = [v16 scopeIdentifier];

        v20 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:scopeIdentifier];
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = 0;
          v11 = scopeIdentifier;
          continue;
        }

        v12 = v20;
        v11 = scopeIdentifier;
      }

      if (v12)
      {
        mainTable = [(CPLPrequeliteStorage *)self mainTable];
        identifier = [v16 identifier];
        v26 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, v12, identifier}];
      }
    }

    v8 = v14;
    v10 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v10);

  v23 = v26;
  if (!((errorCopy == 0) | v26 & 1))
  {
    [pqlConnection lastError];
    *errorCopy = v23 = 0;
  }

LABEL_18:

  return v23 & 1;
}

- (BOOL)hasRecordsToCheckWithScopeIdentifier:(id)identifier
{
  v4 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld", v6];
  v10 = [pqStore table:mainTable hasRecordsMatchingQuery:v9];

  return v10;
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

- (id)status
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableCountOfRecords:mainTable];

  if (v5)
  {
    v6 = [NSString stringWithFormat:@"%lu records need to be checked in the Cloud", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end