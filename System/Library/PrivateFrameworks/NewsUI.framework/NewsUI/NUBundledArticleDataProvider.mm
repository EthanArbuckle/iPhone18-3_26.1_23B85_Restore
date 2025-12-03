@interface NUBundledArticleDataProvider
- (NSString)articleID;
- (NUBundledArticleDataProvider)initWithArticle:(id)article embedDataManager:(id)manager linkedContentManager:(id)contentManager;
- (id)embedForType:(id)type;
- (id)fileURLForBundleURL:(id)l;
- (id)loadImagesForImageRequest:(id)request completionBlock:(id)block;
- (void)fileURLForURL:(id)l onCompletion:(id)completion onError:(id)error;
- (void)loadContextWithCompletionBlock:(id)block;
- (void)performBlockForFontsInBundle:(id)bundle;
- (void)registerFontsWithCompletion:(id)completion;
@end

@implementation NUBundledArticleDataProvider

- (NUBundledArticleDataProvider)initWithArticle:(id)article embedDataManager:(id)manager linkedContentManager:(id)contentManager
{
  articleCopy = article;
  managerCopy = manager;
  contentManagerCopy = contentManager;
  v17.receiver = self;
  v17.super_class = NUBundledArticleDataProvider;
  v12 = [(NUBundledArticleDataProvider *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_article, article);
    objc_storeStrong(&v13->_embedDataManager, manager);
    objc_storeStrong(&v13->_linkedContentManager, contentManager);
    linkedContentProviders = [contentManagerCopy linkedContentProviders];
    linkedContentProviders = v13->_linkedContentProviders;
    v13->_linkedContentProviders = linkedContentProviders;
  }

  return v13;
}

- (void)performBlockForFontsInBundle:(id)bundle
{
  v30 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  selfCopy = self;
  article = [(NUBundledArticleDataProvider *)self article];
  headline = [article headline];
  localDraftPath = [headline localDraftPath];
  v9 = [defaultManager contentsOfDirectoryAtPath:localDraftPath error:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        pathExtension = [v14 pathExtension];
        if (([pathExtension isEqualToString:@"ttf"] & 1) != 0 || objc_msgSend(pathExtension, "isEqualToString:", @"otf"))
        {
          v16 = MEMORY[0x277CBEBC0];
          article2 = [(NUBundledArticleDataProvider *)selfCopy article];
          headline2 = [article2 headline];
          localDraftPath2 = [headline2 localDraftPath];
          v20 = [localDraftPath2 stringByAppendingPathComponent:v14];
          v21 = [v16 fileURLWithPath:v20 isDirectory:0];

          bundleCopy[2](bundleCopy, v21);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)loadContextWithCompletionBlock:(id)block
{
  blockCopy = block;
  embedDataManager = [(NUBundledArticleDataProvider *)self embedDataManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__NUBundledArticleDataProvider_loadContextWithCompletionBlock___block_invoke;
  v7[3] = &unk_2799A36A8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [embedDataManager loadEmbedDataWithCompletion:v7];
}

void __63__NUBundledArticleDataProvider_loadContextWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(-2, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__NUBundledArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_2799A36A8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __63__NUBundledArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = [*(a1 + 32) article];
  v4 = [v3 headline];
  v5 = [v4 localDraftPath];
  v6 = [v5 stringByAppendingPathComponent:@"article.json"];
  v16 = 0;
  v7 = [v2 dataWithContentsOfFile:v6 options:0 error:&v16];
  v8 = v16;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__NUBundledArticleDataProvider_loadContextWithCompletionBlock___block_invoke_3;
  v12[3] = &unk_2799A3170;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v7;
  v14 = v9;
  v15 = v10;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __63__NUBundledArticleDataProvider_loadContextWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x277CBEBC0];
    v3 = [*(a1 + 40) article];
    v4 = [v3 headline];
    v5 = [v4 articleID];
    v6 = [v2 nss_NewsURLForArticleID:v5];

    v7 = objc_alloc(MEMORY[0x277D55078]);
    v8 = [*(a1 + 40) article];
    v9 = [v8 articleID];
    v10 = [v7 initWithIdentifier:v9 shareURL:v6 JSONData:*(a1 + 32) resourceDataSource:*(a1 + 40) host:0 error:0];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __63__NUBundledArticleDataProvider_loadContextWithCompletionBlock___block_invoke_4;
    v21[3] = &unk_2799A47F0;
    v24 = *(a1 + 48);
    v11 = v10;
    v12 = *(a1 + 40);
    v22 = v11;
    v23 = v12;
    v13 = MEMORY[0x25F883F30](v21);
    v14 = [*(a1 + 40) linkedContentManager];
    v15 = objc_opt_respondsToSelector();

    v16 = [*(a1 + 40) linkedContentManager];
    v17 = [*(a1 + 40) article];
    v18 = [v17 headline];
    if (v15)
    {
      v19 = [v16 loadLinkedContentForHeadline:v18 withContext:v11 priority:0 completion:v13];
    }

    else
    {
      v20 = [v16 loadLinkedContentForHeadline:v18 withContext:v11 completion:v13];
    }
  }
}

- (NSString)articleID
{
  article = [(NUBundledArticleDataProvider *)self article];
  articleID = [article articleID];

  return articleID;
}

- (void)registerFontsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(NUBundledArticleDataProvider *)self performBlockForFontsInBundle:&__block_literal_global_13];
  completionCopy[2]();
}

- (id)loadImagesForImageRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  v8 = [requestCopy URL];

  if (v8)
  {
    v9 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__NUBundledArticleDataProvider_loadImagesForImageRequest_completionBlock___block_invoke;
    block[3] = &unk_2799A3170;
    block[4] = self;
    v14 = requestCopy;
    v15 = blockCopy;
    dispatch_async(v9, block);
  }

  else
  {
    loadingBlock = [requestCopy loadingBlock];

    if (loadingBlock)
    {
      loadingBlock2 = [requestCopy loadingBlock];
      loadingBlock2[2](loadingBlock2, 0);
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }
  }

  return 0;
}

void __74__NUBundledArticleDataProvider_loadImagesForImageRequest_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) URL];
  v4 = [v2 fileURLForBundleURL:v3];

  [*(a1 + 40) size];
  v5 = [NUANFImageResolver imageResourceResponseForFileURL:v4 perserveColorSpace:0 withSize:4 andQuality:?];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__NUBundledArticleDataProvider_loadImagesForImageRequest_completionBlock___block_invoke_2;
  block[3] = &unk_2799A3170;
  v8 = *(a1 + 40);
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__NUBundledArticleDataProvider_loadImagesForImageRequest_completionBlock___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) loadingBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) loadingBlock];
    v3[2](v3, *(a1 + 40));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v7[0] = *(a1 + 40);
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    (*(v4 + 16))(v4, v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fileURLForURL:(id)l onCompletion:(id)completion onError:(id)error
{
  lCopy = l;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NUBundledArticleDataProvider_fileURLForURL_onCompletion_onError___block_invoke;
  block[3] = &unk_2799A47F0;
  v12 = lCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = lCopy;
  v10 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__NUBundledArticleDataProvider_fileURLForURL_onCompletion_onError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) fileURLForBundleURL:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)embedForType:(id)type
{
  typeCopy = type;
  embedDataManager = [(NUBundledArticleDataProvider *)self embedDataManager];
  v6 = [embedDataManager embedForType:typeCopy];

  return v6;
}

- (id)fileURLForBundleURL:(id)l
{
  lCopy = l;
  article = [(NUBundledArticleDataProvider *)self article];
  headline = [article headline];
  localDraftPath = [headline localDraftPath];
  host = [lCopy host];

  v9 = [localDraftPath stringByAppendingPathComponent:host];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];

  return v10;
}

@end