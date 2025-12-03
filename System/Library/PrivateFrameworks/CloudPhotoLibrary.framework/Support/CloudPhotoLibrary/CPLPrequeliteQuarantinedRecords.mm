@interface CPLPrequeliteQuarantinedRecords
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)initializeStorage;
- (BOOL)isRecordWithScopedIdentifierQuarantined:(id)quarantined;
- (BOOL)removeQuarantinedRecordWithScopedIdentifier:(id)identifier removed:(BOOL *)removed error:(id *)error;
- (BOOL)removeRelatedRecordsFromQuarantineWithError:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (Class)classForQuarantinedRecordWithScopedIdentifier:(id)identifier;
- (unint64_t)countOfQuarantinedRecords;
- (unint64_t)countOfQuarantinedRecordsInScopeWithIdentifier:(id)identifier;
@end

@implementation CPLPrequeliteQuarantinedRecords

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteQuarantinedRecords;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:localIdentifier TEXT NOT NULL, quarantineDate TIMESTAMP NOT NULL, class TEXT, related INTEGER, reason TEXT NOT NULL", 0];
    if (initializeStorage)
    {
      LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexWithName:@"localScopedIdentifier" withDefinition:@"localIdentifier unique:scopeIndex" error:1, 0];
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v16.receiver = self;
  v16.super_class = CPLPrequeliteQuarantinedRecords;
  if (![(CPLPrequeliteStorage *)&v16 upgradeStorageToVersion:?])
  {
    LOBYTE(pqStore2) = 0;
    return pqStore2;
  }

  LOBYTE(pqStore2) = 1;
  if (version > 62)
  {
    if (version == 63)
    {
      if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        sub_1001C5CB0(self, &v17);
        LOBYTE(pqStore2) = v17;
      }

      return pqStore2;
    }

    if (version != 68)
    {
      if (version != 93 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return pqStore2;
      }

      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      v10 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN related INTEGER", mainTable}];

      if (v10)
      {
        LOBYTE(pqStore2) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"related" error:0];
      }

      else
      {
        LOBYTE(pqStore2) = 0;
      }

LABEL_26:

      return pqStore2;
    }

    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore2 pqlConnection];

    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    LODWORD(pqStore2) = [pqlConnection cplExecute:{@"UPDATE %@ SET class = CPLMasterChange WHERE reason = Asset has been quarantined", mainTable2}];

    if (!pqStore2)
    {
      goto LABEL_26;
    }

    changes = [pqlConnection changes];
    if (changes < 1)
    {
      goto LABEL_26;
    }

    v14 = changes;
    pqStore3 = [(CPLPrequeliteStorage *)self pqStore];
    [pqStore3 recordUpgradeEvent:{@"Fixed %lld quarantined record classes to CPLMasterChange", v14}];
LABEL_24:

    goto LABEL_26;
  }

  if (version == 24)
  {
    createStorage = [(CPLPrequeliteStorage *)self createStorage];
    goto LABEL_16;
  }

  if (version == 38)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return pqStore2;
    }

    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore2 pqlConnection];

    pqStore3 = [(CPLPrequeliteStorage *)self mainTable];
    LOBYTE(pqStore2) = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN reason TEXT NOT NULL DEFAULT Unknown reason", pqStore3}];
    goto LABEL_24;
  }

  if (version == 39 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    createStorage = [(CPLPrequeliteStorage *)self recreateMainTableWithCopyInstructions:@"scopeIndex oldFields:localIdentifier error:quarantineDate, class, reason", @"1, localIdentifier, quarantineDate, NULL, reason", 0];
LABEL_16:
    LOBYTE(pqStore2) = createStorage;
  }

  return pqStore2;
}

- (BOOL)removeQuarantinedRecordWithScopedIdentifier:(id)identifier removed:(BOOL *)removed error:(id *)error
{
  identifierCopy = identifier;
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:identifierCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
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
    identifier = [identifierCopy identifier];
    v10 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE localIdentifier = %@ AND scopeIndex = %ld", mainTable, identifier, v11}];

    if (v10)
    {
      *removed = [pqlConnection changes] > 0;
    }

    else if (error)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v10;
}

- (BOOL)isRecordWithScopedIdentifierQuarantined:(id)quarantined
{
  quarantinedCopy = quarantined;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:quarantinedCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [quarantinedCopy identifier];
    v11 = [PQLFormatInjection formatInjection:@"localIdentifier = %@ AND scopeIndex = %ld", identifier, v7];
    v6 = [pqStore table:mainTable hasRecordsMatchingQuery:v11];
  }

  return v6;
}

- (Class)classForQuarantinedRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:identifierCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v10 = objc_opt_class();
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v13 = [pqlConnection cplFetchObjectOfClass:v10 sql:{@"SELECT class FROM %@ WHERE localIdentifier = %@ AND scopeIndex = %ld", mainTable, identifier, v7}];

    if (v13)
    {
      v6 = NSClassFromString(v13);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)countOfQuarantinedRecords
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableCountOfRecords:mainTable];

  return v5;
}

- (unint64_t)countOfQuarantinedRecordsInScopeWithIdentifier:(id)identifier
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:identifier];
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

- (BOOL)removeRelatedRecordsFromQuarantineWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE related = 1", mainTable}];

  if (v8)
  {
    if ([pqlConnection changes] >= 1 && (_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10017DA04();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        changes = [pqlConnection changes];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removed %lu related records from quarantine", buf, 0xCu);
      }
    }
  }

  else if (error)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v8;
}

@end