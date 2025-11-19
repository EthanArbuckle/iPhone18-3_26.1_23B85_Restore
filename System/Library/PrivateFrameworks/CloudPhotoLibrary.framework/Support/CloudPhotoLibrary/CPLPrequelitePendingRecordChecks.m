@interface CPLPrequelitePendingRecordChecks
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)dequeueCloudScopedIdentifiersToCheck:(id)a3 error:(id *)a4;
- (BOOL)enqueueCloudScopedIdentifiersToCheck:(id)a3 error:(id *)a4;
- (BOOL)hasRecordsToCheckWithScopeIdentifier:(id)a3;
- (BOOL)initializeStorage;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (id)nextBatchOfRecordsToCheckWithScopeIdentifier:(id)a3;
- (id)status;
@end

@implementation CPLPrequelitePendingRecordChecks

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequelitePendingRecordChecks;
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:identifier TEXT NOT NULL", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
      if (v3)
      {
        LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"scopeIndex unique:identifier" error:1, 0];
      }
    }
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CPLPrequelitePendingRecordChecks;
  v5 = [(CPLPrequeliteStorage *)&v7 upgradeStorageToVersion:?];
  if (a3 == 72 && v5)
  {
    LOBYTE(v5) = [(CPLPrequeliteStorage *)self createStorage];
  }

  return v5;
}

- (BOOL)enqueueCloudScopedIdentifiersToCheck:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [v6 pqlConnection];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
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

        v14 = [(CPLPrequeliteStorage *)self mainTable];
        v15 = [v13 scopeIndex];
        v16 = [v13 identifier];
        LODWORD(v15) = [v7 cplExecute:{@"INSERT OR IGNORE INTO %@ (scopeIndex, identifier) VALUES (%ld, %@)", v14, v15, v16}];

        if (!v15)
        {

          if (a4)
          {
            [v7 lastError];
            *a4 = v17 = 0;
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

- (id)nextBatchOfRecordsToCheckWithScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v7 = v5;
    v8 = [[NSMutableArray alloc] initWithCapacity:200];
    v9 = [(CPLPrequeliteStorage *)self pqStore];
    v10 = [v9 pqlConnection];

    v11 = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [v10 cplFetch:{@"SELECT identifier FROM %@ WHERE scopeIndex = %ld LIMIT %lu", v11, v7, 200}];

    if ([v12 next])
    {
      do
      {
        v13 = [CPLScopedIdentifier alloc];
        v14 = [v12 stringAtIndex:0];
        v15 = [v13 initWithScopeIdentifier:v4 identifier:v14 scopeIndex:v7];

        [v8 addObject:v15];
      }

      while (([v12 next] & 1) != 0);
    }

    v6 = [v8 copy];
  }

  return v6;
}

- (BOOL)dequeueCloudScopedIdentifiersToCheck:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v27 = [v7 pqlConnection];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v9)
  {

    v11 = 0;
    v23 = 1;
    goto LABEL_18;
  }

  v10 = v9;
  v25 = a4;
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
        v19 = [v16 scopeIdentifier];

        v20 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:v19];
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = 0;
          v11 = v19;
          continue;
        }

        v12 = v20;
        v11 = v19;
      }

      if (v12)
      {
        v21 = [(CPLPrequeliteStorage *)self mainTable];
        v22 = [v16 identifier];
        v26 = [v27 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v21, v12, v22}];
      }
    }

    v8 = v14;
    v10 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v10);

  v23 = v26;
  if (!((v25 == 0) | v26 & 1))
  {
    [v27 lastError];
    *v25 = v23 = 0;
  }

LABEL_18:

  return v23 & 1;
}

- (BOOL)hasRecordsToCheckWithScopeIdentifier:(id)a3
{
  v4 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld", v6];
  v10 = [v7 table:v8 hasRecordsMatchingQuery:v9];

  return v10;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v11 = [(CPLPrequeliteStorage *)self pqStore];
  v12 = [v11 pqlConnection];

  v13 = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [v12 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld LIMIT %ld", v13, a3, a4}];

  if (v14)
  {
    *a5 = [v12 changes];
  }

  else if (a6)
  {
    *a6 = [v12 lastError];
  }

  return v14;
}

- (id)status
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [v3 tableCountOfRecords:v4];

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