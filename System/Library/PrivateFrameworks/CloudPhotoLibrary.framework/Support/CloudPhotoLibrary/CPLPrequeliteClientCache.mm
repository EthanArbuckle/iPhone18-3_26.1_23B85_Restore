@interface CPLPrequeliteClientCache
- (BOOL)_deleteBadRelations;
- (BOOL)_updateRelatedIdentifier:(id)identifier forRecordWithIdentifier:(id)withIdentifier;
- (BOOL)addRecord:(id)record error:(id *)error;
- (BOOL)deleteRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasRecordWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (BOOL)hasRecordWithScopedIdentifier:(id)identifier;
- (BOOL)initializeStorage;
- (BOOL)updateRecord:(id)record error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteClientCache)initWithAbstractObject:(id)object;
- (id)_badContainerRelationsIdentifiers;
- (id)recordWithScopedIdentifier:(id)identifier;
- (id)recordsWithRelatedScopedIdentifier:(id)identifier;
- (id)recordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier;
- (id)status;
- (id)statusDictionary;
- (id)statusPerScopeIndex;
- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (void)fillRelatedIdentifiersInChange:(id)change;
@end

@implementation CPLPrequeliteClientCache

- (CPLPrequeliteClientCache)initWithAbstractObject:(id)object
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteClientCache;
  return [(CPLPrequeliteStorage *)&v4 initWithAbstractObject:object];
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteClientCache;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:identifier TEXT NOT NULL, class TEXT NOT NULL, relatedIdentifier TEXT, secondaryIdentifier TEXT, serializedRecord DATA NOT NULL", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:0, 0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier" withDefinition:@"relatedIdentifier unique:scopeIndex" error:0, 0];
        if (initializeStorage)
        {
          initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"secondaryScopedIdentifier" withDefinition:@"secondaryIdentifier unique:scopeIndex" error:0, 0];
          if (initializeStorage)
          {
            initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier.class" withDefinition:@"relatedIdentifier unique:scopeIndex error:class", 0, 0];
            if (initializeStorage)
            {
              initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"secondaryScopedIdentifier.class" withDefinition:@"secondaryIdentifier unique:scopeIndex error:class", 0, 0];
              if (initializeStorage)
              {
                initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"class" error:0];
                if (initializeStorage)
                {
                  LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
                }
              }
            }
          }
        }
      }
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteClientCache;
  v5 = [(CPLPrequeliteStorage *)&v8 upgradeStorageToVersion:?];
  if (!v5)
  {
    return v5;
  }

  LOBYTE(v5) = 1;
  if (version <= 51)
  {
    if (version != 20)
    {
      if (version == 39)
      {
        LOBYTE(v5) = [(CPLPrequeliteStorage *)self recreateMainTableWithCopyInstructions:@"scopeIndex oldFields:identifier error:class, relatedIdentifier, secondaryIdentifier, serializedRecord", @"1, identifier, class, relatedIdentifier, secondaryIdentifier, serializedRecord", 0];
      }

      return v5;
    }

    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      v6 = @"class";
LABEL_23:
      LOBYTE(v5) = [(CPLPrequeliteStorage *)self createIndexOnColumn:v6 error:0];
      return v5;
    }

    goto LABEL_24;
  }

  if (version == 52)
  {
    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      v6 = @"scopeIndex";
      goto LABEL_23;
    }

LABEL_24:
    LOBYTE(v5) = 1;
    return v5;
  }

  if (version != 53)
  {
    return v5;
  }

  if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    goto LABEL_24;
  }

  v5 = [(CPLPrequeliteStorage *)self dropIndexWithName:@"identifier" error:0];
  if (v5)
  {
    v5 = [(CPLPrequeliteStorage *)self dropIndexWithName:@"relatedIdentifier" error:0];
    if (v5)
    {
      v5 = [(CPLPrequeliteStorage *)self dropIndexWithName:@"secondaryIdentifier" error:0];
      if (v5)
      {
        v5 = [(CPLPrequeliteStorage *)self dropIndexWithName:@"relatedIdentifier.class" error:0];
        if (v5)
        {
          v5 = [(CPLPrequeliteStorage *)self dropIndexWithName:@"secondaryIdentifier.class" error:0];
          if (v5)
          {
            v5 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:0, 0];
            if (v5)
            {
              v5 = [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier" withDefinition:@"relatedIdentifier unique:scopeIndex" error:0, 0];
              if (v5)
              {
                v5 = [(CPLPrequeliteStorage *)self createIndexWithName:@"secondaryScopedIdentifier" withDefinition:@"secondaryIdentifier unique:scopeIndex" error:0, 0];
                if (v5)
                {
                  v5 = [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier.class" withDefinition:@"relatedIdentifier unique:scopeIndex error:class", 0, 0];
                  if (v5)
                  {
                    LOBYTE(v5) = [(CPLPrequeliteStorage *)self createIndexWithName:@"secondaryScopedIdentifier.class" withDefinition:@"secondaryIdentifier unique:scopeIndex error:class", 0, 0];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)addRecord:(id)record error:(id *)error
{
  recordCopy = record;
  scopedIdentifier = [recordCopy scopedIdentifier];
  v8 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:scopedIdentifier];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:scopedIdentifier];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = v8;
    relatedIdentifier = [recordCopy relatedIdentifier];
    secondaryIdentifier = [recordCopy secondaryIdentifier];
    v13 = [recordCopy copy];
    [v13 clearIdentifiers];
    [v13 prepareForStorage];
    v14 = [CPLArchiver archivedDataWithRootObject:v13];
    if (v14)
    {
      [(CPLPrequeliteStorage *)self pqStore];
      errorCopy = error;
      v16 = v15 = relatedIdentifier;
      pqlConnection = [v16 pqlConnection];

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      identifier = [scopedIdentifier identifier];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = secondaryIdentifier;
      v23 = v21;
      v25 = v22;
      v9 = [pqlConnection cplExecute:{@"INSERT INTO %@ (scopeIndex, identifier, class, relatedIdentifier, secondaryIdentifier, serializedRecord) VALUES (%ld, %@, %@, %@, %@, %@)", mainTable, v10, identifier, v21, v15, v22, v14}];

      if ((v9 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_1001C2554();
        }

        if (errorCopy)
        {
          *errorCopy = [pqlConnection lastCPLError];
        }
      }

      relatedIdentifier = v15;
      secondaryIdentifier = v25;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001C2600();
      }

      if (error)
      {
        [CPLErrors invalidClientCacheErrorWithReason:0];
        *error = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (BOOL)updateRecord:(id)record error:(id *)error
{
  recordCopy = record;
  scopedIdentifier = [recordCopy scopedIdentifier];
  v8 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:scopedIdentifier];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:scopedIdentifier];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = v8;
    relatedIdentifier = [recordCopy relatedIdentifier];
    secondaryIdentifier = [recordCopy secondaryIdentifier];
    v13 = [recordCopy copy];
    [v13 clearIdentifiers];
    [v13 prepareForStorage];
    v14 = [CPLArchiver archivedDataWithRootObject:v13];
    if (v14)
    {
      [(CPLPrequeliteStorage *)self pqStore];
      v15 = v20 = error;
      pqlConnection = [v15 pqlConnection];

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      identifier = [scopedIdentifier identifier];
      v9 = [pqlConnection cplExecute:{@"UPDATE %@ SET serializedRecord = %@, relatedIdentifier = %@, secondaryIdentifier = %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, v14, relatedIdentifier, secondaryIdentifier, identifier, v10}];

      if ((v9 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_1001C26A4();
        }

        if (v20)
        {
          *v20 = [pqlConnection lastCPLError];
        }
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001C2600();
      }

      if (error)
      {
        [CPLErrors invalidClientCacheErrorWithReason:0];
        *error = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (BOOL)deleteRecordWithScopedIdentifier:(id)identifier error:(id *)error
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
    v8 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, v9}];

    if ((v8 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001C2750();
      }

      if (error)
      {
        *error = [pqlConnection lastCPLError];
      }
    }
  }

  return v8;
}

- (id)recordWithScopedIdentifier:(id)identifier
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
    v13[2] = sub_10016F8B4;
    v13[3] = &unk_10027B218;
    v14 = identifierCopy;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [v14 identifier];
    v6 = [pqlConnection cplFetchObject:v13 sql:{@"SELECT identifier, serializedRecord, relatedIdentifier, secondaryIdentifier FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, v7}];
  }

  return v6;
}

- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier
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
    v13 = [pqlConnection cplFetchObjectOfClass:v10 sql:{@"SELECT relatedIdentifier FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, v7}];

    if (v13)
    {
      v14 = [CPLScopedIdentifier alloc];
      scopeIdentifier = [identifierCopy scopeIdentifier];
      v6 = [v14 initWithScopeIdentifier:scopeIdentifier identifier:v13];

      [v6 setScopeIndex:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)identifier
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
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v11 = [PQLFormatInjection formatInjection:@"identifier = %@ AND scopeIndex = %ld", identifier, v7];
    v6 = [pqStore table:mainTable hasRecordsMatchingQuery:v11];
  }

  return v6;
}

- (id)recordsWithRelatedScopedIdentifier:(id)identifier
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
    scopeIdentifier = [identifierCopy scopeIdentifier];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v13 = [pqlConnection cplFetch:{@"SELECT identifier, serializedRecord, relatedIdentifier, secondaryIdentifier FROM %@ WHERE relatedIdentifier = %@ AND scopeIndex = %ld", mainTable, identifier, v7}];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10016FD74;
    v16[3] = &unk_10027B9D8;
    v17 = scopeIdentifier;
    v18 = v7;
    v14 = scopeIdentifier;
    v6 = [v13 enumerateObjects:v16];
    if (!v6 && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001C2894();
    }
  }

  return v6;
}

- (id)recordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    scopeIdentifier = [identifierCopy scopeIdentifier];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v15 = NSStringFromClass(class);
    v16 = [pqlConnection cplFetch:{@"SELECT identifier, serializedRecord, relatedIdentifier, secondaryIdentifier FROM %@ WHERE relatedIdentifier = %@ AND class = %@ AND scopeIndex = %ld", mainTable, identifier, v15, v9}];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100170074;
    v19[3] = &unk_10027B9D8;
    v20 = scopeIdentifier;
    v21 = v9;
    v17 = scopeIdentifier;
    v8 = [v16 enumerateObjects:v19];
    if (!v8 && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001C2894();
    }
  }

  return v8;
}

- (BOOL)hasRecordWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v13 = NSStringFromClass(class);
    v14 = [PQLFormatInjection formatInjection:@"relatedIdentifier = %@ AND class = %@ AND scopeIndex = %ld", identifier, v13, v9];
    v8 = [pqStore table:mainTable hasRecordsMatchingQuery:v14];
  }

  return v8;
}

- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v13 = NSStringFromClass(class);
    v14 = [PQLFormatInjection formatInjection:@"relatedIdentifier = %@ AND class = %@ AND scopeIndex = %ld", identifier, v13, v9];
    v8 = [pqStore table:mainTable countOfRecordsMatchingQuery:v14];
  }

  return v8;
}

- (id)_badContainerRelationsIdentifiers
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [pqlConnection cplFetch:{@"SELECT identifier FROM %@ WHERE relatedIdentifier IS NULL AND class = %@", mainTable, v7}];

  v9 = [v8 enumerateObjectsOfClass:objc_opt_class()];

  return v9;
}

- (BOOL)_deleteBadRelations
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE relatedIdentifier IS NULL AND class = %@", mainTable, v7}];

  return v8;
}

- (BOOL)_updateRelatedIdentifier:(id)identifier forRecordWithIdentifier:(id)withIdentifier
{
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  LOBYTE(pqStore) = [pqlConnection cplExecute:{@"UPDATE %@ SET relatedIdentifier = %@ WHERE identifier = %@", mainTable, identifierCopy, withIdentifierCopy}];

  return pqStore;
}

- (id)status
{
  v11.receiver = self;
  v11.super_class = CPLPrequeliteClientCache;
  status = [(CPLPrequeliteStorage *)&v11 status];
  v4 = [status mutableCopy];

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100170700;
  v9[3] = &unk_10027B8F0;
  v7 = v4;
  v10 = v7;
  [pqStore table:mainTable enumerateCountGroupedByProperty:@"class" block:v9];

  return v7;
}

- (id)statusDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100170858;
  v8[3] = &unk_10027B8F0;
  v6 = v3;
  v9 = v6;
  [pqStore table:mainTable enumerateCountGroupedByProperty:@"class" block:v8];

  return v6;
}

- (id)statusPerScopeIndex
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteClientCache;
  v2 = [(CPLPrequeliteStorage *)&v4 statusPerScopeIndexWithGroupProperty:@"class" valueDescription:&stru_10027BC40];

  return v2;
}

- (void)fillRelatedIdentifiersInChange:(id)change
{
  changeCopy = change;
  scopedIdentifier = [changeCopy scopedIdentifier];
  scopedIdentifier2 = [changeCopy scopedIdentifier];
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:scopedIdentifier2];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100170A88;
    v12[3] = &unk_10027B218;
    v13 = changeCopy;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [scopedIdentifier identifier];
  }
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