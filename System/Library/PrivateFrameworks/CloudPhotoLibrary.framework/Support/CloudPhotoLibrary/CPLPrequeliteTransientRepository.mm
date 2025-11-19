@interface CPLPrequeliteTransientRepository
- (BOOL)_markChangesWithScopedIdentifiersAsMingled:(id)a3 error:(id *)a4;
- (BOOL)deleteAllRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deleteMingledRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)hasMingledRecordsForScopeWithIdentifier:(id)a3;
- (BOOL)hasOnlyMingledRecordsWithScopeIdentifier:(id)a3;
- (BOOL)hasRecordWithScopedIdentifier:(id)a3;
- (BOOL)hasStashedChangesForScopeWithIdentifier:(id)a3;
- (BOOL)hasStashedRecordWithScopedIdentifier:(id)a3;
- (BOOL)hasUnmingledChanges;
- (BOOL)hasUnmingledChangesForScope:(id)a3;
- (BOOL)hasUnmingledNonStashedRecordsForScopeWithIdentifier:(id)a3;
- (BOOL)hasUnmingledOrStashedRecordsWithScopeFilter:(id)a3;
- (BOOL)initializeStorage;
- (BOOL)markUnmingledChangeWithScopedIdentifierAsMingled:(id)a3 error:(id *)a4;
- (BOOL)popChangeBatchOfRemappedRecords:(id *)a3 scope:(id)a4 maximumCount:(unint64_t)a5 error:(id *)a6;
- (BOOL)resetMingledRecordsWithScopeFilter:(id)a3 error:(id *)a4;
- (BOOL)stashChangeWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)unstashRecordsForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4 hasMore:(BOOL *)a5 unstashedCount:(unint64_t *)a6 error:(id *)a7;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteTransientRepository)initWithAbstractObject:(id)a3;
- (id)_allUnmingledChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 maximumCount:(unint64_t)a5;
- (id)_enumeratorForRecordsWithScopeIndex:(unint64_t)a3 maximumCount:(unint64_t)a4;
- (id)allUnmingledChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4;
- (id)allUnmingledChangesWithScopeIdentifier:(id)a3;
- (id)allUnmingledDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4;
- (id)allUnmingledNonDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4;
- (id)nextBatchOfRemappedRecordsInScope:(id)a3 maximumCount:(unint64_t)a4;
- (id)recordWithScopedIdentifier:(id)a3;
- (id)status;
- (id)unmingledChangeWithScopedIdentifier:(id)a3;
- (unint64_t)countOfStashedRecords;
- (unint64_t)countOfUnmingledRecords;
@end

@implementation CPLPrequeliteTransientRepository

- (CPLPrequeliteTransientRepository)initWithAbstractObject:(id)a3
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteTransientRepository;
  v3 = [(CPLPrequeliteStorage *)&v10 initWithAbstractObject:a3];
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
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"transientType INTEGER NOT NULL error:class TEXT NOT NULL, scopeIndex INTEGER NOT NULL, identifier TEXT NOT NULL, relatedIdentifier TEXT, mingled INTEGER NOT NULL, dequeueOrder INTEGER DEFAULT 0, serializedRecord DATA NOT NULL", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"scopeIndex unique:identifier" error:1, 0];
      if (v3)
      {
        v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier" withDefinition:@"scopeIndex unique:relatedIdentifier" error:0, 0];
        if (v3)
        {
          v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"pop" withDefinition:@"scopeIndex unique:mingled error:class, transientType", 0, 0];
          if (v3)
          {
            v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"class" withDefinition:@"class unique:scopeIndex" error:0, 0];
            if (v3)
            {
              LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexWithName:@"mingled" withDefinition:@"mingled unique:scopeIndex error:transientType", 0, 0];
            }
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = CPLPrequeliteTransientRepository;
  v5 = [(CPLPrequeliteStorage *)&v9 upgradeStorageToVersion:?];
  if (a3 == 19 || !v5)
  {
    return v5;
  }

  LOBYTE(v5) = 1;
  if (a3 > 58)
  {
    switch(a3)
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

  if (a3 == 39)
  {
    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      LOBYTE(v5) = [(CPLPrequeliteStorage *)self recreateMainTableWithCopyInstructions:@"transientType oldFields:class error:scopeIndex, identifier, relatedIdentifier, mingled, dequeueOrder, serializedRecord", @"transientType, class, 1, identifier, relatedIdentifier, mingled, dequeueOrder, serializedRecord", 0];
      return v5;
    }

    goto LABEL_27;
  }

  if (a3 == 53)
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

  if (a3 != 55)
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
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"mingled = %i", 0];
  v6 = [v3 table:v4 hasRecordsMatchingQuery:v5];

  return v6;
}

- (BOOL)hasUnmingledChangesForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [v4 localIndex];

  v8 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND mingled = %i", v7, 0];
  v9 = [v5 table:v6 hasRecordsMatchingQuery:v8];

  return v9;
}

- (BOOL)_markChangesWithScopedIdentifiersAsMingled:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 count])
  {
    goto LABEL_12;
  }

  v27 = a4;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [v7 pqlConnection];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = *v29;
  v26 = v6;
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
      v16 = [v14 scopeIdentifier];
      v17 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v16];

      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [v14 scopeIdentifier];
        v21 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v23];

        goto LABEL_15;
      }

      v18 = [(CPLPrequeliteStorage *)self mainTable];
      v19 = [v14 identifier];
      v20 = [v8 cplExecute:{@"UPDATE %@ SET mingled = %i WHERE scopeIndex = %ld AND identifier = %@", v18, 1, v17, v19}];

      if ((v20 & 1) == 0)
      {
        v21 = [v8 lastError];
LABEL_15:
        objc_autoreleasePoolPop(v15);

        v6 = v26;
        if (v27)
        {
          v24 = v21;
          v22 = 0;
          *v27 = v21;
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
    v6 = v26;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_11:

LABEL_12:
  v21 = 0;
  v22 = 1;
LABEL_18:

  return v22;
}

- (id)_enumeratorForRecordsWithScopeIndex:(unint64_t)a3 maximumCount:(unint64_t)a4
{
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [v7 pqlConnection];

  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = v9;
  if (a4 == -1)
  {
    v11 = [v8 cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE mingled = %i AND scopeIndex = %lu", v9, 0, a3, v16}];
  }

  else
  {
    v11 = [v8 cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE mingled = %i AND scopeIndex = %lu LIMIT %lu", v9, 0, a3, a4}];
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

- (id)recordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 scopeIdentifier];
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [v8 pqlConnection];

    v10 = [(CPLPrequeliteStorage *)self mainTable];
    v11 = [v4 identifier];
    v7 = [v9 cplFetchObject:&stru_10027BAA8 sql:{@"SELECT serializedRecord FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v10, v6, v11}];
  }

  return v7;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 scopeIdentifier];
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [v4 identifier];
    v11 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND identifier = %@", v6, v10];
    v7 = [v8 table:v9 hasRecordsMatchingQuery:v11];
  }

  return v7;
}

- (BOOL)hasStashedRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 scopeIdentifier];
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [v4 identifier];
    v11 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND identifier = %@ AND +mingled = %i", v6, v10, 2];
    v7 = [v8 table:v9 hasRecordsMatchingQuery:v11];
  }

  return v7;
}

- (id)nextBatchOfRemappedRecordsInScope:(id)a3 maximumCount:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = -1;
  }

  v8 = objc_alloc_init(CPLChangeBatch);
  v20 = self;
  -[CPLPrequeliteTransientRepository _enumeratorForRecordsWithTransientType:scopeIndex:maximumCount:](self, "_enumeratorForRecordsWithTransientType:scopeIndex:maximumCount:", 1, [v6 localIndex], v7);
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
    v21 = v7 - 1;
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
      v17 = [v16 scopedIdentifier];

      if (!v17)
      {
        sub_1001C0774(a2, v20, v16);
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

- (BOOL)popChangeBatchOfRemappedRecords:(id *)a3 scope:(id)a4 maximumCount:(unint64_t)a5 error:(id *)a6
{
  v8 = a4;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = -1;
  }

  v10 = objc_alloc_init(CPLChangeBatch);
  v11 = [NSMutableSet alloc];
  if (v9 >= 0x14)
  {
    v12 = 20;
  }

  else
  {
    v12 = v9;
  }

  v13 = [v11 initWithCapacity:{v12, a2}];
  v33 = v8;
  v34 = self;
  -[CPLPrequeliteTransientRepository _enumeratorForRecordsWithTransientType:scopeIndex:maximumCount:](self, "_enumeratorForRecordsWithTransientType:scopeIndex:maximumCount:", 1, [v8 localIndex], v9);
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
    v31 = v9 - 1;
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
      v22 = [v21 scopedIdentifier];

      if (!v22)
      {
        sub_1001C0850(v29, v34, v21);
      }

      v23 = [v21 scopedIdentifier];
      [v13 addObject:v23];

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

  v24 = [(CPLPrequeliteTransientRepository *)v34 _markChangesWithScopedIdentifiersAsMingled:v13 error:a6];
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

    *a3 = v26;
  }

  return v24;
}

- (id)unmingledChangeWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 scopeIdentifier];
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [v8 pqlConnection];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100168574;
    v14[3] = &unk_10027BA88;
    v14[4] = self;
    v10 = [(CPLPrequeliteStorage *)self mainTable];
    v11 = [v4 identifier];
    v7 = [v9 cplFetchObject:v14 sql:{@"SELECT scopeIndex, serializedRecord, mingled FROM %@ WHERE identifier = %@ AND scopeIndex = %lu", v10, v11, v6}];

    v12 = +[NSNull null];

    if (v7 == v12)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)_allUnmingledChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 maximumCount:(unint64_t)a5
{
  v8 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:a4];
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
    v14 = NSStringFromClass(a3);
    v15 = v14;
    if (a5 == -1)
    {
      v16 = [v12 cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE mingled = %i AND class = %@ AND scopeIndex = %lu", v13, 0, v14, v10, v20}];
    }

    else
    {
      v16 = [v12 cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE mingled = %i AND class = %@ AND scopeIndex = %lu LIMIT %lu", v13, 0, v14, v10, a5}];
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

- (id)allUnmingledNonDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4
{
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = &__NSArray0__struct;
  }

  else
  {
    v7 = [(CPLPrequeliteTransientRepository *)self _enumeratorForRecordsWithTransientType:3 scopeIndex:v6 class:a3 maximumCount:-1];
  }

  return v7;
}

- (id)allUnmingledDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4
{
  v6 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = &__NSArray0__struct;
  }

  else
  {
    v7 = [(CPLPrequeliteTransientRepository *)self _enumeratorForRecordsWithTransientType:2 scopeIndex:v6 class:a3 maximumCount:-1];
  }

  return v7;
}

- (id)allUnmingledChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4
{
  v6 = a4;
  v7 = [v6 scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = &__NSArray0__struct;
  }

  else
  {
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [v6 identifier];
    v14 = [v11 cplFetch:{@"SELECT scopeIndex, serializedRecord, mingled FROM %@ WHERE relatedIdentifier = %@ AND scopeIndex = %lu AND +mingled = %i", v12, v13, v8, 0}];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100168A84;
    v17[3] = &unk_10027BAF0;
    v17[4] = self;
    v17[5] = a3;
    v15 = [v14 enumerateObjects:v17];
    v9 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v15];
  }

  return v9;
}

- (id)allUnmingledChangesWithScopeIdentifier:(id)a3
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:a3];
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

- (BOOL)markUnmingledChangeWithScopedIdentifierAsMingled:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [v7 pqlConnection];

  v9 = [v6 scopeIdentifier];
  v10 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      v11 = [v6 scopeIdentifier];
      *a4 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v11];
    }

    goto LABEL_7;
  }

  v12 = [(CPLPrequeliteStorage *)self mainTable];
  v13 = [v6 identifier];
  v14 = 1;
  v15 = [v8 cplExecute:{@"UPDATE %@ SET mingled = %i WHERE scopeIndex = %ld AND identifier = %@", v12, 1, v10, v13}];

  if ((v15 & 1) == 0)
  {
    if (!a4)
    {
LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }

    [v8 lastCPLError];
    *a4 = v14 = 0;
  }

LABEL_8:

  return v14;
}

- (BOOL)hasMingledRecordsForScopeWithIdentifier:(id)a3
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND mingled = %i", v6, 1];
  v10 = [v7 table:v8 hasRecordsMatchingQuery:v9];

  return v10;
}

- (BOOL)hasUnmingledNonStashedRecordsForScopeWithIdentifier:(id)a3
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND mingled = %i", v6, 0];
  v10 = [v7 table:v8 hasRecordsMatchingQuery:v9];

  return v10;
}

- (BOOL)hasOnlyMingledRecordsWithScopeIdentifier:(id)a3
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(CPLPrequeliteStorage *)self pqStore];
    v8 = [(CPLPrequeliteStorage *)self mainTable];
    v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND mingled != %i", v6, 1];
    v5 = [v7 table:v8 hasRecordsMatchingQuery:v9] ^ 1;
  }

  return v5;
}

- (BOOL)resetMingledRecordsWithScopeFilter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [v7 pqlConnection];

  v9 = v6;
  v10 = [(CPLPrequeliteStorage *)self mainTable];
  v11 = [v9 localIndexesInjection];
  v12 = [v8 cplExecute:{@"UPDATE OR FAIL %@ SET mingled = %i WHERE %@ AND mingled = %i", v10, 0, v11, 1}];

  if (a4 && (v12 & 1) == 0)
  {
    *a4 = [v8 lastCPLError];
  }

  return v12;
}

- (BOOL)deleteMingledRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
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
    v8 = [v11 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND mingled = %i", v12, v9, 1}];

    if (v8)
    {
      if ([v11 changes] >= 1)
      {
        sub_1001C092C();
      }
    }

    else if (a4)
    {
      *a4 = [v11 lastCPLError];
    }
  }

  return v8;
}

- (BOOL)hasUnmingledOrStashedRecordsWithScopeFilter:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [v4 localIndexesInjection];

  v8 = [PQLFormatInjection formatInjection:@"%@ AND mingled != %i", v7, 1];
  v9 = [v5 table:v6 hasRecordsMatchingQuery:v8];

  return v9;
}

- (BOOL)stashChangeWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      v9 = [v6 scopeIdentifier];
      *a4 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v9];
    }

    v10 = 0;
  }

  else
  {
    v11 = [(CPLPrequeliteStorage *)self pqStore];
    v12 = [v11 pqlConnection];

    v13 = [(CPLPrequeliteStorage *)self mainTable];
    v14 = [v6 identifier];
    v10 = [v12 cplExecute:{@"UPDATE %@ SET mingled = %i WHERE scopeIndex = %ld AND identifier = %@", v13, 2, v8, v14}];

    if (v10)
    {
      if ([v12 changes] >= 1)
      {
        sub_1001C09E0();
      }
    }

    else if (a4)
    {
      *a4 = [v12 lastError];
    }
  }

  return v10;
}

- (BOOL)unstashRecordsForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4 hasMore:(BOOL *)a5 unstashedCount:(unint64_t *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v12];
  *a6 = 0;
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    v16 = [(CPLPrequeliteStorage *)self pqStore];
    v17 = [v16 pqlConnection];

    v18 = [(CPLPrequeliteStorage *)self mainTable];
    v19 = v18;
    if (a4)
    {
      v20 = [v17 cplExecute:{@"UPDATE %@ SET mingled = %i WHERE scopeIndex = %ld AND mingled = %i LIMIT %lu", v18, 0, v15, 2, a4}];

      if (v20)
      {
        v21 = [v17 changes];
        *a6 = v21;
        *a5 = v21 >= a4;
LABEL_10:
        v14 = 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v22 = [v17 cplExecute:{@"UPDATE %@ SET mingled = %i WHERE scopeIndex = %ld AND mingled = %i", v18, 0, v15, 2}];

      if (v22)
      {
        *a5 = 0;
        goto LABEL_10;
      }
    }

    if (a7)
    {
      [v17 lastError];
      *a7 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_14;
  }

  if (a7)
  {
    [CPLErrors invalidScopeErrorWithScopeIdentifier:v12];
    *a7 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_15:

  return v14;
}

- (BOOL)hasStashedChangesForScopeWithIdentifier:(id)a3
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND mingled = %i", v6, 2];
  v10 = [v7 table:v8 hasRecordsMatchingQuery:v9];

  return v10;
}

- (BOOL)deleteAllRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
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
    v8 = [v11 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld", v12, v9}];

    if (v8)
    {
      if ([v11 changes] >= 1)
      {
        sub_1001C0A8C();
      }
    }

    else if (a4)
    {
      *a4 = [v11 lastCPLError];
    }
  }

  return v8;
}

- (unint64_t)countOfUnmingledRecords
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"mingled = %i", 0];
  v6 = [v3 table:v4 countOfRecordsMatchingQuery:v5];

  return v6;
}

- (unint64_t)countOfStashedRecords
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"mingled = %i", 2];
  v6 = [v3 table:v4 countOfRecordsMatchingQuery:v5];

  return v6;
}

- (id)status
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteTransientRepository;
  v3 = [(CPLPrequeliteStorage *)&v8 status];
  v4 = [v3 mutableCopy];

  v5 = [(CPLPrequeliteTransientRepository *)self countOfUnmingledRecords];
  if (v5)
  {
    [v4 appendFormat:@"\n\t%lu unmingled changes", v5];
  }

  v6 = [(CPLPrequeliteTransientRepository *)self countOfStashedRecords];
  if (v6)
  {
    [v4 appendFormat:@"\n\t%lu stashed changes", v6];
  }

  return v4;
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

@end