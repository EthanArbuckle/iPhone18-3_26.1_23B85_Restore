@interface ML3DatabaseImportManager
- (ML3DatabaseImportManager)init;
- (float)currentOperationProgressWithError:(id *)a3;
- (id)_importOperations;
- (id)_suspendedImportOperations;
- (void)_handleImportOperationCancelled:(id)a3;
- (void)_handleImportOperationCompleted:(id)a3;
- (void)cancelAllImportOperations;
- (void)cancelImportOperationsForSource:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)cancelImportOperationsOriginatingFromClient:(id)a3;
- (void)performImport:(id)a3 fromSource:(unint64_t)a4 progressBlock:(id)a5 withCompletionHandler:(id)a6;
- (void)resumeSuspendedImportOperations;
- (void)suspendImportOperations;
@end

@implementation ML3DatabaseImportManager

- (void)_handleImportOperationCancelled:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_ERROR, "Operation %{public}@ cancelled.", &v9, 0xCu);
  }

  if ([v4 isSuspended])
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Operation %{public}@ suspended--adding to suspension queue.", &v9, 0xCu);
    }

    [(NSMutableArray *)self->_suspendedImportOperations addObject:v4];
  }

  else
  {
    v7 = [v4 _clientCompletionHandler];
    if (v7)
    {
      v8 = [ML3MediaLibraryWriter writerErrorWithCode:400 description:@"Operation was cancelled by the media library service."];
      (v7)[2](v7, 0, v8, 0);
    }
  }
}

- (void)_handleImportOperationCompleted:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 success];
  v6 = [v4 error];
  v7 = [v4 error];
  lastImportError = self->_lastImportError;
  self->_lastImportError = v7;

  v9 = os_log_create("com.apple.amp.medialibrary", "Service");
  v10 = v9;
  if (v5)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v20 = 138543362;
    *&v20[4] = v4;
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
    *&v20[4] = v6;
    v11 = "Import operation failed: %{public}@";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_22D2FA000, v12, v13, v11, v20, 0xCu);
LABEL_7:

  v14 = [v4 _clientCompletionHandler];
  if (v14)
  {
    v15 = [v4 success];
    v16 = [v4 error];
    v17 = [v4 returnData];
    (v14)[2](v14, v15, v16, v17);
  }

  v18 = [v4 import];
  v19 = [v18 library];
  [v19 notifyLibraryImportDidFinish];
}

- (id)_suspendedImportOperations
{
  v2 = [(NSMutableArray *)self->_suspendedImportOperations copy];

  return v2;
}

- (id)_importOperations
{
  v2 = [(NSOperationQueue *)self->_importOperationQueue operations];
  v3 = [v2 copy];

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

        v12 = [v10 import];
        v13 = [v10 importSource];
        v14 = [v10 _clientCompletionHandler];
        v15 = [v10 progressBlock];
        [(ML3DatabaseImportManager *)self performImport:v12 fromSource:v13 progressBlock:v15 withCompletionHandler:v14];
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
    v16 = self;
    v3 = [(NSOperationQueue *)self->_importOperationQueue operations];
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 import];
          v11 = [v10 isSuspendable];

          v12 = os_log_create("com.apple.amp.medialibrary", "Service");
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          if (v11)
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

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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

    if ((v6 & 1) != 0 && ![(NSOperationQueue *)v16->_importOperationQueue isSuspended])
    {
      [(NSOperationQueue *)v16->_importOperationQueue waitUntilAllOperationsAreFinished];
      [(NSOperationQueue *)v16->_importOperationQueue setSuspended:1];
    }

    v15 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Suspended import operations finished.", buf, 2u);
    }
  }
}

- (void)cancelImportOperationsForSource:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(NSOperationQueue *)self->_importOperationQueue operations];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 importSource] == a3)
        {
          [v12 cancel];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    v6[2](v6, 1, 0);
  }
}

- (void)cancelImportOperationsOriginatingFromClient:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 bundleID];
    *buf = 138543618;
    v38 = v6;
    v39 = 1024;
    v40 = [v4 processID];
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling any active or suspended import operations in progress for process %{public}@ (process ID = %d)", buf, 0x12u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(NSOperationQueue *)self->_importOperationQueue operations];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 import];
        v14 = [v13 client];
        v15 = [v14 isEqual:v4];

        if (v15)
        {
          [v12 cancel];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = self;
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
        v23 = [v22 import];
        v24 = [v23 client];
        v25 = [v24 isEqual:v4];

        if (v25)
        {
          [v16 addObject:v22];
        }
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  [(NSMutableArray *)v26->_suspendedImportOperations removeObjectsInArray:v16];
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

- (float)currentOperationProgressWithError:(id *)a3
{
  v4 = [(NSOperationQueue *)self->_importOperationQueue operations];
  v5 = [v4 firstObject];

  if (!v5)
  {
    v8 = 0;
    v7 = -1.0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [v5 progress];
  v7 = v6;
  v8 = [v5 error];
  if (a3)
  {
LABEL_3:
    v9 = v8;
    *a3 = v8;
  }

LABEL_4:

  return v7;
}

- (void)performImport:(id)a3 fromSource:(unint64_t)a4 progressBlock:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [ML3ImportOperation importOperationWithSourceType:a4 databaseImport:v10];
  [v13 _setClientCompletionHandler:v12];
  [v13 setProgressBlock:v11];
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