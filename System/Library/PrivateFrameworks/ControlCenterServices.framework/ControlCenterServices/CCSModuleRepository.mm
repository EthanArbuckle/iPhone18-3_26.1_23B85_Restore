@interface CCSModuleRepository
+ (CCSModuleRepository)sharedInstance;
+ (id)_defaultModuleDirectories;
+ (id)_defaultModuleIdentifierAllowedList;
+ (id)_deviceFamily;
+ (void)initialize;
- (BOOL)_queue_arrayContainsInterestingApplicationProxy:(id)proxy;
- (BOOL)visibilityForModuleIdentifier:(id)identifier;
- (NSSet)loadableModuleIdentifiers;
- (id)_initWithDirectoryURLs:(id)ls allowedModuleIdentifiers:(id)identifiers;
- (id)_queue_associatedBundleIdentifiersForModuleMetadata:(id)metadata;
- (id)_queue_filterModuleMetadataByAssociatedBundleAvailability:(id)availability;
- (id)_queue_filterModuleMetadataByGestalt:(id)gestalt;
- (id)_queue_filterModuleMetadataByVisibilityPreference:(id)preference;
- (id)_queue_gestaltQuestionsForModuleMetadata:(id)metadata;
- (id)_queue_loadAllModuleMetadata;
- (id)_queue_moduleIdentifiersForMetadata:(id)metadata;
- (id)moduleMetadataForModuleIdentifier:(id)identifier;
- (void)_applicationsDidChange:(id)change;
- (void)_queue_registerForInternalPreferenceChanges;
- (void)_queue_registerForVisiblityPreferenceChanges;
- (void)_queue_runBlockOnObservers:(id)observers;
- (void)_queue_setIgnoreAllowedList:(BOOL)list;
- (void)_queue_startObservingMobileGestaltQuestions:(id)questions withChangeHandler:(id)handler;
- (void)_queue_stopObservingGestaltQuestions;
- (void)_queue_unregisterForInternalPreferenceChanges;
- (void)_queue_unregisterForVisiblityPreferenceChanges;
- (void)_queue_updateAllModuleMetadata;
- (void)_queue_updateAllModuleMetadataForAllModuleMetadata:(id)metadata;
- (void)_queue_updateAvailableModuleMetadata;
- (void)_queue_updateAvailableModuleMetadataForAllModuleMetadata:(id)metadata;
- (void)_queue_updateGestaltQuestionsForModuleMetadata:(id)metadata;
- (void)_queue_updateInterestingBundleIdentifiersForModuleMetadata:(id)metadata;
- (void)_queue_updateLoadableModuleMetadata;
- (void)_queue_updateLoadableModuleMetadataForAvailableModuleMetadata:(id)metadata;
- (void)_updateAvailableModuleMetadata;
- (void)addObserver:(id)observer;
- (void)invalidate;
- (void)removeObserver:(id)observer;
- (void)setVisibility:(BOOL)visibility forModuleIdentifier:(id)identifier;
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
  allValues = [(NSDictionary *)self->_allModuleMetadataByIdentifier allValues];
  [(CCSModuleRepository *)self _queue_updateAvailableModuleMetadataForAllModuleMetadata:allValues];
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
  block[4] = self;
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
  if (objc_opt_class() == self)
  {

    CCSRegisterControlCenterLogging();
  }
}

- (id)_initWithDirectoryURLs:(id)ls allowedModuleIdentifiers:(id)identifiers
{
  lsCopy = ls;
  identifiersCopy = identifiers;
  v25.receiver = self;
  v25.super_class = CCSModuleRepository;
  v8 = [(CCSModuleRepository *)&v25 init];
  if (v8)
  {
    v9 = [lsCopy copy];
    directoryURLs = v8->_directoryURLs;
    v8->_directoryURLs = v9;

    v11 = [identifiersCopy copy];
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

- (BOOL)visibilityForModuleIdentifier:(id)identifier
{
  v3 = CFPreferencesCopyAppValue(@"SBIconVisibility", identifier);
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setVisibility:(BOOL)visibility forModuleIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBED28];
  if (!visibility)
  {
    v4 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"SBIconVisibility", *v4, identifier);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, 0, 1u);
}

- (void)_queue_setIgnoreAllowedList:(BOOL)list
{
  listCopy = list;
  dispatch_assert_queue_V2(self->_queue);
  if (CCSIsInternalInstall() && self->_ignoreAllowedList != listCopy)
  {
    self->_ignoreAllowedList = listCopy;

    [(CCSModuleRepository *)self _queue_updateAllModuleMetadata];
  }
}

- (id)moduleMetadataForModuleIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__CCSModuleRepository_addObserver___block_invoke;
  v7[3] = &unk_278E0F680;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CCSModuleRepository_removeObserver___block_invoke;
  v7[3] = &unk_278E0F680;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)_queue_runBlockOnObservers:(id)observers
{
  observersCopy = observers;
  dispatch_assert_queue_V2(self->_queue);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  callOutQueue = self->_callOutQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__CCSModuleRepository__queue_runBlockOnObservers___block_invoke;
  v9[3] = &unk_278E0F3B8;
  v10 = allObjects;
  v11 = observersCopy;
  v7 = observersCopy;
  v8 = allObjects;
  dispatch_async(callOutQueue, v9);
}

- (void)_applicationsDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CCSModuleRepository__applicationsDidChange___block_invoke;
  block[3] = &unk_278E0F790;
  objc_copyWeak(&v9, &location);
  v8 = changeCopy;
  v6 = changeCopy;
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
    shouldEnableInternalModules = [v3 shouldEnableInternalModules];

    if (shouldEnableInternalModules)
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
  _queue_loadAllModuleMetadata = [(CCSModuleRepository *)self _queue_loadAllModuleMetadata];
  [(CCSModuleRepository *)self _queue_updateAllModuleMetadataForAllModuleMetadata:_queue_loadAllModuleMetadata];
}

- (void)_queue_updateLoadableModuleMetadata
{
  dispatch_assert_queue_V2(self->_queue);
  allObjects = [(NSSet *)self->_availableModuleIdentifiers allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__CCSModuleRepository__queue_updateLoadableModuleMetadata__block_invoke;
  v5[3] = &unk_278E0F7D8;
  v5[4] = self;
  v4 = [allObjects bs_mapNoNulls:v5];

  [(CCSModuleRepository *)self _queue_updateLoadableModuleMetadataForAvailableModuleMetadata:v4];
}

- (void)_queue_updateAllModuleMetadataForAllModuleMetadata:(id)metadata
{
  v22 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(metadataCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = metadataCopy;
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
        moduleIdentifier = [v11 moduleIdentifier];
        [v5 setObject:v11 forKey:moduleIdentifier];
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

- (void)_queue_updateAvailableModuleMetadataForAllModuleMetadata:(id)metadata
{
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(CCSModuleRepository *)self _queue_filterModuleMetadataByAssociatedBundleAvailability:metadataCopy];
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

- (void)_queue_updateLoadableModuleMetadataForAvailableModuleMetadata:(id)metadata
{
  v27 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(CCSModuleRepository *)self _queue_filterModuleMetadataByGestalt:metadataCopy];
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

- (id)_queue_moduleIdentifiersForMetadata:(id)metadata
{
  v20 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(metadataCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = metadataCopy;
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

        moduleIdentifier = [*(*(&v15 + 1) + 8 * i) moduleIdentifier];
        [v5 addObject:moduleIdentifier];
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
  bs_flatten = [v3 bs_flatten];
  v5 = [bs_flatten bs_filter:&__block_literal_global_49];
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

- (id)_queue_filterModuleMetadataByAssociatedBundleAvailability:(id)availability
{
  queue = self->_queue;
  availabilityCopy = availability;
  dispatch_assert_queue_V2(queue);
  v5 = [availabilityCopy bs_filter:&__block_literal_global_56];

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

- (void)_queue_updateInterestingBundleIdentifiersForModuleMetadata:(id)metadata
{
  queue = self->_queue;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(queue);
  v6 = [(CCSModuleRepository *)self _queue_associatedBundleIdentifiersForModuleMetadata:metadataCopy];

  interestingBundleIdentifiers = self->_interestingBundleIdentifiers;
  self->_interestingBundleIdentifiers = v6;
}

- (id)_queue_associatedBundleIdentifiersForModuleMetadata:(id)metadata
{
  v20 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(metadataCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = metadataCopy;
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

        associatedBundleIdentifier = [*(*(&v15 + 1) + 8 * i) associatedBundleIdentifier];
        [v5 bs_safeAddObject:associatedBundleIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_queue_arrayContainsInterestingApplicationProxy:(id)proxy
{
  selfCopy = self;
  queue = self->_queue;
  proxyCopy = proxy;
  dispatch_assert_queue_V2(queue);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CCSModuleRepository__queue_arrayContainsInterestingApplicationProxy___block_invoke;
  v7[3] = &unk_278E0F8B0;
  v7[4] = selfCopy;
  LOBYTE(selfCopy) = [proxyCopy bs_containsObjectPassingTest:v7];

  return selfCopy;
}

uint64_t __71__CCSModuleRepository__queue_arrayContainsInterestingApplicationProxy___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [a2 bundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_queue_filterModuleMetadataByVisibilityPreference:(id)preference
{
  queue = self->_queue;
  preferenceCopy = preference;
  dispatch_assert_queue_V2(queue);
  v5 = [preferenceCopy bs_filter:&__block_literal_global_60_0];

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

- (id)_queue_filterModuleMetadataByGestalt:(id)gestalt
{
  queue = self->_queue;
  gestaltCopy = gestalt;
  dispatch_assert_queue_V2(queue);
  v6 = [(CCSModuleRepository *)self _queue_gestaltQuestionsForModuleMetadata:gestaltCopy];
  v7 = MGCopyMultipleAnswers();
  v8 = [v7 bs_filter:&__block_literal_global_63];
  v9 = MEMORY[0x277CBEB98];
  allKeys = [v7 allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = MEMORY[0x277CBEB98];
  allKeys2 = [v8 allKeys];
  v14 = [v12 setWithArray:allKeys2];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__CCSModuleRepository__queue_filterModuleMetadataByGestalt___block_invoke_2;
  v19[3] = &unk_278E0F8F8;
  v20 = v11;
  v21 = v14;
  v15 = v14;
  v16 = v11;
  v17 = [gestaltCopy bs_filter:v19];

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

- (void)_queue_updateGestaltQuestionsForModuleMetadata:(id)metadata
{
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(CCSModuleRepository *)self _queue_gestaltQuestionsForModuleMetadata:metadataCopy];
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

- (id)_queue_gestaltQuestionsForModuleMetadata:(id)metadata
{
  v22 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = metadataCopy;
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
        requiredDeviceCapabilities = [v11 requiredDeviceCapabilities];
        [v5 unionSet:requiredDeviceCapabilities];

        requiredDeviceIncapabilities = [v11 requiredDeviceIncapabilities];
        [v5 unionSet:requiredDeviceIncapabilities];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  allObjects = [v5 allObjects];

  v15 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (void)_queue_startObservingMobileGestaltQuestions:(id)questions withChangeHandler:(id)handler
{
  questionsCopy = questions;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if ([questionsCopy count])
  {
    queue = self->_queue;
    v9 = handlerCopy;
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