@interface CPLPrequeliteRecordComputeStatePushQueue
- (BOOL)addComputeState:(id)a3 discardedFileStorageIdentifier:(id *)a4 error:(id *)a5;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 discardedFileStorageIdentifiers:(id *)a4 maxCount:(int64_t)a5 deletedCount:(int64_t *)a6 error:(id *)a7;
- (BOOL)hasChangesInScopeWithIdentifier:(id)a3;
- (BOOL)hasChangesInScopeWithIdentifier:(id)a3 table:(id)a4;
- (BOOL)hasSomeComputeStateWithFileStorageIdentifier:(id)a3;
- (BOOL)initializeStorage;
- (BOOL)removeComputeStateWithLocalScopedIdentifier:(id)a3 version:(id)a4 adjustmentFingerprint:(id)a5 discardedFileStorageIdentifier:(id *)a6 error:(id *)a7;
- (BOOL)updateFileURLForComputeState:(id)a3 discardedFileStorageIdentifier:(id *)a4 hasUpdated:(BOOL *)a5 error:(id *)a6;
- (BOOL)updateLocalStateForComputeState:(id)a3 newLocalState:(unint64_t)a4 error:(id *)a5;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (id)computeStatesToUploadWithScopeIdentifier:(id)a3 localState:(unint64_t)a4 maximumCount:(unint64_t)a5;
- (id)status;
- (unint64_t)countOfComputeStates;
@end

@implementation CPLPrequeliteRecordComputeStatePushQueue

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteRecordComputeStatePushQueue;
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:localIdentifier TEXT NOT NULL, fileStorageIdentifier TEXT NOT NULL, version TEXT NOT NULL, adjustmentFingerprint TEXT, lastUpdatedDate TIMESTAMP NOT NULL, state INTEGER NOT NULL DEFAULT 0", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"localIdentifier unique:scopeIndex" error:1, 0];
      if (v3)
      {
        v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
        if (v3)
        {
          v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"fileStorageIdentifier" error:0];
          if (v3)
          {
            LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexWithName:@"state" withDefinition:@"state unique:scopeIndex" error:0, 0];
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CPLPrequeliteRecordComputeStatePushQueue;
  v5 = [(CPLPrequeliteStorage *)&v7 upgradeStorageToVersion:?];
  if (v5)
  {
    if (a3 == 89)
    {
      if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        sub_1001C2BD0(self, &v8);
        LOBYTE(v5) = v8;
        return v5;
      }
    }

    else if (a3 == 88)
    {
      LOBYTE(v5) = [(CPLPrequeliteStorage *)self createStorage];
      return v5;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)addComputeState:(id)a3 discardedFileStorageIdentifier:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 itemScopedIdentifier];
  v10 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v9];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v48 = a4;
    v52 = a5;
    v12 = v10;
    v13 = [(CPLPrequeliteStorage *)self pqStore];
    v14 = [v13 pqlConnection];

    v49 = self;
    v15 = [(CPLPrequeliteStorage *)self mainTable];
    v54 = v9;
    v16 = [v9 identifier];
    v17 = [v8 fileStorageIdentifier];
    v18 = v17;
    v19 = @"#__NONE__#";
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;
    v21 = [v8 version];
    v22 = [v8 adjustmentFingerprint];
    v23 = v8;
    v24 = v22;
    v53 = v23;
    v25 = [v23 lastUpdatedDate];
    [v25 timeIntervalSinceReferenceDate];
    v51 = v12;
    v27 = [v14 cplExecute:{@"INSERT INTO %@ (scopeIndex, localIdentifier, fileStorageIdentifier, version, adjustmentFingerprint, lastUpdatedDate) VALUES (%ld, %@, %@, %@, %@, %lu)", v15, v12, v16, v20, v21, v24, v26}];

    v28 = v14;
    v29 = [v14 lastError];
    v30 = v29;
    if (v27)
    {
      v11 = 1;
      v9 = v54;
      v8 = v53;
LABEL_20:

      goto LABEL_21;
    }

    v31 = [v29 domain];
    if ([v31 isEqual:PQLSqliteErrorDomain])
    {
      v32 = [v30 code];

      if (v32 != 19)
      {
        v11 = 0;
        v9 = v54;
        v46 = v52;
        v8 = v53;
        if (!v52)
        {
          goto LABEL_20;
        }

LABEL_18:
        if ((v11 & 1) == 0)
        {
          [v28 lastError];
          *v46 = v11 = 0;
        }

        goto LABEL_20;
      }

      v33 = objc_opt_class();
      v34 = [(CPLPrequeliteStorage *)v49 mainTable];
      v35 = [v54 identifier];
      v36 = [v14 cplFetchObjectOfClass:v33 sql:{@"SELECT fileStorageIdentifier FROM %@ WHERE scopeIndex = %ld AND localIdentifier = %@", v34, v12, v35}];
      *v48 = sub_100171CB8(v36);

      v31 = [(CPLPrequeliteStorage *)v49 mainTable];
      v37 = [v54 identifier];
      v8 = v53;
      v38 = [v53 fileStorageIdentifier];
      v50 = v28;
      v39 = v38;
      v40 = @"#__NONE__#";
      if (v38)
      {
        v40 = v38;
      }

      v41 = v40;
      v42 = [v53 version];
      v43 = [v53 adjustmentFingerprint];
      v44 = [v53 lastUpdatedDate];
      [v44 timeIntervalSinceReferenceDate];
      v11 = [v50 cplExecute:{@"REPLACE INTO %@ (scopeIndex, localIdentifier, fileStorageIdentifier, version, adjustmentFingerprint, lastUpdatedDate) VALUES (%ld, %@, %@, %@, %@, %lu)", v31, v51, v37, v41, v42, v43, v45}];

      v28 = v50;
      v46 = v52;
    }

    else
    {
      v11 = 0;
      v46 = v52;
      v8 = v53;
    }

    v9 = v54;
    if (!v46)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (a5)
  {
    [CPLErrors invalidScopeErrorWithScopedIdentifier:v9];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (BOOL)updateLocalStateForComputeState:(id)a3 newLocalState:(unint64_t)a4 error:(id *)a5
{
  v8 = [a3 itemScopedIdentifier];
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a5)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v8];
      *a5 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = v9;
    v12 = [(CPLPrequeliteStorage *)self pqStore];
    v13 = [v12 pqlConnection];

    v14 = [(CPLPrequeliteStorage *)self mainTable];
    v15 = [v8 identifier];
    v10 = [v13 cplExecute:{@"UPDATE OR FAIL %@ SET state = %ld WHERE scopeIndex = %ld AND localIdentifier = %@", v14, a4, v11, v15}];

    if (a5 && (v10 & 1) == 0)
    {
      *a5 = [v13 lastError];
    }
  }

  return v10;
}

- (BOOL)updateFileURLForComputeState:(id)a3 discardedFileStorageIdentifier:(id *)a4 hasUpdated:(BOOL *)a5 error:(id *)a6
{
  v11 = a3;
  v12 = [v11 itemScopedIdentifier];
  v13 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v12];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    v16 = [v11 fileStorageIdentifier];

    if (!v16)
    {
      sub_1001C2D8C(a2, self, v11);
    }

    v33 = a5;
    v17 = [(CPLPrequeliteStorage *)self pqStore];
    v18 = [v17 pqlConnection];

    v19 = objc_opt_class();
    v20 = [(CPLPrequeliteStorage *)self mainTable];
    v21 = [v12 identifier];
    v22 = [v18 cplFetchObjectOfClass:v19 sql:{@"SELECT fileStorageIdentifier FROM %@ WHERE scopeIndex = %ld AND localIdentifier = %@", v20, v15, v21}];
    *a4 = sub_100171CB8(v22);

    v23 = [v11 adjustmentFingerprint];

    v24 = [(CPLPrequeliteStorage *)self mainTable];
    v25 = [v11 fileStorageIdentifier];
    v26 = [v12 identifier];
    v27 = [v11 version];
    v28 = v27;
    if (v23)
    {
      v29 = [v11 adjustmentFingerprint];
      v30 = [v18 cplExecute:{@"UPDATE OR FAIL %@ SET fileStorageIdentifier = %@ WHERE scopeIndex = %ld AND localIdentifier = %@ AND version = %@ AND adjustmentFingerprint = %@", v24, v25, v15, v26, v28, v29}];

      if (v30)
      {
LABEL_7:
        *v33 = [v18 changes] > 0;
        v14 = 1;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v31 = [v18 cplExecute:{@"UPDATE OR FAIL %@ SET fileStorageIdentifier = %@ WHERE scopeIndex = %ld AND localIdentifier = %@ AND version = %@ AND adjustmentFingerprint IS NULL", v24, v25, v15, v26, v27}];

      if (v31)
      {
        goto LABEL_7;
      }
    }

    if (a6)
    {
      [v18 lastError];
      *a6 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_13;
  }

  if (a6)
  {
    [CPLErrors invalidScopeErrorWithScopedIdentifier:v12];
    *a6 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (BOOL)removeComputeStateWithLocalScopedIdentifier:(id)a3 version:(id)a4 adjustmentFingerprint:(id)a5 discardedFileStorageIdentifier:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v12];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v15;
    v40 = a6;
    v18 = v13;
    v19 = [(CPLPrequeliteStorage *)self pqStore];
    v20 = [v19 pqlConnection];

    v21 = objc_opt_class();
    v22 = [(CPLPrequeliteStorage *)self mainTable];
    v23 = [v12 identifier];
    v24 = v23;
    v41 = v14;
    if (v14)
    {
      v38 = v18;
      v39 = v14;
      v35 = v17;
      v37 = v23;
      v34 = v22;
      v25 = @"SELECT fileStorageIdentifier FROM %@ WHERE scopeIndex = %ld AND localIdentifier = %@ AND version = %@ AND adjustmentFingerprint = %@";
    }

    else
    {
      v37 = v23;
      v38 = v18;
      v34 = v22;
      v35 = v17;
      v25 = @"SELECT fileStorageIdentifier FROM %@ WHERE scopeIndex = %ld AND localIdentifier = %@ AND version = %@ AND adjustmentFingerprint IS NULL";
    }

    v26 = v20;
    v27 = [v20 cplFetchObjectOfClass:v21 sql:{v25, v34, v35, v37, v38, v39}];

    v13 = v18;
    if (v27)
    {
      *v40 = sub_100171CB8(v27);
      v28 = [(CPLPrequeliteStorage *)self mainTable];
      v29 = [v12 identifier];
      v36 = v17;
      v30 = v26;
      v16 = [v26 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND localIdentifier = %@", v28, v36, v29}];

      if (a7)
      {
        v14 = v41;
        if ((v16 & 1) == 0)
        {
          [v30 lastError];
          *a7 = v16 = 0;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v31 = sub_1001718C0();
        v30 = v26;
        v14 = v41;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(CPLPrequeliteStorage *)self mainTable];
          *buf = 138413058;
          v43 = v12;
          v44 = 2112;
          v45 = v18;
          v46 = 2112;
          v47 = v41;
          v48 = 2112;
          v49 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No payload found with localScopedIdentifier: %@ version: %@ and adjustmentFingerprint: %@ to be removed from %@", buf, 0x2Au);
        }

        v16 = 1;
        goto LABEL_18;
      }

      v16 = 1;
      v30 = v26;
    }

    v14 = v41;
LABEL_18:

    goto LABEL_19;
  }

  if (a7)
  {
    [CPLErrors invalidScopeErrorWithScopedIdentifier:v12];
    *a7 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  return v16;
}

- (id)computeStatesToUploadWithScopeIdentifier:(id)a3 localState:(unint64_t)a4 maximumCount:(unint64_t)a5
{
  v8 = a3;
  v9 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = &__NSArray0__struct;
  }

  else
  {
    v11 = v9;
    v10 = [[NSMutableArray alloc] initWithCapacity:a5];
    v12 = [(CPLPrequeliteStorage *)self pqStore];
    v13 = [v12 pqlConnection];

    v14 = [(CPLPrequeliteStorage *)self mainTable];
    v27 = v13;
    v15 = [v13 cplFetch:{@"SELECT localIdentifier, fileStorageIdentifier, version, adjustmentFingerprint, lastUpdatedDate FROM %@ WHERE scopeIndex = %ld AND state = %ld LIMIT %ld", v14, v11, a4, a5}];

    if ([v15 next])
    {
      do
      {
        v29 = [v15 stringAtIndex:0];
        v28 = [v15 stringAtIndex:1];
        v16 = [v15 stringAtIndex:2];
        v17 = [v15 stringAtIndex:3];
        v18 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v15 integerAtIndex:4]);
        v19 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v8 identifier:v29 scopeIndex:v11];
        v20 = v11;
        v21 = v8;
        v22 = [CPLRecordComputeState alloc];
        sub_100171CB8(v28);
        v24 = v23 = v10;
        v25 = [v22 initWithItemScopedIdentifier:v19 fileStorageIdentifier:v24 version:v16 fileURL:0 adjustmentFingerprint:v17 lastUpdatedDate:v18];

        v10 = v23;
        [v23 addObject:v25];

        v8 = v21;
        v11 = v20;
      }

      while (([v15 next] & 1) != 0);
    }
  }

  return v10;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)a3 table:(id)a4
{
  v6 = a4;
  v7 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:a3];
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
  LOBYTE(self) = [(CPLPrequeliteRecordComputeStatePushQueue *)self hasChangesInScopeWithIdentifier:v4 table:v5];

  return self;
}

- (BOOL)hasSomeComputeStateWithFileStorageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplFetch:{@"SELECT fileStorageIdentifier FROM %@ WHERE fileStorageIdentifier = %@", v7, v4}];

  LOBYTE(v7) = [v8 next];
  return v7;
}

- (id)status
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteRecordComputeStatePushQueue;
  v2 = [(CPLPrequeliteStorage *)&v5 status];
  v3 = [v2 mutableCopy];

  return v3;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 discardedFileStorageIdentifiers:(id *)a4 maxCount:(int64_t)a5 deletedCount:(int64_t *)a6 error:(id *)a7
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v13 = objc_alloc_init(NSMutableArray);
  v14 = objc_alloc_init(NSMutableIndexSet);
  v15 = [(CPLPrequeliteStorage *)self pqStore];
  v16 = [v15 pqlConnection];

  v17 = [(CPLPrequeliteStorage *)self mainTable];
  v18 = [v16 cplFetch:{@"SELECT rowID, fileStorageIdentifier FROM %@ WHERE scopeIndex = %ld LIMIT %ld", v17, a3, a5}];
  while (1)
  {

    if (![v18 next])
    {
      break;
    }

    [v14 addIndex:{objc_msgSend(v18, "integerAtIndex:", 0)}];
    v19 = [v18 stringAtIndex:1];
    v17 = sub_100171CB8(v19);

    if (v17)
    {
      [v13 addObject:v17];
    }
  }

  if (*(v29 + 24) != 1)
  {
    goto LABEL_11;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100172A98;
  v24[3] = &unk_10027B708;
  v27 = &v28;
  v20 = v16;
  v25 = v20;
  v26 = self;
  [v14 enumerateIndexesUsingBlock:v24];
  if (a7 && (v29[3] & 1) == 0)
  {
    *a7 = [v20 lastError];
  }

  if (v29[3])
  {
    *a6 = [v14 count];
    v21 = v13;
    *a4 = v13;
    v22 = *(v29 + 24);
  }

  else
  {
LABEL_11:
    v22 = 0;
  }

  _Block_object_dispose(&v28, 8);
  return v22 & 1;
}

- (unint64_t)countOfComputeStates
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [v3 tableCountOfRecords:v4];

  return v5;
}

@end