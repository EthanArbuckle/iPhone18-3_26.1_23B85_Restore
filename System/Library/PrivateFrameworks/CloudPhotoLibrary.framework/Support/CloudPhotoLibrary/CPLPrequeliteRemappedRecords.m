@interface CPLPrequeliteRemappedRecords
- (BOOL)addRemappedRecordWithScopedIdentifier:(id)a3 realScopedIdentifier:(id)a4 error:(id *)a5;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)fixStorageAfterAnyVersionChange;
- (BOOL)initializeStorage;
- (BOOL)isRecordWithScopedIdentifierRemapped:(id)a3;
- (BOOL)removeRemappedRecordWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (id)realScopedIdentifierForRemappedScopedIdentifier:(id)a3;
- (id)remappedRecordEnumeratorInScope:(id)a3;
- (id)scopedIdentifiersRemappedToScopedIdentifier:(id)a3;
@end

@implementation CPLPrequeliteRemappedRecords

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteRemappedRecords;
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:cloudIdentifier TEXT NOT NULL, realIdentifier TEXT NOT NULL", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedCloudIdentifier" withDefinition:@"scopeIndex unique:cloudIdentifier" error:1, 0];
      if (v3)
      {
        LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedRealIdentifier" withDefinition:@"scopeIndex unique:realIdentifier" error:0, 0];
      }
    }
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteRemappedRecords;
  v5 = [(CPLPrequeliteStorage *)&v10 upgradeStorageToVersion:?];
  if (v5)
  {
    if (a3 == 39)
    {
      if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        LOBYTE(v5) = [(CPLPrequeliteStorage *)self recreateMainTableWithCopyInstructions:@"scopeIndex oldFields:cloudIdentifier error:realIdentifier", @"2, cloudIdentifier, realIdentifier", 0];
        return v5;
      }
    }

    else if (a3 == 30)
    {
      v6 = [(CPLPrequeliteStorage *)self pqStore];
      v7 = [(CPLPrequeliteStorage *)self mainTable];
      v8 = [v7 tableName];
      [v6 recordUpgradeEvent:{@"Adding index on cloudIdentifier in %@", v8}];

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
  v3 = [(CPLPrequeliteStorage *)&v8 fixStorageAfterAnyVersionChange];
  if (v3)
  {
    v4 = [(CPLPrequeliteStorage *)self pqStore];
    v5 = [(CPLPrequeliteStorage *)self mainTable];
    v6 = [v4 table:v5 hasColumnWithName:@"deleteDate"];

    if (v6)
    {
      sub_1001C59CC(self, &v9);
      LOBYTE(v3) = v9;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)addRemappedRecordWithScopedIdentifier:(id)a3 realScopedIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v8];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a5)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v8];
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = v10;
    v13 = [(CPLPrequeliteStorage *)self pqStore];
    v14 = [v13 pqlConnection];

    v15 = [(CPLPrequeliteStorage *)self mainTable];
    v16 = [v8 identifier];
    v17 = [v9 identifier];
    v11 = [v14 cplExecute:{@"INSERT OR REPLACE INTO %@ (scopeIndex, cloudIdentifier, realIdentifier) VALUES (%ld, %@, %@)", v15, v12, v16, v17}];

    if (a5 && (v11 & 1) == 0)
    {
      *a5 = [v14 lastCPLError];
    }
  }

  return v11;
}

- (BOOL)removeRemappedRecordWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v6];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [v6 identifier];
    v8 = [v11 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND cloudIdentifier = %@", v12, v9, v13}];

    if (v8)
    {
      if ([v11 changes] >= 1)
      {
        sub_1001C5AA0(v6);
      }
    }

    else if (a4)
    {
      *a4 = [v11 lastCPLError];
    }
  }

  return v8;
}

- (id)realScopedIdentifierForRemappedScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [v8 pqlConnection];

    v10 = objc_opt_class();
    v11 = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [v4 identifier];
    v13 = [v9 cplFetchObjectOfClass:v10 sql:{@"SELECT realIdentifier FROM %@ WHERE scopeIndex = %ld AND cloudIdentifier = %@", v11, v7, v12}];

    if (v13)
    {
      v6 = [[CPLScopedIdentifier alloc] initRelativeToScopedIdentifier:v4 identifier:v13];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)scopedIdentifiersRemappedToScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v7 = v5;
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [v8 pqlConnection];

    v10 = [v4 scopeIdentifier];
    v11 = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [v4 identifier];
    v13 = [v9 cplFetch:{@"SELECT cloudIdentifier FROM %@ WHERE scopeIndex = %ld AND realIdentifier = %@", v11, v7, v12}];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10017C410;
    v16[3] = &unk_10027B9D8;
    v17 = v10;
    v18 = v7;
    v14 = v10;
    v6 = [v13 enumerateObjects:v16];
  }

  return v6;
}

- (BOOL)isRecordWithScopedIdentifierRemapped:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [v4 identifier];
    v11 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND cloudIdentifier = %@", v7, v10];
    v6 = [v8 table:v9 hasRecordsMatchingQuery:v11];
  }

  return v6;
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

- (id)remappedRecordEnumeratorInScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [v4 cloudIndex];
  v8 = [v4 scopeIdentifier];

  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [v6 cplFetch:{@"SELECT cloudIdentifier, realIdentifier FROM %@ WHERE scopeIndex = %ld", v9, v7}];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10017C7B0;
  v15[3] = &unk_10027B9D8;
  v16 = v8;
  v17 = v7;
  v11 = v8;
  v12 = [v10 enumerateObjects:v15];
  v13 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v12];

  return v13;
}

@end