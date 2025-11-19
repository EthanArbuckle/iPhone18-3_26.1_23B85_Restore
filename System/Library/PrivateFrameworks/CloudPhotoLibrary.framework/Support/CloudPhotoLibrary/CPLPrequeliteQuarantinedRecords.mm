@interface CPLPrequeliteQuarantinedRecords
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)initializeStorage;
- (BOOL)isRecordWithScopedIdentifierQuarantined:(id)a3;
- (BOOL)removeQuarantinedRecordWithScopedIdentifier:(id)a3 removed:(BOOL *)a4 error:(id *)a5;
- (BOOL)removeRelatedRecordsFromQuarantineWithError:(id *)a3;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (Class)classForQuarantinedRecordWithScopedIdentifier:(id)a3;
- (unint64_t)countOfQuarantinedRecords;
- (unint64_t)countOfQuarantinedRecordsInScopeWithIdentifier:(id)a3;
@end

@implementation CPLPrequeliteQuarantinedRecords

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteQuarantinedRecords;
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:localIdentifier TEXT NOT NULL, quarantineDate TIMESTAMP NOT NULL, class TEXT, related INTEGER, reason TEXT NOT NULL", 0];
    if (v3)
    {
      LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexWithName:@"localScopedIdentifier" withDefinition:@"localIdentifier unique:scopeIndex" error:1, 0];
    }
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = CPLPrequeliteQuarantinedRecords;
  if (![(CPLPrequeliteStorage *)&v16 upgradeStorageToVersion:?])
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  LOBYTE(v5) = 1;
  if (a3 > 62)
  {
    if (a3 == 63)
    {
      if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        sub_1001C5CB0(self, &v17);
        LOBYTE(v5) = v17;
      }

      return v5;
    }

    if (a3 != 68)
    {
      if (a3 != 93 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v5;
      }

      v7 = [(CPLPrequeliteStorage *)self pqStore];
      v8 = [v7 pqlConnection];

      v9 = [(CPLPrequeliteStorage *)self mainTable];
      v10 = [v8 cplExecute:{@"ALTER TABLE %@ ADD COLUMN related INTEGER", v9}];

      if (v10)
      {
        LOBYTE(v5) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"related" error:0];
      }

      else
      {
        LOBYTE(v5) = 0;
      }

LABEL_26:

      return v5;
    }

    v5 = [(CPLPrequeliteStorage *)self pqStore];
    v8 = [v5 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    LODWORD(v5) = [v8 cplExecute:{@"UPDATE %@ SET class = CPLMasterChange WHERE reason = Asset has been quarantined", v12}];

    if (!v5)
    {
      goto LABEL_26;
    }

    v13 = [v8 changes];
    if (v13 < 1)
    {
      goto LABEL_26;
    }

    v14 = v13;
    v11 = [(CPLPrequeliteStorage *)self pqStore];
    [v11 recordUpgradeEvent:{@"Fixed %lld quarantined record classes to CPLMasterChange", v14}];
LABEL_24:

    goto LABEL_26;
  }

  if (a3 == 24)
  {
    v6 = [(CPLPrequeliteStorage *)self createStorage];
    goto LABEL_16;
  }

  if (a3 == 38)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v5;
    }

    v5 = [(CPLPrequeliteStorage *)self pqStore];
    v8 = [v5 pqlConnection];

    v11 = [(CPLPrequeliteStorage *)self mainTable];
    LOBYTE(v5) = [v8 cplExecute:{@"ALTER TABLE %@ ADD COLUMN reason TEXT NOT NULL DEFAULT Unknown reason", v11}];
    goto LABEL_24;
  }

  if (a3 == 39 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    v6 = [(CPLPrequeliteStorage *)self recreateMainTableWithCopyInstructions:@"scopeIndex oldFields:localIdentifier error:quarantineDate, class, reason", @"1, localIdentifier, quarantineDate, NULL, reason", 0];
LABEL_16:
    LOBYTE(v5) = v6;
  }

  return v5;
}

- (BOOL)removeQuarantinedRecordWithScopedIdentifier:(id)a3 removed:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
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
    v10 = [v13 cplExecute:{@"DELETE FROM %@ WHERE localIdentifier = %@ AND scopeIndex = %ld", v14, v15, v11}];

    if (v10)
    {
      *a4 = [v13 changes] > 0;
    }

    else if (a5)
    {
      *a5 = [v13 lastCPLError];
    }
  }

  return v10;
}

- (BOOL)isRecordWithScopedIdentifierQuarantined:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [v4 identifier];
    v11 = [PQLFormatInjection formatInjection:@"localIdentifier = %@ AND scopeIndex = %ld", v10, v7];
    v6 = [v8 table:v9 hasRecordsMatchingQuery:v11];
  }

  return v6;
}

- (Class)classForQuarantinedRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [v8 pqlConnection];

    v10 = objc_opt_class();
    v11 = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [v4 identifier];
    v13 = [v9 cplFetchObjectOfClass:v10 sql:{@"SELECT class FROM %@ WHERE localIdentifier = %@ AND scopeIndex = %ld", v11, v12, v7}];

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
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [v3 tableCountOfRecords:v4];

  return v5;
}

- (unint64_t)countOfQuarantinedRecordsInScopeWithIdentifier:(id)a3
{
  v4 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:a3];
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

- (BOOL)removeRelatedRecordsFromQuarantineWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplExecute:{@"DELETE FROM %@ WHERE related = 1", v7}];

  if (v8)
  {
    if ([v6 changes] >= 1 && (_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10017DA04();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = [v6 changes];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removed %lu related records from quarantine", buf, 0xCu);
      }
    }
  }

  else if (a3)
  {
    *a3 = [v6 lastCPLError];
  }

  return v8;
}

@end