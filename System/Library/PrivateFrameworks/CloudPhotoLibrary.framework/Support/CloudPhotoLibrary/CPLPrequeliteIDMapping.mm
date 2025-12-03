@interface CPLPrequeliteIDMapping
- (BOOL)addAddEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error;
- (BOOL)addDeleteEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasPendingIdentifiers;
- (BOOL)initializeStorage;
- (BOOL)markAllPendingIdentifiersForScopeWithIdentifier:(id)identifier asFinalWithError:(id *)error;
- (BOOL)removeMappingForCloudScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeMappingForLocalScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)resetAllFinalCloudIdentifiersForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)setFinalCloudScopedIdentifier:(id)identifier forPendingCloudScopedIdentifier:(id)scopedIdentifier error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteIDMapping)initWithAbstractObject:(id)object;
- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)status;
- (void)_cacheLocalScopedIdentifier:(id)identifier cloudScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final;
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

- (CPLPrequeliteIDMapping)initWithAbstractObject:(id)object
{
  v11.receiver = self;
  v11.super_class = CPLPrequeliteIDMapping;
  v3 = [(CPLPrequeliteStorage *)&v11 initWithAbstractObject:object];
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

- (void)_cacheLocalScopedIdentifier:(id)identifier cloudScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final
{
  finalCopy = final;
  v8 = *(&self->super._shouldUpgradeSchema + 1);
  scopedIdentifierCopy = scopedIdentifier;
  identifierCopy = identifier;
  [v8 setObject:scopedIdentifierCopy forKeyedSubscript:identifierCopy];
  [*(&self->_localToCloudScopedIdentifiersCache + 4) setObject:identifierCopy forKeyedSubscript:scopedIdentifierCopy];

  v10 = *(&self->_cloudToLocalScopedIdentifiersCache + 4);
  if (finalCopy)
  {
    [v10 removeObject:identifierCopy];
  }

  else
  {
    [v10 addObject:identifierCopy];
  }
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteIDMapping;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"stableScopeIndex INTEGER NOT NULL error:cloudIdentifier TEXT NOT NULL, localIdentifier TEXT NOT NULL, mappingState INTEGER NOT NULL, addTimestamp TIMESTAMP NOT NULL, addDirection INTEGER NOT NULL, deleteTimestamp TIMESTAMP, deleteDirection INTEGER", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedCloudIdentifier" withDefinition:@"stableScopeIndex unique:cloudIdentifier" error:1, 0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedLocalIdentifier" withDefinition:@"stableScopeIndex unique:localIdentifier" error:1, 0];
        if (initializeStorage)
        {
          LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"mappingState" error:0];
        }
      }
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v18.receiver = self;
  v18.super_class = CPLPrequeliteIDMapping;
  if (![(CPLPrequeliteStorage *)&v18 upgradeStorageToVersion:?])
  {
    return 0;
  }

  if (version == 45)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return 1;
    }

    selfCopy2 = self;
    v15 = @"stableScopeIndex, cloudIdentifier, localIdentifier, mappingState, addTimestamp, addDirection, deleteTimestamp, deleteDirection";
    return [(CPLPrequeliteStorage *)selfCopy2 recreateMainTableWithCopyInstructions:@"stableScopeIndex oldFields:cloudIdentifier error:localIdentifier, mappingState, addTimestamp, addDirection, deleteTimestamp, deleteDirection", v15, 0];
  }

  if (version == 39)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return 1;
    }

    v15 = @"3, cloudIdentifier, localIdentifier, mappingState, addTimestamp, addDirection, deleteTimestamp, deleteDirection";
    selfCopy2 = self;
    return [(CPLPrequeliteStorage *)selfCopy2 recreateMainTableWithCopyInstructions:@"stableScopeIndex oldFields:cloudIdentifier error:localIdentifier, mappingState, addTimestamp, addDirection, deleteTimestamp, deleteDirection", v15, 0];
  }

  if (version != 37)
  {
    return 1;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN addTimestamp TIMESTAMP NOT NULL DEFAULT -2147483648", mainTable}];

  if (!v8)
  {
    goto LABEL_16;
  }

  mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN addDirection INTEGER NOT NULL DEFAULT 0", mainTable2}];

  if (!v10)
  {
    goto LABEL_16;
  }

  mainTable3 = [(CPLPrequeliteStorage *)self mainTable];
  v12 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN deleteTimestamp TIMESTAMP DEFAULT NULL", mainTable3}];

  if (v12)
  {
    mainTable4 = [(CPLPrequeliteStorage *)self mainTable];
    v14 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN deleteDirection INTEGER DEFAULT NULL", mainTable4}];
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  return v14;
}

- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  identifierCopy = identifier;
  v7 = [*(&self->super._shouldUpgradeSchema + 1) objectForKeyedSubscript:identifierCopy];
  if (v7)
  {
    v8 = v7;
    *final = [*(&self->_cloudToLocalScopedIdentifiersCache + 4) containsObject:identifierCopy] ^ 1;
  }

  else
  {
    *final = 0;
    scopeIdentifier = [identifierCopy scopeIdentifier];
    v10 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:scopeIdentifier];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100162EB8;
      v18[3] = &unk_10027B9D8;
      finalCopy = final;
      v13 = identifierCopy;
      v19 = v13;
      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      identifier = [v13 identifier];
      v16 = [pqlConnection cplFetchObject:v18 sql:{@"SELECT cloudIdentifier, mappingState FROM %@ WHERE stableScopeIndex = %ld AND localIdentifier = %@", mainTable, v10, identifier}];

      if (v16)
      {
        [(CPLPrequeliteIDMapping *)self _cacheLocalScopedIdentifier:v13 cloudScopedIdentifier:v16 isFinal:*final];
      }

      v8 = v16;
    }
  }

  return v8;
}

- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  identifierCopy = identifier;
  v7 = [*(&self->_localToCloudScopedIdentifiersCache + 4) objectForKeyedSubscript:identifierCopy];
  if (v7)
  {
    v8 = v7;
    *final = [*(&self->_cloudToLocalScopedIdentifiersCache + 4) containsObject:v7] ^ 1;
  }

  else
  {
    scopeIdentifier = [identifierCopy scopeIdentifier];
    v10 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:scopeIdentifier];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      *final = 0;
      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100163138;
      v18[3] = &unk_10027B9D8;
      finalCopy = final;
      v13 = identifierCopy;
      v19 = v13;
      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      identifier = [v13 identifier];
      v16 = [pqlConnection cplFetchObject:v18 sql:{@"SELECT localIdentifier, mappingState FROM %@ WHERE stableScopeIndex = %ld AND cloudIdentifier = %@", mainTable, v10, identifier}];

      if (v16)
      {
        [(CPLPrequeliteIDMapping *)self _cacheLocalScopedIdentifier:v16 cloudScopedIdentifier:v13 isFinal:*final];
      }

      v8 = v16;
    }
  }

  return v8;
}

- (BOOL)setFinalCloudScopedIdentifier:(id)identifier forPendingCloudScopedIdentifier:(id)scopedIdentifier error:(id *)error
{
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  scopeIdentifier = [scopedIdentifierCopy scopeIdentifier];
  v11 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!error)
    {
      v14 = 0;
      goto LABEL_12;
    }

    scopeIdentifier2 = [scopedIdentifierCopy scopeIdentifier];
    lastCPLError = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier2];
    v14 = 0;
    goto LABEL_10;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  scopeIdentifier2 = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [identifierCopy identifier];
  identifier2 = [scopedIdentifierCopy identifier];
  v14 = [scopeIdentifier2 cplExecute:{@"UPDATE %@ SET cloudIdentifier = %@, mappingState = %i WHERE stableScopeIndex = %ld AND cloudIdentifier = %@", mainTable, identifier, 1, v11, identifier2}];

  if (v14)
  {
    v19 = [*(&self->_localToCloudScopedIdentifiersCache + 4) objectForKeyedSubscript:scopedIdentifierCopy];
    if (v19)
    {
      [*(&self->_localToCloudScopedIdentifiersCache + 4) removeObjectForKey:scopedIdentifierCopy];
      [(CPLPrequeliteIDMapping *)self _cacheLocalScopedIdentifier:v19 cloudScopedIdentifier:identifierCopy isFinal:1];
    }

    goto LABEL_11;
  }

  if (error)
  {
    lastCPLError = [scopeIdentifier2 lastCPLError];
LABEL_10:
    *error = lastCPLError;
  }

LABEL_11:

LABEL_12:
  return v14;
}

- (BOOL)markAllPendingIdentifiersForScopeWithIdentifier:(id)identifier asFinalWithError:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
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
    v8 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET mappingState = %i WHERE stableScopeIndex = %ld AND mappingState = %i", mainTable, 1, v9, 0}];

    if (v8)
    {
      [*(&self->_cloudToLocalScopedIdentifiersCache + 4) removeAllObjects];
    }

    else if (error)
    {
      *error = [pqlConnection lastCPLError];
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

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [PQLFormatInjection formatInjection:@"mappingState = %i", 0];
  v7 = [pqStore table:mainTable hasRecordsMatchingQuery:v6];

  return v7;
}

- (BOOL)removeMappingForCloudScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!error)
    {
      v11 = 0;
      goto LABEL_12;
    }

    scopeIdentifier2 = [identifierCopy scopeIdentifier];
    lastCPLError = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier2];
    v11 = 0;
    goto LABEL_10;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  scopeIdentifier2 = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [identifierCopy identifier];
  v11 = [scopeIdentifier2 cplExecute:{@"DELETE FROM %@ WHERE stableScopeIndex = %ld AND cloudIdentifier = %@", mainTable, v8, identifier}];

  if (v11)
  {
    v15 = [*(&self->_localToCloudScopedIdentifiersCache + 4) objectForKeyedSubscript:identifierCopy];
    if (v15)
    {
      [*(&self->_localToCloudScopedIdentifiersCache + 4) removeObjectForKey:identifierCopy];
      [*(&self->super._shouldUpgradeSchema + 1) removeObjectForKey:v15];
      [*(&self->_cloudToLocalScopedIdentifiersCache + 4) removeObject:v15];
    }

    goto LABEL_11;
  }

  if (error)
  {
    lastCPLError = [scopeIdentifier2 lastCPLError];
LABEL_10:
    *error = lastCPLError;
  }

LABEL_11:

LABEL_12:
  return v11;
}

- (BOOL)addDeleteEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v10 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!error)
    {
      v13 = 0;
      goto LABEL_9;
    }

    scopeIdentifier2 = [identifierCopy scopeIdentifier];
    lastCPLError = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier2];
    v13 = 0;
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    scopeIdentifier2 = [pqStore pqlConnection];

    +[NSDate timeIntervalSinceReferenceDate];
    v16 = v15;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v13 = [scopeIdentifier2 cplExecute:{@"UPDATE OR IGNORE %@ SET deleteTimestamp = %ld, deleteDirection = %ld WHERE stableScopeIndex = %ld AND localIdentifier = %@ AND (deleteTimestamp IS NULL OR (deleteTimestamp <= addTimestamp))", mainTable, v16, direction, v10, identifier}];

    if (!error || (v13 & 1) != 0)
    {
      goto LABEL_8;
    }

    lastCPLError = [scopeIdentifier2 lastCPLError];
  }

  *error = lastCPLError;
LABEL_8:

LABEL_9:
  return v13;
}

- (BOOL)addAddEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error
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

    +[NSDate timeIntervalSinceReferenceDate];
    v16 = v15;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v12 = [pqlConnection cplExecute:{@"UPDATE OR IGNORE %@ SET addTimestamp = %ld, addDirection = %ld WHERE stableScopeIndex = %ld AND localIdentifier = %@ AND (addTimestamp <= deleteTimestamp)", mainTable, v16, direction, v10, identifier}];

    if (v12)
    {
      if ([pqlConnection changes])
      {
        sub_1001BFBA0(identifierCopy, direction);
      }
    }

    else if (error)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v12;
}

- (BOOL)removeMappingForLocalScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!error)
    {
      v11 = 0;
      goto LABEL_12;
    }

    scopeIdentifier2 = [identifierCopy scopeIdentifier];
    lastCPLError = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier2];
    v11 = 0;
    goto LABEL_10;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  scopeIdentifier2 = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [identifierCopy identifier];
  v11 = [scopeIdentifier2 cplExecute:{@"DELETE FROM %@ WHERE stableScopeIndex = %ld AND localIdentifier = %@", mainTable, v8, identifier}];

  if (v11)
  {
    v15 = [*(&self->_localToCloudScopedIdentifiersCache + 4) objectForKeyedSubscript:identifierCopy];
    if (identifierCopy)
    {
      [*(&self->_localToCloudScopedIdentifiersCache + 4) removeObjectForKey:v15];
      [*(&self->super._shouldUpgradeSchema + 1) removeObjectForKey:identifierCopy];
      [*(&self->_cloudToLocalScopedIdentifiersCache + 4) removeObject:identifierCopy];
    }

    goto LABEL_11;
  }

  if (error)
  {
    lastCPLError = [scopeIdentifier2 lastCPLError];
LABEL_10:
    *error = lastCPLError;
  }

LABEL_11:

LABEL_12:
  return v11;
}

- (BOOL)resetAllFinalCloudIdentifiersForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self stableScopeIndexForScopeIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
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
    v8 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET mappingState = %i WHERE stableScopeIndex = %ld AND mappingState = %i", mainTable, 0, v9, 1}];

    if (v8)
    {
      [(CPLPrequeliteIDMapping *)self _clearScopedIdentifiersCache];
    }

    else if (error)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v8;
}

- (id)status
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"mappingState = %i", 0];
  v6 = [pqStore table:mainTable countOfRecordsMatchingQuery:v5];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = CPLPrequeliteIDMapping;
    status = [(CPLPrequeliteStorage *)&v11 status];
    status2 = [NSString stringWithFormat:@"%@ (%lu pending)", status, v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CPLPrequeliteIDMapping;
    status2 = [(CPLPrequeliteStorage *)&v10 status];
  }

  return status2;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE stableScopeIndex = %ld LIMIT %ld", mainTable, index, count}];

  if (v14)
  {
    *deletedCount = [pqlConnection changes];
    [(CPLPrequeliteIDMapping *)self _clearScopedIdentifiersCache];
  }

  else if (error)
  {
    *error = [pqlConnection lastError];
  }

  return v14;
}

@end