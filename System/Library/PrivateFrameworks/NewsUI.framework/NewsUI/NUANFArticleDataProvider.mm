@interface NUANFArticleDataProvider
- (NSString)articleID;
- (NUANFArticleDataProvider)initWithArticle:(id)a3 contentContext:(id)a4 fontRegistration:(id)a5 host:(id)a6 embedDataManager:(id)a7 linkedContentManager:(id)a8;
- (void)cancelAssetPrefetch;
- (void)dealloc;
- (void)loadArticleWithCompletionBlock:(id)a3;
- (void)loadContextWithCompletionBlock:(id)a3;
- (void)prefetchAssets;
- (void)reloadArticleIfNeeded;
- (void)setRelativePriority:(int64_t)a3;
- (void)setupAssetPrefetchCancellationWithOperation:(id)a3;
- (void)setupAssetPrefetchRequestEventsWithEvents:(id)a3;
@end

@implementation NUANFArticleDataProvider

- (NUANFArticleDataProvider)initWithArticle:(id)a3 contentContext:(id)a4 fontRegistration:(id)a5 host:(id)a6 embedDataManager:(id)a7 linkedContentManager:(id)a8
{
  v31[2] = *MEMORY[0x277D85DE8];
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v30.receiver = self;
  v30.super_class = NUANFArticleDataProvider;
  v18 = [(NUANFArticleDataProvider *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_article, a3);
    objc_storeStrong(&v19->_contentContext, a4);
    objc_storeStrong(&v19->_fontRegistration, a5);
    objc_storeStrong(&v19->_host, a6);
    objc_storeStrong(&v19->_embedDataManger, a7);
    objc_storeStrong(&v19->_linkedContentManager, a8);
    v20 = [v17 linkedContentProviders];
    linkedContentProviders = v19->_linkedContentProviders;
    v19->_linkedContentProviders = v20;

    v19->_relativePriority = 0;
    v22 = MEMORY[0x277CBEB98];
    v31[0] = @"contextDidLoadEvent";
    v31[1] = @"assetPrefetchRequestEvent";
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v24 = [v22 setWithArray:v23];
    [(NUANFArticleDataProvider *)v19 setupAssetPrefetchRequestEventsWithEvents:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)dealloc
{
  v3 = [(NUANFArticleDataProvider *)self fontLoader];
  [v3 unregisterFontsWithCompletion:&__block_literal_global_11];

  v4.receiver = self;
  v4.super_class = NUANFArticleDataProvider;
  [(NUANFArticleDataProvider *)&v4 dealloc];
}

- (NSString)articleID
{
  v2 = [(NUANFArticleDataProvider *)self article];
  v3 = [v2 articleID];

  return v3;
}

- (void)loadContextWithCompletionBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CACurrentMediaTime();
  v6 = NUArticleLoadLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NUANFArticleDataProvider *)self article];
    v8 = [v7 articleID];
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_25C2D6000, v6, OS_LOG_TYPE_DEFAULT, "Article data loader did start loading, articleID=%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke;
  v11[3] = &unk_2799A4530;
  v11[4] = self;
  v13[1] = *&v5;
  objc_copyWeak(v13, buf);
  v9 = v4;
  v12 = v9;
  [(NUANFArticleDataProvider *)self loadArticleWithCompletionBlock:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x277D85DE8];
}

void __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NUArticleLoadLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) article];
    v6 = [v5 articleID];
    v7 = CACurrentMediaTime() - *(a1 + 56);
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_25C2D6000, v4, OS_LOG_TYPE_DEFAULT, "Article data loader did finish loading model, articleID=%{public}@, duration=%f", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_14;
    v60[3] = &unk_2799A3148;
    v61 = *(a1 + 40);
    __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_14(v60);
    v11 = v61;
    goto LABEL_16;
  }

  v10 = WeakRetained;
  v11 = v10;
  if (v3)
  {
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2;
    v57[3] = &unk_2799A4440;
    v59 = *(a1 + 40);
    v58 = v3;
    __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2(v57);

    goto LABEL_16;
  }

  v12 = [v10 contextLoader];
  if (![v12 hasLoaded] || (objc_msgSend(v11, "fontLoader"), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_15;
  }

  v14 = [v11 embedDataManger];
  v15 = v14 == 0;

  if (v15)
  {
LABEL_15:
    v29 = dispatch_group_create();
    dispatch_group_enter(v29);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v63 = __Block_byref_object_copy__1;
    v64 = __Block_byref_object_dispose__1;
    v65 = 0;
    v30 = [v11 contextLoader];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_17;
    v52[3] = &unk_2799A4490;
    v52[4] = v11;
    v31 = v29;
    v55 = *(a1 + 56);
    v53 = v31;
    v54 = buf;
    v32 = [v30 loadContextWithCompletion:v52];

    dispatch_group_enter(v31);
    v33 = [v11 fontLoader];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_20;
    v49[3] = &unk_2799A44B8;
    v49[4] = v11;
    v51 = *(a1 + 56);
    v34 = v31;
    v50 = v34;
    v35 = [v33 loadFontsWithCompletion:v49];

    dispatch_group_enter(v34);
    v36 = [v11 embedDataManger];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_21;
    v46[3] = &unk_2799A44B8;
    v46[4] = v11;
    v48 = *(a1 + 56);
    v37 = v34;
    v47 = v37;
    [v36 loadEmbedDataWithCompletion:v46];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_22;
    v42[3] = &unk_2799A4508;
    v42[4] = v11;
    v45[1] = *(a1 + 56);
    objc_copyWeak(v45, (a1 + 48));
    v43 = *(a1 + 40);
    v44 = buf;
    v42[5] = *(a1 + 32);
    dispatch_group_notify(v37, MEMORY[0x277D85CD0], v42);

    objc_destroyWeak(v45);
    _Block_object_dispose(buf, 8);

    goto LABEL_16;
  }

  v16 = NUArticleLoadLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v11 article];
    v18 = [v17 articleID];
    v19 = CACurrentMediaTime() - *(a1 + 56);
    *buf = 138543618;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = v19;
    _os_log_impl(&dword_25C2D6000, v16, OS_LOG_TYPE_DEFAULT, "Article data loader did finish with prewarmed article, articleID=%{public}@, duration=%f", buf, 0x16u);
  }

  v20 = [v11 contextLoader];
  v21 = [v20 context];
  v22 = v21 == 0;

  if (v22)
  {
    v39 = *(a1 + 40);
    v40 = MEMORY[0x277CCA9B8];
    v26 = [v11 article];
    v27 = [v11 contextLoader];
    v28 = [v27 contextError];
    v41 = [v40 nu_errorArticleDownloadFailed:v26 underlyingError:v28];
    (*(v39 + 16))(v39, 0, 0, v41);
  }

  else
  {
    v23 = [v11 contextLoader];
    v24 = [v23 assetLoader];
    [v11 setAssetLoader:v24];

    v25 = *(a1 + 40);
    v26 = [v11 contextLoader];
    v27 = [v26 context];
    v28 = [v11 fontLoader];
    (*(v25 + 16))(v25, v27, v28, 0);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_16;
  block[3] = &unk_2799A3498;
  block[4] = v11;
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_16:

  v38 = *MEMORY[0x277D85DE8];
}

void __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_16(uint64_t a1)
{
  v1 = [*(a1 + 32) eventManager];
  [v1 fireEvent:@"contextDidLoadEvent"];
}

void __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_17(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = NUArticleLoadLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) article];
      v12 = [v11 articleID];
      v13 = CACurrentMediaTime() - *(a1 + 56);
      *buf = 138543618;
      v19 = v12;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_25C2D6000, v10, OS_LOG_TYPE_DEFAULT, "Article data loader did finish loading context, articleID=%{public}@, duration=%f", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2_18;
    v15[3] = &unk_2799A4468;
    v15[4] = *(a1 + 32);
    v16 = v8;
    v17 = *(a1 + 40);
    __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2_18(v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2_18(uint64_t a1)
{
  v2 = NUArticleLoadLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2_18_cold_1(a1, v2);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_20(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = NUArticleLoadLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) article];
    v4 = [v3 articleID];
    v5 = CACurrentMediaTime() - *(a1 + 48);
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_25C2D6000, v2, OS_LOG_TYPE_DEFAULT, "Article data loader did finish loading fonts, articleID=%{public}@, duration=%f", &v7, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

void __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_21(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = NUArticleLoadLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) article];
    v4 = [v3 articleID];
    v5 = CACurrentMediaTime() - *(a1 + 48);
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_25C2D6000, v2, OS_LOG_TYPE_DEFAULT, "Article data loader did finish embed data, articleID=%{public}@, duration=%f", &v7, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

void __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_22(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = NUArticleLoadLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) article];
    v4 = [v3 articleID];
    v5 = CACurrentMediaTime() - *(a1 + 72);
    *buf = 138543618;
    v23 = v4;
    v24 = 2048;
    v25 = v5;
    _os_log_impl(&dword_25C2D6000, v2, OS_LOG_TYPE_DEFAULT, "Article data loader start loading linked content, articleID=%{public}@, duration=%f", buf, 0x16u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_23;
  v19[3] = &unk_2799A44E0;
  objc_copyWeak(v21, (a1 + 64));
  v20 = *(a1 + 48);
  v21[1] = *(a1 + 72);
  v6 = MEMORY[0x25F883F30](v19);
  v7 = [*(*(*(a1 + 56) + 8) + 40) documentController];
  v8 = [v7 requiresLinkedContentForLayout];

  if ((v8 & 1) == 0)
  {
    v6[2](v6);

    v6 = &__block_literal_global_27;
  }

  v9 = [*(a1 + 32) linkedContentManager];
  v10 = objc_opt_respondsToSelector();

  v11 = [*(a1 + 32) linkedContentManager];
  [*(a1 + 32) article];
  if (v10)
    v12 = {;
    v13 = [v12 headline];
    v14 = [*(a1 + 32) contextLoader];
    v15 = [v14 context];
    v16 = [v11 loadLinkedContentForHeadline:v13 withContext:v15 priority:objc_msgSend(*(a1 + 40) completion:{"relativePriority"), v6}];
  }

  else
    v12 = {;
    v13 = [v12 headline];
    v14 = [*(a1 + 32) contextLoader];
    v15 = [v14 context];
    v17 = [v11 loadLinkedContentForHeadline:v13 withContext:v15 completion:v6];
  }

  objc_destroyWeak(v21);
  v18 = *MEMORY[0x277D85DE8];
}

void __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_23(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = NUArticleLoadLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 article];
      v7 = [v6 articleID];
      v8 = CACurrentMediaTime() - *(a1 + 48);
      *buf = 138543618;
      v25 = v7;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&dword_25C2D6000, v5, OS_LOG_TYPE_DEFAULT, "Article data loader did finish, articleID=%{public}@, duration=%f", buf, 0x16u);
    }

    v9 = [v4 contextLoader];
    v10 = [v9 context];

    if (v10)
    {
      v11 = [v4 contextLoader];
      v12 = [v11 assetLoader];
      [v4 setAssetLoader:v12];

      v13 = *(a1 + 32);
      v14 = [v4 contextLoader];
      v15 = [v14 context];
      v16 = [v4 fontLoader];
      (*(v13 + 16))(v13, v15, v16, 0);
    }

    else
    {
      v17 = *(a1 + 32);
      v18 = MEMORY[0x277CCA9B8];
      v14 = [v4 article];
      v15 = [v4 contextLoader];
      v16 = [v15 contextError];
      v19 = [v18 nu_errorArticleDownloadFailed:v14 underlyingError:v16];
      (*(v17 + 16))(v17, 0, 0, v19);
    }

    v20 = [v4 eventManager];
    [v20 fireEvent:@"contextDidLoadEvent"];
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2_24;
    v22[3] = &unk_2799A3148;
    v23 = *(a1 + 32);
    __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2_24(v22);
    v4 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)prefetchAssets
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277D31140] sharedNetworkReachability];
    v6 = [v5 isLowDataModeEnabled];

    if ((v6 & 1) == 0)
    {
      v7 = [(NUANFArticleDataProvider *)self eventManager];
      [v7 fireEvent:@"assetPrefetchRequestEvent"];
    }
  }
}

- (void)cancelAssetPrefetch
{
  v2 = [(NUANFArticleDataProvider *)self eventManager];
  [v2 fireEvent:@"assetPrefetchCancelEvent"];
}

- (void)setRelativePriority:(int64_t)a3
{
  self->_relativePriority = a3;
  v5 = [(NUANFArticleDataProvider *)self contextLoader];
  [v5 setRelativePriority:a3];

  v6 = [(NUANFArticleDataProvider *)self fontLoader];
  [v6 setRelativePriority:a3];
}

- (void)loadArticleWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(NUANFArticleDataProvider *)self reloadArticleIfNeeded];
  v5 = [(NUANFArticleDataProvider *)self contextLoader];
  if (v5 && (v6 = v5, [(NUANFArticleDataProvider *)self fontLoader], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v4[2](v4, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [(NUANFArticleDataProvider *)self article];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__NUANFArticleDataProvider_loadArticleWithCompletionBlock___block_invoke;
    v9[3] = &unk_2799A3300;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    [v8 performBlockWhenFullyLoaded:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __59__NUANFArticleDataProvider_loadArticleWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (v6)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __59__NUANFArticleDataProvider_loadArticleWithCompletionBlock___block_invoke_3;
      v45[3] = &unk_2799A4440;
      v47 = *(a1 + 32);
      v46 = v6;
      __59__NUANFArticleDataProvider_loadArticleWithCompletionBlock___block_invoke_3(v45);

      v10 = v47;
    }

    else
    {
      v11 = [v5 headline];

      if (!v11)
      {
        v33 = *(a1 + 32);
        v34 = [MEMORY[0x277CCA9B8] nu_errorArticleMissingHeadline:v5];
        (*(v33 + 16))(v33, v34);

        goto LABEL_6;
      }

      v12 = [v5 headline];
      v13 = [v12 contentType];

      if (v13 != 2)
      {
        v35 = *(a1 + 32);
        v36 = MEMORY[0x277CCA9B8];
        v37 = [v5 headline];
        v38 = [v36 nu_errorArticleContentTypeUnsupported:v37];
        (*(v35 + 16))(v35, v38);

        goto LABEL_6;
      }

      v14 = [v5 headline];
      v15 = [v9 contentContext];
      v42 = [v14 contentWithContext:v15];

      v43 = [v42 anfContent];
      v16 = [NUArticleResourceURLTranslator alloc];
      v17 = [v9 contentContext];
      v18 = [v17 appConfigurationManager];
      v44 = [(NUArticleResourceURLTranslator *)v16 initWithAppConfigurationManager:v18];

      v39 = [NUANFContextLoader alloc];
      v41 = [v9 contentContext];
      v40 = [v41 flintResourceManager];
      v19 = [v9 contentContext];
      v20 = [v19 networkReachability];
      v21 = [v9 host];
      v22 = [v5 headline];
      v23 = [(NUANFContextLoader *)v39 initWithANFContent:v43 flintResourceManager:v40 networkReachability:v20 host:v21 resourceURLTranslator:v44 headline:v22];
      [v9 setContextLoader:v23];

      v24 = [v9 relativePriority];
      v25 = [v9 contextLoader];
      [v25 setRelativePriority:v24];

      v26 = [NUANFFontLoader alloc];
      v27 = [v9 contentContext];
      v28 = [v27 flintResourceManager];
      v29 = [v9 fontRegistration];
      v30 = [(NUANFFontLoader *)v26 initWithANFContent:v43 flintResourceManager:v28 fontRegistration:v29];
      [v9 setFontLoader:v30];

      v31 = [v9 relativePriority];
      v32 = [v9 fontLoader];
      [v32 setRelativePriority:v31];

      (*(*(a1 + 32) + 16))();
      v10 = v42;
    }
  }

  else
  {
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __59__NUANFArticleDataProvider_loadArticleWithCompletionBlock___block_invoke_2;
    v48[3] = &unk_2799A3148;
    v49 = *(a1 + 32);
    __59__NUANFArticleDataProvider_loadArticleWithCompletionBlock___block_invoke_2(v48);
    v9 = v49;
  }

LABEL_6:
}

- (void)reloadArticleIfNeeded
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(NUANFArticleDataProvider *)self article];
  v4 = [v3 headline];

  if (v4)
  {
    v5 = v4;
    if ([v5 needsRapidUpdates])
    {
      v6 = [(NUANFArticleDataProvider *)self contentContext];
      v7 = [v6 networkReachability];
      v8 = [v7 isNetworkReachable];

      if (v8)
      {
        v9 = [v5 lastFetchedDate];
        [v9 fc_timeIntervalUntilNow];
        v11 = v10;

        if (v11 > 30.0)
        {
          v12 = NUArticleLoadLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(NUANFArticleDataProvider *)self article];
            v14 = [v13 articleID];
            *buf = 138543362;
            v24 = v14;
            _os_log_impl(&dword_25C2D6000, v12, OS_LOG_TYPE_DEFAULT, "Article data loader did reset for rapid updates, articleID=%{public}@", buf, 0xCu);
          }

          [(NUANFArticleDataProvider *)self setContextLoader:0];
          [(NUANFArticleDataProvider *)self setFontLoader:0];
          v15 = [(NUANFArticleDataProvider *)self contentContext];
          v16 = [v15 articleController];
          v17 = [(NUANFArticleDataProvider *)self articleID];
          [(NUANFArticleDataProvider *)self relativePriority];
          v18 = [v16 articleWithID:v17 forceArticleUpdate:1 qualityOfService:FCInferQualityOfServiceFromRelativePriority() relativePriority:{-[NUANFArticleDataProvider relativePriority](self, "relativePriority")}];
          [(NUANFArticleDataProvider *)self setArticle:v18];
        }

        else
        {
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __49__NUANFArticleDataProvider_reloadArticleIfNeeded__block_invoke_47;
          v20[3] = &unk_2799A3440;
          v21 = v5;
          v22 = self;
          __49__NUANFArticleDataProvider_reloadArticleIfNeeded__block_invoke_47(v20);
        }
      }

      else
      {
        __49__NUANFArticleDataProvider_reloadArticleIfNeeded__block_invoke_3();
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __49__NUANFArticleDataProvider_reloadArticleIfNeeded__block_invoke_3()
{
  v0 = NUArticleLoadLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25C2D6000, v0, OS_LOG_TYPE_DEFAULT, "Article data loader did not reload rapid-updates because network is not reachable", v1, 2u);
  }
}

void __49__NUANFArticleDataProvider_reloadArticleIfNeeded__block_invoke_47(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = NUArticleLoadLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) lastFetchedDate];
    v4 = [*(a1 + 40) article];
    v5 = [v4 articleID];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_25C2D6000, v2, OS_LOG_TYPE_DEFAULT, "Article data loader will not reload rapid-updates article because it's up-to-date, fetchDate=%{public}@, articleID=%{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setupAssetPrefetchRequestEventsWithEvents:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D34758]);
  [(NUANFArticleDataProvider *)self setEventManager:v5];

  objc_initWeak(&location, self);
  v6 = [(NUANFArticleDataProvider *)self eventManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NUANFArticleDataProvider_setupAssetPrefetchRequestEventsWithEvents___block_invoke;
  v7[3] = &unk_2799A3CD0;
  objc_copyWeak(&v8, &location);
  [v6 triggerOnceWhenAllEventsHaveOccurred:v4 block:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __70__NUANFArticleDataProvider_setupAssetPrefetchRequestEventsWithEvents___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = NUArticleLoadLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 article];
      v6 = [v5 articleID];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_25C2D6000, v4, OS_LOG_TYPE_DEFAULT, "Article data loader will prefetch assets, articleID=%{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__1;
    v15 = __Block_byref_object_dispose__1;
    v16 = 0;
    v7 = [v3 assetLoader];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__NUANFArticleDataProvider_setupAssetPrefetchRequestEventsWithEvents___block_invoke_51;
    v11[3] = &unk_2799A3DE8;
    v11[4] = &buf;
    v8 = [v7 loadAssetsWithCompletion:v11];
    v9 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v8;

    [v3 setupAssetPrefetchCancellationWithOperation:*(*(&buf + 1) + 40)];
    _Block_object_dispose(&buf, 8);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __70__NUANFArticleDataProvider_setupAssetPrefetchRequestEventsWithEvents___block_invoke_51(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)setupAssetPrefetchCancellationWithOperation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v5 = [(NUANFArticleDataProvider *)self eventManager];
  v6 = [MEMORY[0x277CBEB98] setWithObject:@"assetPrefetchCancelEvent"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__NUANFArticleDataProvider_setupAssetPrefetchCancellationWithOperation___block_invoke;
  v7[3] = &unk_2799A4558;
  objc_copyWeak(&v8, &from);
  objc_copyWeak(&v9, &location);
  [v5 triggerOnceWhenAllEventsHaveOccurred:v6 block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __72__NUANFArticleDataProvider_setupAssetPrefetchCancellationWithOperation___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancel];
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = NUArticleLoadLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 article];
        v9 = [v8 articleID];
        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_25C2D6000, v7, OS_LOG_TYPE_DEFAULT, "Article data loader will cancel asset prefetch, articleID=%{public}@", &v12, 0xCu);
      }

      v10 = [MEMORY[0x277CBEB98] setWithObject:@"assetPrefetchRequestEvent"];
      [v6 setupAssetPrefetchRequestEventsWithEvents:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__NUANFArticleDataProvider_loadContextWithCompletionBlock___block_invoke_2_18_cold_1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) article];
  v5 = [v4 articleID];
  v6 = *(a1 + 40);
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_25C2D6000, a2, OS_LOG_TYPE_ERROR, "Article data loader did fail loading context, articleID=%{public}@, error=%{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end