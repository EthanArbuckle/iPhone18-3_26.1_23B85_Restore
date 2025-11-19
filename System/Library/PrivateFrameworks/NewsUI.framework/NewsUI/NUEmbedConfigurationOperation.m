@interface NUEmbedConfigurationOperation
- (NUEmbedConfigurationOperation)initWithAppConfigManager:(id)a3 flintResourceManager:(id)a4;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation NUEmbedConfigurationOperation

- (NUEmbedConfigurationOperation)initWithAppConfigManager:(id)a3 flintResourceManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NUEmbedConfigurationOperation;
  v9 = [(FCOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appConfigurationManager, a3);
    objc_storeStrong(&v10->_flintResourceManager, a4);
  }

  return v10;
}

- (void)performOperation
{
  [(NUEmbedConfigurationOperation *)self qualityOfService];
  v3 = FCDispatchQueueForQualityOfService();
  v4 = [(NUEmbedConfigurationOperation *)self appConfigurationManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__NUEmbedConfigurationOperation_performOperation__block_invoke;
  v6[3] = &unk_2799A48D8;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [v4 fetchAppConfigurationIfNeededWithCompletionQueue:v5 completion:v6];
}

void __49__NUEmbedConfigurationOperation_performOperation__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 embedConfigurationAssetID];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __49__NUEmbedConfigurationOperation_performOperation__block_invoke_cold_1();
    }

    goto LABEL_7;
  }

  if (a3 || ([*(a1 + 32) isCancelled] & 1) != 0)
  {
LABEL_7:
    [*(a1 + 32) finishedPerformingOperationWithError:0];
    goto LABEL_8;
  }

  v6 = [*(a1 + 32) flintResourceManager];
  v20[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [*(a1 + 32) relativePriority];
  v9 = *(a1 + 40);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __49__NUEmbedConfigurationOperation_performOperation__block_invoke_6;
  v17 = &unk_2799A48B0;
  v10 = v5;
  v11 = *(a1 + 32);
  v18 = v10;
  v19 = v11;
  v12 = [v6 fetchResourcesWithIdentifiers:v7 downloadAssets:1 relativePriority:v8 callBackQueue:v9 completionBlock:&v14];

  [*(a1 + 32) associateChildOperation:{v12, v14, v15, v16, v17}];
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

void __49__NUEmbedConfigurationOperation_performOperation__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = [a2 objectForKey:*(a1 + 32)];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 assetHandle];
    v8 = [v7 filePath];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8];
      v10 = [[NUEmbedConfigurationOperationResult alloc] initWithData:v9 idenfifier:*(a1 + 32)];
      [*(a1 + 40) setResult:v10];

      [*(a1 + 40) finishedPerformingOperationWithError:0];
    }

    else
    {
      [*(a1 + 40) finishedPerformingOperationWithError:v11];
    }
  }

  else
  {
    [*(a1 + 40) finishedPerformingOperationWithError:v11];
  }
}

- (void)operationWillFinishWithError:(id)a3
{
  v7 = a3;
  v4 = [(NUEmbedConfigurationOperation *)self completion];

  if (v4)
  {
    v5 = [(NUEmbedConfigurationOperation *)self completion];
    v6 = [(NUEmbedConfigurationOperation *)self result];
    (v5)[2](v5, v6, v7);
  }
}

void __49__NUEmbedConfigurationOperation_performOperation__block_invoke_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Expecting a resource identifier for the embed configuration"];
  v2 = 136315906;
  v3 = "[NUEmbedConfigurationOperation performOperation]_block_invoke";
  v4 = 2080;
  v5 = "NUEmbedConfigurationOperation.m";
  v6 = 1024;
  v7 = 44;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25C2D6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end