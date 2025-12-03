@interface CPLPrequeliteIgnoredRecords
- (BOOL)_isEmpty;
- (BOOL)addIgnoredRecord:(id)record ignoredDate:(id)date otherScopeIndex:(int64_t)index error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasRecordWithScopedIdentifier:(id)identifier;
- (BOOL)initializeStorage;
- (BOOL)popCloudScopedIdentifiersToCheck:(id *)check otherScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)removeRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)scopeIdentifier:(id)identifier hasIgnoredRecordsBeforeDate:(id)date;
- (BOOL)setIgnoredDate:(id)date forRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteIgnoredRecords)initWithAbstractObject:(id)object;
- (id)ignoredRecordWithScopedIdentifier:(id)identifier;
- (id)ignoredRecordsBeforeDate:(id)date scopeIdentifier:(id)identifier maximumCount:(unint64_t)count;
- (id)status;
- (void)writeTransactionDidFail;
@end

@implementation CPLPrequeliteIgnoredRecords

- (CPLPrequeliteIgnoredRecords)initWithAbstractObject:(id)object
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteIgnoredRecords;
  v3 = [(CPLPrequeliteStorage *)&v8 initWithAbstractObject:object];
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
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)initializeStorage
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteIgnoredRecords;
  if (![(CPLPrequeliteStorage *)&v10 initializeStorage]|| ![(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:identifier TEXT NOT NULL, serializedRecord DATA NOT NULL, ignoredDate TIMESTAMP NOT NULL, otherScopeIndex INTEGER NOT NULL, shadowed INTEGER NOT NULL", 0]|| ![(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0]|| ![(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"scopeIndex unique:identifier" error:1, 0]|| ![(CPLPrequeliteStorage *)self createIndexOnColumn:@"otherScopeIndex" error:0]|| ![(CPLPrequeliteStorage *)self createIndexOnColumn:@"shadowed" error:0])
  {
    return 0;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [CPLPrequeliteVariable indexVariableForVariableWithName:@"ignoredDate" forTable:mainTable];

  mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplExecute:{@"CREATE INDEX %@ ON %@ (scopeIndex, ignoredDate ASC) WHERE shadowed != 0", v6, mainTable2}];

  return v8;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v52.receiver = self;
  v52.super_class = CPLPrequeliteIgnoredRecords;
  if (![(CPLPrequeliteStorage *)&v52 upgradeStorageToVersion:?])
  {
    return 0;
  }

  v5 = 1;
  if (version > 75)
  {
    if (version == 76)
    {
      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v25 = v24;
      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      v28 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN ignoredDate TIMESTAMP DEFAULT 0", mainTable}];

      if (!v28)
      {
        goto LABEL_25;
      }

      mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
      v30 = [pqlConnection cplExecute:{@"UPDATE %@ SET ignoredDate = %ld", mainTable2, v25}];

      if (!v30)
      {
        goto LABEL_25;
      }

      mainTable3 = [(CPLPrequeliteStorage *)self mainTable];
      scopes = [CPLPrequeliteVariable indexVariableForVariableWithName:@"ignoredDate" forTable:mainTable3];

      mainTable4 = [(CPLPrequeliteStorage *)self mainTable];
      v5 = [pqlConnection cplExecute:{@"CREATE INDEX %@ ON %@ (scopeIndex, ignoredDate ASC) WHERE shadowed != 0", scopes, mainTable4}];
    }

    else
    {
      if (version != 78 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore2 pqlConnection];

      mainTable5 = [(CPLPrequeliteStorage *)self mainTable];
      v12 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN otherScopeIndex INTEGER DEFAULT 0", mainTable5}];

      if (!v12 || ![(CPLPrequeliteStorage *)self createIndexOnColumn:@"otherScopeIndex" error:0])
      {
        goto LABEL_25;
      }

      if ([(CPLPrequeliteIgnoredRecords *)self _isEmpty])
      {
        goto LABEL_26;
      }

      pqStore3 = [(CPLPrequeliteStorage *)self pqStore];
      abstractObject = [pqStore3 abstractObject];
      scopes = [abstractObject scopes];

      primaryScope = [scopes primaryScope];
      if (primaryScope)
      {
        v17 = [scopes sharingScopeForScope:primaryScope];
        if (v17)
        {
          mainTable6 = [(CPLPrequeliteStorage *)self mainTable];
          v19 = [pqlConnection cplExecute:{@"UPDATE %@ SET otherScopeIndex = %ld WHERE scopeIndex = %ld", mainTable6, objc_msgSend(primaryScope, "cloudIndex"), objc_msgSend(v17, "cloudIndex")}];

          if (v19 && (v20 = [pqlConnection changes], -[CPLPrequeliteStorage mainTable](self, "mainTable"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(pqlConnection, "cplExecute:", @"UPDATE %@ SET otherScopeIndex = %ld WHERE scopeIndex = %ld", v21, objc_msgSend(v17, "cloudIndex"), objc_msgSend(primaryScope, "cloudIndex")), v21, v22))
          {
            pqStore4 = [(CPLPrequeliteStorage *)self pqStore];
            [pqStore4 recordUpgradeEvent:{@"Updated other scope index for %lld shared records and %lld private records", v20, objc_msgSend(pqlConnection, "changes")}];
          }

          else
          {
            v5 = 0;
          }
        }

        else if (([scopes valueForFlag:16 forScope:primaryScope] & 1) == 0)
        {
          context = objc_autoreleasePoolPush();
          pqStore5 = [(CPLPrequeliteStorage *)self pqStore];
          transientPullRepository = [pqStore5 transientPullRepository];

          cloudIndex = [primaryScope cloudIndex];
          mainTable7 = [(CPLPrequeliteStorage *)self mainTable];
          v49 = cloudIndex;
          v37 = [pqlConnection cplFetch:{@"SELECT serializedRecord FROM %@ WHERE scopeIndex = %ld", mainTable7, cloudIndex}];

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

            v48 = [transientPullRepository appendBatch:v38 alreadyMingled:0 error:0];
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
          if ((![v38 count] || objc_msgSend(transientPullRepository, "appendBatch:alreadyMingled:error:", v38, 0, 0)) && (-[CPLPrequeliteStorage mainTable](self, "mainTable"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(pqlConnection, "cplExecute:", @"DELETE FROM %@ WHERE scopeIndex = %ld", v43, v49), v43, v44))
          {
            changes = [pqlConnection changes];
            pqStore6 = [(CPLPrequeliteStorage *)self pqStore];
            if (v39 == changes)
            {
              [pqStore6 recordUpgradeEvent:{@"Transferred %lu private records to transient pull repository", v39, v47}];
            }

            else
            {
              [pqStore6 recordUpgradeEvent:{@"Transferred %lu private records to transient pull repository (deleted %lld)", v39, objc_msgSend(pqlConnection, "changes")}];
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

  if (version == 73)
  {
    return [(CPLPrequeliteStorage *)self createStorage];
  }

  if (version == 74 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    pqStore7 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore7 pqlConnection];

    mainTable8 = [(CPLPrequeliteStorage *)self mainTable];
    v9 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN shadowed INTEGER DEFAULT 1", mainTable8}];

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

- (id)ignoredRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CPLPrequeliteIgnoredRecords *)self _isEmpty]|| (v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy], v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100173690;
    v14[3] = &unk_10027B218;
    v15 = identifierCopy;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [v15 identifier];
    v6 = [pqlConnection cplFetchObject:v14 sql:{@"SELECT scopeIndex, identifier, serializedRecord, ignoredDate FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, v7}];

    v12 = +[NSNull null];

    if (v6 == v12)
    {

      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CPLPrequeliteIgnoredRecords *)self _isEmpty]|| (v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy], v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v11 = [PQLFormatInjection formatInjection:@"identifier = %@ AND scopeIndex = %ld", identifier, v7];
    v6 = [pqStore table:mainTable hasRecordsMatchingQuery:v11];
  }

  return v6;
}

- (BOOL)addIgnoredRecord:(id)record ignoredDate:(id)date otherScopeIndex:(int64_t)index error:(id *)error
{
  recordCopy = record;
  dateCopy = date;
  scopedIdentifier = [recordCopy scopedIdentifier];
  v13 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:scopedIdentifier];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:scopedIdentifier];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v15 = v13;
    errorCopy = error;
    supportsSharingScopedIdentifier = [recordCopy supportsSharingScopedIdentifier];
    indexCopy = index;
    v16 = [recordCopy copy];
    [v16 prepareForStorage];
    v17 = [CPLArchiver archivedDataWithRootObject:v16];
    [(CPLPrequeliteStorage *)self pqStore];
    v19 = v18 = dateCopy;
    pqlConnection = [v19 pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [scopedIdentifier identifier];
    v30 = v18;
    v23 = v18;
    v24 = v17;
    [v23 timeIntervalSinceReferenceDate];
    v14 = [pqlConnection cplExecute:{@"INSERT OR REPLACE INTO %@ (scopeIndex, identifier, serializedRecord, shadowed, ignoredDate, otherScopeIndex) VALUES (%ld, %@, %@, %d, %ld, %ld)", mainTable, v15, identifier, v17, supportsSharingScopedIdentifier, v25, indexCopy}];

    if (v14)
    {
      [*(&self->super._shouldUpgradeSchema + 1) setValue:&__kCFBooleanFalse];
    }

    else if (errorCopy)
    {
      *errorCopy = [pqlConnection lastCPLError];
    }

    dateCopy = v30;
  }

  return v14;
}

- (BOOL)removeRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ([(CPLPrequeliteIgnoredRecords *)self _isEmpty])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (error)
      {
        [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
        *error = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v9 = v8;
      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      identifier = [identifierCopy identifier];
      v7 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, v9, identifier}];

      if (error && (v7 & 1) == 0)
      {
        *error = [pqlConnection lastCPLError];
      }

      [*(&self->super._shouldUpgradeSchema + 1) discardCachedValue];
    }
  }

  return v7;
}

- (id)ignoredRecordsBeforeDate:(id)date scopeIdentifier:(id)identifier maximumCount:(unint64_t)count
{
  dateCopy = date;
  identifierCopy = identifier;
  v10 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:identifierCopy];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = &__NSArray0__struct;
  }

  else
  {
    v12 = v10;
    v13 = [[NSMutableArray alloc] initWithCapacity:count];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    [dateCopy timeIntervalSinceReferenceDate];
    v27 = pqlConnection;
    v18 = [pqlConnection cplFetch:{@"SELECT scopeIndex, identifier, serializedRecord, ignoredDate FROM %@ WHERE shadowed != 0 AND scopeIndex = %ld AND ignoredDate < %ld LIMIT %ld", mainTable, v12, v17, count}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100173DFC;
    v28[3] = &unk_10027B9D8;
    v29 = identifierCopy;
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

- (BOOL)setIgnoredDate:(id)date forRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  dateCopy = date;
  identifierCopy = identifier;
  v10 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = v10;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    [dateCopy timeIntervalSinceReferenceDate];
    v17 = v16;
    identifier = [identifierCopy identifier];
    v11 = [pqlConnection cplExecute:{@"UPDATE %@ SET ignoredDate = %ld WHERE scopeIndex = %ld AND identifier = %@", mainTable, v17, v12, identifier}];

    if (error && (v11 & 1) == 0)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v11;
}

- (BOOL)scopeIdentifier:(id)identifier hasIgnoredRecordsBeforeDate:(id)date
{
  dateCopy = date;
  v7 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:identifier];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    [dateCopy timeIntervalSinceReferenceDate];
    v13 = [PQLFormatInjection formatInjection:@"shadowed != 0 AND scopeIndex = %ld AND ignoredDate < %ld", v9, v12];
    v8 = [pqStore table:mainTable hasRecordsMatchingQuery:v13];
  }

  return v8;
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

  [*(&self->super._shouldUpgradeSchema + 1) discardCachedValue];

  return v14;
}

- (BOOL)popCloudScopedIdentifiersToCheck:(id *)check otherScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v12 = [[NSMutableArray alloc] initWithCapacity:count];
  v13 = objc_alloc_init(NSMutableIndexSet);
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [pqlConnection cplFetch:{@"SELECT rowid, scopeIndex, identifier FROM %@ WHERE otherScopeIndex = %ld LIMIT %lu", mainTable, index, count}];

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
        abstractObject = [(CPLPrequeliteIgnoredRecords *)self abstractObject];
        engineStore = [abstractObject engineStore];
        scopes = [engineStore scopes];

        v22 = [scopes scopeIdentifierForCloudScopeIndex:v18];

        if (v22)
        {
          v23 = [scopes scopeWithIdentifier:v22];
          if (!v23 || [scopes valueForFlag:16 forScope:v23])
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
    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1001745E4;
    v34[3] = &unk_10027B1F0;
    v37 = &v45;
    v35 = pqlConnection;
    v28 = mainTable2;
    v36 = v28;
    v38 = &v39;
    [v13 enumerateIndexesUsingBlock:v34];
  }

  if (*(v46 + 24) == 1)
  {
    *check = [v12 copy];
    *deletedCount = [v13 count];
  }

  else if (error)
  {
    *error = v40[5];
  }

  v29 = *(v46 + 24);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  return v29;
}

- (id)status
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableCountOfRecords:mainTable];

  if (v5)
  {
    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    v8 = [PQLFormatInjection formatInjection:@"shadowed = 1"];
    v9 = [pqStore2 table:mainTable2 countOfRecordsMatchingQuery:v8];

    if (v5 == v9)
    {
      recordsDesignation = [(CPLPrequeliteIgnoredRecords *)self recordsDesignation];
      [NSString stringWithFormat:@"%lu %@ (all shadowed)", v5, recordsDesignation, v16, v17];
    }

    else
    {
      recordsDesignation2 = [(CPLPrequeliteIgnoredRecords *)self recordsDesignation];
      recordsDesignation = recordsDesignation2;
      if (v9)
      {
        v16 = v9;
        v17 = v5 - v9;
        v14 = v5;
        v15 = recordsDesignation2;
        v12 = @"%lu %@ (%lu shadowed - %lu split)";
      }

      else
      {
        v14 = v5;
        v15 = recordsDesignation2;
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