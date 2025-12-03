@interface CPLPrequelitePushRepository
- (BOOL)_createFlagsIndexes;
- (BOOL)_createIndexForFlags:(int64_t)flags;
- (BOOL)_createIndexesWithPriority:(BOOL)priority;
- (BOOL)_mergeChange:(id)change overChange:(id)overChange discardedUploadIdentifier:(id *)identifier error:(id *)error;
- (BOOL)_overwriteChange:(id)change pushContext:(id)context error:(id *)error;
- (BOOL)_storeChange:(id)change update:(BOOL)update error:(id *)error;
- (BOOL)acknowledgeContributorsUpdates:(id)updates error:(id *)error;
- (BOOL)checkInBatchStorage:(id)storage error:(id *)error;
- (BOOL)deleteAllChangesWithError:(id *)error;
- (BOOL)deleteChangeWithScopedIdentifier:(id)identifier discardedUploadIdentifier:(id *)uploadIdentifier error:(id *)error;
- (BOOL)deleteChangeWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount discardedUploadIdentifiers:(id *)identifiers error:(id *)error;
- (BOOL)deleteSharingFlagsWithMaxCount:(unint64_t)count deletedCount:(unint64_t *)deletedCount error:(id *)error;
- (BOOL)fixStorageAfterAnyVersionChange;
- (BOOL)getRelatedScopedIdentifier:(id *)identifier forRecordWithScopedIdentifier:(id)scopedIdentifier;
- (BOOL)hasAnyChangeWithRelatedScopedIdentifier:(id)identifier;
- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier;
- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier table:(id)table;
- (BOOL)hasChangesWithPriorityGreaterThanPriority:(unint64_t)priority inScopeWithIdentifier:(id)identifier;
- (BOOL)hasChangesWithPriorityLowerThanPriority:(unint64_t)priority inScopeWithIdentifier:(id)identifier;
- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (BOOL)hasChangesWithScopeFilter:(id)filter;
- (BOOL)hasSomeChangeWithScopedIdentifier:(id)identifier;
- (BOOL)initializeStorage;
- (BOOL)isEmpty;
- (BOOL)reinjectChange:(id)change dequeueOrder:(int64_t)order discardedUploadIdentifier:(id *)identifier overwrittenRecord:(BOOL *)record error:(id *)error;
- (BOOL)resetPriorityForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count hasMore:(BOOL *)more error:(id *)error;
- (BOOL)storeChange:(id)change pushContext:(id)context discardedUploadIdentifier:(id *)identifier error:(id *)error;
- (BOOL)storeExtractedBatch:(id)batch error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequelitePushRepository)initWithAbstractObject:(id)object;
- (id)_allChangesWithScopeIdentifier:(id)identifier scopeIndex:(int64_t)index ordered:(BOOL)ordered table:(id)table query:(id)query;
- (id)_injectionForChangeType:(unint64_t)type;
- (id)_pqlChangeWithScopedIdentifier:(id)identifier;
- (id)_scopedIdentifierForIdentifier:(id)identifier scopeIndex:(int64_t)index;
- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier;
- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier table:(id)table;
- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier changeType:(unint64_t)type table:(id)table;
- (id)allChangesWithClass:(Class)class secondaryScopedIdentifier:(id)identifier table:(id)table;
- (id)allChangesWithScopeIdentifier:(id)identifier;
- (id)allChangesWithScopeIdentifier:(id)identifier table:(id)table;
- (id)allNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier table:(id)table;
- (id)changeWithScopedIdentifier:(id)identifier;
- (id)checkOutBatchStorageWithPriority:(unint64_t)priority error:(id *)error;
- (id)contributorsUpdatesForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count;
- (id)countPerFlagsForScopeWithIdentifier:(id)identifier;
- (id)scopedIdentifiersForChangesWithFlag:(int64_t)flag forScopeWithIdentifier:(id)identifier;
- (id)status;
- (id)statusDictionary;
- (id)statusPerScopeIndex;
- (int64_t)_scopeIndexForScopeIdentifier:(id)identifier;
- (int64_t)_scopeIndexForScopedIdentifier:(id)identifier;
- (unint64_t)countOfChangesInScopeWithIdentifier:(id)identifier;
- (unint64_t)minimumPriorityForChangesInScopeWithIdentifier:(id)identifier;
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
    abstractObject = [(CPLPrequelitePushRepository *)self abstractObject];
    engineStore = [abstractObject engineStore];
    engineLibrary = [engineStore engineLibrary];
    [engineLibrary notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged];

    BYTE4(self->_cachedExtractedBatch) = 0;
  }
}

- (CPLPrequelitePushRepository)initWithAbstractObject:(id)object
{
  v10.receiver = self;
  v10.super_class = CPLPrequelitePushRepository;
  v3 = [(CPLPrequeliteStorage *)&v10 initWithAbstractObject:object];
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

- (BOOL)_createIndexForFlags:(int64_t)flags
{
  v5 = objc_autoreleasePoolPush();
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  flags = [[NSString alloc] initWithFormat:@"flags%ld", flags];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [CPLPrequeliteVariable indexVariableForVariableWithName:flags forTable:mainTable];

  flags2 = [[NSString alloc] initWithFormat:@"(flags & %ld) != 0", flags];
  v12 = [PQLRawInjection alloc];
  v13 = [flags2 dataUsingEncoding:4];
  v14 = [v12 initWithData:v13];

  mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
  LOBYTE(v13) = [pqlConnection cplExecute:{@"CREATE INDEX IF NOT EXISTS %@ ON %@ (scopeIndex, flags) WHERE %@", v10, mainTable2, v14}];

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

- (BOOL)_createIndexesWithPriority:(BOOL)priority
{
  BYTE4(self->_batchStoragesPerPriority) = priority;
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
  initializeStorage = [(CPLPrequeliteStorage *)&v6 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"class TEXT NOT NULL error:scopeIndex INTEGER NOT NULL, identifier TEXT NOT NULL, changeType INTEGER NOT NULL, relatedIdentifier TEXT, secondaryIdentifier TEXT, dequeueOrder INTEGER NOT NULL, trashed INTEGER NOT NULL, uploadIdentifier TEXT, flags INTEGER NOT NULL DEFAULT 0, priority INTEGER NOT NULL DEFAULT 0, trustLevel INTEGER NOT NULL DEFAULT 0, serializedRecord DATA", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequelitePushRepository *)self _createIndexesWithPriority:0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequelitePushRepository *)self _createIndexesWithPriority:1];
        if (initializeStorage)
        {
          v4 = *(&self->_injectionPerChangeType + 4);
          if (!v4 || (initializeStorage = [(CPLPrequeliteStorage *)self createVariable:v4 defaultValue:0 error:0]))
          {
            LOBYTE(initializeStorage) = [(CPLPrequelitePushRepository *)self _createFlagsIndexes];
          }
        }
      }
    }
  }

  return initializeStorage;
}

- (BOOL)fixStorageAfterAnyVersionChange
{
  v5.receiver = self;
  v5.super_class = CPLPrequelitePushRepository;
  fixStorageAfterAnyVersionChange = [(CPLPrequeliteStorage *)&v5 fixStorageAfterAnyVersionChange];
  if (fixStorageAfterAnyVersionChange)
  {
    LOBYTE(fixStorageAfterAnyVersionChange) = [(CPLPrequelitePushRepository *)self _createFlagsIndexes];
  }

  return fixStorageAfterAnyVersionChange;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v25.receiver = self;
  v25.super_class = CPLPrequelitePushRepository;
  if (![(CPLPrequeliteStorage *)&v25 upgradeStorageToVersion:?])
  {
    return 0;
  }

  v5 = 1;
  if (version > 57)
  {
    if (version <= 74)
    {
      if (version == 58)
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

      if (version != 63 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      sub_1001C3F28(self, &v26);
    }

    else if (version == 75)
    {
      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      sub_1001C3DD8();
    }

    else
    {
      if (version != 83)
      {
        if (version != 84 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
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

  if (version <= 38)
  {
    if (version == 31)
    {
      return [(CPLPrequeliteStorage *)self createStorage];
    }

    if (version != 32 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v5;
    }

    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v20 = [pqStore2 tableHasRecords:mainTable];

    if (v20)
    {
      pqStore3 = [(CPLPrequeliteStorage *)self pqStore];
      [pqStore3 recordUpgradeEvent:@"Adding trust level column will mark all existing changes as un-trustable"];
    }

    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    v5 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN trustLevel INTEGER DEFAULT 2", mainTable2}];

LABEL_25:
    return v5;
  }

  switch(version)
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

        storedExtractedBatch = [(CPLPrequelitePushRepository *)self storedExtractedBatch];
        pqlConnection = storedExtractedBatch;
        if (storedExtractedBatch)
        {
          [storedExtractedBatch forceScopeIndexOnAllRecordsTo:1];
          v5 = [(CPLPrequelitePushRepository *)self storeExtractedBatch:pqlConnection error:0];
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
      pqStore4 = [(CPLPrequeliteStorage *)self pqStore];
      mainTable3 = [(CPLPrequeliteStorage *)self mainTable];
      v8 = [pqStore4 tableHasRecords:mainTable3];

      if (v8)
      {
        pqStore5 = [(CPLPrequeliteStorage *)self pqStore];
        abstractObject = [pqStore5 abstractObject];
        scopes = [abstractObject scopes];
        platformObject = [scopes platformObject];

        v5 = [platformObject forcePushToTransportForActiveScopesWithError:0];
      }

      else
      {
        return 1;
      }

      break;
  }

  return v5;
}

- (id)_scopedIdentifierForIdentifier:(id)identifier scopeIndex:(int64_t)index
{
  identifierCopy = identifier;
  abstractObject = [(CPLPrequelitePushRepository *)self abstractObject];
  scopeType = [abstractObject scopeType];

  v9 = 0;
  if (scopeType > 1)
  {
    if (scopeType == 2)
    {
      v10 = [(CPLPrequeliteStorage *)self scopedIdentifierForCloudIdentifier:identifierCopy scopeIndex:index];
      goto LABEL_6;
    }

    if (scopeType == 3)
    {
LABEL_13:
      sub_1001C4240();
    }
  }

  else
  {
    if (scopeType == 1)
    {
      v10 = [(CPLPrequeliteStorage *)self scopedIdentifierForLocalIdentifier:identifierCopy scopeIndex:index];
LABEL_6:
      v9 = v10;
      goto LABEL_7;
    }

    if (!scopeType)
    {
      goto LABEL_13;
    }
  }

LABEL_7:

  return v9;
}

- (int64_t)_scopeIndexForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  abstractObject = [(CPLPrequelitePushRepository *)self abstractObject];
  scopeType = [abstractObject scopeType];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (scopeType > 1)
  {
    if (scopeType == 2)
    {
      v8 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:identifierCopy];
      goto LABEL_6;
    }

    if (scopeType != 3)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_1001C42B4();
  }

  if (scopeType != 1)
  {
    if (scopeType)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v8 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifierCopy];
LABEL_6:
  v7 = v8;
LABEL_7:

  return v7;
}

- (int64_t)_scopeIndexForScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  abstractObject = [(CPLPrequelitePushRepository *)self abstractObject];
  scopeType = [abstractObject scopeType];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (scopeType > 1)
  {
    if (scopeType == 2)
    {
      v8 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
      goto LABEL_6;
    }

    if (scopeType != 3)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_1001C4328();
  }

  if (scopeType != 1)
  {
    if (scopeType)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v8 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:identifierCopy];
LABEL_6:
  v7 = v8;
LABEL_7:

  return v7;
}

- (unint64_t)countOfChangesInScopeWithIdentifier:(id)identifier
{
  v4 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld", v6];
  v10 = [pqStore table:mainTable countOfRecordsMatchingQuery:v9];

  return v10;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier table:(id)table
{
  tableCopy = table;
  v7 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifier];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld", v9];
    v8 = [pqStore table:tableCopy hasRecordsMatchingQuery:v11];
  }

  return v8;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  LOBYTE(self) = [(CPLPrequelitePushRepository *)self hasChangesInScopeWithIdentifier:identifierCopy table:mainTable];

  return self;
}

- (unint64_t)minimumPriorityForChangesInScopeWithIdentifier:(id)identifier
{
  v4 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifier];
  unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v9 = objc_opt_class();
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v11 = [pqlConnection cplFetchObjectOfClass:v9 sql:{@"SELECT priority FROM %@ where scopeIndex = %ld ORDER BY priority LIMIT 1", mainTable, v6}];

    if (v11)
    {
      unsignedIntegerValue = [v11 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return unsignedIntegerValue;
}

- (BOOL)hasChangesWithPriorityLowerThanPriority:(unint64_t)priority inScopeWithIdentifier:(id)identifier
{
  v6 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifier];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v6;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v11 = [PQLFormatInjection formatInjection:@"priority < %lu AND scopeIndex = %ld", priority, v8];
  LOBYTE(v8) = [pqStore table:mainTable hasRecordsMatchingQuery:v11];

  return v8;
}

- (BOOL)hasChangesWithPriorityGreaterThanPriority:(unint64_t)priority inScopeWithIdentifier:(id)identifier
{
  v6 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifier];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v6;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v11 = [PQLFormatInjection formatInjection:@"priority > %lu AND scopeIndex = %ld", priority, v8];
  LOBYTE(v8) = [pqStore table:mainTable hasRecordsMatchingQuery:v11];

  return v8;
}

- (BOOL)hasChangesWithScopeFilter:(id)filter
{
  filterCopy = filter;
  if (![(CPLPrequelitePushRepository *)self isEmpty])
  {
    v6 = filterCopy;
    includedScopeIdentifiers = [v6 includedScopeIdentifiers];

    if (includedScopeIdentifiers)
    {
      localIndexes = [v6 localIndexes];
      v9 = [localIndexes count];

      if (!v9)
      {
        v5 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      excludedScopeIdentifiers = [v6 excludedScopeIdentifiers];

      if (excludedScopeIdentifiers)
      {
        localIndexes2 = [v6 localIndexes];
        v12 = [localIndexes2 count];

        if (!v12)
        {
          v5 = 1;
          goto LABEL_9;
        }
      }
    }

    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    localIndexesInjection = [v6 localIndexesInjection];
    v5 = [pqStore table:mainTable hasRecordsMatchingQuery:localIndexesInjection];

    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)_pqlChangeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C439C(a2, self, identifierCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v8 = objc_opt_class();
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  scopeIndex = [identifierCopy scopeIndex];
  identifier = [identifierCopy identifier];
  v12 = [pqlConnection cplFetchObjectOfClass:v8 sql:{@"SELECT class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, scopeIndex, identifier}];

  return v12;
}

- (BOOL)_storeChange:(id)change update:(BOOL)update error:(id *)error
{
  updateCopy = update;
  changeCopy = change;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  if (updateCopy)
  {
    if (sub_1001C4468(changeCopy == 0, changeCopy, pqlConnection, mainTable))
    {
      v12 = 1;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v37 = mainTable;
  if (changeCopy)
  {
    v36 = NSStringFromClass(*(changeCopy + 3));
    v32 = *(changeCopy + 4);
    v27 = *(changeCopy + 5);
    v31 = changeCopy[12];
    v13 = *(changeCopy + 7);
    v34 = *(changeCopy + 8);
    v30 = *(changeCopy + 8);
    v14 = *(changeCopy + 10);
    v28 = *(changeCopy + 9);
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
  uploadIdentifier = [v29 uploadIdentifier];
  if (changeCopy)
  {
    v16 = *(changeCopy + 10);
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  flags = [v26 flags];
  if (changeCopy)
  {
    v18 = *(changeCopy + 10);
  }

  else
  {
    v18 = 0;
  }

  v35 = pqlConnection;
  v19 = v18;
  priority = [v19 priority];
  if (changeCopy)
  {
    v21 = changeCopy[3];
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_1001C3044(changeCopy);
  v25 = v21;
  pqlConnection = v35;
  v33 = [v35 cplExecute:{@"INSERT INTO %@ (class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord) VALUES (%@, %ld, %@, %i, %@, %@, %ld, %i, %@, %ld, %lu, %i, %@)", v37, v36, v32, v27, v31, v13, v34, v28, v30, uploadIdentifier, flags, priority, v25, v22}];

  if ((v33 & 1) == 0)
  {
LABEL_17:
    if (error)
    {
      [pqlConnection lastCPLError];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_20;
  }

  if (changeCopy)
  {
    v23 = *(changeCopy + 10);
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

- (BOOL)storeChange:(id)change pushContext:(id)context discardedUploadIdentifier:(id *)identifier error:(id *)error
{
  changeCopy = change;
  contextCopy = context;
  scopedIdentifier = [changeCopy scopedIdentifier];
  if ([(CPLPrequelitePushRepository *)self _scopeIndexForScopedIdentifier:scopedIdentifier]== 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:scopedIdentifier];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = [(CPLPrequelitePushRepository *)self _pqlChangeWithScopedIdentifier:scopedIdentifier];
    v15 = sub_100174900([CPLPrequelitePushedChange alloc], changeCopy, contextCopy);
    if (v14)
    {
      v16 = [(CPLPrequelitePushRepository *)self _mergeChange:v15 overChange:v14 discardedUploadIdentifier:identifier error:error];
    }

    else
    {
      v16 = [(CPLPrequelitePushRepository *)self _storeChange:v15 update:0 error:error];
    }

    v13 = v16;
  }

  return v13;
}

- (BOOL)_overwriteChange:(id)change pushContext:(id)context error:(id *)error
{
  changeCopy = change;
  contextCopy = context;
  scopedIdentifier = [changeCopy scopedIdentifier];
  if ([(CPLPrequelitePushRepository *)self _scopeIndexForScopedIdentifier:scopedIdentifier]== 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:scopedIdentifier];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = sub_100174900([CPLPrequelitePushedChange alloc], changeCopy, contextCopy);
    v11 = [(CPLPrequelitePushRepository *)self _storeChange:v12 update:1 error:error];
  }

  return v11;
}

- (BOOL)reinjectChange:(id)change dequeueOrder:(int64_t)order discardedUploadIdentifier:(id *)identifier overwrittenRecord:(BOOL *)record error:(id *)error
{
  changeCopy = change;
  scopedIdentifier = [changeCopy scopedIdentifier];
  scopeIndex = [scopedIdentifier scopeIndex];

  if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C4658(a2, self, changeCopy);
  }

  scopedIdentifier2 = [changeCopy scopedIdentifier];
  v17 = [(CPLPrequelitePushRepository *)self _pqlChangeWithScopedIdentifier:scopedIdentifier2];

  *record = v17 != 0;
  v18 = [CPLPrequelitePushedChange alloc];
  _pushContext = [changeCopy _pushContext];
  v20 = sub_100174900(v18, changeCopy, _pushContext);

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

    if (v20[9] < order)
    {
      v20[9] = order;
    }

LABEL_9:
    v22 = [(CPLPrequelitePushRepository *)self _storeChange:v20 update:0 error:error];
    goto LABEL_10;
  }

  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_6:
  v22 = [(CPLPrequelitePushRepository *)self _mergeChange:v17 overChange:v20 discardedUploadIdentifier:identifier error:error];
LABEL_10:
  v23 = v22;

  return v23;
}

- (BOOL)deleteChangeWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ([identifierCopy scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C4724(a2, self, identifierCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  scopeIndex = [identifierCopy scopeIndex];
  identifier = [identifierCopy identifier];
  v13 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, scopeIndex, identifier}];

  if (v13)
  {
    BYTE4(self->_cachedExtractedBatch) = 1;
  }

  else if (error)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v13;
}

- (BOOL)deleteChangeWithScopedIdentifier:(id)identifier discardedUploadIdentifier:(id *)uploadIdentifier error:(id *)error
{
  identifierCopy = identifier;
  if ([identifierCopy scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C4824(a2, self, identifierCopy);
  }

  v9 = [(CPLPrequelitePushRepository *)self _pqlChangeWithScopedIdentifier:identifierCopy];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 80);
    uploadIdentifier = [v11 uploadIdentifier];
    v13 = uploadIdentifier;

    *uploadIdentifier = uploadIdentifier;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    scopeIndex = [identifierCopy scopeIndex];
    identifier = [identifierCopy identifier];
    v19 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, scopeIndex, identifier}];

    if (v19)
    {
      BYTE4(self->_cachedExtractedBatch) = 1;
    }
  }

  else
  {
    sub_1001C47F0(uploadIdentifier);
    LOBYTE(v19) = 1;
  }

  return v19;
}

- (BOOL)hasSomeChangeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C48F0(a2, self, identifierCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  scopeIndex = [identifierCopy scopeIndex];
  identifier = [identifierCopy identifier];
  v10 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND identifier = %@", scopeIndex, identifier];
  LOBYTE(scopeIndex) = [pqStore table:mainTable hasRecordsMatchingQuery:v10];

  return scopeIndex;
}

- (BOOL)deleteAllChangesWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplExecute:{@"DELETE FROM %@", mainTable}];

  if (error && (v8 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v8;
}

- (BOOL)storeExtractedBatch:(id)batch error:(id *)error
{
  batchCopy = batch;
  if (!*(&self->_injectionPerChangeType + 4))
  {
    sub_1001C4A88(self, a2, v9, v10, v11, v12, v13, v14, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  }

  v15 = batchCopy;
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
  objc_storeStrong((&self->_hasCachedExtractedBatch + 4), batch);
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

    if (error)
    {
      v22 = v20;
      *error = v20;
    }
  }

  return v19;
}

- (BOOL)resetPriorityForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count hasMore:(BOOL *)more error:(id *)error
{
  identifierCopy = identifier;
  *more = 0;
  v11 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifierCopy];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v13 = v11;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [pqlConnection cplExecute:{@"UPDATE %@ SET priority = 0 WHERE priority != 0 AND scopeIndex = %ld LIMIT %lu", mainTable, v13, count}];

    if (v12)
    {
      changes = [pqlConnection changes];
      if (changes >= 1)
      {
        sub_1001C4DC8(identifierCopy, changes, more);
      }
    }

    else if (error)
    {
      *error = [pqlConnection lastError];
    }
  }

  return v12;
}

- (id)changeWithScopedIdentifier:(id)identifier
{
  v4 = [(CPLPrequelitePushRepository *)self _pqlChangeWithScopedIdentifier:identifier];
  v5 = sub_100174A2C(v4, self);

  return v5;
}

- (id)_allChangesWithScopeIdentifier:(id)identifier scopeIndex:(int64_t)index ordered:(BOOL)ordered table:(id)table query:(id)query
{
  orderedCopy = ordered;
  identifierCopy = identifier;
  tableCopy = table;
  queryCopy = query;
  if (index == 0x7FFFFFFFFFFFFFFFLL && (index = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifierCopy], index == 0x7FFFFFFFFFFFFFFFLL))
  {
    v15 = &__NSArray0__struct;
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    if (orderedCopy)
    {
      v18 = @"SELECT class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE %@ AND scopeIndex = %ld ORDER BY dequeueOrder DESC, rowID DESC";
    }

    else
    {
      v18 = @"SELECT class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE %@ AND scopeIndex = %ld";
    }

    v19 = [pqlConnection cplFetch:{v18, tableCopy, queryCopy, index}];
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

- (id)_injectionForChangeType:(unint64_t)type
{
  v5 = *(&self->super._shouldUpgradeSchema + 1);
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    if ((type & 0xFFFFFFFFFFFFFBFFLL) != 0)
    {
      [PQLFormatInjection formatInjection:@"((changeType & %i) = %i) OR (changeType = %i)", type, type, 0];
    }

    else
    {
      [PQLFormatInjection formatInjection:@"changeType = %i", type, v11, v12];
    }
    v7 = ;
    v8 = *(&self->super._shouldUpgradeSchema + 1);
    v9 = [NSNumber numberWithUnsignedInteger:type];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier changeType:(unint64_t)type table:(id)table
{
  tableCopy = table;
  identifierCopy = identifier;
  v12 = NSStringFromClass(class);
  v13 = [(CPLPrequelitePushRepository *)self _injectionForChangeType:type];
  v14 = [PQLFormatInjection formatInjection:@"class = %@ AND (%@)", v12, v13];
  v15 = [(CPLPrequelitePushRepository *)self _allChangesWithScopeIdentifier:identifierCopy scopeIndex:0x7FFFFFFFFFFFFFFFLL ordered:1 table:tableCopy query:v14];

  return v15;
}

- (id)allNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier table:(id)table
{
  tableCopy = table;
  identifierCopy = identifier;
  v10 = NSStringFromClass(class);
  1024 = [PQLFormatInjection formatInjection:@"class = %@ AND changeType != %i", v10, 1024];
  v12 = [(CPLPrequelitePushRepository *)self _allChangesWithScopeIdentifier:identifierCopy scopeIndex:0x7FFFFFFFFFFFFFFFLL ordered:1 table:tableCopy query:1024];

  return v12;
}

- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier table:(id)table
{
  identifierCopy = identifier;
  tableCopy = table;
  if ([identifierCopy scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C4EA0(a2, self, identifierCopy);
  }

  scopeIdentifier = [identifierCopy scopeIdentifier];
  scopeIndex = [identifierCopy scopeIndex];
  v13 = NSStringFromClass(class);
  identifier = [identifierCopy identifier];
  v15 = [PQLFormatInjection formatInjection:@"class = %@ AND relatedIdentifier = %@", v13, identifier];
  v16 = [(CPLPrequelitePushRepository *)self _allChangesWithScopeIdentifier:scopeIdentifier scopeIndex:scopeIndex ordered:0 table:tableCopy query:v15];

  return v16;
}

- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [(CPLPrequelitePushRepository *)self allChangesWithClass:class relatedScopedIdentifier:identifierCopy table:mainTable];

  return v8;
}

- (id)allChangesWithClass:(Class)class secondaryScopedIdentifier:(id)identifier table:(id)table
{
  identifierCopy = identifier;
  tableCopy = table;
  if ([identifierCopy scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C4F6C(a2, self, identifierCopy);
  }

  scopeIdentifier = [identifierCopy scopeIdentifier];
  scopeIndex = [identifierCopy scopeIndex];
  v13 = NSStringFromClass(class);
  identifier = [identifierCopy identifier];
  v15 = [PQLFormatInjection formatInjection:@"class = %@ AND secondaryIdentifier = %@", v13, identifier];
  v16 = [(CPLPrequelitePushRepository *)self _allChangesWithScopeIdentifier:scopeIdentifier scopeIndex:scopeIndex ordered:0 table:tableCopy query:v15];

  return v16;
}

- (id)allChangesWithScopeIdentifier:(id)identifier table:(id)table
{
  tableCopy = table;
  v7 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifier];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = &__NSArray0__struct;
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v12 = [pqlConnection cplFetch:{@"SELECT class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE scopeIndex = %ldORDER BY dequeueOrder DESC, rowID DESC", tableCopy, v9}];
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

- (id)allChangesWithScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [(CPLPrequelitePushRepository *)self allChangesWithScopeIdentifier:identifierCopy table:mainTable];

  return v6;
}

- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  if ([identifierCopy scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C5038(a2, self, identifierCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v10 = NSStringFromClass(class);
  scopeIndex = [identifierCopy scopeIndex];
  identifier = [identifierCopy identifier];
  v13 = [PQLFormatInjection formatInjection:@"class = %@ AND scopeIndex = %ld AND relatedIdentifier = %@", v10, scopeIndex, identifier];
  LOBYTE(scopeIndex) = [pqStore table:mainTable hasRecordsMatchingQuery:v13];

  return scopeIndex;
}

- (BOOL)hasAnyChangeWithRelatedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C5104(a2, self, identifierCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  scopeIndex = [identifierCopy scopeIndex];
  identifier = [identifierCopy identifier];
  v10 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND relatedIdentifier = %@", scopeIndex, identifier];
  if ([pqStore table:mainTable hasRecordsMatchingQuery:v10])
  {
    v11 = 1;
  }

  else
  {
    scopeIndex2 = [identifierCopy scopeIndex];
    identifier2 = [identifierCopy identifier];
    v14 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND secondaryIdentifier = %@", scopeIndex2, identifier2];
    v11 = [pqStore table:mainTable hasRecordsMatchingQuery:v14];
  }

  return v11;
}

- (id)status
{
  v38.receiver = self;
  v38.super_class = CPLPrequelitePushRepository;
  status = [(CPLPrequeliteStorage *)&v38 status];
  v4 = [status mutableCopy];

  v5 = objc_alloc_init(NSMutableDictionary);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  selfCopy = self;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v33 = pqlConnection;
  v9 = [pqlConnection cplFetch:{@"SELECT class, changeType, trashed, count(*) FROM %@ GROUP BY class, changeType, trashed", mainTable}];

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
  allKeys = [v5 allKeys];
  v17 = [allKeys sortedArrayUsingSelector:"compare:"];

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

  if (*(&selfCopy->_injectionPerChangeType + 4))
  {
    storedExtractedBatch = [(CPLPrequelitePushRepository *)selfCopy storedExtractedBatch];
    if (storedExtractedBatch)
    {
      v25 = [[CPLPrequelitePushRepositoryBatchStorage alloc] initWithPushRepository:selfCopy priority:-1];
      v26 = [storedExtractedBatch effectiveResourceSizeToUploadUsingStorage:v25];
      batch = [storedExtractedBatch batch];
      summaryDescription = [batch summaryDescription];
      v29 = summaryDescription;
      if (v26)
      {
        v30 = [NSByteCountFormatter stringFromByteCount:v26 countStyle:1];
        [v4 appendFormat:@"\nCurrent extracted batch:\n\t%@ %@", v29, v30];
      }

      else
      {
        [v4 appendFormat:@"\nCurrent extracted batch:\n\t%@", summaryDescription];
      }
    }
  }

  return v4;
}

- (id)statusDictionary
{
  v30.receiver = self;
  v30.super_class = CPLPrequelitePushRepository;
  statusDictionary = [(CPLPrequeliteStorage *)&v30 statusDictionary];
  v4 = [statusDictionary mutableCopy];

  v5 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v5 forKeyedSubscript:@"changes"];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100178138;
  v28[3] = &unk_10027B8F0;
  v8 = v5;
  v29 = v8;
  [pqStore table:mainTable enumerateCountGroupedByProperty:@"class" block:v28];

  if (*(&self->_injectionPerChangeType + 4))
  {
    storedExtractedBatch = [(CPLPrequelitePushRepository *)self storedExtractedBatch];
    if (storedExtractedBatch)
    {
      v23 = v8;
      v10 = objc_alloc_init(NSMutableDictionary);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      batch = [storedExtractedBatch batch];
      v12 = [batch countByEnumeratingWithState:&v24 objects:v31 count:16];
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
              objc_enumerationMutation(batch);
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

          v13 = [batch countByEnumeratingWithState:&v24 objects:v31 count:16];
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
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v38 = objc_alloc_init(NSMutableDictionary);
  selfCopy = self;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v37 = pqlConnection;
  v6 = [pqlConnection cplFetch:{@"SELECT scopeIndex, class, changeType, trashed, count(*) FROM %@ GROUP BY scopeIndex, class, changeType, trashed", mainTable}];

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
  v18 = pqlConnection;
  if (*(&selfCopy->_injectionPerChangeType + 4))
  {
    storedExtractedBatch = [(CPLPrequelitePushRepository *)selfCopy storedExtractedBatch];
    if (storedExtractedBatch)
    {
      v20 = objc_alloc_init(NSMutableDictionary);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v35 = storedExtractedBatch;
      batch = [storedExtractedBatch batch];
      v22 = [batch countByEnumeratingWithState:&v42 objects:v48 count:16];
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
              objc_enumerationMutation(batch);
            }

            v26 = *(*(&v42 + 1) + 8 * i);
            scopedIdentifier = [v26 scopedIdentifier];
            scopeIdentifier = [scopedIdentifier scopeIdentifier];

            v29 = [v20 objectForKeyedSubscript:scopeIdentifier];
            if (!v29)
            {
              v29 = objc_alloc_init(CPLChangeBatch);
              [v20 setObject:v29 forKeyedSubscript:scopeIdentifier];
            }

            [v29 addRecord:v26];
          }

          v23 = [batch countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v23);
      }

      abstractObject = [(CPLPrequelitePushRepository *)selfCopy abstractObject];
      engineStore = [abstractObject engineStore];
      scopes = [engineStore scopes];

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100178848;
      v39[3] = &unk_10027BD18;
      v40 = scopes;
      v41 = v17;
      v33 = scopes;
      [v20 enumerateKeysAndObjectsUsingBlock:v39];

      v18 = v37;
      storedExtractedBatch = v35;
    }
  }

  return v17;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount discardedUploadIdentifiers:(id *)identifiers error:(id *)error
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  if (count >= 100)
  {
    countCopy = 100;
  }

  else
  {
    countCopy = count;
  }

  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_alloc_init(NSMutableIndexSet);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v17 = [pqlConnection cplFetch:{@"SELECT rowID, uploadIdentifier FROM %@ WHERE scopeIndex = %ld LIMIT %ld", mainTable, index, countCopy}];
  while (1)
  {

    if (![v17 next])
    {
      break;
    }

    [v13 addIndex:{objc_msgSend(v17, "integerAtIndex:", 0)}];
    mainTable = [v17 stringAtIndex:1];
    if (mainTable)
    {
      [v12 addObject:mainTable];
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
      v26 = pqlConnection;
      v36 = v26;
      selfCopy = self;
      [v13 enumerateIndexesUsingBlock:v35];
      if (error && (v40[3] & 1) == 0)
      {
        *error = [v26 lastError];
      }

      if (v40[3])
      {
        *deletedCount = [v13 count];
        v27 = v12;
        *identifiers = v12;
        if (*deletedCount >= 1)
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
        error = [v17 error];
        lastError = error;
        if (!error)
        {
          lastError = [pqlConnection lastError];
        }

        *buf = 134218242;
        indexCopy = index;
        v45 = 2112;
        v46 = lastError;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Enumerating records to delete for scope index %ld failed: %@", buf, 0x16u);
        if (!error)
        {
        }
      }
    }

    if (error)
    {
      error2 = [v17 error];
      v24 = error2;
      if (error2)
      {
        v25 = error2;
        *error = v24;
      }

      else
      {
        lastError2 = [pqlConnection lastError];
        v29 = lastError2;
        if (lastError2)
        {
          v30 = lastError2;
          *error = v29;
        }

        else
        {
          v31 = +[CPLErrors unknownError];
          *error = v31;
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
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableHasRecords:mainTable];

  return v5 ^ 1;
}

- (BOOL)getRelatedScopedIdentifier:(id *)identifier forRecordWithScopedIdentifier:(id)scopedIdentifier
{
  scopedIdentifierCopy = scopedIdentifier;
  if ([scopedIdentifierCopy scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C51D0(a2, self, scopedIdentifierCopy);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100179050;
  v19[3] = &unk_10027BD40;
  v19[4] = &v20;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  scopeIndex = [scopedIdentifierCopy scopeIndex];
  identifier = [scopedIdentifierCopy identifier];
  v13 = [pqlConnection cplFetchObject:v19 sql:{@"SELECT relatedIdentifier FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, scopeIndex, identifier}];

  if (*(v21 + 24) != 1 || (+[NSNull null], v14 = objc_claimAutoreleasedReturnValue(), v14, v13 == v14))
  {
    *identifier = 0;
  }

  else
  {
    v15 = [CPLScopedIdentifier alloc];
    scopeIdentifier = [scopedIdentifierCopy scopeIdentifier];
    *identifier = [v15 initWithScopeIdentifier:scopeIdentifier identifier:v13 scopeIndex:{objc_msgSend(scopedIdentifierCopy, "scopeIndex")}];
  }

  v17 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v17;
}

- (id)countPerFlagsForScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifierCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &__NSDictionary0__struct;
  }

  else
  {
    v7 = v5;
    v8 = objc_alloc_init(NSMutableDictionary);
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [pqlConnection cplFetch:{@"SELECT flags, COUNT(flags) FROM %@ WHERE scopeIndex = %ld AND flags != 0", mainTable, v7}];

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

    storedExtractedBatch = [(CPLPrequelitePushRepository *)self storedExtractedBatch];
    if (storedExtractedBatch)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1001792E0;
      v18[3] = &unk_10027BD68;
      v19 = identifierCopy;
      v20 = pqlConnection;
      selfCopy = self;
      v23 = v7;
      v22 = v8;
      [storedExtractedBatch enumeratePushContextsWithBlock:v18];
    }

    v6 = [v8 copy];
  }

  return v6;
}

- (id)scopedIdentifiersForChangesWithFlag:(int64_t)flag forScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = &__NSArray0__struct;
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v13 = mainTable;
    if (flag)
    {
      v14 = [pqlConnection cplFetch:{@"SELECT identifier FROM %@ WHERE scopeIndex = %ld AND (flags & %ld) != 0", mainTable, v9, flag}];
    }

    else
    {
      v14 = [pqlConnection cplFetch:{@"SELECT identifier FROM %@ WHERE scopeIndex = %ld AND flags = 0", mainTable, v9, v18}];
    }

    v15 = v14;

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100179694;
    v19[3] = &unk_10027B9D8;
    v20 = identifierCopy;
    v21 = v9;
    v16 = [v15 enumerateObjects:v19];
    v8 = [[CPLMapEnumerator alloc] initWithEnumerator:v16];
  }

  return v8;
}

- (BOOL)deleteSharingFlagsWithMaxCount:(unint64_t)count deletedCount:(unint64_t *)deletedCount error:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v12 = [pqlConnection cplExecute:{@"UPDATE %@ SET flags = flags & %ld WHERE (flags & %ld) != 0 LIMIT %lu", mainTable, -4, 3, count}];

  if (v12)
  {
    *deletedCount = [pqlConnection changes];
  }

  else if (error)
  {
    *error = [pqlConnection lastError];
  }

  return v12;
}

- (id)contributorsUpdatesForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count
{
  identifierCopy = identifier;
  v7 = [[NSMutableArray alloc] initWithCapacity:count];
  v8 = [(CPLPrequelitePushRepository *)self _scopeIndexForScopeIdentifier:identifierCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = &__NSArray0__struct;
  }

  else
  {
    v10 = v8;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v14 = [pqlConnection cplFetch:{@"SELECT class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE (flags & %ld) != 0 AND scopeIndex = %ld LIMIT %lu", mainTable, 4, v10, count}];

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

- (BOOL)acknowledgeContributorsUpdates:(id)updates error:(id *)error
{
  updatesCopy = updates;
  selfCopy = self;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)selfCopy mainTable];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = updatesCopy;
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
      scopedIdentifier = [v10 scopedIdentifier];
      if ([scopedIdentifier scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_1001C5330(a2, selfCopy, scopedIdentifier);
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
      scopeIndex = [scopedIdentifier scopeIndex];
      identifier = [scopedIdentifier identifier];
      v15 = [pqlConnection cplFetchObject:v42 sql:{@"SELECT rowID, class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, scopeIndex, identifier}];

      v16 = +[NSNull null];
      LOBYTE(identifier) = v15 == v16;

      if ((identifier & 1) == 0)
      {
        break;
      }

      v22 = 1;
LABEL_22:

      _Block_object_dispose(&v43, 8);
      objc_autoreleasePoolPop(v11);
      if (!v22)
      {

        if (error)
        {
          v31 = v37;
          v32 = 0;
          *error = v37;
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

    v17 = sub_100174A2C(v15, selfCopy);
    updateSharingContributorUserIdentifiers = [v17 updateSharingContributorUserIdentifiers];
    updateSharingContributorUserIdentifiers2 = [v10 updateSharingContributorUserIdentifiers];
    v20 = updateSharingContributorUserIdentifiers2;
    if (updateSharingContributorUserIdentifiers && updateSharingContributorUserIdentifiers2)
    {
      v21 = [updateSharingContributorUserIdentifiers isEqual:updateSharingContributorUserIdentifiers2];

      if ((v21 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v23 = (updateSharingContributorUserIdentifiers | updateSharingContributorUserIdentifiers2) != 0;

      if (v23)
      {
LABEL_11:
        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_1001C52B0(v51, scopedIdentifier, &v52);
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
    flags = [v25 flags];

    mainTable2 = [(CPLPrequeliteStorage *)selfCopy mainTable];
    v28 = [pqlConnection cplExecute:{@"UPDATE %@ SET flags = %ld WHERE rowID = %lu", mainTable2, flags & 0xFFFFFFFFFFFFFFFBLL, v44[3]}];

    if ((v28 & 1) == 0)
    {
      lastError = [pqlConnection lastError];

      v22 = 0;
      v37 = lastError;
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

- (id)checkOutBatchStorageWithPriority:(unint64_t)priority error:(id *)error
{
  v7 = *(&self->_shouldNotifyFlagsCountChanges + 4);
  if (!v7)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = *(&self->_shouldNotifyFlagsCountChanges + 4);
    *(&self->_shouldNotifyFlagsCountChanges + 4) = v8;

    v7 = *(&self->_shouldNotifyFlagsCountChanges + 4);
  }

  v10 = [NSNumber numberWithUnsignedInteger:priority];
  v11 = [v7 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = [[CPLPrequelitePushRepositoryBatchStorage alloc] initWithPushRepository:self priority:priority];
    v12 = *(&self->_shouldNotifyFlagsCountChanges + 4);
    v13 = [NSNumber numberWithUnsignedInteger:priority];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }

  if ([(CPLPrequelitePushRepositoryBatchStorage *)v11 checkOutWithError:error])
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)checkInBatchStorage:(id)storage error:(id *)error
{
  storageCopy = storage;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001C54B8(a2, self, storageCopy);
  }

  pushRepository = [storageCopy pushRepository];

  if (pushRepository != self)
  {
    sub_1001C5584(a2, self, storageCopy);
  }

  v9 = [storageCopy checkInWithError:error];

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

- (BOOL)_mergeChange:(id)change overChange:(id)overChange discardedUploadIdentifier:(id *)identifier error:(id *)error
{
  changeCopy = change;
  overChangeCopy = overChange;
  v11 = overChangeCopy;
  if (changeCopy)
  {
    v12 = *(changeCopy + 3);
    if (overChangeCopy)
    {
LABEL_3:
      isa_high = HIDWORD(overChangeCopy[1].isa);
      goto LABEL_4;
    }
  }

  else
  {
    v12 = 0;
    if (overChangeCopy)
    {
      goto LABEL_3;
    }
  }

  isa_high = 0;
LABEL_4:
  v14 = (isa_high | v12) != 0;
  if (changeCopy)
  {
    v15 = changeCopy[10];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  uploadIdentifier = [v16 uploadIdentifier];
  if (v11)
  {
    isa = v11[10].isa;
  }

  else
  {
    isa = 0;
  }

  v19 = isa;
  uploadIdentifier2 = [v16 uploadIdentifier];
  if (uploadIdentifier2)
  {
  }

  else if (!changeCopy || changeCopy[6] != 1024)
  {
    uploadIdentifier3 = [(objc_class *)v19 uploadIdentifier];

    uploadIdentifier = uploadIdentifier3;
    goto LABEL_14;
  }

  *identifier = [(objc_class *)v19 uploadIdentifier];
LABEL_14:
  flags = [(objc_class *)v19 flags];
  if (changeCopy)
  {
    v23 = [v16 pushContextMergingFlags:flags changeType:changeCopy[6] uploadIdentifier:uploadIdentifier priority:{objc_msgSend(v16, "priority")}];
    sub_1001C31BC(changeCopy, v23);

    v24 = changeCopy[10];
  }

  else
  {
    v61 = [v16 pushContextMergingFlags:flags changeType:0 uploadIdentifier:uploadIdentifier priority:{objc_msgSend(v16, "priority")}];
    sub_1001C31BC(0, v61);

    v24 = 0;
  }

  v25 = v24;
  flags2 = [v25 flags];
  flags3 = [(objc_class *)v19 flags];

  selfCopy3 = self;
  if (flags2 != flags3)
  {
    BYTE4(self->_cachedExtractedBatch) = 1;
  }

  v29 = "PLPrequeliteResourceUploadQueue";
  if (v11 && v11[6].isa == 1024)
  {
    if (changeCopy)
    {
      if (changeCopy[6] == 2)
      {
        v30 = objc_opt_class();
        v41 = v30 == objc_opt_class();
        v29 = "@CPLPrequeliteResourceUploadQueue" + 3;
        if (v41)
        {
          changeCopy[6] = 0;
          [changeCopy[11] setChangeType:0];
          if ((_CPLSilentLogging & 1) == 0)
          {
            v31 = sub_1001749DC();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = sub_100174A2C(changeCopy, self);
              sub_10017AAB8();
              sub_1000139CC(&_mh_execute_header, v31, v33, "Got an update over a delete (automatically fixing it): %@", v65);

              v29 = "@CPLPrequeliteResourceUploadQueue" + 3;
            }

            selfCopy3 = self;
          }
        }
      }

LABEL_29:
      if ((changeCopy[6] | 0x400) == 0x400)
      {
LABEL_30:
        *(changeCopy + 3) = 2 * v14;
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
              v45 = sub_100174A2C(changeCopy, self);
              v46 = *(v43 + 413);
              sub_10017AAB8();
              sub_1000139CC(&_mh_execute_header, v11, v47, "Got an update over a delete: %@", v65);
            }
          }

          v48 = +[NSAssertionHandler currentHandler];
          v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
          v50 = sub_100174A2C(changeCopy, self);
          [v48 handleFailureInMethod:a2 object:self file:v49 lineNumber:697 description:{@"Got an update over a delete: %@", v50}];

          goto LABEL_52;
        }
      }

      else
      {
        v62 = 0;
      }

      v36 = sub_100174A2C(changeCopy, selfCopy3);
      if (v36)
      {
        v37 = v36;
        v38 = sub_100174A2C(v11, selfCopy3);
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
              sub_1000139CC(&_mh_execute_header, changeCopy, v57, "Invalid bottom change for %@", v65);
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
        sub_1001C30DC(changeCopy, v39);
        sub_1001C31AC(changeCopy, 0);
        v40 = changeCopy[6];
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

        changeCopy[6] = v42;

        selfCopy3 = self;
        goto LABEL_30;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v51 = sub_1001749DC();
        if (sub_10002B0A8(v51))
        {
          v52 = changeCopy[5];
          sub_10017AAB8();
          sub_1000139CC(&_mh_execute_header, v11, v53, "Invalid top change for %@", v65);
        }
      }

      v48 = +[NSAssertionHandler currentHandler];
      v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
      [v48 handleFailureInMethod:a2 object:self file:v49 lineNumber:700 description:{@"Invalid top change for %@", changeCopy[5]}];
LABEL_52:

      abort();
    }
  }

  else if (changeCopy)
  {
    goto LABEL_29;
  }

LABEL_31:
  v34 = [(CPLPrequelitePushRepository *)selfCopy3 _storeChange:changeCopy update:1 error:error];

  return v34;
}

@end