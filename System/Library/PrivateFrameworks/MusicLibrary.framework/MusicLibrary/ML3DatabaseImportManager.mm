@interface ML3DatabaseImportManager
- (ML3DatabaseImportManager)init;
- (float)currentOperationProgressWithError:(id *)error;
- (id)_importOperations;
- (id)_suspendedImportOperations;
- (void)_handleImportOperationCancelled:(id)cancelled;
- (void)_handleImportOperationCompleted:(id)completed;
- (void)cancelAllImportOperations;
- (void)cancelImportOperationsForSource:(unint64_t)source withCompletionHandler:(id)handler;
- (void)cancelImportOperationsOriginatingFromClient:(id)client;
- (void)performImport:(id)import fromSource:(unint64_t)source progressBlock:(id)block withCompletionHandler:(id)handler;
- (void)resumeSuspendedImportOperations;
- (void)suspendImportOperations;
@end

@implementation ML3DatabaseImportManager

- (void)_handleImportOperationCancelled:(id)cancelled
{
  v11 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v5 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = cancelledCopy;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_ERROR, "Operation %{public}@ cancelled.", &v9, 0xCu);
  }

  if ([cancelledCopy isSuspended])
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = cancelledCopy;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Operation %{public}@ suspended--adding to suspension queue.", &v9, 0xCu);
    }

    [(NSMutableArray *)self->_suspendedImportOperations addObject:cancelledCopy];
  }

  else
  {
    _clientCompletionHandler = [cancelledCopy _clientCompletionHandler];
    if (_clientCompletionHandler)
    {
      v8 = [ML3MediaLibraryWriter writerErrorWithCode:400 description:@"Operation was cancelled by the media library service."];
      (_clientCompletionHandler)[2](_clientCompletionHandler, 0, v8, 0);
    }
  }
}

- (void)_handleImportOperationCompleted:(id)completed
{
  v21 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  success = [completedCopy success];
  error = [completedCopy error];
  error2 = [completedCopy error];
  lastImportError = self->_lastImportError;
  self->_lastImportError = error2;

  v9 = os_log_create("com.apple.amp.medialibrary", "Service");
  v10 = v9;
  if (success)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v20 = 138543362;
    *&v20[4] = completedCopy;
    v11 = "Successfully executed import operation %{public}@";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v20 = 138543362;
    *&v20[4] = error;
    v11 = "Import operation failed: %{public}@";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_22D2FA000, v12, v13, v11, v20, 0xCu);
LABEL_7:

  _clientCompletionHandler = [completedCopy _clientCompletionHandler];
  if (_clientCompletionHandler)
  {
    success2 = [completedCopy success];
    error3 = [completedCopy error];
    returnData = [completedCopy returnData];
    (_clientCompletionHandler)[2](_clientCompletionHandler, success2, error3, returnData);
  }

  import = [completedCopy import];
  library = [import library];
  [library notifyLibraryImportDidFinish];
}

- (id)_suspendedImportOperations
{
  v2 = [(NSMutableArray *)self->_suspendedImportOperations copy];

  return v2;
}

- (id)_importOperations
{
  operations = [(NSOperationQueue *)self->_importOperationQueue operations];
  v3 = [operations copy];

  return v3;
}

- (void)resumeSuspendedImportOperations
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_suspendedImportOperations count];
    *buf = 134217984;
    v23 = v4;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Resuming %lu suspended import operation(s)", buf, 0xCu);
  }

  v5 = [(NSMutableArray *)self->_suspendedImportOperations copy];
  [(NSMutableArray *)self->_suspendedImportOperations removeAllObjects];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = os_log_create("com.apple.amp.medialibrary", "Service");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v23 = v10;
          _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "Resuming import operation %{public}@", buf, 0xCu);
        }

        import = [v10 import];
        importSource = [v10 importSource];
        _clientCompletionHandler = [v10 _clientCompletionHandler];
        progressBlock = [v10 progressBlock];
        [(ML3DatabaseImportManager *)self performImport:import fromSource:importSource progressBlock:progressBlock withCompletionHandler:_clientCompletionHandler];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(NSOperationQueue *)self->_importOperationQueue setSuspended:0];
}

- (void)suspendImportOperations
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSOperationQueue *)self->_importOperationQueue operationCount])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    selfCopy = self;
    operations = [(NSOperationQueue *)self->_importOperationQueue operations];
    v4 = [operations countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(operations);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          import = [v9 import];
          isSuspendable = [import isSuspendable];

          v12 = os_log_create("com.apple.amp.medialibrary", "Service");
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          if (isSuspendable)
          {
            if (v13)
            {
              *buf = 138543362;
              v22 = v9;
              _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "Suspending import operation %{public}@", buf, 0xCu);
            }

            v6 = 1;
            [v9 setSuspended:1];
            [v9 cancel];
          }

          else
          {
            if (v13)
            {
              *buf = 138543362;
              v22 = v9;
              _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "Import operation %{public}@ is not suspendable - skipping", buf, 0xCu);
            }
          }
        }

        v5 = [operations countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v14 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Waiting for suspended import operations to finish...", buf, 2u);
    }

    if ((v6 & 1) != 0 && ![(NSOperationQueue *)selfCopy->_importOperationQueue isSuspended])
    {
      [(NSOperationQueue *)selfCopy->_importOperationQueue waitUntilAllOperationsAreFinished];
      [(NSOperationQueue *)selfCopy->_importOperationQueue setSuspended:1];
    }

    v15 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Suspended import operations finished.", buf, 2u);
    }
  }
}

- (void)cancelImportOperationsForSource:(unint64_t)source withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  operations = [(NSOperationQueue *)self->_importOperationQueue operations];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [operations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(operations);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 importSource] == source)
        {
          [v12 cancel];
        }
      }

      v9 = [operations countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (void)cancelImportOperationsOriginatingFromClient:(id)client
{
  v41 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v5 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [clientCopy bundleID];
    *buf = 138543618;
    v38 = bundleID;
    v39 = 1024;
    processID = [clientCopy processID];
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling any active or suspended import operations in progress for process %{public}@ (process ID = %d)", buf, 0x12u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  operations = [(NSOperationQueue *)self->_importOperationQueue operations];
  v8 = [operations countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(operations);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        import = [v12 import];
        client = [import client];
        v15 = [client isEqual:clientCopy];

        if (v15)
        {
          [v12 cancel];
        }
      }

      v9 = [operations countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  v17 = self->_suspendedImportOperations;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        import2 = [v22 import];
        client2 = [import2 client];
        v25 = [client2 isEqual:clientCopy];

        if (v25)
        {
          [array addObject:v22];
        }
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  [(NSMutableArray *)selfCopy->_suspendedImportOperations removeObjectsInArray:array];
}

- (void)cancelAllImportOperations
{
  v3 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling all import operations.", v4, 2u);
  }

  [(NSOperationQueue *)self->_importOperationQueue setSuspended:0];
  [(NSOperationQueue *)self->_importOperationQueue cancelAllOperations];
  [(NSMutableArray *)self->_suspendedImportOperations removeAllObjects];
}

- (float)currentOperationProgressWithError:(id *)error
{
  operations = [(NSOperationQueue *)self->_importOperationQueue operations];
  firstObject = [operations firstObject];

  if (!firstObject)
  {
    error = 0;
    v7 = -1.0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [firstObject progress];
  v7 = v6;
  error = [firstObject error];
  if (error)
  {
LABEL_3:
    v9 = error;
    *error = error;
  }

LABEL_4:

  return v7;
}

- (void)performImport:(id)import fromSource:(unint64_t)source progressBlock:(id)block withCompletionHandler:(id)handler
{
  importCopy = import;
  blockCopy = block;
  handlerCopy = handler;
  v13 = [ML3ImportOperation importOperationWithSourceType:source databaseImport:importCopy];
  [v13 _setClientCompletionHandler:handlerCopy];
  [v13 setProgressBlock:blockCopy];
  objc_initWeak(&location, v13);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__ML3DatabaseImportManager_performImport_fromSource_progressBlock_withCompletionHandler___block_invoke;
  v14[3] = &unk_278762BD8;
  objc_copyWeak(&v15, &location);
  v14[4] = self;
  [v13 setCompletionBlock:v14];
  [(NSOperationQueue *)self->_importOperationQueue addOperation:v13];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __89__ML3DatabaseImportManager_performImport_fromSource_progressBlock_withCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained isCancelled];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _handleImportOperationCancelled:WeakRetained];
  }

  else
  {
    [v3 _handleImportOperationCompleted:WeakRetained];
  }
}

- (ML3DatabaseImportManager)init
{
  v9.receiver = self;
  v9.super_class = ML3DatabaseImportManager;
  v2 = [(ML3DatabaseImportManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    importOperationQueue = v2->_importOperationQueue;
    v2->_importOperationQueue = v3;

    [(NSOperationQueue *)v2->_importOperationQueue setName:@"com.apple.medialibraryd.importOperationQueue"];
    [(NSOperationQueue *)v2->_importOperationQueue setMaxConcurrentOperationCount:1];
    if (MSVDeviceIsHomePod())
    {
      v5 = 17;
    }

    else
    {
      v5 = -1;
    }

    [(NSOperationQueue *)v2->_importOperationQueue setQualityOfService:v5];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    suspendedImportOperations = v2->_suspendedImportOperations;
    v2->_suspendedImportOperations = v6;
  }

  return v2;
}

@end