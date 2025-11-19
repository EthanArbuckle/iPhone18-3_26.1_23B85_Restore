@interface CPLPrequeliteOutgoingResources
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 discardedResources:(id *)a6 error:(id *)a7;
- (BOOL)deleteResourcesToUploadWithUploadIdentifier:(id)a3 error:(id *)a4;
- (BOOL)initializeStorage;
- (BOOL)shouldUploadResource:(id)a3;
- (BOOL)storeResourceToUpload:(id)a3 withUploadIdentifier:(id)a4 error:(id *)a5;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (id)resourceTypesToUploadForUploadIdentifier:(id)a3;
- (id)resourcesToUploadForUploadIdentifier:(id)a3;
- (id)status;
- (id)statusPerScopeIndex;
- (unint64_t)availableResourceSizeForUploadIdentifier:(id)a3;
- (void)_cacheCountOfOriginalsIfNecessary;
- (void)_cacheUploadSizesIfNecessary;
- (void)writeTransactionDidFail;
@end

@implementation CPLPrequeliteOutgoingResources

- (void)_cacheUploadSizesIfNecessary
{
  if ((self->_sizeOfOriginalResourcesToUpload & 0x100000000) == 0)
  {
    v3 = [(CPLPrequeliteStorage *)self pqStore];
    v10 = [v3 pqlConnection];

    v4 = objc_opt_class();
    v5 = [(CPLPrequeliteStorage *)self mainTable];
    v6 = [v10 cplFetchObjectOfClass:v4 sql:{@"SELECT SUM(fileSize) FROM %@", v5}];
    *(&self->_countOfOriginalOthers + 4) = [v6 unsignedLongLongValue];

    v7 = objc_opt_class();
    v8 = [(CPLPrequeliteStorage *)self mainTable];
    v9 = [v10 cplFetchObjectOfClass:v7 sql:{@"SELECT SUM(fileSize) FROM %@ WHERE resourceType = %i", v8, 1}];
    *(&self->_sizeOfResourcesToUpload + 4) = [v9 unsignedLongLongValue];

    BYTE4(self->_sizeOfOriginalResourcesToUpload) = 1;
  }
}

- (void)_cacheCountOfOriginalsIfNecessary
{
  if (!*(&self->super._shouldUpgradeSchema + 1))
  {
    v3 = &self->_countOfOriginalsIsCached + 4;
    *(&self->_countOfOriginalsIsCached + 4) = 0;
    v4 = &self->_countOfOriginalImages + 4;
    *(&self->_countOfOriginalImages + 4) = 0;
    v5 = &self->_countOfOriginalVideos + 4;
    *(&self->_countOfOriginalVideos + 4) = 0;
    v6 = [(CPLPrequeliteStorage *)self pqStore];
    v12 = [v6 pqlConnection];

    v7 = [(CPLPrequeliteStorage *)self mainTable];
    v8 = [v12 cplFetch:{@"SELECT fileKind, count(fileKind) FROM %@ WHERE resourceType = %i GROUP BY fileKind", v7, 1}];

    if ([v8 next])
    {
      do
      {
        v9 = [v8 intAtIndex:0];
        v10 = [v8 unsignedIntegerAtIndex:1];
        if (v9 == 1)
        {
          v11 = v4;
        }

        else
        {
          v11 = v5;
        }

        if (!v9)
        {
          v11 = v3;
        }

        *v11 += v10;
      }

      while (([v8 next] & 1) != 0);
    }

    *(&self->super._shouldUpgradeSchema + 1) = 1;
  }
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteOutgoingResources;
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:itemIdentifier TEXT NOT NULL, resourceType INTEGER NOT NULL, fingerPrint TEXT NOT NULL, fileUTI TEXT NOT NULL, fileKind INTEGER NOT NULL, fileSize INTEGER NOT NULL, uploadIdentifier TEXT NOT NULL", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"resourceType" withDefinition:@"resourceType unique:fileKind" error:0, 0];
      if (v3)
      {
        v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"resource" withDefinition:@"itemIdentifier unique:resourceType error:fingerPrint", 0, 0];
        if (v3)
        {
          v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"uploadIdentifier" error:0];
          if (v3)
          {
            v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
            if (v3)
            {
              LOBYTE(v3) = 1;
              *(&self->super._shouldUpgradeSchema + 1) = 1;
              *(&self->_countOfOriginalsIsCached + 4) = 0;
              *(&self->_countOfOriginalImages + 4) = 0;
              *(&self->_countOfOriginalVideos + 4) = 0;
              BYTE4(self->_sizeOfOriginalResourcesToUpload) = 1;
              *(&self->_countOfOriginalOthers + 4) = 0;
              *(&self->_sizeOfResourcesToUpload + 4) = 0;
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
  v7.receiver = self;
  v7.super_class = CPLPrequeliteOutgoingResources;
  v5 = [(CPLPrequeliteStorage *)&v7 upgradeStorageToVersion:?];
  if (v5)
  {
    switch(a3)
    {
      case 52:
        if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          LOBYTE(v5) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
          return v5;
        }

        break;
      case 39:
        if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          sub_1001BE1F4(self, &v8);
          LOBYTE(v5) = v8;
          return v5;
        }

        break;
      case 31:
        LOBYTE(v5) = [(CPLPrequeliteStorage *)self createStorage];
        return v5;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)storeResourceToUpload:(id)a3 withUploadIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 itemScopedIdentifier];
  v11 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v10];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = a5;
    v14 = [(CPLPrequeliteStorage *)self pqStore];
    v34 = [v14 pqlConnection];

    v36 = v8;
    v35 = v9;
    v15 = [[CPLPrequeliteOutgoingResource alloc] initWithResource:v8 uploadIdentifier:v9];
    v16 = [(CPLPrequeliteStorage *)self mainTable];
    v33 = [(CPLPrequeliteOutgoingResource *)v15 scopeIndex];
    v17 = [(CPLPrequeliteOutgoingResource *)v15 itemIdentifier];
    v18 = [(CPLPrequeliteOutgoingResource *)v15 resourceType];
    v19 = [(CPLPrequeliteOutgoingResource *)v15 fingerPrint];
    v20 = [(CPLPrequeliteOutgoingResource *)v15 fileUTI];
    v21 = [(CPLPrequeliteOutgoingResource *)v15 fileKind];
    v22 = [(CPLPrequeliteOutgoingResource *)v15 fileSize];
    v23 = [(CPLPrequeliteOutgoingResource *)v15 uploadIdentifier];
    v31 = v18;
    v12 = v34;
    v13 = [v34 cplExecute:{@"INSERT INTO %@ (scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileKind, fileSize, uploadIdentifier) VALUES (%ld, %@, %i, %@, %@, %i, %llu, %@)", v16, v33, v17, v31, v19, v20, v21, v22, v23}];

    if (v13)
    {
      BYTE5(self->_sizeOfOriginalResourcesToUpload) = 1;
      v8 = v36;
      if (BYTE4(self->_sizeOfOriginalResourcesToUpload) == 1)
      {
        v24 = [v36 identity];
        v25 = [v24 fileSize];

        *(&self->_countOfOriginalOthers + 4) += v25;
        if ([v36 resourceType] == 1)
        {
          *(&self->_sizeOfResourcesToUpload + 4) += v25;
        }
      }

      if (*(&self->super._shouldUpgradeSchema + 1) && [v36 resourceType] == 1)
      {
        v26 = [v36 identity];
        v27 = [v26 fileUTI];

        if (v27)
        {
          v28 = [UTType typeWithIdentifier:v27];
          if ([v28 conformsToType:UTTypeImage])
          {
            v29 = 44;
          }

          else if ([v28 conformsToType:UTTypeMovie])
          {
            v29 = 52;
          }

          else
          {
            v29 = 60;
          }

          ++*&self->super.CPLPlatformObject_opaque[v29];
        }

        else
        {
          ++*(&self->_countOfOriginalVideos + 4);
        }
      }
    }

    else
    {
      v8 = v36;
      if (v32)
      {
        *v32 = [v34 lastCPLError];
      }
    }

    v9 = v35;
    goto LABEL_23;
  }

  if (a5)
  {
    v12 = [v8 itemScopedIdentifier];
    [CPLErrors invalidScopeErrorWithScopedIdentifier:v12];
    *a5 = v13 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (BOOL)deleteResourcesToUploadWithUploadIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [v7 pqlConnection];

  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [v8 cplExecute:{@"DELETE FROM %@ WHERE uploadIdentifier = %@", v9, v6}];

  if (v10)
  {
    BYTE5(self->_sizeOfOriginalResourcesToUpload) = 1;
    BYTE4(self->_sizeOfOriginalResourcesToUpload) = 0;
    *(&self->super._shouldUpgradeSchema + 1) = 0;
  }

  else if (a4)
  {
    *a4 = [v8 lastCPLError];
  }

  return v10;
}

- (id)resourceTypesToUploadForUploadIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CPLResourceTypeSet);
  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [v6 pqlConnection];

  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [v7 cplFetch:{@"SELECT resourceType FROM %@ WHERE uploadIdentifier = %@", v8, v4}];

  if ([v9 next])
  {
    do
    {
      [v5 addResourceType:{objc_msgSend(v9, "intAtIndex:", 0)}];
    }

    while (([v9 next] & 1) != 0);
  }

  return v5;
}

- (unint64_t)availableResourceSizeForUploadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = objc_opt_class();
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [v6 cplFetchObjectOfClass:v7 sql:{@"SELECT SUM(fileSize) FROM %@ WHERE uploadIdentifier = %@", v8, v4}];

  v10 = [v9 unsignedLongLongValue];
  return v10;
}

- (id)resourcesToUploadForUploadIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [v6 pqlConnection];

  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [v7 cplFetch:{@"SELECT scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileKind, fileSize, uploadIdentifier FROM %@ WHERE uploadIdentifier = %@", v8, v4}];

  if ([v9 next])
  {
    do
    {
      v10 = [[CPLPrequeliteOutgoingResource alloc] initFromPQLResultSet:v9 error:0];
      v11 = [v10 resourceWithOutgoingResources:self];
      if (v11)
      {
        [v5 addObject:v11];
      }
    }

    while (([v9 next] & 1) != 0);
  }

  return v5;
}

- (BOOL)shouldUploadResource:(id)a3
{
  v4 = a3;
  v5 = [v4 itemScopedIdentifier];
  v6 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [(CPLPrequeliteStorage *)self pqStore];
    v10 = [(CPLPrequeliteStorage *)self mainTable];
    v11 = [v5 identifier];
    v12 = [v4 resourceType];
    v13 = [v4 identity];
    v14 = [v13 fingerPrint];
    v15 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND itemIdentifier = %@ AND resourceType = %i AND fingerPrint = %@", v8, v11, v12, v14];
    v7 = [v9 table:v10 hasRecordsMatchingQuery:v15];
  }

  return v7;
}

- (id)status
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004590;
  v15 = sub_1000053AC;
  v16 = 0;
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100159FA0;
  v10[3] = &unk_10027B6A0;
  v10[4] = self;
  v10[5] = &v11;
  [v3 table:v4 enumerateCountGroupedByUnsignedIntegerProperty:@"resourceType" block:v10];

  v5 = v12[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CPLPrequeliteOutgoingResources;
    v6 = [(CPLPrequeliteStorage *)&v9 status];
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (id)statusPerScopeIndex
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteOutgoingResources;
  v2 = [(CPLPrequeliteStorage *)&v4 statusPerScopeIndexWithGroupProperty:@"resourceType" valueDescription:&stru_10027B6E0];

  return v2;
}

- (void)writeTransactionDidFail
{
  v3.receiver = self;
  v3.super_class = CPLPrequeliteOutgoingResources;
  [(CPLPrequeliteStorage *)&v3 writeTransactionDidFail];
  if (BYTE5(self->_sizeOfOriginalResourcesToUpload) == 1)
  {
    BYTE4(self->_sizeOfOriginalResourcesToUpload) = 0;
    *(&self->super._shouldUpgradeSchema + 1) = 0;
  }
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 discardedResources:(id *)a6 error:(id *)a7
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  if (a4 >= 100)
  {
    v10 = 100;
  }

  else
  {
    v10 = a4;
  }

  v11 = objc_alloc_init(NSMutableIndexSet);
  v12 = [[NSMutableArray alloc] initWithCapacity:v10];
  v13 = [(CPLPrequeliteStorage *)self pqStore];
  v14 = [v13 pqlConnection];

  v15 = [(CPLPrequeliteStorage *)self mainTable];
  v16 = [v14 cplFetch:{@"SELECT scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileKind, fileSize, uploadIdentifier, rowID FROM %@ WHERE scopeIndex = %ld LIMIT %ld", v15, a3, v10}];
  while (1)
  {

    if (![v16 next])
    {
      break;
    }

    v17 = [[CPLPrequeliteOutgoingResource alloc] initFromPQLResultSet:v16 error:a7];
    v15 = v17;
    if (!v17)
    {
      *(v31 + 24) = 0;
      break;
    }

    v18 = [v17 resourceWithScopeIdentifier:@"<DELETED_SCOPE>"];
    [v12 addObject:v18];
    [v11 addIndex:{objc_msgSend(v16, "integerAtIndex:", 8)}];
  }

  v19 = v31;
  if (*(v31 + 24) == 1)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10015A5B4;
    v26[3] = &unk_10027B708;
    v29 = &v30;
    v20 = v14;
    v27 = v20;
    v28 = self;
    [v11 enumerateIndexesUsingBlock:v26];
    if (a7 && (v31[3] & 1) == 0)
    {
      *a7 = [v20 lastError];
    }

    v19 = v31;
    if (v31[3])
    {
      *a5 = [v11 count];
      v21 = v12;
      *a6 = v12;
      v19 = v31;
    }
  }

  BYTE5(self->_sizeOfOriginalResourcesToUpload) = 1;
  BYTE4(self->_sizeOfOriginalResourcesToUpload) = 0;
  *(&self->super._shouldUpgradeSchema + 1) = 0;
  v22 = *(v19 + 24);

  _Block_object_dispose(&v30, 8);
  return v22;
}

@end