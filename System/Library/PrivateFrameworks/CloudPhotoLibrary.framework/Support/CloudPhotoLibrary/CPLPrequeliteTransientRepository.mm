@interface CPLPrequeliteTransientRepository
- (BOOL)_markChangesWithScopedIdentifiersAsMingled:(id)mingled error:(id *)error;
- (BOOL)deleteAllRecordsForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteMingledRecordsForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasMingledRecordsForScopeWithIdentifier:(id)identifier;
- (BOOL)hasOnlyMingledRecordsWithScopeIdentifier:(id)identifier;
- (BOOL)hasRecordWithScopedIdentifier:(id)identifier;
- (BOOL)hasStashedChangesForScopeWithIdentifier:(id)identifier;
- (BOOL)hasStashedRecordWithScopedIdentifier:(id)identifier;
- (BOOL)hasUnmingledChanges;
- (BOOL)hasUnmingledChangesForScope:(id)scope;
- (BOOL)hasUnmingledNonStashedRecordsForScopeWithIdentifier:(id)identifier;
- (BOOL)hasUnmingledOrStashedRecordsWithScopeFilter:(id)filter;
- (BOOL)initializeStorage;
- (BOOL)markUnmingledChangeWithScopedIdentifierAsMingled:(id)mingled error:(id *)error;
- (BOOL)popChangeBatchOfRemappedRecords:(id *)records scope:(id)scope maximumCount:(unint64_t)count error:(id *)error;
- (BOOL)resetMingledRecordsWithScopeFilter:(id)filter error:(id *)error;
- (BOOL)stashChangeWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)unstashRecordsForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count hasMore:(BOOL *)more unstashedCount:(unint64_t *)unstashedCount error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteTransientRepository)initWithAbstractObject:(id)object;
- (id)_allUnmingledChangesWithClass:(Class)class scopeIdentifier:(id)identifier maximumCount:(unint64_t)count;
- (id)_enumeratorForRecordsWithScopeIndex:(unint64_t)index maximumCount:(unint64_t)count;
- (id)allUnmingledChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier;
- (id)allUnmingledChangesWithScopeIdentifier:(id)identifier;
- (id)allUnmingledDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier;
- (id)allUnmingledNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier;
- (id)nextBatchOfRemappedRecordsInScope:(id)scope maximumCount:(unint64_t)count;
- (id)recordWithScopedIdentifier:(id)identifier;
- (id)status;
- (id)unmingledChangeWithScopedIdentifier:(id)identifier;
- (unint64_t)countOfStashedRecords;
- (unint64_t)countOfUnmingledRecords;
@end

@implementation CPLPrequeliteTransientRepository

- (CPLPrequeliteTransientRepository)initWithAbstractObject:(id)object
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteTransientRepository;
  v3 = [(CPLPrequeliteStorage *)&v10 initWithAbstractObject:object];
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 objectForKey:@"CPLIgnoredPulledIdentifiers"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 componentsSeparatedByString:{@", "}];

      v5 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_7:

        return v3;
      }
    }

    if (v5)
    {
      v7 = [[NSSet alloc] initWithArray:v5];
      v8 = *(v3 + 36);
      *(v3 + 36) = v7;

      goto LABEL_7;
    }
  }

  return v3;
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteTransientRepository;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"transientType INTEGER NOT NULL error:class TEXT NOT NULL, scopeIndex INTEGER NOT NULL, identifier TEXT NOT NULL, relatedIdentifier TEXT, mingled INTEGER NOT NULL, dequeueOrder INTEGER DEFAULT 0, serializedRecord DATA NOT NULL", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"scopeIndex unique:identifier" error:1, 0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier" withDefinition:@"scopeIndex unique:relatedIdentifier" error:0, 0];
        if (initializeStorage)
        {
          initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"pop" withDefinition:@"scopeIndex unique:mingled error:class, transientType", 0, 0];
          if (initializeStorage)
          {
            initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"class" withDefinition:@"class unique:scopeIndex" error:0, 0];
            if (initializeStorage)
            {
              LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexWithName:@"mingled" withDefinition:@"mingled unique:scopeIndex error:transientType", 0, 0];
            }
          }
        }
      }
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v9.receiver = self;
  v9.super_class = CPLPrequeliteTransientRepository;
  v5 = [(CPLPrequeliteStorage *)&v9 upgradeStorageToVersion:?];
  if (version == 19 || !v5)
  {
    return v5;
  }

  LOBYTE(v5) = 1;
  if (version > 58)
  {
    switch(version)
    {
      case ';':
        [(CPLPrequeliteStorage *)self shouldUpgradeSchema];
        goto LABEL_27;
      case 'E':
        if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          goto LABEL_27;
        }

        v6 = @"class";
        v7 = @"class, scopeIndex";
        break;
      case '^':
        if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          goto LABEL_27;
        }

        v5 = [(CPLPrequeliteStorage *)self dropIndexWithName:@"pop" error:0];
        if (!v5)
        {
          return v5;
        }

        v5 = [(CPLPrequeliteStorage *)self createIndexWithName:@"pop" withDefinition:@"scopeIndex unique:mingled error:class, transientType", 0, 0];
        if (!v5)
        {
          return v5;
        }

        v5 = [(CPLPrequeliteStorage *)self dropIndexWithName:@"mingled" error:0];
        if (!v5)
        {
          return v5;
        }

        v6 = @"mingled";
        v7 = @"mingled, scopeIndex, transientType";
        break;
      default:
        return v5;
    }

LABEL_26:
    LOBYTE(v5) = [(CPLPrequeliteStorage *)self createIndexWithName:v6 withDefinition:v7 unique:0 error:0];
    return v5;
  }

  if (version == 39)
  {
    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      LOBYTE(v5) = [(CPLPrequeliteStorage *)self recreateMainTableWithCopyInstructions:@"transientType oldFields:class error:scopeIndex, identifier, relatedIdentifier, mingled, dequeueOrder, serializedRecord", @"transientType, class, 1, identifier, relatedIdentifier, mingled, dequeueOrder, serializedRecord", 0];
      return v5;
    }

    goto LABEL_27;
  }

  if (version == 53)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      goto LABEL_27;
    }

    v5 = [(CPLPrequeliteStorage *)self dropIndexWithName:@"relatedIdentifier" error:0];
    if (!v5)
    {
      return v5;
    }

    v6 = @"relatedScopedIdentifier";
    v7 = @"scopeIndex, relatedIdentifier";
    goto LABEL_26;
  }

  if (version != 55)
  {
    return v5;
  }

  if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
LABEL_27:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = [(CPLPrequeliteStorage *)self dropIndexWithName:@"class" error:0];
  if (v5)
  {
    LOBYTE(v5) = [(CPLPrequeliteStorage *)self dropIndexWithName:@"transientType" error:0];
  }

  return v5;
}

- (BOOL)hasUnmingledChanges
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"mingled = %i", 0];
  v6 = [pqStore table:mainTable hasRecordsMatchingQuery:v5];

  return v6;
}

- (BOOL)hasUnmingledChangesForScope:(id)scope
{
  scopeCopy = scope;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  localIndex = [scopeCopy localIndex];

  v8 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND mingled = %i", localIndex, 0];
  v9 = [pqStore table:mainTable hasRecordsMatchingQuery:v8];

  return v9;
}

- (BOOL)_markChangesWithScopedIdentifiersAsMingled:(id)mingled error:(id *)error
{
  mingledCopy = mingled;
  if (![mingledCopy count])
  {
    goto LABEL_12;
  }

  errorCopy = error;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = mingledCopy;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = *v29;
  v26 = mingledCopy;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      v15 = objc_autoreleasePoolPush();
      scopeIdentifier = [v14 scopeIdentifier];
      v17 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        scopeIdentifier2 = [v14 scopeIdentifier];
        lastError = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier2];

        goto LABEL_15;
      }

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      identifier = [v14 identifier];
      v20 = [pqlConnection cplExecute:{@"UPDATE %@ SET mingled = %i WHERE scopeIndex = %ld AND identifier = %@", mainTable, 1, v17, identifier}];

      if ((v20 & 1) == 0)
      {
        lastError = [pqlConnection lastError];
LABEL_15:
        objc_autoreleasePoolPop(v15);

        mingledCopy = v26;
        if (errorCopy)
        {
          v24 = lastError;
          v22 = 0;
          *errorCopy = lastError;
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v15);
    }

    v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    mingledCopy = v26;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_11:

LABEL_12:
  lastError = 0;
  v22 = 1;
LABEL_18:

  return v22;
}

- (id)_enumeratorForRecordsWithScopeIndex:(unint64_t)index maximumCount:(unint64_t)count
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v10 = mainTable;
  if (count == -1)
  {
    v11 = [pqlConnection cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE mingled = %i AND scopeIndex = %lu", mainTable, 0, index, v16}];
  }

  else
  {
    v11 = [pqlConnection cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE mingled = %i AND scopeIndex = %lu LIMIT %lu", mainTable, 0, index, count}];
  }

  v12 = v11;

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10016774C;
  v17[3] = &unk_10027BA88;
  v17[4] = self;
  v13 = [v12 enumerateObjects:v17];
  v14 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v13];

  return v14;
}

- (id)recordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v7 = [pqlConnection cplFetchObject:&stru_10027BAA8 sql:{@"SELECT serializedRecord FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, v6, identifier}];
  }

  return v7;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v11 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND identifier = %@", v6, identifier];
    v7 = [pqStore table:mainTable hasRecordsMatchingQuery:v11];
  }

  return v7;
}

- (BOOL)hasStashedRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v11 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND identifier = %@ AND +mingled = %i", v6, identifier, 2];
    v7 = [pqStore table:mainTable hasRecordsMatchingQuery:v11];
  }

  return v7;
}

- (id)nextBatchOfRemappedRecordsInScope:(id)scope maximumCount:(unint64_t)count
{
  scopeCopy = scope;
  if (count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = -1;
  }

  v8 = objc_alloc_init(CPLChangeBatch);
  selfCopy = self;
  -[CPLPrequeliteTransientRepository _enumeratorForRecordsWithTransientType:scopeIndex:maximumCount:](self, "_enumeratorForRecordsWithTransientType:scopeIndex:maximumCount:", 1, [scopeCopy localIndex], countCopy);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v23;
    v21 = countCopy - 1;
LABEL_6:
    v14 = 0;
    v15 = v21 - v12;
    v12 += v11;
    while (1)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v22 + 1) + 8 * v14);
      [v8 addRecord:v16];
      scopedIdentifier = [v16 scopedIdentifier];

      if (!scopedIdentifier)
      {
        sub_1001C0774(a2, selfCopy, v16);
      }

      if (v15 == v14)
      {
        break;
      }

      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  return v8;
}

- (BOOL)popChangeBatchOfRemappedRecords:(id *)records scope:(id)scope maximumCount:(unint64_t)count error:(id *)error
{
  scopeCopy = scope;
  if (count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = -1;
  }

  v10 = objc_alloc_init(CPLChangeBatch);
  v11 = [NSMutableSet alloc];
  if (countCopy >= 0x14)
  {
    v12 = 20;
  }

  else
  {
    v12 = countCopy;
  }

  v13 = [v11 initWithCapacity:{v12, a2}];
  v33 = scopeCopy;
  selfCopy = self;
  -[CPLPrequeliteTransientRepository _enumeratorForRecordsWithTransientType:scopeIndex:maximumCount:](self, "_enumeratorForRecordsWithTransientType:scopeIndex:maximumCount:", 1, [scopeCopy localIndex], countCopy);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = v38 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v36;
    v31 = countCopy - 1;
LABEL_9:
    v19 = 0;
    v20 = v31 - v17;
    v17 += v16;
    while (1)
    {
      if (*v36 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v35 + 1) + 8 * v19);
      [v10 addRecord:v21];
      scopedIdentifier = [v21 scopedIdentifier];

      if (!scopedIdentifier)
      {
        sub_1001C0850(v29, selfCopy, v21);
      }

      scopedIdentifier2 = [v21 scopedIdentifier];
      [v13 addObject:scopedIdentifier2];

      if (v20 == v19)
      {
        break;
      }

      if (v16 == ++v19)
      {
        v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v16)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  v24 = [(CPLPrequeliteTransientRepository *)selfCopy _markChangesWithScopedIdentifiersAsMingled:v13 error:error];
  if (v24)
  {
    if ([v10 count])
    {
      v25 = v10;
      v26 = v10;
    }

    else
    {
      v26 = 0;
    }

    *records = v26;
  }

  return v24;
}

- (id)unmingledChangeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100168574;
    v14[3] = &unk_10027BA88;
    v14[4] = self;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v7 = [pqlConnection cplFetchObject:v14 sql:{@"SELECT scopeIndex, serializedRecord, mingled FROM %@ WHERE identifier = %@ AND scopeIndex = %lu", mainTable, identifier, v6}];

    v12 = +[NSNull null];

    if (v7 == v12)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)_allUnmingledChangesWithClass:(Class)class scopeIdentifier:(id)identifier maximumCount:(unint64_t)count
{
  v8 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifier];
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
    v14 = NSStringFromClass(class);
    v15 = v14;
    if (count == -1)
    {
      v16 = [pqlConnection cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE mingled = %i AND class = %@ AND scopeIndex = %lu", mainTable, 0, v14, v10, v20}];
    }

    else
    {
      v16 = [pqlConnection cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE mingled = %i AND class = %@ AND scopeIndex = %lu LIMIT %lu", mainTable, 0, v14, v10, count}];
    }

    v17 = v16;

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100168790;
    v21[3] = &unk_10027BA88;
    v21[4] = self;
    v18 = [v17 enumerateObjects:v21];
    v9 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v18];
  }

  return v9;
}

- (id)allUnmingledNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier
{
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifier];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = &__NSArray0__struct;
  }

  else
  {
    v7 = [(CPLPrequeliteTransientRepository *)self _enumeratorForRecordsWithTransientType:3 scopeIndex:v6 class:class maximumCount:-1];
  }

  return v7;
}

- (id)allUnmingledDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier
{
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifier];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = &__NSArray0__struct;
  }

  else
  {
    v7 = [(CPLPrequeliteTransientRepository *)self _enumeratorForRecordsWithTransientType:2 scopeIndex:v6 class:class maximumCount:-1];
  }

  return v7;
}

- (id)allUnmingledChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = &__NSArray0__struct;
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v14 = [pqlConnection cplFetch:{@"SELECT scopeIndex, serializedRecord, mingled FROM %@ WHERE relatedIdentifier = %@ AND scopeIndex = %lu AND +mingled = %i", mainTable, identifier, v8, 0}];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100168A84;
    v17[3] = &unk_10027BAF0;
    v17[4] = self;
    v17[5] = class;
    v15 = [v14 enumerateObjects:v17];
    v9 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v15];
  }

  return v9;
}

- (id)allUnmingledChangesWithScopeIdentifier:(id)identifier
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v5 = [(CPLPrequeliteTransientRepository *)self _enumeratorForRecordsWithScopeIndex:v4 maximumCount:-1];
  }

  return v5;
}

- (BOOL)markUnmingledChangeWithScopedIdentifierAsMingled:(id)mingled error:(id *)error
{
  mingledCopy = mingled;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  scopeIdentifier = [mingledCopy scopeIdentifier];
  v10 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      scopeIdentifier2 = [mingledCopy scopeIdentifier];
      *error = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier2];
    }

    goto LABEL_7;
  }

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [mingledCopy identifier];
  v14 = 1;
  v15 = [pqlConnection cplExecute:{@"UPDATE %@ SET mingled = %i WHERE scopeIndex = %ld AND identifier = %@", mainTable, 1, v10, identifier}];

  if ((v15 & 1) == 0)
  {
    if (!error)
    {
LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }

    [pqlConnection lastCPLError];
    *error = v14 = 0;
  }

LABEL_8:

  return v14;
}

- (BOOL)hasMingledRecordsForScopeWithIdentifier:(id)identifier
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND mingled = %i", v6, 1];
  v10 = [pqStore table:mainTable hasRecordsMatchingQuery:v9];

  return v10;
}

- (BOOL)hasUnmingledNonStashedRecordsForScopeWithIdentifier:(id)identifier
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND mingled = %i", v6, 0];
  v10 = [pqStore table:mainTable hasRecordsMatchingQuery:v9];

  return v10;
}

- (BOOL)hasOnlyMingledRecordsWithScopeIdentifier:(id)identifier
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = v4;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND mingled != %i", v6, 1];
    v5 = [pqStore table:mainTable hasRecordsMatchingQuery:v9] ^ 1;
  }

  return v5;
}

- (BOOL)resetMingledRecordsWithScopeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v9 = filterCopy;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  localIndexesInjection = [v9 localIndexesInjection];
  v12 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET mingled = %i WHERE %@ AND mingled = %i", mainTable, 0, localIndexesInjection, 1}];

  if (error && (v12 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v12;
}

- (BOOL)deleteMingledRecordsForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
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
    v8 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND mingled = %i", mainTable, v9, 1}];

    if (v8)
    {
      if ([pqlConnection changes] >= 1)
      {
        sub_1001C092C();
      }
    }

    else if (error)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v8;
}

- (BOOL)hasUnmingledOrStashedRecordsWithScopeFilter:(id)filter
{
  filterCopy = filter;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  localIndexesInjection = [filterCopy localIndexesInjection];

  v8 = [PQLFormatInjection formatInjection:@"%@ AND mingled != %i", localIndexesInjection, 1];
  v9 = [pqStore table:mainTable hasRecordsMatchingQuery:v8];

  return v9;
}

- (BOOL)stashChangeWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      scopeIdentifier2 = [identifierCopy scopeIdentifier];
      *error = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier2];
    }

    v10 = 0;
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v10 = [pqlConnection cplExecute:{@"UPDATE %@ SET mingled = %i WHERE scopeIndex = %ld AND identifier = %@", mainTable, 2, v8, identifier}];

    if (v10)
    {
      if ([pqlConnection changes] >= 1)
      {
        sub_1001C09E0();
      }
    }

    else if (error)
    {
      *error = [pqlConnection lastError];
    }
  }

  return v10;
}

- (BOOL)unstashRecordsForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count hasMore:(BOOL *)more unstashedCount:(unint64_t *)unstashedCount error:(id *)error
{
  identifierCopy = identifier;
  v13 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifierCopy];
  *unstashedCount = 0;
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v19 = mainTable;
    if (count)
    {
      v20 = [pqlConnection cplExecute:{@"UPDATE %@ SET mingled = %i WHERE scopeIndex = %ld AND mingled = %i LIMIT %lu", mainTable, 0, v15, 2, count}];

      if (v20)
      {
        changes = [pqlConnection changes];
        *unstashedCount = changes;
        *more = changes >= count;
LABEL_10:
        v14 = 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v22 = [pqlConnection cplExecute:{@"UPDATE %@ SET mingled = %i WHERE scopeIndex = %ld AND mingled = %i", mainTable, 0, v15, 2}];

      if (v22)
      {
        *more = 0;
        goto LABEL_10;
      }
    }

    if (error)
    {
      [pqlConnection lastError];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_14;
  }

  if (error)
  {
    [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_15:

  return v14;
}

- (BOOL)hasStashedChangesForScopeWithIdentifier:(id)identifier
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND mingled = %i", v6, 2];
  v10 = [pqStore table:mainTable hasRecordsMatchingQuery:v9];

  return v10;
}

- (BOOL)deleteAllRecordsForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
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
    v8 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld", mainTable, v9}];

    if (v8)
    {
      if ([pqlConnection changes] >= 1)
      {
        sub_1001C0A8C();
      }
    }

    else if (error)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v8;
}

- (unint64_t)countOfUnmingledRecords
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"mingled = %i", 0];
  v6 = [pqStore table:mainTable countOfRecordsMatchingQuery:v5];

  return v6;
}

- (unint64_t)countOfStashedRecords
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"mingled = %i", 2];
  v6 = [pqStore table:mainTable countOfRecordsMatchingQuery:v5];

  return v6;
}

- (id)status
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteTransientRepository;
  status = [(CPLPrequeliteStorage *)&v8 status];
  v4 = [status mutableCopy];

  countOfUnmingledRecords = [(CPLPrequeliteTransientRepository *)self countOfUnmingledRecords];
  if (countOfUnmingledRecords)
  {
    [v4 appendFormat:@"\n\t%lu unmingled changes", countOfUnmingledRecords];
  }

  countOfStashedRecords = [(CPLPrequeliteTransientRepository *)self countOfStashedRecords];
  if (countOfStashedRecords)
  {
    [v4 appendFormat:@"\n\t%lu stashed changes", countOfStashedRecords];
  }

  return v4;
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

@end