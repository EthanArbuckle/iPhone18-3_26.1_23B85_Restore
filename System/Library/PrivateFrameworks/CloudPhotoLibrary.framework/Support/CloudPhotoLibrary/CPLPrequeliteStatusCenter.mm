@interface CPLPrequeliteStatusCenter
- (BOOL)acknowledgeChangedStatus:(id)a3 hasBeenDeleted:(BOOL *)a4 error:(id *)a5;
- (BOOL)addStatus:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)discardNotificationForRecordWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)getNewGeneration:(unint64_t *)a3 error:(id *)a4;
- (BOOL)hasStatusChanges;
- (BOOL)initializeStorage;
- (BOOL)openWithError:(id *)a3;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteStatusCenter)initWithAbstractObject:(id)a3;
- (id)status;
- (id)statusChangesMaximumCount:(unint64_t)a3;
- (id)statusForRecordWithScopedIdentifier:(id)a3;
@end

@implementation CPLPrequeliteStatusCenter

- (CPLPrequeliteStatusCenter)initWithAbstractObject:(id)a3
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteStatusCenter;
  v3 = [(CPLPrequeliteStorage *)&v8 initWithAbstractObject:a3];
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
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:identifier TEXT NOT NULL, class TEXT NOT NULL, generation INTEGER NOT NULL", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:1, 0];
      if (v3)
      {
        v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"class" error:0];
        if (v3)
        {
          v3 = [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:&off_10028F190 error:0];
          if (v3)
          {
            LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v18.receiver = self;
  v18.super_class = CPLPrequeliteStatusCenter;
  if (![(CPLPrequeliteStorage *)&v18 upgradeStorageToVersion:?])
  {
    return 0;
  }

  v5 = 1;
  if (a3 <= 41)
  {
    if (a3 == 35)
    {
      return [(CPLPrequeliteStorage *)self createStorage];
    }

    if (a3 == 39 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
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
          v9 = [(CPLPrequeliteStorage *)self mainTable];
          *buf = 138412546;
          v20 = v9;
          v21 = 2048;
          v22 = 39;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding scopeIndex column", buf, 0x16u);
        }
      }

      v10 = [(CPLPrequeliteStorage *)self pqStore];
      v11 = [v10 pqlConnection];

      v12 = [(CPLPrequeliteStorage *)self mainTable];
      v5 = [v11 cplExecute:{@"ALTER TABLE %@ ADD COLUMN scopeIndex INTEGER DEFAULT 1", v12}];
    }
  }

  else if (a3 == 42)
  {
    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      v13 = +[CPLPrequeliteType integerType];
      v14 = [CPLPrequeliteVariable variableWithName:@"generation" type:v13];

      v15 = [(CPLPrequeliteStorage *)self pqStore];
      v16 = [v15 valueForGlobalVariable:v14];

      [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:v16 error:0];
      return 1;
    }
  }

  else if (a3 == 52)
  {
    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
    }
  }

  else if (a3 == 53 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    if ([(CPLPrequeliteStorage *)self dropIndexWithName:@"identifier" error:0])
    {
      return [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:1, 0];
    }

    return 0;
  }

  return v5;
}

- (BOOL)openWithError:(id *)a3
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteStatusCenter;
  return [(CPLPrequeliteStorage *)&v4 openWithError:a3];
}

- (BOOL)hasStatusChanges
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [v3 tableHasRecords:v4];

  return v5;
}

- (BOOL)getNewGeneration:(unint64_t *)a3 error:(id *)a4
{
  v7 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  *a3 = [v7 unsignedIntegerValue] + 1;

  v8 = [NSNumber numberWithUnsignedInteger:*a3];
  LOBYTE(a4) = [(CPLPrequeliteStorage *)self setValue:v8 forVariable:*(&self->super._shouldUpgradeSchema + 1) error:a4];

  return a4;
}

- (BOOL)addStatus:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 record];
  v8 = [v7 scopedIdentifier];
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v8];
      *a4 = v10 = 0;
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
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v10 = [v13 cplExecute:{@"INSERT OR REPLACE INTO %@ (scopeIndex, identifier, class, generation) VALUES (%ld, %@, %@, %lu)", v14, v11, v15, v17, objc_msgSend(v6, "generation")}];

    if (a4 && (v10 & 1) == 0)
    {
      *a4 = [v13 lastCPLError];
    }
  }

  return v10;
}

- (id)statusForRecordWithScopedIdentifier:(id)a3
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

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10017EAAC;
    v13[3] = &unk_10027B218;
    v13[4] = self;
    v10 = [(CPLPrequeliteStorage *)self mainTable];
    v11 = [v4 identifier];
    v6 = [v9 cplFetchObject:v13 sql:{@"SELECT scopeIndex, identifier, class, generation FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v10, v7, v11}];
  }

  return v6;
}

- (id)statusChangesMaximumCount:(unint64_t)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [v6 pqlConnection];

  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [v7 cplFetch:{@"SELECT scopeIndex, identifier, class, generation FROM %@", v8}];

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

  while (v11 < a3);

  return v5;
}

- (BOOL)acknowledgeChangedStatus:(id)a3 hasBeenDeleted:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 record];
  v10 = [v9 scopedIdentifier];
  v11 = [v10 scopeIndex];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL && (v11 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v10], v11 == 0x7FFFFFFFFFFFFFFFLL))
  {
    if (a5)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v10];
      *a5 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = v11;
    v14 = [(CPLPrequeliteStorage *)self pqStore];
    v15 = [v14 pqlConnection];

    v16 = [(CPLPrequeliteStorage *)self mainTable];
    v17 = [v10 identifier];
    v12 = [v15 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@ AND generation <= %lu", v16, v13, v17, objc_msgSend(v8, "generation")}];

    if (v12)
    {
      *a4 = [v15 changes] > 0;
    }

    else if (a5)
    {
      *a5 = [v15 lastCPLError];
    }
  }

  return v12;
}

- (BOOL)discardNotificationForRecordWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v6];
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
    v13 = [v6 identifier];
    v8 = [v11 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v12, v9, v13}];

    if (a4 && (v8 & 1) == 0)
    {
      *a4 = [v11 lastCPLError];
    }
  }

  return v8;
}

- (id)status
{
  v29.receiver = self;
  v29.super_class = CPLPrequeliteStatusCenter;
  v3 = [(CPLPrequeliteStorage *)&v29 status];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [v6 pqlConnection];

  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v24 = v7;
  v9 = [v7 cplFetch:{@"SELECT class, count(class) FROM %@ GROUP BY class", v8}];

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
  v15 = [v5 allKeys];
  v16 = [v15 sortedArrayUsingSelector:"compare:"];

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