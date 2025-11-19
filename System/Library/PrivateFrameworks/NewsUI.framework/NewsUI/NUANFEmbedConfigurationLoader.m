@interface NUANFEmbedConfigurationLoader
- (NUANFEmbedConfigurationLoader)initWithAppConfigManager:(id)a3 flintResourceManager:(id)a4;
- (id)asyncLoadEmbedConfigurationOnceWithCompletion:(id)a3;
- (id)loadEmbededConfigurationWithCompletion:(id)a3;
@end

@implementation NUANFEmbedConfigurationLoader

- (NUANFEmbedConfigurationLoader)initWithAppConfigManager:(id)a3 flintResourceManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = NUANFEmbedConfigurationLoader;
  v9 = [(NUANFEmbedConfigurationLoader *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appConfigurationManager, a3);
    objc_storeStrong(&v10->_flintResourceManager, a4);
    v11 = [v7 possiblyUnfetchedAppConfiguration];
    v12 = v11;
    if (!__embedConfiguration || (v13 = __loadedEmbedConfigurationID, [v11 embedConfigurationAssetID], v14 = objc_claimAutoreleasedReturnValue(), v14, v13 != v14))
    {
      v15 = [objc_alloc(MEMORY[0x277D30E30]) initWithTarget:v10 selector:sel_asyncLoadEmbedConfigurationOnceWithCompletion_];
      asyncOnceOperation = v10->_asyncOnceOperation;
      v10->_asyncOnceOperation = v15;

      [(FCAsyncOnceOperation *)v10->_asyncOnceOperation setRelativePriority:1];
    }
  }

  return v10;
}

- (id)loadEmbededConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NUANFEmbedConfigurationLoader *)self asyncOnceOperation];

  if (v5)
  {
    v6 = [(NUANFEmbedConfigurationLoader *)self asyncOnceOperation];
    v7 = [v6 executeWithCompletionHandler:v4];
  }

  else
  {
    if (__embedConfiguration)
    {
      v4[2](v4);
    }

    v7 = 0;
  }

  return v7;
}

- (id)asyncLoadEmbedConfigurationOnceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [NUEmbedConfigurationOperation alloc];
  v6 = [(NUANFEmbedConfigurationLoader *)self appConfigurationManager];
  v7 = [(NUANFEmbedConfigurationLoader *)self flintResourceManager];
  v8 = [(NUEmbedConfigurationOperation *)v5 initWithAppConfigManager:v6 flintResourceManager:v7];

  [(FCOperation *)v8 setQualityOfService:25];
  [(FCOperation *)v8 setRelativePriority:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__NUANFEmbedConfigurationLoader_asyncLoadEmbedConfigurationOnceWithCompletion___block_invoke;
  v12[3] = &unk_2799A3FF0;
  v13 = v4;
  v9 = v4;
  [(NUEmbedConfigurationOperation *)v8 setCompletion:v12];
  v10 = [MEMORY[0x277CCABD8] fc_sharedConcurrentQueue];
  [v10 addOperation:v8];

  return v8;
}

void __79__NUANFEmbedConfigurationLoader_asyncLoadEmbedConfigurationOnceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];

  if (v4)
  {
    v5 = MEMORY[0x277CCAAA0];
    v6 = [v3 data];
    v7 = [v5 JSONObjectWithData:v6 options:4 error:0];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277D550B0]) initWithValueClassBlock:&__block_literal_global_7 objectValueClassBlock:0 purgeBlock:0 andJSONObject:v7 andVersion:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__NUANFEmbedConfigurationLoader_asyncLoadEmbedConfigurationOnceWithCompletion___block_invoke_5;
      block[3] = &unk_2799A3170;
      v11 = v8;
      v12 = v3;
      v13 = *(a1 + 32);
      v9 = v8;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __79__NUANFEmbedConfigurationLoader_asyncLoadEmbedConfigurationOnceWithCompletion___block_invoke_3;
      v14[3] = &unk_2799A3148;
      v15 = *(a1 + 32);
      __79__NUANFEmbedConfigurationLoader_asyncLoadEmbedConfigurationOnceWithCompletion___block_invoke_3(v14);
      v9 = v15;
    }
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__NUANFEmbedConfigurationLoader_asyncLoadEmbedConfigurationOnceWithCompletion___block_invoke_2;
    v16[3] = &unk_2799A3148;
    v17 = *(a1 + 32);
    __79__NUANFEmbedConfigurationLoader_asyncLoadEmbedConfigurationOnceWithCompletion___block_invoke_2(v16);
    v7 = v17;
  }
}

uint64_t __79__NUANFEmbedConfigurationLoader_asyncLoadEmbedConfigurationOnceWithCompletion___block_invoke_5(uint64_t a1)
{
  objc_storeStrong(&__embedConfiguration, *(a1 + 32));
  v2 = [*(a1 + 40) identifier];
  v3 = __loadedEmbedConfigurationID;
  __loadedEmbedConfigurationID = v2;

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

@end