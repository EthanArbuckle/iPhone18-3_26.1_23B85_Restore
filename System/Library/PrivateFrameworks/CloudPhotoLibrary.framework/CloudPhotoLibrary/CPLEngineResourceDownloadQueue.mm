@interface CPLEngineResourceDownloadQueue
+ (BOOL)shouldRetryDownloadOnError:(id)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasActiveOrQueuedBackgroundDownloadOperations;
- (BOOL)markBackgroundDownloadTaskForResourceAsSuceeded:(id)suceeded error:(id *)error;
- (BOOL)removeAllBackgroundDownloadTasksForItemWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeBackgroundDownloadTaskForResource:(id)resource error:(id *)error;
- (BOOL)resetDequeuedBackgroundDownloadTasksWithError:(id *)error;
- (CPLEngineResourceDownloadQueue)initWithEngineStore:(id)store name:(id)name;
- (CPLEngineResourceDownloadTask)_failedTaskWithCompletionHandler:(void *)handler error:(void *)error resource:(void *)resource taskIdentifier:(void *)identifier options:;
- (id)_activeQueueForTransferTask:(uint64_t)task;
- (id)_cloudResourceForLocalResource:(void *)resource cloudRecord:(void *)record target:(_BYTE *)target shouldNotTrustCaches:(int)caches allowUnsafeClientCache:(int)cache allowBypassingAllCaches:(void *)allCaches transportScopeMapping:(void *)mapping error:;
- (id)_queuesStatus;
- (id)createGroupForBackgroundDownloadsOfResourceType:(unint64_t)type transferIntent:(unint64_t)intent transport:(id)transport;
- (id)dequeueNextBackgroundDownloadTasksForResourceType:(unint64_t)type andIntent:(unint64_t)intent maximumSize:(unint64_t)size maximumCount:(unint64_t)count error:(id *)error;
- (id)downloadTaskForLocalResource:(id)resource clientBundleID:(id)d options:(id)options proposedTaskIdentifier:(id)identifier didStartHandler:(id)handler progressHandler:(id)progressHandler completionHandler:(id)completionHandler;
- (id)enumeratorForDownloadedResources;
- (id)status;
- (uint64_t)_canScheduleBackgroundDownloads;
- (uint64_t)_launchTransportTaskForQueue:(uint64_t)queue;
- (uint64_t)_transportTaskCount;
- (unint64_t)countOfQueuedDownloadTasks;
- (void)_dequeueTransferTaskInActiveQueue:(uint64_t)queue;
- (void)_enqueueTransferTaskInActiveQueue:(uint64_t)queue;
- (void)_requestBackgroundDownloads;
- (void)_scheduleBackgroundDownloadsIfNecessary;
@end

@implementation CPLEngineResourceDownloadQueue

- (id)status
{
  v12.receiver = self;
  v12.super_class = CPLEngineResourceDownloadQueue;
  status = [(CPLEngineStorage *)&v12 status];
  v4 = [status mutableCopy];

  downloadLock = self->_downloadLock;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__CPLEngineResourceDownloadQueue_status__block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_sync(downloadLock, v10);
  v7 = v11;
  v8 = v6;

  return v6;
}

void __40__CPLEngineResourceDownloadQueue_status__block_invoke(uint64_t a1)
{
  v2 = [(CPLEngineResourceDownloadQueue *)*(a1 + 32) _queuesStatus];
  v9 = v2;
  if (v2)
  {
    [*(a1 + 40) appendFormat:@"\n%@", v2];
  }

  v3 = *(a1 + 32);
  if (v3[13])
  {
    [*(a1 + 40) appendFormat:@"\nInflight transfer tasks: %lu", v3[13]];
    v3 = *(a1 + 32);
  }

  if (v3[14])
  {
    [*(a1 + 40) appendFormat:@"\nLast requests: %lu resources just now", v3[14]];
  }

  else
  {
    v4 = v3[15];
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = v3[16];
      v7 = [MEMORY[0x1E695DF00] date];
      v8 = [CPLDateFormatter stringFromDateAgo:v6 now:v7];
      [v5 appendFormat:@"\nLast requests: %lu resources, %@", v4, v8];
    }
  }

  if (*(*(a1 + 32) + 136) == 1)
  {
    [*(a1 + 40) appendString:@"\nSome resources need to be downloaded in background"];
  }
}

- (id)_queuesStatus
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = *(self + 48);
    v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (!v2)
    {
LABEL_15:

      goto LABEL_17;
    }

    v3 = 0;
    v4 = *v10;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        status = [*(*(&v9 + 1) + 8 * i) status];
        if (status)
        {
          if (!v3)
          {
            v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v3 addObject:status];
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v2);

    if (v3)
    {
      v2 = [v3 componentsJoinedByString:@"\n"];
      v1 = v3;
      goto LABEL_15;
    }
  }

  v2 = 0;
LABEL_17:
  v7 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)hasActiveOrQueuedBackgroundDownloadOperations
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasActiveOrQueuedBackgroundDownloadOperations = [platformObject hasActiveOrQueuedBackgroundDownloadOperations];

  return hasActiveOrQueuedBackgroundDownloadOperations;
}

- (unint64_t)countOfQueuedDownloadTasks
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfQueuedDownloadTasks = [platformObject countOfQueuedDownloadTasks];

  return countOfQueuedDownloadTasks;
}

- (id)enumeratorForDownloadedResources
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  enumeratorForDownloadedResources = [platformObject enumeratorForDownloadedResources];

  return enumeratorForDownloadedResources;
}

- (BOOL)removeAllBackgroundDownloadTasksForItemWithScopedIdentifier:(id)identifier error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v14 = 0;
  v8 = [platformObject removeAllBackgroundDownloadTasksForItemWithScopedIdentifier:identifierCopy error:&v14];
  v9 = v14;

  if ((v8 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = identifierCopy;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Unable to remove all background tasks for %@: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      v11 = v9;
      *error = v9;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)resetDequeuedBackgroundDownloadTasksWithError:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  platformObject = [(CPLEngineStorage *)self platformObject];
  v11 = 0;
  v5 = [platformObject resetDequeuedBackgroundDownloadTasksWithError:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Unable to reset dequeued background tasks: %@", buf, 0xCu);
      }
    }

    if (error)
    {
      v8 = v6;
      *error = v6;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)dequeueNextBackgroundDownloadTasksForResourceType:(unint64_t)type andIntent:(unint64_t)intent maximumSize:(unint64_t)size maximumCount:(unint64_t)count error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  platformObject = [(CPLEngineStorage *)self platformObject];
  v19 = 0;
  v13 = [platformObject dequeueNextBackgroundDownloadTasksForResourceType:type andIntent:intent maximumSize:size maximumCount:count error:&v19];
  v14 = v19;

  if (!v13)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Unable to dequeue next background tasks: %@", buf, 0xCu);
      }
    }

    if (error)
    {
      v16 = v14;
      *error = v14;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)markBackgroundDownloadTaskForResourceAsSuceeded:(id)suceeded error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  suceededCopy = suceeded;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v14 = 0;
  v8 = [platformObject markBackgroundDownloadTaskForResourceAsSuceeded:suceededCopy taskIdentifier:objc_msgSend(suceededCopy error:{"_backgroundDownloadTaskIdentifier"), &v14}];
  v9 = v14;

  if ((v8 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = suceededCopy;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Unable to mark background task for %@ as succeeded: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      v11 = v9;
      *error = v9;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)removeBackgroundDownloadTaskForResource:(id)resource error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v14 = 0;
  v8 = [platformObject removeBackgroundDownloadTaskForResource:resourceCopy taskIdentifier:objc_msgSend(resourceCopy error:{"_backgroundDownloadTaskIdentifier"), &v14}];
  v9 = v14;

  if ((v8 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = resourceCopy;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Unable to remove background task for %@: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      v11 = v9;
      *error = v9;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_requestBackgroundDownloads
{
  if (self)
  {
    v1 = *(self + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__CPLEngineResourceDownloadQueue__requestBackgroundDownloads__block_invoke;
    v5[3] = &unk_1E861A940;
    v5[4] = self;
    v2 = v5;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_7920;
    block[3] = &unk_1E861B4E0;
    v7 = v2;
    v3 = v1;
    v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v3, v4);
  }
}

void __61__CPLEngineResourceDownloadQueue__requestBackgroundDownloads__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 136) & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Will need to download some resources in background", v4, 2u);
      }

      v1 = *(a1 + 32);
    }

    *(v1 + 136) = 1;
    [(CPLEngineResourceDownloadQueue *)*(a1 + 32) _scheduleBackgroundDownloadsIfNecessary];
  }
}

- (void)_scheduleBackgroundDownloadsIfNecessary
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    if (*(self + 136) == 1)
    {
      if (([(CPLEngineResourceDownloadQueue *)self _canScheduleBackgroundDownloads]& 1) != 0)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __73__CPLEngineResourceDownloadQueue__scheduleBackgroundDownloadsIfNecessary__block_invoke;
        v7[3] = &unk_1E861A940;
        v7[4] = self;
        v2 = MEMORY[0x1E128EBA0](v7);
        v3 = v2;
        if (__CPLEngineResourceDownloadQueueRequestBackgroundDownloadQueueImmediately == 1)
        {
          (*(v2 + 16))(v2);
        }

        else
        {
          v5 = dispatch_time(0, 2000000000);
          dispatch_after(v5, *(self + 40), v3);
        }
      }

      else if ((*(self + 136) & 1) != 0 && (_CPLSilentLogging & 1) == 0)
      {
        v4 = __CPLStorageOSLogDomain_7908();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Engine needs to download resources in background but there still are active download tasks", v6, 2u);
        }
      }
    }
  }
}

- (uint64_t)_canScheduleBackgroundDownloads
{
  v15 = *MEMORY[0x1E69E9840];
  if (self && ![(CPLEngineResourceDownloadQueue *)self _transportTaskCount])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(self + 48);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v10 + 1) + 8 * v7) countOfTransferTasks])
          {
            v2 = 0;
            goto LABEL_14;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v2 = 1;
LABEL_14:
  }

  else
  {
    v2 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

void __73__CPLEngineResourceDownloadQueue__scheduleBackgroundDownloadsIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 136) == 1)
  {
    if (([(CPLEngineResourceDownloadQueue *)v2 _canScheduleBackgroundDownloads]& 1) != 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v3 = __CPLStorageOSLogDomain_7908();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "We have some background downloads in the queue. Telling the scheduler.", buf, 2u);
        }
      }

      v4 = [*(a1 + 32) engineStore];
      v5 = [v4 engineLibrary];
      v6 = [v5 scheduler];
      [v6 noteResourceDownloadQueueIsFull];

      *(*(a1 + 32) + 136) = 0;
    }

    else if ((*(*(a1 + 32) + 136) & 1) != 0 && (_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Engine needs to download resources in background but there still are active download tasks", v8, 2u);
      }
    }
  }
}

- (uint64_t)_transportTaskCount
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(self + 40));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(self + 48);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) countOfTransportTasks];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)createGroupForBackgroundDownloadsOfResourceType:(unint64_t)type transferIntent:(unint64_t)intent transport:(id)transport
{
  transportCopy = transport;
  v8 = [[CPLResourceTransferTaskOptions alloc] initWithIntent:intent priority:2];
  v9 = (*(self->_lowPriorityQueuePerResourceTypeAndTransferIntent + 2))();
  groupConstructor = [v9 groupConstructor];
  v11 = (groupConstructor)[2](groupConstructor, transportCopy);

  return v11;
}

- (id)downloadTaskForLocalResource:(id)resource clientBundleID:(id)d options:(id)options proposedTaskIdentifier:(id)identifier didStartHandler:(id)handler progressHandler:(id)progressHandler completionHandler:(id)completionHandler
{
  v184 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  dCopy = d;
  optionsCopy = options;
  identifierCopy = identifier;
  handlerCopy = handler;
  progressHandlerCopy = progressHandler;
  completionHandlerCopy = completionHandler;
  if (optionsCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    optionsCopy = +[CPLResourceTransferTaskOptions defaultOptions];
    if (identifierCopy)
    {
      goto LABEL_6;
    }
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  identifierCopy = [uUID UUIDString];

LABEL_6:
  downloadLock = self->_downloadLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __159__CPLEngineResourceDownloadQueue_downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_async(downloadLock, block);
  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __159__CPLEngineResourceDownloadQueue_downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_3;
  v123[3] = &unk_1E861C6F8;
  v123[4] = self;
  v21 = completionHandlerCopy;
  v124 = v21;
  v22 = MEMORY[0x1E128EBA0](v123);
  identity = [resourceCopy identity];
  fileURL = [identity fileURL];
  v25 = fileURL == 0;

  if (v25)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v32 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = resourceCopy;
        _os_log_impl(&dword_1DC05A000, v32, OS_LOG_TYPE_ERROR, "Client asked to download %@ without specifying a destination URL", buf, 0xCu);
      }
    }

    scopeIdentifier = [CPLErrors incorrectParametersErrorForParameter:@"identity.fileURL"];
    v31 = [(CPLEngineResourceDownloadQueue *)self _failedTaskWithCompletionHandler:v22 error:scopeIdentifier resource:resourceCopy taskIdentifier:identifierCopy options:optionsCopy];
    goto LABEL_14;
  }

  engineStore = [(CPLEngineStorage *)self engineStore];
  engineLibrary = [engineStore engineLibrary];
  systemMonitor = [engineLibrary systemMonitor];
  diskPressureState = [systemMonitor diskPressureState];

  if (diskPressureState == 2)
  {
    scopeIdentifier = [CPLErrors cplErrorWithCode:1005 description:@"Disk space is very low"];
    v31 = [(CPLEngineResourceDownloadQueue *)self _failedTaskWithCompletionHandler:v22 error:scopeIdentifier resource:resourceCopy taskIdentifier:identifierCopy options:optionsCopy];
LABEL_14:
    v33 = v31;
    goto LABEL_60;
  }

  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  scopeIdentifier = [itemScopedIdentifier scopeIdentifier];

  if (scopeIdentifier)
  {
    engineStore2 = [(CPLEngineStorage *)self engineStore];
    scopes = [engineStore2 scopes];

    v119 = [scopes scopeWithIdentifier:scopeIdentifier];
    if (!v119)
    {
      v38 = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier];
      v33 = [(CPLEngineResourceDownloadQueue *)self _failedTaskWithCompletionHandler:v22 error:v38 resource:resourceCopy taskIdentifier:identifierCopy options:optionsCopy];

      goto LABEL_58;
    }

    if ([scopes valueForFlag:0x40000 forScope:?])
    {
      v37 = [CPLErrors cplErrorWithCode:1002 description:@"Feature for %@ is disabled", scopeIdentifier];
      v33 = [(CPLEngineResourceDownloadQueue *)self _failedTaskWithCompletionHandler:v22 error:v37 resource:resourceCopy taskIdentifier:identifierCopy options:optionsCopy];

LABEL_58:
      goto LABEL_59;
    }

    v39 = resourceCopy;
    v107 = dCopy;
    v118 = optionsCopy;
    v113 = identifierCopy;
    v109 = handlerCopy;
    v110 = progressHandlerCopy;
    v111 = v22;
    v144 = 0;
    v117 = v39;
    engineStore3 = [(CPLEngineStorage *)self engineStore];
    transactionTransportScopeMapping = [engineStore3 transactionTransportScopeMapping];

    v143 = v117;
    v142 = 0;
    v141 = 0;
    LODWORD(engineStore3) = [v118 allowsUnsafeClientCache];
    shouldBypassCaches = [v118 shouldBypassCaches];
    v140 = 0;
    v116 = [(CPLEngineResourceDownloadQueue *)self _cloudResourceForLocalResource:&v142 cloudRecord:&v141 target:&v144 shouldNotTrustCaches:engineStore3 allowUnsafeClientCache:shouldBypassCaches allowBypassingAllCaches:transactionTransportScopeMapping transportScopeMapping:&v140 error:?];
    v114 = v143;

    v112 = v142;
    v108 = v141;
    v42 = v140;
    v106 = v42;
    if (!v116)
    {
      v33 = [(CPLEngineResourceDownloadQueue *)self _failedTaskWithCompletionHandler:v111 error:v42 resource:v117 taskIdentifier:v113 options:v118];
LABEL_57:

      goto LABEL_58;
    }

    engineStore4 = [(CPLEngineStorage *)self engineStore];
    v138[0] = 0;
    v138[1] = v138;
    v138[2] = 0x2020000000;
    v139 = 0;
    if ([v118 isHighPriority])
    {
      v126 = MEMORY[0x1E69E9820];
      v127 = 3221225472;
      v128 = __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke;
      v129 = &unk_1E861C720;
      v132 = v138;
      v130 = v116;
      v131 = v111;
      v104 = [&v126 copy];

      v43 = v130;
    }

    else
    {
      if ([v118 hasValidTimeRange])
      {
        v104 = [CPLErrors incorrectParametersErrorForParameter:@"timeRange"];
        if ((_CPLSilentLogging & 1) == 0)
        {
          v44 = __CPLStorageOSLogDomain_7908();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v113;
            *&buf[12] = 2112;
            *&buf[14] = v118;
            _os_log_impl(&dword_1DC05A000, v44, OS_LOG_TYPE_ERROR, "Cannot download resource for task %@ with options: %@: a timeRange cannot be specified for this task", buf, 0x16u);
          }
        }

        v33 = [(CPLEngineResourceDownloadQueue *)self _failedTaskWithCompletionHandler:v111 error:v104 resource:v117 taskIdentifier:v113 options:v118];
        goto LABEL_56;
      }

      platformObject = [(CPLEngineStorage *)self platformObject];
      [v114 _setBackgroundDownloadTaskIdentifier:{objc_msgSend(platformObject, "newTaskIdentifier")}];

      [v116 _setBackgroundDownloadTaskIdentifier:{objc_msgSend(v114, "_backgroundDownloadTaskIdentifier")}];
      intent = [v118 intent];
      v137 = 0;
      v47 = [(CPLEngineResourceDownloadQueue *)self enqueueBackgroundDownloadTaskForResource:v114 intent:intent downloading:1 error:&v137];
      v48 = v137;
      if (!v47 && (_CPLSilentLogging & 1) == 0)
      {
        v105 = v48;
        v49 = __CPLStorageOSLogDomain_7908();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v114;
          _os_log_impl(&dword_1DC05A000, v49, OS_LOG_TYPE_ERROR, "Failed to enqueue low priority request for %@", buf, 0xCu);
        }

        v48 = v105;
      }

      v126 = MEMORY[0x1E69E9820];
      v127 = 3221225472;
      v128 = __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_173;
      v129 = &unk_1E861C748;
      v135 = v138;
      v136 = v47;
      v43 = v48;
      v130 = v43;
      v131 = v114;
      v132 = engineStore4;
      selfCopy = self;
      v134 = v111;
      v104 = [&v126 copy];
    }

    if ([v118 hasValidTimeRange])
    {
      goto LABEL_50;
    }

    v50 = v114;
    v80 = v113;
    v82 = v116;
    v84 = v112;
    v86 = v108;
    v89 = v109;
    v93 = v110;
    v95 = v104;
    v166 = 0;
    v167 = &v166;
    v168 = 0x3032000000;
    v169 = __Block_byref_object_copy__7957;
    v170 = __Block_byref_object_dispose__7958;
    v171 = 0;
    engineStore5 = [(CPLEngineStorage *)self engineStore];
    resourceStorage = [engineStore5 resourceStorage];
    v52 = (v167 + 40);
    obj = *(v167 + 40);
    v97 = resourceStorage;
    v101 = [resourceStorage retainFileURLForResource:v50 error:&obj];
    objc_storeStrong(v52, obj);
    if (v101)
    {
      identity2 = [v50 identity];
      fileURL2 = [identity2 fileURL];

      if (!fileURL2)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v71 = __CPLStorageOSLogDomain_7908();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v50;
            _os_log_impl(&dword_1DC05A000, v71, OS_LOG_TYPE_ERROR, "Resource %@ should have a destination URL by now", buf, 0xCu);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineResourceDownloadQueue.m"];
        [currentHandler handleFailureInMethod:sel__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler_ object:self file:v73 lineNumber:917 description:{@"Resource %@ should have a destination URL by now", v50}];

        abort();
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v54 = __CPLStorageOSLogDomain_7908();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v50;
          _os_log_impl(&dword_1DC05A000, v54, OS_LOG_TYPE_DEBUG, "Will link resource %@ from resource storage", buf, 0xCu);
        }
      }

      v163[0] = 0;
      v163[1] = v163;
      v163[2] = 0x2020000000;
      v164 = 0;
      v76 = [CPLEngineResourceDownloadTask alloc];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke;
      v173 = &unk_1E861C7E8;
      selfCopy6 = engineStore5;
      v55 = v50;
      v175 = v55;
      v78 = fileURL2;
      v176 = v78;
      selfCopy2 = self;
      v178 = v101;
      v179 = v97;
      v182 = &v166;
      v74 = v82;
      v180 = v74;
      v75 = v50;
      v56 = v95;
      v181 = v56;
      v183 = v163;
      v155 = MEMORY[0x1E69E9820];
      v156 = 3221225472;
      v157 = __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_202;
      v158 = &unk_1E861C810;
      selfCopy7 = self;
      v162 = v163;
      v57 = v55;
      v160 = v57;
      v58 = v56;
      v161 = v58;
      v153[0] = MEMORY[0x1E69E9820];
      v153[1] = 3221225472;
      v153[2] = __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_204;
      v153[3] = &unk_1E861CCC8;
      v154 = v89;
      v145 = MEMORY[0x1E69E9820];
      v146 = 3221225472;
      v147 = __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2_205;
      v148 = &unk_1E861C838;
      selfCopy5 = self;
      v152 = v163;
      v59 = v57;
      v150 = v59;
      v151 = v58;
      v50 = v75;
      v33 = [(CPLEngineResourceDownloadTask *)v76 initWithResource:v59 taskIdentifier:v80 target:v86 launchHandler:buf cancelHandler:&v155 didStartHandler:v153 progressHandler:v93 completionHandler:&v145];
      [(CPLEngineResourceDownloadTask *)v33 associateCloudResource:v74 ofRecord:v84];

      _Block_object_dispose(v163, 8);
    }

    else if (_CPLSilentLogging)
    {
      v33 = 0;
    }

    else
    {
      v60 = __CPLStorageOSLogDomain_7908();
      v79 = v60;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v61 = *(v167 + 40);
        *buf = 138412546;
        *&buf[4] = v50;
        *&buf[12] = 2112;
        *&buf[14] = v61;
        _os_log_impl(&dword_1DC05A000, v60, OS_LOG_TYPE_DEBUG, "Can't access file in cache for %@: %@", buf, 0x16u);
      }

      v33 = 0;
    }

    _Block_object_dispose(&v166, 8);
    if (!v33)
    {
LABEL_50:
      v90 = v114;
      v94 = v113;
      v96 = v116;
      v98 = v112;
      v100 = v108;
      v87 = v109;
      v102 = v110;
      v85 = v104;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v62 = __CPLStorageOSLogDomain_7908();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v90;
          _os_log_impl(&dword_1DC05A000, v62, OS_LOG_TYPE_DEBUG, "Enqueuing download for cloud resource %@", buf, 0xCu);
        }
      }

      engineStore6 = [(CPLEngineStorage *)self engineStore];
      engineLibrary2 = [engineStore6 engineLibrary];
      scheduler = [engineLibrary2 scheduler];

      v81 = [CPLEngineResourceDownloadTask alloc];
      v145 = MEMORY[0x1E69E9820];
      v146 = 3221225472;
      v147 = __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke;
      v148 = &unk_1E861C860;
      selfCopy5 = self;
      v150 = v90;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_206;
      v173 = &unk_1E861C888;
      selfCopy6 = self;
      v65 = v150;
      v175 = v65;
      v91 = v85;
      v176 = v91;
      v166 = MEMORY[0x1E69E9820];
      v167 = 3221225472;
      v168 = __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_208;
      v169 = &unk_1E861C8B0;
      v170 = scheduler;
      v88 = v87;
      v171 = v88;
      v155 = MEMORY[0x1E69E9820];
      v156 = 3221225472;
      v157 = __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2_209;
      v158 = &unk_1E861C8D8;
      selfCopy7 = self;
      v66 = v65;
      v160 = v66;
      v67 = v91;
      v161 = v67;
      v92 = scheduler;
      v68 = v66;
      v33 = [(CPLEngineResourceDownloadTask *)v81 initWithResource:v66 taskIdentifier:v94 target:v100 launchHandler:&v145 cancelHandler:buf didStartHandler:&v166 progressHandler:v102 completionHandler:&v155];
      [(CPLEngineResourceDownloadTask *)v33 associateCloudResource:v96 ofRecord:v98];
    }

    [(CPLResourceTransferTask *)v33 setClientBundleID:v107];
    [(CPLEngineResourceDownloadTask *)v33 associateCloudResource:v116 ofRecord:v112];
    [(CPLEngineResourceDownloadTask *)v33 setTransportScopeMapping:transactionTransportScopeMapping];
    [(CPLResourceTransferTask *)v33 setOptions:v118];
LABEL_56:

    _Block_object_dispose(v138, 8);
    goto LABEL_57;
  }

  scopes = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
  v33 = [(CPLEngineResourceDownloadQueue *)self _failedTaskWithCompletionHandler:v22 error:scopes resource:resourceCopy taskIdentifier:identifierCopy options:optionsCopy];
LABEL_59:

LABEL_60:
  v69 = *MEMORY[0x1E69E9840];

  return v33;
}

void __159__CPLEngineResourceDownloadQueue_downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 104);
  v2 = ++*(*(a1 + 32) + 112);
  v3 = dispatch_time(0, 5000000000);
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __159__CPLEngineResourceDownloadQueue_downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_2;
  v6[3] = &unk_1E861B100;
  v6[4] = v4;
  v6[5] = v2;
  dispatch_after(v3, v5, v6);
}

void __159__CPLEngineResourceDownloadQueue_downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __159__CPLEngineResourceDownloadQueue_downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_4;
  block[3] = &unk_1E861A940;
  block[4] = v7;
  dispatch_async(v8, block);
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (CPLEngineResourceDownloadTask)_failedTaskWithCompletionHandler:(void *)handler error:(void *)error resource:(void *)resource taskIdentifier:(void *)identifier options:
{
  v11 = a2;
  handlerCopy = handler;
  if (self)
  {
    identifierCopy = identifier;
    resourceCopy = resource;
    errorCopy = error;
    v16 = [CPLRecordTarget alloc];
    itemScopedIdentifier = [errorCopy itemScopedIdentifier];
    v18 = [(CPLRecordTarget *)v16 initWithScopedIdentifier:itemScopedIdentifier];

    v19 = [CPLEngineResourceDownloadTask alloc];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __105__CPLEngineResourceDownloadQueue__failedTaskWithCompletionHandler_error_resource_taskIdentifier_options___block_invoke;
    v24[3] = &unk_1E861C770;
    v25 = handlerCopy;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __105__CPLEngineResourceDownloadQueue__failedTaskWithCompletionHandler_error_resource_taskIdentifier_options___block_invoke_3;
    v22[3] = &unk_1E861CD18;
    v23 = v11;
    v20 = [(CPLEngineResourceDownloadTask *)v19 initWithResource:errorCopy taskIdentifier:resourceCopy target:v18 launchHandler:v24 cancelHandler:&__block_literal_global_190 didStartHandler:0 progressHandler:0 completionHandler:v22];

    [(CPLResourceTransferTask *)v20 setOptions:identifierCopy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_cloudResourceForLocalResource:(void *)resource cloudRecord:(void *)record target:(_BYTE *)target shouldNotTrustCaches:(int)caches allowUnsafeClientCache:(int)cache allowBypassingAllCaches:(void *)allCaches transportScopeMapping:(void *)mapping error:
{
  v120 = *MEMORY[0x1E69E9840];
  allCachesCopy = allCaches;
  if (self)
  {
    *target = 0;
    selfCopy = self;
    engineStore = [self engineStore];
    scopes = [engineStore scopes];

    identity = [*a2 identity];
    itemScopedIdentifier = [*a2 itemScopedIdentifier];
    v19 = [itemScopedIdentifier copy];

    if (!v19)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v20 = __CPLStorageOSLogDomain_7908();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = *a2;
          *buf = 138412290;
          v117 = v21;
          _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "Client is asking to download %@ but did not provide an item identifier", buf, 0xCu);
        }
      }

      if (mapping)
      {
        *mapping = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
      }
    }

    scopeIdentifier = [v19 scopeIdentifier];
    v109 = scopeIdentifier;
    recordCopy = record;
    if (scopeIdentifier)
    {
      if (v19)
      {
        v23 = [scopes scopeWithIdentifier:scopeIdentifier];
        if (v23)
        {
          v24 = v23;
          localIndex = [v23 localIndex];
          v25 = 1;
LABEL_28:
          fingerPrint = [identity fingerPrint];
          v110 = fingerPrint;
          if (v25 && !fingerPrint)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v32 = __CPLStorageOSLogDomain_7908();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = *a2;
                *buf = 138412290;
                v117 = v33;
                _os_log_impl(&dword_1DC05A000, v32, OS_LOG_TYPE_ERROR, "Client asked to download %@ without specifying a finger print", buf, 0xCu);
              }
            }

            if (mapping)
            {
              *mapping = [CPLErrors incorrectParametersErrorForParameter:@"identity.fingerPrint"];
            }

            fileURL = [identity fileURL];
            goto LABEL_45;
          }

          fileURL = [identity fileURL];
          if (!v25)
          {
LABEL_45:
            v42 = 0;
            mappingCopy = 0;
            v44 = 0;
LABEL_118:

            goto LABEL_119;
          }

          targetCopy = target;
          v35 = v24;
          v36 = identity;
          v97 = fileURL;
          v101 = scopes;
          engineStore2 = [selfCopy engineStore];
          [engineStore2 idMapping];
          v96 = v95 = engineStore2;
          transactionClientCacheView = [engineStore2 transactionClientCacheView];
          resourceType = [*a2 resourceType];
          if (resource)
          {
            v40 = &v115;
          }

          else
          {
            v40 = 0;
          }

          if (resource)
          {
            v115 = 0;
          }

          v114 = 0;
          v41 = [transactionClientCacheView resourceOfType:resourceType forRecordWithScopedIdentifier:v19 record:v40 error:&v114];
          v98 = allCachesCopy;
          if (resource)
          {
            v94 = v115;
          }

          else
          {
            v94 = 0;
          }

          v100 = v114;
          v45 = [v41 copy];

          if (!v45 && caches && [v100 isCPLErrorWithCode:25])
          {
            buf[0] = 0;
            [v96 cloudScopedIdentifierForLocalScopedIdentifier:v19 isFinal:buf];
            scopes = v101;
            v106 = identity = v36;
            if (v106)
            {
              cacheCopy = cache;
LABEL_52:
              v92 = cacheCopy;
              v45 = [*a2 copy];
              *targetCopy = 1;
              goto LABEL_54;
            }

            v70 = [v101 hasFinishedInitialSyncForScope:v35];
            cacheCopy = 1;
            if (!v70 || cache)
            {
              goto LABEL_52;
            }

            v92 = 0;
            v45 = 0;
          }

          else
          {
            scopes = v101;
            v106 = 0;
            v92 = [v101 hasFinishedInitialSyncForScope:v35] ^ 1 | cache;
            identity = v36;
          }

LABEL_54:
          v99 = v45;
          if (!v45)
          {
            v24 = v35;
            v42 = 0;
            v55 = 0;
            mappingCopy = 0;
            if (mapping)
            {
              *mapping = v100;
            }

            goto LABEL_76;
          }

          v47 = v110;
          identity2 = [v45 identity];
          fingerPrint2 = [identity2 fingerPrint];

          v24 = v35;
          if (v110 && fingerPrint2)
          {
            v50 = [v47 isEqual:fingerPrint2];

            v51 = targetCopy;
            if ((v50 & 1) == 0)
            {
LABEL_58:
              mappingCopy = mapping;
              if (mapping)
              {
                v52 = *a2;
                identity3 = [v99 identity];
                fingerPrint3 = [identity3 fingerPrint];
                *mapping = [CPLErrors cplErrorWithCode:27 description:@"%@ is stale (client cache fingerprint is %@)", v52, fingerPrint3];

                v42 = 0;
                v55 = 0;
                mappingCopy = 0;
              }

              else
              {
                v42 = 0;
                v55 = 0;
              }

              scopes = v101;
LABEL_76:
              v62 = v94;
LABEL_100:

              if (v55 && !mappingCopy)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v82 = __CPLStorageOSLogDomain_7908();
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1DC05A000, v82, OS_LOG_TYPE_ERROR, "We should have a cloud resource here", buf, 2u);
                  }
                }

                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineResourceDownloadQueue.m"];
                v85 = @"We should have a cloud resource here";
                v86 = currentHandler;
                v87 = selfCopy;
                v88 = v84;
                v89 = 620;
              }

              else
              {
                if (!v55)
                {
                  v44 = 0;
                  allCachesCopy = v98;
LABEL_117:
                  fileURL = v97;
                  goto LABEL_118;
                }

                if (v24)
                {
                  cloudIndex = [v24 cloudIndex];
                  itemScopedIdentifier2 = [*a2 itemScopedIdentifier];
                  [itemScopedIdentifier2 setScopeIndex:localIndex];

                  itemScopedIdentifier3 = [mappingCopy itemScopedIdentifier];
                  [itemScopedIdentifier3 setScopeIndex:cloudIndex];

                  itemScopedIdentifier4 = [mappingCopy itemScopedIdentifier];
                  scopeIdentifier2 = [itemScopedIdentifier4 scopeIdentifier];

                  v111 = 0;
                  LODWORD(itemScopedIdentifier4) = [v98 addTransportScopeForScope:v24 scopes:scopes allowsTentativeTransportScope:v92 useStagingScopeIfNecessary:1 error:&v111];
                  v76 = v111;
                  if (itemScopedIdentifier4)
                  {
                    [mappingCopy _setBackgroundDownloadTaskIdentifier:{objc_msgSend(*a2, "_backgroundDownloadTaskIdentifier")}];
                    if (resource)
                    {
                      v77 = v42;
                      *resource = v42;
                    }

                    v44 = mappingCopy;
                    allCachesCopy = v98;
                  }

                  else
                  {
                    allCachesCopy = v98;
                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v78 = __CPLStorageOSLogDomain_7908();
                      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543618;
                        v117 = scopeIdentifier2;
                        v118 = 2112;
                        v119 = v76;
                        _os_log_impl(&dword_1DC05A000, v78, OS_LOG_TYPE_ERROR, "Can't find a transport scope for %{public}@: %@", buf, 0x16u);
                      }
                    }

                    if (mapping)
                    {
                      v79 = v76;
                      v44 = 0;
                      *mapping = v76;
                    }

                    else
                    {
                      v44 = 0;
                    }
                  }

                  scopes = v101;
                  goto LABEL_117;
                }

                if ((_CPLSilentLogging & 1) == 0)
                {
                  v90 = __CPLStorageOSLogDomain_7908();
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1DC05A000, v90, OS_LOG_TYPE_ERROR, "We should have a scope here", buf, 2u);
                  }
                }

                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineResourceDownloadQueue.m"];
                v85 = @"We should have a scope here";
                v86 = currentHandler;
                v87 = selfCopy;
                v88 = v84;
                v89 = 623;
              }

              [v86 handleFailureInMethod:sel__cloudResourceForLocalResource_cloudRecord_target_shouldNotTrustCaches_allowUnsafeClientCache_allowBypassingAllCaches_transportScopeMapping_error_ object:v87 file:v88 lineNumber:v89 description:v85];

              abort();
            }
          }

          else
          {

            v51 = targetCopy;
            if (v110 | fingerPrint2)
            {
              goto LABEL_58;
            }
          }

          [v99 _setBackgroundDownloadTaskIdentifier:{objc_msgSend(*a2, "_backgroundDownloadTaskIdentifier")}];
          v56 = v99;
          *a2 = v99;
          identity4 = [v56 identity];
          [identity4 setFileURL:v97];

          v58 = v106;
          if (!v106)
          {
            buf[0] = 0;
            v58 = [v96 cloudScopedIdentifierForLocalScopedIdentifier:v19 isFinal:buf];
            if (!v58)
            {
              v58 = [v19 copy];
              *v51 = 1;
            }
          }

          cloudCache = [v95 cloudCache];
          resourceType2 = [*a2 resourceType];
          if (resource)
          {
            v61 = &v113;
          }

          else
          {
            v61 = 0;
          }

          if (resource)
          {
            v113 = 0;
          }

          v112 = 0;
          mappingCopy = [cloudCache resourceOfType:resourceType2 forRecordWithScopedIdentifier:v58 record:v61 target:recordCopy error:&v112];
          if (resource)
          {
            v42 = v113;
          }

          else
          {
            v42 = 0;
          }

          v103 = v112;

          v106 = v58;
          if (!mappingCopy)
          {
            if (![v103 isCPLErrorWithCode:25] || (mappingCopy = objc_msgSend(*a2, "copy"), objc_msgSend(mappingCopy, "setItemScopedIdentifier:", v58), !mappingCopy))
            {
              mappingCopy = 0;
              v55 = 0;
              if (mapping)
              {
                *mapping = v103;
              }

              goto LABEL_97;
            }
          }

          v63 = v47;
          identity5 = [mappingCopy identity];
          fingerPrint4 = [identity5 fingerPrint];

          if (v110 && fingerPrint4)
          {
            v66 = [v63 isEqual:fingerPrint4];

            if ((v66 & 1) == 0)
            {
LABEL_82:
              v62 = v94;
              if (mapping)
              {
                v91 = *a2;
                identity6 = [mappingCopy identity];
                fingerPrint5 = [identity6 fingerPrint];
                *mapping = [CPLErrors cplErrorWithCode:27 description:@"%@ is stale (cloud cache fingerprint is %@)", v91, fingerPrint5];
              }

              v55 = 0;
              scopes = v101;
              goto LABEL_99;
            }
          }

          else
          {

            if (v110 | fingerPrint4)
            {
              goto LABEL_82;
            }
          }

          identity7 = [mappingCopy identity];
          [identity7 setFileURL:v97];

          v55 = 1;
          if (resource)
          {
            scopes = v101;
            if (!v42)
            {
              v62 = v94;
              if (v94)
              {
                v42 = [v94 translateToCloudRecordUsingIDMapping:v96];
              }

              goto LABEL_99;
            }

            goto LABEL_98;
          }

LABEL_97:
          scopes = v101;
LABEL_98:
          v62 = v94;
LABEL_99:

          goto LABEL_100;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v29 = __CPLStorageOSLogDomain_7908();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = *a2;
            *buf = 138412290;
            v117 = v30;
            _os_log_impl(&dword_1DC05A000, v29, OS_LOG_TYPE_ERROR, "Client is asking to download %@ but scope is unknown", buf, 0xCu);
          }
        }

        if (mapping)
        {
          v28 = [CPLErrors invalidScopeErrorWithScopedIdentifier:v19];
          goto LABEL_25;
        }
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v26 = __CPLStorageOSLogDomain_7908();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = *a2;
          *buf = 138412290;
          v117 = v27;
          _os_log_impl(&dword_1DC05A000, v26, OS_LOG_TYPE_ERROR, "Client is asking to download %@ with an invalid scope identifier", buf, 0xCu);
        }
      }

      if (mapping)
      {
        v28 = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
LABEL_25:
        v24 = 0;
        v25 = 0;
        *mapping = v28;
LABEL_27:
        localIndex = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_28;
      }
    }

    v24 = 0;
    v25 = 0;
    goto LABEL_27;
  }

  v44 = 0;
LABEL_119:

  v80 = *MEMORY[0x1E69E9840];

  return v44;
}

void __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1[6] + 8);
  if (*(v8 + 24) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v5;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Completion handler for %@ has been called twice", &v15, 0xCu);
      }
    }
  }

  else
  {
    *(v8 + 24) = 1;
    if (v6 && ([v6 isCPLOperationCancelledError] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v5 taskIdentifier];
        v12 = a1[4];
        v15 = 138412802;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Failed to download high priority task %@ for cloud resource %@: %@", &v15, 0x20u);
      }
    }

    v13 = a1[5];
    if (v13)
    {
      (*(v13 + 16))(v13, v5, v7);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_173(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 72) + 8);
  if (*(v8 + 24) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v5;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Completion handler for %@ has been called twice", buf, 0xCu);
      }
    }
  }

  else
  {
    *(v8 + 24) = 1;
    if (v6)
    {
      if ((*(a1 + 80) & 1) == 0)
      {
        if ([v6 isCPLErrorWithCode:10])
        {
          v10 = *(a1 + 32);
          if (v10)
          {
            v11 = v10;

            v7 = v11;
          }
        }
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 80))
        {
          v13 = @"enqueued ";
        }

        else
        {
          v13 = &stru_1F57BD298;
        }

        v14 = +[CPLResource descriptionForResourceType:](CPLResource, "descriptionForResourceType:", [*(a1 + 40) resourceType]);
        v15 = [*(a1 + 40) itemScopedIdentifier];
        v16 = [*(a1 + 40) _backgroundDownloadTaskIdentifier];
        *buf = 138413314;
        v32 = v13;
        v33 = 2112;
        v34 = v14;
        v35 = 2112;
        v36 = v15;
        v37 = 2048;
        v38 = v16;
        v39 = 2112;
        v40 = v7;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Low priority %@download for %@ %@ (%lu) has finished with error %@", buf, 0x34u);
      }
    }

    if (*(a1 + 80) == 1)
    {
      v17 = *(a1 + 48);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_180;
      v26[3] = &unk_1E861F1D0;
      v27 = v7;
      v18 = v5;
      v19 = *(a1 + 56);
      v28 = v18;
      v29 = v19;
      v30 = *(a1 + 40);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_185;
      v22[3] = &unk_1E861F9D8;
      v25 = *(a1 + 64);
      v23 = v18;
      v7 = v27;
      v24 = v7;
      [v17 performBatchedWriteTransactionWithBlock:v26 completionHandler:v22];
    }

    else
    {
      v20 = *(a1 + 64);
      if (v20)
      {
        (*(v20 + 16))(v20, v5, v7);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 isHighPriority];
  v4 = [v3 resource];
  [v4 resourceType];
  [v3 hash];
  kdebug_trace();

  v5 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2;
  v12[3] = &unk_1E861B1C8;
  v13 = v3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v14 = v6;
  v15 = v7;
  v8 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7920;
  block[3] = &unk_1E861B4E0;
  v17 = v8;
  v9 = v5;
  v10 = v3;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

void __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_206(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2_207;
  v11[3] = &unk_1E861B018;
  v12 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 48);
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7920;
  block[3] = &unk_1E861B4E0;
  v17 = v7;
  v8 = v4;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_208(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 isHighPriority];
  v3 = [v6 resource];
  [v3 resourceType];
  [v6 hash];
  kdebug_trace();

  [v6 isHighPriority];
  v4 = [v6 resource];
  [v4 resourceType];
  [v6 hash];
  kdebug_trace();

  [*(a1 + 32) willRunEngineElement:CPLEngineElementDownloadResource];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2_209(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861B018;
  v14 = v5;
  v15 = *(a1 + 40);
  v16 = v6;
  v17 = *(a1 + 48);
  v8 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7920;
  block[3] = &unk_1E861B4E0;
  v19 = v8;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v12);
}

uint64_t __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStorageOSLogDomain_7908();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v11 = 138412802;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ for %@ did finish with error %@", &v11, 0x20u);
    }
  }

  [*(a1 + 32) isHighPriority];
  v6 = [*(a1 + 32) resource];
  [v6 resourceType];
  [*(a1 + 32) hash];
  kdebug_trace();

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2_207(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStorageOSLogDomain_7908();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Cancelling %@ for %@", &v12, 0x16u);
    }
  }

  v5 = [*(a1 + 32) transportTask];
  v6 = v5;
  if (v5)
  {
    [v5 cancelDownloadTask:*(a1 + 32)];
  }

  else
  {
    [(CPLEngineResourceDownloadQueue *)*(a1 + 48) _dequeueTransferTaskInActiveQueue:?];
    [*(a1 + 32) isHighPriority];
    v7 = [*(a1 + 32) resource];
    [v7 resourceType];
    [*(a1 + 32) hash];
    kdebug_trace();

    v8 = *(a1 + 56);
    v9 = *(a1 + 32);
    v10 = +[CPLErrors operationCancelledError];
    (*(v8 + 16))(v8, v9, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_dequeueTransferTaskInActiveQueue:(uint64_t)queue
{
  if (queue)
  {
    v3 = *(queue + 40);
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    v5 = [(CPLEngineResourceDownloadQueue *)queue _activeQueueForTransferTask:v4];
    [v5 removeTransferTask:v4];

    [(CPLEngineResourceDownloadQueue *)queue _scheduleBackgroundDownloadsIfNecessary];
  }
}

- (id)_activeQueueForTransferTask:(uint64_t)task
{
  v3 = a2;
  resource = [v3 resource];
  resourceType = [resource resourceType];

  options = [v3 options];
  isHighPriority = [options isHighPriority];

  v8 = &OBJC_IVAR___CPLEngineResourceDownloadQueue__lowPriorityQueuePerResourceTypeAndTransferIntent;
  if (isHighPriority)
  {
    v8 = &OBJC_IVAR___CPLEngineResourceDownloadQueue__highPriorityQueuePerResourceTypeAndTransferIntent;
  }

  v9 = *(task + *v8);
  options2 = [v3 options];
  v11 = (*(v9 + 16))(v9, resourceType, options2);

  return v11;
}

void __163__CPLEngineResourceDownloadQueue__realDownloadTaskForLocalResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStorageOSLogDomain_7908();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Enqueuing %@ for %@", &v6, 0x16u);
    }
  }

  [(CPLEngineResourceDownloadQueue *)*(a1 + 48) _enqueueTransferTaskInActiveQueue:?];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueTransferTaskInActiveQueue:(uint64_t)queue
{
  v3 = a2;
  if (queue)
  {
    dispatch_assert_queue_V2(*(queue + 40));
    if ([v3 willGenerateReport])
    {
      _queuesStatus = [(CPLEngineResourceDownloadQueue *)queue _queuesStatus];
      [v3 noteActiveQueuesStatusAtEnqueingTime:_queuesStatus];
    }

    v5 = [(CPLEngineResourceDownloadQueue *)queue _activeQueueForTransferTask:v3];
    [v5 addTransferTask:v3];
    coalescingInterval = [v5 coalescingInterval];
    if (coalescingInterval < 1)
    {
      [(CPLEngineResourceDownloadQueue *)queue _launchTransportTaskForQueue:v5];
    }

    else
    {
      if (__CPLEngineResourceDownloadQueueRequestBackgroundDownloadQueueImmediately == 1)
      {
        v7 = *(queue + 40);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __68__CPLEngineResourceDownloadQueue__enqueueTransferTaskInActiveQueue___block_invoke;
        v16[3] = &unk_1E861B290;
        v16[4] = queue;
        v17 = v5;
        v8 = v16;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __cpl_dispatch_async_block_invoke_7920;
        block[3] = &unk_1E861B4E0;
        v19 = v8;
        v9 = v7;
        v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(v9, v10);

        v11 = v17;
      }

      else
      {
        v12 = dispatch_time(0, coalescingInterval);
        v13 = *(queue + 40);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __68__CPLEngineResourceDownloadQueue__enqueueTransferTaskInActiveQueue___block_invoke_2;
        v14[3] = &unk_1E861B290;
        v14[4] = queue;
        v15 = v5;
        dispatch_after(v12, v13, v14);
        v11 = v15;
      }
    }
  }
}

- (uint64_t)_launchTransportTaskForQueue:(uint64_t)queue
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (queue)
  {
    if (![v3 countOfTransferTasks])
    {
      goto LABEL_73;
    }

    isHighPriority = [v4 isHighPriority];
    if (isHighPriority)
    {
LABEL_19:
      maximumConcurrentTransportTasks = [v4 maximumConcurrentTransportTasks];
      if ([v4 countOfTransportTasks] < maximumConcurrentTransportTasks)
      {
        if ([(CPLEngineResourceDownloadQueue *)queue _transportTaskCount]< 8)
        {
LABEL_60:
          *buf = 0;
          v49 = [v4 dequeueBatchOfTransferTasksDequeuedSize:buf];
          if ([v49 count])
          {
            engineStore = [queue engineStore];
            engineLibrary = [engineStore engineLibrary];
            transport = [engineLibrary transport];

            v69[0] = MEMORY[0x1E69E9820];
            v69[1] = 3221225472;
            v69[2] = __63__CPLEngineResourceDownloadQueue__launchTransportTaskForQueue___block_invoke;
            v69[3] = &unk_1E861C900;
            v69[4] = queue;
            v53 = v4;
            v70 = v53;
            v54 = [transport resourcesDownloadTaskWithCompletionHandler:v69];
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v55 = v49;
            v56 = [v55 countByEnumeratingWithState:&v65 objects:v87 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v66;
              do
              {
                for (i = 0; i != v57; ++i)
                {
                  if (*v66 != v58)
                  {
                    objc_enumerationMutation(v55);
                  }

                  [*(*(&v65 + 1) + 8 * i) setTransportTask:{v54, v65}];
                }

                v57 = [v55 countByEnumeratingWithState:&v65 objects:v87 count:16];
              }

              while (v57);
            }

            [v54 setDownloadTasks:v55];
            type = [v53 type];
            if (type != 2)
            {
              if (type != 1)
              {
                if (!type)
                {
                  [v54 setBackgroundTask:1];
                }

                goto LABEL_77;
              }

              [v54 setForcedTask:1];
            }

            [v54 setForeground:{1, v65}];
LABEL_77:
            groupConstructor = [v53 groupConstructor];
            v64 = (groupConstructor)[2](groupConstructor, transport);

            [v64 setRoughCPLRecordCount:{objc_msgSend(v55, "count")}];
            [v64 setRoughCPLDownloadEstimatedSize:*buf];
            [v54 setTransportGroup:v64];
            [v53 addTransportTask:v54];
            [v54 runWithNoSyncSession];

            queue = 1;
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        if (isHighPriority)
        {
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v23 = *(queue + 80);
          v24 = [v23 countByEnumeratingWithState:&v83 objects:buf count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v84;
LABEL_24:
            v27 = 0;
            while (1)
            {
              if (*v84 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v83 + 1) + 8 * v27);
              if ([v28 countOfTransportTasks])
              {
                break;
              }

              if (v25 == ++v27)
              {
                v25 = [v23 countByEnumeratingWithState:&v83 objects:buf count:16];
                if (v25)
                {
                  goto LABEL_24;
                }

                goto LABEL_30;
              }
            }
          }

          else
          {
LABEL_30:

            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v23 = *(queue + 72);
            v29 = [v23 countByEnumeratingWithState:&v79 objects:v90 count:16];
            if (!v29)
            {
LABEL_38:

              goto LABEL_73;
            }

            v30 = v29;
            v31 = *v80;
LABEL_32:
            v32 = 0;
            while (1)
            {
              if (*v80 != v31)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v79 + 1) + 8 * v32);
              if ([v28 countOfTransportTasks])
              {
                break;
              }

              if (v30 == ++v32)
              {
                v30 = [v23 countByEnumeratingWithState:&v79 objects:v90 count:16];
                if (v30)
                {
                  goto LABEL_32;
                }

                goto LABEL_38;
              }
            }
          }

          v42 = v28;

          if (v42)
          {
            dequeueLastTransportTask = [v42 dequeueLastTransportTask];
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            downloadTasks = [dequeueLastTransportTask downloadTasks];
            v45 = [downloadTasks countByEnumeratingWithState:&v71 objects:v88 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v72;
              do
              {
                for (j = 0; j != v46; ++j)
                {
                  if (*v72 != v47)
                  {
                    objc_enumerationMutation(downloadTasks);
                  }

                  [*(*(&v71 + 1) + 8 * j) setCancelledByEngine:1];
                }

                v46 = [downloadTasks countByEnumeratingWithState:&v71 objects:v88 count:16];
              }

              while (v46);
            }

            [dequeueLastTransportTask cancel];
            goto LABEL_60;
          }
        }
      }

LABEL_73:
      queue = 0;
      goto LABEL_74;
    }

    engineStore2 = [queue engineStore];
    engineLibrary2 = [engineStore2 engineLibrary];
    scheduler = [engineLibrary2 scheduler];

    if (([scheduler isClientInForeground] & 1) == 0)
    {
      v11 = [CPLErrors cplErrorWithCode:10 description:@"Client is in background. Will download resource in background"];
      v14 = v11;
      v13 = 0;
      v10 = 0;
      goto LABEL_17;
    }

    *buf = 0;
    v9 = [scheduler isSynchronizationDisabledWithReasonError:buf];
    v10 = *buf;
    if (v9)
    {
      v11 = [CPLErrors cplErrorWithCode:10 underlyingError:v10 description:@"Synchronization is disabled. Will download resource in background"];
      v12 = v11;
      v13 = 0;
LABEL_17:

      v20 = v11;
      v21 = v20;
      if ((v13 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v33 = __CPLStorageOSLogDomain_7908();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            countOfTransferTasks = [v4 countOfTransferTasks];
            *buf = 134217984;
            *&buf[4] = countOfTransferTasks;
            _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_DEFAULT, "Enqueuing %lu background downloads", buf, 0xCu);
          }
        }

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        allTransferTasks = [v4 allTransferTasks];
        v36 = [allTransferTasks countByEnumeratingWithState:&v75 objects:v89 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v76;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v76 != v38)
              {
                objc_enumerationMutation(allTransferTasks);
              }

              v40 = *(*(&v75 + 1) + 8 * k);
              completionHandler = [v40 completionHandler];
              (completionHandler)[2](completionHandler, v40, v21);
            }

            v37 = [allTransferTasks countByEnumeratingWithState:&v75 objects:v89 count:16];
          }

          while (v37);
        }

        [v4 removeAllTransferTasks];
        [(CPLEngineResourceDownloadQueue *)queue _scheduleBackgroundDownloadsIfNecessary];

        goto LABEL_73;
      }

      goto LABEL_19;
    }

    engineStore3 = [queue engineStore];
    engineLibrary3 = [engineStore3 engineLibrary];
    systemMonitor = [engineLibrary3 systemMonitor];

    if ([systemMonitor isOnCellularOrUnknown] && (objc_msgSend(systemMonitor, "isDataBudgetOverriden") & 1) != 0)
    {
      v18 = @"On cellular with Data override. Will download resource in background";
    }

    else if ([systemMonitor isNetworkConstrained])
    {
      v18 = @"On constrained network. Will download resource in background";
    }

    else
    {
      if (![systemMonitor diskPressureState])
      {
        v11 = 0;
        v13 = 1;
        goto LABEL_16;
      }

      v18 = @"Low disk space. Will download resource in background";
    }

    v11 = [CPLErrors cplErrorWithCode:10 description:v18];
    v19 = v11;
    v13 = 0;
LABEL_16:

    goto LABEL_17;
  }

LABEL_74:

  v61 = *MEMORY[0x1E69E9840];
  return queue;
}

void __63__CPLEngineResourceDownloadQueue__launchTransportTaskForQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CPLEngineResourceDownloadQueue__launchTransportTaskForQueue___block_invoke_2;
  v9[3] = &unk_1E861B1C8;
  v10 = *(a1 + 40);
  v11 = v3;
  v12 = *(a1 + 32);
  v5 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7920;
  block[3] = &unk_1E861B4E0;
  v14 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

void __63__CPLEngineResourceDownloadQueue__launchTransportTaskForQueue___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) removeTransportTask:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 40));
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = *(v2 + 56);
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        v7 = 0;
        do
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v20 + 1) + 8 * v7);
            ;
          }

          ++v7;
        }

        while (v7 != v5);
        v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v5);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = *(v2 + 64);
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
            ;
          }

          ++v13;
        }

        while (v13 != v11);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v11);
    }

    if ([(CPLEngineResourceDownloadQueue *)v2 _canScheduleBackgroundDownloads])
    {
      [(CPLEngineResourceDownloadQueue *)v2 _scheduleBackgroundDownloadsIfNecessary];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 isHighPriority];
  v4 = [v3 resource];
  [v4 resourceType];
  [v3 hash];
  kdebug_trace();

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 1;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2;
  v25[3] = &unk_1E861C798;
  v5 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = v3;
  v30 = v32;
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  v16 = v6;
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v28 = v16;
  v29 = v9;
  v31 = *(a1 + 96);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_198;
  v17[3] = &unk_1E861C7C0;
  v18 = *(a1 + 80);
  v10 = *(a1 + 48);
  v23 = v32;
  v11 = *(a1 + 56);
  v19 = v10;
  v20 = v11;
  v12 = v27;
  v21 = v12;
  v13 = *(a1 + 88);
  v14 = *(a1 + 104);
  v22 = v13;
  v24 = v14;
  v15 = [v5 performWriteTransactionWithBlock:v25 completionHandler:v17];

  _Block_object_dispose(v32, 8);
}

void __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_202(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2_203;
  v13[3] = &unk_1E861EE38;
  v14 = v3;
  v5 = *(a1 + 56);
  *&v6 = *(a1 + 40);
  *(&v6 + 1) = *(a1 + 32);
  v12 = v6;
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v15 = v12;
  v16 = v7;
  v8 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7920;
  block[3] = &unk_1E861B4E0;
  v18 = v8;
  v9 = v4;
  v10 = v3;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

void __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_204(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 isHighPriority];
  v3 = [v6 resource];
  [v3 resourceType];
  [v6 hash];
  kdebug_trace();

  [v6 isHighPriority];
  v4 = [v6 resource];
  [v4 resourceType];
  [v6 hash];
  kdebug_trace();

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2_205(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861EE38;
  v18 = *(a1 + 56);
  v14 = v5;
  v15 = *(a1 + 40);
  v16 = v6;
  v17 = *(a1 + 48);
  v8 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7920;
  block[3] = &unk_1E861B4E0;
  v20 = v8;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v12);
}

uint64_t __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_3(uint64_t result)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 64) + 8) + 24) == 1)
  {
    v1 = result;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = *(v1 + 32);
        v4 = *(v1 + 40);
        v5 = *(v1 + 48);
        v10 = 138412802;
        v11 = v3;
        v12 = 2112;
        v13 = v4;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ for %@ did finish with error %@", &v10, 0x20u);
      }
    }

    [*(v1 + 32) isHighPriority];
    v6 = [*(v1 + 32) resource];
    [v6 resourceType];
    [*(v1 + 32) hash];
    kdebug_trace();

    v7 = *(v1 + 32);
    v8 = *(v1 + 48);
    result = (*(*(v1 + 56) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2_203(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = *(a1 + 32);
        v4 = *(a1 + 40);
        v12 = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Cancelling %@ for %@", &v12, 0x16u);
      }
    }

    v5 = [*(a1 + 32) transportTask];
    v6 = v5;
    if (v5)
    {
      [v5 cancelDownloadTask:*(a1 + 32)];
    }

    else
    {
      [(CPLEngineResourceDownloadQueue *)*(a1 + 48) _dequeueTransferTaskInActiveQueue:?];
      [*(a1 + 32) isHighPriority];
      v7 = [*(a1 + 32) resource];
      [v7 resourceType];
      [*(a1 + 32) hash];
      kdebug_trace();

      v8 = *(a1 + 56);
      v9 = *(a1 + 32);
      v10 = +[CPLErrors operationCancelledError];
      (*(v8 + 16))(v8, v9, v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLStorageOSLogDomain_7908();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Linking %@ from resource storage", buf, 0xCu);
    }
  }

  if ([*(a1 + 40) isCancelled])
  {
    v6 = +[CPLErrors operationCancelledError];
    [v3 setError:v6];
  }

  v7 = [v3 error];

  if (v7)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_196;
    v21[3] = &unk_1E8620968;
    v22 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v23 = v8;
    v24 = v9;
    v25 = v10;
    [v3 do:v21];
  }

  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = *(a1 + 32);
  v14 = *(*(a1 + 88) + 8);
  obj = *(v14 + 40);
  v15 = [v11 releaseFileURL:v12 forResource:v13 error:&obj];
  objc_storeStrong((v14 + 40), obj);
  if ((v15 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLStorageOSLogDomain_7908();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [*(a1 + 64) path];
      v18 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138412546;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEBUG, "Failed to release cached URL %@: %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_198(uint64_t a1, void *a2)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = [*(a1 + 40) path];
        v8 = [v3 error];
        v9 = v8;
        if (*(*(*(a1 + 72) + 8) + 24))
        {
          v10 = " - will fallback on transport";
        }

        else
        {
          v10 = "";
        }

        *buf = 138413058;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        *&buf[22] = 2112;
        v35 = v8;
        LOWORD(v36[0]) = 2080;
        *(v36 + 2) = v10;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Failed to link cached resource %@ to %@. Error: %@%s", buf, 0x2Au);
      }
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v11 = *(*(a1 + 48) + 40);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_201;
      v28[3] = &unk_1E861EE38;
      v29 = *(a1 + 56);
      v30 = *(a1 + 32);
      v12 = *(a1 + 64);
      v13 = *(a1 + 80);
      v32 = v12;
      v33 = v13;
      v31 = *(a1 + 48);
      v14 = v28;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __cpl_dispatch_async_block_invoke_7920;
      v35 = &unk_1E861B4E0;
      v36[0] = v14;
      v15 = v11;
      v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v15, v16);
    }

    else
    {
      [*(a1 + 56) isHighPriority];
      v22 = [*(a1 + 56) resource];
      [v22 resourceType];
      [*(a1 + 56) hash];
      kdebug_trace();

      v25 = a1 + 56;
      v23 = *(a1 + 56);
      v24 = *(v25 + 8);
      v26 = [v3 error];
      (*(v24 + 16))(v24, v23, v26);
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 32);
        v19 = [*(a1 + 40) path];
        *buf = 138412546;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEBUG, "Linked cached resource %@ to %@", buf, 0x16u);
      }
    }

    [*(a1 + 56) isHighPriority];
    v20 = [*(a1 + 56) resource];
    [v20 resourceType];
    [*(a1 + 56) hash];
    kdebug_trace();

    v21 = *(a1 + 56);
    (*(*(a1 + 64) + 16))();
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_201(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = *(a1 + 32);
        v4 = *(a1 + 40);
        v12 = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ for %@ was cancelled before it had a chance to be enqueued", &v12, 0x16u);
      }
    }

    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = +[CPLErrors operationCancelledError];
    (*(v5 + 16))(v5, v6, v7);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v12 = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Enqueuing %@ for %@", &v12, 0x16u);
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    [(CPLEngineResourceDownloadQueue *)*(a1 + 48) _enqueueTransferTaskInActiveQueue:?];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __165__CPLEngineResourceDownloadQueue__resourceStorageCopyTaskForResource_taskIdentifier_cloudResource_ofRecord_target_didStartHandler_progressHandler_completionHandler___block_invoke_196(void **a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v4 cplFileExistsAtURL:a1[4]])
  {
    v5 = [a1[5] identity];
    v6 = [v5 fingerPrint];

    v7 = v6;
    if (v6)
    {
      v23 = a2;
      v8 = [a1[6] engineStore];
      v9 = [v8 engineLibrary];
      v10 = [v9 transport];
      v11 = [v10 fingerprintContext];
      [v11 fingerprintSchemeForFingerprint:v6];
      v13 = v12 = v6;
      v14 = a1[4];
      v24 = 0;
      v15 = [v13 fingerPrintForFileAtURL:v14 error:&v24];
      v6 = v24;

      if (v15)
      {
        v7 = v12;
        if ([v15 isEqual:v12])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v16 = __CPLStorageOSLogDomain_7908();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = a1[5];
              *buf = 138412290;
              *&buf[4] = v17;
              _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Asked to download cloud resource %@ while file is already present on disk", buf, 0xCu);
            }
          }

          goto LABEL_21;
        }
      }

      else
      {
        v7 = v12;
      }

      a2 = v23;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLStorageOSLogDomain_7908();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = a1[5];
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "Asked to overwrite already present cloud resource %@", buf, 0xCu);
      }
    }
  }

  if (![v4 cplCopyItemAtURL:a1[7] toURL:a1[4] error:a2])
  {
    v20 = 0;
    goto LABEL_23;
  }

  *buf = 0;
  if (CPLGetDynamicVersionForDownloadResource(a1[7], buf, 0))
  {
    CPLMarkDownloadedResourceWithDynamicVersion(a1[4], *buf, 0);
  }

LABEL_21:
  v20 = 1;
LABEL_23:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

void __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_180(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    v7 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_183;
    v8[3] = &unk_1E8620940;
    v8[4] = *(a1 + 56);
    goto LABEL_8;
  }

  if ([v4 isCPLOperationCancelledError] && !objc_msgSend(*(a1 + 40), "isCancelledByEngine") || (v6 = (a1 + 48), v5 = *(a1 + 48), !objc_msgSend(objc_opt_class(), "shouldRetryDownloadOnError:", *(a1 + 32))))
  {
    v7 = v9;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_182;
    v9[3] = &unk_1E8620940;
    v9[4] = *(a1 + 56);
LABEL_8:
    v6 = (a1 + 48);
    goto LABEL_9;
  }

  v7 = v10;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_2;
  v10[3] = &unk_1E8620940;
  v10[4] = *(a1 + 56);
LABEL_9:
  v7[5] = *v6;
  [v3 do:v7];
}

void __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_185(void *a1, void *a2)
{
  v2 = a1[6];
  if (v2)
  {
    v4 = a1[4];
    v5 = [a2 error];
    v6 = v5;
    if (!v5)
    {
      v5 = a1[5];
    }

    (*(v2 + 16))(v2, v4, v5);
  }
}

uint64_t __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLStorageOSLogDomain_7908();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = +[CPLResource descriptionForResourceType:](CPLResource, "descriptionForResourceType:", [*(a1 + 32) resourceType]);
      v6 = [*(a1 + 32) itemScopedIdentifier];
      v7 = [*(a1 + 32) _backgroundDownloadTaskIdentifier];
      *buf = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Will retry background download for %@ %@ (%lu)", buf, 0x20u);
    }
  }

  result = [*(a1 + 40) reenqueueBackgroundDownloadTaskForResource:*(a1 + 32) bumpRetryCount:0 didDiscard:&v10 error:a2];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_182(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLStorageOSLogDomain_7908();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = +[CPLResource descriptionForResourceType:](CPLResource, "descriptionForResourceType:", [*(a1 + 32) resourceType]);
      v6 = [*(a1 + 32) itemScopedIdentifier];
      v7 = [*(a1 + 32) _backgroundDownloadTaskIdentifier];
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Removing background download for %@ %@ (%lu) - no retry", &v10, 0x20u);
    }
  }

  result = [*(a1 + 40) removeBackgroundDownloadTaskForResource:*(a1 + 32) error:a2];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __160__CPLEngineResourceDownloadQueue__downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_183(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLStorageOSLogDomain_7908();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = +[CPLResource descriptionForResourceType:](CPLResource, "descriptionForResourceType:", [*(a1 + 32) resourceType]);
      v6 = [*(a1 + 32) itemScopedIdentifier];
      v7 = [*(a1 + 32) _backgroundDownloadTaskIdentifier];
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Removing background download for %@ %@ (%lu) - success", &v10, 0x20u);
    }
  }

  result = [*(a1 + 40) removeBackgroundDownloadTaskForResource:*(a1 + 32) error:a2];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __105__CPLEngineResourceDownloadQueue__failedTaskWithCompletionHandler_error_resource_taskIdentifier_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 completionHandler];
  v4[2](v4, v3, *(a1 + 32));
}

uint64_t __105__CPLEngineResourceDownloadQueue__failedTaskWithCompletionHandler_error_resource_taskIdentifier_options___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __159__CPLEngineResourceDownloadQueue_downloadTaskForLocalResource_clientBundleID_options_proposedTaskIdentifier_didStartHandler_progressHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 == *(v2 + 112))
  {
    *(v2 + 120) = v1;
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = *(a1 + 32);
    v6 = *(v5 + 128);
    *(v5 + 128) = v4;

    *(*(a1 + 32) + 112) = 0;
  }
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  return error;
}

- (CPLEngineResourceDownloadQueue)initWithEngineStore:(id)store name:(id)name
{
  v118[18] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  nameCopy = name;
  v114.receiver = self;
  v114.super_class = CPLEngineResourceDownloadQueue;
  v85 = [(CPLEngineStorage *)&v114 initWithEngineStore:storeCopy name:nameCopy];
  if (v85)
  {
    v61 = a2;
    v62 = nameCopy;
    v63 = storeCopy;
    v9 = CPLCopyDefaultSerialQueueAttributes();
    v10 = dispatch_queue_create("com.apple.cpl.resourceDownloadQueue", v9);
    downloadLock = v85->_downloadLock;
    v85->_downloadLock = v10;

    v75 = [[CPLActiveDownloadQueue alloc] initWithName:@"High Priority" type:1 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_8032];
    v81 = [[CPLActiveDownloadQueue alloc] initWithName:@"Widget High Priority" type:2 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_7];
    v80 = [[CPLActiveDownloadQueue alloc] initWithName:@"Asset Resource Upload High Priority" type:2 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_12_8035];
    v77 = [[CPLActiveDownloadQueue alloc] initWithName:@"Thumbnails" type:1 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:2 coalescingInterval:500000000 groupConstructor:&__block_literal_global_17];
    v84 = [[CPLActiveDownloadQueue alloc] initWithName:@"Grid High Priority" type:1 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_22];
    v83 = [[CPLActiveDownloadQueue alloc] initWithName:@"1-Up High Priority" type:1 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_27];
    v79 = [[CPLActiveDownloadQueue alloc] initWithName:@"Wallpaper Shuffle High Priority" type:1 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_32];
    v82 = [[CPLActiveDownloadQueue alloc] initWithName:@"Edit High Priority" type:1 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_37];
    v78 = [[CPLActiveDownloadQueue alloc] initWithName:@"Memory Playback High Priority" type:1 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_42_8042];
    v64 = [[CPLActiveDownloadQueue alloc] initWithName:@"Memory Preload High Priority" type:1 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_47];
    v12 = [[CPLActiveDownloadQueue alloc] initWithName:@"Memory Prefetch High Priority" type:2 FIFOQueue:1 maximumBatchSize:10485760 maximumConcurrentTransportTasks:1 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_52];
    v66 = [[CPLActiveDownloadQueue alloc] initWithName:@"Memory Inline Playback High Priority" type:2 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_57_8046];
    v13 = [[CPLActiveDownloadQueue alloc] initWithName:@"Memory Inline Preload High Priority" type:2 FIFOQueue:0 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:0 groupConstructor:&__block_literal_global_62];
    v14 = [[CPLActiveDownloadQueue alloc] initWithName:@"Analysis Download High Priority" type:2 FIFOQueue:1 maximumBatchSize:10485760 maximumConcurrentTransportTasks:4 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_67];
    v15 = [[CPLActiveDownloadQueue alloc] initWithName:@"Watch Sync Download High Priority" type:2 FIFOQueue:1 maximumBatchSize:10485760 maximumConcurrentTransportTasks:1 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_72];
    v16 = [[CPLActiveDownloadQueue alloc] initWithName:@"Wallpaper Suggestion High Priority" type:2 FIFOQueue:1 maximumBatchSize:10485760 maximumConcurrentTransportTasks:1 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_77];
    v17 = [[CPLActiveDownloadQueue alloc] initWithName:@"Wallpaper Live Photo High Priority" type:2 FIFOQueue:1 maximumBatchSize:10485760 maximumConcurrentTransportTasks:1 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_82];
    v73 = [[CPLActiveDownloadQueue alloc] initWithName:@"Background Edit Suggestion High Priority" type:2 FIFOQueue:1 maximumBatchSize:10485760 maximumConcurrentTransportTasks:1 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_87];
    v118[0] = v75;
    v118[1] = v77;
    v118[2] = v84;
    v118[3] = v83;
    v118[4] = v82;
    v118[5] = v78;
    v118[6] = v64;
    v118[7] = v66;
    v118[8] = v13;
    v118[9] = v81;
    v118[10] = v12;
    v118[11] = v14;
    v118[12] = v15;
    v118[13] = v16;
    v118[14] = v79;
    v118[15] = v17;
    v118[16] = v73;
    v118[17] = v80;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:18];
    allHighPriorityQueues = v85->_allHighPriorityQueues;
    v85->_allHighPriorityQueues = v18;

    v117[0] = v12;
    v117[1] = v81;
    v117[2] = v14;
    v117[3] = v15;
    v117[4] = v16;
    v117[5] = v17;
    v117[6] = v73;
    v117[7] = v79;
    v117[8] = v13;
    v117[9] = v66;
    v117[10] = v80;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:11];
    bestCancellableHighPriorityQueues = v85->_bestCancellableHighPriorityQueues;
    v85->_bestCancellableHighPriorityQueues = v20;

    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __59__CPLEngineResourceDownloadQueue_initWithEngineStore_name___block_invoke_19;
    v95[3] = &unk_1E861C6A8;
    v96 = v81;
    v97 = v80;
    v98 = v77;
    v99 = v84;
    v100 = v83;
    v101 = v82;
    v102 = v79;
    v103 = v78;
    v104 = v64;
    v105 = v12;
    v106 = v66;
    v107 = v13;
    v108 = v14;
    v109 = v16;
    v110 = v17;
    v111 = v15;
    v112 = v73;
    v113 = v75;
    v76 = v75;
    v74 = v73;
    v72 = v15;
    v71 = v17;
    v70 = v16;
    v69 = v14;
    v68 = v13;
    v67 = v66;
    v65 = v12;
    v22 = v64;
    v23 = v78;
    v24 = v79;
    v25 = v82;
    v26 = v83;
    v27 = v84;
    v28 = v77;
    v29 = v80;
    v30 = v81;
    v31 = MEMORY[0x1E128EBA0](v95);
    highPriorityQueuePerResourceTypeAndTransferIntent = v85->_highPriorityQueuePerResourceTypeAndTransferIntent;
    v85->_highPriorityQueuePerResourceTypeAndTransferIntent = v31;

    v33 = [[CPLActiveDownloadQueue alloc] initWithName:@"Derivatives Low Priority" type:0 FIFOQueue:1 maximumBatchSize:104857600 maximumConcurrentTransportTasks:3 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_95];
    v34 = [[CPLActiveDownloadQueue alloc] initWithName:@"Thumbmails Low Priority" type:0 FIFOQueue:1 maximumBatchSize:104857600 maximumConcurrentTransportTasks:3 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_100];
    v35 = [[CPLActiveDownloadQueue alloc] initWithName:@"Non-Derivatives Low Priority" type:0 FIFOQueue:1 maximumBatchSize:104857600 maximumConcurrentTransportTasks:3 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_105];
    v36 = [[CPLActiveDownloadQueue alloc] initWithName:@"Keep-Originals Low Priority" type:0 FIFOQueue:1 maximumBatchSize:104857600 maximumConcurrentTransportTasks:3 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_110];
    v37 = [[CPLActiveDownloadQueue alloc] initWithName:@"Optimize-Originals Low Priority" type:0 FIFOQueue:1 maximumBatchSize:104857600 maximumConcurrentTransportTasks:3 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_115];
    v38 = [[CPLActiveDownloadQueue alloc] initWithName:@"Widget Low Priority" type:0 FIFOQueue:1 maximumBatchSize:104857600 maximumConcurrentTransportTasks:3 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_120];
    v39 = [[CPLActiveDownloadQueue alloc] initWithName:@"Recovery Low Priority" type:0 FIFOQueue:1 maximumBatchSize:104857600 maximumConcurrentTransportTasks:3 coalescingInterval:1000000000 groupConstructor:&__block_literal_global_125];
    v116[0] = v34;
    v116[1] = v36;
    v116[2] = v37;
    v116[3] = v38;
    v116[4] = v35;
    v116[5] = v39;
    v116[6] = v33;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:7];
    allLowPriorityQueues = v85->_allLowPriorityQueues;
    v85->_allLowPriorityQueues = v40;

    v115[0] = v34;
    v115[1] = v33;
    v115[2] = v39;
    v115[3] = v35;
    v115[4] = v38;
    v115[5] = v37;
    v115[6] = v36;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:7];
    bestCancellableLowPriorityQueues = v85->_bestCancellableLowPriorityQueues;
    v85->_bestCancellableLowPriorityQueues = v42;

    v44 = [(NSArray *)v85->_bestCancellableLowPriorityQueues count];
    if (v44 != [(NSArray *)v85->_allLowPriorityQueues count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v58 = __CPLStorageOSLogDomain_7908();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v58, OS_LOG_TYPE_ERROR, "Incorrect array of active download queues", buf, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineResourceDownloadQueue.m"];
      [currentHandler handleFailureInMethod:v61 object:v85 file:v60 lineNumber:422 description:@"Incorrect array of active download queues"];

      abort();
    }

    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __59__CPLEngineResourceDownloadQueue_initWithEngineStore_name___block_invoke_132;
    v86[3] = &unk_1E861C6D0;
    v87 = v38;
    v88 = v39;
    v89 = v34;
    v90 = v36;
    v91 = v37;
    v92 = v35;
    v93 = v33;
    v45 = v33;
    v46 = v35;
    v47 = v37;
    v48 = v36;
    v49 = v34;
    v50 = v39;
    v51 = v38;
    v52 = MEMORY[0x1E128EBA0](v86);
    lowPriorityQueuePerResourceTypeAndTransferIntent = v85->_lowPriorityQueuePerResourceTypeAndTransferIntent;
    v85->_lowPriorityQueuePerResourceTypeAndTransferIntent = v52;

    v54 = [(NSArray *)v85->_allHighPriorityQueues arrayByAddingObjectsFromArray:v85->_allLowPriorityQueues];
    allQueues = v85->_allQueues;
    v85->_allQueues = v54;

    nameCopy = v62;
    storeCopy = v63;
  }

  v56 = *MEMORY[0x1E69E9840];
  return v85;
}

char *__59__CPLEngineResourceDownloadQueue_initWithEngineStore_name___block_invoke_19(char *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 intent];
  v7 = 32;
  switch(v6)
  {
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
      v8 = a2 == 5;
      v7 = 168;
      goto LABEL_3;
    case 3:
      v9 = [v5 priority];
      if (v9 >= 3)
      {
        goto LABEL_14;
      }

      v7 = 8 * v9 + 88;
      goto LABEL_20;
    case 6:
      goto LABEL_20;
    case 7:
      v8 = a2 == 5;
      v7 = 56;
LABEL_3:
      if (v8)
      {
        v7 = 48;
      }

      goto LABEL_20;
    case 8:
      v7 = 64;
      goto LABEL_20;
    case 9:
      v7 = 72;
      goto LABEL_20;
    case 10:
      goto LABEL_16;
    case 11:
      v7 = 152;
      goto LABEL_20;
    case 12:
      v7 = 136;
      goto LABEL_20;
    case 13:
      v7 = 80;
      goto LABEL_20;
    case 14:
      v7 = 144;
      goto LABEL_20;
    case 15:
      v7 = 160;
      goto LABEL_20;
    case 16:
LABEL_14:
      v10 = [v5 priority];
      if (v10 >= 3)
      {
LABEL_16:
        v7 = 128;
      }

      else
      {
        v7 = qword_1DC208AA8[v10];
      }

      goto LABEL_20;
    case 17:
      v7 = 40;
LABEL_20:
      a1 = *&a1[v7];
      break;
    default:
      break;
  }

  return a1;
}

void *__59__CPLEngineResourceDownloadQueue_initWithEngineStore_name___block_invoke_132(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 intent];
  if (v6 == 6)
  {
    v7 = 32;
  }

  else if (v6 == 4)
  {
    v7 = 40;
  }

  else if (a2 == 5)
  {
    v7 = 48;
  }

  else if ([CPLResource isNonDerivativeResourceType:a2])
  {
    if ([v5 intent] == 2)
    {
      v7 = 56;
    }

    else
    {
      v8 = [v5 intent];
      v7 = 72;
      if (v8 == 5)
      {
        v7 = 64;
      }
    }
  }

  else
  {
    v7 = 80;
  }

  v9 = *(a1 + v7);
  v10 = v9;

  return v9;
}

+ (BOOL)shouldRetryDownloadOnError:(id)error
{
  errorCopy = error;
  if ([errorCopy isCPLErrorWithCode:25] & 1) != 0 || (objc_msgSend(errorCopy, "isCPLErrorWithCode:", 26) & 1) != 0 || (objc_msgSend(errorCopy, "isCPLErrorWithCode:", 27))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [errorCopy isCPLErrorWithCode:51] ^ 1;
  }

  return v4;
}

@end