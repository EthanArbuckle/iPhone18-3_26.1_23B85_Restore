@interface CCSModuleRepository
+ (CCSModuleRepository)sharedInstance;
+ (id)_defaultModuleDirectories;
+ (id)_defaultModuleIdentifierAllowedList;
+ (id)_deviceFamily;
+ (void)initialize;
- (BOOL)_queue_arrayContainsInterestingApplicationProxy:(id)a3;
- (BOOL)visibilityForModuleIdentifier:(id)a3;
- (NSSet)loadableModuleIdentifiers;
- (id)_initWithDirectoryURLs:(id)a3 allowedModuleIdentifiers:(id)a4;
- (id)_queue_associatedBundleIdentifiersForModuleMetadata:(id)a3;
- (id)_queue_filterModuleMetadataByAssociatedBundleAvailability:(id)a3;
- (id)_queue_filterModuleMetadataByGestalt:(id)a3;
- (id)_queue_filterModuleMetadataByVisibilityPreference:(id)a3;
- (id)_queue_gestaltQuestionsForModuleMetadata:(id)a3;
- (id)_queue_loadAllModuleMetadata;
- (id)_queue_moduleIdentifiersForMetadata:(id)a3;
- (id)moduleMetadataForModuleIdentifier:(id)a3;
- (void)_applicationsDidChange:(id)a3;
- (void)_queue_registerForInternalPreferenceChanges;
- (void)_queue_registerForVisiblityPreferenceChanges;
- (void)_queue_runBlockOnObservers:(id)a3;
- (void)_queue_setIgnoreAllowedList:(BOOL)a3;
- (void)_queue_startObservingMobileGestaltQuestions:(id)a3 withChangeHandler:(id)a4;
- (void)_queue_stopObservingGestaltQuestions;
- (void)_queue_unregisterForInternalPreferenceChanges;
- (void)_queue_unregisterForVisiblityPreferenceChanges;
- (void)_queue_updateAllModuleMetadata;
- (void)_queue_updateAllModuleMetadataForAllModuleMetadata:(id)a3;
- (void)_queue_updateAvailableModuleMetadata;
- (void)_queue_updateAvailableModuleMetadataForAllModuleMetadata:(id)a3;
- (void)_queue_updateGestaltQuestionsForModuleMetadata:(id)a3;
- (void)_queue_updateInterestingBundleIdentifiersForModuleMetadata:(id)a3;
- (void)_queue_updateLoadableModuleMetadata;
- (void)_queue_updateLoadableModuleMetadataForAvailableModuleMetadata:(id)a3;
- (void)_updateAvailableModuleMetadata;
- (void)addObserver:(id)a3;
- (void)invalidate;
- (void)removeObserver:(id)a3;
- (void)setVisibility:(BOOL)a3 forModuleIdentifier:(id)a4;
@end

@implementation CCSModuleRepository

- (void)_updateAvailableModuleMetadata
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__CCSModuleRepository__updateAvailableModuleMetadata__block_invoke;
  v4[3] = &unk_278E0F6F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__CCSModuleRepository__updateAvailableModuleMetadata__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _queue_updateAvailableModuleMetadata];
    WeakRetained = v2;
  }
}

- (void)_queue_updateAvailableModuleMetadata
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSDictionary *)self->_allModuleMetadataByIdentifier allValues];
  [(CCSModuleRepository *)self _queue_updateAvailableModuleMetadataForAllModuleMetadata:v3];
}

- (void)_queue_stopObservingGestaltQuestions
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_mobileGestaltNotificationToken != -1)
  {
    MGCancelNotifications();
    self->_mobileGestaltNotificationToken = -1;
  }
}

- (NSSet)loadableModuleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__CCSModuleRepository_loadableModuleIdentifiers__block_invoke;
  v5[3] = &unk_278E0F658;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__CCSModuleRepository_loadableModuleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (id)_deviceFamily
{
  if (_deviceFamily_onceToken != -1)
  {
    +[CCSModuleRepository _deviceFamily];
  }

  v3 = _deviceFamily_deviceFamily;

  return v3;
}

void __36__CCSModuleRepository__deviceFamily__block_invoke()
{
  v0 = [MEMORY[0x277CF0CA8] sharedInstance];
  v1 = [v0 deviceClass];

  if (v1 <= 2)
  {
    v2 = _deviceFamily_deviceFamily;
    _deviceFamily_deviceFamily = qword_278E0F940[v1];
  }
}

+ (CCSModuleRepository)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CCSModuleRepository_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_2;

  return v2;
}

void __37__CCSModuleRepository_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 32));
  v6 = [*(a1 + 32) _defaultModuleDirectories];
  v3 = [*(a1 + 32) _defaultModuleIdentifierAllowedList];
  v4 = [v2 _initWithDirectoryURLs:v6 allowedModuleIdentifiers:v3];
  v5 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    CCSRegisterControlCenterLogging();
  }
}

- (id)_initWithDirectoryURLs:(id)a3 allowedModuleIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = CCSModuleRepository;
  v8 = [(CCSModuleRepository *)&v25 init];
  if (v8)
  {
    v9 = [v6 copy];
    directoryURLs = v8->_directoryURLs;
    v8->_directoryURLs = v9;

    v11 = [v7 copy];
    allowedModuleIdentifiers = v8->_allowedModuleIdentifiers;
    v8->_allowedModuleIdentifiers = v11;

    v8->_mobileGestaltNotificationToken = -1;
    v13 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v8->_observers;
    v8->_observers = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.ControlCenter.ModuleRepository", v15);
    queue = v8->_queue;
    v8->_queue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.ControlCenter.ModuleRepository.callout", v18);
    callOutQueue = v8->_callOutQueue;
    v8->_callOutQueue = v19;

    v21 = v8->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__CCSModuleRepository__initWithDirectoryURLs_allowedModuleIdentifiers___block_invoke;
    block[3] = &unk_278E0F630;
    v24 = v8;
    dispatch_sync(v21, block);
  }

  return v8;
}

uint64_t __71__CCSModuleRepository__initWithDirectoryURLs_allowedModuleIdentifiers___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_updateAllModuleMetadata];
  v2 = *(a1 + 32);
  v3 = +[CCSControlCenterDefaults standardDefaults];
  [v2 _queue_setIgnoreAllowedList:{objc_msgSend(v3, "shouldEnablePrototypeFeatures")}];

  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v4 addObserver:*(a1 + 32)];

  [*(a1 + 32) _queue_registerForVisiblityPreferenceChanges];
  v5 = *(a1 + 32);

  return [v5 _queue_registerForInternalPreferenceChanges];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CCSModuleRepository_invalidate__block_invoke;
  block[3] = &unk_278E0F630;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __33__CCSModuleRepository_invalidate__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 removeObserver:*(a1 + 32)];

  [*(a1 + 32) _queue_unregisterForVisiblityPreferenceChanges];
  [*(a1 + 32) _queue_unregisterForInternalPreferenceChanges];
  v3 = *(a1 + 32);

  return [v3 _queue_stopObservingGestaltQuestions];
}

- (BOOL)visibilityForModuleIdentifier:(id)a3
{
  v3 = CFPreferencesCopyAppValue(@"SBIconVisibility", a3);
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setVisibility:(BOOL)a3 forModuleIdentifier:(id)a4
{
  v4 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v4 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"SBIconVisibility", *v4, a4);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, 0, 1u);
}

- (void)_queue_setIgnoreAllowedList:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (CCSIsInternalInstall() && self->_ignoreAllowedList != v3)
  {
    self->_ignoreAllowedList = v3;

    [(CCSModuleRepository *)self _queue_updateAllModuleMetadata];
  }
}

- (id)moduleMetadataForModuleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CCSModuleRepository_moduleMetadataForModuleIdentifier___block_invoke;
  block[3] = &unk_278E0F768;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__CCSModuleRepository_moduleMetadataForModuleIdentifier___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 24) objectForKey:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__CCSModuleRepository_addObserver___block_invoke;
  v7[3] = &unk_278E0F680;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CCSModuleRepository_removeObserver___block_invoke;
  v7[3] = &unk_278E0F680;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_queue_runBlockOnObservers:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSHashTable *)self->_observers allObjects];
  callOutQueue = self->_callOutQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__CCSModuleRepository__queue_runBlockOnObservers___block_invoke;
  v9[3] = &unk_278E0F3B8;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(callOutQueue, v9);
}

- (void)_applicationsDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CCSModuleRepository__applicationsDidChange___block_invoke;
  block[3] = &unk_278E0F790;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __46__CCSModuleRepository__applicationsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained _queue_arrayContainsInterestingApplicationProxy:*(a1 + 32)])
    {
      [v4 _queue_updateAvailableModuleMetadata];
    }
  }

  return MEMORY[0x2821F96F8]();
}

+ (id)_defaultModuleDirectories
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if (CCSIsInternalInstall())
  {
    v3 = +[CCSControlCenterDefaults standardDefaults];
    v4 = [v3 shouldEnableInternalModules];

    if (v4)
    {
      v5 = [MEMORY[0x277CCACA8] pathWithComponents:&unk_2857A46D8];
      v6 = [v2 arrayByAddingObject:v5];

      v2 = v6;
    }
  }

  v7 = [v2 bs_map:&__block_literal_global_21];

  return v7;
}

id __48__CCSModuleRepository__defaultModuleDirectories__block_invoke(uint64_t a1, void *a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = a2;
  v4 = BSSystemRootDirectory();
  v9[0] = v4;
  v9[1] = v3;
  v9[2] = @"ControlCenter";
  v9[3] = @"Bundles";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [v2 fileURLWithPathComponents:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_defaultModuleIdentifierAllowedList
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"ModuleAllowedList" withExtension:@"plist"];

  v4 = [MEMORY[0x277CBEB18] arrayWithContentsOfURL:v3];
  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

- (void)_queue_updateAllModuleMetadata
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(CCSModuleRepository *)self _queue_loadAllModuleMetadata];
  [(CCSModuleRepository *)self _queue_updateAllModuleMetadataForAllModuleMetadata:v3];
}

- (void)_queue_updateLoadableModuleMetadata
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSSet *)self->_availableModuleIdentifiers allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__CCSModuleRepository__queue_updateLoadableModuleMetadata__block_invoke;
  v5[3] = &unk_278E0F7D8;
  v5[4] = self;
  v4 = [v3 bs_mapNoNulls:v5];

  [(CCSModuleRepository *)self _queue_updateLoadableModuleMetadataForAvailableModuleMetadata:v4];
}

- (void)_queue_updateAllModuleMetadataForAllModuleMetadata:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 moduleIdentifier];
        [v5 setObject:v11 forKey:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  allModuleMetadataByIdentifier = self->_allModuleMetadataByIdentifier;
  if ((BSEqualObjects() & 1) == 0)
  {
    v14 = [v5 copy];
    v15 = self->_allModuleMetadataByIdentifier;
    self->_allModuleMetadataByIdentifier = v14;

    [(CCSModuleRepository *)self _queue_updateInterestingBundleIdentifiersForModuleMetadata:v6];
    [(CCSModuleRepository *)self _queue_updateAvailableModuleMetadataForAllModuleMetadata:v6];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateAvailableModuleMetadataForAllModuleMetadata:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(CCSModuleRepository *)self _queue_filterModuleMetadataByAssociatedBundleAvailability:v8];
  v5 = [(CCSModuleRepository *)self _queue_filterModuleMetadataByVisibilityPreference:v4];

  v6 = [(CCSModuleRepository *)self _queue_moduleIdentifiersForMetadata:v5];
  availableModuleIdentifiers = self->_availableModuleIdentifiers;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_availableModuleIdentifiers, v6);
    [(CCSModuleRepository *)self _queue_updateGestaltQuestionsForModuleMetadata:v5];
    [(CCSModuleRepository *)self _queue_updateLoadableModuleMetadataForAvailableModuleMetadata:v5];
  }
}

- (void)_queue_updateLoadableModuleMetadataForAvailableModuleMetadata:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(CCSModuleRepository *)self _queue_filterModuleMetadataByGestalt:v4];
  v6 = [(CCSModuleRepository *)self _queue_moduleIdentifiersForMetadata:v5];
  loadableModuleIdentifiers = self->_loadableModuleIdentifiers;
  if ((BSEqualObjects() & 1) == 0)
  {
    v18 = v5;
    v8 = CCSLogModuleSettings;
    if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24427F000, v8, OS_LOG_TYPE_DEFAULT, "[CCSModuleRepository] Loadable modules changed...", buf, 2u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = CCSLogModuleSettings;
          if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(*(&v20 + 1) + 8 * i);
            *buf = 138543362;
            v25 = v15;
            _os_log_impl(&dword_24427F000, v14, OS_LOG_TYPE_DEFAULT, "[CCSModuleRepository] Loadable module: %{public}@", buf, 0xCu);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v11);
    }

    v6 = obj;
    objc_storeStrong(&self->_loadableModuleIdentifiers, obj);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__CCSModuleRepository__queue_updateLoadableModuleMetadataForAvailableModuleMetadata___block_invoke;
    v19[3] = &unk_278E0F800;
    v19[4] = self;
    [(CCSModuleRepository *)self _queue_runBlockOnObservers:v19];
    v5 = v18;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_queue_moduleIdentifiersForMetadata:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) moduleIdentifier];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_queue_loadAllModuleMetadata
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSArray *)self->_directoryURLs bs_mapNoNulls:&__block_literal_global_45];
  v4 = [v3 bs_flatten];
  v5 = [v4 bs_filter:&__block_literal_global_49];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__CCSModuleRepository__queue_loadAllModuleMetadata__block_invoke_3;
  v8[3] = &unk_278E0F868;
  v8[4] = self;
  v6 = [v5 bs_mapNoNulls:v8];

  return v6;
}

id __51__CCSModuleRepository__queue_loadAllModuleMetadata__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA00];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:0];

  return v5;
}

BOOL __51__CCSModuleRepository__queue_loadAllModuleMetadata__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 caseInsensitiveCompare:@"bundle"] == 0;

  return v3;
}

id __51__CCSModuleRepository__queue_loadAllModuleMetadata__block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [CCSModuleMetadata metadataForBundleAtURL:v3];
  v5 = CCSLogModuleSettings;
  if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543618;
    v19 = v3;
    v20 = 2114;
    v21 = v4;
    _os_log_impl(&dword_24427F000, v5, OS_LOG_TYPE_DEFAULT, "Found module metadata at URL %{public}@: %{public}@", &v18, 0x16u);
  }

  v6 = *(a1 + 32);
  if (*(v6 + 80) & 1) != 0 || (v7 = *(v6 + 16), [v4 moduleIdentifier], v8 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = objc_msgSend(v7, "containsObject:", v8), v8, (v7))
  {
    v9 = [v4 supportedDeviceFamilies];
    v10 = *(a1 + 32);
    v11 = [objc_opt_class() _deviceFamily];
    v12 = [v9 containsObject:v11];

    if (v12)
    {
      v13 = v4;
      goto LABEL_13;
    }

    v14 = CCSLogModuleSettings;
    if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v3;
      v15 = "Ignoring unsupported module at URL: %{public}@";
LABEL_11:
      _os_log_impl(&dword_24427F000, v14, OS_LOG_TYPE_DEFAULT, v15, &v18, 0xCu);
    }
  }

  else
  {
    v14 = CCSLogModuleSettings;
    if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v3;
      v15 = "Ignoring disallowed module at URL: %{public}@";
      goto LABEL_11;
    }
  }

  v13 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_queue_filterModuleMetadataByAssociatedBundleAvailability:(id)a3
{
  queue = self->_queue;
  v4 = a3;
  dispatch_assert_queue_V2(queue);
  v5 = [v4 bs_filter:&__block_literal_global_56];

  return v5;
}

uint64_t __81__CCSModuleRepository__queue_filterModuleMetadataByAssociatedBundleAvailability___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 associatedBundleIdentifier];
  if (v3)
  {
    v16 = 0;
    v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v16];
    v5 = v16;
    if (v4)
    {
      v6 = [v4 applicationState];
      if (![v6 isInstalled])
      {
        goto LABEL_7;
      }

      if ([v6 isRestricted])
      {
        goto LABEL_7;
      }

      v7 = [v2 associatedBundleMinimumVersion];
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = v7;
      v9 = [v4 shortVersionString];
      v10 = [v8 compare:v9 options:65];

      if (v10 == 1)
      {
LABEL_7:
        v11 = 0;
      }

      else
      {
LABEL_15:
        v14 = CFPreferencesCopyAppValue(@"SBIconVisibility", v3);
        v15 = CCSVisibilityPreferenceForBundleRecord(v4);
        v11 = CCSResolveModuleVisibility(v14, v15, 1);
      }
    }

    else
    {
      v12 = CCSLogModuleSettings;
      if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_ERROR))
      {
        __81__CCSModuleRepository__queue_filterModuleMetadataByAssociatedBundleAvailability___block_invoke_cold_1(v3, v5, v12);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)_queue_updateInterestingBundleIdentifiersForModuleMetadata:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(CCSModuleRepository *)self _queue_associatedBundleIdentifiersForModuleMetadata:v5];

  interestingBundleIdentifiers = self->_interestingBundleIdentifiers;
  self->_interestingBundleIdentifiers = v6;
}

- (id)_queue_associatedBundleIdentifiersForModuleMetadata:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) associatedBundleIdentifier];
        [v5 bs_safeAddObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_queue_arrayContainsInterestingApplicationProxy:(id)a3
{
  v3 = self;
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CCSModuleRepository__queue_arrayContainsInterestingApplicationProxy___block_invoke;
  v7[3] = &unk_278E0F8B0;
  v7[4] = v3;
  LOBYTE(v3) = [v5 bs_containsObjectPassingTest:v7];

  return v3;
}

uint64_t __71__CCSModuleRepository__queue_arrayContainsInterestingApplicationProxy___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [a2 bundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_queue_filterModuleMetadataByVisibilityPreference:(id)a3
{
  queue = self->_queue;
  v4 = a3;
  dispatch_assert_queue_V2(queue);
  v5 = [v4 bs_filter:&__block_literal_global_60_0];

  return v5;
}

uint64_t __73__CCSModuleRepository__queue_filterModuleMetadataByVisibilityPreference___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CFPreferencesCopyAppValue(@"SBIconVisibility", [v2 moduleIdentifier]);
  v4 = [v2 visibilityPreference];

  v5 = CCSResolveModuleVisibility(v3, v4, 1);
  return v5;
}

- (void)_queue_registerForVisiblityPreferenceChanges
{
  dispatch_assert_queue_V2(self->_queue);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _SBIconVisibilityNotificationRecieved, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_queue_unregisterForVisiblityPreferenceChanges
{
  dispatch_assert_queue_V2(self->_queue);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0);
}

- (id)_queue_filterModuleMetadataByGestalt:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(CCSModuleRepository *)self _queue_gestaltQuestionsForModuleMetadata:v5];
  v7 = MGCopyMultipleAnswers();
  v8 = [v7 bs_filter:&__block_literal_global_63];
  v9 = MEMORY[0x277CBEB98];
  v10 = [v7 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = MEMORY[0x277CBEB98];
  v13 = [v8 allKeys];
  v14 = [v12 setWithArray:v13];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__CCSModuleRepository__queue_filterModuleMetadataByGestalt___block_invoke_2;
  v19[3] = &unk_278E0F8F8;
  v20 = v11;
  v21 = v14;
  v15 = v14;
  v16 = v11;
  v17 = [v5 bs_filter:v19];

  return v17;
}

uint64_t __60__CCSModuleRepository__queue_filterModuleMetadataByGestalt___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 requiredDeviceCapabilities];
  if ([v4 count] && (!objc_msgSend(v4, "isSubsetOfSet:", *(a1 + 32)) || (objc_msgSend(v4, "intersectsSet:", *(a1 + 40)) & 1) != 0))
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 requiredDeviceIncapabilities];
    if ([v6 count])
    {
      if ([v6 isSubsetOfSet:*(a1 + 32)])
      {
        v5 = [v6 isSubsetOfSet:*(a1 + 40)];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)_queue_updateGestaltQuestionsForModuleMetadata:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(CCSModuleRepository *)self _queue_gestaltQuestionsForModuleMetadata:v4];
  [(CCSModuleRepository *)self _queue_stopObservingGestaltQuestions];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__CCSModuleRepository__queue_updateGestaltQuestionsForModuleMetadata___block_invoke;
  v6[3] = &unk_278E0F6F0;
  objc_copyWeak(&v7, &location);
  [(CCSModuleRepository *)self _queue_startObservingMobileGestaltQuestions:v5 withChangeHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __70__CCSModuleRepository__queue_updateGestaltQuestionsForModuleMetadata___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_updateLoadableModuleMetadata];
}

- (id)_queue_gestaltQuestionsForModuleMetadata:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 requiredDeviceCapabilities];
        [v5 unionSet:v12];

        v13 = [v11 requiredDeviceIncapabilities];
        [v5 unionSet:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 allObjects];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_queue_startObservingMobileGestaltQuestions:(id)a3 withChangeHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if ([v6 count])
  {
    queue = self->_queue;
    v9 = v7;
    self->_mobileGestaltNotificationToken = MGRegisterForBulkUpdates();
  }
}

- (void)_queue_registerForInternalPreferenceChanges
{
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  v3 = +[CCSControlCenterDefaults standardDefaults];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__CCSModuleRepository__queue_registerForInternalPreferenceChanges__block_invoke;
  v7[3] = &unk_278E0F6F0;
  objc_copyWeak(&v8, &location);
  v5 = [v3 observeDefault:@"shouldEnablePrototypeFeatures" onQueue:queue withBlock:v7];
  internalDefaultsObserver = self->_internalDefaultsObserver;
  self->_internalDefaultsObserver = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__CCSModuleRepository__queue_registerForInternalPreferenceChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[CCSControlCenterDefaults standardDefaults];
  [WeakRetained _queue_setIgnoreAllowedList:{objc_msgSend(v1, "shouldEnablePrototypeFeatures")}];
}

- (void)_queue_unregisterForInternalPreferenceChanges
{
  dispatch_assert_queue_V2(self->_queue);
  internalDefaultsObserver = self->_internalDefaultsObserver;

  [(BSDefaultObserver *)internalDefaultsObserver invalidate];
}

void __81__CCSModuleRepository__queue_filterModuleMetadataByAssociatedBundleAvailability___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_24427F000, log, OS_LOG_TYPE_ERROR, "Error obtaining application record for object with associated bundleID %{public}@: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end