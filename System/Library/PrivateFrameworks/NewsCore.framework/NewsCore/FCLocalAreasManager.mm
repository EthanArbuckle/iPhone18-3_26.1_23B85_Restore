@interface FCLocalAreasManager
- (FCLocalAreasManager)initWithContentContext:(id)context;
- (void)_loadFromCache;
- (void)_refreshWithQoS:(int64_t)s completion:(id)completion;
- (void)fetchLocalAreasProvider:(id)provider;
@end

@implementation FCLocalAreasManager

- (FCLocalAreasManager)initWithContentContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = FCLocalAreasManager;
  v5 = [(FCLocalAreasManager *)&v13 init];
  contentContext = v5->_contentContext;
  v5->_contentContext = contextCopy;
  v7 = contextCopy;

  v8 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:17];
  queue = v5->_queue;
  v5->_queue = v8;

  v10 = [[FCOnce alloc] initWithOptions:1];
  loadFromCacheOnce = v5->_loadFromCacheOnce;
  v5->_loadFromCacheOnce = v10;

  return v5;
}

- (void)fetchLocalAreasProvider:(id)provider
{
  providerCopy = provider;
  loadFromCacheOnce = [(FCLocalAreasManager *)self loadFromCacheOnce];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__FCLocalAreasManager_fetchLocalAreasProvider___block_invoke;
  v8[3] = &unk_1E7C36EA0;
  v8[4] = self;
  [loadFromCacheOnce executeOnce:v8];

  localAreasMapping = [(FCLocalAreasManager *)self localAreasMapping];
  if (localAreasMapping)
  {
    [(FCLocalAreasManager *)self _refreshWithQoS:17 completion:0];
    providerCopy[2](providerCopy, localAreasMapping, 0);
  }

  else
  {
    v7 = providerCopy;
    [(FCLocalAreasManager *)self _refreshWithQoS:25 completion:v7];
  }
}

- (void)_loadFromCache
{
  v16[1] = *MEMORY[0x1E69E9840];
  contentContext = [(FCLocalAreasManager *)self contentContext];
  appConfigurationManager = [contentContext appConfigurationManager];
  possiblyUnfetchedAppConfiguration = [appConfigurationManager possiblyUnfetchedAppConfiguration];
  localAreasMappingResourceId = [possiblyUnfetchedAppConfiguration localAreasMappingResourceId];

  if (localAreasMappingResourceId)
  {
    v7 = localAreasMappingResourceId;
    v8 = [FCResourcesFetchOperation alloc];
    contentContext2 = [(FCLocalAreasManager *)self contentContext];
    v16[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v11 = [(FCResourcesFetchOperation *)v8 initWithContext:contentContext2 resourceIDs:v10 downloadAssets:0];

    [(FCFetchOperation *)v11 setCachePolicy:3];
    [(FCFetchOperation *)v11 setCanSendFetchCompletionSynchronously:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __37__FCLocalAreasManager__loadFromCache__block_invoke_4;
    v14[3] = &unk_1E7C3EF70;
    v14[4] = self;
    [(FCFetchOperation *)v11 setFetchCompletionBlock:v14];
    [(FCOperation *)v11 start];
    [(FCResourcesFetchOperation *)v11 waitUntilFinished];
  }

  else
  {
    v12 = FCLocalAreasLog;
    if (os_log_type_enabled(FCLocalAreasLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "No cached mapping resource because the config has no resource ID", buf, 2u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __37__FCLocalAreasManager__loadFromCache__block_invoke_4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a2 fetchedObject];
  v4 = [v3 fc_onlyObject];

  if (v4)
  {
    v5 = v4;
    v6 = [v5 assetHandle];
    v7 = [v6 dataProvider];
    v8 = [v7 data];

    if (v8)
    {
      v9 = v8;
      v10 = [[FCLocalAreasMapping alloc] initWithData:v9];
      [*(a1 + 32) setLocalAreasMapping:v10];

      v11 = [v5 fetchDate];
      [*(a1 + 32) setLocalAreasMappingFetchDate:v11];

      v12 = FCLocalAreasLog;
      if (os_log_type_enabled(FCLocalAreasLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [v5 fetchDate];
        v18 = 138543362;
        v19 = v14;
        _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Found cached mapping resource with fetch date: %{public}@", &v18, 0xCu);
      }
    }

    else
    {
      v16 = FCLocalAreasLog;
      if (os_log_type_enabled(FCLocalAreasLog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "No cached mapping resource because the asset hasn't been downloaded", &v18, 2u);
      }
    }
  }

  else
  {
    v15 = FCLocalAreasLog;
    if (os_log_type_enabled(FCLocalAreasLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "No cached mapping resource because the record hasn't been fetched", &v18, 2u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_refreshWithQoS:(int64_t)s completion:(id)completion
{
  completionCopy = completion;
  localAreasMappingFetchDate = [(FCLocalAreasManager *)self localAreasMappingFetchDate];
  if (localAreasMappingFetchDate && (v8 = localAreasMappingFetchDate, -[FCLocalAreasManager localAreasMappingFetchDate](self, "localAreasMappingFetchDate"), v9 = objc_claimAutoreleasedReturnValue(), [v9 fc_timeIntervalUntilNow], v11 = v10, v9, v8, v11 <= 86400.0))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke;
    v18[3] = &unk_1E7C37778;
    v12 = &v19;
    v18[4] = self;
    v19 = completionCopy;
    v13 = completionCopy;
    __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke(v18);
  }

  else
  {
    queue = [(FCLocalAreasManager *)self queue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_2;
    v16[3] = &unk_1E7C3EFC0;
    v12 = v17;
    v16[4] = self;
    v17[0] = completionCopy;
    v17[1] = s;
    v15 = completionCopy;
    [queue withQualityOfService:s enqueueBlock:v16];
  }
}

void __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) localAreasMapping];
    (*(v1 + 16))(v1, v2, 0);
  }
}

void __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_3;
  aBlock[3] = &unk_1E7C3C7C8;
  v4 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v27 = v4;
  v5 = v3;
  v28 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [*(a1 + 32) localAreasMappingFetchDate];
  if (v7 && (v8 = v7, [*(a1 + 32) localAreasMappingFetchDate], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "fc_timeIntervalUntilNow"), v11 = v10, v9, v8, v11 <= 86400.0))
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_4;
    v24 = &unk_1E7C379C8;
    v25 = v6;
    v6[2](v6, 0);
    v12 = v6;
  }

  else
  {
    v13 = FCLocalAreasLog;
    if (os_log_type_enabled(FCLocalAreasLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Will refresh mapping resource", buf, 2u);
    }

    v14 = [*(a1 + 32) contentContext];
    v15 = [v14 appConfigurationManager];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_13;
    v17[3] = &unk_1E7C3EF98;
    v17[4] = *(a1 + 32);
    v18 = v6;
    v19 = *(a1 + 48);
    v16 = v6;
    FCAppConfigurationFetch(v15, v17);

    v12 = v18;
  }
}

void __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (v4)
  {
    v5 = [*(a1 + 32) localAreasMapping];
    (*(v4 + 16))(v4, v5, v7);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [*(a1 + 32) contentContext];
  v6 = [v5 appConfigurationManager];
  v7 = [v6 possiblyUnfetchedAppConfiguration];
  v8 = [v7 localAreasMappingResourceId];

  if (v8)
  {
    v9 = v8;
    v10 = [FCResourcesFetchOperation alloc];
    v11 = [*(a1 + 32) contentContext];
    v32[0] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v13 = [(FCResourcesFetchOperation *)v10 initWithContext:v11 resourceIDs:v12 downloadAssets:1];

    [(FCFetchOperation *)v13 setCachePolicy:4];
    [(FCFetchOperation *)v13 setMaximumCachedAge:86400.0];
    [(FCOperation *)v13 setQualityOfService:*(a1 + 48)];
    v14 = *(a1 + 48);
    if (v14 == 9)
    {
      v15 = -1;
    }

    else
    {
      v15 = v14 == 33 || v14 == 25;
    }

    [(FCOperation *)v13 setRelativePriority:v15];
    v16 = FCLocalAreasLog;
    if (os_log_type_enabled(FCLocalAreasLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [(FCOperation *)v13 shortOperationDescription];
      *buf = 138543362;
      v31 = v18;
      _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "Will issue mapping resource fetch operation: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_15;
    v24 = &unk_1E7C3B838;
    v19 = *(a1 + 40);
    v25 = *(a1 + 32);
    v26 = v19;
    [(FCFetchOperation *)v13 setFetchCompletionBlock:&v21];
    [(FCOperation *)v13 start:v21];
  }

  else
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_2_14;
    v27[3] = &unk_1E7C37778;
    v29 = *(a1 + 40);
    v28 = v4;
    __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_2_14(v27);

    v9 = v29;
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_2_14(uint64_t a1)
{
  v2 = FCLocalAreasLog;
  if (os_log_type_enabled(FCLocalAreasLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "App config has no mapping resource ID", v5, 2u);
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchedObject];
  v5 = [v4 fc_onlyObject];

  if (v5)
  {
    v6 = v5;
    v7 = [v6 assetHandle];
    v8 = [v7 dataProvider];
    v9 = [v8 data];

    if (v9)
    {
      v10 = v9;
      v11 = [[FCLocalAreasMapping alloc] initWithData:v10];
      [*(a1 + 32) setLocalAreasMapping:v11];

      v12 = [v6 fetchDate];
      [*(a1 + 32) setLocalAreasMappingFetchDate:v12];

      v13 = FCLocalAreasLog;
      if (os_log_type_enabled(FCLocalAreasLog, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Successfully fetched mapping resource", v14, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_17;
      v15[3] = &unk_1E7C37BC0;
      v16 = v6;
      v17 = *(a1 + 40);
      __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_17(v15);

      v10 = v16;
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_2_16;
    v18[3] = &unk_1E7C37BC0;
    v19 = v3;
    v20 = *(a1 + 40);
    __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_2_16(v18);

    v6 = v19;
  }
}

void __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_2_16(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = FCLocalAreasLog;
  if (os_log_type_enabled(FCLocalAreasLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 error];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Failed to fetch mapping resource with error: %{public}@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) error];
  (*(v6 + 16))(v6, v7);

  v8 = *MEMORY[0x1E69E9840];
}

void __50__FCLocalAreasManager__refreshWithQoS_completion___block_invoke_17(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCLocalAreasLog;
  if (os_log_type_enabled(FCLocalAreasLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 assetHandle];
    v6 = [v5 downloadError];
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Failed to fetch mapping resource with error: %{public}@", &v11, 0xCu);
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) assetHandle];
  v9 = [v8 downloadError];
  (*(v7 + 16))(v7, v9);

  v10 = *MEMORY[0x1E69E9840];
}

@end