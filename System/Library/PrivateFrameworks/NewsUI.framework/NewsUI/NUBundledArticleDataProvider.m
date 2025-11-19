@interface NUBundledArticleDataProvider
- (NSString)articleID;
- (NUBundledArticleDataProvider)initWithArticle:(id)a3 embedDataManager:(id)a4 linkedContentManager:(id)a5;
- (id)embedForType:(id)a3;
- (id)fileURLForBundleURL:(id)a3;
- (id)loadImagesForImageRequest:(id)a3 completionBlock:(id)a4;
- (void)fileURLForURL:(id)a3 onCompletion:(id)a4 onError:(id)a5;
- (void)loadContextWithCompletionBlock:(id)a3;
- (void)performBlockForFontsInBundle:(id)a3;
- (void)registerFontsWithCompletion:(id)a3;
@end

@implementation NUBundledArticleDataProvider

- (NUBundledArticleDataProvider)initWithArticle:(id)a3 embedDataManager:(id)a4 linkedContentManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = NUBundledArticleDataProvider;
  v12 = [(NUBundledArticleDataProvider *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_article, a3);
    objc_storeStrong(&v13->_embedDataManager, a4);
    objc_storeStrong(&v13->_linkedContentManager, a5);
    v14 = [v11 linkedContentProviders];
    linkedContentProviders = v13->_linkedContentProviders;
    v13->_linkedContentProviders = v14;
  }

  return v13;
}

- (void)performBlockForFontsInBundle:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v24 = self;
  v6 = [(NUBundledArticleDataProvider *)self article];
  v7 = [v6 headline];
  v8 = [v7 localDraftPath];
  v9 = [v5 contentsOfDirectoryAtPath:v8 error:0];

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
        v15 = [v14 pathExtension];
        if (([v15 isEqualToString:@"ttf"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"otf"))
        {
          v16 = MEMORY[0x277CBEBC0];
          v17 = [(NUBundledArticleDataProvider *)v24 article];
          v18 = [v17 headline];
          v19 = [v18 localDraftPath];
          v20 = [v19 stringByAppendingPathComponent:v14];
          v21 = [v16 fileURLWithPath:v20 isDirectory:0];

          v4[2](v4, v21);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)loadContextWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(NUBundledArticleDataProvider *)self embedDataManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__NUBundledArticleDataProvider_loadContextWithCompletionBlock___block_invoke;
  v7[3] = &unk_2799A36A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 loadEmbedDataWithCompletion:v7];
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
  v2 = [(NUBundledArticleDataProvider *)self article];
  v3 = [v2 articleID];

  return v3;
}

- (void)registerFontsWithCompletion:(id)a3
{
  v4 = a3;
  [(NUBundledArticleDataProvider *)self performBlockForFontsInBundle:&__block_literal_global_13];
  v4[2]();
}

- (id)loadImagesForImageRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 URL];

  if (v8)
  {
    v9 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__NUBundledArticleDataProvider_loadImagesForImageRequest_completionBlock___block_invoke;
    block[3] = &unk_2799A3170;
    block[4] = self;
    v14 = v6;
    v15 = v7;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = [v6 loadingBlock];

    if (v10)
    {
      v11 = [v6 loadingBlock];
      v11[2](v11, 0);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
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

- (void)fileURLForURL:(id)a3 onCompletion:(id)a4 onError:(id)a5
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NUBundledArticleDataProvider_fileURLForURL_onCompletion_onError___block_invoke;
  block[3] = &unk_2799A47F0;
  v12 = v7;
  v13 = v8;
  block[4] = self;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__NUBundledArticleDataProvider_fileURLForURL_onCompletion_onError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) fileURLForBundleURL:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)embedForType:(id)a3
{
  v4 = a3;
  v5 = [(NUBundledArticleDataProvider *)self embedDataManager];
  v6 = [v5 embedForType:v4];

  return v6;
}

- (id)fileURLForBundleURL:(id)a3
{
  v4 = a3;
  v5 = [(NUBundledArticleDataProvider *)self article];
  v6 = [v5 headline];
  v7 = [v6 localDraftPath];
  v8 = [v4 host];

  v9 = [v7 stringByAppendingPathComponent:v8];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];

  return v10;
}

@end