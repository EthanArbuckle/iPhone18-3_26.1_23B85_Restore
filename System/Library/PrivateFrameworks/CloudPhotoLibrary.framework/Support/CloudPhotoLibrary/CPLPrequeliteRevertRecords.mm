@interface CPLPrequeliteRevertRecords
- (BOOL)_isEmpty;
- (BOOL)addRecordsToRevertWithLocalScopedIdentifier:(id)identifier class:(Class)class error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)deleteRecordsToRevertWithLocalScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)initializeStorage;
- (BOOL)shouldRevertRecordWithLocalScopedIdentifier:(id)identifier;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteRevertRecords)initWithAbstractObject:(id)object;
- (id)revertedPlaceholderRecordsEnumerator;
- (id)status;
- (void)writeTransactionDidFail;
@end

@implementation CPLPrequeliteRevertRecords

- (CPLPrequeliteRevertRecords)initWithAbstractObject:(id)object
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteRevertRecords;
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
  v6[2] = sub_10017CAE8;
  v6[3] = &unk_10027BCC8;
  v6[4] = self;
  v3 = [v2 valueWithConstructor:v6];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteRevertRecords;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:identifier TEXT NOT NULL, class TEXT NOT NULL", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
      if (initializeStorage)
      {
        LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"scopeIndex unique:identifier" error:1, 0];
      }
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v7.receiver = self;
  v7.super_class = CPLPrequeliteRevertRecords;
  v5 = [(CPLPrequeliteStorage *)&v7 upgradeStorageToVersion:?];
  if (version == 81 && v5)
  {
    LOBYTE(v5) = [(CPLPrequeliteStorage *)self createStorage];
  }

  return v5;
}

- (BOOL)addRecordsToRevertWithLocalScopedIdentifier:(id)identifier class:(Class)class error:(id *)error
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v10 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      scopeIdentifier2 = [identifierCopy scopeIdentifier];
      *error = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier2];
    }

    v12 = 0;
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v17 = NSStringFromClass(class);
    v12 = [pqlConnection cplExecute:{@"INSERT OR IGNORE INTO %@ (scopeIndex, identifier, class) VALUES (%ld, %@, %@)", mainTable, v10, identifier, v17}];

    if (v12)
    {
      if ([pqlConnection changes] >= 1)
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
            classCopy = class;
            v22 = 2112;
            v23 = identifierCopy;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Scheduling <%@ %@> to be reverted by client", buf, 0x16u);
          }
        }

        [*(&self->super._shouldUpgradeSchema + 1) setValue:&__kCFBooleanFalse];
      }
    }

    else if (error)
    {
      *error = [pqlConnection lastError];
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
    abstractObject = [(CPLPrequeliteRevertRecords *)self abstractObject];
    engineStore = [abstractObject engineStore];
    scopes = [engineStore scopes];

    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [pqlConnection cplFetch:{@"SELECT scopeIndex, identifier, class FROM %@", mainTable}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10017D0F8;
    v14[3] = &unk_10027BDF0;
    v16 = v23;
    v11 = scopes;
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

- (BOOL)deleteRecordsToRevertWithLocalScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!error)
    {
      v10 = 0;
      goto LABEL_9;
    }

    scopeIdentifier2 = [identifierCopy scopeIdentifier];
    [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier2];
    *error = v10 = 0;
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    scopeIdentifier2 = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v10 = [scopeIdentifier2 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, v8, identifier}];

    if (error && (v10 & 1) == 0)
    {
      *error = [scopeIdentifier2 lastError];
    }

    [*(&self->super._shouldUpgradeSchema + 1) discardCachedValue];
  }

LABEL_9:
  return v10;
}

- (BOOL)shouldRevertRecordWithLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v6 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:scopeIdentifier];

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

- (id)status
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableCountOfRecords:mainTable];

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