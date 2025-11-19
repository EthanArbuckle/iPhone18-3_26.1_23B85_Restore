@interface CPLEngineIgnoredRecords
- (BOOL)addIgnoredRecord:(id)a3 ignoredDate:(id)a4 otherScopeIndex:(int64_t)a5 error:(id *)a6;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)hasRecordWithScopedIdentifier:(id)a3;
- (BOOL)removeRecordWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)scopeIdentifier:(id)a3 hasIgnoredRecordsBeforeDate:(id)a4;
- (BOOL)setIgnoredDate:(id)a3 forRecordWithScopedIdentifier:(id)a4 error:(id *)a5;
- (id)ignoredRecordWithScopedIdentifier:(id)a3;
- (id)ignoredRecordsBeforeDate:(id)a3 scopeIdentifier:(id)a4 maximumCount:(unint64_t)a5;
- (id)recordWithScopedIdentifier:(id)a3;
@end

@implementation CPLEngineIgnoredRecords

- (BOOL)scopeIdentifier:(id)a3 hasIgnoredRecordsBeforeDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineStorage *)self platformObject];
  v9 = [v8 scopeIdentifier:v7 hasIgnoredRecordsBeforeDate:v6];

  return v9;
}

- (BOOL)setIgnoredDate:(id)a3 forRecordWithScopedIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v10 setIgnoredDate:v9 forRecordWithScopedIdentifier:v8 error:a5];

  return a5;
}

- (id)ignoredRecordsBeforeDate:(id)a3 scopeIdentifier:(id)a4 maximumCount:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CPLEngineStorage *)self platformObject];
  v11 = [v10 ignoredRecordsBeforeDate:v9 scopeIdentifier:v8 maximumCount:a5];

  return v11;
}

- (id)ignoredRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 ignoredRecordWithScopedIdentifier:v4];

  return v6;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v11 = [(CPLEngineStorage *)self platformObject];
  v12 = [v11 deleteRecordsForScopeIndex:a3 maxCount:a4 deletedCount:a5 error:a6];

  if (!v12)
  {
    return 0;
  }

  if (*a5)
  {
    return 1;
  }

  v14 = [(CPLEngineStorage *)self platformObject];
  v20 = 0;
  v15 = [v14 popCloudScopedIdentifiersToCheck:&v20 otherScopeIndex:a3 maxCount:a4 deletedCount:a5 error:a6];
  v16 = v20;

  if (v15)
  {
    if ([v16 count])
    {
      v17 = [(CPLEngineStorage *)self engineStore];
      v18 = [v17 pendingRecordChecks];

      v13 = [v18 enqueueCloudScopedIdentifiersToCheck:v16 error:a6];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)removeRecordWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 removeRecordWithScopedIdentifier:v6 error:a4];

  return a4;
}

- (BOOL)addIgnoredRecord:(id)a3 ignoredDate:(id)a4 otherScopeIndex:(int64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a6) = [v12 addIgnoredRecord:v11 ignoredDate:v10 otherScopeIndex:a5 error:a6];

  return a6;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasRecordWithScopedIdentifier:v4];

  return v6;
}

- (id)recordWithScopedIdentifier:(id)a3
{
  v3 = [(CPLEngineIgnoredRecords *)self ignoredRecordWithScopedIdentifier:a3];
  v4 = [v3 record];

  return v4;
}

@end