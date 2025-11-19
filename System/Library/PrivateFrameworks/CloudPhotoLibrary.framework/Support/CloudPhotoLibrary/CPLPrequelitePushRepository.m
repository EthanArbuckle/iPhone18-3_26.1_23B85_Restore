@interface CPLPrequelitePushRepository
- (BOOL)_createFlagsIndexes;
- (BOOL)_createIndexForFlags:(int64_t)a3;
- (BOOL)_createIndexesWithPriority:(BOOL)a3;
- (BOOL)_mergeChange:(id)a3 overChange:(id)a4 discardedUploadIdentifier:(id *)a5 error:(id *)a6;
- (BOOL)_overwriteChange:(id)a3 pushContext:(id)a4 error:(id *)a5;
- (BOOL)_storeChange:(id)a3 update:(BOOL)a4 error:(id *)a5;
- (BOOL)acknowledgeContributorsUpdates:(id)a3 error:(id *)a4;
- (BOOL)checkInBatchStorage:(id)a3 error:(id *)a4;
- (BOOL)deleteAllChangesWithError:(id *)a3;
- (BOOL)deleteChangeWithScopedIdentifier:(id)a3 discardedUploadIdentifier:(id *)a4 error:(id *)a5;
- (BOOL)deleteChangeWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 discardedUploadIdentifiers:(id *)a6 error:(id *)a7;
- (BOOL)deleteSharingFlagsWithMaxCount:(unint64_t)a3 deletedCount:(unint64_t *)a4 error:(id *)a5;
- (BOOL)fixStorageAfterAnyVersionChange;
- (BOOL)getRelatedScopedIdentifier:(id *)a3 forRecordWithScopedIdentifier:(id)a4;
- (BOOL)hasAnyChangeWithRelatedScopedIdentifier:(id)a3;
- (BOOL)hasChangesInScopeWithIdentifier:(id)a3;
- (BOOL)hasChangesInScopeWithIdentifier:(id)a3 table:(id)a4;
- (BOOL)hasChangesWithPriorityGreaterThanPriority:(unint64_t)a3 inScopeWithIdentifier:(id)a4;
- (BOOL)hasChangesWithPriorityLowerThanPriority:(unint64_t)a3 inScopeWithIdentifier:(id)a4;
- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (BOOL)hasChangesWithScopeFilter:(id)a3;
- (BOOL)hasSomeChangeWithScopedIdentifier:(id)a3;
- (BOOL)initializeStorage;
- (BOOL)isEmpty;
- (BOOL)reinjectChange:(id)a3 dequeueOrder:(int64_t)a4 discardedUploadIdentifier:(id *)a5 overwrittenRecord:(BOOL *)a6 error:(id *)a7;
- (BOOL)resetPriorityForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4 hasMore:(BOOL *)a5 error:(id *)a6;
- (BOOL)storeChange:(id)a3 pushContext:(id)a4 discardedUploadIdentifier:(id *)a5 error:(id *)a6;
- (BOOL)storeExtractedBatch:(id)a3 error:(id *)a4;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequelitePushRepository)initWithAbstractObject:(id)a3;
- (id)_allChangesWithScopeIdentifier:(id)a3 scopeIndex:(int64_t)a4 ordered:(BOOL)a5 table:(id)a6 query:(id)a7;
- (id)_injectionForChangeType:(unint64_t)a3;
- (id)_pqlChangeWithScopedIdentifier:(id)a3;
- (id)_scopedIdentifierForIdentifier:(id)a3 scopeIndex:(int64_t)a4;
- (id)allChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4;
- (id)allChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4 table:(id)a5;
- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 changeType:(unint64_t)a5 table:(id)a6;
- (id)allChangesWithClass:(Class)a3 secondaryScopedIdentifier:(id)a4 table:(id)a5;
- (id)allChangesWithScopeIdentifier:(id)a3;
- (id)allChangesWithScopeIdentifier:(id)a3 table:(id)a4;
- (id)allNonDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 table:(id)a5;
- (id)changeWithScopedIdentifier:(id)a3;
- (id)checkOutBatchStorageWithPriority:(unint64_t)a3 error:(id *)a4;
- (id)contributorsUpdatesForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4;
- (id)countPerFlagsForScopeWithIdentifier:(id)a3;
- (id)scopedIdentifiersForChangesWithFlag:(int64_t)a3 forScopeWithIdentifier:(id)a4;
- (id)status;
- (id)statusDictionary;
- (id)statusPerScopeIndex;
- (int64_t)_scopeIndexForScopeIdentifier:(id)a3;
- (int64_t)_scopeIndexForScopedIdentifier:(id)a3;
- (unint64_t)countOfChangesInScopeWithIdentifier:(id)a3;
- (unint64_t)minimumPriorityForChangesInScopeWithIdentifier:(id)a3;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLPrequelitePushRepository

- (void)writeTransactionDidSucceed
{
  v6.receiver = self;
  v6.super_class = CPLPrequelitePushRepository;
  [(CPLPrequeliteStorage *)&v6 writeTransactionDidSucceed];
  if (BYTE4(self->_cachedExtractedBatch) == 1)
  {
    v3 = [(CPLPrequelitePushRepository *)self abstractObject];
    v4 = [v3 engineStore];
    v5 = [v4 engineLibrary];
    [v5 notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged];

    BYTE4(self->_cachedExtractedBatch) = 0;
  }
}

- (CPLPrequelitePushRepository)initWithAbstractObject:(id)a3
{
  v10.receiver = self;
  v10.super_class = CPLPrequelitePushRepository;
  v3 = [(CPLPrequeliteStorage *)&v10 initWithAbstractObject:a3];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = *(v3 + 36);
    *(v3 + 36) = v4;

    v6 = +[CPLPrequeliteType dataType];
    v7 = [v3 variableWithName:@"extractedBatch" type:v6];
    v8 = *(v3 + 44);
    *(v3 + 44) = v7;

    [*(v3 + 44) setShouldNotCacheValue:1];
  }

  return v3;
}

- (BOOL)_createIndexForFlags:(int64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [v6 pqlConnection];

  v8 = [[NSString alloc] initWithFormat:@"flags%ld", a3];
  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [CPLPrequeliteVariable indexVariableForVariableWithName:v8 forTable:v9];

  v11 = [[NSString alloc] initWithFormat:@"(flags & %ld) != 0", a3];
  v12 = [PQLRawInjection alloc];
  v13 = [v11 dataUsingEncoding:4];
  v14 = [v12 initWithData:v13];

  v15 = [(CPLPrequeliteStorage *)self mainTable];
  LOBYTE(v13) = [v7 cplExecute:{@"CREATE INDEX IF NOT EXISTS %@ ON %@ (scopeIndex, flags) WHERE %@", v10, v15, v14}];

  objc_autoreleasePoolPop(v5);
  return v13;
}

- (BOOL)_createFlagsIndexes
{
  v3 = [(CPLPrequelitePushRepository *)self _createIndexForFlags:1];
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      if (v4 == 2)
      {
        break;
      }

      v6 = [(CPLPrequelitePushRepository *)self _createIndexForFlags:qword_10024B9B8[v4 + 1]];
      v4 = v5 + 1;
    }

    while ((v6 & 1) != 0);
    LOBYTE(v3) = v5 > 1;
  }

  return v3;
}

- (BOOL)_createIndexesWithPriority:(BOOL)a3
{
  BYTE4(self->_batchStoragesPerPriority) = a3;
  v4 = [(CPLPrequelitePushRepository *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"scopeIndex unique:identifier" error:0, 0];
  if (v4)
  {
    v4 = [(CPLPrequelitePushRepository *)self createIndexWithName:@"relatedIdentifier" withDefinition:@"class unique:scopeIndex error:relatedIdentifier", 0, 0];
    if (v4)
    {
      v4 = [(CPLPrequelitePushRepository *)self createIndexWithName:@"secondaryIdentifier" withDefinition:@"class unique:scopeIndex error:secondaryIdentifier", 0, 0];
      if (v4)
      {
        v4 = [(CPLPrequelitePushRepository *)self createIndexWithName:@"class" withDefinition:@"scopeIndex unique:class error:dequeueOrder DESC", 0, 0];
        if (v4)
        {
          v4 = [(CPLPrequelitePushRepository *)self createIndexWithName:@"dequeueOrder" withDefinition:@"scopeIndex unique:dequeueOrder DESC" error:0, 0];
          if (v4)
          {
            v4 = [(CPLPrequelitePushRepository *)self createIndexWithName:@"class.trashed" withDefinition:@"scopeIndex unique:class error:trashed, dequeueOrder DESC", 0, 0];
            if (v4)
            {
              v4 = [(CPLPrequelitePushRepository *)self createIndexWithName:@"class.changeType" withDefinition:@"scopeIndex unique:class error:changeType, dequeueOrder DESC", 0, 0];
              if (v4)
              {
                LOBYTE(v4) = [(CPLPrequelitePushRepository *)self createIndexWithName:@"flags" withDefinition:@"scopeIndex unique:flags" error:0, 0];
              }
            }
          }
        }
      }
    }
  }

  BYTE4(self->_batchStoragesPerPriority) = 0;
  return v4;
}

- (BOOL)initializeStorage
{
  v6.receiver = self;
  v6.super_class = CPLPrequelitePushRepository;
  v3 = [(CPLPrequeliteStorage *)&v6 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"class TEXT NOT NULL error:scopeIndex INTEGER NOT NULL, identifier TEXT NOT NULL, changeType INTEGER NOT NULL, relatedIdentifier TEXT, secondaryIdentifier TEXT, dequeueOrder INTEGER NOT NULL, trashed INTEGER NOT NULL, uploadIdentifier TEXT, flags INTEGER NOT NULL DEFAULT 0, priority INTEGER NOT NULL DEFAULT 0, trustLevel INTEGER NOT NULL DEFAULT 0, serializedRecord DATA", 0];
    if (v3)
    {
      v3 = [(CPLPrequelitePushRepository *)self _createIndexesWithPriority:0];
      if (v3)
      {
        v3 = [(CPLPrequelitePushRepository *)self _createIndexesWithPriority:1];
        if (v3)
        {
          v4 = *(&self->_injectionPerChangeType + 4);
          if (!v4 || (v3 = [(CPLPrequeliteStorage *)self createVariable:v4 defaultValue:0 error:0]))
          {
            LOBYTE(v3) = [(CPLPrequelitePushRepository *)self _createFlagsIndexes];
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)fixStorageAfterAnyVersionChange
{
  v5.receiver = self;
  v5.super_class = CPLPrequelitePushRepository;
  v3 = [(CPLPrequeliteStorage *)&v5 fixStorageAfterAnyVersionChange];
  if (v3)
  {
    LOBYTE(v3) = [(CPLPrequelitePushRepository *)self _createFlagsIndexes];
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v25.receiver = self;
  v25.super_class = CPLPrequelitePushRepository;
  if (![(CPLPrequeliteStorage *)&v25 upgradeStorageToVersion:?])
  {
    return 0;
  }

  v5 = 1;
  if (a3 > 57)
  {
    if (a3 <= 74)
    {
      if (a3 == 58)
      {
        if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v5;
        }

        if (![(CPLPrequeliteStorage *)self dropIndexWithName:@"class" error:0]|| ![(CPLPrequeliteStorage *)self dropIndexWithName:@"dequeueOrder" error:0]|| ![(CPLPrequeliteStorage *)self dropIndexWithName:@"class.trashed" error:0]|| ![(CPLPrequeliteStorage *)self dropIndexWithName:@"class.changeType" error:0]|| ![(CPLPrequelitePushRepository *)self createIndexWithName:@"relatedIdentifier" withDefinition:@"class unique:scopeIndex error:relatedIdentifier", 0, 0]|| ![(CPLPrequelitePushRepository *)self createIndexWithName:@"secondaryIdentifier" withDefinition:@"class unique:scopeIndex error:secondaryIdentifier", 0, 0]|| ![(CPLPrequelitePushRepository *)self createIndexWithName:@"class" withDefinition:@"scopeIndex unique:class error:dequeueOrder DESC", 0, 0]|| ![(CPLPrequelitePushRepository *)self createIndexWithName:@"class.trashed" withDefinition:@"scopeIndex unique:class error:trashed, dequeueOrder DESC", 0, 0])
        {
          return 0;
        }

        v13 = @"class.changeType";
        v14 = @"scopeIndex, class, changeType, dequeueOrder DESC";
        return [(CPLPrequelitePushRepository *)self createIndexWithName:v13 withDefinition:v14 unique:0 error:0];
      }

      if (a3 != 63 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      sub_1001C3F28(self, &v26);
    }

    else if (a3 == 75)
    {
      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      sub_1001C3DD8();
    }

    else
    {
      if (a3 != 83)
      {
        if (a3 != 84 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v5;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_1001C3BD4(self);
        }

        if (![(CPLPrequelitePushRepository *)self createIndexWithName:@"relatedIdentifier.all" withDefinition:@"scopeIndex unique:relatedIdentifier" error:0, 0])
        {
          return 0;
        }

        v13 = @"secondaryIdentifier.all";
        v14 = @"scopeIndex, secondaryIdentifier";
        return [(CPLPrequelitePushRepository *)self createIndexWithName:v13 withDefinition:v14 unique:0 error:0];
      }

      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      sub_1001C3C9C();
    }

    return v26;
  }

  if (a3 <= 38)
  {
    if (a3 == 31)
    {
      return [(CPLPrequeliteStorage *)self createStorage];
    }

    if (a3 != 32 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v5;
    }

    v16 = [(CPLPrequeliteStorage *)self pqStore];
    v17 = [v16 pqlConnection];

    v18 = [(CPLPrequeliteStorage *)self pqStore];
    v19 = [(CPLPrequeliteStorage *)self mainTable];
    v20 = [v18 tableHasRecords:v19];

    if (v20)
    {
      v21 = [(CPLPrequeliteStorage *)self pqStore];
      [v21 recordUpgradeEvent:@"Adding trust level column will mark all existing changes as un-trustable"];
    }

    v22 = [(CPLPrequeliteStorage *)self mainTable];
    v5 = [v17 cplExecute:{@"ALTER TABLE %@ ADD COLUMN trustLevel INTEGER DEFAULT 2", v22}];

LABEL_25:
    return v5;
  }

  switch(a3)
  {
    case '\'':
      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      if ([(CPLPrequeliteStorage *)self recreateMainTableWithCopyInstructions:@"class oldFields:scopeIndex error:identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord", @"class, 1, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, 0, 0, trustLevel, serializedRecord", 0])
      {
        if (!*(&self->_injectionPerChangeType + 4))
        {
          return v5;
        }

        v23 = [(CPLPrequelitePushRepository *)self storedExtractedBatch];
        v17 = v23;
        if (v23)
        {
          [v23 forceScopeIndexOnAllRecordsTo:1];
          v5 = [(CPLPrequelitePushRepository *)self storeExtractedBatch:v17 error:0];
        }

        goto LABEL_25;
      }

      return 0;
    case '0':
      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      return [(CPLPrequeliteStorage *)self recreateMainTableWithCopyInstructions:@"class oldFields:scopeIndex error:identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord", @"class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord", 0];
    case '9':
      v6 = [(CPLPrequeliteStorage *)self pqStore];
      v7 = [(CPLPrequeliteStorage *)self mainTable];
      v8 = [v6 tableHasRecords:v7];

      if (v8)
      {
        v9 = [(CPLPrequeliteStorage *)self pqStore];
        v10 = [v9 abstractObject];
        v11 = [v10 scopes];
        v12 = [v11 platformObject];

        v5 = [v12 forcePushToTransportForActiveScopesWithError:0];
      }

      else
      {
        return 1;
      }

      break;
  }

  return v5;
}

- (id)_scopedIdentifierForIdentifier:(id)a3 scopeIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(CPLPrequelitePushRepository *)self abstractObject];
  v8 = [v7 scopeType];

  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = [(CPLPrequeliteStorage *)self scopedIdentifierForCloudIdentifier:v6 scopeIndex:a4];
      goto LABEL_6;
    }

    if (v8 == 3)
    {
LABEL_13:
      sub_1001C4240();
    }
  }

  else
  {
    if (v8 == 1)
    {
      v10 = [(CPLPrequeliteStorage *)self scopedIdentifierForLocalIdentifier:v6 scopeIndex:a4];
LABEL_6:
      v9 = v10;
      goto LABEL_7;
    }

    if (!v8)
    {
      goto LABEL_13;
    }
  }

LABEL_7:

  return v9;
}

- (int64_t)_scopeIndexForScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequelitePushRepository *)self abstractObject];
  v6 = [v5 scopeType];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:v4];
      goto LABEL_6;
    }

    if (v6 != 3)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_1001C42B4();
  }

  if (v6 != 1)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v8 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v4];
LABEL_6:
  v7 = v8;
LABEL_7:

  return v7;
}

- (int64_t)_scopeIndexForScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequelitePushRepository *)self abstractObject];
  v6 = [v5 scopeType];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v4];
      goto LABEL_6;
    }

    if (v6 != 3)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_1001C4328();
  }

  if (v6 != 1)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v8 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v4];
LABEL_6:
  v7 = v8;
LABEL_7:

  return v7;
}

- (unint64_t)countOfChangesInScopeWithIdentifier:(id)a3
{
  v4 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld", v6];
  v10 = [v7 table:v8 countOfRecordsMatchingQuery:v9];

  return v10;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)a3 table:(id)a4
{
  v6 = a4;
  v7 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:a3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld", v9];
    v8 = [v10 table:v6 hasRecordsMatchingQuery:v11];
  }

  return v8;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self mainTable];
  LOBYTE(self) = [(CPLPrequelitePushRepository *)self hasChangesInScopeWithIdentifier:v4 table:v5];

  return self;
}

- (unint64_t)minimumPriorityForChangesInScopeWithIdentifier:(id)a3
{
  v4 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:a3];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    v7 = [(CPLPrequeliteStorage *)self pqStore];
    v8 = [v7 pqlConnection];

    v9 = objc_opt_class();
    v10 = [(CPLPrequeliteStorage *)self mainTable];
    v11 = [v8 cplFetchObjectOfClass:v9 sql:{@"SELECT priority FROM %@ where scopeIndex = %ld ORDER BY priority LIMIT 1", v10, v6}];

    if (v11)
    {
      v5 = [v11 unsignedIntegerValue];
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (BOOL)hasChangesWithPriorityLowerThanPriority:(unint64_t)a3 inScopeWithIdentifier:(id)a4
{
  v6 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v6;
  v9 = [(CPLPrequeliteStorage *)self pqStore];
  v10 = [(CPLPrequeliteStorage *)self mainTable];
  v11 = [PQLFormatInjection formatInjection:@"priority < %lu AND scopeIndex = %ld", a3, v8];
  LOBYTE(v8) = [v9 table:v10 hasRecordsMatchingQuery:v11];

  return v8;
}

- (BOOL)hasChangesWithPriorityGreaterThanPriority:(unint64_t)a3 inScopeWithIdentifier:(id)a4
{
  v6 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v6;
  v9 = [(CPLPrequeliteStorage *)self pqStore];
  v10 = [(CPLPrequeliteStorage *)self mainTable];
  v11 = [PQLFormatInjection formatInjection:@"priority > %lu AND scopeIndex = %ld", a3, v8];
  LOBYTE(v8) = [v9 table:v10 hasRecordsMatchingQuery:v11];

  return v8;
}

- (BOOL)hasChangesWithScopeFilter:(id)a3
{
  v4 = a3;
  if (![(CPLPrequelitePushRepository *)self isEmpty])
  {
    v6 = v4;
    v7 = [v6 includedScopeIdentifiers];

    if (v7)
    {
      v8 = [v6 localIndexes];
      v9 = [v8 count];

      if (!v9)
      {
        v5 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v10 = [v6 excludedScopeIdentifiers];

      if (v10)
      {
        v11 = [v6 localIndexes];
        v12 = [v11 count];

        if (!v12)
        {
          v5 = 1;
          goto LABEL_9;
        }
      }
    }

    v13 = [(CPLPrequeliteStorage *)self pqStore];
    v14 = [(CPLPrequeliteStorage *)self mainTable];
    v15 = [v6 localIndexesInjection];
    v5 = [v13 table:v14 hasRecordsMatchingQuery:v15];

    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)_pqlChangeWithScopedIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C439C(a2, self, v5);
  }

  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [v6 pqlConnection];

  v8 = objc_opt_class();
  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [v5 scopeIndex];
  v11 = [v5 identifier];
  v12 = [v7 cplFetchObjectOfClass:v8 sql:{@"SELECT class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v9, v10, v11}];

  return v12;
}

- (BOOL)_storeChange:(id)a3 update:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(CPLPrequeliteStorage *)self pqStore];
  v10 = [v9 pqlConnection];

  v11 = [(CPLPrequeliteStorage *)self mainTable];
  if (v6)
  {
    if (sub_1001C4468(v8 == 0, v8, v10, v11))
    {
      v12 = 1;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v37 = v11;
  if (v8)
  {
    v36 = NSStringFromClass(*(v8 + 3));
    v32 = *(v8 + 4);
    v27 = *(v8 + 5);
    v31 = v8[12];
    v13 = *(v8 + 7);
    v34 = *(v8 + 8);
    v30 = *(v8 + 8);
    v14 = *(v8 + 10);
    v28 = *(v8 + 9);
  }

  else
  {
    v36 = NSStringFromClass(0);
    v30 = 0;
    v32 = 0;
    v34 = 0;
    v31 = 0;
    v27 = 0;
    v28 = 0;
    v13 = 0;
    v14 = 0;
  }

  v29 = v14;
  v15 = [v29 uploadIdentifier];
  if (v8)
  {
    v16 = *(v8 + 10);
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  v17 = [v26 flags];
  if (v8)
  {
    v18 = *(v8 + 10);
  }

  else
  {
    v18 = 0;
  }

  v35 = v10;
  v19 = v18;
  v20 = [v19 priority];
  if (v8)
  {
    v21 = v8[3];
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_1001C3044(v8);
  v25 = v21;
  v10 = v35;
  v33 = [v35 cplExecute:{@"INSERT INTO %@ (class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord) VALUES (%@, %ld, %@, %i, %@, %@, %ld, %i, %@, %ld, %lu, %i, %@)", v37, v36, v32, v27, v31, v13, v34, v28, v30, v15, v17, v20, v25, v22}];

  if ((v33 & 1) == 0)
  {
LABEL_17:
    if (a5)
    {
      [v10 lastCPLError];
      *a5 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_20;
  }

  if (v8)
  {
    v23 = *(v8 + 10);
  }

  else
  {
    v23 = 0;
  }

  v12 = 1;
  if ([v23 flags])
  {
    BYTE4(self->_cachedExtractedBatch) = 1;
  }

LABEL_20:

  return v12;
}

- (BOOL)storeChange:(id)a3 pushContext:(id)a4 discardedUploadIdentifier:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 scopedIdentifier];
  if ([(CPLPrequelitePushRepository *)self _scopeIndexForScopedIdentifier:v12]== 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a6)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v12];
      *a6 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = [(CPLPrequelitePushRepository *)self _pqlChangeWithScopedIdentifier:v12];
    v15 = sub_100174900([CPLPrequelitePushedChange alloc], v10, v11);
    if (v14)
    {
      v16 = [(CPLPrequelitePushRepository *)self _mergeChange:v15 overChange:v14 discardedUploadIdentifier:a5 error:a6];
    }

    else
    {
      v16 = [(CPLPrequelitePushRepository *)self _storeChange:v15 update:0 error:a6];
    }

    v13 = v16;
  }

  return v13;
}

- (BOOL)_overwriteChange:(id)a3 pushContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 scopedIdentifier];
  if ([(CPLPrequelitePushRepository *)self _scopeIndexForScopedIdentifier:v10]== 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a5)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v10];
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = sub_100174900([CPLPrequelitePushedChange alloc], v8, v9);
    v11 = [(CPLPrequelitePushRepository *)self _storeChange:v12 update:1 error:a5];
  }

  return v11;
}

- (BOOL)reinjectChange:(id)a3 dequeueOrder:(int64_t)a4 discardedUploadIdentifier:(id *)a5 overwrittenRecord:(BOOL *)a6 error:(id *)a7
{
  v13 = a3;
  v14 = [v13 scopedIdentifier];
  v15 = [v14 scopeIndex];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C4658(a2, self, v13);
  }

  v16 = [v13 scopedIdentifier];
  v17 = [(CPLPrequelitePushRepository *)self _pqlChangeWithScopedIdentifier:v16];

  *a6 = v17 != 0;
  v18 = [CPLPrequelitePushedChange alloc];
  v19 = [v13 _pushContext];
  v20 = sub_100174900(v18, v13, v19);

  if (v20)
  {
    v21 = *(v20 + 3);
    if (v21 <= 1)
    {
      v21 = 1;
    }

    *(v20 + 3) = v21;
    if (v17)
    {
      goto LABEL_6;
    }

    if (v20[9] < a4)
    {
      v20[9] = a4;
    }

LABEL_9:
    v22 = [(CPLPrequelitePushRepository *)self _storeChange:v20 update:0 error:a7];
    goto LABEL_10;
  }

  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_6:
  v22 = [(CPLPrequelitePushRepository *)self _mergeChange:v17 overChange:v20 discardedUploadIdentifier:a5 error:a7];
LABEL_10:
  v23 = v22;

  return v23;
}

- (BOOL)deleteChangeWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([v7 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C4724(a2, self, v7);
  }

  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [v8 pqlConnection];

  v10 = [(CPLPrequeliteStorage *)self mainTable];
  v11 = [v7 scopeIndex];
  v12 = [v7 identifier];
  v13 = [v9 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v10, v11, v12}];

  if (v13)
  {
    BYTE4(self->_cachedExtractedBatch) = 1;
  }

  else if (a4)
  {
    *a4 = [v9 lastCPLError];
  }

  return v13;
}

- (BOOL)deleteChangeWithScopedIdentifier:(id)a3 discardedUploadIdentifier:(id *)a4 error:(id *)a5
{
  v8 = a3;
  if ([v8 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C4824(a2, self, v8);
  }

  v9 = [(CPLPrequelitePushRepository *)self _pqlChangeWithScopedIdentifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 80);
    v12 = [v11 uploadIdentifier];
    v13 = v12;

    *a4 = v12;
    v14 = [(CPLPrequeliteStorage *)self pqStore];
    v15 = [v14 pqlConnection];

    v16 = [(CPLPrequeliteStorage *)self mainTable];
    v17 = [v8 scopeIndex];
    v18 = [v8 identifier];
    v19 = [v15 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v16, v17, v18}];

    if (v19)
    {
      BYTE4(self->_cachedExtractedBatch) = 1;
    }
  }

  else
  {
    sub_1001C47F0(a4);
    LOBYTE(v19) = 1;
  }

  return v19;
}

- (BOOL)hasSomeChangeWithScopedIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C48F0(a2, self, v5);
  }

  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v5 scopeIndex];
  v9 = [v5 identifier];
  v10 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND identifier = %@", v8, v9];
  LOBYTE(v8) = [v6 table:v7 hasRecordsMatchingQuery:v10];

  return v8;
}

- (BOOL)deleteAllChangesWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplExecute:{@"DELETE FROM %@", v7}];

  if (a3 && (v8 & 1) == 0)
  {
    *a3 = [v6 lastCPLError];
  }

  return v8;
}

- (BOOL)storeExtractedBatch:(id)a3 error:(id *)a4
{
  v8 = a3;
  if (!*(&self->_injectionPerChangeType + 4))
  {
    sub_1001C4A88(self, a2, v9, v10, v11, v12, v13, v14, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  }

  v15 = v8;
  v16 = objc_autoreleasePoolPush();
  if (v15)
  {
    v17 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v15];
    if (!v17)
    {
      sub_1001C49BC(a2, self, v15);
    }
  }

  else
  {
    v17 = 0;
  }

  BYTE4(self->_extractedBatchVar) = 1;
  objc_storeStrong((&self->_hasCachedExtractedBatch + 4), a3);
  v18 = *(&self->_injectionPerChangeType + 4);
  v25 = 0;
  v19 = [(CPLPrequeliteStorage *)self setValue:v17 forVariable:v18 error:&v25];
  v20 = v25;

  objc_autoreleasePoolPop(v16);
  if (!v19)
  {
    BYTE4(self->_extractedBatchVar) = 0;
    v21 = *(&self->_hasCachedExtractedBatch + 4);
    *(&self->_hasCachedExtractedBatch + 4) = 0;

    if (a4)
    {
      v22 = v20;
      *a4 = v20;
    }
  }

  return v19;
}

- (BOOL)resetPriorityForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4 hasMore:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
  *a5 = 0;
  v11 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:v10];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v13 = v11;
    v14 = [(CPLPrequeliteStorage *)self pqStore];
    v15 = [v14 pqlConnection];

    v16 = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [v15 cplExecute:{@"UPDATE %@ SET priority = 0 WHERE priority != 0 AND scopeIndex = %ld LIMIT %lu", v16, v13, a4}];

    if (v12)
    {
      v17 = [v15 changes];
      if (v17 >= 1)
      {
        sub_1001C4DC8(v10, v17, a5);
      }
    }

    else if (a6)
    {
      *a6 = [v15 lastError];
    }
  }

  return v12;
}

- (id)changeWithScopedIdentifier:(id)a3
{
  v4 = [(CPLPrequelitePushRepository *)self _pqlChangeWithScopedIdentifier:a3];
  v5 = sub_100174A2C(v4, self);

  return v5;
}

- (id)_allChangesWithScopeIdentifier:(id)a3 scopeIndex:(int64_t)a4 ordered:(BOOL)a5 table:(id)a6 query:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL && (a4 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:v12], a4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v15 = &__NSArray0__struct;
  }

  else
  {
    v16 = [(CPLPrequeliteStorage *)self pqStore];
    v17 = [v16 pqlConnection];

    if (v9)
    {
      v18 = @"SELECT class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE %@ AND scopeIndex = %ld ORDER BY dequeueOrder DESC, rowID DESC";
    }

    else
    {
      v18 = @"SELECT class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE %@ AND scopeIndex = %ld";
    }

    v19 = [v17 cplFetch:{v18, v13, v14, a4}];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100176EA8;
    v22[3] = &unk_10027B218;
    v22[4] = self;
    v20 = [v19 enumerateObjects:v22];
    v15 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v20];
  }

  return v15;
}

- (id)_injectionForChangeType:(unint64_t)a3
{
  v5 = *(&self->super._shouldUpgradeSchema + 1);
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    if ((a3 & 0xFFFFFFFFFFFFFBFFLL) != 0)
    {
      [PQLFormatInjection formatInjection:@"((changeType & %i) = %i) OR (changeType = %i)", a3, a3, 0];
    }

    else
    {
      [PQLFormatInjection formatInjection:@"changeType = %i", a3, v11, v12];
    }
    v7 = ;
    v8 = *(&self->super._shouldUpgradeSchema + 1);
    v9 = [NSNumber numberWithUnsignedInteger:a3];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 changeType:(unint64_t)a5 table:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = NSStringFromClass(a3);
  v13 = [(CPLPrequelitePushRepository *)self _injectionForChangeType:a5];
  v14 = [PQLFormatInjection formatInjection:@"class = %@ AND (%@)", v12, v13];
  v15 = [(CPLPrequelitePushRepository *)self _allChangesWithScopeIdentifier:v11 scopeIndex:0x7FFFFFFFFFFFFFFFLL ordered:1 table:v10 query:v14];

  return v15;
}

- (id)allNonDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 table:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = NSStringFromClass(a3);
  v11 = [PQLFormatInjection formatInjection:@"class = %@ AND changeType != %i", v10, 1024];
  v12 = [(CPLPrequelitePushRepository *)self _allChangesWithScopeIdentifier:v9 scopeIndex:0x7FFFFFFFFFFFFFFFLL ordered:1 table:v8 query:v11];

  return v12;
}

- (id)allChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4 table:(id)a5
{
  v9 = a4;
  v10 = a5;
  if ([v9 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C4EA0(a2, self, v9);
  }

  v11 = [v9 scopeIdentifier];
  v12 = [v9 scopeIndex];
  v13 = NSStringFromClass(a3);
  v14 = [v9 identifier];
  v15 = [PQLFormatInjection formatInjection:@"class = %@ AND relatedIdentifier = %@", v13, v14];
  v16 = [(CPLPrequelitePushRepository *)self _allChangesWithScopeIdentifier:v11 scopeIndex:v12 ordered:0 table:v10 query:v15];

  return v16;
}

- (id)allChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [(CPLPrequelitePushRepository *)self allChangesWithClass:a3 relatedScopedIdentifier:v6 table:v7];

  return v8;
}

- (id)allChangesWithClass:(Class)a3 secondaryScopedIdentifier:(id)a4 table:(id)a5
{
  v9 = a4;
  v10 = a5;
  if ([v9 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C4F6C(a2, self, v9);
  }

  v11 = [v9 scopeIdentifier];
  v12 = [v9 scopeIndex];
  v13 = NSStringFromClass(a3);
  v14 = [v9 identifier];
  v15 = [PQLFormatInjection formatInjection:@"class = %@ AND secondaryIdentifier = %@", v13, v14];
  v16 = [(CPLPrequelitePushRepository *)self _allChangesWithScopeIdentifier:v11 scopeIndex:v12 ordered:0 table:v10 query:v15];

  return v16;
}

- (id)allChangesWithScopeIdentifier:(id)a3 table:(id)a4
{
  v6 = a4;
  v7 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:a3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = &__NSArray0__struct;
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    v12 = [v11 cplFetch:{@"SELECT class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE scopeIndex = %ldORDER BY dequeueOrder DESC, rowID DESC", v6, v9}];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001776E8;
    v15[3] = &unk_10027B218;
    v15[4] = self;
    v13 = [v12 enumerateObjects:v15];
    v8 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v13];
  }

  return v8;
}

- (id)allChangesWithScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [(CPLPrequelitePushRepository *)self allChangesWithScopeIdentifier:v4 table:v5];

  return v6;
}

- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v7 = a3;
  if ([v7 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C5038(a2, self, v7);
  }

  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = NSStringFromClass(a4);
  v11 = [v7 scopeIndex];
  v12 = [v7 identifier];
  v13 = [PQLFormatInjection formatInjection:@"class = %@ AND scopeIndex = %ld AND relatedIdentifier = %@", v10, v11, v12];
  LOBYTE(v11) = [v8 table:v9 hasRecordsMatchingQuery:v13];

  return v11;
}

- (BOOL)hasAnyChangeWithRelatedScopedIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C5104(a2, self, v5);
  }

  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v5 scopeIndex];
  v9 = [v5 identifier];
  v10 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND relatedIdentifier = %@", v8, v9];
  if ([v6 table:v7 hasRecordsMatchingQuery:v10])
  {
    v11 = 1;
  }

  else
  {
    v12 = [v5 scopeIndex];
    v13 = [v5 identifier];
    v14 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND secondaryIdentifier = %@", v12, v13];
    v11 = [v6 table:v7 hasRecordsMatchingQuery:v14];
  }

  return v11;
}

- (id)status
{
  v38.receiver = self;
  v38.super_class = CPLPrequelitePushRepository;
  v3 = [(CPLPrequeliteStorage *)&v38 status];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [v6 pqlConnection];

  v32 = self;
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v33 = v7;
  v9 = [v7 cplFetch:{@"SELECT class, changeType, trashed, count(*) FROM %@ GROUP BY class, changeType, trashed", v8}];

  if ([v9 next])
  {
    do
    {
      v10 = [v9 stringAtIndex:0];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = @"(nil)";
      }

      v12 = [v9 intAtIndex:1];
      v13 = [v9 intAtIndex:2];
      v14 = [v9 unsignedIntegerAtIndex:3];
      v15 = [v5 objectForKeyedSubscript:v11];
      if (!v15)
      {
        v15 = objc_alloc_init(_CPLPushRepositoryClassCount);
        [v5 setObject:v15 forKeyedSubscript:v11];
      }

      if (v12 == 1024)
      {
        [(_CPLPushRepositoryClassCount *)v15 setDeletes:&v14[[(_CPLPushRepositoryClassCount *)v15 deletes]]];
      }

      else
      {
        if (v13 == 1)
        {
          [(_CPLPushRepositoryClassCount *)v15 setTrashed:&v14[[(_CPLPushRepositoryClassCount *)v15 trashed]]];
        }

        if (v12)
        {
          [(_CPLPushRepositoryClassCount *)v15 setModifies:&v14[[(_CPLPushRepositoryClassCount *)v15 modifies]]];
        }

        else
        {
          [(_CPLPushRepositoryClassCount *)v15 setAdds:&v14[[(_CPLPushRepositoryClassCount *)v15 adds]]];
        }
      }
    }

    while (([v9 next] & 1) != 0);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = [v5 allKeys];
  v17 = [v16 sortedArrayUsingSelector:"compare:"];

  v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * i);
        v23 = [v5 objectForKeyedSubscript:v22];
        [v4 appendFormat:@"\n\t%@: %@", v22, v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v19);
  }

  if (*(&v32->_injectionPerChangeType + 4))
  {
    v24 = [(CPLPrequelitePushRepository *)v32 storedExtractedBatch];
    if (v24)
    {
      v25 = [[CPLPrequelitePushRepositoryBatchStorage alloc] initWithPushRepository:v32 priority:-1];
      v26 = [v24 effectiveResourceSizeToUploadUsingStorage:v25];
      v27 = [v24 batch];
      v28 = [v27 summaryDescription];
      v29 = v28;
      if (v26)
      {
        v30 = [NSByteCountFormatter stringFromByteCount:v26 countStyle:1];
        [v4 appendFormat:@"\nCurrent extracted batch:\n\t%@ %@", v29, v30];
      }

      else
      {
        [v4 appendFormat:@"\nCurrent extracted batch:\n\t%@", v28];
      }
    }
  }

  return v4;
}

- (id)statusDictionary
{
  v30.receiver = self;
  v30.super_class = CPLPrequelitePushRepository;
  v3 = [(CPLPrequeliteStorage *)&v30 statusDictionary];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v5 forKeyedSubscript:@"changes"];
  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100178138;
  v28[3] = &unk_10027B8F0;
  v8 = v5;
  v29 = v8;
  [v6 table:v7 enumerateCountGroupedByProperty:@"class" block:v28];

  if (*(&self->_injectionPerChangeType + 4))
  {
    v9 = [(CPLPrequelitePushRepository *)self storedExtractedBatch];
    if (v9)
    {
      v23 = v8;
      v10 = objc_alloc_init(NSMutableDictionary);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = [v9 batch];
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = [v10 objectForKeyedSubscript:v18];
            v20 = v19;
            if (v19)
            {
              v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 unsignedIntegerValue] + 1);
              [v10 setObject:v21 forKeyedSubscript:v18];
            }

            else
            {
              [v10 setObject:&off_10028F178 forKeyedSubscript:v18];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v31 count:16];
        }

        while (v13);
      }

      [v4 setObject:v10 forKeyedSubscript:@"extracted"];
      v8 = v23;
    }
  }

  return v4;
}

- (id)statusPerScopeIndex
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v38 = objc_alloc_init(NSMutableDictionary);
  v36 = self;
  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v37 = v4;
  v6 = [v4 cplFetch:{@"SELECT scopeIndex, class, changeType, trashed, count(*) FROM %@ GROUP BY scopeIndex, class, changeType, trashed", v5}];

  if ([v6 next])
  {
    do
    {
      v7 = [v6 integerAtIndex:0];
      v8 = [NSNumber numberWithInteger:v7];
      v9 = [v38 objectForKeyedSubscript:v8];

      if (!v9)
      {
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = [NSNumber numberWithInteger:v7];
        [v38 setObject:v9 forKeyedSubscript:v10];
      }

      v11 = [v6 stringAtIndex:1];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = @"(nil)";
      }

      v13 = [v6 intAtIndex:2];
      v14 = [v6 intAtIndex:3];
      v15 = [v6 unsignedIntegerAtIndex:4];
      v16 = [v9 objectForKeyedSubscript:v12];
      if (!v16)
      {
        v16 = objc_alloc_init(_CPLPushRepositoryClassCount);
        [v9 setObject:v16 forKeyedSubscript:v12];
      }

      if (v13 == 1024)
      {
        [(_CPLPushRepositoryClassCount *)v16 setDeletes:&v15[[(_CPLPushRepositoryClassCount *)v16 deletes]]];
      }

      else
      {
        if (v14 == 1)
        {
          [(_CPLPushRepositoryClassCount *)v16 setTrashed:&v15[[(_CPLPushRepositoryClassCount *)v16 trashed]]];
        }

        if (v13)
        {
          [(_CPLPushRepositoryClassCount *)v16 setModifies:&v15[[(_CPLPushRepositoryClassCount *)v16 modifies]]];
        }

        else
        {
          [(_CPLPushRepositoryClassCount *)v16 setAdds:&v15[[(_CPLPushRepositoryClassCount *)v16 adds]]];
        }
      }
    }

    while (([v6 next] & 1) != 0);
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001786B8;
  v46[3] = &unk_10027BCF0;
  v17 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v38, "count")}];
  v47 = v17;
  [v38 enumerateKeysAndObjectsUsingBlock:v46];
  v18 = v4;
  if (*(&v36->_injectionPerChangeType + 4))
  {
    v19 = [(CPLPrequelitePushRepository *)v36 storedExtractedBatch];
    if (v19)
    {
      v20 = objc_alloc_init(NSMutableDictionary);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v35 = v19;
      v21 = [v19 batch];
      v22 = [v21 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v43;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v43 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v42 + 1) + 8 * i);
            v27 = [v26 scopedIdentifier];
            v28 = [v27 scopeIdentifier];

            v29 = [v20 objectForKeyedSubscript:v28];
            if (!v29)
            {
              v29 = objc_alloc_init(CPLChangeBatch);
              [v20 setObject:v29 forKeyedSubscript:v28];
            }

            [v29 addRecord:v26];
          }

          v23 = [v21 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v23);
      }

      v30 = [(CPLPrequelitePushRepository *)v36 abstractObject];
      v31 = [v30 engineStore];
      v32 = [v31 scopes];

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100178848;
      v39[3] = &unk_10027BD18;
      v40 = v32;
      v41 = v17;
      v33 = v32;
      [v20 enumerateKeysAndObjectsUsingBlock:v39];

      v18 = v37;
      v19 = v35;
    }
  }

  return v17;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 discardedUploadIdentifiers:(id *)a6 error:(id *)a7
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  if (a4 >= 100)
  {
    v11 = 100;
  }

  else
  {
    v11 = a4;
  }

  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_alloc_init(NSMutableIndexSet);
  v14 = [(CPLPrequeliteStorage *)self pqStore];
  v15 = [v14 pqlConnection];

  v16 = [(CPLPrequeliteStorage *)self mainTable];
  v17 = [v15 cplFetch:{@"SELECT rowID, uploadIdentifier FROM %@ WHERE scopeIndex = %ld LIMIT %ld", v16, a3, v11}];
  while (1)
  {

    if (![v17 next])
    {
      break;
    }

    [v13 addIndex:{objc_msgSend(v17, "integerAtIndex:", 0)}];
    v16 = [v17 stringAtIndex:1];
    if (v16)
    {
      [v12 addObject:v16];
    }
  }

  if (v17 && ([v17 error], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
  {
    if (v40[3])
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100178D64;
      v35[3] = &unk_10027B708;
      v38 = &v39;
      v26 = v15;
      v36 = v26;
      v37 = self;
      [v13 enumerateIndexesUsingBlock:v35];
      if (a7 && (v40[3] & 1) == 0)
      {
        *a7 = [v26 lastError];
      }

      if (v40[3])
      {
        *a5 = [v13 count];
        v27 = v12;
        *a6 = v12;
        if (*a5 >= 1)
        {
          BYTE4(self->_cachedExtractedBatch) = 1;
        }
      }
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = sub_1001749DC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v17 error];
        v22 = v21;
        if (!v21)
        {
          v22 = [v15 lastError];
        }

        *buf = 134218242;
        v44 = a3;
        v45 = 2112;
        v46 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Enumerating records to delete for scope index %ld failed: %@", buf, 0x16u);
        if (!v21)
        {
        }
      }
    }

    if (a7)
    {
      v23 = [v17 error];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
        *a7 = v24;
      }

      else
      {
        v28 = [v15 lastError];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
          *a7 = v29;
        }

        else
        {
          v31 = +[CPLErrors unknownError];
          *a7 = v31;
        }
      }
    }

    *(v40 + 24) = 0;
  }

  v32 = *(v40 + 24);

  _Block_object_dispose(&v39, 8);
  return v32 & 1;
}

- (BOOL)isEmpty
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [v3 tableHasRecords:v4];

  return v5 ^ 1;
}

- (BOOL)getRelatedScopedIdentifier:(id *)a3 forRecordWithScopedIdentifier:(id)a4
{
  v7 = a4;
  if ([v7 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C51D0(a2, self, v7);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [v8 pqlConnection];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100179050;
  v19[3] = &unk_10027BD40;
  v19[4] = &v20;
  v10 = [(CPLPrequeliteStorage *)self mainTable];
  v11 = [v7 scopeIndex];
  v12 = [v7 identifier];
  v13 = [v9 cplFetchObject:v19 sql:{@"SELECT relatedIdentifier FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v10, v11, v12}];

  if (*(v21 + 24) != 1 || (+[NSNull null], v14 = objc_claimAutoreleasedReturnValue(), v14, v13 == v14))
  {
    *a3 = 0;
  }

  else
  {
    v15 = [CPLScopedIdentifier alloc];
    v16 = [v7 scopeIdentifier];
    *a3 = [v15 initWithScopeIdentifier:v16 identifier:v13 scopeIndex:{objc_msgSend(v7, "scopeIndex")}];
  }

  v17 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v17;
}

- (id)countPerFlagsForScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &__NSDictionary0__struct;
  }

  else
  {
    v7 = v5;
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = [(CPLPrequeliteStorage *)self pqStore];
    v10 = [v9 pqlConnection];

    v11 = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [v10 cplFetch:{@"SELECT flags, COUNT(flags) FROM %@ WHERE scopeIndex = %ld AND flags != 0", v11, v7}];

    if ([v12 next])
    {
      do
      {
        v13 = [v12 integerAtIndex:0];
        v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 unsignedIntegerAtIndex:1]);
        v15 = [NSNumber numberWithInteger:v13];
        [v8 setObject:v14 forKeyedSubscript:v15];
      }

      while (([v12 next] & 1) != 0);
    }

    v16 = [(CPLPrequelitePushRepository *)self storedExtractedBatch];
    if (v16)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1001792E0;
      v18[3] = &unk_10027BD68;
      v19 = v4;
      v20 = v10;
      v21 = self;
      v23 = v7;
      v22 = v8;
      [v16 enumeratePushContextsWithBlock:v18];
    }

    v6 = [v8 copy];
  }

  return v6;
}

- (id)scopedIdentifiersForChangesWithFlag:(int64_t)a3 forScopeWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = &__NSArray0__struct;
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = v12;
    if (a3)
    {
      v14 = [v11 cplFetch:{@"SELECT identifier FROM %@ WHERE scopeIndex = %ld AND (flags & %ld) != 0", v12, v9, a3}];
    }

    else
    {
      v14 = [v11 cplFetch:{@"SELECT identifier FROM %@ WHERE scopeIndex = %ld AND flags = 0", v12, v9, v18}];
    }

    v15 = v14;

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100179694;
    v19[3] = &unk_10027B9D8;
    v20 = v6;
    v21 = v9;
    v16 = [v15 enumerateObjects:v19];
    v8 = [[CPLMapEnumerator alloc] initWithEnumerator:v16];
  }

  return v8;
}

- (BOOL)deleteSharingFlagsWithMaxCount:(unint64_t)a3 deletedCount:(unint64_t *)a4 error:(id *)a5
{
  v9 = [(CPLPrequeliteStorage *)self pqStore];
  v10 = [v9 pqlConnection];

  v11 = [(CPLPrequeliteStorage *)self mainTable];
  v12 = [v10 cplExecute:{@"UPDATE %@ SET flags = flags & %ld WHERE (flags & %ld) != 0 LIMIT %lu", v11, -4, 3, a3}];

  if (v12)
  {
    *a4 = [v10 changes];
  }

  else if (a5)
  {
    *a5 = [v10 lastError];
  }

  return v12;
}

- (id)contributorsUpdatesForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [[NSMutableArray alloc] initWithCapacity:a4];
  v8 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:v6];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = &__NSArray0__struct;
  }

  else
  {
    v10 = v8;
    v11 = [(CPLPrequeliteStorage *)self pqStore];
    v12 = [v11 pqlConnection];

    v13 = [(CPLPrequeliteStorage *)self mainTable];
    v14 = [v12 cplFetch:{@"SELECT class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE (flags & %ld) != 0 AND scopeIndex = %ld LIMIT %lu", v13, 4, v10, a4}];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100179A1C;
    v26[3] = &unk_10027B218;
    v26[4] = self;
    v15 = [v14 enumerateObjects:v26];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v15];
    v17 = [(CPLPrequeliteSkipNullEnumerator *)v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [v7 addObject:*(*(&v22 + 1) + 8 * i)];
        }

        v18 = [(CPLPrequeliteSkipNullEnumerator *)v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v18);
    }

    v9 = v7;
  }

  return v9;
}

- (BOOL)acknowledgeContributorsUpdates:(id)a3 error:(id *)a4
{
  v5 = a3;
  v40 = self;
  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [v6 pqlConnection];

  v41 = [(CPLPrequeliteStorage *)v40 mainTable];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v8)
  {
    v36 = 0;
    v37 = 0;
    v39 = *v48;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v48 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v47 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v12 = [v10 scopedIdentifier];
      if ([v12 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_1001C5330(a2, v40, v12);
      }

      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1001C3814;
      v42[3] = &unk_10027BD40;
      v42[4] = &v43;
      v13 = [v12 scopeIndex];
      v14 = [v12 identifier];
      v15 = [v7 cplFetchObject:v42 sql:{@"SELECT rowID, class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v41, v13, v14}];

      v16 = +[NSNull null];
      LOBYTE(v14) = v15 == v16;

      if ((v14 & 1) == 0)
      {
        break;
      }

      v22 = 1;
LABEL_22:

      _Block_object_dispose(&v43, 8);
      objc_autoreleasePoolPop(v11);
      if (!v22)
      {

        if (a4)
        {
          v31 = v37;
          v32 = 0;
          *a4 = v37;
        }

        else
        {
          v32 = 0;
        }

        goto LABEL_35;
      }

      if (v8 == ++v9)
      {
        v30 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        v8 = v30;
        if (v30)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      }
    }

    v17 = sub_100174A2C(v15, v40);
    v18 = [v17 updateSharingContributorUserIdentifiers];
    v19 = [v10 updateSharingContributorUserIdentifiers];
    v20 = v19;
    if (v18 && v19)
    {
      v21 = [v18 isEqual:v19];

      if ((v21 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v23 = (v18 | v19) != 0;

      if (v23)
      {
LABEL_11:
        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_1001C52B0(v51, v12, &v52);
        }

        goto LABEL_19;
      }
    }

    if (v15)
    {
      v24 = v15[10];
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v26 = [v25 flags];

    v27 = [(CPLPrequeliteStorage *)v40 mainTable];
    v28 = [v7 cplExecute:{@"UPDATE %@ SET flags = %ld WHERE rowID = %lu", v27, v26 & 0xFFFFFFFFFFFFFFFBLL, v44[3]}];

    if ((v28 & 1) == 0)
    {
      v29 = [v7 lastError];

      v22 = 0;
      v37 = v29;
      goto LABEL_21;
    }

    ++v36;
LABEL_19:
    v22 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v36 = 0;
  v37 = 0;
LABEL_31:

  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001C5410(v36);
  }

  v32 = 1;
LABEL_35:

  return v32;
}

- (id)checkOutBatchStorageWithPriority:(unint64_t)a3 error:(id *)a4
{
  v7 = *(&self->_shouldNotifyFlagsCountChanges + 4);
  if (!v7)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = *(&self->_shouldNotifyFlagsCountChanges + 4);
    *(&self->_shouldNotifyFlagsCountChanges + 4) = v8;

    v7 = *(&self->_shouldNotifyFlagsCountChanges + 4);
  }

  v10 = [NSNumber numberWithUnsignedInteger:a3];
  v11 = [v7 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = [[CPLPrequelitePushRepositoryBatchStorage alloc] initWithPushRepository:self priority:a3];
    v12 = *(&self->_shouldNotifyFlagsCountChanges + 4);
    v13 = [NSNumber numberWithUnsignedInteger:a3];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }

  if ([(CPLPrequelitePushRepositoryBatchStorage *)v11 checkOutWithError:a4])
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)checkInBatchStorage:(id)a3 error:(id *)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001C54B8(a2, self, v7);
  }

  v8 = [v7 pushRepository];

  if (v8 != self)
  {
    sub_1001C5584(a2, self, v7);
  }

  v9 = [v7 checkInWithError:a4];

  return v9;
}

- (void)writeTransactionDidFail
{
  v4.receiver = self;
  v4.super_class = CPLPrequelitePushRepository;
  [(CPLPrequeliteStorage *)&v4 writeTransactionDidFail];
  BYTE4(self->_extractedBatchVar) = 0;
  v3 = *(&self->_hasCachedExtractedBatch + 4);
  *(&self->_hasCachedExtractedBatch + 4) = 0;

  BYTE4(self->_cachedExtractedBatch) = 0;
}

- (BOOL)_mergeChange:(id)a3 overChange:(id)a4 discardedUploadIdentifier:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    v12 = *(v9 + 3);
    if (v10)
    {
LABEL_3:
      isa_high = HIDWORD(v10[1].isa);
      goto LABEL_4;
    }
  }

  else
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  isa_high = 0;
LABEL_4:
  v14 = (isa_high | v12) != 0;
  if (v9)
  {
    v15 = v9[10];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [v16 uploadIdentifier];
  if (v11)
  {
    isa = v11[10].isa;
  }

  else
  {
    isa = 0;
  }

  v19 = isa;
  v20 = [v16 uploadIdentifier];
  if (v20)
  {
  }

  else if (!v9 || v9[6] != 1024)
  {
    v21 = [(objc_class *)v19 uploadIdentifier];

    v17 = v21;
    goto LABEL_14;
  }

  *a5 = [(objc_class *)v19 uploadIdentifier];
LABEL_14:
  v22 = [(objc_class *)v19 flags];
  if (v9)
  {
    v23 = [v16 pushContextMergingFlags:v22 changeType:v9[6] uploadIdentifier:v17 priority:{objc_msgSend(v16, "priority")}];
    sub_1001C31BC(v9, v23);

    v24 = v9[10];
  }

  else
  {
    v61 = [v16 pushContextMergingFlags:v22 changeType:0 uploadIdentifier:v17 priority:{objc_msgSend(v16, "priority")}];
    sub_1001C31BC(0, v61);

    v24 = 0;
  }

  v25 = v24;
  v26 = [v25 flags];
  v27 = [(objc_class *)v19 flags];

  v28 = self;
  if (v26 != v27)
  {
    BYTE4(self->_cachedExtractedBatch) = 1;
  }

  v29 = "PLPrequeliteResourceUploadQueue";
  if (v11 && v11[6].isa == 1024)
  {
    if (v9)
    {
      if (v9[6] == 2)
      {
        v30 = objc_opt_class();
        v41 = v30 == objc_opt_class();
        v29 = "@CPLPrequeliteResourceUploadQueue" + 3;
        if (v41)
        {
          v9[6] = 0;
          [v9[11] setChangeType:0];
          if ((_CPLSilentLogging & 1) == 0)
          {
            v31 = sub_1001749DC();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = sub_100174A2C(v9, self);
              sub_10017AAB8();
              sub_1000139CC(&_mh_execute_header, v31, v33, "Got an update over a delete (automatically fixing it): %@", v65);

              v29 = "@CPLPrequeliteResourceUploadQueue" + 3;
            }

            v28 = self;
          }
        }
      }

LABEL_29:
      if ((v9[6] | 0x400) == 0x400)
      {
LABEL_30:
        *(v9 + 3) = 2 * v14;
        goto LABEL_31;
      }

      if (v11)
      {
        v62 = v11[6].isa;
        if (v62 == 1024)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v43 = v29;
            v44 = sub_1001749DC();
            if (sub_10002B0A8(v44))
            {
              v45 = sub_100174A2C(v9, self);
              v46 = *(v43 + 413);
              sub_10017AAB8();
              sub_1000139CC(&_mh_execute_header, v11, v47, "Got an update over a delete: %@", v65);
            }
          }

          v48 = +[NSAssertionHandler currentHandler];
          v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
          v50 = sub_100174A2C(v9, self);
          [v48 handleFailureInMethod:a2 object:self file:v49 lineNumber:697 description:{@"Got an update over a delete: %@", v50}];

          goto LABEL_52;
        }
      }

      else
      {
        v62 = 0;
      }

      v36 = sub_100174A2C(v9, v28);
      if (v36)
      {
        v37 = v36;
        v38 = sub_100174A2C(v11, v28);
        v39 = [v38 copy];

        if (!v39)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v54 = sub_1001749DC();
            if (sub_1000033C0(v54))
            {
              if (v11)
              {
                v55 = v11[5].isa;
              }

              else
              {
                v55 = 0;
              }

              v56 = v55;
              sub_10017AAB8();
              sub_1000139CC(&_mh_execute_header, v9, v57, "Invalid bottom change for %@", v65);
            }
          }

          v58 = +[NSAssertionHandler currentHandler];
          v59 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
          if (v11)
          {
            v60 = v11[5].isa;
          }

          else
          {
            v60 = 0;
          }

          [v58 handleFailureInMethod:a2 object:self file:v59 lineNumber:702 description:{@"Invalid bottom change for %@", v60}];

          abort();
        }

        [v39 applyChange:v37];
        sub_1001C30DC(v9, v39);
        sub_1001C31AC(v9, 0);
        v40 = v9[6];
        if (v40)
        {
          v41 = v62 == 0;
        }

        else
        {
          v41 = 1;
        }

        v42 = v40 | v62;
        if (v41)
        {
          v42 = 0;
        }

        v9[6] = v42;

        v28 = self;
        goto LABEL_30;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v51 = sub_1001749DC();
        if (sub_10002B0A8(v51))
        {
          v52 = v9[5];
          sub_10017AAB8();
          sub_1000139CC(&_mh_execute_header, v11, v53, "Invalid top change for %@", v65);
        }
      }

      v48 = +[NSAssertionHandler currentHandler];
      v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
      [v48 handleFailureInMethod:a2 object:self file:v49 lineNumber:700 description:{@"Invalid top change for %@", v9[5]}];
LABEL_52:

      abort();
    }
  }

  else if (v9)
  {
    goto LABEL_29;
  }

LABEL_31:
  v34 = [(CPLPrequelitePushRepository *)v28 _storeChange:v9 update:1 error:a6];

  return v34;
}

@end