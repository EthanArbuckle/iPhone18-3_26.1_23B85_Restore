@interface LACSharingManager
+ (BOOL)isSharingError:(id)a3;
- (LACSharingManager)initWithReplyQueue:(id)a3;
- (LACSharingManagerDelegate)delegate;
- (id)_authenticationBackgroundTaskForRequest:(id)a3;
- (id)_canAuthenticateBackgroundTaskWithCompanion:(int64_t)a3;
- (id)authenticateWithRequest:(id)a3;
- (id)getPairedDevicesBackgroundTaskForCompanion:(int64_t)a3;
- (unint64_t)_authenticationTypeForCompanion:(int64_t)a3;
- (unint64_t)_pairedDeviceTypeForCompanion:(int64_t)a3;
- (void)_authenticateWithRequest:(id)a3 completion:(id)a4;
- (void)_canAuthenticateWithCompanion:(int64_t)a3 completion:(id)a4;
- (void)_failSessionWithID:(id)a3 error:(id)a4;
- (void)_pairedDevicesForCompanion:(int64_t)a3 completion:(id)a4;
- (void)_runPairedDevicesBackgroundTaskForCompanion:(int64_t)a3 completion:(id)a4;
- (void)canAuthenticateWithCompanion:(int64_t)a3 completion:(id)a4;
- (void)cancelSessionWithID:(id)a3;
- (void)manager:(id)a3 didCompleteAuthenticationForSessionWithID:(id)a4;
- (void)manager:(id)a3 didFailAuthenticationForSessionWithID:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didStartAuthenticationForSessionWithID:(id)a4;
- (void)pairedDevicesForCompanion:(int64_t)a3 completion:(id)a4;
@end

@implementation LACSharingManager

- (LACSharingManager)initWithReplyQueue:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = LACSharingManager;
  v6 = [(LACSharingManager *)&v17 init];
  if (v6)
  {
    if (getSFAuthenticationManagerClass())
    {
      v7 = [objc_alloc(getSFAuthenticationManagerClass()) initWithQueue:v5];
      sharingManager = v6->_sharingManager;
      v6->_sharingManager = v7;

      [(SFAuthenticationManager *)v6->_sharingManager setDelegate:v6];
    }

    else
    {
      v9 = v6->_sharingManager;
      v6->_sharingManager = 0;
    }

    v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    canAuthenticateSessions = v6->_canAuthenticateSessions;
    v6->_canAuthenticateSessions = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v13];
    workQueue = v6->_workQueue;
    v6->_workQueue = v14;

    objc_storeStrong(&v6->_replyQueue, a3);
  }

  return v6;
}

- (id)authenticateWithRequest:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogABM();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 clientInfo];
    v7 = [v6 bundleId];
    v8 = [v4 clientInfo];
    v9 = [v8 displayName];
    v10 = NSStringFromLACCompanionType([v4 companionType]);
    v26 = 138543874;
    v27 = v7;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Initiating companion authentication for bundleID: %{public}@ app name: %{public}@ companion:%{public}@", &v26, 0x20u);
  }

  v11 = [(LACSharingManager *)self _authenticationBackgroundTaskForRequest:v4];
  v12 = [v11 runSynchronouslyWithTimeout:1.0];
  v13 = LACLogABM();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v4 clientInfo];
    v15 = [v14 bundleId];
    v16 = [v4 clientInfo];
    v17 = [v16 displayName];
    v18 = NSStringFromLACCompanionType([v4 companionType]);
    v26 = 138544130;
    v27 = v15;
    v28 = 2114;
    v29 = v17;
    v30 = 2114;
    v31 = v18;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_1B0233000, v13, OS_LOG_TYPE_DEFAULT, "Authentication for bundleID: %{public}@ app name: %{public}@ companion:%{public}@ returned: %{public}@", &v26, 0x2Au);
  }

  v19 = [v12 value];
  v20 = [v12 error];

  if (v20 || !v19)
  {
    v21 = objc_opt_new();
    v22 = [v12 error];
    v23 = [LACError errorWithCode:-1 underlyingError:v22];

    [(LACSharingManager *)self _failSessionWithID:v21 error:v23];
  }

  else
  {
    v21 = v19;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)canAuthenticateWithCompanion:(int64_t)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = LACLogABM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromLACCompanionType(a3);
    *buf = 138543362;
    v19 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Initiating canAuthenticate call for companion:%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(LACSharingManager *)self _canAuthenticateBackgroundTaskWithCompanion:a3];
  replyQueue = self->_replyQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__LACSharingManager_canAuthenticateWithCompanion_completion___block_invoke;
  v14[3] = &unk_1E7A960D0;
  objc_copyWeak(v17, buf);
  v17[1] = a3;
  v11 = v6;
  v16 = v11;
  v12 = v9;
  v15 = v12;
  [v12 runWithTimeout:replyQueue queue:v14 completion:0.1];

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x1E69E9840];
}

void __61__LACSharingManager_canAuthenticateWithCompanion_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = LACLogABM();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromLACCompanionType(*(a1 + 56));
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "CanAuthenticate for companion:%{public}@ returned: %{public}@", &v10, 0x16u);
    }

    v7 = *(a1 + 40);
    v8 = [v3 value];
    (*(v7 + 16))(v7, [v8 BOOLValue]);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)cancelSessionWithID:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogABM();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Canceling authentication for sessionID: %{public}@", buf, 0xCu);
  }

  if (self->_sharingManager)
  {
    objc_initWeak(buf, self);
    workQueue = self->_workQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__LACSharingManager_cancelSessionWithID___block_invoke;
    v9[3] = &unk_1E7A95F68;
    objc_copyWeak(&v11, buf);
    v10 = v4;
    dispatch_async(workQueue, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = [LACError errorWithCode:-4];
    [(LACSharingManager *)self _failSessionWithID:v4 error:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __41__LACSharingManager_cancelSessionWithID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] cancelAuthenticationSessionWithID:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)pairedDevicesForCompanion:(int64_t)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = LACLogABM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromLACCompanionType(a3);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Fetching paired devices for companion:%{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__LACSharingManager_pairedDevicesForCompanion_completion___block_invoke;
  v11[3] = &unk_1E7A960F8;
  v12 = v6;
  v13 = a3;
  v9 = v6;
  [(LACSharingManager *)self _runPairedDevicesBackgroundTaskForCompanion:a3 completion:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __58__LACSharingManager_pairedDevicesForCompanion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogABM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromLACCompanionType(*(a1 + 40));
    v9 = v8;
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Paired devices for companion:%{public}@ returned: %@", &v12, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isSharingError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getSFAuthenticationErrorCodeDomainSymbolLoc_ptr;
  v13 = getSFAuthenticationErrorCodeDomainSymbolLoc_ptr;
  if (!getSFAuthenticationErrorCodeDomainSymbolLoc_ptr)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getSFAuthenticationErrorCodeDomainSymbolLoc_block_invoke;
    v9[3] = &unk_1E7A955D8;
    v9[4] = &v10;
    __getSFAuthenticationErrorCodeDomainSymbolLoc_block_invoke(v9);
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    v8 = +[LACSharingManager isSharingError:];
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v8);
  }

  v6 = [v4 isEqualToString:*v5];

  return v6;
}

- (void)manager:(id)a3 didStartAuthenticationForSessionWithID:(id)a4
{
  v7 = a4;
  v5 = [(NSMapTable *)self->_canAuthenticateSessions objectForKey:?];

  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    [WeakRetained manager:self didStartSessionWithID:v7];
  }
}

- (void)manager:(id)a3 didCompleteAuthenticationForSessionWithID:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(NSMapTable *)self->_canAuthenticateSessions objectForKey:v5];
  if (v6)
  {
    [(NSMapTable *)self->_canAuthenticateSessions removeObjectForKey:v5];
    v7 = LACLogABM();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_INFO, "Can authenticate success for sessionID:%{public}@", &v12, 0xCu);
    }

    v8 = [LACBackgroundTaskResult alloc];
    v9 = [(LACBackgroundTaskResult *)v8 initWithValue:MEMORY[0x1E695E118]];
    (v6)[2](v6, v9);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    [WeakRetained manager:self didCompleteSessionWithID:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)manager:(id)a3 didFailAuthenticationForSessionWithID:(id)a4 error:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(NSMapTable *)self->_canAuthenticateSessions objectForKey:v7];
  if (v9)
  {
    [(NSMapTable *)self->_canAuthenticateSessions removeObjectForKey:v7];
    v10 = LACLogABM();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_INFO, "Can authenticate failure for sessionID:%{public}@ error:%{public}@", &v14, 0x16u);
    }

    v11 = [[LACBackgroundTaskResult alloc] initWithError:v8];
    (v9)[2](v9, v11);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    [WeakRetained manager:self didFailSessionWithID:v7 error:v8];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)getPairedDevicesBackgroundTaskForCompanion:(int64_t)a3
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromLACCompanionType(a3);
  v6 = [v4 stringWithFormat:@"PairedDeviceStateQuery-%@", v5];

  v7 = [LACBackgroundTask alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__LACSharingManager_getPairedDevicesBackgroundTaskForCompanion___block_invoke;
  v10[3] = &unk_1E7A96148;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v8 = [(LACBackgroundTask *)v7 initWithIdentifier:v6 worker:v10];
  objc_destroyWeak(v11);

  objc_destroyWeak(&location);

  return v8;
}

void __64__LACSharingManager_getPairedDevicesBackgroundTaskForCompanion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__LACSharingManager_getPairedDevicesBackgroundTaskForCompanion___block_invoke_2;
    v6[3] = &unk_1E7A96120;
    v7 = v3;
    [WeakRetained _pairedDevicesForCompanion:v5 completion:v6];
  }
}

void __64__LACSharingManager_getPairedDevicesBackgroundTaskForCompanion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [LACBackgroundTaskResult alloc];
  if (v5)
  {
    v8 = [(LACBackgroundTaskResult *)v7 initWithError:v5];
  }

  else
  {
    v8 = [(LACBackgroundTaskResult *)v7 initWithValue:v10];
  }

  v9 = v8;
  (*(v6 + 16))(v6, v8);
}

- (void)_runPairedDevicesBackgroundTaskForCompanion:(int64_t)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = LACLogABM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = self;
    v20 = 2048;
    v21 = 0x3FD3333333333333;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will perform query with %.2f sec timeout", buf, 0x16u);
  }

  v8 = [(LACSharingManager *)self getPairedDevicesBackgroundTaskForCompanion:a3];
  replyQueue = self->_replyQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__LACSharingManager__runPairedDevicesBackgroundTaskForCompanion_completion___block_invoke;
  v13[3] = &unk_1E7A958F8;
  objc_copyWeak(&v16, &location);
  v10 = v6;
  v15 = v10;
  v11 = v8;
  v14 = v11;
  [v11 runWithTimeout:replyQueue queue:v13 completion:0.3];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x1E69E9840];
}

void __76__LACSharingManager__runPairedDevicesBackgroundTaskForCompanion_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5 = [v7 value];
    v6 = [v7 error];
    (*(v4 + 16))(v4, v5, v6);
  }
}

- (void)_pairedDevicesForCompanion:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (!self->_sharingManager)
  {
    goto LABEL_6;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v7 = getSFAuthenticationDeviceClass_softClass;
  v22 = getSFAuthenticationDeviceClass_softClass;
  if (!getSFAuthenticationDeviceClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getSFAuthenticationDeviceClass_block_invoke;
    v17 = &unk_1E7A955D8;
    v18 = &v19;
    SharingLibraryCore();
    v20[3] = objc_getClass("SFAuthenticationDevice");
    getSFAuthenticationDeviceClass_softClass = *(v18[1] + 24);
    v7 = v20[3];
  }

  v8 = v7;
  _Block_object_dispose(&v19, 8);
  if (v7)
  {
    v9 = [(LACSharingManager *)self _pairedDeviceTypeForCompanion:a3];
    sharingManager = self->_sharingManager;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__LACSharingManager__pairedDevicesForCompanion_completion___block_invoke;
    v12[3] = &unk_1E7A96170;
    v13 = v6;
    [(SFAuthenticationManager *)sharingManager listCandidateDevicesForType:v9 completionHandler:v12];
    v11 = v13;
  }

  else
  {
LABEL_6:
    v11 = [LACError errorWithCode:-1 debugDescription:@"Authenticator not available"];
    (*(v6 + 2))(v6, 0, v11);
  }
}

void __59__LACSharingManager__pairedDevicesForCompanion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogABM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    *buf = 138412290;
    v24 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Listing eligible devices returned: %@", buf, 0xCu);
  }

  v9 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v15 enabledAsKey])
        {
          v16 = [v15 uniqueID];
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  (*(*(a1 + 32) + 16))();
  v17 = *MEMORY[0x1E69E9840];
}

- (id)_authenticationBackgroundTaskForRequest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromLACCompanionType([v4 companionType]);
  v7 = [v4 clientInfo];
  v8 = [v5 stringWithFormat:@"CompanionAuthentication-%@-%@", v6, v7];

  v9 = [LACBackgroundTask alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__LACSharingManager__authenticationBackgroundTaskForRequest___block_invoke;
  v13[3] = &unk_1E7A95948;
  objc_copyWeak(&v15, &location);
  v10 = v4;
  v14 = v10;
  v11 = [(LACBackgroundTask *)v9 initWithIdentifier:v8 worker:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

void __61__LACSharingManager__authenticationBackgroundTaskForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__LACSharingManager__authenticationBackgroundTaskForRequest___block_invoke_2;
    v6[3] = &unk_1E7A96198;
    v7 = v3;
    [WeakRetained _authenticateWithRequest:v5 completion:v6];
  }
}

void __61__LACSharingManager__authenticationBackgroundTaskForRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [LACBackgroundTaskResult alloc];
  if (v5)
  {
    v8 = [(LACBackgroundTaskResult *)v7 initWithError:v5];
  }

  else
  {
    v8 = [(LACBackgroundTaskResult *)v7 initWithValue:v10];
  }

  v9 = v8;
  (*(v6 + 16))(v6, v8);
}

- (void)_authenticateWithRequest:(id)a3 completion:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (self->_sharingManager && getSFAuthenticationOptionsClass())
  {
    v7 = objc_alloc_init(getSFAuthenticationOptionsClass());
    v8 = [v17 acmContextData];
    [v7 setAcmContext:v8];

    v9 = [v17 clientInfo];
    v10 = [v9 bundleId];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"<UNKNOWN>";
    }

    [v7 setBundleID:v12];

    v13 = [v17 clientInfo];
    v14 = [v13 displayName];
    if (v14)
    {
      [v7 setAppName:v14];
    }

    else
    {
      v15 = +[LACMobileGestalt marketingDeviceFamilyName];
      [v7 setAppName:v15];
    }

    [v7 setBiometricOnly:{objc_msgSend(v17, "isFallbackAvailable") ^ 1}];
    v16 = -[SFAuthenticationManager authenticateForType:withOptions:](self->_sharingManager, "authenticateForType:withOptions:", -[LACSharingManager _authenticationTypeForCompanion:](self, "_authenticationTypeForCompanion:", [v17 companionType]), v7);
    v6[2](v6, v16, 0);
  }

  else
  {
    v7 = [LACError errorWithCode:-1020 debugDescription:@"Authenticator not available"];
    (v6)[2](v6, 0, v7);
  }
}

- (id)_canAuthenticateBackgroundTaskWithCompanion:(int64_t)a3
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromLACCompanionType(a3);
  v6 = [v4 stringWithFormat:@"CanAuthenticateFor-%@", v5];

  v7 = [LACBackgroundTask alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__LACSharingManager__canAuthenticateBackgroundTaskWithCompanion___block_invoke;
  v10[3] = &unk_1E7A96148;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v8 = [(LACBackgroundTask *)v7 initWithIdentifier:v6 worker:v10];
  objc_destroyWeak(v11);

  objc_destroyWeak(&location);

  return v8;
}

void __65__LACSharingManager__canAuthenticateBackgroundTaskWithCompanion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__LACSharingManager__canAuthenticateBackgroundTaskWithCompanion___block_invoke_2;
    v6[3] = &unk_1E7A961C0;
    v6[4] = WeakRetained;
    v7 = v3;
    [WeakRetained _canAuthenticateWithCompanion:v5 completion:v6];
  }
}

void __65__LACSharingManager__canAuthenticateBackgroundTaskWithCompanion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [[LACBackgroundTaskResult alloc] initWithError:v6];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v9 = LACLogABM();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_INFO, "Can authenticate check started with sessionID:%{public}@", &v13, 0xCu);
    }

    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 8);
    v8 = _Block_copy(v10);
    [v11 setObject:v8 forKey:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_canAuthenticateWithCompanion:(int64_t)a3 completion:(id)a4
{
  v8 = a4;
  if (self->_sharingManager && getSFAuthenticationOptionsClass())
  {
    v6 = objc_alloc_init(getSFAuthenticationOptionsClass());
    [v6 setCheckLocally:1];
    [v6 setScanTimeout:1];
    v7 = [(SFAuthenticationManager *)self->_sharingManager canAuthenticateForType:[(LACSharingManager *)self _authenticationTypeForCompanion:a3] withOptions:v6];
    v8[2](v8, v7, 0);
  }

  else
  {
    v6 = [LACError errorWithCode:-1020 debugDescription:@"Authenticator not available"];
    (v8)[2](v8, 0, v6);
  }
}

- (void)_failSessionWithID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  replyQueue = self->_replyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__LACSharingManager__failSessionWithID_error___block_invoke;
  block[3] = &unk_1E7A961E8;
  objc_copyWeak(&v14, &location);
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(replyQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __46__LACSharingManager__failSessionWithID_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 manager:*(a1 + 32) didFailSessionWithID:*(a1 + 40) error:*(a1 + 48)];

    WeakRetained = v4;
  }
}

- (unint64_t)_authenticationTypeForCompanion:(int64_t)a3
{
  v3 = 14;
  if (a3 != 4)
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_pairedDeviceTypeForCompanion:(int64_t)a3
{
  v3 = 12;
  if (a3 != 4)
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

- (LACSharingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

+ (uint64_t)isSharingError:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_3_cold_1(v0, v1, v2);
}

@end