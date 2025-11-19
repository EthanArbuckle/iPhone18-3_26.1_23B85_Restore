@interface CPLPrequeliteResourceDownloadQueue
- (BOOL)_createResourceTypeAndStatusIndex;
- (BOOL)_deleteEnqueuedResource:(id)a3 error:(id *)a4;
- (BOOL)_getNextPosition:(unint64_t *)a3 andBumpWithError:(id *)a4;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)enqueueBackgroundDownloadTaskForResource:(id)a3 intent:(unint64_t)a4 downloading:(BOOL)a5 error:(id *)a6;
- (BOOL)hasActiveOrQueuedBackgroundDownloadOperations;
- (BOOL)initializeStorage;
- (BOOL)markBackgroundDownloadTaskForResourceAsSuceeded:(id)a3 taskIdentifier:(unint64_t)a4 error:(id *)a5;
- (BOOL)openWithError:(id *)a3;
- (BOOL)reenqueueBackgroundDownloadTaskForResource:(id)a3 taskIdentifier:(unint64_t)a4 bumpRetryCount:(BOOL)a5 didDiscard:(BOOL *)a6 error:(id *)a7;
- (BOOL)removeAllBackgroundDownloadTasksForItemWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeBackgroundDownloadTaskForResource:(id)a3 taskIdentifier:(unint64_t)a4 error:(id *)a5;
- (BOOL)resetDequeuedBackgroundDownloadTasksWithError:(id *)a3;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteResourceDownloadQueue)initWithAbstractObject:(id)a3;
- (id)_enqueuedResourceForResource:(id)a3 verifyScopeIndex:(BOOL)a4;
- (id)dequeueNextBackgroundDownloadTasksForResourceType:(unint64_t)a3 andIntent:(unint64_t)a4 maximumSize:(unint64_t)a5 maximumCount:(unint64_t)a6 error:(id *)a7;
- (id)enumeratorForDownloadedResources;
- (id)status;
- (id)statusPerScopeIndex;
- (unint64_t)newTaskIdentifier;
@end

@implementation CPLPrequeliteResourceDownloadQueue

- (CPLPrequeliteResourceDownloadQueue)initWithAbstractObject:(id)a3
{
  v11.receiver = self;
  v11.super_class = CPLPrequeliteResourceDownloadQueue;
  v3 = [(CPLPrequeliteStorage *)&v11 initWithAbstractObject:a3];
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
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"position INTEGER NOT NULL error:scopeIndex INTEGER NOT NULL, itemIdentifier TEXT NOT NULL, resourceType INTEGER NOT NULL, fingerPrint TEXT NOT NULL, fileUTI TEXT, fileSize INTEGER NOT NULL, taskIdentifier INTEGER NOT NULL, retryCount INTEGER NOT NULL, status INTEGER NOT NULL, intent INTEGER NOT NULL", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:&off_10028F130 error:0];
      if (v3)
      {
        v3 = [(CPLPrequeliteStorage *)self createVariable:*(&self->_nextTaskIdentifier + 4) defaultValue:&off_10028F130 error:0];
        if (v3)
        {
          v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"resource" withDefinition:@"itemIdentifier unique:scopeIndex error:resourceType", 1, 0];
          if (v3)
          {
            v3 = [(CPLPrequeliteResourceDownloadQueue *)self _createResourceTypeAndStatusIndex];
            if (v3)
            {
              LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
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
  v15.receiver = self;
  v15.super_class = CPLPrequeliteResourceDownloadQueue;
  v5 = [(CPLPrequeliteStorage *)&v15 upgradeStorageToVersion:?];
  v6 = v5;
  if (a3 == 20 || !v5)
  {
    return v6;
  }

  v6 = 1;
  if (a3 <= 57)
  {
    if (a3 <= 48)
    {
      if (a3 != 33)
      {
        if (a3 == 39 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          sub_1001BFF84(self, &v16);
          return v16;
        }

        return v6;
      }

      v12 = [(CPLPrequeliteStorage *)self pqStore];
      v9 = [v12 pqlConnection];

      v10 = [(CPLPrequeliteStorage *)self mainTable];
      v11 = [v9 cplExecute:{@"ALTER TABLE %@ ADD COLUMN fileSize INTEGER DEFAULT 0", v10, v14}];
LABEL_25:
      v6 = v11;

      return v6;
    }

    if (a3 != 49)
    {
      if (a3 != 52 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
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

  if (a3 > 65)
  {
    if (a3 != 66)
    {
      if (a3 != 67 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v6;
      }

      v8 = [(CPLPrequeliteStorage *)self pqStore];
      v9 = [v8 pqlConnection];

      v10 = [(CPLPrequeliteStorage *)self mainTable];
      v11 = [v9 cplExecute:{@"DELETE FROM %@ WHERE intent = %i", v10, 5}];
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

  if (a3 == 58)
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

  if (a3 == 65 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    sub_1001BFE6C(self, &v16);
    return v16;
  }

  return v6;
}

- (BOOL)openWithError:(id *)a3
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteResourceDownloadQueue;
  if (![(CPLPrequeliteStorage *)&v10 openWithError:?])
  {
    return 0;
  }

  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplExecute:{@"UPDATE OR FAIL %@ SET status = %i WHERE status = %i", v7, 1, 0}];

  if (a3 && (v8 & 1) == 0)
  {
    *a3 = [v6 lastCPLError];
  }

  return v8;
}

- (BOOL)_getNextPosition:(unint64_t *)a3 andBumpWithError:(id *)a4
{
  v7 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->_nextTaskIdentifier + 4)];
  *a3 = [v7 unsignedIntegerValue];

  v8 = [NSNumber numberWithUnsignedInteger:*a3 + 1];
  LOBYTE(a4) = [(CPLPrequeliteStorage *)self setValue:v8 forVariable:*(&self->_nextTaskIdentifier + 4) error:a4];

  return a4;
}

- (BOOL)_deleteEnqueuedResource:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 itemScopedIdentifier];
  v8 = [v7 scopeIndex];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C0100();
  }

  v9 = v8;
  v10 = [(CPLPrequeliteStorage *)self pqStore];
  v11 = [v10 pqlConnection];

  v12 = [(CPLPrequeliteStorage *)self mainTable];
  v13 = [v7 identifier];
  v14 = [v11 cplExecute:{@"DELETE FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", v12, v13, objc_msgSend(v6, "resourceType"), v9}];

  if (a4 && (v14 & 1) == 0)
  {
    *a4 = [v11 lastCPLError];
  }

  return v14;
}

- (id)_enqueuedResourceForResource:(id)a3 verifyScopeIndex:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 itemScopedIdentifier];
  v8 = v7;
  if (a4)
  {
    v9 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v7];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [v7 scopeIndex];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001C01B8();
    }
  }

  v11 = v9;
  v12 = [(CPLPrequeliteStorage *)self pqStore];
  v13 = [v12 pqlConnection];

  v14 = objc_opt_class();
  v15 = [(CPLPrequeliteStorage *)self mainTable];
  v16 = [v8 identifier];
  v10 = [v13 cplFetchObjectOfClass:v14 sql:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", v15, v16, objc_msgSend(v6, "resourceType"), v11}];

LABEL_6:

  return v10;
}

- (BOOL)enqueueBackgroundDownloadTaskForResource:(id)a3 intent:(unint64_t)a4 downloading:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = [v10 itemScopedIdentifier];
  if ([(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:v11]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = 0;
    if (![(CPLPrequeliteResourceDownloadQueue *)self _getNextPosition:&v37 andBumpWithError:a6])
    {
      goto LABEL_8;
    }

    v28 = a6;
    v13 = [[CPLPrequeliteDownloadResource alloc] initWithResource:v10];
    [(CPLPrequeliteDownloadResource *)v13 setPosition:v37];
    [(CPLPrequeliteDownloadResource *)v13 setStatus:!v7];
    [(CPLPrequeliteDownloadResource *)v13 setIntent:a4];
    v14 = [(CPLPrequeliteStorage *)self pqStore];
    v36 = [v14 pqlConnection];

    v34 = [(CPLPrequeliteStorage *)self mainTable];
    v32 = [(CPLPrequeliteDownloadResource *)v13 position];
    v30 = [(CPLPrequeliteDownloadResource *)v13 scopeIndex];
    v15 = [(CPLPrequeliteDownloadResource *)v13 itemIdentifier];
    v29 = [(CPLPrequeliteDownloadResource *)v13 resourceType];
    v16 = [(CPLPrequeliteDownloadResource *)v13 fingerPrint];
    v17 = [(CPLPrequeliteDownloadResource *)v13 fileUTI];
    v18 = v36;
    v19 = [v36 cplExecute:{@"INSERT OR IGNORE INTO %@ (position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent) VALUES (%lu, %ld, %@, %i, %@, %@, %lu, %lu, %i, %i, %lu)", v34, v32, v30, v15, v29, v16, v17, -[CPLPrequeliteDownloadResource fileSize](v13, "fileSize"), -[CPLPrequeliteDownloadResource taskIdentifier](v13, "taskIdentifier"), -[CPLPrequeliteDownloadResource retryCount](v13, "retryCount"), -[CPLPrequeliteDownloadResource status](v13, "status"), -[CPLPrequeliteDownloadResource intent](v13, "intent")}];

    if (v19)
    {
      if ([v36 changes])
      {
        v12 = 1;
LABEL_20:

        goto LABEL_21;
      }

      if ([(CPLPrequeliteResourceDownloadQueue *)self _deleteEnqueuedResource:v10 error:v28])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = sub_1001645FC();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = [CPLResourceTransferTaskOptions descriptionForIntent:[(CPLPrequeliteDownloadResource *)v13 intent]];
            *buf = 138412546;
            v39 = v10;
            v40 = 2112;
            v41 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "New background download will superseeds current enqueued one for %@, intent: %@", buf, 0x16u);
          }
        }

        v35 = [(CPLPrequeliteStorage *)self mainTable];
        v33 = [(CPLPrequeliteDownloadResource *)v13 position];
        v31 = [(CPLPrequeliteDownloadResource *)v13 scopeIndex];
        v23 = [(CPLPrequeliteDownloadResource *)v13 itemIdentifier];
        v24 = [(CPLPrequeliteDownloadResource *)v13 resourceType];
        v25 = [(CPLPrequeliteDownloadResource *)v13 fingerPrint];
        v26 = [(CPLPrequeliteDownloadResource *)v13 fileUTI];
        v12 = [v36 cplExecute:{@"INSERT INTO %@ (position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent) VALUES (%lu, %ld, %@, %i, %@, %@, %lu, %lu, %i, %i, %lu)", v35, v33, v31, v23, v24, v25, v26, -[CPLPrequeliteDownloadResource fileSize](v13, "fileSize"), -[CPLPrequeliteDownloadResource taskIdentifier](v13, "taskIdentifier"), -[CPLPrequeliteDownloadResource retryCount](v13, "retryCount"), -[CPLPrequeliteDownloadResource status](v13, "status"), -[CPLPrequeliteDownloadResource intent](v13, "intent")}];

        v20 = v28;
        if (!v28)
        {
          v18 = v36;
          goto LABEL_20;
        }

        v18 = v36;
        if (v12)
        {
          goto LABEL_20;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v20 = v28;
      if (v28)
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

  if (!a6)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_21;
  }

  [CPLErrors invalidScopeErrorWithScopedIdentifier:v11];
  *a6 = v12 = 0;
LABEL_21:

  return v12;
}

- (BOOL)reenqueueBackgroundDownloadTaskForResource:(id)a3 taskIdentifier:(unint64_t)a4 bumpRetryCount:(BOOL)a5 didDiscard:(BOOL *)a6 error:(id *)a7
{
  v9 = a5;
  v12 = a3;
  v13 = [(CPLPrequeliteResourceDownloadQueue *)self _enqueuedResourceForResource:v12 verifyScopeIndex:0];
  v14 = v13;
  *a6 = 0;
  if (v13)
  {
    if ([v13 taskIdentifier] == a4)
    {
      v15 = [(CPLPrequeliteStorage *)self pqStore];
      v16 = [v15 pqlConnection];

      v17 = [v12 itemScopedIdentifier];
      v18 = [v17 scopeIndex];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_1001C0270();
      }

      v19 = v18;
      if (v9)
      {
        v20 = [v14 retryCount];
        if (v20 < 10)
        {
          v29 = (v20 + 1);
          v30 = [(CPLPrequeliteStorage *)self mainTable];
          v31 = [v17 identifier];
          v22 = -[NSObject cplExecute:](v16, "cplExecute:", @"UPDATE %@ SET retryCount = %i, status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", v30, v29, 2, v31, [v12 resourceType], v19);

          if (a7 && (v22 & 1) == 0)
          {
            [v16 lastCPLError];
            *a7 = v22 = 0;
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
              v33 = v12;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Discarding background download of %@: failed too many times", buf, 0xCu);
            }
          }

          v22 = [(CPLPrequeliteResourceDownloadQueue *)self _deleteEnqueuedResource:v12 error:a7];
          *a6 = 1;
        }
      }

      else
      {
        v24 = [(CPLPrequeliteStorage *)self pqStore];
        v25 = [v24 pqlConnection];

        v26 = [(CPLPrequeliteStorage *)self mainTable];
        v27 = [v17 identifier];
        v22 = [v25 cplExecute:{@"UPDATE %@ SET status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", v26, 2, v27, objc_msgSend(v12, "resourceType"), v19}];

        if (a7 && (v22 & 1) == 0)
        {
          *a7 = [v25 lastCPLError];
        }
      }

      goto LABEL_24;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = sub_1001645FC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v12;
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

  v16 = sub_1001645FC();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v33 = v12;
    v23 = "Dropping background download of %@ as it has been removed from the queue";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v23, buf, 0xCu);
  }

LABEL_18:
  v22 = 1;
LABEL_24:

LABEL_25:
  return v22;
}

- (BOOL)markBackgroundDownloadTaskForResourceAsSuceeded:(id)a3 taskIdentifier:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 itemScopedIdentifier];
  v10 = [v9 scopeIndex];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C0328();
  }

  v11 = v10;
  v12 = [(CPLPrequeliteStorage *)self pqStore];
  v13 = [v12 pqlConnection];

  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [v9 identifier];
  v16 = [v13 cplExecute:{@"UPDATE %@ SET status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND taskIdentifier = %lu AND scopeIndex = %ld", v14, 3, v15, objc_msgSend(v8, "resourceType"), a4, v11}];

  if (a5 && (v16 & 1) == 0)
  {
    *a5 = [v13 lastCPLError];
  }

  return v16;
}

- (BOOL)removeBackgroundDownloadTaskForResource:(id)a3 taskIdentifier:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 itemScopedIdentifier];
  v10 = [v9 scopeIndex];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C03E0();
  }

  v11 = v10;
  v12 = [(CPLPrequeliteStorage *)self pqStore];
  v13 = [v12 pqlConnection];

  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [v9 identifier];
  v16 = [v13 cplExecute:{@"DELETE FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i AND taskIdentifier = %lu AND scopeIndex = %ld", v14, v15, objc_msgSend(v8, "resourceType"), a4, v11}];

  if (a5 && (v16 & 1) == 0)
  {
    *a5 = [v13 lastCPLError];
  }

  return v16;
}

- (id)dequeueNextBackgroundDownloadTasksForResourceType:(unint64_t)a3 andIntent:(unint64_t)a4 maximumSize:(unint64_t)a5 maximumCount:(unint64_t)a6 error:(id *)a7
{
  v11 = objc_alloc_init(NSMutableArray);
  v12 = [(CPLPrequeliteStorage *)self pqStore];
  v13 = [v12 pqlConnection];

  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v15 = v14;
  if (a3 == -1)
  {
    v16 = [v13 cplFetch:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE status = %i AND intent = %i ORDER BY position", v14, 1, a4, v34}];
  }

  else
  {
    v16 = [v13 cplFetch:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE status = %i AND resourceType = %i AND intent = %i ORDER BY position", v14, 1, a3, a4}];
  }

  v17 = v16;

  if (!v17)
  {
    v29 = [v13 lastCPLError];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = +[CPLErrors unknownError];
    }

    v28 = v31;

    v11 = 0;
    if (!a7)
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
    v38 = v13;
    v36 = a7;
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
          v22 = [v20 estimatedResourceSize];
          v23 = v22;
          if ((a5 <= v18 || a5 - v18 < v22) && [v11 count])
          {
            v28 = 0;
            a7 = v36;
            v13 = v38;
            goto LABEL_31;
          }

          v24 = [v21 itemScopedIdentifier];
          if ([v24 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            sub_1001C0498();
          }

          v25 = [(CPLPrequeliteStorage *)self mainTable];
          v26 = [v24 identifier];
          v27 = [v38 cplExecute:{@"UPDATE %@ SET status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", v25, 0, v26, objc_msgSend(v21, "resourceType"), objc_msgSend(v24, "scopeIndex")}];

          if ((v27 & 1) == 0)
          {
            v13 = v38;
            v28 = [v38 lastCPLError];

            v11 = 0;
            goto LABEL_26;
          }

          [v11 addObject:v21];
          if ([v11 count] >= a6)
          {
            v28 = 0;
            v13 = v38;
LABEL_26:

            a7 = v36;
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

    v28 = 0;
    v17 = v35;
    a7 = v36;
    v13 = v38;
  }

  else
  {
    v28 = 0;
  }

LABEL_32:

  if (a7)
  {
LABEL_33:
    if (!v11)
    {
      v32 = v28;
      *a7 = v28;
    }
  }

LABEL_35:

  return v11;
}

- (BOOL)resetDequeuedBackgroundDownloadTasksWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplExecute:{@"UPDATE OR FAIL %@ SET status = %i WHERE status = %i", v7, 1, 2}];

  if (a3 && (v8 & 1) == 0)
  {
    *a3 = [v6 lastCPLError];
  }

  return v8;
}

- (BOOL)removeAllBackgroundDownloadTasksForItemWithScopedIdentifier:(id)a3 error:(id *)a4
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
    v8 = [v11 cplExecute:{@"DELETE FROM %@ WHERE itemIdentifier = %@ AND scopeIndex = %ld", v12, v13, v9}];

    if (a4 && (v8 & 1) == 0)
    {
      *a4 = [v11 lastCPLError];
    }
  }

  return v8;
}

- (id)enumeratorForDownloadedResources
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [v4 cplFetch:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE status = %i", v5, 3}];

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
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"status != %i", 3];
  v6 = [v3 table:v4 hasRecordsMatchingQuery:v5];

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
  v3 = [(CPLPrequeliteStorage *)&v14 status];
  v20 = [v3 mutableCopy];

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
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100166560;
  v11[3] = &unk_10027BA20;
  v11[4] = v12;
  v11[5] = &v15;
  [v7 table:v8 enumerateCountGroupedByUnsignedIntegerProperty:@"resourceType" block:v11];

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

- (unint64_t)newTaskIdentifier
{
  v3 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  v4 = [v3 unsignedIntegerValue];

  v5 = [NSNumber numberWithUnsignedInteger:v4 + 1];
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

  return v4;
}

@end