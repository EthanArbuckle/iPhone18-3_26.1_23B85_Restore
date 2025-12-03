@interface CPLPrequeliteRecordComputeStatePushQueue
- (BOOL)addComputeState:(id)state discardedFileStorageIdentifier:(id *)identifier error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index discardedFileStorageIdentifiers:(id *)identifiers maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier;
- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier table:(id)table;
- (BOOL)hasSomeComputeStateWithFileStorageIdentifier:(id)identifier;
- (BOOL)initializeStorage;
- (BOOL)removeComputeStateWithLocalScopedIdentifier:(id)identifier version:(id)version adjustmentFingerprint:(id)fingerprint discardedFileStorageIdentifier:(id *)storageIdentifier error:(id *)error;
- (BOOL)updateFileURLForComputeState:(id)state discardedFileStorageIdentifier:(id *)identifier hasUpdated:(BOOL *)updated error:(id *)error;
- (BOOL)updateLocalStateForComputeState:(id)state newLocalState:(unint64_t)localState error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (id)computeStatesToUploadWithScopeIdentifier:(id)identifier localState:(unint64_t)state maximumCount:(unint64_t)count;
- (id)status;
- (unint64_t)countOfComputeStates;
@end

@implementation CPLPrequeliteRecordComputeStatePushQueue

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteRecordComputeStatePushQueue;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:localIdentifier TEXT NOT NULL, fileStorageIdentifier TEXT NOT NULL, version TEXT NOT NULL, adjustmentFingerprint TEXT, lastUpdatedDate TIMESTAMP NOT NULL, state INTEGER NOT NULL DEFAULT 0", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"localIdentifier unique:scopeIndex" error:1, 0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
        if (initializeStorage)
        {
          initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"fileStorageIdentifier" error:0];
          if (initializeStorage)
          {
            LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexWithName:@"state" withDefinition:@"state unique:scopeIndex" error:0, 0];
          }
        }
      }
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v7.receiver = self;
  v7.super_class = CPLPrequeliteRecordComputeStatePushQueue;
  v5 = [(CPLPrequeliteStorage *)&v7 upgradeStorageToVersion:?];
  if (v5)
  {
    if (version == 89)
    {
      if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        sub_1001C2BD0(self, &v8);
        LOBYTE(v5) = v8;
        return v5;
      }
    }

    else if (version == 88)
    {
      LOBYTE(v5) = [(CPLPrequeliteStorage *)self createStorage];
      return v5;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)addComputeState:(id)state discardedFileStorageIdentifier:(id *)identifier error:(id *)error
{
  stateCopy = state;
  itemScopedIdentifier = [stateCopy itemScopedIdentifier];
  v10 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:itemScopedIdentifier];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    identifierCopy = identifier;
    errorCopy = error;
    v12 = v10;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    selfCopy = self;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v54 = itemScopedIdentifier;
    identifier = [itemScopedIdentifier identifier];
    fileStorageIdentifier = [stateCopy fileStorageIdentifier];
    v18 = fileStorageIdentifier;
    v19 = @"#__NONE__#";
    if (fileStorageIdentifier)
    {
      v19 = fileStorageIdentifier;
    }

    v20 = v19;
    version = [stateCopy version];
    adjustmentFingerprint = [stateCopy adjustmentFingerprint];
    v23 = stateCopy;
    v24 = adjustmentFingerprint;
    v53 = v23;
    lastUpdatedDate = [v23 lastUpdatedDate];
    [lastUpdatedDate timeIntervalSinceReferenceDate];
    v51 = v12;
    v27 = [pqlConnection cplExecute:{@"INSERT INTO %@ (scopeIndex, localIdentifier, fileStorageIdentifier, version, adjustmentFingerprint, lastUpdatedDate) VALUES (%ld, %@, %@, %@, %@, %lu)", mainTable, v12, identifier, v20, version, v24, v26}];

    v28 = pqlConnection;
    lastError = [pqlConnection lastError];
    v30 = lastError;
    if (v27)
    {
      v11 = 1;
      itemScopedIdentifier = v54;
      stateCopy = v53;
LABEL_20:

      goto LABEL_21;
    }

    domain = [lastError domain];
    if ([domain isEqual:PQLSqliteErrorDomain])
    {
      code = [v30 code];

      if (code != 19)
      {
        v11 = 0;
        itemScopedIdentifier = v54;
        v46 = errorCopy;
        stateCopy = v53;
        if (!errorCopy)
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
      mainTable2 = [(CPLPrequeliteStorage *)selfCopy mainTable];
      identifier2 = [v54 identifier];
      v36 = [pqlConnection cplFetchObjectOfClass:v33 sql:{@"SELECT fileStorageIdentifier FROM %@ WHERE scopeIndex = %ld AND localIdentifier = %@", mainTable2, v12, identifier2}];
      *identifierCopy = sub_100171CB8(v36);

      domain = [(CPLPrequeliteStorage *)selfCopy mainTable];
      identifier3 = [v54 identifier];
      stateCopy = v53;
      fileStorageIdentifier2 = [v53 fileStorageIdentifier];
      v50 = v28;
      v39 = fileStorageIdentifier2;
      v40 = @"#__NONE__#";
      if (fileStorageIdentifier2)
      {
        v40 = fileStorageIdentifier2;
      }

      v41 = v40;
      version2 = [v53 version];
      adjustmentFingerprint2 = [v53 adjustmentFingerprint];
      lastUpdatedDate2 = [v53 lastUpdatedDate];
      [lastUpdatedDate2 timeIntervalSinceReferenceDate];
      v11 = [v50 cplExecute:{@"REPLACE INTO %@ (scopeIndex, localIdentifier, fileStorageIdentifier, version, adjustmentFingerprint, lastUpdatedDate) VALUES (%ld, %@, %@, %@, %@, %lu)", domain, v51, identifier3, v41, version2, adjustmentFingerprint2, v45}];

      v28 = v50;
      v46 = errorCopy;
    }

    else
    {
      v11 = 0;
      v46 = errorCopy;
      stateCopy = v53;
    }

    itemScopedIdentifier = v54;
    if (!v46)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (error)
  {
    [CPLErrors invalidScopeErrorWithScopedIdentifier:itemScopedIdentifier];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (BOOL)updateLocalStateForComputeState:(id)state newLocalState:(unint64_t)localState error:(id *)error
{
  itemScopedIdentifier = [state itemScopedIdentifier];
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:itemScopedIdentifier];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:itemScopedIdentifier];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = v9;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [itemScopedIdentifier identifier];
    v10 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET state = %ld WHERE scopeIndex = %ld AND localIdentifier = %@", mainTable, localState, v11, identifier}];

    if (error && (v10 & 1) == 0)
    {
      *error = [pqlConnection lastError];
    }
  }

  return v10;
}

- (BOOL)updateFileURLForComputeState:(id)state discardedFileStorageIdentifier:(id *)identifier hasUpdated:(BOOL *)updated error:(id *)error
{
  stateCopy = state;
  itemScopedIdentifier = [stateCopy itemScopedIdentifier];
  v13 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:itemScopedIdentifier];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    fileStorageIdentifier = [stateCopy fileStorageIdentifier];

    if (!fileStorageIdentifier)
    {
      sub_1001C2D8C(a2, self, stateCopy);
    }

    updatedCopy = updated;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v19 = objc_opt_class();
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [itemScopedIdentifier identifier];
    v22 = [pqlConnection cplFetchObjectOfClass:v19 sql:{@"SELECT fileStorageIdentifier FROM %@ WHERE scopeIndex = %ld AND localIdentifier = %@", mainTable, v15, identifier}];
    *identifier = sub_100171CB8(v22);

    adjustmentFingerprint = [stateCopy adjustmentFingerprint];

    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    fileStorageIdentifier2 = [stateCopy fileStorageIdentifier];
    identifier2 = [itemScopedIdentifier identifier];
    version = [stateCopy version];
    v28 = version;
    if (adjustmentFingerprint)
    {
      adjustmentFingerprint2 = [stateCopy adjustmentFingerprint];
      v30 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET fileStorageIdentifier = %@ WHERE scopeIndex = %ld AND localIdentifier = %@ AND version = %@ AND adjustmentFingerprint = %@", mainTable2, fileStorageIdentifier2, v15, identifier2, v28, adjustmentFingerprint2}];

      if (v30)
      {
LABEL_7:
        *updatedCopy = [pqlConnection changes] > 0;
        v14 = 1;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v31 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET fileStorageIdentifier = %@ WHERE scopeIndex = %ld AND localIdentifier = %@ AND version = %@ AND adjustmentFingerprint IS NULL", mainTable2, fileStorageIdentifier2, v15, identifier2, version}];

      if (v31)
      {
        goto LABEL_7;
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

    goto LABEL_13;
  }

  if (error)
  {
    [CPLErrors invalidScopeErrorWithScopedIdentifier:itemScopedIdentifier];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (BOOL)removeComputeStateWithLocalScopedIdentifier:(id)identifier version:(id)version adjustmentFingerprint:(id)fingerprint discardedFileStorageIdentifier:(id *)storageIdentifier error:(id *)error
{
  identifierCopy = identifier;
  versionCopy = version;
  fingerprintCopy = fingerprint;
  v15 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:identifierCopy];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v15;
    storageIdentifierCopy = storageIdentifier;
    v18 = versionCopy;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v21 = objc_opt_class();
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v24 = identifier;
    v41 = fingerprintCopy;
    if (fingerprintCopy)
    {
      v38 = v18;
      v39 = fingerprintCopy;
      v35 = v17;
      v37 = identifier;
      v34 = mainTable;
      v25 = @"SELECT fileStorageIdentifier FROM %@ WHERE scopeIndex = %ld AND localIdentifier = %@ AND version = %@ AND adjustmentFingerprint = %@";
    }

    else
    {
      v37 = identifier;
      v38 = v18;
      v34 = mainTable;
      v35 = v17;
      v25 = @"SELECT fileStorageIdentifier FROM %@ WHERE scopeIndex = %ld AND localIdentifier = %@ AND version = %@ AND adjustmentFingerprint IS NULL";
    }

    v26 = pqlConnection;
    v27 = [pqlConnection cplFetchObjectOfClass:v21 sql:{v25, v34, v35, v37, v38, v39}];

    versionCopy = v18;
    if (v27)
    {
      *storageIdentifierCopy = sub_100171CB8(v27);
      mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
      identifier2 = [identifierCopy identifier];
      v36 = v17;
      v30 = v26;
      v16 = [v26 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND localIdentifier = %@", mainTable2, v36, identifier2}];

      if (error)
      {
        fingerprintCopy = v41;
        if ((v16 & 1) == 0)
        {
          [v30 lastError];
          *error = v16 = 0;
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
        fingerprintCopy = v41;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          mainTable3 = [(CPLPrequeliteStorage *)self mainTable];
          *buf = 138413058;
          v43 = identifierCopy;
          v44 = 2112;
          v45 = v18;
          v46 = 2112;
          v47 = v41;
          v48 = 2112;
          v49 = mainTable3;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No payload found with localScopedIdentifier: %@ version: %@ and adjustmentFingerprint: %@ to be removed from %@", buf, 0x2Au);
        }

        v16 = 1;
        goto LABEL_18;
      }

      v16 = 1;
      v30 = v26;
    }

    fingerprintCopy = v41;
LABEL_18:

    goto LABEL_19;
  }

  if (error)
  {
    [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  return v16;
}

- (id)computeStatesToUploadWithScopeIdentifier:(id)identifier localState:(unint64_t)state maximumCount:(unint64_t)count
{
  identifierCopy = identifier;
  v9 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifierCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = &__NSArray0__struct;
  }

  else
  {
    v11 = v9;
    v10 = [[NSMutableArray alloc] initWithCapacity:count];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v27 = pqlConnection;
    v15 = [pqlConnection cplFetch:{@"SELECT localIdentifier, fileStorageIdentifier, version, adjustmentFingerprint, lastUpdatedDate FROM %@ WHERE scopeIndex = %ld AND state = %ld LIMIT %ld", mainTable, v11, state, count}];

    if ([v15 next])
    {
      do
      {
        v29 = [v15 stringAtIndex:0];
        v28 = [v15 stringAtIndex:1];
        v16 = [v15 stringAtIndex:2];
        v17 = [v15 stringAtIndex:3];
        v18 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v15 integerAtIndex:4]);
        v19 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:identifierCopy identifier:v29 scopeIndex:v11];
        v20 = v11;
        v21 = identifierCopy;
        v22 = [CPLRecordComputeState alloc];
        sub_100171CB8(v28);
        v24 = v23 = v10;
        v25 = [v22 initWithItemScopedIdentifier:v19 fileStorageIdentifier:v24 version:v16 fileURL:0 adjustmentFingerprint:v17 lastUpdatedDate:v18];

        v10 = v23;
        [v23 addObject:v25];

        identifierCopy = v21;
        v11 = v20;
      }

      while (([v15 next] & 1) != 0);
    }
  }

  return v10;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier table:(id)table
{
  tableCopy = table;
  v7 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifier];
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
  LOBYTE(self) = [(CPLPrequeliteRecordComputeStatePushQueue *)self hasChangesInScopeWithIdentifier:identifierCopy table:mainTable];

  return self;
}

- (BOOL)hasSomeComputeStateWithFileStorageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplFetch:{@"SELECT fileStorageIdentifier FROM %@ WHERE fileStorageIdentifier = %@", mainTable, identifierCopy}];

  LOBYTE(mainTable) = [v8 next];
  return mainTable;
}

- (id)status
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteRecordComputeStatePushQueue;
  status = [(CPLPrequeliteStorage *)&v5 status];
  v3 = [status mutableCopy];

  return v3;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index discardedFileStorageIdentifiers:(id *)identifiers maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v13 = objc_alloc_init(NSMutableArray);
  v14 = objc_alloc_init(NSMutableIndexSet);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v18 = [pqlConnection cplFetch:{@"SELECT rowID, fileStorageIdentifier FROM %@ WHERE scopeIndex = %ld LIMIT %ld", mainTable, index, count}];
  while (1)
  {

    if (![v18 next])
    {
      break;
    }

    [v14 addIndex:{objc_msgSend(v18, "integerAtIndex:", 0)}];
    v19 = [v18 stringAtIndex:1];
    mainTable = sub_100171CB8(v19);

    if (mainTable)
    {
      [v13 addObject:mainTable];
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
  v20 = pqlConnection;
  v25 = v20;
  selfCopy = self;
  [v14 enumerateIndexesUsingBlock:v24];
  if (error && (v29[3] & 1) == 0)
  {
    *error = [v20 lastError];
  }

  if (v29[3])
  {
    *deletedCount = [v14 count];
    v21 = v13;
    *identifiers = v13;
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
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableCountOfRecords:mainTable];

  return v5;
}

@end