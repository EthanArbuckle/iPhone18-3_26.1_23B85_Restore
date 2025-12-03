@interface NUANFAssetLoader
- (NUANFAssetLoader)initWithContext:(id)context flintResourceManager:(id)manager;
- (id)assetDownloadOperationForResource:(id)resource completion:(id)completion;
- (id)asyncLoadAssetURLsOnceWithCompletion:(id)completion;
- (id)asyncLoadAssetsOnceWithCompletion:(id)completion;
- (id)fallbackResourceForID:(id)d;
- (id)loadAssetURLsWithCompletion:(id)completion;
- (id)loadAssetWithURL:(id)l completion:(id)completion;
- (id)loadAssetsWithCompletion:(id)completion;
- (id)resourceForID:(id)d;
- (id)resourceIDForResourceURL:(id)l;
- (void)setRelativePriority:(int64_t)priority;
@end

@implementation NUANFAssetLoader

- (NUANFAssetLoader)initWithContext:(id)context flintResourceManager:(id)manager
{
  contextCopy = context;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = NUANFAssetLoader;
  v9 = [(NUANFAssetLoader *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_flintResourceManager, manager);
    v10->_relativePriority = 0;
    v11 = objc_opt_new();
    fetchedResourceIDs = v10->_fetchedResourceIDs;
    v10->_fetchedResourceIDs = v11;

    documentController = [contextCopy documentController];
    requiredResourceURLs = [documentController requiredResourceURLs];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __57__NUANFAssetLoader_initWithContext_flintResourceManager___block_invoke;
    v25[3] = &unk_2799A4708;
    v15 = v10;
    v26 = v15;
    v16 = [requiredResourceURLs fc_arrayByTransformingWithBlock:v25];
    resourceIDs = v15->_resourceIDs;
    v15->_resourceIDs = v16;

    v18 = [managerCopy cachedResourcesWithIdentifiers:v15->_resourceIDs];
    v19 = [v18 fc_dictionaryWithKeySelector:sel_resourceID];

    [(NSMutableDictionary *)v10->_fetchedResourceIDs addEntriesFromDictionary:v19];
    v20 = [objc_alloc(MEMORY[0x277D30E30]) initWithTarget:v15 selector:sel_asyncLoadAssetURLsOnceWithCompletion_];
    assetURLsOperation = v15->_assetURLsOperation;
    v15->_assetURLsOperation = v20;

    v22 = [objc_alloc(MEMORY[0x277D30E30]) initWithTarget:v15 selector:sel_asyncLoadAssetsOnceWithCompletion_];
    assetsOperation = v15->_assetsOperation;
    v15->_assetsOperation = v22;
  }

  return v10;
}

- (void)setRelativePriority:(int64_t)priority
{
  self->_relativePriority = priority;
  assetURLsOperation = [(NUANFAssetLoader *)self assetURLsOperation];
  [assetURLsOperation setRelativePriority:priority];

  assetsOperation = [(NUANFAssetLoader *)self assetsOperation];
  [assetsOperation setRelativePriority:priority];
}

- (id)loadAssetURLsWithCompletion:(id)completion
{
  completionCopy = completion;
  assetURLsOperation = [(NUANFAssetLoader *)self assetURLsOperation];
  v6 = [assetURLsOperation executeWithCompletionHandler:completionCopy];

  return v6;
}

- (id)loadAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  assetsOperation = [(NUANFAssetLoader *)self assetsOperation];
  v6 = [assetsOperation executeWithCompletionHandler:completionCopy];

  return v6;
}

- (id)loadAssetWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__2;
  v24[4] = __Block_byref_object_dispose__2;
  v25 = 0;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke;
  v18[3] = &unk_2799A4730;
  objc_copyWeak(&v22, &location);
  v8 = completionCopy;
  v20 = v8;
  v9 = lCopy;
  v19 = v9;
  v21 = v24;
  v10 = [(NUANFAssetLoader *)self loadAssetURLsWithCompletion:v18];
  v11 = MEMORY[0x277D30EA8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke_5;
  v15[3] = &unk_2799A4758;
  v12 = v10;
  v16 = v12;
  v17 = v24;
  v13 = [v11 cancelHandlerWithBlock:v15];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  _Block_object_dispose(v24, 8);

  return v13;
}

void __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = [v4 resourceIDForResourceURL:*(a1 + 32)];
    v6 = [v4 resourceForID:v5];
    if (v6)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke_4;
      v11[3] = &unk_2799A4440;
      v7 = &v13;
      v13 = *(a1 + 40);
      v12 = v6;
      v8 = [v4 assetDownloadOperationForResource:v12 completion:v11];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke_3;
      v14[3] = &unk_2799A3148;
      v7 = &v15;
      v15 = *(a1 + 40);
      __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke_3(v14);
    }
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke_2;
    v16[3] = &unk_2799A3148;
    v17 = *(a1 + 40);
    __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke_2(v16);
    v4 = v17;
  }
}

uint64_t __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __48__NUANFAssetLoader_loadAssetWithURL_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 cancel];
}

- (id)resourceIDForResourceURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"asset"])
  {
    host = [lCopy host];
  }

  else
  {
    host = 0;
  }

  return host;
}

- (id)resourceForID:(id)d
{
  dCopy = d;
  fetchedResourceIDs = [(NUANFAssetLoader *)self fetchedResourceIDs];
  v6 = [fetchedResourceIDs objectForKey:dCopy];

  return v6;
}

- (id)fallbackResourceForID:(id)d
{
  dCopy = d;
  flintResourceManager = [(NUANFAssetLoader *)self flintResourceManager];
  v6 = [flintResourceManager cachedResourceWithIdentifier:dCopy];

  return v6;
}

- (id)asyncLoadAssetURLsOnceWithCompletion:(id)completion
{
  completionCopy = completion;
  flintResourceManager = [(NUANFAssetLoader *)self flintResourceManager];
  resourceIDs = [(NUANFAssetLoader *)self resourceIDs];
  relativePriority = [(NUANFAssetLoader *)self relativePriority];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__NUANFAssetLoader_asyncLoadAssetURLsOnceWithCompletion___block_invoke;
  v11[3] = &unk_2799A4780;
  v11[4] = self;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = [flintResourceManager fetchResourcesWithIdentifiers:resourceIDs downloadAssets:0 relativePriority:relativePriority callBackQueue:MEMORY[0x277D85CD0] completionBlock:v11];

  return v9;
}

uint64_t __57__NUANFAssetLoader_asyncLoadAssetURLsOnceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACC8];
  v4 = a2;
  [v3 isMainThread];
  v5 = [*(a1 + 32) fetchedResourceIDs];
  [v5 addEntriesFromDictionary:v4];

  [v4 count];
  v6 = [*(a1 + 32) fetchedResourceIDs];
  [v6 count];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

- (id)asyncLoadAssetsOnceWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  fetchedResourceIDs = [(NUANFAssetLoader *)self fetchedResourceIDs];
  resourceIDs = [(NUANFAssetLoader *)self resourceIDs];
  v7 = [fetchedResourceIDs nf_objectsForKeysWithoutMarker:resourceIDs];

  v8 = [v7 fc_subarrayWithMaxCount:50];
  v9 = [v8 fc_arrayByTransformingWithBlock:&__block_literal_global_12];
  v10 = [objc_alloc(MEMORY[0x277D30E20]) initWithAssetHandles:v9];
  [v10 setPurpose:*MEMORY[0x277D30B48]];
  [v10 setShouldFailOnMissingObjects:1];
  [v10 setRelativePriority:{-[NUANFAssetLoader relativePriority](self, "relativePriority")}];
  [v10 setFetchCompletionQueue:MEMORY[0x277D85CD0]];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__NUANFAssetLoader_asyncLoadAssetsOnceWithCompletion___block_invoke_2;
  v17[3] = &unk_2799A47C8;
  v11 = completionCopy;
  v18 = v11;
  [v10 setFetchCompletionBlock:v17];
  fc_sharedConcurrentQueue = [MEMORY[0x277CCABD8] fc_sharedConcurrentQueue];
  [fc_sharedConcurrentQueue addOperation:v10];

  v13 = NUArticleLoadLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    shortOperationDescription = [v10 shortOperationDescription];
    *buf = 138543362;
    v20 = shortOperationDescription;
    _os_log_impl(&dword_25C2D6000, v13, OS_LOG_TYPE_DEFAULT, "Article data loader will prefetch assets with operation=%{public}@", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __54__NUANFAssetLoader_asyncLoadAssetsOnceWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 status] == 0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (id)assetDownloadOperationForResource:(id)resource completion:(id)completion
{
  completionCopy = completion;
  assetHandle = [resource assetHandle];
  v8 = [assetHandle downloadIfNeededWithPriority:-[NUANFAssetLoader relativePriority](self completion:{"relativePriority"), completionCopy}];

  return v8;
}

@end