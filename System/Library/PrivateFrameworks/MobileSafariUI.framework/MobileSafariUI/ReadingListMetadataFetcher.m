@interface ReadingListMetadataFetcher
+ (BOOL)shouldFetchMetadataForBookmark:(id)a3;
+ (BOOL)shouldFetchThumbnailForBookmark:(id)a3;
+ (id)sharedMetadataFetcher;
- (BOOL)_lockAndSaveBookmark:(id)a3 postNotification:(BOOL)a4;
- (BOOL)_queue:(id)a3 containsBookmark:(id)a4;
- (id)_initWithBookmarkCollection:(id)a3;
- (void)_didFailMetadataFetchForBookmarkWithID:(int)a3;
- (void)_didFinishFetchingMetadataForItem:(id)a3;
- (void)_didFinishFetchingThumbnailForItem:(id)a3;
- (void)_fetchMetadataForPendingItem:(id)a3;
- (void)_fetchMetadataWithDefaultProviderForPendingItem:(id)a3;
- (void)_fetchNextItemMetadata;
- (void)_fetchNextItemThumbnail;
- (void)_fetchThumbnailForPendingItem:(id)a3;
- (void)_fetchThumbnailWithDefaultProviderForPendingItem:(id)a3;
- (void)_setThumbnailImage:(id)a3 fromURL:(id)a4 forBookmarkWithID:(int)a5;
- (void)_setTitle:(id)a3 previewText:(id)a4 thumbnailURLString:(id)a5 thumbnailImage:(id)a6 forItem:(id)a7;
- (void)fetchMetadataForReadingListBookmark:(id)a3 withProvider:(id)a4;
- (void)fetchThumbnailForReadingListBookmark:(id)a3 withProvider:(id)a4;
@end

@implementation ReadingListMetadataFetcher

+ (id)sharedMetadataFetcher
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ReadingListMetadataFetcher_sharedMetadataFetcher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedMetadataFetcher_onceToken != -1)
  {
    dispatch_once(&sharedMetadataFetcher_onceToken, block);
  }

  v2 = sharedMetadataFetcher_sharedInstance;

  return v2;
}

void __51__ReadingListMetadataFetcher_sharedMetadataFetcher__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v2 = [v1 _initWithBookmarkCollection:v4];
  v3 = sharedMetadataFetcher_sharedInstance;
  sharedMetadataFetcher_sharedInstance = v2;
}

- (id)_initWithBookmarkCollection:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = ReadingListMetadataFetcher;
  v6 = [(ReadingListMetadataFetcher *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, a3);
    v8 = dispatch_queue_create("com.apple.Safari.ReadingListMetadataFetcher", 0);
    metadataSynchronizationQueue = v7->_metadataSynchronizationQueue;
    v7->_metadataSynchronizationQueue = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    bookmarksPendingMetadata = v7->_bookmarksPendingMetadata;
    v7->_bookmarksPendingMetadata = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    bookmarksPendingThumbnail = v7->_bookmarksPendingThumbnail;
    v7->_bookmarksPendingThumbnail = v12;

    v14 = v7;
  }

  return v7;
}

+ (BOOL)shouldFetchMetadataForBookmark:(id)a3
{
  v3 = a3;
  if ([v3 hasFetchedMetadata])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 title];
    if ([v5 length] && (WBSUnifiedFieldInputTypeForString() - 1) >= 2)
    {
      v6 = [v3 previewText];
      if ([v6 length])
      {
        v7 = [v3 readingListIconURL];
        v4 = [v7 length] == 0;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

+ (BOOL)shouldFetchThumbnailForBookmark:(id)a3
{
  v3 = a3;
  if ([v3 hasFetchedMetadata])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 readingListIconURL];
    if (v5)
    {
      v6 = [v3 readingListIconUUID];
      v4 = v6 == 0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)fetchMetadataForReadingListBookmark:(id)a3 withProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  metadataSynchronizationQueue = self->_metadataSynchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__ReadingListMetadataFetcher_fetchMetadataForReadingListBookmark_withProvider___block_invoke;
  block[3] = &unk_2781D58E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(metadataSynchronizationQueue, block);
}

uint64_t __79__ReadingListMetadataFetcher_fetchMetadataForReadingListBookmark_withProvider___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue:*(*(a1 + 32) + 24) containsBookmark:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 24);
    v4 = [PendingReadingListItem itemWithBookmark:*(a1 + 40) provider:*(a1 + 48)];
    [v3 addObject:v4];

    result = *(a1 + 32);
    if ((*(result + 32) & 1) == 0)
    {

      return [result _fetchNextItemMetadata];
    }
  }

  return result;
}

- (void)fetchThumbnailForReadingListBookmark:(id)a3 withProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  metadataSynchronizationQueue = self->_metadataSynchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__ReadingListMetadataFetcher_fetchThumbnailForReadingListBookmark_withProvider___block_invoke;
  block[3] = &unk_2781D58E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(metadataSynchronizationQueue, block);
}

uint64_t __80__ReadingListMetadataFetcher_fetchThumbnailForReadingListBookmark_withProvider___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue:*(*(a1 + 32) + 40) containsBookmark:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) _queue:*(*(a1 + 32) + 24) containsBookmark:*(a1 + 40)];
    if ((result & 1) == 0)
    {
      v3 = *(*(a1 + 32) + 40);
      v4 = [PendingReadingListItem itemWithBookmark:*(a1 + 40) provider:*(a1 + 48)];
      [v3 addObject:v4];

      result = *(a1 + 32);
      if ((*(result + 56) & 1) == 0)
      {

        return [result _fetchNextItemThumbnail];
      }
    }
  }

  return result;
}

- (void)_fetchMetadataForPendingItem:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_isFetchingMetadata = 1;
  v5 = [v4 provider];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXReadingList();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_INFO, "Begin fetching metadata for Reading List item with provider %{public}@", buf, 0xCu);
    }

    v10 = [v4 bookmark];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__ReadingListMetadataFetcher__fetchMetadataForPendingItem___block_invoke;
    v11[3] = &unk_2781D7D10;
    v11[4] = self;
    v12 = v4;
    [v5 fetchMetadataForBookmark:v10 completion:v11];
  }

  else
  {
    [(ReadingListMetadataFetcher *)self _fetchMetadataWithDefaultProviderForPendingItem:v4];
  }
}

void __59__ReadingListMetadataFetcher__fetchMetadataForPendingItem___block_invoke(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a2)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__ReadingListMetadataFetcher__fetchMetadataForPendingItem___block_invoke_84;
    v19[3] = &unk_2781D7CE8;
    v19[4] = *(a1 + 32);
    v15 = &v20;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v19);
  }

  else
  {
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = *(v17 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__ReadingListMetadataFetcher__fetchMetadataForPendingItem___block_invoke_2;
    block[3] = &unk_2781D4C88;
    block[4] = v17;
    v15 = &v26;
    v26 = v16;
    dispatch_async(v18, block);
  }
}

uint64_t __59__ReadingListMetadataFetcher__fetchMetadataForPendingItem___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __59__ReadingListMetadataFetcher__fetchMetadataForPendingItem___block_invoke_2_cold_1();
  }

  return [*(a1 + 32) _fetchMetadataWithDefaultProviderForPendingItem:*(a1 + 40)];
}

void __59__ReadingListMetadataFetcher__fetchMetadataForPendingItem___block_invoke_84(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_INFO, "Successfully fetched metadata for Reading List item", buf, 2u);
  }

  [*(a1 + 32) _setTitle:*(a1 + 40) previewText:*(a1 + 48) thumbnailURLString:*(a1 + 56) thumbnailImage:*(a1 + 64) forItem:*(a1 + 72)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__ReadingListMetadataFetcher__fetchMetadataForPendingItem___block_invoke_85;
  v5[3] = &unk_2781D4C88;
  v5[4] = v3;
  v6 = *(a1 + 72);
  dispatch_async(v4, v5);
}

- (void)_fetchMetadataWithDefaultProviderForPendingItem:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Begin fetching metadata for Reading List item with default provider", buf, 2u);
  }

  v6 = [v4 bookmark];
  v7 = objc_alloc_init(ReadingListMetadataProvider);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__ReadingListMetadataFetcher__fetchMetadataWithDefaultProviderForPendingItem___block_invoke;
  v10[3] = &unk_2781D7D60;
  v10[4] = self;
  v11 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
  [(ReadingListMetadataProvider *)v7 fetchMetadataForBookmark:v8 completion:v10];
}

void __78__ReadingListMetadataFetcher__fetchMetadataWithDefaultProviderForPendingItem___block_invoke(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__ReadingListMetadataFetcher__fetchMetadataWithDefaultProviderForPendingItem___block_invoke_2;
  v20[3] = &unk_2781D7D38;
  v27 = a2;
  v15 = *(a1 + 40);
  v20[4] = *(a1 + 32);
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = *(a1 + 48);
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  dispatch_async(MEMORY[0x277D85CD0], v20);
}

void __78__ReadingListMetadataFetcher__fetchMetadataWithDefaultProviderForPendingItem___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXReadingList();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_INFO, "Successfully fetched metadata for Reading List item with default provider", buf, 2u);
    }

    [*(a1 + 32) _setTitle:*(a1 + 40) previewText:*(a1 + 48) thumbnailURLString:*(a1 + 56) thumbnailImage:*(a1 + 64) forItem:*(a1 + 72)];
  }

  else
  {
    [*(a1 + 32) _didFailMetadataFetchForBookmarkWithID:{objc_msgSend(*(a1 + 80), "identifier")}];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__ReadingListMetadataFetcher__fetchMetadataWithDefaultProviderForPendingItem___block_invoke_88;
  v5[3] = &unk_2781D4C88;
  v5[4] = v3;
  v6 = *(a1 + 72);
  dispatch_async(v4, v5);
}

- (void)_fetchThumbnailForPendingItem:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_isFetchingThumbnail = 1;
  v5 = [v4 bookmark];
  v6 = [v4 provider];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXReadingList();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_INFO, "Begin fetching thumbnail for Reading List item with provider %{public}@", buf, 0xCu);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__ReadingListMetadataFetcher__fetchThumbnailForPendingItem___block_invoke;
    v11[3] = &unk_2781D7DB0;
    v11[4] = self;
    v12 = v4;
    v13 = v5;
    [v6 fetchThumbnailForBookmark:v13 completion:v11];
  }

  else
  {
    [(ReadingListMetadataFetcher *)self _fetchThumbnailWithDefaultProviderForPendingItem:v4];
  }
}

void __60__ReadingListMetadataFetcher__fetchThumbnailForPendingItem___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__ReadingListMetadataFetcher__fetchThumbnailForPendingItem___block_invoke_90;
    block[3] = &unk_2781D7D88;
    block[4] = *(a1 + 32);
    v10 = &v15;
    v15 = v8;
    v16 = v7;
    v17 = *(a1 + 48);
    v18 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(v12 + 16);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__ReadingListMetadataFetcher__fetchThumbnailForPendingItem___block_invoke_2;
    v19[3] = &unk_2781D4C88;
    v19[4] = v12;
    v10 = &v20;
    v20 = v11;
    dispatch_async(v13, v19);
  }
}

uint64_t __60__ReadingListMetadataFetcher__fetchThumbnailForPendingItem___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__ReadingListMetadataFetcher__fetchThumbnailForPendingItem___block_invoke_2_cold_1();
  }

  return [*(a1 + 32) _fetchThumbnailWithDefaultProviderForPendingItem:*(a1 + 40)];
}

void __60__ReadingListMetadataFetcher__fetchThumbnailForPendingItem___block_invoke_90(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_INFO, "Successfully fetched thumbnail for Reading List item", buf, 2u);
  }

  [*(a1 + 32) _setThumbnailImage:*(a1 + 40) fromURL:*(a1 + 48) forBookmarkWithID:{objc_msgSend(*(a1 + 56), "identifier")}];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__ReadingListMetadataFetcher__fetchThumbnailForPendingItem___block_invoke_91;
  v5[3] = &unk_2781D4C88;
  v5[4] = v3;
  v6 = *(a1 + 64);
  dispatch_async(v4, v5);
}

- (void)_fetchThumbnailWithDefaultProviderForPendingItem:(id)a3
{
  v4 = a3;
  if (!self->_defaultThumbnailProvider)
  {
    v5 = [MEMORY[0x277D4A778] sharedManager];
    defaultThumbnailProvider = self->_defaultThumbnailProvider;
    self->_defaultThumbnailProvider = v5;
  }

  v7 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_INFO, "Begin fetching thumbnail for Reading List item with default provider", buf, 2u);
  }

  v8 = [v4 bookmark];
  v9 = self->_defaultThumbnailProvider;
  v10 = [v4 bookmark];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__ReadingListMetadataFetcher__fetchThumbnailWithDefaultProviderForPendingItem___block_invoke;
  v13[3] = &unk_2781D7DB0;
  v14 = v8;
  v15 = self;
  v16 = v4;
  v11 = v4;
  v12 = v8;
  [(ReadingListMetadataProvider *)v9 fetchThumbnailForBookmark:v10 completion:v13];
}

void __79__ReadingListMetadataFetcher__fetchThumbnailWithDefaultProviderForPendingItem___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__ReadingListMetadataFetcher__fetchThumbnailWithDefaultProviderForPendingItem___block_invoke_2;
  v14[3] = &unk_2781D7DD8;
  v9 = *(a1 + 32);
  v20 = a2;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v15 = v9;
  v16 = v10;
  v17 = v8;
  v18 = v7;
  v19 = v11;
  v12 = v7;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __79__ReadingListMetadataFetcher__fetchThumbnailWithDefaultProviderForPendingItem___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  if (*(a1 + 72) == 1)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXReadingList();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_INFO, "Successfully fetched thumbnail for Reading List item", buf, 2u);
    }

    [*(a1 + 40) _setThumbnailImage:*(a1 + 48) fromURL:*(a1 + 56) forBookmarkWithID:v2];
  }

  else
  {
    [*(a1 + 40) _didFailMetadataFetchForBookmarkWithID:v2];
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__ReadingListMetadataFetcher__fetchThumbnailWithDefaultProviderForPendingItem___block_invoke_94;
  v6[3] = &unk_2781D4C88;
  v6[4] = v4;
  v7 = *(a1 + 64);
  dispatch_async(v5, v6);
}

- (void)_setTitle:(id)a3 previewText:(id)a4 thumbnailURLString:(id)a5 thumbnailImage:(id)a6 forItem:(id)a7
{
  v33 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  collection = self->_collection;
  v16 = [a7 bookmark];
  v17 = -[WebBookmarkCollection bookmarkWithID:](collection, "bookmarkWithID:", [v16 identifier]);

  if (v17)
  {
    v18 = [v17 title];
    v19 = [v17 previewText];
    v20 = [v17 readingListIconURL];
    if ([v33 length] && (!objc_msgSend(v18, "length") || (WBSUnifiedFieldInputTypeForString() - 1) <= 1))
    {
      [v17 setTitle:v33];
    }

    v21 = [v17 previewText];
    if ([v21 length])
    {
    }

    else
    {
      v22 = [v12 length];

      if (v22)
      {
        [v17 setPreviewText:v12];
      }
    }

    v23 = [v17 readingListIconUUID];
    v24 = [v23 length];

    if (!v24)
    {
      if (!v14)
      {
        [v17 setReadingListIconURL:v13];
LABEL_14:
        v25 = [v17 title];
        if (WBSIsEqual())
        {
          v32 = v13;
          v26 = v19;
          v27 = v20;
          v28 = [v17 previewText];
          v29 = v26;
          if (WBSIsEqual())
          {
            v30 = [v17 readingListIconURL];
            if (WBSIsEqual())
            {
              v31 = [v17 hasFetchedMetadata];

              v20 = v27;
              v19 = v29;
              v13 = v32;
              if ((v31 & 1) == 0)
              {
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          v20 = v27;
          v19 = v29;
          v13 = v32;
        }

LABEL_23:
        [(ReadingListMetadataFetcher *)self _lockAndSaveBookmark:v17 postNotification:1];
LABEL_24:

        goto LABEL_25;
      }

      [(WebBookmarkCollection *)self->_collection saveIconWithData:v14 urlString:v13 forBookmark:v17];
    }

    [v17 setHasFetchedMetadata:1];
    goto LABEL_14;
  }

LABEL_25:
}

- (void)_setThumbnailImage:(id)a3 fromURL:(id)a4 forBookmarkWithID:(int)a5
{
  v5 = *&a5;
  v11 = a3;
  v8 = a4;
  v9 = [(WebBookmarkCollection *)self->_collection bookmarkWithID:v5];
  v10 = v9;
  if (v9)
  {
    [v9 setHasFetchedMetadata:1];
    [(WebBookmarkCollection *)self->_collection saveIconWithData:v11 urlString:v8 forBookmark:v10];
    [(ReadingListMetadataFetcher *)self _lockAndSaveBookmark:v10 postNotification:1];
  }
}

- (void)_didFailMetadataFetchForBookmarkWithID:(int)a3
{
  v3 = *&a3;
  v5 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ReadingListMetadataFetcher _didFailMetadataFetchForBookmarkWithID:];
  }

  v6 = [(WebBookmarkCollection *)self->_collection bookmarkWithID:v3];
  v7 = v6;
  if (v6)
  {
    [v6 setHasFetchedMetadata:1];
    [(ReadingListMetadataFetcher *)self _lockAndSaveBookmark:v7 postNotification:0];
  }
}

- (BOOL)_lockAndSaveBookmark:(id)a3 postNotification:(BOOL)a4
{
  v4 = a4;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_opt_class() isLockedSync];
  if ((v7 & 1) != 0 || [objc_opt_class() lockSync])
  {
    collection = self->_collection;
    v15[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v10 = [(WebBookmarkCollection *)collection saveBookmarks:v9 postNotification:0];

    if (v10)
    {
      v11 = !v4;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __68__ReadingListMetadataFetcher__lockAndSaveBookmark_postNotification___block_invoke;
      v13[3] = &unk_2781D4C88;
      v13[4] = self;
      v14 = v6;
      dispatch_async(MEMORY[0x277D85CD0], v13);
    }

    if ((v7 & 1) == 0)
    {
      [objc_opt_class() unlockSync];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

void __68__ReadingListMetadataFetcher__lockAndSaveBookmark_postNotification___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"BookmarkWithUpdatedMetadataKey";
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"ReadingListBookmarkMetadataDidUpdateNotification" object:v4 userInfo:v5];
}

- (void)_fetchNextItemMetadata
{
  if ([(NSMutableArray *)self->_bookmarksPendingMetadata count])
  {
    v3 = [(NSMutableArray *)self->_bookmarksPendingMetadata firstObject];
    [(ReadingListMetadataFetcher *)self _fetchMetadataForPendingItem:v3];
  }
}

- (void)_didFinishFetchingMetadataForItem:(id)a3
{
  self->_isFetchingMetadata = 0;
  [(NSMutableArray *)self->_bookmarksPendingMetadata removeObject:a3];

  [(ReadingListMetadataFetcher *)self _fetchNextItemMetadata];
}

- (void)_fetchNextItemThumbnail
{
  if ([(NSMutableArray *)self->_bookmarksPendingThumbnail count])
  {
    v3 = [(NSMutableArray *)self->_bookmarksPendingThumbnail firstObject];
    [(ReadingListMetadataFetcher *)self _fetchThumbnailForPendingItem:v3];
  }
}

- (void)_didFinishFetchingThumbnailForItem:(id)a3
{
  self->_isFetchingThumbnail = 0;
  [(NSMutableArray *)self->_bookmarksPendingThumbnail removeObject:a3];

  [(ReadingListMetadataFetcher *)self _fetchNextItemThumbnail];
}

- (BOOL)_queue:(id)a3 containsBookmark:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 identifier];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) bookmark];
        v13 = [v12 identifier];

        if (v13 == v6)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

@end