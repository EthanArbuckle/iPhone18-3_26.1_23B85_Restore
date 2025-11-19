@interface CPLPrequeliteRevertRecords
- (BOOL)_isEmpty;
- (BOOL)addRecordsToRevertWithLocalScopedIdentifier:(id)a3 class:(Class)a4 error:(id *)a5;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)deleteRecordsToRevertWithLocalScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)initializeStorage;
- (BOOL)shouldRevertRecordWithLocalScopedIdentifier:(id)a3;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteRevertRecords)initWithAbstractObject:(id)a3;
- (id)revertedPlaceholderRecordsEnumerator;
- (id)status;
- (void)writeTransactionDidFail;
@end

@implementation CPLPrequeliteRevertRecords

- (CPLPrequeliteRevertRecords)initWithAbstractObject:(id)a3
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteRevertRecords;
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
  v6[2] = sub_10017CAE8;
  v6[3] = &unk_10027BCC8;
  v6[4] = self;
  v3 = [v2 valueWithConstructor:v6];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteRevertRecords;
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:identifier TEXT NOT NULL, class TEXT NOT NULL", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
      if (v3)
      {
        LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"scopeIndex unique:identifier" error:1, 0];
      }
    }
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CPLPrequeliteRevertRecords;
  v5 = [(CPLPrequeliteStorage *)&v7 upgradeStorageToVersion:?];
  if (a3 == 81 && v5)
  {
    LOBYTE(v5) = [(CPLPrequeliteStorage *)self createStorage];
  }

  return v5;
}

- (BOOL)addRecordsToRevertWithLocalScopedIdentifier:(id)a3 class:(Class)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 scopeIdentifier];
  v10 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a5)
    {
      v11 = [v8 scopeIdentifier];
      *a5 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v11];
    }

    v12 = 0;
  }

  else
  {
    v13 = [(CPLPrequeliteStorage *)self pqStore];
    v14 = [v13 pqlConnection];

    v15 = [(CPLPrequeliteStorage *)self mainTable];
    v16 = [v8 identifier];
    v17 = NSStringFromClass(a4);
    v12 = [v14 cplExecute:{@"INSERT OR IGNORE INTO %@ (scopeIndex, identifier, class) VALUES (%ld, %@, %@)", v15, v10, v16, v17}];

    if (v12)
    {
      if ([v14 changes] >= 1)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          if (qword_1002D2C98 != -1)
          {
            sub_1001C5B54();
          }

          v18 = qword_1002D2CA0;
          if (os_log_type_enabled(qword_1002D2CA0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v21 = a4;
            v22 = 2112;
            v23 = v8;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Scheduling <%@ %@> to be reverted by client", buf, 0x16u);
          }
        }

        [*(&self->super._shouldUpgradeSchema + 1) setValue:&__kCFBooleanFalse];
      }
    }

    else if (a5)
    {
      *a5 = [v14 lastError];
    }
  }

  return v12;
}

- (id)revertedPlaceholderRecordsEnumerator
{
  if ([(CPLPrequeliteRevertRecords *)self _isEmpty])
  {
    v3 = &__NSArray0__struct;
  }

  else
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0x7FFFFFFFFFFFFFFFLL;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_1000045D0;
    v21[4] = sub_1000053CC;
    v22 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    v4 = [(CPLPrequeliteRevertRecords *)self abstractObject];
    v5 = [v4 engineStore];
    v6 = [v5 scopes];

    v7 = [(CPLPrequeliteStorage *)self pqStore];
    v8 = [v7 pqlConnection];

    v9 = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [v8 cplFetch:{@"SELECT scopeIndex, identifier, class FROM %@", v9}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10017D0F8;
    v14[3] = &unk_10027BDF0;
    v16 = v23;
    v11 = v6;
    v15 = v11;
    v17 = v19;
    v18 = v21;
    v12 = [v10 enumerateObjects:v14];

    v3 = [[CPLMapEnumerator alloc] initWithEnumerator:v12];
    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v21, 8);

    _Block_object_dispose(v23, 8);
  }

  return v3;
}

- (BOOL)deleteRecordsToRevertWithLocalScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!a4)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v9 = [v6 scopeIdentifier];
    [CPLErrors invalidScopeErrorWithScopeIdentifier:v9];
    *a4 = v10 = 0;
  }

  else
  {
    v11 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [v11 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [v6 identifier];
    v10 = [v9 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v12, v8, v13}];

    if (a4 && (v10 & 1) == 0)
    {
      *a4 = [v9 lastError];
    }

    [*(&self->super._shouldUpgradeSchema + 1) discardCachedValue];
  }

LABEL_9:
  return v10;
}

- (BOOL)shouldRevertRecordWithLocalScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 scopeIdentifier];
  v6 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v5];

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

- (id)status
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [v3 tableCountOfRecords:v4];

  if (v5)
  {
    v6 = [[NSString alloc] initWithFormat:@"%lu records to revert", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTransactionDidFail
{
  v3.receiver = self;
  v3.super_class = CPLPrequeliteRevertRecords;
  [(CPLPrequeliteStorage *)&v3 writeTransactionDidFail];
  [*(&self->super._shouldUpgradeSchema + 1) discardCachedValue];
}

@end