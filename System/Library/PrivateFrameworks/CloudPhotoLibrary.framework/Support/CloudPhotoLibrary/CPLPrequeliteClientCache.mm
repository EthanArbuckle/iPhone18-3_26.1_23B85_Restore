@interface CPLPrequeliteClientCache
- (BOOL)_deleteBadRelations;
- (BOOL)_updateRelatedIdentifier:(id)a3 forRecordWithIdentifier:(id)a4;
- (BOOL)addRecord:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)hasRecordWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (BOOL)hasRecordWithScopedIdentifier:(id)a3;
- (BOOL)initializeStorage;
- (BOOL)updateRecord:(id)a3 error:(id *)a4;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteClientCache)initWithAbstractObject:(id)a3;
- (id)_badContainerRelationsIdentifiers;
- (id)recordWithScopedIdentifier:(id)a3;
- (id)recordsWithRelatedScopedIdentifier:(id)a3;
- (id)recordsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)a3;
- (id)status;
- (id)statusDictionary;
- (id)statusPerScopeIndex;
- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (void)fillRelatedIdentifiersInChange:(id)a3;
@end

@implementation CPLPrequeliteClientCache

- (CPLPrequeliteClientCache)initWithAbstractObject:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteClientCache;
  return [(CPLPrequeliteStorage *)&v4 initWithAbstractObject:a3];
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteClientCache;
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:identifier TEXT NOT NULL, class TEXT NOT NULL, relatedIdentifier TEXT, secondaryIdentifier TEXT, serializedRecord DATA NOT NULL", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:0, 0];
      if (v3)
      {
        v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier" withDefinition:@"relatedIdentifier unique:scopeIndex" error:0, 0];
        if (v3)
        {
          v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"secondaryScopedIdentifier" withDefinition:@"secondaryIdentifier unique:scopeIndex" error:0, 0];
          if (v3)
          {
            v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier.class" withDefinition:@"relatedIdentifier unique:scopeIndex error:class", 0, 0];
            if (v3)
            {
              v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"secondaryScopedIdentifier.class" withDefinition:@"secondaryIdentifier unique:scopeIndex error:class", 0, 0];
              if (v3)
              {
                v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"class" error:0];
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
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteClientCache;
  v5 = [(CPLPrequeliteStorage *)&v8 upgradeStorageToVersion:?];
  if (!v5)
  {
    return v5;
  }

  LOBYTE(v5) = 1;
  if (a3 <= 51)
  {
    if (a3 != 20)
    {
      if (a3 == 39)
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

  if (a3 == 52)
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

  if (a3 != 53)
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

- (BOOL)addRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 scopedIdentifier];
  v8 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v7];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = v8;
    v11 = [v6 relatedIdentifier];
    v12 = [v6 secondaryIdentifier];
    v13 = [v6 copy];
    [v13 clearIdentifiers];
    [v13 prepareForStorage];
    v14 = [CPLArchiver archivedDataWithRootObject:v13];
    if (v14)
    {
      [(CPLPrequeliteStorage *)self pqStore];
      v26 = a4;
      v16 = v15 = v11;
      v17 = [v16 pqlConnection];

      v18 = [(CPLPrequeliteStorage *)self mainTable];
      v19 = [v7 identifier];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = v12;
      v23 = v21;
      v25 = v22;
      v9 = [v17 cplExecute:{@"INSERT INTO %@ (scopeIndex, identifier, class, relatedIdentifier, secondaryIdentifier, serializedRecord) VALUES (%ld, %@, %@, %@, %@, %@)", v18, v10, v19, v21, v15, v22, v14}];

      if ((v9 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_1001C2554();
        }

        if (v26)
        {
          *v26 = [v17 lastCPLError];
        }
      }

      v11 = v15;
      v12 = v25;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001C2600();
      }

      if (a4)
      {
        [CPLErrors invalidClientCacheErrorWithReason:0];
        *a4 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (BOOL)updateRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 scopedIdentifier];
  v8 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v7];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = v8;
    v11 = [v6 relatedIdentifier];
    v12 = [v6 secondaryIdentifier];
    v13 = [v6 copy];
    [v13 clearIdentifiers];
    [v13 prepareForStorage];
    v14 = [CPLArchiver archivedDataWithRootObject:v13];
    if (v14)
    {
      [(CPLPrequeliteStorage *)self pqStore];
      v15 = v20 = a4;
      v19 = [v15 pqlConnection];

      v16 = [(CPLPrequeliteStorage *)self mainTable];
      v17 = [v7 identifier];
      v9 = [v19 cplExecute:{@"UPDATE %@ SET serializedRecord = %@, relatedIdentifier = %@, secondaryIdentifier = %@ WHERE identifier = %@ AND scopeIndex = %ld", v16, v14, v11, v12, v17, v10}];

      if ((v9 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_1001C26A4();
        }

        if (v20)
        {
          *v20 = [v19 lastCPLError];
        }
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001C2600();
      }

      if (a4)
      {
        [CPLErrors invalidClientCacheErrorWithReason:0];
        *a4 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (BOOL)deleteRecordWithScopedIdentifier:(id)a3 error:(id *)a4
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
    v8 = [v11 cplExecute:{@"DELETE FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v12, v13, v9}];

    if ((v8 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001C2750();
      }

      if (a4)
      {
        *a4 = [v11 lastCPLError];
      }
    }
  }

  return v8;
}

- (id)recordWithScopedIdentifier:(id)a3
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
    v13[2] = sub_10016F8B4;
    v13[3] = &unk_10027B218;
    v14 = v4;
    v10 = [(CPLPrequeliteStorage *)self mainTable];
    v11 = [v14 identifier];
    v6 = [v9 cplFetchObject:v13 sql:{@"SELECT identifier, serializedRecord, relatedIdentifier, secondaryIdentifier FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v10, v11, v7}];
  }

  return v6;
}

- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)a3
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
    v13 = [v9 cplFetchObjectOfClass:v10 sql:{@"SELECT relatedIdentifier FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v11, v12, v7}];

    if (v13)
    {
      v14 = [CPLScopedIdentifier alloc];
      v15 = [v4 scopeIdentifier];
      v6 = [v14 initWithScopeIdentifier:v15 identifier:v13];

      [v6 setScopeIndex:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)a3
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
    v11 = [PQLFormatInjection formatInjection:@"identifier = %@ AND scopeIndex = %ld", v10, v7];
    v6 = [v8 table:v9 hasRecordsMatchingQuery:v11];
  }

  return v6;
}

- (id)recordsWithRelatedScopedIdentifier:(id)a3
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
    v8 = [v4 scopeIdentifier];
    v9 = [(CPLPrequeliteStorage *)self pqStore];
    v10 = [v9 pqlConnection];

    v11 = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [v4 identifier];
    v13 = [v10 cplFetch:{@"SELECT identifier, serializedRecord, relatedIdentifier, secondaryIdentifier FROM %@ WHERE relatedIdentifier = %@ AND scopeIndex = %ld", v11, v12, v7}];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10016FD74;
    v16[3] = &unk_10027B9D8;
    v17 = v8;
    v18 = v7;
    v14 = v8;
    v6 = [v13 enumerateObjects:v16];
    if (!v6 && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001C2894();
    }
  }

  return v6;
}

- (id)recordsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [v6 scopeIdentifier];
    v11 = [(CPLPrequeliteStorage *)self pqStore];
    v12 = [v11 pqlConnection];

    v13 = [(CPLPrequeliteStorage *)self mainTable];
    v14 = [v6 identifier];
    v15 = NSStringFromClass(a4);
    v16 = [v12 cplFetch:{@"SELECT identifier, serializedRecord, relatedIdentifier, secondaryIdentifier FROM %@ WHERE relatedIdentifier = %@ AND class = %@ AND scopeIndex = %ld", v13, v14, v15, v9}];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100170074;
    v19[3] = &unk_10027B9D8;
    v20 = v10;
    v21 = v9;
    v17 = v10;
    v8 = [v16 enumerateObjects:v19];
    if (!v8 && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001C2894();
    }
  }

  return v8;
}

- (BOOL)hasRecordWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [v6 identifier];
    v13 = NSStringFromClass(a4);
    v14 = [PQLFormatInjection formatInjection:@"relatedIdentifier = %@ AND class = %@ AND scopeIndex = %ld", v12, v13, v9];
    v8 = [v10 table:v11 hasRecordsMatchingQuery:v14];
  }

  return v8;
}

- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [v6 identifier];
    v13 = NSStringFromClass(a4);
    v14 = [PQLFormatInjection formatInjection:@"relatedIdentifier = %@ AND class = %@ AND scopeIndex = %ld", v12, v13, v9];
    v8 = [v10 table:v11 countOfRecordsMatchingQuery:v14];
  }

  return v8;
}

- (id)_badContainerRelationsIdentifiers
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 cplFetch:{@"SELECT identifier FROM %@ WHERE relatedIdentifier IS NULL AND class = %@", v5, v7}];

  v9 = [v8 enumerateObjectsOfClass:objc_opt_class()];

  return v9;
}

- (BOOL)_deleteBadRelations
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 cplExecute:{@"DELETE FROM %@ WHERE relatedIdentifier IS NULL AND class = %@", v5, v7}];

  return v8;
}

- (BOOL)_updateRelatedIdentifier:(id)a3 forRecordWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [v8 pqlConnection];

  v10 = [(CPLPrequeliteStorage *)self mainTable];
  LOBYTE(v8) = [v9 cplExecute:{@"UPDATE %@ SET relatedIdentifier = %@ WHERE identifier = %@", v10, v7, v6}];

  return v8;
}

- (id)status
{
  v11.receiver = self;
  v11.super_class = CPLPrequeliteClientCache;
  v3 = [(CPLPrequeliteStorage *)&v11 status];
  v4 = [v3 mutableCopy];

  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100170700;
  v9[3] = &unk_10027B8F0;
  v7 = v4;
  v10 = v7;
  [v5 table:v6 enumerateCountGroupedByProperty:@"class" block:v9];

  return v7;
}

- (id)statusDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(CPLPrequeliteStorage *)self pqStore];
  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100170858;
  v8[3] = &unk_10027B8F0;
  v6 = v3;
  v9 = v6;
  [v4 table:v5 enumerateCountGroupedByProperty:@"class" block:v8];

  return v6;
}

- (id)statusPerScopeIndex
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteClientCache;
  v2 = [(CPLPrequeliteStorage *)&v4 statusPerScopeIndexWithGroupProperty:@"class" valueDescription:&stru_10027BC40];

  return v2;
}

- (void)fillRelatedIdentifiersInChange:(id)a3
{
  v4 = a3;
  v5 = [v4 scopedIdentifier];
  v6 = [v4 scopedIdentifier];
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [v8 pqlConnection];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100170A88;
    v12[3] = &unk_10027B218;
    v13 = v4;
    v10 = [(CPLPrequeliteStorage *)self mainTable];
    v11 = [v5 identifier];
  }
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