@interface DSFileServiceConnection
- (BOOL)_addOperationForProgress:(id)progress;
- (DSFileServiceConnection)init;
- (void)_reloadCurrentOperations;
- (void)_removeOperationForProgress:(id)progress;
- (void)_subscribeToProgressIfNeeded:(id)needed;
- (void)dealloc;
- (void)requestInProgressOperationsWithResponseBlock:(id)block;
@end

@implementation DSFileServiceConnection

- (DSFileServiceConnection)init
{
  v21.receiver = self;
  v21.super_class = DSFileServiceConnection;
  v2 = [(DSFileServiceConnection *)&v21 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    v5 = objc_opt_new();
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = objc_opt_new();
    v8 = *(v2 + 4);
    *(v2 + 4) = v7;

    v9 = dispatch_get_global_queue(0, 0);
    v10 = dispatch_source_create(MEMORY[0x1E69E96B0], 0, 0, v9);
    v11 = *(v2 + 1);
    *(v2 + 1) = v10;

    objc_initWeak(&location, v2);
    v12 = *(v2 + 1);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __31__DSFileServiceConnection_init__block_invoke;
    v18 = &unk_1E877ED68;
    objc_copyWeak(&v19, &location);
    dispatch_source_set_event_handler(v12, &v15);
    dispatch_resume(*(v2 + 1));
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v2, OperationsUpdatedHandler, @"com.apple.DesktopServicesHelper.FileService.Update", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [v2 _triggerReloadCurrentOperations];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __31__DSFileServiceConnection_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadCurrentOperations];
}

- (void)dealloc
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.DesktopServicesHelper.FileService.Update", 0);
  dispatch_source_cancel(self->_updateCurrentOperationsSource);
  v4.receiver = self;
  v4.super_class = DSFileServiceConnection;
  [(DSFileServiceConnection *)&v4 dealloc];
}

- (void)requestInProgressOperationsWithResponseBlock:(id)block
{
  blockCopy = block;
  v4 = [(NSMutableArray *)self->_fileOperations copy];
  blockCopy[2](blockCopy, v4, 0);
}

- (BOOL)_addOperationForProgress:(id)progress
{
  v24 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  userInfo = [progressCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"DSFileOperationUUID"];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = LogObj(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v22 = 138543362;
      v23 = v6;
      _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_INFO, "Adding new operation for progress %{public}@", &v22, 0xCu);
    }

    v9 = [[DSFileOperationID alloc] initWithUUID:v6];
    [v7 setOperationID:v9];

    userInfo2 = [progressCopy userInfo];
    v11 = [userInfo2 objectForKeyedSubscript:@"DSFileOperationDateStarted"];
    [v7 setDateStarted:v11];

    userInfo3 = [progressCopy userInfo];
    v13 = [userInfo3 objectForKeyedSubscript:@"DSFileOperationIconUTTypeIdentifier"];
    v14 = static_objc_cast<NSString,objc_object * {__strong}>(v13);

    if (!v14)
    {
      v15 = LogObj(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1E5674000, v15, OS_LOG_TYPE_ERROR, "Received nil UTI String for progress", &v22, 2u);
      }
    }

    v16 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v14 allowUndeclared:1];
    if (!v16)
    {
      v17 = LogObj(2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        userInfo4 = [progressCopy userInfo];
        v19 = [userInfo4 objectForKeyedSubscript:@"DSFileOperationIconUTTypeIdentifier"];
        v22 = 138543362;
        v23 = v19;
        _os_log_impl(&dword_1E5674000, v17, OS_LOG_TYPE_ERROR, "Unable to find UTType for identifier '%{public}@', will use generic item type", &v22, 0xCu);
      }

      v16 = *MEMORY[0x1E6982E48];
    }

    [v7 setUtType:v16];
    [v7 setProgress:progressCopy];
    [(NSMutableArray *)self->_fileOperations addObject:v7];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (void)_removeOperationForProgress:(id)progress
{
  v16 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  v5 = [DSFileOperationID alloc];
  userInfo = [progressCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"DSFileOperationUUID"];
  v8 = [(DSFileOperationID *)v5 initWithUUID:v7];

  v9 = objc_opt_new();
  [v9 setOperationID:v8];
  v10 = LogObj(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    userInfo2 = [progressCopy userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:@"DSFileOperationUUID"];
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_1E5674000, v10, OS_LOG_TYPE_INFO, "Removing operation for progress %{public}@", &v14, 0xCu);
  }

  [(NSMutableArray *)self->_fileOperations removeObject:v9];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_subscribeToProgressIfNeeded:(id)needed
{
  v20 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v5 = [(NSMutableDictionary *)self->_progressTokenMap objectForKeyedSubscript:neededCopy];

  if (v5)
  {
    v6 = LogObj(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = SanitizedURL(neededCopy);
      *buf = 138543362;
      v19 = v7;
      _os_log_impl(&dword_1E5674000, v6, OS_LOG_TYPE_DEBUG, "Already subscribed to progress for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __56__DSFileServiceConnection__subscribeToProgressIfNeeded___block_invoke;
    v15 = &unk_1E877EDE0;
    objc_copyWeak(&v17, buf);
    v8 = neededCopy;
    v16 = v8;
    v9 = MEMORY[0x1E692D6D0](&v12);
    if ([(NSURL *)v8 startAccessingSecurityScopedResource:v12])
    {
      v10 = [MEMORY[0x1E696AE38] addSubscriberForFileURL:v8 withPublishingHandler:v9];
      if (v10)
      {
        [(NSMutableDictionary *)self->_progressTokenMap setObject:v10 forKeyedSubscript:v8];
      }
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x1E69E9840];
}

id __56__DSFileServiceConnection__subscribeToProgressIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _addOperationForProgress:v3])
    {
      [v5[2] addObject:v3];
      v6 = [v5 didUpdateInProgressOperationsHandler];

      if (v6)
      {
        v7 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56__DSFileServiceConnection__subscribeToProgressIfNeeded___block_invoke_4;
        block[3] = &unk_1E877ED90;
        v16 = v5;
        dispatch_async(v7, block);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__DSFileServiceConnection__subscribeToProgressIfNeeded___block_invoke_5;
      v11[3] = &unk_1E877EDB8;
      v12 = v5;
      v13 = v3;
      v14 = *(a1 + 32);
      v8 = MEMORY[0x1E692D6D0](v11);
    }

    else
    {
      v9 = [v5[3] objectForKeyedSubscript:*(a1 + 32)];
      if (v9)
      {
        [MEMORY[0x1E696AE38] removeSubscriber:v9];
        [v5[3] setObject:0 forKeyedSubscript:*(a1 + 32)];
      }

      [*(a1 + 32) stopAccessingSecurityScopedResource];

      v8 = &__block_literal_global_10;
    }
  }

  else
  {
    v8 = &__block_literal_global_0;
  }

  return v8;
}

void __56__DSFileServiceConnection__subscribeToProgressIfNeeded___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) didUpdateInProgressOperationsHandler];
  v1[2]();
}

void __56__DSFileServiceConnection__subscribeToProgressIfNeeded___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  [*(a1 + 32) _removeOperationForProgress:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 48)];
  if (v2)
  {
    [MEMORY[0x1E696AE38] removeSubscriber:v2];
    [*(*(a1 + 32) + 24) setObject:0 forKeyedSubscript:*(a1 + 48)];
  }

  [*(a1 + 48) stopAccessingSecurityScopedResource];
  v3 = [*(a1 + 32) didUpdateInProgressOperationsHandler];

  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__DSFileServiceConnection__subscribeToProgressIfNeeded___block_invoke_6;
    block[3] = &unk_1E877ED90;
    v6 = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

void __56__DSFileServiceConnection__subscribeToProgressIfNeeded___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) didUpdateInProgressOperationsHandler];
  v1[2]();
}

- (void)_reloadCurrentOperations
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.DesktopServicesHelper.FileService" options:4096];
  v4 = DSFileServiceXPCInterface();
  [v3 setRemoteObjectInterface:v4];

  [v3 setInterruptionHandler:&__block_literal_global_46];
  [v3 resume];
  v5 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__DSFileServiceConnection__reloadCurrentOperations__block_invoke;
  v11[3] = &unk_1E877EE08;
  v6 = v5;
  v12 = v6;
  v7 = [v3 remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__DSFileServiceConnection__reloadCurrentOperations__block_invoke_13;
  v9[3] = &unk_1E877EE30;
  v9[4] = self;
  v8 = v6;
  v10 = v8;
  [v7 inProgressOperationsWithReply:v9];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  [v3 invalidate];
}

void __51__DSFileServiceConnection__reloadCurrentOperations__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogObj(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_ERROR, "Error calling DSFileService: %@", &v6, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x1E69E9840];
}

void __51__DSFileServiceConnection__reloadCurrentOperations__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = LogObj(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_ERROR, "Error fetching in-progress operations: %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(a1 + 32);
          v12 = [*(*(&v14 + 1) + 8 * i) url];
          [v11 _subscribeToProgressIfNeeded:v12];
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v13 = *MEMORY[0x1E69E9840];
}

@end