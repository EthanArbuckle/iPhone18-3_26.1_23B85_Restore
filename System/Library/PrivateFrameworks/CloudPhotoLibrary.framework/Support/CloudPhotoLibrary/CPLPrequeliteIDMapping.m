@interface CPLPrequeliteIDMapping
- (BOOL)addAddEventForRecordWithLocalScopedIdentifier:(id)a3 direction:(unint64_t)a4 error:(id *)a5;
- (BOOL)addDeleteEventForRecordWithLocalScopedIdentifier:(id)a3 direction:(unint64_t)a4 error:(id *)a5;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)hasPendingIdentifiers;
- (BOOL)initializeStorage;
- (BOOL)markAllPendingIdentifiersForScopeWithIdentifier:(id)a3 asFinalWithError:(id *)a4;
- (BOOL)removeMappingForCloudScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeMappingForLocalScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)resetAllFinalCloudIdentifiersForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)setFinalCloudScopedIdentifier:(id)a3 forPendingCloudScopedIdentifier:(id)a4 error:(id *)a5;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteIDMapping)initWithAbstractObject:(id)a3;
- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)a3 isFinal:(BOOL *)a4;
- (id)localScopedIdentifierForCloudScopedIdentifier:(id)a3 isFinal:(BOOL *)a4;
- (id)status;
- (void)_cacheLocalScopedIdentifier:(id)a3 cloudScopedIdentifier:(id)a4 isFinal:(BOOL)a5;
- (void)_clearScopedIdentifiersCache;
- (void)transactionDidFinish;
@end

@implementation CPLPrequeliteIDMapping

- (void)transactionDidFinish
{
  v3.receiver = self;
  v3.super_class = CPLPrequeliteIDMapping;
  [(CPLPrequeliteStorage *)&v3 transactionDidFinish];
  [(CPLPrequeliteIDMapping *)self _clearScopedIdentifiersCache];
}

- (void)_clearScopedIdentifiersCache
{
  [*(&self->super._shouldUpgradeSchema + 1) removeAllObjects];
  [*(&self->_localToCloudScopedIdentifiersCache + 4) removeAllObjects];
  v3 = *(&self->_cloudToLocalScopedIdentifiersCache + 4);

  [v3 removeAllObjects];
}

- (CPLPrequeliteIDMapping)initWithAbstractObject:(id)a3
{
  v11.receiver = self;
  v11.super_class = CPLPrequeliteIDMapping;
  v3 = [(CPLPrequeliteStorage *)&v11 initWithAbstractObject:a3];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = *(v3 + 36);
    *(v3 + 36) = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = *(v3 + 44);
    *(v3 + 44) = v6;

    v8 = objc_alloc_init(NSMutableSet);
    v9 = *(v3 + 52);
    *(v3 + 52) = v8;
  }

  return v3;
}

- (void)_cacheLocalScopedIdentifier:(id)a3 cloudScopedIdentifier:(id)a4 isFinal:(BOOL)a5
{
  v5 = a5;
  v8 = *(&self->super._shouldUpgradeSchema + 1);
  v9 = a4;
  v11 = a3;
  [v8 setObject:v9 forKeyedSubscript:v11];
  [*(&self->_localToCloudScopedIdentifiersCache + 4) setObject:v11 forKeyedSubscript:v9];

  v10 = *(&self->_cloudToLocalScopedIdentifiersCache + 4);
  if (v5)
  {
    [v10 removeObject:v11];
  }

  else
  {
    [v10 addObject:v11];
  }
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteIDMapping;
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"stableScopeIndex INTEGER NOT NULL error:cloudIdentifier TEXT NOT NULL, localIdentifier TEXT NOT NULL, mappingState INTEGER NOT NULL, addTimestamp TIMESTAMP NOT NULL, addDirection INTEGER NOT NULL, deleteTimestamp TIMESTAMP, deleteDirection INTEGER", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedCloudIdentifier" withDefinition:@"stableScopeIndex unique:cloudIdentifier" error:1, 0];
      if (v3)
      {
        v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedLocalIdentifier" withDefinition:@"stableScopeIndex unique:localIdentifier" error:1, 0];
        if (v3)
        {
          LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"mappingState" error:0];
        }
      }
    }
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v18.receiver = self;
  v18.super_class = CPLPrequeliteIDMapping;
  if (![(CPLPrequeliteStorage *)&v18 upgradeStorageToVersion:?])
  {
    return 0;
  }

  if (a3 == 45)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return 1;
    }

    v16 = self;
    v15 = @"stableScopeIndex, cloudIdentifier, localIdentifier, mappingState, addTimestamp, addDirection, deleteTimestamp, deleteDirection";
    return [(CPLPrequeliteStorage *)v16 recreateMainTableWithCopyInstructions:@"stableScopeIndex oldFields:cloudIdentifier error:localIdentifier, mappingState, addTimestamp, addDirection, deleteTimestamp, deleteDirection", v15, 0];
  }

  if (a3 == 39)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return 1;
    }

    v15 = @"3, cloudIdentifier, localIdentifier, mappingState, addTimestamp, addDirection, deleteTimestamp, deleteDirection";
    v16 = self;
    return [(CPLPrequeliteStorage *)v16 recreateMainTableWithCopyInstructions:@"stableScopeIndex oldFields:cloudIdentifier error:localIdentifier, mappingState, addTimestamp, addDirection, deleteTimestamp, deleteDirection", v15, 0];
  }

  if (a3 != 37)
  {
    return 1;
  }

  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplExecute:{@"ALTER TABLE %@ ADD COLUMN addTimestamp TIMESTAMP NOT NULL DEFAULT -2147483648", v7}];

  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [v6 cplExecute:{@"ALTER TABLE %@ ADD COLUMN addDirection INTEGER NOT NULL DEFAULT 0", v9}];

  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = [(CPLPrequeliteStorage *)self mainTable];
  v12 = [v6 cplExecute:{@"ALTER TABLE %@ ADD COLUMN deleteTimestamp TIMESTAMP DEFAULT NULL", v11}];

  if (v12)
  {
    v13 = [(CPLPrequeliteStorage *)self mainTable];
    v14 = [v6 cplExecute:{@"ALTER TABLE %@ ADD COLUMN deleteDirection INTEGER DEFAULT NULL", v13}];
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  return v14;
}

- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)a3 isFinal:(BOOL *)a4
{
  v6 = a3;
  v7 = [*(&self->super._shouldUpgradeSchema + 1) objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = v7;
    *a4 = [*(&self->_cloudToLocalScopedIdentifiersCache + 4) containsObject:v6] ^ 1;
  }

  else
  {
    *a4 = 0;
    v9 = [v6 scopeIdentifier];
    v10 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v9];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v11 = [(CPLPrequeliteStorage *)self pqStore];
      v12 = [v11 pqlConnection];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100162EB8;
      v18[3] = &unk_10027B9D8;
      v20 = a4;
      v13 = v6;
      v19 = v13;
      v14 = [(CPLPrequeliteStorage *)self mainTable];
      v15 = [v13 identifier];
      v16 = [v12 cplFetchObject:v18 sql:{@"SELECT cloudIdentifier, mappingState FROM %@ WHERE stableScopeIndex = %ld AND localIdentifier = %@", v14, v10, v15}];

      if (v16)
      {
        [(CPLPrequeliteIDMapping *)self _cacheLocalScopedIdentifier:v13 cloudScopedIdentifier:v16 isFinal:*a4];
      }

      v8 = v16;
    }
  }

  return v8;
}

- (id)localScopedIdentifierForCloudScopedIdentifier:(id)a3 isFinal:(BOOL *)a4
{
  v6 = a3;
  v7 = [*(&self->_localToCloudScopedIdentifiersCache + 4) objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = v7;
    *a4 = [*(&self->_cloudToLocalScopedIdentifiersCache + 4) containsObject:v7] ^ 1;
  }

  else
  {
    v9 = [v6 scopeIdentifier];
    v10 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v9];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      *a4 = 0;
      v11 = [(CPLPrequeliteStorage *)self pqStore];
      v12 = [v11 pqlConnection];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100163138;
      v18[3] = &unk_10027B9D8;
      v20 = a4;
      v13 = v6;
      v19 = v13;
      v14 = [(CPLPrequeliteStorage *)self mainTable];
      v15 = [v13 identifier];
      v16 = [v12 cplFetchObject:v18 sql:{@"SELECT localIdentifier, mappingState FROM %@ WHERE stableScopeIndex = %ld AND cloudIdentifier = %@", v14, v10, v15}];

      if (v16)
      {
        [(CPLPrequeliteIDMapping *)self _cacheLocalScopedIdentifier:v16 cloudScopedIdentifier:v13 isFinal:*a4];
      }

      v8 = v16;
    }
  }

  return v8;
}

- (BOOL)setFinalCloudScopedIdentifier:(id)a3 forPendingCloudScopedIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 scopeIdentifier];
  v11 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v10];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!a5)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v12 = [v9 scopeIdentifier];
    v13 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v12];
    v14 = 0;
    goto LABEL_10;
  }

  v15 = [(CPLPrequeliteStorage *)self pqStore];
  v12 = [v15 pqlConnection];

  v16 = [(CPLPrequeliteStorage *)self mainTable];
  v17 = [v8 identifier];
  v18 = [v9 identifier];
  v14 = [v12 cplExecute:{@"UPDATE %@ SET cloudIdentifier = %@, mappingState = %i WHERE stableScopeIndex = %ld AND cloudIdentifier = %@", v16, v17, 1, v11, v18}];

  if (v14)
  {
    v19 = [*(&self->_localToCloudScopedIdentifiersCache + 4) objectForKeyedSubscript:v9];
    if (v19)
    {
      [*(&self->_localToCloudScopedIdentifiersCache + 4) removeObjectForKey:v9];
      [(CPLPrequeliteIDMapping *)self _cacheLocalScopedIdentifier:v19 cloudScopedIdentifier:v8 isFinal:1];
    }

    goto LABEL_11;
  }

  if (a5)
  {
    v13 = [v12 lastCPLError];
LABEL_10:
    *a5 = v13;
  }

LABEL_11:

LABEL_12:
  return v14;
}

- (BOOL)markAllPendingIdentifiersForScopeWithIdentifier:(id)a3 asFinalWithError:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
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
    v8 = [v11 cplExecute:{@"UPDATE OR FAIL %@ SET mappingState = %i WHERE stableScopeIndex = %ld AND mappingState = %i", v12, 1, v9, 0}];

    if (v8)
    {
      [*(&self->_cloudToLocalScopedIdentifiersCache + 4) removeAllObjects];
    }

    else if (a4)
    {
      *a4 = [v11 lastCPLError];
    }
  }

  return v8;
}

- (BOOL)hasPendingIdentifiers
{
  if ([*(&self->_cloudToLocalScopedIdentifiersCache + 4) count])
  {
    return 1;
  }

  v4 = [(CPLPrequeliteStorage *)self pqStore];
  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [PQLFormatInjection formatInjection:@"mappingState = %i", 0];
  v7 = [v4 table:v5 hasRecordsMatchingQuery:v6];

  return v7;
}

- (BOOL)removeMappingForCloudScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!a4)
    {
      v11 = 0;
      goto LABEL_12;
    }

    v9 = [v6 scopeIdentifier];
    v10 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v9];
    v11 = 0;
    goto LABEL_10;
  }

  v12 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [v12 pqlConnection];

  v13 = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [v6 identifier];
  v11 = [v9 cplExecute:{@"DELETE FROM %@ WHERE stableScopeIndex = %ld AND cloudIdentifier = %@", v13, v8, v14}];

  if (v11)
  {
    v15 = [*(&self->_localToCloudScopedIdentifiersCache + 4) objectForKeyedSubscript:v6];
    if (v15)
    {
      [*(&self->_localToCloudScopedIdentifiersCache + 4) removeObjectForKey:v6];
      [*(&self->super._shouldUpgradeSchema + 1) removeObjectForKey:v15];
      [*(&self->_cloudToLocalScopedIdentifiersCache + 4) removeObject:v15];
    }

    goto LABEL_11;
  }

  if (a4)
  {
    v10 = [v9 lastCPLError];
LABEL_10:
    *a4 = v10;
  }

LABEL_11:

LABEL_12:
  return v11;
}

- (BOOL)addDeleteEventForRecordWithLocalScopedIdentifier:(id)a3 direction:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 scopeIdentifier];
  v10 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!a5)
    {
      v13 = 0;
      goto LABEL_9;
    }

    v11 = [v8 scopeIdentifier];
    v12 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v11];
    v13 = 0;
  }

  else
  {
    v14 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v14 pqlConnection];

    +[NSDate timeIntervalSinceReferenceDate];
    v16 = v15;
    v17 = [(CPLPrequeliteStorage *)self mainTable];
    v18 = [v8 identifier];
    v13 = [v11 cplExecute:{@"UPDATE OR IGNORE %@ SET deleteTimestamp = %ld, deleteDirection = %ld WHERE stableScopeIndex = %ld AND localIdentifier = %@ AND (deleteTimestamp IS NULL OR (deleteTimestamp <= addTimestamp))", v17, v16, a4, v10, v18}];

    if (!a5 || (v13 & 1) != 0)
    {
      goto LABEL_8;
    }

    v12 = [v11 lastCPLError];
  }

  *a5 = v12;
LABEL_8:

LABEL_9:
  return v13;
}

- (BOOL)addAddEventForRecordWithLocalScopedIdentifier:(id)a3 direction:(unint64_t)a4 error:(id *)a5
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

    +[NSDate timeIntervalSinceReferenceDate];
    v16 = v15;
    v17 = [(CPLPrequeliteStorage *)self mainTable];
    v18 = [v8 identifier];
    v12 = [v14 cplExecute:{@"UPDATE OR IGNORE %@ SET addTimestamp = %ld, addDirection = %ld WHERE stableScopeIndex = %ld AND localIdentifier = %@ AND (addTimestamp <= deleteTimestamp)", v17, v16, a4, v10, v18}];

    if (v12)
    {
      if ([v14 changes])
      {
        sub_1001BFBA0(v8, a4);
      }
    }

    else if (a5)
    {
      *a5 = [v14 lastCPLError];
    }
  }

  return v12;
}

- (BOOL)removeMappingForLocalScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!a4)
    {
      v11 = 0;
      goto LABEL_12;
    }

    v9 = [v6 scopeIdentifier];
    v10 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v9];
    v11 = 0;
    goto LABEL_10;
  }

  v12 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [v12 pqlConnection];

  v13 = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [v6 identifier];
  v11 = [v9 cplExecute:{@"DELETE FROM %@ WHERE stableScopeIndex = %ld AND localIdentifier = %@", v13, v8, v14}];

  if (v11)
  {
    v15 = [*(&self->_localToCloudScopedIdentifiersCache + 4) objectForKeyedSubscript:v6];
    if (v6)
    {
      [*(&self->_localToCloudScopedIdentifiersCache + 4) removeObjectForKey:v15];
      [*(&self->super._shouldUpgradeSchema + 1) removeObjectForKey:v6];
      [*(&self->_cloudToLocalScopedIdentifiersCache + 4) removeObject:v6];
    }

    goto LABEL_11;
  }

  if (a4)
  {
    v10 = [v9 lastCPLError];
LABEL_10:
    *a4 = v10;
  }

LABEL_11:

LABEL_12:
  return v11;
}

- (BOOL)resetAllFinalCloudIdentifiersForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
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
    v8 = [v11 cplExecute:{@"UPDATE OR FAIL %@ SET mappingState = %i WHERE stableScopeIndex = %ld AND mappingState = %i", v12, 0, v9, 1}];

    if (v8)
    {
      [(CPLPrequeliteIDMapping *)self _clearScopedIdentifiersCache];
    }

    else if (a4)
    {
      *a4 = [v11 lastCPLError];
    }
  }

  return v8;
}

- (id)status
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"mappingState = %i", 0];
  v6 = [v3 table:v4 countOfRecordsMatchingQuery:v5];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = CPLPrequeliteIDMapping;
    v7 = [(CPLPrequeliteStorage *)&v11 status];
    v8 = [NSString stringWithFormat:@"%@ (%lu pending)", v7, v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CPLPrequeliteIDMapping;
    v8 = [(CPLPrequeliteStorage *)&v10 status];
  }

  return v8;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v11 = [(CPLPrequeliteStorage *)self pqStore];
  v12 = [v11 pqlConnection];

  v13 = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [v12 cplExecute:{@"DELETE FROM %@ WHERE stableScopeIndex = %ld LIMIT %ld", v13, a3, a4}];

  if (v14)
  {
    *a5 = [v12 changes];
    [(CPLPrequeliteIDMapping *)self _clearScopedIdentifiersCache];
  }

  else if (a6)
  {
    *a6 = [v12 lastError];
  }

  return v14;
}

@end