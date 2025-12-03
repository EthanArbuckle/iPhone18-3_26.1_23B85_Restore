@interface CPLCloudKitResourcesDownloadTask
- (CPLCloudKitResourcesDownloadTask)initWithController:(id)controller completionHandler:(id)handler;
- (id)_cloudKitScopeForTask:(id)task;
- (id)_downloadOperationWithRecordIDsAndTasks:(id)tasks keys:(id)keys perRecordProgressBlock:(id)block perRecordCompletionBlock:(id)completionBlock completionBlock:(id)a7;
- (id)_recordIDForResourcesWithItemScopedIdentifier:(id)identifier;
- (void)_downloadCurrentGroup;
- (void)_downloadNextGroup;
- (void)_downloadNextOperationType;
- (void)_finishRemainingTasksWithError:(id)error;
- (void)cancelDownloadTask:(id)task;
- (void)runOperations;
- (void)setDownloadTasks:(id)tasks;
@end

@implementation CPLCloudKitResourcesDownloadTask

- (CPLCloudKitResourcesDownloadTask)initWithController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = CPLCloudKitResourcesDownloadTask;
  v7 = [(CPLCloudKitTransportTask *)&v11 initWithController:controller];
  if (v7)
  {
    v8 = [handlerCopy copy];
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v8;

    [(CPLCloudKitTransportTask *)v7 setIsMetadata:0];
    [(CPLCloudKitTransportTask *)v7 setBoostable:0];
  }

  return v7;
}

- (void)cancelDownloadTask:(id)task
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100080DCC;
  v4[3] = &unk_1002720E0;
  selfCopy = self;
  taskCopy = task;
  v3 = taskCopy;
  [(CPLCloudKitTransportTask *)selfCopy dispatchAsync:v4];
}

- (void)_finishRemainingTasksWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    sub_1001A86E4(a2, self);
  }

  remainingTasksPerOperationType = self->_remainingTasksPerOperationType;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100081004;
  v8[3] = &unk_100275E28;
  v9 = errorCopy;
  v7 = errorCopy;
  [(NSMutableDictionary *)remainingTasksPerOperationType enumerateKeysAndObjectsUsingBlock:v8];
  (*(self->_completionHandler + 2))();
}

- (id)_downloadOperationWithRecordIDsAndTasks:(id)tasks keys:(id)keys perRecordProgressBlock:(id)block perRecordCompletionBlock:(id)completionBlock completionBlock:(id)a7
{
  tasksCopy = tasks;
  keysCopy = keys;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v16 = a7;
  if (CPLCloudKitUseGateKeeperForOperationType(self->_currentOperationType))
  {
    v17 = CPLCloudKitGateKeeperDefaultDownloadType;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10008151C;
    v43[3] = &unk_100275E50;
    v44 = completionBlockCopy;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000815EC;
    v41[3] = &unk_100272EC0;
    v42 = v16;
    v18 = v16;
    v19 = completionBlockCopy;
    v20 = [CPLCKResourceDownloadOperation downloadOperationWithRecordIDsAndTasks:tasksCopy keys:keysCopy downloadType:v17 perRecordProgressBlock:blockCopy perRecordCompletionBlock:v43 completionBlock:v41];

    v21 = v44;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = sub_100003964();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [tasksCopy allKeys];
        *buf = 138412546;
        v47 = allKeys;
        v48 = 2112;
        v49 = keysCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Will use legacy downloads for %@ (%@)", buf, 0x16u);
      }
    }

    v24 = [CKFetchRecordsOperation alloc];
    allKeys2 = [tasksCopy allKeys];
    v20 = [v24 initWithRecordIDs:allKeys2];

    v26 = sub_1001A8CE0(keysCopy);
    v27 = sub_1001A8CA4(keysCopy);
    v28 = sub_1001A8C80(keysCopy);
    v45[0] = v27;
    v45[1] = v26;
    v45[2] = v28;
    v29 = [NSArray arrayWithObjects:v45 count:3];
    [v20 setDesiredKeys:v29];

    [v20 setShouldFetchAssetContent:1];
    [v20 setPerRecordProgressBlock:blockCopy];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100081654;
    v36[3] = &unk_100275E78;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v40 = completionBlockCopy;
    v30 = v28;
    v21 = v27;
    v18 = v26;
    v31 = completionBlockCopy;
    [v20 setPerRecordCompletionBlock:v36];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10008173C;
    v34[3] = &unk_100272F88;
    v35 = v16;
    v32 = v16;
    [v20 setFetchRecordsCompletionBlock:v34];
  }

  return v20;
}

- (id)_cloudKitScopeForTask:(id)task
{
  taskCopy = task;
  cloudResource = [taskCopy cloudResource];
  itemScopedIdentifier = [cloudResource itemScopedIdentifier];

  v8 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:itemScopedIdentifier];
  resourceScopedIdentifier = [v8 resourceScopedIdentifier];
  scopeIdentifier = [resourceScopedIdentifier scopeIdentifier];
  v11 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

  if (!v11)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_100003964();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        resourceScopedIdentifier2 = [v8 resourceScopedIdentifier];
        cloudResource2 = [taskCopy cloudResource];
        *buf = 138412546;
        v21 = resourceScopedIdentifier2;
        v22 = 2112;
        v23 = cloudResource2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Impossible to find cloudkit scope for %@ (%@)", buf, 0x16u);
      }
    }

    v16 = +[NSAssertionHandler currentHandler];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitResourcesDownloadTask.m"];
    resourceScopedIdentifier3 = [v8 resourceScopedIdentifier];
    cloudResource3 = [taskCopy cloudResource];
    [v16 handleFailureInMethod:a2 object:self file:v17 lineNumber:205 description:{@"Impossible to find cloudkit scope for %@ (%@)", resourceScopedIdentifier3, cloudResource3}];

    abort();
  }

  return v11;
}

- (id)_recordIDForResourcesWithItemScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:identifierCopy];
  resourceScopedIdentifier = [v6 resourceScopedIdentifier];
  scopeIdentifier = [resourceScopedIdentifier scopeIdentifier];
  v9 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

  if (!v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_100003964();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = resourceScopedIdentifier;
        v18 = 2112;
        v19 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Impossible to find cloudkit scope for %@ (%@)", buf, 0x16u);
      }
    }

    v14 = +[NSAssertionHandler currentHandler];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitResourcesDownloadTask.m"];
    [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:213 description:{@"Impossible to find cloudkit scope for %@ (%@)", resourceScopedIdentifier, identifierCopy}];

    abort();
  }

  identifier = [resourceScopedIdentifier identifier];
  v11 = [v9 recordIDWithRecordName:identifier];

  return v11;
}

- (void)_downloadCurrentGroup
{
  v49 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v49];
  v4 = v49;
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_100003964();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        downloadGroup = self->_downloadGroup;
        *buf = 138412290;
        v51 = downloadGroup;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will download %@", buf, 0xCu);
      }
    }

    propertyKeys = [(_CPLCloudKitDownloadGroup *)self->_downloadGroup propertyKeys];
    v8 = [[NSMutableDictionary alloc] initWithCapacity:{-[_CPLCloudKitDownloadGroup countOfDownloadTasks](self->_downloadGroup, "countOfDownloadTasks")}];
    v9 = [[CPLCloudKitDownloadResourcesOperationContext alloc] initWithResourceType:[(_CPLCloudKitDownloadGroup *)self->_downloadGroup resourceType]];
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = self->_downloadGroup;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001A823C;
    v43[3] = &unk_100275EA0;
    v12 = v9;
    v44 = v12;
    selfCopy = self;
    v13 = v10;
    v46 = v13;
    v14 = v8;
    v47 = v14;
    v15 = propertyKeys;
    v48 = v15;
    [(_CPLCloudKitDownloadGroup *)v11 enumerateRecordScopedIdentifiersAndTasksWithBlock:v43];
    v16 = objc_alloc_init(CPLCloudKitDownloadMetric);
    -[CPLCloudKitDownloadMetric setRequestedItemCount:](v16, "setRequestedItemCount:", [v14 count]);
    [(CPLCloudKitDownloadMetric *)v16 setExpectedSize:[(_CPLCloudKitDownloadGroup *)self->_downloadGroup downloadSize]];
    [(CPLCloudKitTransportTask *)self associateMetric:v16];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100082148;
    v40[3] = &unk_100275EC8;
    v40[4] = self;
    v41 = v13;
    v42 = v12;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100082348;
    v36[3] = &unk_100275F18;
    v36[4] = self;
    v33 = v41;
    v37 = v33;
    v17 = v42;
    v38 = v17;
    v39 = v16;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000824D4;
    v34[3] = &unk_100272268;
    v34[4] = self;
    v18 = v39;
    v35 = v18;
    v19 = [(CPLCloudKitResourcesDownloadTask *)self _downloadOperationWithRecordIDsAndTasks:v14 keys:v15 perRecordProgressBlock:v40 perRecordCompletionBlock:v36 completionBlock:v34];
    if ([(CPLCloudKitTransportTask *)self foreground]&& [(_CPLCloudKitDownloadGroup *)self->_downloadGroup shouldBoostPriority])
    {
      [v19 setQueuePriority:4];
    }

    v20 = [objc_opt_class() allowsCellularForDownloadOperationOfSize:-[_CPLCloudKitDownloadGroup downloadSize](self->_downloadGroup isForeground:"downloadSize") isHighPriority:{-[CPLCloudKitTransportTask foreground](self, "foreground"), -[_CPLCloudKitDownloadGroup isHighPriority](self->_downloadGroup, "isHighPriority")}];
    if (v20 && (_CPLSilentLogging & 1) == 0)
    {
      v21 = sub_100003964();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [NSByteCountFormatter stringFromByteCount:[(_CPLCloudKitDownloadGroup *)self->_downloadGroup downloadSize] countStyle:1];
        v22 = v32 = v18;
        v23 = v15;
        if ([(CPLCloudKitTransportTask *)self foreground])
        {
          v24 = @" in foreground";
        }

        else
        {
          v24 = &stru_10027C2F0;
        }

        isHighPriority = [(_CPLCloudKitDownloadGroup *)self->_downloadGroup isHighPriority];
        v26 = @" high priority";
        *buf = 138412802;
        v51 = v22;
        if (!isHighPriority)
        {
          v26 = &stru_10027C2F0;
        }

        v52 = 2112;
        v53 = v24;
        v15 = v23;
        v54 = 2112;
        v55 = v26;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Allowing cellular access for resources download for %@%@%@", buf, 0x20u);

        v18 = v32;
      }
    }

    [(CPLCloudKitTransportTask *)self setAllowsCellular:v20];
    mainSourceBundleIdentifier = [(_CPLCloudKitDownloadGroup *)self->_downloadGroup mainSourceBundleIdentifier];
    [(CPLCloudKitTransportTask *)self setSourceBundleIdentifier:mainSourceBundleIdentifier];

    v28 = self->_downloadGroup;
    operationID = [v19 operationID];
    [(_CPLCloudKitDownloadGroup *)v28 allDownloadsDidStartWithOperationID:operationID];

    currentOperationType = self->_currentOperationType;
    allSourceBundleIdentifiers = [(_CPLCloudKitDownloadGroup *)self->_downloadGroup allSourceBundleIdentifiers];
    [(CPLCloudKitTransportTask *)self launchOperation:v19 type:currentOperationType withContext:v17 sourceBundleIdentifiers:allSourceBundleIdentifiers];
  }

  else
  {
    [(_CPLCloudKitDownloadGroup *)self->_downloadGroup allDownloadsDidFailWithError:v4];
    [(CPLCloudKitResourcesDownloadTask *)self _finishRemainingTasksWithError:v4];
  }
}

- (void)_downloadNextOperationType
{
  if ([(NSMutableDictionary *)self->_remainingTasksPerOperationType count])
  {
    allKeys = [(NSMutableDictionary *)self->_remainingTasksPerOperationType allKeys];
    firstObject = [allKeys firstObject];

    self->_currentOperationType = [firstObject integerValue];
    v4 = [(NSMutableDictionary *)self->_remainingTasksPerOperationType objectForKeyedSubscript:firstObject];
    currentRemainingTasks = self->_currentRemainingTasks;
    self->_currentRemainingTasks = v4;

    [(CPLCloudKitResourcesDownloadTask *)self _downloadNextGroup];
  }

  else
  {
    v6 = *(self->_completionHandler + 2);

    v6();
  }
}

- (void)_downloadNextGroup
{
  v38 = 0;
  v4 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v38];
  v5 = v38;
  if (v4)
  {
    if ([(NSMutableArray *)self->_currentRemainingTasks count])
    {
      v32 = a2;
      firstObject = [(NSMutableArray *)self->_currentRemainingTasks firstObject];
      if (firstObject)
      {
        firstObject2 = firstObject;
        while (1)
        {
          cloudResource = [firstObject2 cloudResource];
          v8 = [CPLCloudKitFakeDynamicDerivatives realResourceTypeForResource:?];
          v9 = [_CPLCloudKitDownloadGroup alloc];
          controller = [(CPLCloudKitTransportTask *)self controller];
          defaultSourceBundleIdentifier = [controller defaultSourceBundleIdentifier];
          fingerprintContext = [(CPLCloudKitTransportTask *)self fingerprintContext];
          v13 = [(_CPLCloudKitDownloadGroup *)v9 initWithResourceType:v8 defaultSourceBundleIdentifier:defaultSourceBundleIdentifier fingerprintContext:fingerprintContext];
          downloadGroup = self->_downloadGroup;
          self->_downloadGroup = v13;

          v15 = [[NSMutableIndexSet alloc] initWithIndex:0];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v16 = self->_currentRemainingTasks;
          v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v34 objects:v41 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = 0;
            v20 = *v35;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v35 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = *(*(&v34 + 1) + 8 * i);
                v23 = [(_CPLCloudKitDownloadGroup *)self->_downloadGroup addDownloadTask:v22];
                if (v22 == firstObject2 && (v23 & 1) == 0)
                {
                  sub_1001A87A0(v32, self);
                }

                if (v23)
                {
                  [v15 addIndex:v19];
                }

                ++v19;
              }

              v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v34 objects:v41 count:16];
            }

            while (v18);
          }

          [(NSMutableArray *)self->_currentRemainingTasks removeObjectsAtIndexes:v15];
          propertyKeys = [(_CPLCloudKitDownloadGroup *)self->_downloadGroup propertyKeys];
          if (propertyKeys)
          {
            break;
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v25 = sub_100003964();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = self->_downloadGroup;
              *buf = 138412290;
              v40 = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Asked to download unsupported resources: %@", buf, 0xCu);
            }
          }

          v27 = self->_downloadGroup;
          v28 = [CPLErrors incorrectParametersErrorForParameter:@"resourceType"];
          [(_CPLCloudKitDownloadGroup *)v27 allDownloadsDidFailWithError:v28];

          v29 = self->_downloadGroup;
          self->_downloadGroup = 0;

          firstObject2 = [(NSMutableArray *)self->_currentRemainingTasks firstObject];
          if (!firstObject2)
          {
            goto LABEL_22;
          }
        }
      }

LABEL_22:
      if (self->_downloadGroup)
      {
        [(CPLCloudKitResourcesDownloadTask *)self _downloadCurrentGroup];
      }

      else
      {
        if ([(NSMutableArray *)self->_currentRemainingTasks count])
        {
          sub_1001A885C(v32, self);
        }

        [(CPLCloudKitResourcesDownloadTask *)self _downloadNextGroup];
      }
    }

    else
    {
      remainingTasksPerOperationType = self->_remainingTasksPerOperationType;
      v31 = [NSNumber numberWithInteger:self->_currentOperationType];
      [(NSMutableDictionary *)remainingTasksPerOperationType removeObjectForKey:v31];

      [(CPLCloudKitResourcesDownloadTask *)self _downloadNextOperationType];
    }
  }

  else
  {
    [(CPLCloudKitResourcesDownloadTask *)self _finishRemainingTasksWithError:v5];
  }
}

- (void)runOperations
{
  if (self->_scopedIdentifiersNeedingPlaceholderRecords)
  {
    scopedIdentifiersNeedingPlaceholderRecords = self->_scopedIdentifiersNeedingPlaceholderRecords;
  }

  else
  {
    scopedIdentifiersNeedingPlaceholderRecords = &__NSArray0__struct;
  }

  targetMapping = self->_targetMapping;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100082C60;
  v4[3] = &unk_100275F40;
  v4[4] = self;
  v4[5] = a2;
  [(CPLCloudKitTransportTask *)self fetchPlaceholderRecordsForScopedIdentifiers:scopedIdentifiersNeedingPlaceholderRecords targetMapping:targetMapping completionHandler:v4];
}

- (void)setDownloadTasks:(id)tasks
{
  tasksCopy = tasks;
  v5 = [tasksCopy copy];
  downloadTasks = self->_downloadTasks;
  self->_downloadTasks = v5;

  v7 = objc_alloc_init(CPLRecordTargetMapping);
  targetMapping = self->_targetMapping;
  selfCopy = self;
  self->_targetMapping = v7;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = tasksCopy;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    obj = v9;
    v36 = 0;
    v12 = 0;
    v13 = *v39;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        transportScopeMapping = [v15 transportScopeMapping];
        v17 = transportScopeMapping;
        if (v12)
        {
          [v12 updateWithTransportScopeMapping:transportScopeMapping];
        }

        else
        {
          v12 = transportScopeMapping;
        }

        v18 = selfCopy->_targetMapping;
        target = [v15 target];
        cloudResource = [v15 cloudResource];
        itemScopedIdentifier = [cloudResource itemScopedIdentifier];
        [(CPLRecordTargetMapping *)v18 setTarget:target forRecordWithScopedIdentifier:itemScopedIdentifier];

        cloudRecord = [v15 cloudRecord];

        if (!cloudRecord)
        {
          cloudResource2 = [v15 cloudResource];
          identity = [cloudResource2 identity];
          fingerPrint = [identity fingerPrint];

          v26 = v36;
          if (!v36)
          {
            v26 = objc_alloc_init(NSMutableSet);
          }

          cloudResource3 = [v15 cloudResource];
          itemScopedIdentifier2 = [cloudResource3 itemScopedIdentifier];
          v36 = v26;
          [v26 addObject:itemScopedIdentifier2];
        }
      }

      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v11);

    if (v12)
    {
      [(CPLCloudKitTransportTask *)selfCopy setTransportScopeMapping:v12];
    }
  }

  else
  {

    v12 = 0;
    v36 = 0;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v29 = sub_100003964();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v9 count];
      v31 = [v36 count];
      targetDescriptions = [(CPLRecordTargetMapping *)selfCopy->_targetMapping targetDescriptions];
      *buf = 134218754;
      v43 = v30;
      v44 = 2048;
      v45 = v31;
      v46 = 2112;
      v47 = targetDescriptions;
      v48 = 2112;
      v49 = v12;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Will download %lu tasks (%lu missing placeholders) using:\n%@\nand:\n%@", buf, 0x2Au);
    }
  }

  v33 = [v36 copy];
  scopedIdentifiersNeedingPlaceholderRecords = selfCopy->_scopedIdentifiersNeedingPlaceholderRecords;
  selfCopy->_scopedIdentifiersNeedingPlaceholderRecords = v33;
}

@end