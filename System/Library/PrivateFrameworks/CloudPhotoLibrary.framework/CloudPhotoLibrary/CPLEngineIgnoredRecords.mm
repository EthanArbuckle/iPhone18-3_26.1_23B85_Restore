@interface CPLEngineIgnoredRecords
- (BOOL)addIgnoredRecord:(id)record ignoredDate:(id)date otherScopeIndex:(int64_t)index error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasRecordWithScopedIdentifier:(id)identifier;
- (BOOL)removeRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)scopeIdentifier:(id)identifier hasIgnoredRecordsBeforeDate:(id)date;
- (BOOL)setIgnoredDate:(id)date forRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (id)ignoredRecordWithScopedIdentifier:(id)identifier;
- (id)ignoredRecordsBeforeDate:(id)date scopeIdentifier:(id)identifier maximumCount:(unint64_t)count;
- (id)recordWithScopedIdentifier:(id)identifier;
@end

@implementation CPLEngineIgnoredRecords

- (BOOL)scopeIdentifier:(id)identifier hasIgnoredRecordsBeforeDate:(id)date
{
  dateCopy = date;
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject scopeIdentifier:identifierCopy hasIgnoredRecordsBeforeDate:dateCopy];

  return v9;
}

- (BOOL)setIgnoredDate:(id)date forRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  dateCopy = date;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setIgnoredDate:dateCopy forRecordWithScopedIdentifier:identifierCopy error:error];

  return error;
}

- (id)ignoredRecordsBeforeDate:(id)date scopeIdentifier:(id)identifier maximumCount:(unint64_t)count
{
  identifierCopy = identifier;
  dateCopy = date;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v11 = [platformObject ignoredRecordsBeforeDate:dateCopy scopeIdentifier:identifierCopy maximumCount:count];

  return v11;
}

- (id)ignoredRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject ignoredRecordWithScopedIdentifier:identifierCopy];

  return v6;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  v12 = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  if (!v12)
  {
    return 0;
  }

  if (*deletedCount)
  {
    return 1;
  }

  platformObject2 = [(CPLEngineStorage *)self platformObject];
  v20 = 0;
  v15 = [platformObject2 popCloudScopedIdentifiersToCheck:&v20 otherScopeIndex:index maxCount:count deletedCount:deletedCount error:error];
  v16 = v20;

  if (v15)
  {
    if ([v16 count])
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      pendingRecordChecks = [engineStore pendingRecordChecks];

      v13 = [pendingRecordChecks enqueueCloudScopedIdentifiersToCheck:v16 error:error];
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

- (BOOL)removeRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject removeRecordWithScopedIdentifier:identifierCopy error:error];

  return error;
}

- (BOOL)addIgnoredRecord:(id)record ignoredDate:(id)date otherScopeIndex:(int64_t)index error:(id *)error
{
  dateCopy = date;
  recordCopy = record;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject addIgnoredRecord:recordCopy ignoredDate:dateCopy otherScopeIndex:index error:error];

  return error;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasRecordWithScopedIdentifier:identifierCopy];

  return v6;
}

- (id)recordWithScopedIdentifier:(id)identifier
{
  v3 = [(CPLEngineIgnoredRecords *)self ignoredRecordWithScopedIdentifier:identifier];
  record = [v3 record];

  return record;
}

@end