@interface CPLPrequeliteStatusCenter
- (BOOL)acknowledgeChangedStatus:(id)status hasBeenDeleted:(BOOL *)deleted error:(id *)error;
- (BOOL)addStatus:(id)status error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)discardNotificationForRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)getNewGeneration:(unint64_t *)generation error:(id *)error;
- (BOOL)hasStatusChanges;
- (BOOL)initializeStorage;
- (BOOL)openWithError:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteStatusCenter)initWithAbstractObject:(id)object;
- (id)status;
- (id)statusChangesMaximumCount:(unint64_t)count;
- (id)statusForRecordWithScopedIdentifier:(id)identifier;
@end

@implementation CPLPrequeliteStatusCenter

- (CPLPrequeliteStatusCenter)initWithAbstractObject:(id)object
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteStatusCenter;
  v3 = [(CPLPrequeliteStorage *)&v8 initWithAbstractObject:object];
  if (v3)
  {
    v4 = +[CPLPrequeliteType integerType];
    v5 = [v3 variableWithName:@"generation" type:v4];
    v6 = *(v3 + 36);
    *(v3 + 36) = v5;
  }

  return v3;
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteStatusCenter;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:identifier TEXT NOT NULL, class TEXT NOT NULL, generation INTEGER NOT NULL", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:1, 0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"class" error:0];
        if (initializeStorage)
        {
          initializeStorage = [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:&off_10028F190 error:0];
          if (initializeStorage)
          {
            LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
          }
        }
      }
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v18.receiver = self;
  v18.super_class = CPLPrequeliteStatusCenter;
  if (![(CPLPrequeliteStorage *)&v18 upgradeStorageToVersion:?])
  {
    return 0;
  }

  v5 = 1;
  if (version <= 41)
  {
    if (version == 35)
    {
      return [(CPLPrequeliteStorage *)self createStorage];
    }

    if (version == 39 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        if (qword_1002D2CB8 != -1)
        {
          sub_1001C5EB8();
        }

        v7 = qword_1002D2CC0;
        if (os_log_type_enabled(qword_1002D2CC0, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
          mainTable = [(CPLPrequeliteStorage *)self mainTable];
          *buf = 138412546;
          v20 = mainTable;
          v21 = 2048;
          v22 = 39;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding scopeIndex column", buf, 0x16u);
        }
      }

      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
      v5 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN scopeIndex INTEGER DEFAULT 1", mainTable2}];
    }
  }

  else if (version == 42)
  {
    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      v13 = +[CPLPrequeliteType integerType];
      v14 = [CPLPrequeliteVariable variableWithName:@"generation" type:v13];

      pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
      v16 = [pqStore2 valueForGlobalVariable:v14];

      [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:v16 error:0];
      return 1;
    }
  }

  else if (version == 52)
  {
    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
    }
  }

  else if (version == 53 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    if ([(CPLPrequeliteStorage *)self dropIndexWithName:@"identifier" error:0])
    {
      return [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:1, 0];
    }

    return 0;
  }

  return v5;
}

- (BOOL)openWithError:(id *)error
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteStatusCenter;
  return [(CPLPrequeliteStorage *)&v4 openWithError:error];
}

- (BOOL)hasStatusChanges
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableHasRecords:mainTable];

  return v5;
}

- (BOOL)getNewGeneration:(unint64_t *)generation error:(id *)error
{
  v7 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  *generation = [v7 unsignedIntegerValue] + 1;

  v8 = [NSNumber numberWithUnsignedInteger:*generation];
  LOBYTE(error) = [(CPLPrequeliteStorage *)self setValue:v8 forVariable:*(&self->super._shouldUpgradeSchema + 1) error:error];

  return error;
}

- (BOOL)addStatus:(id)status error:(id *)error
{
  statusCopy = status;
  record = [statusCopy record];
  scopedIdentifier = [record scopedIdentifier];
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:scopedIdentifier];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:scopedIdentifier];
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
    identifier = [scopedIdentifier identifier];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v10 = [pqlConnection cplExecute:{@"INSERT OR REPLACE INTO %@ (scopeIndex, identifier, class, generation) VALUES (%ld, %@, %@, %lu)", mainTable, v11, identifier, v17, objc_msgSend(statusCopy, "generation")}];

    if (error && (v10 & 1) == 0)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v10;
}

- (id)statusForRecordWithScopedIdentifier:(id)identifier
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

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10017EAAC;
    v13[3] = &unk_10027B218;
    v13[4] = self;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v6 = [pqlConnection cplFetchObject:v13 sql:{@"SELECT scopeIndex, identifier, class, generation FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, v7, identifier}];
  }

  return v6;
}

- (id)statusChangesMaximumCount:(unint64_t)count
{
  v5 = objc_alloc_init(NSMutableArray);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [pqlConnection cplFetch:{@"SELECT scopeIndex, identifier, class, generation FROM %@", mainTable}];

  do
  {
    if (![v9 next])
    {
      break;
    }

    v10 = [[CPLRecordStatus alloc] initFromPQLResultSet:v9 center:self error:0];
    if (v10)
    {
      [v5 addObject:v10];
    }

    v11 = [v5 count];
  }

  while (v11 < count);

  return v5;
}

- (BOOL)acknowledgeChangedStatus:(id)status hasBeenDeleted:(BOOL *)deleted error:(id *)error
{
  statusCopy = status;
  record = [statusCopy record];
  scopedIdentifier = [record scopedIdentifier];
  scopeIndex = [scopedIdentifier scopeIndex];
  if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL && (scopeIndex = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:scopedIdentifier], scopeIndex == 0x7FFFFFFFFFFFFFFFLL))
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:scopedIdentifier];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = scopeIndex;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [scopedIdentifier identifier];
    v12 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@ AND generation <= %lu", mainTable, v13, identifier, objc_msgSend(statusCopy, "generation")}];

    if (v12)
    {
      *deleted = [pqlConnection changes] > 0;
    }

    else if (error)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v12;
}

- (BOOL)discardNotificationForRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
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
    identifier = [identifierCopy identifier];
    v8 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", mainTable, v9, identifier}];

    if (error && (v8 & 1) == 0)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v8;
}

- (id)status
{
  v29.receiver = self;
  v29.super_class = CPLPrequeliteStatusCenter;
  status = [(CPLPrequeliteStorage *)&v29 status];
  v4 = [status mutableCopy];

  v5 = objc_alloc_init(NSMutableDictionary);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v24 = pqlConnection;
  v9 = [pqlConnection cplFetch:{@"SELECT class, count(class) FROM %@ GROUP BY class", mainTable}];

  if ([v9 next])
  {
    do
    {
      v10 = [v9 stringAtIndex:0];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = @"(nil)";
      }

      v12 = [v9 unsignedIntegerAtIndex:1];
      v13 = [v5 objectForKeyedSubscript:v11];
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", &v12[[v13 unsignedIntegerValue]]);
      [v5 setObject:v14 forKeyedSubscript:v11];
    }

    while (([v9 next] & 1) != 0);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [v5 allKeys];
  v16 = [allKeys sortedArrayUsingSelector:"compare:"];

  v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        v22 = [v5 objectForKeyedSubscript:v21];
        [v4 appendFormat:@"\n\t%@: %@", v21, v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
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