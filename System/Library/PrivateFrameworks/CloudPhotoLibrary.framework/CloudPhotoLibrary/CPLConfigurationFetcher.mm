@interface CPLConfigurationFetcher
- (CPLConfigurationFetcher)initWithConfigurationURL:(id)l delegate:(id)delegate queue:(id)queue;
- (CPLConfigurationFetcherDelegate)delegate;
- (void)_updateConfigurationWithFetchData:(id)data fetchError:(id)error fetchURL:(id)l fromConfigurationDictionary:(id)dictionary;
- (void)fetchConfigurationDictionary:(id)dictionary completionHandler:(id)handler;
- (void)invalidate;
@end

@implementation CPLConfigurationFetcher

- (CPLConfigurationFetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)invalidate
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CPLConfigurationFetcher_invalidate__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_19503;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __37__CPLConfigurationFetcher_invalidate__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 8) invalidateAndCancel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v11 + 1) + 8 * v8) + 16))(*(*(&v11 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  result = [*(*(a1 + 32) + 16) removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fetchConfigurationDictionary:(id)dictionary completionHandler:(id)handler
{
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CPLConfigurationFetcher_fetchConfigurationDictionary_completionHandler___block_invoke;
  v14[3] = &unk_1E861F5D0;
  v15 = dictionaryCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_19503;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = dictionaryCopy;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __74__CPLConfigurationFetcher_fetchConfigurationDictionary_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = MEMORY[0x1E128EBA0]();
    [v2 addObject:v3];
  }

  if (!*(v1[4] + 1))
  {
    if (os_variant_has_internal_content())
    {
      v4 = [MEMORY[0x1E695E000] standardUserDefaults];
      v5 = [v4 stringForKey:@"CPLLocalConfigurationPrefix"];

      if (v5 && ([v5 hasPrefix:@"."] & 1) == 0 && objc_msgSend(v5, "rangeOfString:", @"/") == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = objc_alloc(MEMORY[0x1E696AEC0]);
        v7 = [*(v1[4] + 3) lastPathComponent];
        v8 = [v6 initWithFormat:@"%@-%@", v5, v7];

        v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/AppleInternal/Library/Photos/Backend/CPL/LocalConfigurations" isDirectory:1];
        v10 = [v9 URLByAppendingPathComponent:v8 isDirectory:0];
        v25 = 0;
        v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v10 options:1 error:&v25];
        v12 = v25;
        [v1[4] _updateConfigurationWithFetchData:v11 fetchError:v12 fetchURL:v10 fromConfigurationDictionary:v1[5]];

LABEL_20:
        goto LABEL_21;
      }
    }

    v5 = [MEMORY[0x1E696AF68] requestWithURL:*(v1[4] + 3)];
    v8 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
    v13 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v8];
    objc_storeStrong(v1[4] + 1, v13);
    v14 = v1[4];
    v15 = v14[1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __74__CPLConfigurationFetcher_fetchConfigurationDictionary_completionHandler___block_invoke_2;
    v22[3] = &unk_1E861F5A8;
    v22[4] = v14;
    v9 = v13;
    v23 = v9;
    v24 = v1[5];
    v16 = [v15 dataTaskWithRequest:v5 completionHandler:v22];
    [v16 resume];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLConfigurationOSLogDomain_19517();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v1[4] + 3);
        v19 = [v1[5] lastUpdateDate];
        if (v19)
        {
          v1 = [v1[5] lastUpdateDate];
          v20 = [CPLDateFormatter stringFromDateAgo:v1 now:0];
        }

        else
        {
          v20 = @"never";
        }

        *buf = 138543618;
        v27 = v18;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Updating configuration from %{public}@ - last update: %@", buf, 0x16u);
        if (v19)
        {
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v21 = *MEMORY[0x1E69E9840];
}

void __74__CPLConfigurationFetcher_fetchConfigurationDictionary_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(a1 + 32) + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__CPLConfigurationFetcher_fetchConfigurationDictionary_completionHandler___block_invoke_3;
  v16[3] = &unk_1E861B240;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v17 = v9;
  v18 = v10;
  v19 = v6;
  v20 = v7;
  v21 = *(a1 + 48);
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_19503;
  block[3] = &unk_1E861B4E0;
  v23 = v11;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

uint64_t __74__CPLConfigurationFetcher_fetchConfigurationDictionary_completionHandler___block_invoke_3(uint64_t result)
{
  v2 = *(result + 40);
  v3 = *(v2 + 8);
  if (*(result + 32) == v3)
  {
    v4 = result;
    *(v2 + 8) = 0;

    v5 = v4[5];
    v6 = v4[6];
    v7 = v5[3];
    v8 = v4[7];
    v9 = v4[8];

    return [v5 _updateConfigurationWithFetchData:v6 fetchError:v8 fetchURL:v7 fromConfigurationDictionary:v9];
  }

  return result;
}

- (void)_updateConfigurationWithFetchData:(id)data fetchError:(id)error fetchURL:(id)l fromConfigurationDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  errorCopy = error;
  lCopy = l;
  dictionaryCopy = dictionary;
  dispatch_assert_queue_V2(self->_queue);
  if (errorCopy)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_25;
    }

    v14 = __CPLConfigurationOSLogDomain_19517();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138543618;
    v39 = lCopy;
    v40 = 2112;
    v41 = errorCopy;
    v15 = "Could not fetch configuration from %{public}@. Will retry later: %@";
    v16 = v14;
    v17 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_5;
  }

  if (dataCopy)
  {
    v18 = [CPLConfigurationDictionary alloc];
    refreshIntervalKey = [dictionaryCopy refreshIntervalKey];
    [dictionaryCopy minRefreshInterval];
    v36 = 0;
    v20 = [(CPLConfigurationDictionary *)v18 initWithData:dataCopy refreshIntervalKey:refreshIntervalKey minRefreshInterval:&v36 error:?];
    v14 = v36;

    if (v20)
    {
      v21 = [v20 matchesConfigurationDictionary:dictionaryCopy];
      if (v21)
      {
        copyConfigurationDictionaryWithUpdatedDate = [dictionaryCopy copyConfigurationDictionaryWithUpdatedDate];

        v20 = copyConfigurationDictionaryWithUpdatedDate;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v23 = __CPLConfigurationOSLogDomain_19517();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = @"configuration has changed";
          if (v21)
          {
            v24 = @"configuration has not changed";
          }

          *buf = 138543618;
          v39 = lCopy;
          v40 = 2112;
          v41 = v24;
          _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEFAULT, "Fetched configuration from %{public}@ successfully - %@", buf, 0x16u);
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained configurationFetcher:self didUpdateConfigurationDictionary:v20 configurationHasChanged:v21 ^ 1u];
    }

    else
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_24;
      }

      v20 = __CPLConfigurationOSLogDomain_19517();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v39 = lCopy;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "Fetched configuration from %{public}@ is invalid. Will retry later: %@", buf, 0x16u);
      }
    }

    goto LABEL_24;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_25;
  }

  v14 = __CPLConfigurationOSLogDomain_19517();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v39 = lCopy;
    v40 = 2112;
    v41 = 0;
    v15 = "Fetched configuration from %{public}@ is empty. Will retry later: %@";
    v16 = v14;
    v17 = OS_LOG_TYPE_ERROR;
LABEL_5:
    _os_log_impl(&dword_1DC05A000, v16, v17, v15, buf, 0x16u);
  }

LABEL_24:

LABEL_25:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = self->_completionHandlers;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        (*(*(*(&v32 + 1) + 8 * i) + 16))(*(*(&v32 + 1) + 8 * i));
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v28);
  }

  [(NSMutableArray *)self->_completionHandlers removeAllObjects];
  v31 = *MEMORY[0x1E69E9840];
}

- (CPLConfigurationFetcher)initWithConfigurationURL:(id)l delegate:(id)delegate queue:(id)queue
{
  lCopy = l;
  delegateCopy = delegate;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = CPLConfigurationFetcher;
  v11 = [(CPLConfigurationFetcher *)&v17 init];
  if (v11)
  {
    v12 = [lCopy copy];
    configurationURL = v11->_configurationURL;
    v11->_configurationURL = v12;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_queue, queue);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = v11->_completionHandlers;
    v11->_completionHandlers = v14;
  }

  return v11;
}

@end