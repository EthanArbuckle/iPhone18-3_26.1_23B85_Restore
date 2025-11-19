@interface CPLPrequeliteIgnoredRecords
- (BOOL)_isEmpty;
- (BOOL)addIgnoredRecord:(id)a3 ignoredDate:(id)a4 otherScopeIndex:(int64_t)a5 error:(id *)a6;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)hasRecordWithScopedIdentifier:(id)a3;
- (BOOL)initializeStorage;
- (BOOL)popCloudScopedIdentifiersToCheck:(id *)a3 otherScopeIndex:(int64_t)a4 maxCount:(int64_t)a5 deletedCount:(int64_t *)a6 error:(id *)a7;
- (BOOL)removeRecordWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)scopeIdentifier:(id)a3 hasIgnoredRecordsBeforeDate:(id)a4;
- (BOOL)setIgnoredDate:(id)a3 forRecordWithScopedIdentifier:(id)a4 error:(id *)a5;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteIgnoredRecords)initWithAbstractObject:(id)a3;
- (id)ignoredRecordWithScopedIdentifier:(id)a3;
- (id)ignoredRecordsBeforeDate:(id)a3 scopeIdentifier:(id)a4 maximumCount:(unint64_t)a5;
- (id)status;
- (void)writeTransactionDidFail;
@end

@implementation CPLPrequeliteIgnoredRecords

- (CPLPrequeliteIgnoredRecords)initWithAbstractObject:(id)a3
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteIgnoredRecords;
  v3 = [(CPLPrequeliteStorage *)&v8 initWithAbstractObject:a3];
  if (v3)
  {
    v4 = +[CPLPrequeliteType integerType];
    v5 = [(CPLPrequeliteVariable *)CPLPrequeliteSynthesizedVariable variableWithName:@"isEmpty" type:v4];
    v6 = *(v3 + 36);
    *(v3 + 36) = v5;
  }

  return v3;
}

- (BOOL)_isEmpty
{
  v2 = *(&self->super._shouldUpgradeSchema + 1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100172D00;
  v6[3] = &unk_10027BCC8;
  v6[4] = self;
  v3 = [v2 valueWithConstructor:v6];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)initializeStorage
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteIgnoredRecords;
  if (![(CPLPrequeliteStorage *)&v10 initializeStorage]|| ![(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:identifier TEXT NOT NULL, serializedRecord DATA NOT NULL, ignoredDate TIMESTAMP NOT NULL, otherScopeIndex INTEGER NOT NULL, shadowed INTEGER NOT NULL", 0]|| ![(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0]|| ![(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"scopeIndex unique:identifier" error:1, 0]|| ![(CPLPrequeliteStorage *)self createIndexOnColumn:@"otherScopeIndex" error:0]|| ![(CPLPrequeliteStorage *)self createIndexOnColumn:@"shadowed" error:0])
  {
    return 0;
  }

  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [CPLPrequeliteVariable indexVariableForVariableWithName:@"ignoredDate" forTable:v5];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v4 cplExecute:{@"CREATE INDEX %@ ON %@ (scopeIndex, ignoredDate ASC) WHERE shadowed != 0", v6, v7}];

  return v8;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v52.receiver = self;
  v52.super_class = CPLPrequeliteIgnoredRecords;
  if (![(CPLPrequeliteStorage *)&v52 upgradeStorageToVersion:?])
  {
    return 0;
  }

  v5 = 1;
  if (a3 > 75)
  {
    if (a3 == 76)
    {
      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v25 = v24;
      v26 = [(CPLPrequeliteStorage *)self pqStore];
      v7 = [v26 pqlConnection];

      v27 = [(CPLPrequeliteStorage *)self mainTable];
      v28 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN ignoredDate TIMESTAMP DEFAULT 0", v27}];

      if (!v28)
      {
        goto LABEL_25;
      }

      v29 = [(CPLPrequeliteStorage *)self mainTable];
      v30 = [v7 cplExecute:{@"UPDATE %@ SET ignoredDate = %ld", v29, v25}];

      if (!v30)
      {
        goto LABEL_25;
      }

      v31 = [(CPLPrequeliteStorage *)self mainTable];
      v15 = [CPLPrequeliteVariable indexVariableForVariableWithName:@"ignoredDate" forTable:v31];

      v32 = [(CPLPrequeliteStorage *)self mainTable];
      v5 = [v7 cplExecute:{@"CREATE INDEX %@ ON %@ (scopeIndex, ignoredDate ASC) WHERE shadowed != 0", v15, v32}];
    }

    else
    {
      if (a3 != 78 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      v10 = [(CPLPrequeliteStorage *)self pqStore];
      v7 = [v10 pqlConnection];

      v11 = [(CPLPrequeliteStorage *)self mainTable];
      v12 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN otherScopeIndex INTEGER DEFAULT 0", v11}];

      if (!v12 || ![(CPLPrequeliteStorage *)self createIndexOnColumn:@"otherScopeIndex" error:0])
      {
        goto LABEL_25;
      }

      if ([(CPLPrequeliteIgnoredRecords *)self _isEmpty])
      {
        goto LABEL_26;
      }

      v13 = [(CPLPrequeliteStorage *)self pqStore];
      v14 = [v13 abstractObject];
      v15 = [v14 scopes];

      v16 = [v15 primaryScope];
      if (v16)
      {
        v17 = [v15 sharingScopeForScope:v16];
        if (v17)
        {
          v18 = [(CPLPrequeliteStorage *)self mainTable];
          v19 = [v7 cplExecute:{@"UPDATE %@ SET otherScopeIndex = %ld WHERE scopeIndex = %ld", v18, objc_msgSend(v16, "cloudIndex"), objc_msgSend(v17, "cloudIndex")}];

          if (v19 && (v20 = [v7 changes], -[CPLPrequeliteStorage mainTable](self, "mainTable"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v7, "cplExecute:", @"UPDATE %@ SET otherScopeIndex = %ld WHERE scopeIndex = %ld", v21, objc_msgSend(v17, "cloudIndex"), objc_msgSend(v16, "cloudIndex")), v21, v22))
          {
            v23 = [(CPLPrequeliteStorage *)self pqStore];
            [v23 recordUpgradeEvent:{@"Updated other scope index for %lld shared records and %lld private records", v20, objc_msgSend(v7, "changes")}];
          }

          else
          {
            v5 = 0;
          }
        }

        else if (([v15 valueForFlag:16 forScope:v16] & 1) == 0)
        {
          context = objc_autoreleasePoolPush();
          v34 = [(CPLPrequeliteStorage *)self pqStore];
          v51 = [v34 transientPullRepository];

          v35 = [v16 cloudIndex];
          v36 = [(CPLPrequeliteStorage *)self mainTable];
          v49 = v35;
          v37 = [v7 cplFetch:{@"SELECT serializedRecord FROM %@ WHERE scopeIndex = %ld", v36, v35}];

          v38 = objc_alloc_init(CPLChangeBatch);
          v39 = 0;
          while ([v37 next])
          {
            while (1)
            {
              v40 = objc_autoreleasePoolPush();
              v41 = [v37 cplChangeAtIndex:0];
              if (v41)
              {
                ++v39;
                [v38 addRecord:v41];
                if ([v38 count] >= 0xC9)
                {
                  break;
                }
              }

              objc_autoreleasePoolPop(v40);
              if (([v37 next] & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            v48 = [v51 appendBatch:v38 alreadyMingled:0 error:0];
            v42 = objc_alloc_init(CPLChangeBatch);

            objc_autoreleasePoolPop(v40);
            v38 = v42;
            if ((v48 & 1) == 0)
            {
              v5 = 0;
              v38 = v42;
              goto LABEL_46;
            }
          }

LABEL_38:
          if ((![v38 count] || objc_msgSend(v51, "appendBatch:alreadyMingled:error:", v38, 0, 0)) && (-[CPLPrequeliteStorage mainTable](self, "mainTable"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v7, "cplExecute:", @"DELETE FROM %@ WHERE scopeIndex = %ld", v43, v49), v43, v44))
          {
            v45 = [v7 changes];
            v46 = [(CPLPrequeliteStorage *)self pqStore];
            if (v39 == v45)
            {
              [v46 recordUpgradeEvent:{@"Transferred %lu private records to transient pull repository", v39, v47}];
            }

            else
            {
              [v46 recordUpgradeEvent:{@"Transferred %lu private records to transient pull repository (deleted %lld)", v39, objc_msgSend(v7, "changes")}];
            }

            v5 = 1;
          }

          else
          {
            v5 = 0;
          }

LABEL_46:

          objc_autoreleasePoolPop(context);
          v17 = 0;
        }
      }
    }

    goto LABEL_26;
  }

  if (a3 == 73)
  {
    return [(CPLPrequeliteStorage *)self createStorage];
  }

  if (a3 == 74 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    v6 = [(CPLPrequeliteStorage *)self pqStore];
    v7 = [v6 pqlConnection];

    v8 = [(CPLPrequeliteStorage *)self mainTable];
    v9 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN shadowed INTEGER DEFAULT 1", v8}];

    if (v9)
    {
      v5 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"shadowed" error:0];
LABEL_26:

      return v5;
    }

LABEL_25:
    v5 = 0;
    goto LABEL_26;
  }

  return v5;
}

- (id)ignoredRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  if ([(CPLPrequeliteIgnoredRecords *)self _isEmpty]|| (v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v4], v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [v8 pqlConnection];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100173690;
    v14[3] = &unk_10027B218;
    v15 = v4;
    v10 = [(CPLPrequeliteStorage *)self mainTable];
    v11 = [v15 identifier];
    v6 = [v9 cplFetchObject:v14 sql:{@"SELECT scopeIndex, identifier, serializedRecord, ignoredDate FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v10, v11, v7}];

    v12 = +[NSNull null];

    if (v6 == v12)
    {

      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  if ([(CPLPrequeliteIgnoredRecords *)self _isEmpty]|| (v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v4], v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [v4 identifier];
    v11 = [PQLFormatInjection formatInjection:@"identifier = %@ AND scopeIndex = %ld", v10, v7];
    v6 = [v8 table:v9 hasRecordsMatchingQuery:v11];
  }

  return v6;
}

- (BOOL)addIgnoredRecord:(id)a3 ignoredDate:(id)a4 otherScopeIndex:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 scopedIdentifier];
  v13 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v12];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a6)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v12];
      *a6 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v15 = v13;
    v27 = a6;
    v29 = [v10 supportsSharingScopedIdentifier];
    v28 = a5;
    v16 = [v10 copy];
    [v16 prepareForStorage];
    v17 = [CPLArchiver archivedDataWithRootObject:v16];
    [(CPLPrequeliteStorage *)self pqStore];
    v19 = v18 = v11;
    v20 = [v19 pqlConnection];

    v21 = [(CPLPrequeliteStorage *)self mainTable];
    v22 = [v12 identifier];
    v30 = v18;
    v23 = v18;
    v24 = v17;
    [v23 timeIntervalSinceReferenceDate];
    v14 = [v20 cplExecute:{@"INSERT OR REPLACE INTO %@ (scopeIndex, identifier, serializedRecord, shadowed, ignoredDate, otherScopeIndex) VALUES (%ld, %@, %@, %d, %ld, %ld)", v21, v15, v22, v17, v29, v25, v28}];

    if (v14)
    {
      [*(&self->super._shouldUpgradeSchema + 1) setValue:&__kCFBooleanFalse];
    }

    else if (v27)
    {
      *v27 = [v20 lastCPLError];
    }

    v11 = v30;
  }

  return v14;
}

- (BOOL)removeRecordWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CPLPrequeliteIgnoredRecords *)self _isEmpty])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v6];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a4)
      {
        [CPLErrors invalidScopeErrorWithScopedIdentifier:v6];
        *a4 = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v9 = v8;
      v10 = [(CPLPrequeliteStorage *)self pqStore];
      v11 = [v10 pqlConnection];

      v12 = [(CPLPrequeliteStorage *)self mainTable];
      v13 = [v6 identifier];
      v7 = [v11 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v12, v9, v13}];

      if (a4 && (v7 & 1) == 0)
      {
        *a4 = [v11 lastCPLError];
      }

      [*(&self->super._shouldUpgradeSchema + 1) discardCachedValue];
    }
  }

  return v7;
}

- (id)ignoredRecordsBeforeDate:(id)a3 scopeIdentifier:(id)a4 maximumCount:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:v9];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = &__NSArray0__struct;
  }

  else
  {
    v12 = v10;
    v13 = [[NSMutableArray alloc] initWithCapacity:a5];
    v14 = [(CPLPrequeliteStorage *)self pqStore];
    v15 = [v14 pqlConnection];

    v16 = [(CPLPrequeliteStorage *)self mainTable];
    [v8 timeIntervalSinceReferenceDate];
    v27 = v15;
    v18 = [v15 cplFetch:{@"SELECT scopeIndex, identifier, serializedRecord, ignoredDate FROM %@ WHERE shadowed != 0 AND scopeIndex = %ld AND ignoredDate < %ld LIMIT %ld", v16, v12, v17, a5}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100173DFC;
    v28[3] = &unk_10027B9D8;
    v29 = v9;
    v30 = v12;
    v19 = [v18 enumerateObjects:v28];
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v31 + 1) + 8 * i);
          v25 = +[NSNull null];

          if (v24 != v25)
          {
            [v13 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v21);
    }

    v11 = [v13 copy];
  }

  return v11;
}

- (BOOL)setIgnoredDate:(id)a3 forRecordWithScopedIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v9];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a5)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v9];
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
    [v8 timeIntervalSinceReferenceDate];
    v17 = v16;
    v18 = [v9 identifier];
    v11 = [v14 cplExecute:{@"UPDATE %@ SET ignoredDate = %ld WHERE scopeIndex = %ld AND identifier = %@", v15, v17, v12, v18}];

    if (a5 && (v11 & 1) == 0)
    {
      *a5 = [v14 lastCPLError];
    }
  }

  return v11;
}

- (BOOL)scopeIdentifier:(id)a3 hasIgnoredRecordsBeforeDate:(id)a4
{
  v6 = a4;
  v7 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:a3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [(CPLPrequeliteStorage *)self mainTable];
    [v6 timeIntervalSinceReferenceDate];
    v13 = [PQLFormatInjection formatInjection:@"shadowed != 0 AND scopeIndex = %ld AND ignoredDate < %ld", v9, v12];
    v8 = [v10 table:v11 hasRecordsMatchingQuery:v13];
  }

  return v8;
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

  [*(&self->super._shouldUpgradeSchema + 1) discardCachedValue];

  return v14;
}

- (BOOL)popCloudScopedIdentifiersToCheck:(id *)a3 otherScopeIndex:(int64_t)a4 maxCount:(int64_t)a5 deletedCount:(int64_t *)a6 error:(id *)a7
{
  v10 = [(CPLPrequeliteStorage *)self pqStore];
  v11 = [v10 pqlConnection];

  v12 = [[NSMutableArray alloc] initWithCapacity:a5];
  v13 = objc_alloc_init(NSMutableIndexSet);
  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [v11 cplFetch:{@"SELECT rowid, scopeIndex, identifier FROM %@ WHERE otherScopeIndex = %ld LIMIT %lu", v14, a4, a5}];

  if ([v15 next])
  {
    v16 = 0;
    v17 = 0;
    do
    {
      [v13 addIndex:{objc_msgSend(v15, "integerAtIndex:", 0)}];
      v18 = [v15 integerAtIndex:1];
      if (v18 != v16)
      {
        v19 = [(CPLPrequeliteIgnoredRecords *)self abstractObject];
        v20 = [v19 engineStore];
        v21 = [v20 scopes];

        v22 = [v21 scopeIdentifierForCloudScopeIndex:v18];

        if (v22)
        {
          v23 = [v21 scopeWithIdentifier:v22];
          if (!v23 || [v21 valueForFlag:16 forScope:v23])
          {

            v22 = 0;
          }
        }

        v17 = v22;
        v16 = v18;
      }

      if (v17)
      {
        v24 = [CPLScopedIdentifier alloc];
        v25 = [v15 stringAtIndex:2];
        v26 = [v24 initWithScopeIdentifier:v17 identifier:v25 scopeIndex:v18];

        [v12 addObject:v26];
      }
    }

    while (([v15 next] & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 1;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1000045C0;
  v43 = sub_1000053C4;
  v44 = 0;
  if ([v13 count])
  {
    v27 = [(CPLPrequeliteStorage *)self mainTable];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1001745E4;
    v34[3] = &unk_10027B1F0;
    v37 = &v45;
    v35 = v11;
    v28 = v27;
    v36 = v28;
    v38 = &v39;
    [v13 enumerateIndexesUsingBlock:v34];
  }

  if (*(v46 + 24) == 1)
  {
    *a3 = [v12 copy];
    *a6 = [v13 count];
  }

  else if (a7)
  {
    *a7 = v40[5];
  }

  v29 = *(v46 + 24);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  return v29;
}

- (id)status
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [v3 tableCountOfRecords:v4];

  if (v5)
  {
    v6 = [(CPLPrequeliteStorage *)self pqStore];
    v7 = [(CPLPrequeliteStorage *)self mainTable];
    v8 = [PQLFormatInjection formatInjection:@"shadowed = 1"];
    v9 = [v6 table:v7 countOfRecordsMatchingQuery:v8];

    if (v5 == v9)
    {
      v10 = [(CPLPrequeliteIgnoredRecords *)self recordsDesignation];
      [NSString stringWithFormat:@"%lu %@ (all shadowed)", v5, v10, v16, v17];
    }

    else
    {
      v11 = [(CPLPrequeliteIgnoredRecords *)self recordsDesignation];
      v10 = v11;
      if (v9)
      {
        v16 = v9;
        v17 = v5 - v9;
        v14 = v5;
        v15 = v11;
        v12 = @"%lu %@ (%lu shadowed - %lu split)";
      }

      else
      {
        v14 = v5;
        v15 = v11;
        v12 = @"%lu %@ (all split)";
      }

      [NSString stringWithFormat:v12, v14, v15, v16, v17];
    }
    v5 = ;
  }

  return v5;
}

- (void)writeTransactionDidFail
{
  v3.receiver = self;
  v3.super_class = CPLPrequeliteIgnoredRecords;
  [(CPLPrequeliteStorage *)&v3 writeTransactionDidFail];
  [*(&self->super._shouldUpgradeSchema + 1) discardCachedValue];
}

@end