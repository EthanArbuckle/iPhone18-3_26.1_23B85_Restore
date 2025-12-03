@interface CPLPrequeliteOutgoingResources
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount discardedResources:(id *)resources error:(id *)error;
- (BOOL)deleteResourcesToUploadWithUploadIdentifier:(id)identifier error:(id *)error;
- (BOOL)initializeStorage;
- (BOOL)shouldUploadResource:(id)resource;
- (BOOL)storeResourceToUpload:(id)upload withUploadIdentifier:(id)identifier error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (id)resourceTypesToUploadForUploadIdentifier:(id)identifier;
- (id)resourcesToUploadForUploadIdentifier:(id)identifier;
- (id)status;
- (id)statusPerScopeIndex;
- (unint64_t)availableResourceSizeForUploadIdentifier:(id)identifier;
- (void)_cacheCountOfOriginalsIfNecessary;
- (void)_cacheUploadSizesIfNecessary;
- (void)writeTransactionDidFail;
@end

@implementation CPLPrequeliteOutgoingResources

- (void)_cacheUploadSizesIfNecessary
{
  if ((self->_sizeOfOriginalResourcesToUpload & 0x100000000) == 0)
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v4 = objc_opt_class();
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v6 = [pqlConnection cplFetchObjectOfClass:v4 sql:{@"SELECT SUM(fileSize) FROM %@", mainTable}];
    *(&self->_countOfOriginalOthers + 4) = [v6 unsignedLongLongValue];

    v7 = objc_opt_class();
    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    v9 = [pqlConnection cplFetchObjectOfClass:v7 sql:{@"SELECT SUM(fileSize) FROM %@ WHERE resourceType = %i", mainTable2, 1}];
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
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v8 = [pqlConnection cplFetch:{@"SELECT fileKind, count(fileKind) FROM %@ WHERE resourceType = %i GROUP BY fileKind", mainTable, 1}];

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
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:itemIdentifier TEXT NOT NULL, resourceType INTEGER NOT NULL, fingerPrint TEXT NOT NULL, fileUTI TEXT NOT NULL, fileKind INTEGER NOT NULL, fileSize INTEGER NOT NULL, uploadIdentifier TEXT NOT NULL", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"resourceType" withDefinition:@"resourceType unique:fileKind" error:0, 0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"resource" withDefinition:@"itemIdentifier unique:resourceType error:fingerPrint", 0, 0];
        if (initializeStorage)
        {
          initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"uploadIdentifier" error:0];
          if (initializeStorage)
          {
            initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
            if (initializeStorage)
            {
              LOBYTE(initializeStorage) = 1;
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

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v7.receiver = self;
  v7.super_class = CPLPrequeliteOutgoingResources;
  v5 = [(CPLPrequeliteStorage *)&v7 upgradeStorageToVersion:?];
  if (v5)
  {
    switch(version)
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

- (BOOL)storeResourceToUpload:(id)upload withUploadIdentifier:(id)identifier error:(id *)error
{
  uploadCopy = upload;
  identifierCopy = identifier;
  itemScopedIdentifier = [uploadCopy itemScopedIdentifier];
  v11 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:itemScopedIdentifier];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    errorCopy = error;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v36 = uploadCopy;
    v35 = identifierCopy;
    v15 = [[CPLPrequeliteOutgoingResource alloc] initWithResource:uploadCopy uploadIdentifier:identifierCopy];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    scopeIndex = [(CPLPrequeliteOutgoingResource *)v15 scopeIndex];
    itemIdentifier = [(CPLPrequeliteOutgoingResource *)v15 itemIdentifier];
    resourceType = [(CPLPrequeliteOutgoingResource *)v15 resourceType];
    fingerPrint = [(CPLPrequeliteOutgoingResource *)v15 fingerPrint];
    fileUTI = [(CPLPrequeliteOutgoingResource *)v15 fileUTI];
    fileKind = [(CPLPrequeliteOutgoingResource *)v15 fileKind];
    fileSize = [(CPLPrequeliteOutgoingResource *)v15 fileSize];
    uploadIdentifier = [(CPLPrequeliteOutgoingResource *)v15 uploadIdentifier];
    v31 = resourceType;
    itemScopedIdentifier2 = pqlConnection;
    v13 = [pqlConnection cplExecute:{@"INSERT INTO %@ (scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileKind, fileSize, uploadIdentifier) VALUES (%ld, %@, %i, %@, %@, %i, %llu, %@)", mainTable, scopeIndex, itemIdentifier, v31, fingerPrint, fileUTI, fileKind, fileSize, uploadIdentifier}];

    if (v13)
    {
      BYTE5(self->_sizeOfOriginalResourcesToUpload) = 1;
      uploadCopy = v36;
      if (BYTE4(self->_sizeOfOriginalResourcesToUpload) == 1)
      {
        identity = [v36 identity];
        fileSize2 = [identity fileSize];

        *(&self->_countOfOriginalOthers + 4) += fileSize2;
        if ([v36 resourceType] == 1)
        {
          *(&self->_sizeOfResourcesToUpload + 4) += fileSize2;
        }
      }

      if (*(&self->super._shouldUpgradeSchema + 1) && [v36 resourceType] == 1)
      {
        identity2 = [v36 identity];
        fileUTI2 = [identity2 fileUTI];

        if (fileUTI2)
        {
          v28 = [UTType typeWithIdentifier:fileUTI2];
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
      uploadCopy = v36;
      if (errorCopy)
      {
        *errorCopy = [pqlConnection lastCPLError];
      }
    }

    identifierCopy = v35;
    goto LABEL_23;
  }

  if (error)
  {
    itemScopedIdentifier2 = [uploadCopy itemScopedIdentifier];
    [CPLErrors invalidScopeErrorWithScopedIdentifier:itemScopedIdentifier2];
    *error = v13 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (BOOL)deleteResourcesToUploadWithUploadIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE uploadIdentifier = %@", mainTable, identifierCopy}];

  if (v10)
  {
    BYTE5(self->_sizeOfOriginalResourcesToUpload) = 1;
    BYTE4(self->_sizeOfOriginalResourcesToUpload) = 0;
    *(&self->super._shouldUpgradeSchema + 1) = 0;
  }

  else if (error)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v10;
}

- (id)resourceTypesToUploadForUploadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(CPLResourceTypeSet);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [pqlConnection cplFetch:{@"SELECT resourceType FROM %@ WHERE uploadIdentifier = %@", mainTable, identifierCopy}];

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

- (unint64_t)availableResourceSizeForUploadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v7 = objc_opt_class();
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [pqlConnection cplFetchObjectOfClass:v7 sql:{@"SELECT SUM(fileSize) FROM %@ WHERE uploadIdentifier = %@", mainTable, identifierCopy}];

  unsignedLongLongValue = [v9 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (id)resourcesToUploadForUploadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(NSMutableArray);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [pqlConnection cplFetch:{@"SELECT scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileKind, fileSize, uploadIdentifier FROM %@ WHERE uploadIdentifier = %@", mainTable, identifierCopy}];

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

- (BOOL)shouldUploadResource:(id)resource
{
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  v6 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:itemScopedIdentifier];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [itemScopedIdentifier identifier];
    resourceType = [resourceCopy resourceType];
    identity = [resourceCopy identity];
    fingerPrint = [identity fingerPrint];
    v15 = [PQLFormatInjection formatInjection:@"scopeIndex = %ld AND itemIdentifier = %@ AND resourceType = %i AND fingerPrint = %@", v8, identifier, resourceType, fingerPrint];
    v7 = [pqStore table:mainTable hasRecordsMatchingQuery:v15];
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
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100159FA0;
  v10[3] = &unk_10027B6A0;
  v10[4] = self;
  v10[5] = &v11;
  [pqStore table:mainTable enumerateCountGroupedByUnsignedIntegerProperty:@"resourceType" block:v10];

  v5 = v12[5];
  if (v5)
  {
    status = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CPLPrequeliteOutgoingResources;
    status = [(CPLPrequeliteStorage *)&v9 status];
  }

  v7 = status;
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

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount discardedResources:(id *)resources error:(id *)error
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  if (count >= 100)
  {
    countCopy = 100;
  }

  else
  {
    countCopy = count;
  }

  v11 = objc_alloc_init(NSMutableIndexSet);
  v12 = [[NSMutableArray alloc] initWithCapacity:countCopy];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v16 = [pqlConnection cplFetch:{@"SELECT scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileKind, fileSize, uploadIdentifier, rowID FROM %@ WHERE scopeIndex = %ld LIMIT %ld", mainTable, index, countCopy}];
  while (1)
  {

    if (![v16 next])
    {
      break;
    }

    v17 = [[CPLPrequeliteOutgoingResource alloc] initFromPQLResultSet:v16 error:error];
    mainTable = v17;
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
    v20 = pqlConnection;
    v27 = v20;
    selfCopy = self;
    [v11 enumerateIndexesUsingBlock:v26];
    if (error && (v31[3] & 1) == 0)
    {
      *error = [v20 lastError];
    }

    v19 = v31;
    if (v31[3])
    {
      *deletedCount = [v11 count];
      v21 = v12;
      *resources = v12;
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