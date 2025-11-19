@interface MUAMSResultProvider
- (MUAMSResultProvider)initWithCache:(id)a3;
- (void)_finishWithResults:(id)a3 error:(id)a4 onCallbackQueue:(id)a5 completion:(id)a6;
- (void)fetchResultsForAdamIds:(id)a3 options:(id)a4 callbackQueue:(id)a5 completion:(id)a6;
- (void)fetchResultsForBundleIds:(id)a3 options:(id)a4 callbackQueue:(id)a5 completion:(id)a6;
@end

@implementation MUAMSResultProvider

- (void)_finishWithResults:(id)a3 error:(id)a4 onCallbackQueue:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MUAMSResultProvider__finishWithResults_error_onCallbackQueue_completion___block_invoke;
  block[3] = &unk_1E821B8D8;
  v17 = v10;
  v18 = v11;
  v16 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v11;
  dispatch_async(a5, block);
}

- (void)fetchResultsForBundleIds:(id)a3 options:(id)a4 callbackQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __81__MUAMSResultProvider_fetchResultsForBundleIds_options_callbackQueue_completion___block_invoke;
  v19[3] = &unk_1E821A7F8;
  objc_copyWeak(&v24, &location);
  v20 = v10;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v15 = v11;
  v16 = v13;
  v17 = v12;
  v18 = v10;
  dispatch_async(queue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __81__MUAMSResultProvider_fetchResultsForBundleIds_options_callbackQueue_completion___block_invoke(id *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = a1[4];
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v6)
    {
      v7 = *v32;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v10 = [WeakRetained[1] amsResultForBundleId:v9];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v6);
    }

    v11 = [v3 count];
    v12 = MUGetMUAMSResultProviderLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        v14 = a1[4];
        *buf = 138412546;
        v36 = v3;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_INFO, "These bundle ids are not present %@. Requesting the service for bundle ids %@.", buf, 0x16u);
      }

      v15 = [MEMORY[0x1E696F1A0] sharedInstance];
      v16 = [a1[4] copy];
      [a1[6] artworkSize];
      v18 = v17;
      v20 = v19;
      [a1[6] displayScale];
      v22 = v21;
      v23 = [a1[6] source];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __81__MUAMSResultProvider_fetchResultsForBundleIds_options_callbackQueue_completion___block_invoke_55;
      v27[3] = &unk_1E821A848;
      objc_copyWeak(&v30, a1 + 8);
      v28 = a1[5];
      v29 = a1[7];
      [v15 appleMediaServicesResultsWithBundleIdentifiers:v16 artworkSize:v23 screenScale:v27 source:v18 completion:{v20, v22}];

      objc_destroyWeak(&v30);
    }

    else
    {
      if (v13)
      {
        v24 = a1[4];
        *buf = 138412290;
        v36 = v24;
        _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_INFO, "There is a cache hit for all requested bundle ids %@.  Early return.", buf, 0xCu);
      }

      v25 = [v4 copy];
      [WeakRetained _finishWithResults:v25 error:0 onCallbackQueue:a1[5] completion:a1[7]];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __81__MUAMSResultProvider_fetchResultsForBundleIds_options_callbackQueue_completion___block_invoke_55(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__MUAMSResultProvider_fetchResultsForBundleIds_options_callbackQueue_completion___block_invoke_2;
    block[3] = &unk_1E821A820;
    v11 = v6;
    v12 = v5;
    v13 = v8;
    v14 = a1[4];
    v15 = a1[5];
    dispatch_async(v9, block);
  }
}

void __81__MUAMSResultProvider_fetchResultsForBundleIds_options_callbackQueue_completion___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MUGetMUAMSResultProviderLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_1C5620000, v2, OS_LOG_TYPE_ERROR, "Error with fetching bundle ids %@", buf, 0xCu);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = MUGetMUAMSResultProviderLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v9 identifier];
          *buf = 138412290;
          v23 = v11;
          _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_INFO, "Updating cache with bundle id %@", buf, 0xCu);
        }

        v12 = *(*(a1 + 48) + 8);
        v13 = [v9 iOSBundleIdentifier];
        [v12 setAMSResult:v9 forBundleId:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *(a1 + 48);
  v15 = [*(a1 + 40) copy];
  [v14 _finishWithResults:v15 error:*(a1 + 32) onCallbackQueue:*(a1 + 56) completion:*(a1 + 64)];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)fetchResultsForAdamIds:(id)a3 options:(id)a4 callbackQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__MUAMSResultProvider_fetchResultsForAdamIds_options_callbackQueue_completion___block_invoke;
  v19[3] = &unk_1E821A7F8;
  objc_copyWeak(&v24, &location);
  v20 = v10;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v15 = v11;
  v16 = v13;
  v17 = v12;
  v18 = v10;
  dispatch_async(queue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __79__MUAMSResultProvider_fetchResultsForAdamIds_options_callbackQueue_completion___block_invoke(id *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = a1[4];
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v6)
    {
      v7 = *v32;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v10 = [WeakRetained[1] amsResultForAdamId:v9];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v6);
    }

    v11 = [v3 count];
    v12 = MUGetMUAMSResultProviderLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        v14 = a1[4];
        *buf = 138412546;
        v36 = v3;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_INFO, "These adam ids are not present %@. Requesting the service for adam ids %@.", buf, 0x16u);
      }

      v15 = [MEMORY[0x1E696F1A0] sharedInstance];
      v16 = [a1[4] copy];
      [a1[6] artworkSize];
      v18 = v17;
      v20 = v19;
      [a1[6] displayScale];
      v22 = v21;
      v23 = [a1[6] source];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __79__MUAMSResultProvider_fetchResultsForAdamIds_options_callbackQueue_completion___block_invoke_52;
      v27[3] = &unk_1E821A7D0;
      objc_copyWeak(&v30, a1 + 8);
      v27[4] = WeakRetained;
      v28 = a1[5];
      v29 = a1[7];
      [v15 appleMediaServicesResultsWithIdentifiers:v16 artworkSize:1 screenScale:v23 type:v27 source:v18 completion:{v20, v22}];

      objc_destroyWeak(&v30);
    }

    else
    {
      if (v13)
      {
        v24 = a1[4];
        *buf = 138412290;
        v36 = v24;
        _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_INFO, "There is a cache hit for all requested adam ids %@.  Early return.", buf, 0xCu);
      }

      v25 = [v4 copy];
      [WeakRetained _finishWithResults:v25 error:0 onCallbackQueue:a1[5] completion:a1[7]];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __79__MUAMSResultProvider_fetchResultsForAdamIds_options_callbackQueue_completion___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__MUAMSResultProvider_fetchResultsForAdamIds_options_callbackQueue_completion___block_invoke_2;
    v11[3] = &unk_1E821A7A8;
    v12 = v6;
    v13 = v5;
    v14 = v8;
    v10 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = v10;
    v17 = *(a1 + 48);
    dispatch_async(v9, v11);
  }
}

void __79__MUAMSResultProvider_fetchResultsForAdamIds_options_callbackQueue_completion___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MUGetMUAMSResultProviderLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_1C5620000, v2, OS_LOG_TYPE_ERROR, "Error with fetching adam ids %@", buf, 0xCu);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = MUGetMUAMSResultProviderLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v9 identifier];
          *buf = 138412290;
          v23 = v11;
          _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_INFO, "Updating cache with adam id %@", buf, 0xCu);
        }

        v12 = *(*(a1 + 48) + 8);
        v13 = [v9 identifier];
        [v12 setAMSResult:v9 forAdamId:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *(a1 + 56);
  v15 = [*(a1 + 40) copy];
  [v14 _finishWithResults:v15 error:*(a1 + 32) onCallbackQueue:*(a1 + 64) completion:*(a1 + 72)];

  v16 = *MEMORY[0x1E69E9840];
}

- (MUAMSResultProvider)initWithCache:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MUAMSResultProvider;
  v6 = [(MUAMSResultProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_amsResultCache, a3);
    v8 = geo_dispatch_queue_create_with_qos();
    queue = v7->_queue;
    v7->_queue = v8;
  }

  return v7;
}

@end