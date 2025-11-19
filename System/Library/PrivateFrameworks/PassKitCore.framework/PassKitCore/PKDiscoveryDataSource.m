@interface PKDiscoveryDataSource
- (BOOL)_queue_updateArticleLayouts:(id)a3;
- (NSArray)articleLayouts;
- (PKDiscoveryDataSource)initWithDelegate:(id)a3;
- (PKDiscoveryDataSourceDelegate)delegate;
- (id)_articleLayoutForItemIdentifier:(id)a3;
- (id)_localArticleLayoutForItemIdentifier:(id)a3;
- (id)_localArticleNameForItemIdentifier:(id)a3;
- (void)_addDismissActionToArticleLayouts:(id)a3;
- (void)_manifestAllowsMiniCardsWithCompletion:(id)a3;
- (void)_updateArticlesWithCompletion:(id)a3;
- (void)dealloc;
- (void)discoveryArticleLayoutForItemWithIdentifier:(id)a3 completion:(id)a4;
- (void)discoveryService:(id)a3 completedCTAForItem:(id)a4;
- (void)discoveryService:(id)a3 receivedUpdatedDiscoveryArticleLayouts:(id)a4;
- (void)displayedDiscoveryItem:(id)a3 isWelcomeCard:(BOOL)a4 afterSwipingToCard:(BOOL)a5 multipleStoryCardsAvailable:(BOOL)a6 callToAction:(int64_t)a7 cardSize:(int64_t)a8;
- (void)setArticleLayouts:(id)a3;
- (void)tappedDiscoveryItem:(id)a3 callToAction:(id)a4 cardSize:(int64_t)a5;
- (void)updateArticleLayouts;
@end

@implementation PKDiscoveryDataSource

- (void)updateArticleLayouts
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PKDiscoveryDataSource_updateArticleLayouts__block_invoke;
  v4[3] = &unk_1E79C9D80;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__PKDiscoveryDataSource_updateArticleLayouts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (WeakRetained[40] & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject(0x2FuLL);
    v4 = os_signpost_id_generate(v3);
    v5 = v3;
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "com.apple.passkit.discovery.card-fetch", "", buf, 2u);
    }

    v2[40] = 1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__PKDiscoveryDataSource_updateArticleLayouts__block_invoke_24;
    v8[3] = &unk_1E79C9D58;
    v10 = v2;
    v11 = v4;
    v9 = v6;
    v7 = v6;
    [v2 _updateArticlesWithCompletion:v8];
  }
}

void __45__PKDiscoveryDataSource_updateArticleLayouts__block_invoke_24(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_END, v6, "com.apple.passkit.discovery.card-fetch", "", buf, 2u);
  }

  v7 = *(a1 + 40);
  v8 = *(v7 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PKDiscoveryDataSource_updateArticleLayouts__block_invoke_25;
  v9[3] = &unk_1E79C4EC8;
  v9[4] = v7;
  v10 = a2;
  dispatch_async(v8, v9);
}

void __45__PKDiscoveryDataSource_updateArticleLayouts__block_invoke_25(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 0;
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));

    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__PKDiscoveryDataSource_updateArticleLayouts__block_invoke_2;
      block[3] = &unk_1E79C4E28;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (NSArray)articleLayouts
{
  os_unfair_lock_lock(&self->_articleLayoutsLock);
  articleLayouts = self->_articleLayouts;
  if (articleLayouts)
  {
    v4 = [(NSArray *)articleLayouts copy];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_articleLayoutsLock);

  return v4;
}

- (PKDiscoveryDataSource)initWithDelegate:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PKDiscoveryDataSource;
  v5 = [(PKDiscoveryDataSource *)&v22 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.passd.discoverymanager.work", 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v6;

    objc_storeWeak(&v5->_delegate, v4);
    v5->_articleLayoutsLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    articleLayouts = v5->_articleLayouts;
    v5->_articleLayouts = v8;

    v10 = +[PKDiscoveryService sharedInstance];
    discoveryService = v5->_discoveryService;
    v5->_discoveryService = v10;

    [(PKDiscoveryService *)v5->_discoveryService addObserver:v5];
    v12 = MEMORY[0x1E698C7D8];
    v13 = [MEMORY[0x1E698C9E0] bagSubProfile];
    v14 = [MEMORY[0x1E698C9E0] bagSubProfileVersion];
    v15 = [v12 bagForProfile:v13 profileVersion:v14];

    v16 = [objc_alloc(MEMORY[0x1E698CA00]) initWithContainerID:@"com.apple.passbook" bag:v15];
    AMPMetrics = v5->_AMPMetrics;
    v5->_AMPMetrics = v16;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__PKDiscoveryDataSource_initWithDelegate___block_invoke;
    v20[3] = &unk_1E79C9D30;
    v18 = v5;
    v21 = v18;
    [(PKDiscoveryDataSource *)v18 _manifestAllowsMiniCardsWithCompletion:v20];
    [(PKDiscoveryDataSource *)v18 updateArticleLayouts];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[PKDiscoveryService sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKDiscoveryDataSource;
  [(PKDiscoveryDataSource *)&v4 dealloc];
}

void __45__PKDiscoveryDataSource_updateArticleLayouts__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained discoveryDataSource:*(a1 + 32) didUpdateArticleLayouts:*(*(a1 + 32) + 32)];
}

- (void)discoveryArticleLayoutForItemWithIdentifier:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(PKDiscoveryDataSource *)self _articleLayoutForItemIdentifier:v8];
  if (v7)
  {
    v6[2](v6, v7, 0);
  }

  else
  {
    [(PKDiscoveryService *)self->_discoveryService discoveryArticleLayoutForItemWithIdentifier:v8 completion:v6];
  }
}

- (void)setArticleLayouts:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_articleLayoutsLock);
  articleLayouts = self->_articleLayouts;
  self->_articleLayouts = v4;

  os_unfair_lock_unlock(&self->_articleLayoutsLock);
}

- (void)discoveryService:(id)a3 receivedUpdatedDiscoveryArticleLayouts:(id)a4
{
  v5 = a4;
  workQueue = self->_workQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PKDiscoveryDataSource_discoveryService_receivedUpdatedDiscoveryArticleLayouts___block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(workQueue, v8);
}

void __81__PKDiscoveryDataSource_discoveryService_receivedUpdatedDiscoveryArticleLayouts___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_updateArticleLayouts:*(a1 + 40)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__PKDiscoveryDataSource_discoveryService_receivedUpdatedDiscoveryArticleLayouts___block_invoke_2;
  v3[3] = &unk_1E79C4EC8;
  v4 = v2;
  v3[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __81__PKDiscoveryDataSource_discoveryService_receivedUpdatedDiscoveryArticleLayouts___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));

    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained((*(a1 + 32) + 64));
      v3 = *(a1 + 32);
      v4 = [v3 articleLayouts];
      [v5 discoveryDataSource:v3 didUpdateArticleLayouts:v4];
    }
  }
}

- (void)discoveryService:(id)a3 completedCTAForItem:(id)a4
{
  v5 = [a4 eventForKey:@"actionComplete"];
  if (v5)
  {
    v6 = v5;
    [(AMSMetrics *)self->_AMPMetrics enqueueEvent:v5];
    v5 = v6;
  }
}

- (void)_manifestAllowsMiniCardsWithCompletion:(id)a3
{
  v4 = a3;
  if (PKDiscoveryForceAllowMiniCards())
  {
    v5 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Skipping lookup for global value miniCardsAllowed due to internal setting to force mini cards", buf, 2u);
    }

    v4[2](v4, 1);
  }

  else
  {
    discoveryService = self->_discoveryService;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__PKDiscoveryDataSource__manifestAllowsMiniCardsWithCompletion___block_invoke;
    v7[3] = &unk_1E79C9DA8;
    v7[4] = self;
    v8 = v4;
    [(PKDiscoveryService *)discoveryService manifestAllowsMiniCardsWithCompletion:v7];
  }
}

void __64__PKDiscoveryDataSource__manifestAllowsMiniCardsWithCompletion___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKDiscoveryDataSource__manifestAllowsMiniCardsWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C4DB0;
  v9 = v5;
  v10 = *(a1 + 40);
  v11 = a3;
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __64__PKDiscoveryDataSource__manifestAllowsMiniCardsWithCompletion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PKLogFacilityTypeGetObject(0x11uLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Lookup for global value miniCardsAllowed failed with error:%@ returning NO", &v7, 0xCu);
    }
  }

  else if (v4)
  {
    v5 = *(a1 + 48);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Lookup for global value miniCardsAllowed succeeded with value:%ld", &v7, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)_articleLayoutForItemIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_articleLayouts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [v10 itemIdentifier];
      v12 = v4;
      v13 = v12;
      if (v11 == v12)
      {
        break;
      }

      if (v4 && v11)
      {
        v14 = [v11 isEqualToString:v12];

        if (v14)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

LABEL_16:
    v15 = v10;

    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

  v15 = [(PKDiscoveryDataSource *)self _localArticleLayoutForItemIdentifier:v4, v17];
LABEL_18:

  return v15;
}

- (void)_updateArticlesWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  discoveryService = self->_discoveryService;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PKDiscoveryDataSource__updateArticlesWithCompletion___block_invoke;
  v10[3] = &unk_1E79C9DF8;
  v10[4] = self;
  objc_copyWeak(&v12, &location);
  v6 = v4;
  v11 = v6;
  [(PKDiscoveryService *)discoveryService discoveryArticleLayoutsWithCompletion:v10];
  v7 = self->_discoveryService;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PKDiscoveryDataSource__updateArticlesWithCompletion___block_invoke_29;
  v8[3] = &unk_1E79C9550;
  objc_copyWeak(&v9, &location);
  [(PKDiscoveryService *)v7 dismissedDiscoveryItems:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __55__PKDiscoveryDataSource__updateArticlesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PKDiscoveryDataSource__updateArticlesWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C9DD0;
  objc_copyWeak(&v16, (a1 + 48));
  v12 = v6;
  v13 = v5;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v16);
}

void __55__PKDiscoveryDataSource__updateArticlesWithCompletion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!*(a1 + 32))
    {
      v10 = [WeakRetained _queue_updateArticleLayouts:*(a1 + 40)];
      goto LABEL_8;
    }

    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v9 = v7;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%@ could not fetch discovery article layouts: %@", &v11, 0x16u);
    }
  }

  v10 = 0;
LABEL_8:
  (*(*(a1 + 56) + 16))(*(a1 + 56), v10, v3, v4);
}

void __55__PKDiscoveryDataSource__updateArticlesWithCompletion___block_invoke_29(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) eventForKey:{@"dismiss", v11}];
        if (v10)
        {
          [WeakRetained[2] enqueueEvent:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)_queue_updateArticleLayouts:(id)a3
{
  v4 = a3;
  articleLayouts = self->_articleLayouts;
  if (!v4 || !articleLayouts)
  {
    if (articleLayouts == v4)
    {
      goto LABEL_4;
    }

LABEL_6:
    [(PKDiscoveryDataSource *)self _addDismissActionToArticleLayouts:v4];
    [(PKDiscoveryDataSource *)self setArticleLayouts:v4];
    v6 = 1;
    goto LABEL_7;
  }

  if (([(NSArray *)articleLayouts isEqual:v4]& 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = 0;
LABEL_7:

  return v6;
}

- (void)_addDismissActionToArticleLayouts:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = *v17;
    v8 = MEMORY[0x1E69E9820];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_initWeak(&from, v10);
        aBlock[0] = v8;
        aBlock[1] = 3221225472;
        aBlock[2] = __59__PKDiscoveryDataSource__addDismissActionToArticleLayouts___block_invoke;
        aBlock[3] = &unk_1E79C9E98;
        objc_copyWeak(&v13, &location);
        objc_copyWeak(&v14, &from);
        v11 = _Block_copy(aBlock);
        [v10 setActionOnDismiss:v11];

        objc_destroyWeak(&v14);
        objc_destroyWeak(&v13);
        objc_destroyWeak(&from);
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v6);
  }

  objc_destroyWeak(&location);
}

void __59__PKDiscoveryDataSource__addDismissActionToArticleLayouts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    os_unfair_lock_lock(WeakRetained + 6);
    v7 = *(WeakRetained + 4);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__PKDiscoveryDataSource__addDismissActionToArticleLayouts___block_invoke_2;
    v19[3] = &unk_1E79C9E20;
    v19[4] = v6;
    v8 = [v7 indexOfObjectPassingTest:v19];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = [*(WeakRetained + 4) mutableCopy];
      [v10 removeObjectAtIndex:v9];
      v11 = [v10 copy];
      v12 = *(WeakRetained + 4);
      *(WeakRetained + 4) = v11;
    }

    os_unfair_lock_unlock(WeakRetained + 6);
    v13 = *(WeakRetained + 1);
    v14 = [v6 itemIdentifier];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__PKDiscoveryDataSource__addDismissActionToArticleLayouts___block_invoke_3;
    v15[3] = &unk_1E79C9E70;
    objc_copyWeak(&v17, (a1 + 32));
    objc_copyWeak(&v18, (a1 + 40));
    v16 = v3;
    [v13 updateDiscoveryItemWithIdentifier:v14 forAction:1 completion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
  }
}

uint64_t __59__PKDiscoveryDataSource__addDismissActionToArticleLayouts___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 itemIdentifier];
  v4 = [*(a1 + 32) itemIdentifier];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

void __59__PKDiscoveryDataSource__addDismissActionToArticleLayouts___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PKDiscoveryDataSource__addDismissActionToArticleLayouts___block_invoke_4;
    v7[3] = &unk_1E79C9E48;
    objc_copyWeak(&v10, a1 + 5);
    objc_copyWeak(&v11, a1 + 6);
    v9 = a1[4];
    v8 = v3;
    dispatch_async(v6, v7);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
  }
}

void __59__PKDiscoveryDataSource__addDismissActionToArticleLayouts___block_invoke_4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  v4 = v3;
  if (WeakRetained)
  {
    v5 = [v3 item];
    v6 = [v5 eventForKey:@"dismiss"];

    if (v6)
    {
      [WeakRetained[2] enqueueEvent:v6];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PKDiscoveryDataSource__addDismissActionToArticleLayouts___block_invoke_5;
    v7[3] = &unk_1E79C4888;
    v9 = a1[5];
    v8 = a1[4];
    [WeakRetained _updateArticlesWithCompletion:v7];
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

- (void)displayedDiscoveryItem:(id)a3 isWelcomeCard:(BOOL)a4 afterSwipingToCard:(BOOL)a5 multipleStoryCardsAvailable:(BOOL)a6 callToAction:(int64_t)a7 cardSize:(int64_t)a8
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v18 = a3;
  discoveryService = self->_discoveryService;
  v15 = [v18 identifier];
  [(PKDiscoveryService *)discoveryService displayedDiscoveryItemWithIdentifier:v15 isWelcomeCard:v12 afterSwipingToCard:v11 multipleStoryCardsAvailable:v10 callToAction:a7 cardSize:a8];

  v16 = v18;
  if (!v12)
  {
    v17 = [v18 eventForKey:@"display"];
    if (v17)
    {
      [(AMSMetrics *)self->_AMPMetrics enqueueEvent:v17];
    }

    v16 = v18;
  }
}

- (void)tappedDiscoveryItem:(id)a3 callToAction:(id)a4 cardSize:(int64_t)a5
{
  discoveryService = self->_discoveryService;
  v9 = a4;
  v10 = a3;
  v11 = [v10 identifier];
  v12 = [v9 action];

  [(PKDiscoveryService *)discoveryService tappedDiscoveryItemWithIdentifier:v11 callToAction:v12 cardSize:a5];
  v14 = [v10 eventForKey:@"action"];

  v13 = v14;
  if (v14)
  {
    [(AMSMetrics *)self->_AMPMetrics enqueueEvent:v14];
    v13 = v14;
  }
}

- (id)_localArticleNameForItemIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (@"a4be4dda-fe45-4fa5-a7ae-ca229ad3445e" == v3)
  {

    goto LABEL_7;
  }

  if (v3 && @"a4be4dda-fe45-4fa5-a7ae-ca229ad3445e")
  {
    v5 = [(__CFString *)v3 isEqualToString:@"a4be4dda-fe45-4fa5-a7ae-ca229ad3445e"];

    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v6 = @"paymentWelcomeCard";
    goto LABEL_18;
  }

LABEL_9:
  v7 = v4;
  v8 = v7;
  if (@"c9a14ea5-c283-4963-9f51-f3ed2de75b53" == v7)
  {
  }

  else
  {
    if (!v4 || !@"c9a14ea5-c283-4963-9f51-f3ed2de75b53")
    {

LABEL_17:
      v6 = 0;
      goto LABEL_18;
    }

    v9 = [(__CFString *)v7 isEqualToString:@"c9a14ea5-c283-4963-9f51-f3ed2de75b53"];

    if (!v9)
    {
      goto LABEL_17;
    }
  }

  v6 = @"passWelcomeCard";
LABEL_18:

  return v6;
}

- (id)_localArticleLayoutForItemIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 length])
  {
    v14 = 0;
    goto LABEL_14;
  }

  v5 = [v4 lowercaseString];
  v6 = [(PKDiscoveryDataSource *)self _localArticleNameForItemIdentifier:v5];

  if ([v6 length])
  {
    v7 = PKPassKitUIBundle();
    v8 = [v7 URLForResource:v6 withExtension:@"json"];

    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v8];
    if (v9)
    {
      v17 = 0;
      v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:4 error:&v17];
      v11 = v17;
      if (v11)
      {
        v12 = v11;
        v13 = PKLogFacilityTypeGetObject(0x11uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v12;
          _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Failed to serialize local article from json: %@", buf, 0xCu);
        }

        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = objc_alloc_init(PKDiscoveryItem);
    [(PKDiscoveryObject *)v12 setIdentifier:v4];
    v14 = [[PKDiscoveryArticleLayout alloc] initWithDictionary:v10];
    [(PKDiscoveryArticleLayout *)v14 setItem:v12];
    v15 = [(PKDiscoveryObject *)v12 identifier];
    [(PKDiscoveryArticleLayout *)v14 setItemIdentifier:v15];

    [(PKDiscoveryArticleLayout *)v14 setPriority:750];
    v13 = PKPassKitBundle();
    [(PKDiscoveryArticleLayout *)v14 localizeWithBundle:v13 table:@"Discovery_Localizable"];
LABEL_12:

    goto LABEL_13;
  }

  v14 = 0;
LABEL_13:

LABEL_14:

  return v14;
}

- (PKDiscoveryDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end