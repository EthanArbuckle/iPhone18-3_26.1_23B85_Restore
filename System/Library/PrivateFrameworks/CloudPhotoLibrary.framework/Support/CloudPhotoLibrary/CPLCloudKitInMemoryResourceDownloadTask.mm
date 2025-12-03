@interface CPLCloudKitInMemoryResourceDownloadTask
- (CPLCloudKitInMemoryResourceDownloadTask)initWithController:(id)controller resource:(id)resource record:(id)record target:(id)target transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)_inMemoryDownloadOperationForRecordID:(id)d resource:(id)resource record:(id)record keys:(id)keys operationType:(int64_t)type completionBlock:(id)block;
- (void)_fetchPlaceholderRecordAndStartDownload;
- (void)_startDownload;
- (void)runOperations;
@end

@implementation CPLCloudKitInMemoryResourceDownloadTask

- (CPLCloudKitInMemoryResourceDownloadTask)initWithController:(id)controller resource:(id)resource record:(id)record target:(id)target transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  resourceCopy = resource;
  recordCopy = record;
  targetCopy = target;
  mappingCopy = mapping;
  handlerCopy = handler;
  v29.receiver = self;
  v29.super_class = CPLCloudKitInMemoryResourceDownloadTask;
  v20 = [(CPLCloudKitTransportTask *)&v29 initWithController:controller];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_resource, resource);
    objc_storeStrong(&v21->_record, record);
    v22 = objc_alloc_init(CPLRecordTargetMapping);
    targetMapping = v21->_targetMapping;
    v21->_targetMapping = v22;

    v24 = v21->_targetMapping;
    scopedIdentifier = [targetCopy scopedIdentifier];
    [(CPLRecordTargetMapping *)v24 setTarget:targetCopy forRecordWithScopedIdentifier:scopedIdentifier];

    v26 = [handlerCopy copy];
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v26;

    [(CPLCloudKitTransportTask *)v21 setTransportScopeMapping:mappingCopy];
    [(CPLCloudKitTransportTask *)v21 setIsMetadata:0];
    [(CPLCloudKitTransportTask *)v21 setBoostable:0];
  }

  return v21;
}

- (id)_inMemoryDownloadOperationForRecordID:(id)d resource:(id)resource record:(id)record keys:(id)keys operationType:(int64_t)type completionBlock:(id)block
{
  dCopy = d;
  resourceCopy = resource;
  recordCopy = record;
  keysCopy = keys;
  blockCopy = block;
  v18 = sub_1001A8CE0(keysCopy);
  if (CPLCloudKitUseGateKeeperForOperationType(type))
  {
    v19 = CPLCloudKitGateKeeperDefaultDownloadType;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000A4C10;
    v35[3] = &unk_1002769D0;
    v36 = blockCopy;
    v20 = [CPLCKResourceDownloadOperation inMemoryDownloadOperationForRecordID:dCopy resource:resourceCopy record:recordCopy keys:keysCopy downloadType:v19 completionBlock:v35];
    v21 = v36;
  }

  else
  {
    v22 = [CKFetchRecordsOperation alloc];
    v38 = dCopy;
    v23 = [NSArray arrayWithObjects:&v38 count:1];
    v20 = [v22 initWithRecordIDs:v23];

    [v20 setShouldFetchAssetContentInMemory:1];
    v21 = sub_1001A8C80(keysCopy);
    v37[0] = v18;
    v37[1] = v21;
    v24 = [NSArray arrayWithObjects:v37 count:2];
    [v20 setDesiredKeys:v24];

    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = sub_1000044F0;
    v33[4] = sub_10000535C;
    v34 = 0;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001ACDC4;
    v32[3] = &unk_1002769F8;
    v32[4] = v33;
    [v20 setPerRecordCompletionBlock:v32];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000A4CB0;
    v26[3] = &unk_100276A20;
    v31 = v33;
    v27 = dCopy;
    v28 = v18;
    v29 = keysCopy;
    v30 = blockCopy;
    [v20 setFetchRecordsCompletionBlock:v26];

    _Block_object_dispose(v33, 8);
  }

  return v20;
}

- (void)runOperations
{
  v8 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v8];
  v4 = v8;
  if (v3)
  {
    if (self->_record)
    {
      targetMapping = self->_targetMapping;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000A4F4C;
      v7[3] = &unk_100272468;
      v7[4] = self;
      [(CPLCloudKitTransportTask *)self fetchUnknownTargetsInMapping:targetMapping completionHandler:v7];
    }

    else
    {
      identity = [(CPLResource *)self->_resource identity];
      [identity fingerPrint];

      [(CPLCloudKitInMemoryResourceDownloadTask *)self _fetchPlaceholderRecordAndStartDownload];
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)_fetchPlaceholderRecordAndStartDownload
{
  itemScopedIdentifier = [(CPLResource *)self->_resource itemScopedIdentifier];
  v9 = itemScopedIdentifier;
  v4 = [NSArray arrayWithObjects:&v9 count:1];
  targetMapping = self->_targetMapping;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A508C;
  v7[3] = &unk_100275080;
  v7[4] = self;
  v8 = itemScopedIdentifier;
  v6 = itemScopedIdentifier;
  [(CPLCloudKitTransportTask *)self fetchPlaceholderRecordsForScopedIdentifiers:v4 targetMapping:targetMapping completionHandler:v7];
}

- (void)_startDownload
{
  v31 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v31];
  v4 = v31;
  if (v3)
  {
    v5 = sub_100084A0C(CPLCloudKitResourceKeys, [CPLCloudKitFakeDynamicDerivatives realResourceTypeForResource:self->_resource]);
    if (v5)
    {
      itemScopedIdentifier = [(CPLResource *)self->_resource itemScopedIdentifier];
      v7 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:itemScopedIdentifier];
      resourceScopedIdentifier = [v7 resourceScopedIdentifier];
      scopeIdentifier = [resourceScopedIdentifier scopeIdentifier];
      v10 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

      if (v10)
      {
        v27 = v7;
        identifier = [resourceScopedIdentifier identifier];
        v12 = [v10 recordIDWithRecordName:identifier];

        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = sub_100003AFC();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            sub_1001A8CE0(v5);
            v15 = v14 = resourceScopedIdentifier;
            *buf = 138412546;
            *&buf[4] = v12;
            v33 = 2112;
            v34 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Starting in memory download for %@ (resourceKey %@)", buf, 0x16u);

            resourceScopedIdentifier = v14;
          }
        }

        v26 = resourceScopedIdentifier;
        v16 = objc_alloc_init(CPLCloudKitDownloadMetric);
        identity = [(CPLResource *)self->_resource identity];
        -[CPLCloudKitDownloadMetric setExpectedSize:](v16, "setExpectedSize:", [identity fileSize]);

        [(CPLCloudKitDownloadMetric *)v16 setRequestedItemCount:1];
        [(CPLCloudKitTransportTask *)self associateMetric:v16];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1000A5560;
        v28[3] = &unk_100276A70;
        v28[4] = self;
        v29 = v16;
        v30 = v12;
        v18 = v12;
        scopeIdentifier2 = v16;
        v20 = objc_retainBlock(v28);
        v21 = itemScopedIdentifier;
        v22 = CPLCloudKitOperationTypeForScope(v10);
        v23 = [(CPLCloudKitInMemoryResourceDownloadTask *)self _inMemoryDownloadOperationForRecordID:v18 resource:self->_resource record:self->_record keys:v5 operationType:v22 completionBlock:v20];
        v24 = v22;
        itemScopedIdentifier = v21;
        [(CPLCloudKitTransportTask *)self launchOperation:v23 type:v24 withContext:0];

        resourceScopedIdentifier = v26;
        v7 = v27;
      }

      else
      {
        completionHandler = self->_completionHandler;
        scopeIdentifier2 = [resourceScopedIdentifier scopeIdentifier];
        v18 = [CPLErrors cplErrorWithCode:80 description:@"Missing zone for %@", scopeIdentifier2];
        completionHandler[2](completionHandler, 0, v18);
      }
    }

    else
    {
      sub_1001AD2C4(&self->_resource, self, buf);
      itemScopedIdentifier = *buf;
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end