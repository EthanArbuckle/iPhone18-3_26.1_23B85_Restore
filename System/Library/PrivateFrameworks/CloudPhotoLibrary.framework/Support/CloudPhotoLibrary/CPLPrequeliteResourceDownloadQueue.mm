@interface CPLPrequeliteResourceDownloadQueue
- (BOOL)_createResourceTypeAndStatusIndex;
- (BOOL)_deleteEnqueuedResource:(id)resource error:(id *)error;
- (BOOL)_getNextPosition:(unint64_t *)position andBumpWithError:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)enqueueBackgroundDownloadTaskForResource:(id)resource intent:(unint64_t)intent downloading:(BOOL)downloading error:(id *)error;
- (BOOL)hasActiveOrQueuedBackgroundDownloadOperations;
- (BOOL)initializeStorage;
- (BOOL)markBackgroundDownloadTaskForResourceAsSuceeded:(id)suceeded taskIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)reenqueueBackgroundDownloadTaskForResource:(id)resource taskIdentifier:(unint64_t)identifier bumpRetryCount:(BOOL)count didDiscard:(BOOL *)discard error:(id *)error;
- (BOOL)removeAllBackgroundDownloadTasksForItemWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeBackgroundDownloadTaskForResource:(id)resource taskIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)resetDequeuedBackgroundDownloadTasksWithError:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteResourceDownloadQueue)initWithAbstractObject:(id)object;
- (id)_enqueuedResourceForResource:(id)resource verifyScopeIndex:(BOOL)index;
- (id)dequeueNextBackgroundDownloadTasksForResourceType:(unint64_t)type andIntent:(unint64_t)intent maximumSize:(unint64_t)size maximumCount:(unint64_t)count error:(id *)error;
- (id)enumeratorForDownloadedResources;
- (id)status;
- (id)statusPerScopeIndex;
- (unint64_t)newTaskIdentifier;
@end

@implementation CPLPrequeliteResourceDownloadQueue

- (CPLPrequeliteResourceDownloadQueue)initWithAbstractObject:(id)object
{
  v11.receiver = self;
  v11.super_class = CPLPrequeliteResourceDownloadQueue;
  v3 = [(CPLPrequeliteStorage *)&v11 initWithAbstractObject:object];
  if (v3)
  {
    v4 = +[CPLPrequeliteType integerType];
    v5 = [v3 variableWithName:@"nextTaskIdentifier" type:v4];
    v6 = *(v3 + 36);
    *(v3 + 36) = v5;

    v7 = +[CPLPrequeliteType integerType];
    v8 = [v3 variableWithName:@"nextPosition" type:v7];
    v9 = *(v3 + 44);
    *(v3 + 44) = v8;
  }

  return v3;
}

- (BOOL)_createResourceTypeAndStatusIndex
{
  v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"resourceType.status" withDefinition:@"resourceType unique:status error:intent, position DESC", 0, 0];
  if (v3)
  {

    LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexWithName:@"status" withDefinition:@"status unique:intent error:position DESC", 0, 0];
  }

  return v3;
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteResourceDownloadQueue;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"position INTEGER NOT NULL error:scopeIndex INTEGER NOT NULL, itemIdentifier TEXT NOT NULL, resourceType INTEGER NOT NULL, fingerPrint TEXT NOT NULL, fileUTI TEXT, fileSize INTEGER NOT NULL, taskIdentifier INTEGER NOT NULL, retryCount INTEGER NOT NULL, status INTEGER NOT NULL, intent INTEGER NOT NULL", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:&off_10028F130 error:0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createVariable:*(&self->_nextTaskIdentifier + 4) defaultValue:&off_10028F130 error:0];
        if (initializeStorage)
        {
          initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"resource" withDefinition:@"itemIdentifier unique:scopeIndex error:resourceType", 1, 0];
          if (initializeStorage)
          {
            initializeStorage = [(CPLPrequeliteResourceDownloadQueue *)self _createResourceTypeAndStatusIndex];
            if (initializeStorage)
            {
              LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
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
  v15.receiver = self;
  v15.super_class = CPLPrequeliteResourceDownloadQueue;
  v5 = [(CPLPrequeliteStorage *)&v15 upgradeStorageToVersion:?];
  v6 = v5;
  if (version == 20 || !v5)
  {
    return v6;
  }

  v6 = 1;
  if (version <= 57)
  {
    if (version <= 48)
    {
      if (version != 33)
      {
        if (version == 39 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          sub_1001BFF84(self, &v16);
          return v16;
        }

        return v6;
      }

      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      v11 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN fileSize INTEGER DEFAULT 0", mainTable, v14}];
LABEL_25:
      v6 = v11;

      return v6;
    }

    if (version != 49)
    {
      if (version != 52 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v6;
      }

      return [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
    }

    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema]|| (BYTE4(self->_nextPosition) & 1) != 0)
    {
      return v6;
    }

    if ([(CPLPrequeliteStorage *)self dropIndexWithName:@"resource" error:0]&& [(CPLPrequeliteStorage *)self createIndexWithName:@"resource" withDefinition:@"itemIdentifier unique:scopeIndex error:resourceType", 1, 0])
    {
      BYTE4(self->_nextPosition) = 1;
      return v6;
    }

    return 0;
  }

  if (version > 65)
  {
    if (version != 66)
    {
      if (version != 67 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v6;
      }

      pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore2 pqlConnection];

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      v11 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE intent = %i", mainTable, 5}];
      goto LABEL_25;
    }

    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v6;
    }

    if ([(CPLPrequeliteStorage *)self dropIndexWithName:@"resourceType.status" error:0]&& [(CPLPrequeliteStorage *)self dropIndexWithName:@"status" error:0])
    {
      return [(CPLPrequeliteResourceDownloadQueue *)self _createResourceTypeAndStatusIndex];
    }

    return 0;
  }

  if (version == 58)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v6;
    }

    if ([(CPLPrequeliteStorage *)self dropIndexWithName:@"position" error:0]&& [(CPLPrequeliteStorage *)self dropIndexWithName:@"status" error:0])
    {
      return [(CPLPrequeliteStorage *)self dropIndexWithName:@"resourceType" error:0];
    }

    return 0;
  }

  if (version == 65 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    sub_1001BFE6C(self, &v16);
    return v16;
  }

  return v6;
}

- (BOOL)openWithError:(id *)error
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteResourceDownloadQueue;
  if (![(CPLPrequeliteStorage *)&v10 openWithError:?])
  {
    return 0;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET status = %i WHERE status = %i", mainTable, 1, 0}];

  if (error && (v8 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v8;
}

- (BOOL)_getNextPosition:(unint64_t *)position andBumpWithError:(id *)error
{
  v7 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->_nextTaskIdentifier + 4)];
  *position = [v7 unsignedIntegerValue];

  v8 = [NSNumber numberWithUnsignedInteger:*position + 1];
  LOBYTE(error) = [(CPLPrequeliteStorage *)self setValue:v8 forVariable:*(&self->_nextTaskIdentifier + 4) error:error];

  return error;
}

- (BOOL)_deleteEnqueuedResource:(id)resource error:(id *)error
{
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  scopeIndex = [itemScopedIdentifier scopeIndex];
  if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C0100();
  }

  v9 = scopeIndex;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [itemScopedIdentifier identifier];
  v14 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", mainTable, identifier, objc_msgSend(resourceCopy, "resourceType"), v9}];

  if (error && (v14 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v14;
}

- (id)_enqueuedResourceForResource:(id)resource verifyScopeIndex:(BOOL)index
{
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  v8 = itemScopedIdentifier;
  if (index)
  {
    scopeIndex = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:itemScopedIdentifier];
    if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    scopeIndex = [itemScopedIdentifier scopeIndex];
    if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001C01B8();
    }
  }

  v11 = scopeIndex;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v14 = objc_opt_class();
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [v8 identifier];
  v10 = [pqlConnection cplFetchObjectOfClass:v14 sql:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", mainTable, identifier, objc_msgSend(resourceCopy, "resourceType"), v11}];

LABEL_6:

  return v10;
}

- (BOOL)enqueueBackgroundDownloadTaskForResource:(id)resource intent:(unint64_t)intent downloading:(BOOL)downloading error:(id *)error
{
  downloadingCopy = downloading;
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  if ([(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:itemScopedIdentifier]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = 0;
    if (![(CPLPrequeliteResourceDownloadQueue *)self _getNextPosition:&v37 andBumpWithError:error])
    {
      goto LABEL_8;
    }

    errorCopy = error;
    v13 = [[CPLPrequeliteDownloadResource alloc] initWithResource:resourceCopy];
    [(CPLPrequeliteDownloadResource *)v13 setPosition:v37];
    [(CPLPrequeliteDownloadResource *)v13 setStatus:!downloadingCopy];
    [(CPLPrequeliteDownloadResource *)v13 setIntent:intent];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    position = [(CPLPrequeliteDownloadResource *)v13 position];
    scopeIndex = [(CPLPrequeliteDownloadResource *)v13 scopeIndex];
    itemIdentifier = [(CPLPrequeliteDownloadResource *)v13 itemIdentifier];
    resourceType = [(CPLPrequeliteDownloadResource *)v13 resourceType];
    fingerPrint = [(CPLPrequeliteDownloadResource *)v13 fingerPrint];
    fileUTI = [(CPLPrequeliteDownloadResource *)v13 fileUTI];
    v18 = pqlConnection;
    v19 = [pqlConnection cplExecute:{@"INSERT OR IGNORE INTO %@ (position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent) VALUES (%lu, %ld, %@, %i, %@, %@, %lu, %lu, %i, %i, %lu)", mainTable, position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, -[CPLPrequeliteDownloadResource fileSize](v13, "fileSize"), -[CPLPrequeliteDownloadResource taskIdentifier](v13, "taskIdentifier"), -[CPLPrequeliteDownloadResource retryCount](v13, "retryCount"), -[CPLPrequeliteDownloadResource status](v13, "status"), -[CPLPrequeliteDownloadResource intent](v13, "intent")}];

    if (v19)
    {
      if ([pqlConnection changes])
      {
        v12 = 1;
LABEL_20:

        goto LABEL_21;
      }

      if ([(CPLPrequeliteResourceDownloadQueue *)self _deleteEnqueuedResource:resourceCopy error:errorCopy])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = sub_1001645FC();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = [CPLResourceTransferTaskOptions descriptionForIntent:[(CPLPrequeliteDownloadResource *)v13 intent]];
            *buf = 138412546;
            v39 = resourceCopy;
            v40 = 2112;
            v41 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "New background download will superseeds current enqueued one for %@, intent: %@", buf, 0x16u);
          }
        }

        mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
        position2 = [(CPLPrequeliteDownloadResource *)v13 position];
        scopeIndex2 = [(CPLPrequeliteDownloadResource *)v13 scopeIndex];
        itemIdentifier2 = [(CPLPrequeliteDownloadResource *)v13 itemIdentifier];
        resourceType2 = [(CPLPrequeliteDownloadResource *)v13 resourceType];
        fingerPrint2 = [(CPLPrequeliteDownloadResource *)v13 fingerPrint];
        fileUTI2 = [(CPLPrequeliteDownloadResource *)v13 fileUTI];
        v12 = [pqlConnection cplExecute:{@"INSERT INTO %@ (position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent) VALUES (%lu, %ld, %@, %i, %@, %@, %lu, %lu, %i, %i, %lu)", mainTable2, position2, scopeIndex2, itemIdentifier2, resourceType2, fingerPrint2, fileUTI2, -[CPLPrequeliteDownloadResource fileSize](v13, "fileSize"), -[CPLPrequeliteDownloadResource taskIdentifier](v13, "taskIdentifier"), -[CPLPrequeliteDownloadResource retryCount](v13, "retryCount"), -[CPLPrequeliteDownloadResource status](v13, "status"), -[CPLPrequeliteDownloadResource intent](v13, "intent")}];

        v20 = errorCopy;
        if (!errorCopy)
        {
          v18 = pqlConnection;
          goto LABEL_20;
        }

        v18 = pqlConnection;
        if (v12)
        {
          goto LABEL_20;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v20 = errorCopy;
      if (errorCopy)
      {
LABEL_10:
        [v18 lastCPLError];
        *v20 = v12 = 0;
        goto LABEL_20;
      }
    }

    v12 = 0;
    goto LABEL_20;
  }

  if (!error)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_21;
  }

  [CPLErrors invalidScopeErrorWithScopedIdentifier:itemScopedIdentifier];
  *error = v12 = 0;
LABEL_21:

  return v12;
}

- (BOOL)reenqueueBackgroundDownloadTaskForResource:(id)resource taskIdentifier:(unint64_t)identifier bumpRetryCount:(BOOL)count didDiscard:(BOOL *)discard error:(id *)error
{
  countCopy = count;
  resourceCopy = resource;
  v13 = [(CPLPrequeliteResourceDownloadQueue *)self _enqueuedResourceForResource:resourceCopy verifyScopeIndex:0];
  v14 = v13;
  *discard = 0;
  if (v13)
  {
    if ([v13 taskIdentifier] == identifier)
    {
      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
      scopeIndex = [itemScopedIdentifier scopeIndex];
      if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_1001C0270();
      }

      v19 = scopeIndex;
      if (countCopy)
      {
        retryCount = [v14 retryCount];
        if (retryCount < 10)
        {
          v29 = (retryCount + 1);
          mainTable = [(CPLPrequeliteStorage *)self mainTable];
          identifier = [itemScopedIdentifier identifier];
          v22 = -[NSObject cplExecute:](pqlConnection, "cplExecute:", @"UPDATE %@ SET retryCount = %i, status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", mainTable, v29, 2, identifier, [resourceCopy resourceType], v19);

          if (error && (v22 & 1) == 0)
          {
            [pqlConnection lastCPLError];
            *error = v22 = 0;
          }
        }

        else
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v21 = sub_1001645FC();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v33 = resourceCopy;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Discarding background download of %@: failed too many times", buf, 0xCu);
            }
          }

          v22 = [(CPLPrequeliteResourceDownloadQueue *)self _deleteEnqueuedResource:resourceCopy error:error];
          *discard = 1;
        }
      }

      else
      {
        pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
        pqlConnection2 = [pqStore2 pqlConnection];

        mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
        identifier2 = [itemScopedIdentifier identifier];
        v22 = [pqlConnection2 cplExecute:{@"UPDATE %@ SET status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", mainTable2, 2, identifier2, objc_msgSend(resourceCopy, "resourceType"), v19}];

        if (error && (v22 & 1) == 0)
        {
          *error = [pqlConnection2 lastCPLError];
        }
      }

      goto LABEL_24;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      pqlConnection = sub_1001645FC();
      if (os_log_type_enabled(pqlConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = resourceCopy;
        v23 = "Dropping background download of %@ as the current enqueued task superseeeds it";
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_29:
    v22 = 1;
    goto LABEL_25;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_29;
  }

  pqlConnection = sub_1001645FC();
  if (os_log_type_enabled(pqlConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v33 = resourceCopy;
    v23 = "Dropping background download of %@ as it has been removed from the queue";
LABEL_17:
    _os_log_impl(&_mh_execute_header, pqlConnection, OS_LOG_TYPE_DEBUG, v23, buf, 0xCu);
  }

LABEL_18:
  v22 = 1;
LABEL_24:

LABEL_25:
  return v22;
}

- (BOOL)markBackgroundDownloadTaskForResourceAsSuceeded:(id)suceeded taskIdentifier:(unint64_t)identifier error:(id *)error
{
  suceededCopy = suceeded;
  itemScopedIdentifier = [suceededCopy itemScopedIdentifier];
  scopeIndex = [itemScopedIdentifier scopeIndex];
  if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C0328();
  }

  v11 = scopeIndex;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [itemScopedIdentifier identifier];
  v16 = [pqlConnection cplExecute:{@"UPDATE %@ SET status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND taskIdentifier = %lu AND scopeIndex = %ld", mainTable, 3, identifier, objc_msgSend(suceededCopy, "resourceType"), identifier, v11}];

  if (error && (v16 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v16;
}

- (BOOL)removeBackgroundDownloadTaskForResource:(id)resource taskIdentifier:(unint64_t)identifier error:(id *)error
{
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  scopeIndex = [itemScopedIdentifier scopeIndex];
  if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C03E0();
  }

  v11 = scopeIndex;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [itemScopedIdentifier identifier];
  v16 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i AND taskIdentifier = %lu AND scopeIndex = %ld", mainTable, identifier, objc_msgSend(resourceCopy, "resourceType"), identifier, v11}];

  if (error && (v16 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v16;
}

- (id)dequeueNextBackgroundDownloadTasksForResourceType:(unint64_t)type andIntent:(unint64_t)intent maximumSize:(unint64_t)size maximumCount:(unint64_t)count error:(id *)error
{
  v11 = objc_alloc_init(NSMutableArray);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v15 = mainTable;
  if (type == -1)
  {
    v16 = [pqlConnection cplFetch:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE status = %i AND intent = %i ORDER BY position", mainTable, 1, intent, v34}];
  }

  else
  {
    v16 = [pqlConnection cplFetch:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE status = %i AND resourceType = %i AND intent = %i ORDER BY position", mainTable, 1, type, intent}];
  }

  v17 = v16;

  if (!v17)
  {
    lastCPLError = [pqlConnection lastCPLError];
    v30 = lastCPLError;
    if (lastCPLError)
    {
      v31 = lastCPLError;
    }

    else
    {
      v31 = +[CPLErrors unknownError];
    }

    lastCPLError2 = v31;

    v11 = 0;
    if (!error)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [v17 enumerateObjectsOfClass:objc_opt_class()];
  v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v42)
  {
    v35 = v17;
    v38 = pqlConnection;
    errorCopy = error;
    v18 = 0;
    v41 = *v44;
    while (2)
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v20 = [*(*(&v43 + 1) + 8 * i) resourceWithDownloadQueue:self];
        v21 = v20;
        if (v20)
        {
          estimatedResourceSize = [v20 estimatedResourceSize];
          v23 = estimatedResourceSize;
          if ((size <= v18 || size - v18 < estimatedResourceSize) && [v11 count])
          {
            lastCPLError2 = 0;
            error = errorCopy;
            pqlConnection = v38;
            goto LABEL_31;
          }

          itemScopedIdentifier = [v21 itemScopedIdentifier];
          if ([itemScopedIdentifier scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            sub_1001C0498();
          }

          mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
          identifier = [itemScopedIdentifier identifier];
          v27 = [v38 cplExecute:{@"UPDATE %@ SET status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", mainTable2, 0, identifier, objc_msgSend(v21, "resourceType"), objc_msgSend(itemScopedIdentifier, "scopeIndex")}];

          if ((v27 & 1) == 0)
          {
            pqlConnection = v38;
            lastCPLError2 = [v38 lastCPLError];

            v11 = 0;
            goto LABEL_26;
          }

          [v11 addObject:v21];
          if ([v11 count] >= count)
          {
            lastCPLError2 = 0;
            pqlConnection = v38;
LABEL_26:

            error = errorCopy;
LABEL_31:
            v17 = v35;

            goto LABEL_32;
          }

          v18 += v23;
        }
      }

      v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v42)
      {
        continue;
      }

      break;
    }

    lastCPLError2 = 0;
    v17 = v35;
    error = errorCopy;
    pqlConnection = v38;
  }

  else
  {
    lastCPLError2 = 0;
  }

LABEL_32:

  if (error)
  {
LABEL_33:
    if (!v11)
    {
      v32 = lastCPLError2;
      *error = lastCPLError2;
    }
  }

LABEL_35:

  return v11;
}

- (BOOL)resetDequeuedBackgroundDownloadTasksWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET status = %i WHERE status = %i", mainTable, 1, 2}];

  if (error && (v8 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v8;
}

- (BOOL)removeAllBackgroundDownloadTasksForItemWithScopedIdentifier:(id)identifier error:(id *)error
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
    v8 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE itemIdentifier = %@ AND scopeIndex = %ld", mainTable, identifier, v9}];

    if (error && (v8 & 1) == 0)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v8;
}

- (id)enumeratorForDownloadedResources
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [pqlConnection cplFetch:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE status = %i", mainTable, 3}];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10016613C;
  v10[3] = &unk_10027B218;
  v10[4] = self;
  v7 = [v6 enumerateObjects:v10];
  v8 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v7];

  return v8;
}

- (BOOL)hasActiveOrQueuedBackgroundDownloadOperations
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"status != %i", 3];
  v6 = [pqStore table:mainTable hasRecordsMatchingQuery:v5];

  return v6;
}

- (id)status
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000045B0;
  v19 = sub_1000053BC;
  v14.receiver = self;
  v14.super_class = CPLPrequeliteResourceDownloadQueue;
  status = [(CPLPrequeliteStorage *)&v14 status];
  v20 = [status mutableCopy];

  v4 = [(CPLPrequeliteResourceDownloadQueue *)self _countOfRecordsWithStatus:2];
  v5 = [(CPLPrequeliteResourceDownloadQueue *)self _countOfRecordsWithStatus:3];
  v6 = [(CPLPrequeliteResourceDownloadQueue *)self _countOfRecordsWithStatus:0];
  if (v4)
  {
    [v16[5] appendFormat:@" (%lu to retry)", v4];
  }

  if (v5)
  {
    [v16[5] appendFormat:@" (%lu downloaded)", v5];
  }

  if (v6)
  {
    [v16[5] appendFormat:@" (%lu downloading)", v6];
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 1;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100166560;
  v11[3] = &unk_10027BA20;
  v11[4] = v12;
  v11[5] = &v15;
  [pqStore table:mainTable enumerateCountGroupedByUnsignedIntegerProperty:@"resourceType" block:v11];

  v9 = v16[5];
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)statusPerScopeIndex
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteResourceDownloadQueue;
  v2 = [(CPLPrequeliteStorage *)&v4 statusPerScopeIndexWithGroupProperty:@"resourceType" valueDescription:&stru_10027BA40];

  return v2;
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

- (unint64_t)newTaskIdentifier
{
  v3 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  v5 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
  v6 = *(&self->super._shouldUpgradeSchema + 1);
  v11 = 0;
  v7 = [(CPLPrequeliteStorage *)self setValue:v5 forVariable:v6 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_1001645FC();
    if (sub_1000033C0(v9))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to store next task identifier: %@", buf, 0xCu);
    }
  }

  return unsignedIntegerValue;
}

@end