@interface CTCategories
+ (CTCategories)sharedCategories;
+ (id)supportedWebBrowserBundleIdentifiersForDeviceFamily:(int64_t)a3;
+ (id)systemBlockableBundleIdentifiersForDeviceFamily:(int64_t)a3;
+ (id)systemHiddenBundleIdentifiersForDeviceFamily:(int64_t)a3;
+ (id)systemUnblockableBundleIdentifiersForDeviceFamily:(int64_t)a3;
+ (int64_t)currentIOSDevice;
+ (void)initialize;
- (CTCategories)init;
- (NSArray)availableCategoryIDs;
- (void)_emptySharedCache:(id)a3;
- (void)categoriesForBundleIDs:(id)a3 platform:(id)a4 completionHandler:(id)a5;
- (void)categoriesForDomainNames:(id)a3 completionHandler:(id)a4;
- (void)categoriesForDomainURLs:(id)a3 completionHandler:(id)a4;
- (void)categoryForBundleID:(id)a3 completionHandler:(id)a4;
- (void)categoryForBundleID:(id)a3 platform:(id)a4 completionHandler:(id)a5;
- (void)categoryForDomainName:(id)a3 completionHandler:(id)a4;
- (void)categoryForDomainURL:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)unCategorizedDomainsFromDomains:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation CTCategories

+ (CTCategories)sharedCategories
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__CTCategories_sharedCategories__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedCategories_onceToken != -1)
  {
    dispatch_once(&sharedCategories_onceToken, block);
  }

  v2 = ctSharedInstance;

  return v2;
}

+ (void)initialize
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.framework.ctcategories.bundle-id-categories", v2);
  v4 = _bundle_queue;
  _bundle_queue = v3;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.framework.ctcategories.domain-categories", v7);
  v6 = _domain_queue;
  _domain_queue = v5;
}

- (CTCategories)init
{
  v8.receiver = self;
  v8.super_class = CTCategories;
  v2 = [(CTCategories *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lookupLock = v2->_lookupLock;
    v2->_lookupLock = v3;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__CTCategories_init__block_invoke;
    block[3] = &unk_278DAAC90;
    v7 = v2;
    if (init_onceToken != -1)
    {
      dispatch_once(&init_onceToken, block);
    }
  }

  return v2;
}

void __20__CTCategories_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__emptySharedCache_ name:CTCategoriesDidChangeNotification object:0];
}

- (void)dealloc
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__CTCategories_dealloc__block_invoke;
  block[3] = &unk_278DAAC90;
  block[4] = self;
  if (dealloc_onceToken != -1)
  {
    dispatch_once(&dealloc_onceToken, block);
  }

  v3.receiver = self;
  v3.super_class = CTCategories;
  [(CTCategories *)&v3 dealloc];
}

void __23__CTCategories_dealloc__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:CTCategoriesDidChangeNotification object:0];
}

void __32__CTCategories_sharedCategories__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = ctSharedInstance;
  ctSharedInstance = v1;
  v5 = v1;

  v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v4 = _ctSharedCache;
  _ctSharedCache = v3;
}

- (void)_emptySharedCache:(id)a3
{
  [(NSLock *)self->_lookupLock lock];
  [_ctSharedCache removeAllObjects];
  lookupLock = self->_lookupLock;

  [(NSLock *)lookupLock unlock];
}

- (NSArray)availableCategoryIDs
{
  v2 = +[CTCategory _DHIDtoCategoryDisplayNameMap];
  v3 = [v2 allKeys];

  return v3;
}

- (void)categoryForBundleID:(id)a3 platform:(id)a4 completionHandler:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v17[0] = a3;
  v9 = MEMORY[0x277CBEA60];
  v10 = a4;
  v11 = a3;
  v12 = [v9 arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__CTCategories_categoryForBundleID_platform_completionHandler___block_invoke;
  v15[3] = &unk_278DAACD8;
  v16 = v8;
  v13 = v8;
  [(CTCategories *)self categoriesForBundleIDs:v12 platform:v10 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __63__CTCategories_categoryForBundleID_platform_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v7 = [a2 allValues];
    v6 = [v7 firstObject];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (void)categoryForBundleID:(id)a3 completionHandler:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v14[0] = a3;
  v7 = MEMORY[0x277CBEA60];
  v8 = a3;
  v9 = [v7 arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__CTCategories_categoryForBundleID_completionHandler___block_invoke;
  v12[3] = &unk_278DAACD8;
  v13 = v6;
  v10 = v6;
  [(CTCategories *)self categoriesForBundleIDs:v9 platform:@"CTOSPlatformAll" completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __54__CTCategories_categoryForBundleID_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v7 = [a2 allValues];
    v6 = [v7 firstObject];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (void)categoriesForBundleIDs:(id)a3 platform:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__CTCategories_categoriesForBundleIDs_platform_completionHandler___block_invoke;
  v24[3] = &unk_278DAAD00;
  v14 = v13;
  v25 = v14;
  v15 = v12;
  v26 = v15;
  [v8 enumerateObjectsUsingBlock:v24];
  if ([v15 count])
  {
    v16 = v9;
    v17 = v16;
    if (v16 == @"CTOSPlatformCurrent")
    {
      v18 = @"CTOSPlatformiOS";
    }

    else
    {
      v18 = v16;
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__CTCategories_categoriesForBundleIDs_platform_completionHandler___block_invoke_2;
    v19[3] = &unk_278DAAD50;
    v20 = v14;
    v23 = v27;
    v21 = v11;
    v22 = v10;
    [CTCategory categoryForBundleIdentifiers:v15 platform:v17 withCompletionHandler:v19];
  }

  else
  {
    (*(v10 + 2))(v10, v14, 0);
  }

  _Block_object_dispose(v27, 8);
}

void __66__CTCategories_categoriesForBundleIDs_platform_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [_ctSharedCache objectForKey:?];
  if (v3)
  {
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    [*(a1 + 32) setObject:v3 forKey:v5];
  }

  else
  {
    v4 = *(a1 + 40);
    objc_sync_enter(v4);
    [*(a1 + 40) addObject:v5];
  }

  objc_sync_exit(v4);
}

void __66__CTCategories_categoriesForBundleIDs_platform_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = *(*(a1 + 56) + 8);
    if (*(v9 + 40))
    {
      goto LABEL_7;
    }

    v10 = v6;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    [*(a1 + 32) addEntriesFromDictionary:v5];
    objc_sync_exit(v8);
  }

LABEL_7:
  v11 = *(a1 + 32);
  if (v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__CTCategories_categoriesForBundleIDs_platform_completionHandler___block_invoke_3;
    v13[3] = &unk_278DAAD28;
    v14 = *(a1 + 40);
    [v11 enumerateKeysAndObjectsUsingBlock:v13];
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 32);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v12);
}

uint64_t __66__CTCategories_categoriesForBundleIDs_platform_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 16);
  v6 = a3;
  v7 = a2;
  [v5 lock];
  [_ctSharedCache setObject:v6 forKey:v7];

  v8 = *(*(a1 + 32) + 16);

  return [v8 unlock];
}

- (void)categoryForDomainName:(id)a3 completionHandler:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v14[0] = a3;
  v7 = MEMORY[0x277CBEA60];
  v8 = a3;
  v9 = [v7 arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__CTCategories_categoryForDomainName_completionHandler___block_invoke;
  v12[3] = &unk_278DAACD8;
  v13 = v6;
  v10 = v6;
  [(CTCategories *)self categoriesForDomainNames:v9 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __56__CTCategories_categoryForDomainName_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v7 = [a2 allValues];
    v6 = [v7 firstObject];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (void)categoryForDomainURL:(id)a3 completionHandler:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__CTCategories_categoryForDomainURL_completionHandler___block_invoke;
  v11[3] = &unk_278DAACD8;
  v12 = v7;
  v9 = v7;
  [(CTCategories *)self categoriesForDomainURLs:v8 completionHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __55__CTCategories_categoryForDomainURL_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v7 = [a2 allValues];
    v6 = [v7 firstObject];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (void)categoriesForDomainNames:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[CTCategories categoriesForDomainNames:completionHandler:]";
    *&buf[12] = 2048;
    *&buf[14] = [v6 count];
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "START %s :: %ld", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__CTCategories_categoriesForDomainNames_completionHandler___block_invoke;
  v25[3] = &unk_278DAAD00;
  v11 = v10;
  v26 = v11;
  v12 = v9;
  v27 = v12;
  [v6 enumerateObjectsUsingBlock:v25];
  v13 = [v12 count];
  v14 = MEMORY[0x277D86220];
  v15 = MEMORY[0x277D86220];
  v16 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v16)
    {
      v17 = [v12 count];
      *v28 = 134217984;
      v29 = v17;
      _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "categoriesForDomainNames unCachedDomains :%lu", v28, 0xCu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__CTCategories_categoriesForDomainNames_completionHandler___block_invoke_44;
    v20[3] = &unk_278DAAD50;
    v21 = v11;
    v24 = buf;
    v22 = v8;
    v23 = v7;
    [CTCategory categoryForDomainNames:v6 withCompletionHandler:v20];
  }

  else
  {
    if (v16)
    {
      v18 = [v11 count];
      *v28 = 134217984;
      v29 = v18;
      _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DONE categoriesForDomainNames cachedCategories :%lu", v28, 0xCu);
    }

    (*(v7 + 2))(v7, v11, 0);
  }

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __59__CTCategories_categoriesForDomainNames_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [_ctSharedCache objectForKey:?];
  if (v3)
  {
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    [*(a1 + 32) setObject:v3 forKey:v5];
  }

  else
  {
    v4 = *(a1 + 40);
    objc_sync_enter(v4);
    [*(a1 + 40) addObject:v5];
  }

  objc_sync_exit(v4);
}

void __59__CTCategories_categoriesForDomainNames_completionHandler___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = *(*(a1 + 56) + 8);
    if (*(v7 + 40))
    {
      goto LABEL_7;
    }

    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    [*(a1 + 32) addEntriesFromDictionary:v5];
    objc_sync_exit(v9);
  }

LABEL_7:
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) count];
      *buf = 134217984;
      v18 = v10;
      _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "_ctSharedCache add %lu", buf, 0xCu);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__CTCategories_categoriesForDomainNames_completionHandler___block_invoke_45;
    v15[3] = &unk_278DAAD28;
    v11 = *(a1 + 32);
    v16 = *(a1 + 40);
    [v11 enumerateKeysAndObjectsUsingBlock:v15];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 32) count];
    *buf = 134217984;
    v18 = v12;
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DONE categoriesForDomainNames :%lu", buf, 0xCu);
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 32);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v13);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __59__CTCategories_categoriesForDomainNames_completionHandler___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 16);
  v6 = a3;
  v7 = a2;
  [v5 lock];
  [_ctSharedCache setObject:v6 forKey:v7];

  v8 = *(*(a1 + 32) + 16);

  return [v8 unlock];
}

- (void)categoriesForDomainURLs:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[CTCategories categoriesForDomainURLs:completionHandler:]";
    *&buf[12] = 2048;
    *&buf[14] = [v6 count];
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "START %s :: %ld", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__CTCategories_categoriesForDomainURLs_completionHandler___block_invoke;
  v25[3] = &unk_278DAAD78;
  v11 = v10;
  v26 = v11;
  v12 = v9;
  v27 = v12;
  [v6 enumerateObjectsUsingBlock:v25];
  v13 = [v12 count];
  v14 = MEMORY[0x277D86220];
  v15 = MEMORY[0x277D86220];
  v16 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v16)
    {
      v17 = [v12 count];
      *v28 = 134217984;
      v29 = v17;
      _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "categoriesForDomainURLs unCachedDomainURLs :%lu", v28, 0xCu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__CTCategories_categoriesForDomainURLs_completionHandler___block_invoke_47;
    v20[3] = &unk_278DAAD50;
    v21 = v11;
    v24 = buf;
    v22 = v8;
    v23 = v7;
    [CTCategory categoryForDomainURLs:v12 withCompletionHandler:v20];
  }

  else
  {
    if (v16)
    {
      v18 = [v11 count];
      *v28 = 136315394;
      v29 = "[CTCategories categoriesForDomainURLs:completionHandler:]";
      v30 = 2048;
      v31 = v18;
      _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DONE %s :: cachedCategories %lu", v28, 0x16u);
    }

    (*(v7 + 2))(v7, v11, 0);
  }

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __58__CTCategories_categoriesForDomainURLs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 host];
  if (v3)
  {
    v4 = [_ctSharedCache objectForKey:v3];
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 32);
      objc_sync_enter(v6);
      [*(a1 + 32) setObject:v5 forKey:v7];
      objc_sync_exit(v6);
    }

    else
    {
      v5 = *(a1 + 40);
      objc_sync_enter(v5);
      [*(a1 + 40) addObject:v7];
      objc_sync_exit(v5);
    }
  }
}

void __58__CTCategories_categoriesForDomainURLs_completionHandler___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = *(*(a1 + 56) + 8);
    if (*(v7 + 40))
    {
      goto LABEL_7;
    }

    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    [*(a1 + 32) addEntriesFromDictionary:v5];
    objc_sync_exit(v9);
  }

LABEL_7:
  v10 = *(a1 + 32);
  if (v10)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__CTCategories_categoriesForDomainURLs_completionHandler___block_invoke_2;
    v15[3] = &unk_278DAADA0;
    v16 = *(a1 + 40);
    [v10 enumerateKeysAndObjectsUsingBlock:v15];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = [*(a1 + 32) count];
    *buf = 136315394;
    v18 = "[CTCategories categoriesForDomainURLs:completionHandler:]_block_invoke";
    v19 = 2048;
    v20 = v11;
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DONE %s :: %lu", buf, 0x16u);
  }

  v12 = *(a1 + 32);
  v13 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 48) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __58__CTCategories_categoriesForDomainURLs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 16);
  v6 = a3;
  v7 = a2;
  [v5 lock];
  v8 = _ctSharedCache;
  v9 = [v7 host];

  [v8 setObject:v6 forKey:v9];
  v10 = *(*(a1 + 32) + 16);

  return [v10 unlock];
}

- (void)unCategorizedDomainsFromDomains:(id)a3 withCompletionHandler:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "domainOfType:fromDomains:withCompletionHandler:", buf, 2u);
  }

  *buf = 0;
  v33 = buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = v6;
  v8 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        dispatch_group_enter(v8);
        v13 = _domain_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __70__CTCategories_unCategorizedDomainsFromDomains_withCompletionHandler___block_invoke;
        block[3] = &unk_278DAADF0;
        block[4] = v12;
        v25 = v7;
        v27 = buf;
        v26 = v8;
        dispatch_group_async(v26, v13, block);

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v9);
  }

  v14 = _domain_queue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__CTCategories_unCategorizedDomainsFromDomains_withCompletionHandler___block_invoke_3;
  v20[3] = &unk_278DAAE18;
  v22 = v18;
  v23 = buf;
  v21 = v7;
  v15 = v7;
  v16 = v18;
  dispatch_group_notify(v8, v14, v20);

  _Block_object_dispose(buf, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __70__CTCategories_unCategorizedDomainsFromDomains_withCompletionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__CTCategories_unCategorizedDomainsFromDomains_withCompletionHandler___block_invoke_2;
  v7[3] = &unk_278DAADC8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v6 = *(a1 + 48);
  v5 = v6;
  v10 = v6;
  [CTCategory _getCategoryTypeForDomainName:v2 withCompletionHandler:v7];
}

void __70__CTCategories_unCategorizedDomainsFromDomains_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2 != 5001 || v5)
  {
    v7 = *(*(a1 + 56) + 8);
    if (*(v7 + 40))
    {
      goto LABEL_7;
    }

    v8 = v5;
    v6 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    [*(a1 + 32) addObject:*(a1 + 40)];
    objc_sync_exit(v6);
  }

LABEL_7:
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __70__CTCategories_unCategorizedDomainsFromDomains_withCompletionHandler___block_invoke_3(void *a1)
{
  v2 = a1[5];
  if (*(*(a1[6] + 8) + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[4];
  }

  return (*(v2 + 16))(v2, v3);
}

+ (id)systemBlockableBundleIdentifiersForDeviceFamily:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEB98] set];
  if (a3 <= 4)
  {
    if ((a3 - 2) >= 3)
    {
      if (a3 != 1)
      {
        goto LABEL_27;
      }

      [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.clock", @"com.apple.Safari", @"com.apple.ist.Radar7", @"com.apple.SystemProfiler", @"com.apple.DemoWebBrowser", 0, v17, v18, v19, v20, v21, v22}];
    }

    else
    {
      [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.mobiletimer", @"com.apple.Passbook", @"com.apple.findmy", @"com.apple.mobilesafari", @"com.apple.Fitness", @"com.apple.DocumentsApp", @"com.apple.mobileme.fmip1", @"com.apple.mobileme.fmf1", @"com.apple.DemoWebBrowser", 0, v21, v22}];
    }

    v14 = LABEL_24:;
    goto LABEL_25;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      v14 = [MEMORY[0x277CBEB98] set];
      goto LABEL_25;
    }

    [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.HeartRate", @"com.apple.NanoHeartRhythm", @"com.apple.ActivityMonitorApp", @"com.apple.NanoAlarm", @"com.apple.DeepBreathing", @"com.apple.NanoStopwatch", @"com.apple.private.NanoTimer", @"com.apple.NanoWorldClock", @"com.apple.NanoPassbook", @"com.apple.findmy", @"com.apple.mobileme.fmf1.watchkitapp", 0}];
    goto LABEL_24;
  }

  switch(a3)
  {
    case 7:
      v14 = objc_opt_new();
      break;
    case 101:
      v14 = [a1 systemBlockableBundleIdentifiersForDeviceFamily:{objc_msgSend(a1, "currentIOSDevice")}];
      break;
    case 102:
      v6 = [a1 systemBlockableBundleIdentifiersForDeviceFamily:2];
      v7 = [a1 systemBlockableBundleIdentifiersForDeviceFamily:6];
      v8 = [a1 systemBlockableBundleIdentifiersForDeviceFamily:1];
      v9 = [a1 systemBlockableBundleIdentifiersForDeviceFamily:5];
      v10 = [a1 systemBlockableBundleIdentifiersForDeviceFamily:7];
      v11 = [MEMORY[0x277CBEB58] set];
      v12 = v11;
      if (v6)
      {
        [v11 unionSet:v6];
      }

      if (v7)
      {
        [v12 unionSet:v7];
      }

      if (v8)
      {
        [v12 unionSet:v8];
      }

      if (v9)
      {
        [v12 unionSet:v9];
      }

      if (v10)
      {
        [v12 unionSet:v10];
      }

      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = [MEMORY[0x277CBEB98] set];
      }

      v16 = v13;

      v5 = v16;
      goto LABEL_26;
    default:
      goto LABEL_27;
  }

LABEL_25:
  v6 = v5;
  v5 = v14;
LABEL_26:

LABEL_27:

  return v5;
}

+ (id)systemUnblockableBundleIdentifiersForDeviceFamily:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEB98] set];
  if (a3 <= 4)
  {
    if ((a3 - 2) >= 3)
    {
      if (a3 != 1)
      {
        goto LABEL_28;
      }

      [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.systempreferences", @"com.apple.finder", @"com.apple.Home", @"com.apple.appleseed.FeedbackAssistant", @"com.apple.SpotlightService", @"com.apple.dock", @"com.apple.Siri", @"com.apple.exposelauncher", @"com.apple.launchpad.launcher", @"com.apple.RaftCode-3", @"com.apple.AccessibilityInspector", @"com.apple.ScreenTimeWidgetApplication", 0}];
    }

    else
    {
      [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.mobilephone", @"com.apple.Preferences", @"com.apple.TapToRadar", @"com.apple.appleseed.FeedbackAssistant", @"com.apple.Bridge", @"com.apple.Home", @"com.apple.Health", @"com.apple.compass", 0, v18, v19, v20, v21}];
    }

    goto LABEL_25;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      goto LABEL_22;
    }

    [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.NanoPhone", @"com.apple.NanoSettings", @"com.apple.TapToRadar.watchkitapp", @"com.apple.NanoHome", @"com.apple.NanoCompass.watchkitapp", @"com.apple.NanoSleep.watchkitapp", @"com.apple.NanoNowPlaying", 0, v17, v18, v19, v20, v21}];
    v14 = LABEL_25:;
    goto LABEL_26;
  }

  if (a3 == 7)
  {
LABEL_22:
    v14 = [MEMORY[0x277CBEB98] set];
    goto LABEL_26;
  }

  if (a3 != 101)
  {
    if (a3 != 102)
    {
      goto LABEL_28;
    }

    v6 = [a1 systemUnblockableBundleIdentifiersForDeviceFamily:2];
    v7 = [a1 systemUnblockableBundleIdentifiersForDeviceFamily:6];
    v8 = [a1 systemUnblockableBundleIdentifiersForDeviceFamily:1];
    v9 = [a1 systemUnblockableBundleIdentifiersForDeviceFamily:5];
    v10 = [a1 systemUnblockableBundleIdentifiersForDeviceFamily:7];
    v11 = [MEMORY[0x277CBEB58] set];
    v12 = v11;
    if (v6)
    {
      [v11 unionSet:v6];
    }

    if (v7)
    {
      [v12 unionSet:v7];
    }

    if (v8)
    {
      [v12 unionSet:v8];
    }

    if (v9)
    {
      [v12 unionSet:v9];
    }

    if (v10)
    {
      [v12 unionSet:v10];
    }

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = [MEMORY[0x277CBEB98] set];
    }

    v16 = v13;

    v5 = v16;
    goto LABEL_27;
  }

  v14 = [a1 systemUnblockableBundleIdentifiersForDeviceFamily:{objc_msgSend(a1, "currentIOSDevice")}];
LABEL_26:
  v6 = v5;
  v5 = v14;
LABEL_27:

LABEL_28:

  return v5;
}

+ (id)systemHiddenBundleIdentifiersForDeviceFamily:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 4)
  {
    if ((a3 - 2) >= 3)
    {
      if (a3 != 1)
      {
        goto LABEL_27;
      }

      [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.SetupAssistant", @"com.apple.MigrateAssistant", @"com.apple.VoiceOverUtility", @"com.apple.SoftwareUpdate", @"com.apple.installer", @"com.apple.bni.AppleNetInstall", @"com.apple.InstallAssistant.Seed.macOS1015Seed1", @"com.apple.InstallAssistant.Catalina", @"com.apple.InstallAssistant.Jazz", @"com.apple.InstallAssistant.macOS1016", @"com.apple.siri", @"com.apple.siri.launcher", @"com.apple.Installer-Progress", @"com.apple.dt.XcodePreviews", @"com.apple.PreviewShellMac", @"com.apple.keychainaccess", @"com.apple.quicklook.QuickLook", @"com.apple.VNCGuestRequest", @"com.apple.screencaptureui", @"com.apple.quicklook.QuickLookUIService", @"com.apple.AvatarUI.AvatarPickerMemojiEditor", @"com.apple.ScreenSaver.Engine.legacyScreenSaver", @"com.apple.Trackpad-Settings.extension", @"com.apple.BTMNotificationAgent", @"com.apple.notificationcenter.askpermissions", @"com.apple.controlcenter.notifications.focus", @"com.apple.Mouse-Settings.extension", 0}];
    }

    else
    {
      [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.purplebuddy", @"com.apple.SOSBuddy", @"com.apple.ChargingViewService", @"com.apple.Magnifier", @"com.apple.InCallService", @"com.apple.sidecar", @"com.apple.webapp", @"com.apple.BarcodeScanner", @"com.apple.assistivetouchd", @"com.apple.SiriNCService", @"com.apple.SleepLockScreen", @"com.apple.fullkeyboardaccess", @"com.apple.BluetoothUIService", @"com.apple.CarPlayTemplateUIHost", @"com.apple.commandandcontrol", @"com.apple.DeviceOMatic", @"com.apple.EscrowSecurityAlert", @"com.apple.SharingViewService", @"com.apple.PeopleViewService", @"com.apple.PosterBoard", @"com.apple.PreviewShell", @"com.apple.Memoji", @"com.apple.FMDMagSafeSetupRemoteUI", @"com.apple.GameOverlayUI", @"com.apple.GameTrampoline", 0, v32, v33}];
    }

    goto LABEL_25;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      goto LABEL_22;
    }

    [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.nanobuddy", @"com.apple.clockface", @"com.apple.NanoDemo", @"com.apple.PreBoard", @"com.apple.ReBoard", @"com.apple.NanoSafari", @"com.apple.PreviewShell", @"com.apple.Mandrake", 0, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33}];
    v13 = LABEL_25:;
    goto LABEL_26;
  }

  switch(a3)
  {
    case 7:
LABEL_22:
      v13 = [MEMORY[0x277CBEB98] set];
LABEL_26:
      v3 = v13;
      break;
    case 101:
      v13 = [a1 systemHiddenBundleIdentifiersForDeviceFamily:{objc_msgSend(a1, "currentIOSDevice")}];
      goto LABEL_26;
    case 102:
      v5 = [a1 systemHiddenBundleIdentifiersForDeviceFamily:2];
      v6 = [a1 systemHiddenBundleIdentifiersForDeviceFamily:6];
      v7 = [a1 systemHiddenBundleIdentifiersForDeviceFamily:1];
      v8 = [a1 systemHiddenBundleIdentifiersForDeviceFamily:5];
      v9 = [a1 systemHiddenBundleIdentifiersForDeviceFamily:7];
      v10 = [MEMORY[0x277CBEB58] set];
      v11 = v10;
      if (v5)
      {
        [v10 unionSet:v5];
      }

      if (v6)
      {
        [v11 unionSet:v6];
      }

      if (v7)
      {
        [v11 unionSet:v7];
      }

      if (v8)
      {
        [v11 unionSet:v8];
      }

      if (v9)
      {
        [v11 unionSet:v9];
      }

      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = [MEMORY[0x277CBEB98] set];
      }

      v3 = v12;

      break;
  }

LABEL_27:

  return v3;
}

+ (id)supportedWebBrowserBundleIdentifiersForDeviceFamily:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 4)
  {
    if ((a3 - 2) >= 3)
    {
      if (a3 != 1)
      {
        goto LABEL_23;
      }

      [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.Safari", @"com.apple.DemoWebBrowser", 0}];
    }

    else
    {
      [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.mobilesafari", @"com.apple.DemoWebBrowser", 0}];
    }
    v11 = ;
    goto LABEL_22;
  }

  if (a3 < 8)
  {
    v11 = objc_opt_new();
LABEL_22:
    v3 = v11;
    goto LABEL_23;
  }

  if (a3 == 101)
  {
    v11 = [a1 supportedWebBrowserBundleIdentifiersForDeviceFamily:{objc_msgSend(a1, "currentIOSDevice")}];
    goto LABEL_22;
  }

  if (a3 == 102)
  {
    v5 = [a1 supportedWebBrowserBundleIdentifiersForDeviceFamily:2];
    v6 = [a1 supportedWebBrowserBundleIdentifiersForDeviceFamily:6];
    v7 = [a1 supportedWebBrowserBundleIdentifiersForDeviceFamily:1];
    v8 = [a1 supportedWebBrowserBundleIdentifiersForDeviceFamily:5];
    v9 = [a1 supportedWebBrowserBundleIdentifiersForDeviceFamily:7];
    v10 = objc_opt_new();
    v3 = v10;
    if (v5)
    {
      [v10 unionSet:v5];
    }

    if (v6)
    {
      [v3 unionSet:v6];
    }

    if (v7)
    {
      [v3 unionSet:v7];
    }

    if (v8)
    {
      [v3 unionSet:v8];
    }

    if (v9)
    {
      [v3 unionSet:v9];
    }
  }

LABEL_23:

  return v3;
}

+ (int64_t)currentIOSDevice
{
  v2 = MGCopyAnswer();
  if ([v2 isEqualToString:@"iPhone"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"iPad"])
  {
    v3 = 4;
  }

  else if ([v2 isEqualToString:@"iPod touch"])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

@end