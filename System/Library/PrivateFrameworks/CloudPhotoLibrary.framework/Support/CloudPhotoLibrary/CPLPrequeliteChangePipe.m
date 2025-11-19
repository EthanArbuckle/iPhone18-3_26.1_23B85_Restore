@interface CPLPrequeliteChangePipe
- (BOOL)_deleteAllChangesWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_resetPushAndPullMarkersIfEmptyWithError:(id *)a3;
- (BOOL)_resetPushAndPullMarkersWithError:(id *)a3;
- (BOOL)_setPullMarker:(unint64_t)a3 error:(id *)a4;
- (BOOL)_setPushMarker:(unint64_t)a3 error:(id *)a4;
- (BOOL)appendChangeBatch:(id)a3 error:(id *)a4;
- (BOOL)compactChangeBatchesWithError:(id *)a3;
- (BOOL)deleteAllChangeBatchesWithError:(id *)a3;
- (BOOL)deleteAllChangesWithScopeFilter:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)hasSomeChangeInScopesWithIdentifiers:(id)a3;
- (BOOL)hasSomeChangeWithScopeFilter:(id)a3;
- (BOOL)hasSomeChangeWithScopedIdentifier:(id)a3;
- (BOOL)initializeStorage;
- (BOOL)popChangeBatch:(id *)a3 error:(id *)a4;
- (BOOL)popNextBatchWithError:(id *)a3;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteChangePipe)initWithAbstractObject:(id)a3;
- (id)allChangeBatches;
- (id)nextBatch;
- (id)status;
- (id)statusPerScopeIndex;
- (unint64_t)_pullMarker;
- (unint64_t)_pushMarker;
- (unint64_t)countOfQueuedBatches;
- (void)writeTransactionDidFail;
@end

@implementation CPLPrequeliteChangePipe

- (CPLPrequeliteChangePipe)initWithAbstractObject:(id)a3
{
  v11.receiver = self;
  v11.super_class = CPLPrequeliteChangePipe;
  v3 = [(CPLPrequeliteStorage *)&v11 initWithAbstractObject:a3];
  if (v3)
  {
    v4 = +[CPLPrequeliteType integerType];
    v5 = [v3 variableWithName:@"pullMarker" type:v4];
    v6 = *(v3 + 36);
    *(v3 + 36) = v5;

    v7 = +[CPLPrequeliteType integerType];
    v8 = [v3 variableWithName:@"pushMarker" type:v7];
    v9 = *(v3 + 44);
    *(v3 + 44) = v8;
  }

  return v3;
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteChangePipe;
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:&off_10028F160 error:0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createVariable:*(&self->_pullGenerationVar + 4) defaultValue:&off_10028F160 error:0];
      if (v3)
      {
        v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"library_version TEXT NOT NULL error:batch_marker INTEGER NOT NULL, scopeIndex INTEGER NOT NULL, identifier TEXT NOT NULL, serializedRecord DATA NOT NULL", 0];
        if (v3)
        {
          v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"library_version" error:0];
          if (v3)
          {
            v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:0, 0];
            if (v3)
            {
              v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"batch_marker" error:0];
              if (v3)
              {
                LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteChangePipe;
  v5 = [(CPLPrequeliteStorage *)&v8 upgradeStorageToVersion:?];
  if (!v5)
  {
    return v5;
  }

  LOBYTE(v5) = 1;
  if (a3 > 51)
  {
    if (a3 != 52)
    {
      if (a3 != 56)
      {
        return v5;
      }

      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        goto LABEL_17;
      }

      v5 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:0, 0];
      if (v5)
      {
        LOBYTE(v5) = [(CPLPrequeliteStorage *)self dropIndexWithName:@"identifier" error:0];
      }

      return v5;
    }

    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      goto LABEL_17;
    }

    v6 = @"scopeIndex";
LABEL_16:
    LOBYTE(v5) = [(CPLPrequeliteStorage *)self createIndexOnColumn:v6 error:0];
    return v5;
  }

  if (a3 == 20)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      goto LABEL_17;
    }

    v6 = @"batch_marker";
    goto LABEL_16;
  }

  if (a3 == 39)
  {
    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      sub_1001C1D50(self, &v9);
      LOBYTE(v5) = v9;
      return v5;
    }

LABEL_17:
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)_pullMarker
{
  v2 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)_setPullMarker:(unint64_t)a3 error:(id *)a4
{
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  LOBYTE(a4) = [(CPLPrequeliteStorage *)self setValue:v6 forVariable:*(&self->super._shouldUpgradeSchema + 1) error:a4];

  return a4;
}

- (unint64_t)_pushMarker
{
  v2 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->_pullGenerationVar + 4)];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)_setPushMarker:(unint64_t)a3 error:(id *)a4
{
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  LOBYTE(a4) = [(CPLPrequeliteStorage *)self setValue:v6 forVariable:*(&self->_pullGenerationVar + 4) error:a4];

  return a4;
}

- (BOOL)_resetPushAndPullMarkersWithError:(id *)a3
{
  v12 = 0;
  v5 = [(CPLPrequeliteChangePipe *)self _setPushMarker:0 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v11 = v6;
    LOBYTE(v5) = [(CPLPrequeliteChangePipe *)self _setPullMarker:0 error:&v11];
    v8 = v11;

    v7 = v8;
  }

  *(&self->_logDomain + 4) = 0;
  if (a3 && !v5)
  {
    v9 = v7;
    *a3 = v7;
  }

  return v5;
}

- (BOOL)_resetPushAndPullMarkersIfEmptyWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [v5 tableHasRecords:v6];

  if (v7)
  {
    return 1;
  }

  return [(CPLPrequeliteChangePipe *)self _resetPushAndPullMarkersWithError:a3];
}

- (unint64_t)countOfQueuedBatches
{
  v3 = [(CPLPrequeliteChangePipe *)self _pullMarker];
  v4 = [(CPLPrequeliteChangePipe *)self _pushMarker];
  v5 = v4 >= v3;
  result = v4 - v3;
  if (!v5)
  {
    v7 = sub_1001C1E98(self);
    return [(CPLPrequeliteChangePipe *)v7 hasQueuedBatches];
  }

  return result;
}

- (BOOL)appendChangeBatch:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v32 = [v8 pqlConnection];

  v9 = [(CPLPrequeliteChangePipe *)self abstractObject];
  v10 = [v9 engineStore];
  v31 = [v10 libraryVersion];

  v11 = [(CPLPrequeliteChangePipe *)self _pushMarker];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    v28 = v7;
    v29 = a4;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v34 + 1) + 8 * v15);
      v17 = [v16 scopedIdentifier];
      v18 = [v17 scopeIdentifier];
      v19 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v18];

      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v20 = [CPLArchiver archivedDataWithRootObject:v16];
      if (!v20)
      {
        sub_1001C1F4C(v16, self, &v38);
        v25 = v38;
LABEL_14:

LABEL_15:
        a4 = v29;

        v24 = 0;
        v7 = v28;
        goto LABEL_16;
      }

      v21 = [(CPLPrequeliteStorage *)self mainTable];
      v22 = [v17 identifier];
      v23 = [v32 cplExecute:{@"INSERT INTO %@ (library_version, batch_marker, scopeIndex, identifier, serializedRecord) VALUES (%@, %lu, %ld, %@, %@)", v21, v31, v11, v19, v22, v20}];

      if ((v23 & 1) == 0)
      {
        v25 = [v32 lastCPLError];
        goto LABEL_14;
      }

      if (v13 == ++v15)
      {
        v13 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        v7 = v28;
        a4 = v29;
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v25 = [CPLErrors invalidScopeErrorWithScopedIdentifier:v17];
    goto LABEL_15;
  }

LABEL_11:

  v33 = 0;
  v24 = [(CPLPrequeliteChangePipe *)self _setPushMarker:v11 + 1 error:&v33];
  v25 = v33;
LABEL_16:

  objc_autoreleasePoolPop(v7);
  if (a4 && !v24)
  {
    v26 = v25;
    *a4 = v25;
  }

  return v24;
}

- (BOOL)popChangeBatch:(id *)a3 error:(id *)a4
{
  v7 = [(CPLPrequeliteChangePipe *)self _pullMarker];
  v8 = [(CPLPrequeliteChangePipe *)self _pushMarker];
  if (v7 > v8)
  {
    sub_1001C2108(self);
  }

  if (v7 != v8)
  {
    v29 = a2;
    v32 = a4;
    *a3 = objc_alloc_init(CPLChangeBatch);
    v9 = [(CPLPrequeliteStorage *)self pqStore];
    v10 = [v9 pqlConnection];

    v11 = [(CPLPrequeliteStorage *)self mainTable];
    v30 = v7;
    v31 = v10;
    v12 = [v10 cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE batch_marker == %lu ORDER BY rowid", v11, v7}];

    v33 = v12;
    [v12 enumerateObjects:&stru_10027BB70];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v39 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      v34 = *v37;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          v19 = [v18 scopedIdentifier];
          v20 = [v19 scopeIndex];
          if (v20 == 0x7FFFFFFFFFFFFFFFLL)
          {
            sub_1001C2044(v29, self);
          }

          v21 = v20;
          if ([(CPLPrequeliteStorage *)self isLocalScopeIndexValid:v20])
          {
            [v18 setScopeIndex:0];
            [*a3 addRecord:v18];
          }

          else if ((_CPLSilentLogging & 1) == 0)
          {
            v22 = sub_10016BF70();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [(CPLPrequeliteChangePipe *)self abstractObject];
              [v23 name];
              v25 = v24 = v13;
              *buf = 138412802;
              v41 = v25;
              v42 = 2112;
              v43 = v18;
              v44 = 2048;
              v45 = v21;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ dropping %@ (scope index %ld id no longer valid)", buf, 0x20u);

              v13 = v24;
              v16 = v34;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v15);
    }

    v26 = [v31 lastCPLError];

    if (v26)
    {
      if (v32)
      {
        [v31 lastCPLError];
        *v32 = v27 = 0;
LABEL_28:

        return v27;
      }
    }

    else if ([(CPLPrequeliteChangePipe *)self _setPullMarker:v30 + 1 error:v32])
    {
      if (v30 + 1 - *(&self->_logDomain + 4) < 0x15)
      {
        v27 = 1;
      }

      else
      {
        v27 = [(CPLPrequeliteChangePipe *)self compactChangeBatchesWithError:v32];
      }

      goto LABEL_28;
    }

    v27 = 0;
    goto LABEL_28;
  }

  *a3 = 0;

  return [(CPLPrequeliteChangePipe *)self deleteAllChangeBatchesWithError:a4];
}

- (id)nextBatch
{
  v4 = [(CPLPrequeliteChangePipe *)self _pullMarker];
  v5 = [(CPLPrequeliteChangePipe *)self _pushMarker];
  if (v4 > v5)
  {
    sub_1001C226C(self);
  }

  if (v4 >= v5)
  {
    v28 = 0;
  }

  else
  {
    v24 = a2;
    v28 = objc_alloc_init(CPLChangeBatch);
    v6 = [(CPLPrequeliteStorage *)self pqStore];
    v7 = [v6 pqlConnection];

    v8 = [(CPLPrequeliteStorage *)self mainTable];
    v26 = v7;
    v9 = [v7 cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE batch_marker == %lu ORDER BY rowid", v8, v4}];

    v25 = v9;
    [v9 enumerateObjects:&stru_10027BB90];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v32 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      v27 = *v30;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 scopedIdentifier];
          v17 = [v16 scopeIndex];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            sub_1001C21A8(v24, self);
          }

          v18 = v17;
          if ([(CPLPrequeliteStorage *)self isLocalScopeIndexValid:v17])
          {
            [v15 setScopeIndex:0];
            [v28 addRecord:v15];
          }

          else if ((_CPLSilentLogging & 1) == 0)
          {
            v19 = sub_10016BF70();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              [(CPLPrequeliteChangePipe *)self abstractObject];
              v21 = v20 = v10;
              v22 = [v21 name];
              *buf = 138412802;
              v34 = v22;
              v35 = 2112;
              v36 = v15;
              v37 = 2048;
              v38 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ dropping %@ (scope index %ld id no longer valid)", buf, 0x20u);

              v10 = v20;
              v13 = v27;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v12);
    }
  }

  return v28;
}

- (BOOL)popNextBatchWithError:(id *)a3
{
  v5 = [(CPLPrequeliteChangePipe *)self _pullMarker];
  if (v5 >= [(CPLPrequeliteChangePipe *)self _pushMarker])
  {
    v8 = sub_1001C230C(self);
    LOBYTE(v7) = [(CPLPrequeliteChangePipe *)v8 hasSomeChangeWithScopedIdentifier:v9, v10];
  }

  else
  {
    v6 = v5 + 1;
    v7 = [(CPLPrequeliteChangePipe *)self _setPullMarker:v6 error:a3];
    if (v7)
    {
      if (v6 - *(&self->_logDomain + 4) < 0x15)
      {
        LOBYTE(v7) = 1;
      }

      else
      {

        LOBYTE(v7) = [(CPLPrequeliteChangePipe *)self compactChangeBatchesWithError:a3];
      }
    }
  }

  return v7;
}

- (BOOL)hasSomeChangeWithScopedIdentifier:(id)a3
{
  v4 = a3;
  if (-[CPLPrequeliteChangePipe hasQueuedBatches](self, "hasQueuedBatches") && ([v4 scopeIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = -[CPLPrequeliteStorage localScopeIndexForScopeIdentifier:](self, "localScopeIndexForScopeIdentifier:", v5), v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [v4 identifier];
    v11 = [PQLFormatInjection formatInjection:@"identifier = %@ AND scopeIndex = %ld", v10, v6];
    v7 = [v8 table:v9 hasRecordsMatchingQuery:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasSomeChangeInScopesWithIdentifiers:(id)a3
{
  v4 = a3;
  if ([(CPLPrequeliteChangePipe *)self hasQueuedBatches])
  {
    v5 = [(CPLPrequeliteStorage *)self filterForIncludedScopeIdentifiers:v4];
    v6 = [v5 localIndexes];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(CPLPrequeliteStorage *)self pqStore];
      v9 = [(CPLPrequeliteStorage *)self mainTable];
      v10 = [v5 localIndexesInjection];
      v11 = [v8 table:v9 hasRecordsMatchingQuery:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)hasSomeChangeWithScopeFilter:(id)a3
{
  v4 = a3;
  if ([(CPLPrequeliteChangePipe *)self hasQueuedBatches])
  {
    v5 = v4;
    v6 = [v5 includedScopeIdentifiers];

    if (v6)
    {
      v7 = [v5 localIndexes];
      v8 = [v7 count];

      if (!v8)
      {
        v9 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v10 = [v5 excludedScopeIdentifiers];

      if (v10)
      {
        v11 = [v5 localIndexes];
        v12 = [v11 count];

        if (!v12)
        {
          v9 = 1;
          goto LABEL_9;
        }
      }
    }

    v13 = [(CPLPrequeliteStorage *)self pqStore];
    v14 = [(CPLPrequeliteStorage *)self mainTable];
    v15 = [v5 localIndexesInjection];
    v9 = [v13 table:v14 hasRecordsMatchingQuery:v15];

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)deleteAllChangeBatchesWithError:(id *)a3
{
  if ([(CPLPrequeliteChangePipe *)self _pushMarker]|| [(CPLPrequeliteChangePipe *)self _pullMarker])
  {
    v5 = [(CPLPrequeliteStorage *)self pqStore];
    v6 = [v5 pqlConnection];

    v7 = [(CPLPrequeliteStorage *)self mainTable];
    v8 = [v6 cplExecute:{@"DELETE FROM %@", v7}];

    if (v8)
    {
      v9 = [(CPLPrequeliteChangePipe *)self _resetPushAndPullMarkersWithError:a3];
    }

    else if (a3)
    {
      [v6 lastCPLError];
      *a3 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    *(&self->_logDomain + 4) = 0;
    return 1;
  }

  return v9;
}

- (BOOL)deleteAllChangesWithScopeFilter:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CPLPrequeliteChangePipe *)self _pushMarker]|| [(CPLPrequeliteChangePipe *)self _pullMarker])
  {
    v7 = v6;
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [v8 pqlConnection];

    v10 = [(CPLPrequeliteStorage *)self mainTable];
    v11 = [v7 localIndexesInjection];
    v12 = [v9 cplExecute:{@"DELETE FROM %@ WHERE %@", v10, v11}];

    if (v12)
    {
      v13 = [(CPLPrequeliteChangePipe *)self _resetPushAndPullMarkersIfEmptyWithError:a4];
    }

    else if (a4)
    {
      [v9 lastCPLError];
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    *(&self->_logDomain + 4) = 0;
    v13 = 1;
  }

  return v13;
}

- (BOOL)compactChangeBatchesWithError:(id *)a3
{
  v5 = [(CPLPrequeliteChangePipe *)self _pullMarker];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  if ([(CPLPrequeliteChangePipe *)self _pushMarker]!= v5)
  {
    if (*(&self->_logDomain + 4) < v6)
    {
      v7 = [(CPLPrequeliteStorage *)self pqStore];
      v8 = [v7 pqlConnection];

      v9 = [(CPLPrequeliteStorage *)self mainTable];
      v10 = [v8 cplExecute:{@"DELETE FROM %@ WHERE batch_marker < %lu", v9, v6}];

      if (a3 && (v10 & 1) == 0)
      {
        *a3 = [v8 lastCPLError];
      }

      *(&self->_logDomain + 4) = v6;

      return v10;
    }

    return 1;
  }

  return [(CPLPrequeliteChangePipe *)self deleteAllChangeBatchesWithError:a3];
}

- (id)allChangeBatches
{
  v25 = objc_alloc_init(NSMutableArray);
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [(CPLPrequeliteChangePipe *)self _pullMarker];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [v4 cplFetch:{@"SELECT batch_marker, scopeIndex, serializedRecord FROM %@ WHERE batch_marker >= %lu", v6, v5}];

  if ([v7 next])
  {
    v24 = v4;
    v8 = 0;
    v9 = -1;
    v10 = &_CPLSilentLogging;
    v11 = &CPLFeatureNameEPP_ptr;
    do
    {
      v12 = [v7 cplChangeAtIndex:2];
      v13 = [v7 integerAtIndex:1];
      [v12 setScopeIndex:v13];
      v14 = [v7 unsignedIntegerAtIndex:0];
      if (v14 != v9)
      {
        v15 = v14;
        if (v8)
        {
          [v25 addObject:v8];
        }

        v16 = objc_alloc_init(v11[41]);

        v9 = v15;
        v8 = v16;
      }

      if ([(CPLPrequeliteStorage *)self isLocalScopeIndexValid:v13])
      {
        [v12 setScopeIndex:0];
        [v8 addRecord:v12];
      }

      else if ((*v10 & 1) == 0)
      {
        v17 = sub_10016BF70();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(CPLPrequeliteChangePipe *)self abstractObject];
          [v18 name];
          v26 = v9;
          v19 = self;
          v20 = v11;
          v22 = v21 = v10;
          *buf = 138412802;
          v28 = v22;
          v29 = 2112;
          v30 = v12;
          v31 = 2048;
          v32 = v13;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ dropping %@ (scope index %ld id no longer valid)", buf, 0x20u);

          v10 = v21;
          v11 = v20;
          self = v19;
          v9 = v26;
        }
      }
    }

    while (([v7 next] & 1) != 0);
    if (v8)
    {
      [v25 addObject:v8];
    }

    v4 = v24;
  }

  else
  {
    v8 = 0;
  }

  return v25;
}

- (void)writeTransactionDidFail
{
  v3.receiver = self;
  v3.super_class = CPLPrequeliteChangePipe;
  [(CPLPrequeliteStorage *)&v3 writeTransactionDidFail];
  *(&self->_logDomain + 4) = 0;
}

- (id)status
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [v3 tableCountOfRecords:v4];

  if (v5)
  {
    v6 = [(CPLPrequeliteChangePipe *)self _pullMarker];
    v7 = [(CPLPrequeliteStorage *)self mainTable];
    v8 = [PQLFormatInjection formatInjection:@"batch_marker >= %lu", v6];
    v9 = [v3 table:v7 countOfRecordsMatchingQuery:v8];

    v10 = [NSString stringWithFormat:@"%lu changes to pop (%lu batches) - %lu total changes", v9, [(CPLPrequeliteChangePipe *)self countOfQueuedBatches], v5];
  }

  else
  {
    v10 = @"0 changes";
  }

  return v10;
}

- (id)statusPerScopeIndex
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [v4 cplFetch:{@"SELECT scopeIndex, count(scopeIndex) FROM %@ WHERE batch_marker >= %lu GROUP BY scopeIndex", v5, -[CPLPrequeliteChangePipe _pullMarker](self, "_pullMarker")}];

  v7 = objc_alloc_init(NSMutableDictionary);
  if ([v6 next])
  {
    do
    {
      v8 = [v6 integerAtIndex:0];
      v9 = [[NSString alloc] initWithFormat:@"%lu changes to pop", objc_msgSend(v6, "unsignedIntegerAtIndex:", 1)];
      v10 = [NSNumber numberWithInteger:v8];
      [v7 setObject:v9 forKeyedSubscript:v10];
    }

    while (([v6 next] & 1) != 0);
  }

  return v7;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v11 = [(CPLPrequeliteStorage *)self pqStore];
  v12 = [v11 pqlConnection];

  v13 = [(CPLPrequeliteStorage *)self mainTable];
  LOBYTE(a4) = [v12 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld LIMIT %ld", v13, a3, a4}];

  if (a4)
  {
    v14 = [v12 changes];
    *a5 = v14;
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = [(CPLPrequeliteChangePipe *)self _resetPushAndPullMarkersIfEmptyWithError:a6];
    }
  }

  else if (a6)
  {
    [v12 lastError];
    *a6 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_deleteAllChangesWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [CPLErrors invalidScopeErrorWithScopedIdentifier:v6];
    v10 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v11 = [(CPLPrequeliteStorage *)self pqStore];
  v12 = [v11 pqlConnection];

  v13 = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [v6 identifier];
  v10 = [v12 cplExecute:{@"DELETE FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v13, v14, v8}];

  if (v10)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v12 lastError];
  }

  if (a4)
  {
LABEL_8:
    if ((v10 & 1) == 0)
    {
      v15 = v9;
      *a4 = v9;
    }
  }

LABEL_10:

  return v10;
}

@end