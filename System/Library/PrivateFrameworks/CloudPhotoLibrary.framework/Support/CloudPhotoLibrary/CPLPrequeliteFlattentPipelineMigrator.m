@interface CPLPrequeliteFlattentPipelineMigrator
- (BOOL)_discardResourceForUpload:(id)a3;
- (BOOL)_enqueueResourcesForChange:(id)a3 inOutgoingResourcesWithUploadIdentifier:(id)a4;
- (BOOL)_migratePushQueue:(id)a3;
- (BOOL)migrate;
- (CPLPrequeliteFlattentPipelineMigrator)initWithStore:(id)a3;
- (NSError)lastError;
- (unint64_t)_availabilityOfResource:(id)a3;
- (void)_setLastError:(id)a3;
@end

@implementation CPLPrequeliteFlattentPipelineMigrator

- (CPLPrequeliteFlattentPipelineMigrator)initWithStore:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = CPLPrequeliteFlattentPipelineMigrator;
  v6 = [(CPLPrequeliteFlattentPipelineMigrator *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = [(CPLPrequeliteStore *)v7->_store abstractObject];
    v9 = [v5 clientCache];
    clientCache = v7->_clientCache;
    v7->_clientCache = v9;

    v11 = [v8 pushRepository];
    pushRepository = v7->_pushRepository;
    v7->_pushRepository = v11;

    v13 = [v8 outgoingResources];
    outgoingResources = v7->_outgoingResources;
    v7->_outgoingResources = v13;

    v15 = [v8 resourceStorage];
    resources = v7->_resources;
    v7->_resources = v15;

    v17 = [CPLPrequeliteResourceUploadQueue alloc];
    store = v7->_store;
    v19 = [CPLPrequeliteTable tableWithName:@"uploadQueue"];
    v20 = [(CPLPrequeliteResourceUploadQueue *)v17 initWithStore:store table:v19];
    uploadQueue = v7->_uploadQueue;
    v7->_uploadQueue = v20;
  }

  return v7;
}

- (void)_setLastError:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lastError, a3);
    v5 = v6;
  }
}

- (NSError)lastError
{
  lastError = self->_lastError;
  if (lastError)
  {
    v3 = lastError;
  }

  else
  {
    v4 = [(CPLPrequeliteStore *)self->_store pqlConnection];
    v3 = [v4 lastError];
  }

  return v3;
}

- (unint64_t)_availabilityOfResource:(id)a3
{
  v4 = a3;
  v21 = 0;
  v5 = [(CPLPrequeliteResourceUploadQueue *)self->_uploadQueue queuedResourceForResource:v4 pendingCount:&v21];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 identity];
    v8 = [v4 identity];
    v9 = [v7 fingerPrint];
    v10 = [v8 fingerPrint];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {

      if (v9 | v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = [v9 isEqual:v10];

      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v15 = [v7 fileUTI];
    v16 = [v8 fileUTI];
    v17 = v16;
    if (v15 && v16)
    {
      v18 = [v15 isEqual:v16];

      if ((v18 & 1) == 0)
      {
LABEL_14:
        v13 = 3;
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {

      if (v15 | v17)
      {
        goto LABEL_14;
      }
    }

    if ([v7 isAvailable])
    {
      v20 = [v7 fileURL];

      v13 = v20 != 0;
    }

    else
    {
      v13 = 2;
    }

    goto LABEL_15;
  }

  v13 = 3;
LABEL_16:

  return v13;
}

- (BOOL)_enqueueResourcesForChange:(id)a3 inOutgoingResourcesWithUploadIdentifier:(id)a4
{
  v27 = a4;
  v6 = [a3 resources];
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = *v33;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v32 + 1) + 8 * i);
      if (![(CPLPrequeliteFlattentPipelineMigrator *)self _availabilityOfResource:v12])
      {
        resources = self->_resources;
        v31 = 0;
        v14 = [(CPLEngineResourceStorage *)resources retainFileURLForResource:v12 error:&v31];
        v15 = v31;
        if (v14)
        {
          v16 = v7;
          v17 = self->_resources;
          v30 = v15;
          v18 = [(CPLEngineResourceStorage *)v17 releaseFileURL:v14 forResource:v12 error:&v30];
          v19 = v30;

          if (v18)
          {
            v20 = [v12 identity];
            [v20 setFileURL:v14];

            v7 = v16;
            [v16 addObject:v12];

            continue;
          }

          [(CPLPrequeliteFlattentPipelineMigrator *)self _setLastError:v19];
          v25 = [v12 identity];
          [v25 setFileURL:v14];

          v7 = v16;
          [v16 addObject:v12];

          v15 = v19;
          v22 = v27;
        }

        else
        {
          v22 = v27;
          if ((_CPLSilentLogging & 1) == 0)
          {
            sub_1001C23AC(v12, v15);
          }

          [(CPLPrequeliteFlattentPipelineMigrator *)self _setLastError:v15];
        }

        v23 = 0;
        v24 = obj;
        goto LABEL_20;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_12:

  if ([v7 count])
  {
    self->_countOfOutgoingResources += [v7 count];
    outgoingResources = self->_outgoingResources;
    v29 = 0;
    v22 = v27;
    v23 = [(CPLEngineOutgoingResources *)outgoingResources storeResourcesToUpload:v7 withUploadIdentifier:v27 shouldCheckResources:0 error:&v29];
    v24 = v29;
    if ((v23 & 1) == 0)
    {
      [(CPLPrequeliteFlattentPipelineMigrator *)self _setLastError:v24];
    }

LABEL_20:
  }

  else
  {
    v23 = 1;
    v22 = v27;
  }

  return v23;
}

- (BOOL)_discardResourceForUpload:(id)a3
{
  v4 = a3;
  uploadQueue = self->_uploadQueue;
  v16 = 0;
  v6 = [(CPLPrequeliteResourceUploadQueue *)uploadQueue discardResource:v4 discardedResource:&v16 error:0];
  v7 = v16;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [v7 identity];
    if ([v10 isAvailable])
    {
      v11 = [v8 identity];
      v12 = [v11 fileURL];

      if (v12)
      {
        LOBYTE(v6) = 1;
        goto LABEL_10;
      }

      ++self->_countOfDroppedResources;
      resources = self->_resources;
      v15 = 0;
      LOBYTE(v6) = [(CPLEngineResourceStorage *)resources dropResourceForUpload:v4 error:&v15];
      v10 = v15;
      if ((v6 & 1) == 0)
      {
        [(CPLPrequeliteFlattentPipelineMigrator *)self _setLastError:v10];
      }
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

LABEL_10:

  return v6;
}

- (BOOL)_migratePushQueue:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  if ([v4 hasChanges])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10016E5EC;
    v8[3] = &unk_10027BBD8;
    v8[5] = &v9;
    v8[6] = &v13;
    v8[4] = self;
    [v4 enumerateChangesWithBlock:v8];
    if (*(v14 + 24) == 1 && *(v10 + 24) == 1)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10016E7A8;
      v7[3] = &unk_10027BC00;
      v7[4] = self;
      v7[5] = &v13;
      [v4 enumerateChangesWithBlock:v7];
    }

    _Block_object_dispose(&v9, 8);
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v5;
}

- (BOOL)migrate
{
  v3 = [(CPLPrequeliteStore *)self->_store pqlConnection];
  v4 = [CPLPrequeliteTable tableWithName:@"deletePushQueue"];
  v5 = [CPLPrequeliteTable tableWithName:@"pushQueue"];
  v6 = [[CPLPrequeliteChangePipeEnumerator alloc] initWithStore:self->_store table:v4];
  if (![(CPLPrequeliteFlattentPipelineMigrator *)self _migratePushQueue:v6])
  {
    v7 = v6;
    goto LABEL_6;
  }

  v7 = [[CPLPrequeliteChangePipeEnumerator alloc] initWithStore:self->_store table:v5];

  if (![(CPLPrequeliteFlattentPipelineMigrator *)self _migratePushQueue:v7])
  {
LABEL_6:
    store = self->_store;
    countOfMigratedChanges = self->_countOfMigratedChanges;
    v12 = [v3 lastCPLError];
    v13 = [v12 localizedDescription];
    [(CPLPrequeliteStore *)store recordUpgradeEvent:@"failed to migrate %lu changes to flat pipeline: %@", countOfMigratedChanges, v13];

    v14 = 0;
    goto LABEL_9;
  }

  v8 = self->_countOfMigratedChanges;
  v9 = self->_store;
  if (v8)
  {
    [(CPLPrequeliteStore *)v9 recordUpgradeEvent:@"succesfully migrated %lu changes to flat pipeline (dropped resources: %lu but re-enqueued %lu).", v8, self->_countOfDroppedResources, self->_countOfOutgoingResources];
  }

  else
  {
    [(CPLPrequeliteStore *)v9 recordUpgradeEvent:@"succesfully migrated empty push pipeline to flat pipeline.", v17, v18, v19];
  }

  v14 = 1;
LABEL_9:
  [v3 cplExecute:{@"DROP TABLE IF EXISTS %@", v4}];
  [v3 cplExecute:{@"DROP TABLE IF EXISTS %@", v5}];
  v15 = [(CPLPrequeliteResourceUploadQueue *)self->_uploadQueue table];
  [v3 cplExecute:{@"DROP TABLE IF EXISTS %@", v15}];

  return v14;
}

@end