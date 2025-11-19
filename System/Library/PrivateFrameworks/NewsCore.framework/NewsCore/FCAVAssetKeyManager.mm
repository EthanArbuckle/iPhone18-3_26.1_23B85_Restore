@interface FCAVAssetKeyManager
- (FCAVAssetKeyManager)init;
- (id)_keyURIForKeyIdentifier:(void *)a1;
- (id)initWithService:(void *)a3 cache:;
- (uint64_t)_shouldRefreshKey:(uint64_t)result;
- (void)_completeKeyRequest:(void *)a3 withData:(void *)a4 error:(void *)a5 session:;
- (void)contentKeySession:(id)a3 didProvideContentKeyRequest:(id)a4;
- (void)contentKeySession:(id)a3 didProvidePersistableContentKeyRequest:(id)a4;
- (void)fetchKeysWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)refreshKeysIfNearExpiration:(id)a3 completionHandler:(id)a4;
- (void)registerAVURLAssetForAutomaticKeyManagement:(id)a3;
@end

@implementation FCAVAssetKeyManager

- (FCAVAssetKeyManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAVAssetKeyManager init]";
    v10 = 2080;
    v11 = "FCAVAssetKeyManager.m";
    v12 = 1024;
    v13 = 75;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAVAssetKeyManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)initWithService:(void *)a3 cache:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = FCAVAssetKeyManager;
    v8 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      v9 = objc_alloc_init(FCThreadSafeMutableArray);
      v10 = a1[4];
      a1[4] = v9;

      v11 = objc_alloc(MEMORY[0x1E69B68D8]);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __45__FCAVAssetKeyManager_initWithService_cache___block_invoke;
      v16[3] = &unk_1E7C36F98;
      a1 = a1;
      v17 = a1;
      v12 = [v11 initWithConstructor:v16];
      v13 = a1[3];
      a1[3] = v12;

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 addObserver:a1[3] selector:sel_reset name:*MEMORY[0x1E6958128] object:0];
    }
  }

  return a1;
}

id __45__FCAVAssetKeyManager_initWithService_cache___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6987F70] contentKeySessionWithKeySystem:*MEMORY[0x1E69873B0]];
  v3 = *(a1 + 32);
  v4 = FCAVWorkQueue();
  [v2 setDelegate:v3 queue:v4];

  return v2;
}

- (void)registerAVURLAssetForAutomaticKeyManagement:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 mayRequireContentKeysForMediaDataProcessing])
  {
    v5 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "AV asset key manager registering automatic key management for %{public}@", &v10, 0xCu);
    }

    if (self)
    {
      sharedContentKeySession = self->_sharedContentKeySession;
    }

    else
    {
      sharedContentKeySession = 0;
    }

    v7 = sharedContentKeySession;
    v8 = [(NFLazy *)v7 value];
    [v8 addContentKeyRecipient:v4];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fetchKeysWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __66__FCAVAssetKeyManager_fetchKeysWithIdentifiers_completionHandler___block_invoke;
  v34[3] = &unk_1E7C38BD8;
  v34[4] = self;
  v7 = [a3 fc_arrayByTransformingWithBlock:v34];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __66__FCAVAssetKeyManager_fetchKeysWithIdentifiers_completionHandler___block_invoke_2;
  v33[3] = &unk_1E7C467F8;
  v33[4] = self;
  v8 = [v7 fc_arrayOfObjectsPassingTest:v33];
  if ([v8 count])
  {
    v9 = [MEMORY[0x1E6987F70] contentKeySessionWithKeySystem:*MEMORY[0x1E69873B0]];
    v10 = FCAVWorkQueue();
    [v9 setDelegate:self queue:v10];

    v11 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v8 count];
      *buf = 134218498;
      v37 = v13;
      v38 = 2114;
      v39 = v9;
      v40 = 2114;
      v41 = v8;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "AV asset key manager fetching %lu keys on session %{public}@: %{public}@", buf, 0x20u);
    }

    v14 = [FCAVAssetKeyFetchRequest alloc];
    v15 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v16 = [(FCAVAssetKeyFetchRequest *)&v14->super.isa initWithContentKeySession:v9 keyURIs:v15 forceRefresh:0 completionHandler:v6];

    if (self)
    {
      fetchRequests = self->_fetchRequests;
    }

    else
    {
      fetchRequests = 0;
    }

    [(FCThreadSafeMutableArray *)fetchRequests addObject:v16];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v9 processContentKeyRequestWithIdentifier:*(*(&v24 + 1) + 8 * v22++) initializationData:0 options:{0, v24}];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v24 objects:v35 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __66__FCAVAssetKeyManager_fetchKeysWithIdentifiers_completionHandler___block_invoke_3;
    v31 = &unk_1E7C379C8;
    v32 = v6;
    v32[2](v32, 0);
    v9 = v32;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_keyURIForKeyIdentifier:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v4 = v3;
      a1 = v4;
    }

    else
    {
      objc_opt_class();
      if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v5 = v3;
        a1 = [MEMORY[0x1E695DFF8] URLWithString:v5];
      }

      else
      {
        v5 = 0;
        a1 = 0;
      }

      v4 = 0;
    }
  }

  return a1;
}

uint64_t __66__FCAVAssetKeyManager_fetchKeysWithIdentifiers_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 assetKeyForURI:a2];
  if (v5)
  {
    v6 = [(FCAVAssetKeyManager *)*(a1 + 32) _shouldRefreshKey:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (uint64_t)_shouldRefreshKey:(uint64_t)result
{
  if (result)
  {
    v2 = a2;
    v3 = [v2 creationDate];
    v4 = [v2 expirationDate];
    v5 = [v2 creationDate];

    [v4 timeIntervalSinceDate:v5];
    v7 = [v3 dateByAddingTimeInterval:v6 * 0.75];

    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [v8 fc_isLaterThanOrEqualTo:v7];

    return v9;
  }

  return result;
}

- (void)refreshKeysIfNearExpiration:(id)a3 completionHandler:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      *buf = 134217984;
      v37 = [v6 count];
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "AV asset key manager will see if %lu keys need refresh", buf, 0xCu);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke_18;
    v33[3] = &unk_1E7C38D38;
    v33[4] = self;
    v10 = [v6 fc_arrayByTransformingWithBlock:v33];
    if ([v10 count])
    {
      v11 = FCAVAssetLog;
      if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v6 count];
        *buf = 134218242;
        v37 = v13;
        v38 = 2114;
        v39 = v6;
        _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "AV asset key manager found %lu keys needing refresh: %{public}@", buf, 0x16u);
      }

      v14 = [MEMORY[0x1E6987F70] contentKeySessionWithKeySystem:*MEMORY[0x1E69873B0]];
      v15 = FCAVWorkQueue();
      [v14 setDelegate:self queue:v15];

      v16 = [FCAVAssetKeyFetchRequest alloc];
      v17 = [MEMORY[0x1E695DFD8] setWithArray:v10];
      v18 = [(FCAVAssetKeyFetchRequest *)&v16->super.isa initWithContentKeySession:v14 keyURIs:v17 forceRefresh:1 completionHandler:v7];

      if (self)
      {
        fetchRequests = self->_fetchRequests;
      }

      else
      {
        fetchRequests = 0;
      }

      [(FCThreadSafeMutableArray *)fetchRequests addObject:v18];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v20 = v10;
      v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v28;
        do
        {
          v24 = 0;
          do
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [v14 processContentKeyRequestWithIdentifier:*(*(&v27 + 1) + 8 * v24++) initializationData:0 options:{0, v27}];
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v22);
      }
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke_5;
      v31[3] = &unk_1E7C379C8;
      v32 = v7;
      __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke_5(v31);
      v14 = v32;
    }
  }

  else
  {
    v33[5] = MEMORY[0x1E69E9820];
    v33[6] = 3221225472;
    v33[7] = __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke;
    v33[8] = &unk_1E7C379C8;
    v25 = v7;
    v34 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, 0);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

id __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = [(FCAVAssetKeyManager *)*(a1 + 32) _keyURIForKeyIdentifier:a2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 assetKeyForURI:v5];
    if (v8 && [(FCAVAssetKeyManager *)*(a1 + 32) _shouldRefreshKey:v8])
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset key manager found no keys needing refresh", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)contentKeySession:(id)a3 didProvideContentKeyRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v8 = [v7 respondByRequestingPersistableContentKeyRequestAndReturnError:&v15];
  v9 = v15;
  if ((v8 & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__FCAVAssetKeyManager_contentKeySession_didProvideContentKeyRequest___block_invoke;
    v10[3] = &unk_1E7C38C98;
    v11 = v7;
    v12 = self;
    v13 = v9;
    v14 = v6;
    __69__FCAVAssetKeyManager_contentKeySession_didProvideContentKeyRequest___block_invoke(v10);
  }
}

void __69__FCAVAssetKeyManager_contentKeySession_didProvideContentKeyRequest___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "AV asset key manager failed to get persistableContentKeyRequest for identifier: %{public}@", &v7, 0xCu);
  }

  [(FCAVAssetKeyManager *)*(a1 + 40) _completeKeyRequest:0 withData:*(a1 + 48) error:*(a1 + 56) session:?];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_completeKeyRequest:(void *)a3 withData:(void *)a4 error:(void *)a5 session:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    if (v10)
    {
      v13 = [MEMORY[0x1E6987F68] contentKeyResponseWithFairPlayStreamingKeyResponseData:v10];
      [v9 processContentKeyResponse:v13];
    }

    else
    {
      [v9 processContentKeyResponseError:v11];
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 postNotificationName:@"AudioAssetDownloadFailed" object:v11 userInfo:MEMORY[0x1E695E0F8]];
    }

    v14 = [v9 identifier];
    v15 = [(FCAVAssetKeyManager *)a1 _keyURIForKeyIdentifier:v14];

    if (v15)
    {
      v16 = a1[4];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__FCAVAssetKeyManager__completeKeyRequest_withData_error_session___block_invoke;
      v17[3] = &unk_1E7C3B1F8;
      v18 = v12;
      v19 = v15;
      v20 = v11;
      [v16 readWriteWithAccessor:v17];
    }
  }
}

- (void)contentKeySession:(id)a3 didProvidePersistableContentKeyRequest:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v33 = a3;
  obj = a4;
  v6 = a4;
  v7 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 identifier];
    LODWORD(buf.receiver) = 138543362;
    *(&buf.receiver + 4) = v9;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "AV asset key manager successfully got persistableContentKeyRequest for identifier: %{public}@", &buf, 0xCu);
  }

  v10 = [v6 identifier];
  v11 = [(FCAVAssetKeyManager *)self _keyURIForKeyIdentifier:v10];

  if (!v11)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke;
    v45[3] = &unk_1E7C376A0;
    v45[4] = self;
    v46 = v6;
    v47 = v33;
    __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke(v45);

    goto LABEL_22;
  }

  v32 = v11;
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v13 = cache;
  v31 = [(FCAVAssetKeyCacheType *)v13 assetKeyForURI:v32];

  if (!v31 || ([(FCAVAssetKeyManager *)self _shouldRefreshKey:v31]& 1) != 0)
  {
    goto LABEL_10;
  }

  v14 = v32;
  v15 = v14;
  if (self)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v16 = self->_fetchRequests;
    buf.receiver = MEMORY[0x1E69E9820];
    buf.super_class = 3221225472;
    v53 = __50__FCAVAssetKeyManager__waitingOnRefreshForKeyURI___block_invoke;
    v54 = &unk_1E7C46848;
    v17 = v15;
    v55 = v17;
    v56 = &v48;
    [(FCThreadSafeMutableArray *)v16 enumerateObjectsUsingBlock:&buf];

    LOBYTE(v16) = *(v49 + 24);
    _Block_object_dispose(&v48, 8);

    if (v16)
    {
LABEL_10:
      v18 = FCAVAssetLog;
      if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.receiver) = 138543362;
        *(&buf.receiver + 4) = v32;
        _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "AV asset key manager fetching response for %{public}@", &buf, 0xCu);
      }

      v19 = [FCAVAssetKeyFetchOperation alloc];
      if (self)
      {
        v20 = self->_service;
        v21 = self->_cache;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v22 = v6;
      v23 = v32;
      v24 = v20;
      v25 = v21;
      if (v19)
      {
        buf.receiver = v19;
        buf.super_class = FCAVAssetKeyFetchOperation;
        v26 = [(FCAVAssetKeyManager *)&buf init];
        v19 = v26;
        if (v26)
        {
          objc_storeStrong(&v26[9]._sharedContentKeySession, obja);
          objc_storeStrong(&v19->_keyURI, v11);
          objc_storeStrong(&v19->_service, v20);
          objc_storeStrong(&v19->_cache, v21);
        }
      }

      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_26;
      newValue[3] = &unk_1E7C46820;
      v35 = v23;
      v36 = self;
      v37 = v22;
      v38 = v33;
      if (v19)
      {
        objc_setProperty_nonatomic_copy(v19, v27, newValue, 376);
      }

      [(FCOperation *)v19 start];

      goto LABEL_20;
    }
  }

  else
  {
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2;
  v39[3] = &unk_1E7C376C8;
  v40 = v15;
  v41 = self;
  v42 = v6;
  v43 = v31;
  v44 = v33;
  __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2(v39);

  v19 = v40;
LABEL_20:

LABEL_22:
  v28 = *MEMORY[0x1E69E9840];
}

void __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696ABC0] fc_invalidAVAssetKeyURIError];
  [(FCAVAssetKeyManager *)v2 _completeKeyRequest:v3 withData:0 error:v4 session:*(a1 + 48)];
}

void __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset key manager using cached response for %{public}@", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) keyData];
  [(FCAVAssetKeyManager *)v4 _completeKeyRequest:v5 withData:v6 error:0 session:*(a1 + 64)];

  v7 = *MEMORY[0x1E69E9840];
}

void __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2_27;
    v13[3] = &unk_1E7C376C8;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v17 = v6;
    v18 = *(a1 + 56);
    __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2_27(v13);
  }

  else
  {
    v10 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "AV asset key manager fetched response for %{public}@", buf, 0xCu);
    }

    [(FCAVAssetKeyManager *)*(a1 + 40) _completeKeyRequest:v5 withData:0 error:*(a1 + 56) session:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2_27(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset key manager failed to fetch response for %{public}@", &v5, 0xCu);
  }

  [(FCAVAssetKeyManager *)*(a1 + 40) _completeKeyRequest:0 withData:*(a1 + 56) error:*(a1 + 64) session:?];
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __50__FCAVAssetKeyManager__waitingOnRefreshForKeyURI___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    if (*(v6 + 8) == 1)
    {
      v9 = v6;
      v6 = [v6[3] containsObject:*(a1 + 32)];
      v7 = v9;
      if (v6)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v6, v7);
}

void __66__FCAVAssetKeyManager__completeKeyRequest_withData_error_session___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__FCAVAssetKeyManager__completeKeyRequest_withData_error_session___block_invoke_2;
  v20[3] = &unk_1E7C46870;
  v21 = *(a1 + 32);
  v4 = [v3 fc_firstObjectPassingTest:v20];
  v5 = v4;
  if (v4)
  {
    v4 = v4[3];
  }

  if ([v4 containsObject:*(a1 + 40)])
  {
    v6 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      if (v5)
      {
        v8 = v5[3];
      }

      else
      {
        v8 = 0;
      }

      *buf = 138543618;
      v23 = v7;
      v24 = 2114;
      v25 = v8;
      v9 = v6;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "AV asset key manager removing keyURI %{public}@ from %{public}@", buf, 0x16u);
    }

    if (v5)
    {
      [v5[3] removeObject:*(a1 + 40)];
      v10 = v5[4];
    }

    else
    {
      [0 removeObject:*(a1 + 40)];
      v10 = 0;
    }

    [v10 fc_safelyAddObject:*(a1 + 48)];
    if (v5)
    {
      v11 = v5[3];
    }

    else
    {
      v11 = 0;
    }

    if (![v11 count])
    {
      v12 = FCAVAssetLog;
      if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v13 = v5[2];
        }

        else
        {
          v13 = 0;
        }

        *buf = 138543362;
        v23 = v13;
        v14 = v12;
        _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "AV asset key manager finished key requests for session: %{public}@", buf, 0xCu);
      }

      if (v5)
      {
        v15 = v5[5];
        if (v15)
        {
          v16 = v15;
          v17 = v5[4];
          v18 = [v17 lastObject];
          v16[2](v16, v18);
        }
      }

      [v3 removeObjectIdenticalTo:v5];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

BOOL __66__FCAVAssetKeyManager__completeKeyRequest_withData_error_session___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2 == *(a1 + 32);
}

@end