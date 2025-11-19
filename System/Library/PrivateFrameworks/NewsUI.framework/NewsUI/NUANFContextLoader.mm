@interface NUANFContextLoader
- (NUANFContextLoader)initWithANFContent:(id)a3 flintResourceManager:(id)a4 networkReachability:(id)a5 host:(id)a6 resourceURLTranslator:(id)a7 headline:(id)a8;
- (id)asyncLoadContextOnceWithCompletion:(id)a3;
- (id)fallbackAssetForImageRequest:(id)a3 original:(id)a4;
- (id)loadContextWithCompletion:(id)a3;
- (id)loadImagesForImageRequest:(id)a3 completionBlock:(id)a4;
- (id)translateURL:(id)a3;
- (void)fileURLForURL:(id)a3 onCompletion:(id)a4 onError:(id)a5;
- (void)setRelativePriority:(int64_t)a3;
@end

@implementation NUANFContextLoader

- (NUANFContextLoader)initWithANFContent:(id)a3 flintResourceManager:(id)a4 networkReachability:(id)a5 host:(id)a6 resourceURLTranslator:(id)a7 headline:(id)a8
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = NUANFContextLoader;
  v18 = [(NUANFContextLoader *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_anfContent, a3);
    objc_storeStrong(&v19->_flintResourceManager, a4);
    objc_storeStrong(&v19->_networkReachability, a5);
    objc_storeStrong(&v19->_host, a6);
    objc_storeStrong(&v19->_resourceURLTranslator, a7);
    objc_storeStrong(&v19->_headline, a8);
    v19->_relativePriority = 0;
    v20 = [objc_alloc(MEMORY[0x277D30E30]) initWithTarget:v19 selector:sel_asyncLoadContextOnceWithCompletion_];
    asyncOnceOperation = v19->_asyncOnceOperation;
    v19->_asyncOnceOperation = v20;

    v22 = objc_alloc_init(MEMORY[0x277CCABD8]);
    imageDecodingQueue = v19->_imageDecodingQueue;
    v19->_imageDecodingQueue = v22;

    [(NSOperationQueue *)v19->_imageDecodingQueue setMaxConcurrentOperationCount:2];
    [(NSOperationQueue *)v19->_imageDecodingQueue setQualityOfService:17];
  }

  return v19;
}

- (void)setRelativePriority:(int64_t)a3
{
  self->_relativePriority = a3;
  v5 = [(NUANFContextLoader *)self asyncOnceOperation];
  [v5 setRelativePriority:a3];

  v6 = [(NUANFContextLoader *)self assetLoader];
  [v6 setRelativePriority:a3];
}

- (id)loadContextWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NUANFContextLoader *)self context];
  if (v5 && (v6 = v5, [(NUANFContextLoader *)self assetLoader], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [(NUANFContextLoader *)self context];
    v9 = [(NUANFContextLoader *)self assetLoader];
    v4[2](v4, v8, v9, 0);

    v10 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v11 = [(NUANFContextLoader *)self asyncOnceOperation];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__NUANFContextLoader_loadContextWithCompletion___block_invoke;
    v13[3] = &unk_2799A3120;
    objc_copyWeak(&v15, &location);
    v14 = v4;
    v10 = [v11 executeWithCompletionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __48__NUANFContextLoader_loadContextWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v8 = WeakRetained;
    v4 = WeakRetained;
    v5 = [v4 context];
    v6 = [v4 assetLoader];
    v7 = [v4 contextError];

    (*(v3 + 16))(v3, v5, v6, v7);
    WeakRetained = v8;
  }
}

- (id)loadImagesForImageRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  objc_initWeak(&location, self);
  v8 = [(NUANFContextLoader *)self assetLoader];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke;
  v20[3] = &unk_2799A31E8;
  objc_copyWeak(&v24, &location);
  v9 = v7;
  v22 = v9;
  v23 = v26;
  v10 = v6;
  v21 = v10;
  v11 = [v8 loadAssetURLsWithCompletion:v20];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_10;
  v16[3] = &unk_2799A3210;
  v18 = v9;
  v19 = v26;
  v17 = v11;
  v12 = v9;
  v13 = v11;
  v14 = MEMORY[0x25F883F30](v16);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
  _Block_object_dispose(v26, 8);

  return v14;
}

void __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = v4;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_3;
      v16[3] = &unk_2799A3148;
      v17 = *(a1 + 40);
      __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_3(v16);
    }

    else
    {
      v6 = [v4 assetLoader];
      v7 = [*(a1 + 32) URL];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_4;
      v11[3] = &unk_2799A31C0;
      objc_copyWeak(&v15, (a1 + 56));
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v13 = v8;
      v14 = v9;
      v11[4] = v5;
      v12 = *(a1 + 32);
      v10 = [v6 loadAssetWithURL:v7 completion:v11];

      objc_destroyWeak(&v15);
    }
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_2;
    v18[3] = &unk_2799A3148;
    v19 = *(a1 + 40);
    __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_2(v18);
    v5 = v19;
  }
}

uint64_t __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_6;
      v18[3] = &unk_2799A3148;
      v19 = *(a1 + 48);
      __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_6(v18);
      v7 = v19;
    }

    else
    {
      v8 = [v3 assetHandle];
      v9 = [v8 filePath];

      if (!v9)
      {
        v10 = [*(a1 + 32) fallbackAssetForImageRequest:*(a1 + 40) original:v8];

        v8 = v10;
      }

      v11 = [v6 imageDecodingQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_7;
      v14[3] = &unk_2799A3198;
      v13 = *(a1 + 48);
      v12 = v13;
      v17 = v13;
      v15 = v8;
      v16 = *(a1 + 40);
      v7 = v8;
      [v11 addOperationWithBlock:v14];
    }
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_5;
    v20[3] = &unk_2799A3148;
    v21 = *(a1 + 48);
    __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_5(v20);
    v6 = v21;
  }
}

uint64_t __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_7(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_8;
    v10[3] = &unk_2799A3148;
    v11 = *(a1 + 48);
    __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_8(v10);
    v2 = v11;
  }

  else
  {
    v3 = [*(a1 + 32) fileURL];
    v4 = [*(a1 + 40) preserveColorspace];
    [*(a1 + 40) size];
    v5 = [NUANFImageResolver imageResourceResponseForFileURL:v3 perserveColorSpace:v4 withSize:4 andQuality:?];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_9;
    v6[3] = &unk_2799A3170;
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = *(a1 + 48);
    v2 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

uint64_t __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_9(uint64_t a1)
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

uint64_t __64__NUANFContextLoader_loadImagesForImageRequest_completionBlock___block_invoke_10(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 32) cancel];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)fileURLForURL:(id)a3 onCompletion:(id)a4 onError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NUANFContextLoader *)self assetLoader];
  v12 = [v11 resourceIDForResourceURL:v8];

  objc_initWeak(&location, self);
  v13 = [(NUANFContextLoader *)self assetLoader];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__NUANFContextLoader_fileURLForURL_onCompletion_onError___block_invoke;
  v18[3] = &unk_2799A3260;
  objc_copyWeak(&v22, &location);
  v14 = v10;
  v20 = v14;
  v15 = v12;
  v19 = v15;
  v16 = v9;
  v21 = v16;
  v17 = [v13 loadAssetURLsWithCompletion:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __57__NUANFContextLoader_fileURLForURL_onCompletion_onError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained assetLoader];
    v5 = [v4 resourceForID:*(a1 + 32)];

    v6 = [v5 assetHandle];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__NUANFContextLoader_fileURLForURL_onCompletion_onError___block_invoke_3;
    v9[3] = &unk_2799A3238;
    v10 = v5;
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    v7 = v5;
    v8 = [v6 downloadIfNeededWithCompletion:v9];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__NUANFContextLoader_fileURLForURL_onCompletion_onError___block_invoke_2;
    v13[3] = &unk_2799A3148;
    v14 = *(a1 + 40);
    __57__NUANFContextLoader_fileURLForURL_onCompletion_onError___block_invoke_2(v13);
    v7 = v14;
  }
}

void __57__NUANFContextLoader_fileURLForURL_onCompletion_onError___block_invoke_3(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NUANFContextLoader_fileURLForURL_onCompletion_onError___block_invoke_4;
  block[3] = &unk_2799A3238;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__NUANFContextLoader_fileURLForURL_onCompletion_onError___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) fileURL];

  if (v2)
  {
    v3 = *(a1 + 40);
    v5 = [*(a1 + 32) fileURL];
    (*(v3 + 16))(v3, v5);
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

- (id)translateURL:(id)a3
{
  v4 = a3;
  v5 = [(NUANFContextLoader *)self resourceURLTranslator];
  v6 = [v5 translateFileURLForURL:v4];

  return v6;
}

- (id)asyncLoadContextOnceWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NUANFContextLoader *)self anfContent];
  v6 = [(NUANFContextLoader *)self relativePriority];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NUANFContextLoader_asyncLoadContextOnceWithCompletion___block_invoke;
  v10[3] = &unk_2799A3288;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v10[4] = self;
  v11 = v7;
  v8 = [v5 fetchANFDocumentDataProviderWithPriority:v6 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __57__NUANFContextLoader_asyncLoadContextOnceWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = [v5 data];
    if (v10)
    {
      v28 = v6;
      v11 = MEMORY[0x277CBEBC0];
      v12 = [v9 headline];
      v13 = [v12 articleID];
      v27 = [v11 nss_NewsURLForArticleID:v13];

      v14 = objc_alloc(MEMORY[0x277D55078]);
      v15 = [v9 anfContent];
      v16 = [v15 identifier];
      v17 = [v9 host];
      v29 = 0;
      v18 = [v14 initWithIdentifier:v16 shareURL:v27 JSONData:v10 resourceDataSource:v9 host:v17 error:&v29];
      v19 = v29;
      [v9 setContext:v18];

      [v9 setContextError:v19];
      v9[8] = 1;
      v20 = [NUANFAssetLoader alloc];
      v21 = [v9 context];
      v22 = [v9 flintResourceManager];
      v23 = [(NUANFAssetLoader *)v20 initWithContext:v21 flintResourceManager:v22];
      [v9 setAssetLoader:v23];

      v24 = [a1[4] relativePriority];
      v25 = [v9 assetLoader];
      [v25 setRelativePriority:v24];

      v6 = v28;
      (*(a1[5] + 2))();

      v26 = v27;
    }

    else
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __57__NUANFContextLoader_asyncLoadContextOnceWithCompletion___block_invoke_3;
      v30[3] = &unk_2799A3170;
      v30[4] = v9;
      v31 = v6;
      v32 = a1[5];
      __57__NUANFContextLoader_asyncLoadContextOnceWithCompletion___block_invoke_3(v30);

      v26 = v31;
    }
  }

  else
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __57__NUANFContextLoader_asyncLoadContextOnceWithCompletion___block_invoke_2;
    v33[3] = &unk_2799A3148;
    v34 = a1[5];
    __57__NUANFContextLoader_asyncLoadContextOnceWithCompletion___block_invoke_2(v33);
    v9 = v34;
  }
}

uint64_t __57__NUANFContextLoader_asyncLoadContextOnceWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setContextError:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (id)fallbackAssetForImageRequest:(id)a3 original:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NUANFContextLoader *)self networkReachability];
  v9 = [v8 isNetworkReachable];

  if (v9)
  {
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __60__NUANFContextLoader_fallbackAssetForImageRequest_original___block_invoke;
    v46 = &unk_2799A32B0;
    v47 = v7;
    v10 = v47;
    v11 = v10;
  }

  else
  {
    v12 = [(NUANFContextLoader *)self context];
    v13 = [v12 documentController];
    v38 = v6;
    v14 = [v6 imageIdentifier];
    v11 = [v13 allResourcesForImageIdentifier:v14];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = [v11 reverseObjectEnumerator];
    v16 = [v15 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v21 = [(NUANFContextLoader *)self assetLoader];
          v22 = [v20 URL];
          v23 = [v21 resourceIDForResourceURL:v22];

          v24 = [(NUANFContextLoader *)self assetLoader];
          v25 = [v24 fallbackResourceForID:v23];

          if (v25 && ([v25 isOnDisk] & 1) != 0)
          {
            v34 = [v25 assetHandle];

            v6 = v38;
            goto LABEL_18;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v6 = v38;
    v26 = [v38 imageIdentifier];
    v27 = [(NUANFContextLoader *)self context];
    v28 = [v27 documentController];
    v29 = [v28 metadata];
    v30 = [v29 thumbnailImageIdentifier];
    v31 = [v26 isEqualToString:v30];

    if (v31)
    {
      v32 = [(NUANFContextLoader *)self headline];
      v33 = FCCachedThumbnailForHeadline();
      v34 = [v33 thumbnailAssetHandle];

      v35 = [v34 filePath];

      if (v35)
      {
        goto LABEL_18;
      }
    }

    v10 = v7;
  }

  v34 = v10;
LABEL_18:

  v36 = *MEMORY[0x277D85DE8];

  return v34;
}

@end