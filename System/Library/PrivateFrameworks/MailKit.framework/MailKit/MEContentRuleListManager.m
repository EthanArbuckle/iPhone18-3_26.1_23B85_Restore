@interface MEContentRuleListManager
+ (id)log;
- (MEContentRuleListManager)initWithExtensionsController:(id)a3;
- (id)_activeRuleLists;
- (id)_encodedContentRuleListForExtension:(id)a3;
- (id)addObserver:(id)a3 activeRuleLists:(id *)a4;
- (void)_compileAndAddContentRuleListForIdentifier:(id)a3 encodedContentRuleList:(id)a4;
- (void)_handleExtensionsAdded:(id)a3;
- (void)_handleExtensionsRemoved:(id)a3;
- (void)_notifyObserversOfNewContentRuleList:(id)a3;
- (void)_notifyObserversOfRemovedContentRuleList:(id)a3;
- (void)_notifyObserversOfUpdatedContentRuleList:(id)a3 oldContentRuleList:(id)a4;
- (void)_reloadContentRuleLists;
- (void)dealloc;
@end

@implementation MEContentRuleListManager

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MEContentRuleListManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __31__MEContentRuleListManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_1;
  log_log_1 = v1;
}

- (MEContentRuleListManager)initWithExtensionsController:(id)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v32.receiver = self;
  v32.super_class = MEContentRuleListManager;
  v6 = [(MEContentRuleListManager *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionsController, a3);
    v8 = objc_alloc_init(MEMORY[0x277D07170]);
    extensionsObserverCancelable = v7->_extensionsObserverCancelable;
    v7->_extensionsObserverCancelable = v8;

    v10 = objc_alloc(MEMORY[0x277D07168]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = [v10 initWithObject:v11];
    activeRuleListsByIdentifier = v7->_activeRuleListsByIdentifier;
    v7->_activeRuleListsByIdentifier = v12;

    v7->_lock._os_unfair_lock_opaque = 0;
    v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v14;

    v16 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.MEContentRuleListManager.observation"];
    observationScheduler = v7->_observationScheduler;
    v7->_observationScheduler = v16;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _reload, @"MEContentBlockerMangerReload", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_initWeak(&location, v7);
    v19 = objc_alloc(MEMORY[0x277D07140]);
    v20 = v7->_observationScheduler;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __57__MEContentRuleListManager_initWithExtensionsController___block_invoke;
    v29[3] = &unk_279859018;
    objc_copyWeak(&v30, &location);
    v21 = [v19 initWithTimeInterval:v20 scheduler:0 startAfter:v29 block:60.0];
    reloadDebouncer = v7->_reloadDebouncer;
    v7->_reloadDebouncer = v21;

    extensionsController = v7->_extensionsController;
    v33[0] = @"MEContentBlocker";
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__MEContentRuleListManager_initWithExtensionsController___block_invoke_2;
    v27[3] = &unk_279858ED0;
    objc_copyWeak(&v28, &location);
    [(MEAppExtensionsController *)extensionsController registerMailAppExtensionsObserver:v7 capabilities:v24 includeDisabled:0 completion:v27];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

void __57__MEContentRuleListManager_initWithExtensionsController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadContentRuleLists];
}

void __57__MEContentRuleListManager_initWithExtensionsController___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    if (v10)
    {
      v13 = +[MEContentRuleListManager log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v10 ef_publicDescription];
        __57__MEContentRuleListManager_initWithExtensionsController___block_invoke_2_cold_1(v14, v16);
      }
    }

    else
    {
      [WeakRetained _handleExtensionsAdded:v9];
      [v12[3] addCancelable:v8];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_extensionsObserverCancelable cancel];
  v3.receiver = self;
  v3.super_class = MEContentRuleListManager;
  [(MEContentRuleListManager *)&v3 dealloc];
}

- (id)_activeRuleLists
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  activeRuleListsByIdentifier = self->_activeRuleListsByIdentifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__MEContentRuleListManager__activeRuleLists__block_invoke;
  v5[3] = &unk_279859040;
  v5[4] = &v6;
  [(EFLocked *)activeRuleListsByIdentifier performWhileLocked:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__MEContentRuleListManager__activeRuleLists__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 allValues];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_handleExtensionsAdded:(id)a3
{
  v4 = a3;
  observationScheduler = self->_observationScheduler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__MEContentRuleListManager__handleExtensionsAdded___block_invoke;
  v7[3] = &unk_279859068;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(EFAssertableScheduler *)observationScheduler performBlock:v7];
}

void __51__MEContentRuleListManager__handleExtensionsAdded___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [*(a1 + 40) _encodedContentRuleListForExtension:{v6, v11}];
        if (v7)
        {
          v8 = *(a1 + 40);
          v9 = [v6 extensionID];
          [v8 _compileAndAddContentRuleListForIdentifier:v9 encodedContentRuleList:v7];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleExtensionsRemoved:(id)a3
{
  v4 = a3;
  observationScheduler = self->_observationScheduler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MEContentRuleListManager__handleExtensionsRemoved___block_invoke;
  v7[3] = &unk_279859068;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(EFAssertableScheduler *)observationScheduler performBlock:v7];
}

void __53__MEContentRuleListManager__handleExtensionsRemoved___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__MEContentRuleListManager__handleExtensionsRemoved___block_invoke_2;
  v5[3] = &unk_2798590B8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 performWhileLocked:v5];
}

void __53__MEContentRuleListManager__handleExtensionsRemoved___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) ef_map:&__block_literal_global_0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__MEContentRuleListManager__handleExtensionsRemoved___block_invoke_4;
  v17[3] = &unk_279859090;
  v5 = v4;
  v18 = v5;
  v6 = [v3 ef_filter:v17];
  v7 = [v6 allValues];

  [v3 removeObjectsForKeys:v5];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 40) _notifyObserversOfRemovedContentRuleList:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __53__MEContentRuleListManager__handleExtensionsRemoved___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 extensionID];

  return v2;
}

- (void)_compileAndAddContentRuleListForIdentifier:(id)a3 encodedContentRuleList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke;
  v11[3] = &unk_279859108;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = self;
  v10 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v10 performSyncBlock:v11];
}

void __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke(void *a1)
{
  v2 = [getWKContentRuleListStoreClass() defaultStore];
  v3 = a1[4];
  v4 = a1[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke_2;
  v5[3] = &unk_2798590E0;
  v5[4] = a1[6];
  v6 = v3;
  [v2 compileContentRuleListForIdentifier:v6 encodedContentRuleList:v4 completionHandler:v5];
}

void __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(*(a1 + 32) + 32);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke_3;
    v15 = &unk_2798590B8;
    v16 = *(a1 + 40);
    v9 = v5;
    v17 = v9;
    [v8 performWhileLocked:&v12];
    [*(a1 + 32) _notifyObserversOfNewContentRuleList:{v9, v12, v13, v14, v15}];

    v10 = v16;
  }

  else
  {
    if (v6)
    {
      v11 = +[MEContentRuleListManager log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke_2_cold_1(a1);
      }
    }

    v10 = +[MEContentRuleListManager log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke_2_cold_2(a1);
    }
  }
}

- (id)_encodedContentRuleListForExtension:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 synchronousContentBlockerInterface];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__MEContentRuleListManager__encodedContentRuleListForExtension___block_invoke;
  v13[3] = &unk_279859130;
  v13[4] = &v14;
  [v4 contentRulesJSONWithCompletionHandler:v13];
  if (v15[5])
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [v5 initWithData:v15[5] encoding:4];
    v7 = +[MEContentRuleListManager log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 extensionID];
      v9 = [v6 length];
      *buf = 138543618;
      v21 = v8;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_257F67000, v7, OS_LOG_TYPE_DEFAULT, "Filter %{public}@ returned with text length:%lu", buf, 0x16u);
    }
  }

  else
  {
    v7 = +[MEContentRuleListManager log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 extensionID];
      [(MEContentRuleListManager *)v10 _encodedContentRuleListForExtension:buf];
    }

    v6 = 0;
  }

  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)addObserver:(id)a3 activeRuleLists:(id *)a4
{
  objc_initWeak(&location, a3);
  v6 = objc_alloc_init(MEMORY[0x277D07170]);
  objc_initWeak(&from, self);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __56__MEContentRuleListManager_addObserver_activeRuleLists___block_invoke;
  v13 = &unk_279858DC0;
  objc_copyWeak(&v14, &from);
  objc_copyWeak(&v15, &location);
  [v6 addCancelationBlock:&v10];
  os_unfair_lock_lock(&self->_lock);
  observers = self->_observers;
  v8 = objc_loadWeakRetained(&location);
  [(NSHashTable *)observers addObject:v8, v10, v11, v12, v13];

  os_unfair_lock_unlock(&self->_lock);
  if (a4)
  {
    *a4 = [(MEContentRuleListManager *)self _activeRuleLists];
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v6;
}

void __56__MEContentRuleListManager_addObserver_activeRuleLists___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 14);
    v3 = *&v5[10]._os_unfair_lock_opaque;
    v4 = objc_loadWeakRetained((a1 + 40));
    [v3 removeObject:v4];

    os_unfair_lock_unlock(v5 + 14);
    WeakRetained = v5;
  }
}

- (void)_notifyObserversOfNewContentRuleList:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) contentRuleListManager:self didAddRuleList:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfUpdatedContentRuleList:(id)a3 oldContentRuleList:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v12++) contentRuleListManager:self didUpdateContentRuleList:v6 oldContentRuleList:{v7, v14}];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfRemovedContentRuleList:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) contentRuleListManager:self didRemoveRuleList:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_reloadContentRuleLists
{
  [(EFAssertableScheduler *)self->_observationScheduler assertIsExecuting:1];
  v3 = [(EFLocked *)self->_activeRuleListsByIdentifier getObject];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__MEContentRuleListManager__reloadContentRuleLists__block_invoke;
  v4[3] = &unk_2798591A8;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __51__MEContentRuleListManager__reloadContentRuleLists__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 8) extensionForIdentifier:v5];
  v8 = [*(a1 + 32) _encodedContentRuleListForExtension:v7];
  if (v8)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__MEContentRuleListManager__reloadContentRuleLists__block_invoke_2;
    v12[3] = &unk_279859180;
    v13 = v5;
    v9 = v8;
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v16 = v6;
    v11 = [MEMORY[0x277D071B8] mainThreadScheduler];
    [v11 performSyncBlock:v12];
  }
}

void __51__MEContentRuleListManager__reloadContentRuleLists__block_invoke_2(uint64_t a1)
{
  v2 = [getWKContentRuleListStoreClass() defaultStore];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__MEContentRuleListManager__reloadContentRuleLists__block_invoke_3;
  v5[3] = &unk_279859158;
  v5[4] = *(a1 + 48);
  v6 = v3;
  v7 = *(a1 + 56);
  [v2 compileContentRuleListForIdentifier:v6 encodedContentRuleList:v4 completionHandler:v5];
}

void __51__MEContentRuleListManager__reloadContentRuleLists__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(*(a1 + 32) + 32);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __51__MEContentRuleListManager__reloadContentRuleLists__block_invoke_4;
    v15 = &unk_2798590B8;
    v16 = *(a1 + 40);
    v9 = v5;
    v17 = v9;
    [v8 performWhileLocked:&v12];
    [*(a1 + 32) _notifyObserversOfUpdatedContentRuleList:v9 oldContentRuleList:{*(a1 + 48), v12, v13, v14, v15}];

    v10 = v16;
  }

  else
  {
    if (v6)
    {
      v11 = +[MEContentRuleListManager log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke_2_cold_1(a1);
      }
    }

    v10 = +[MEContentRuleListManager log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke_2_cold_2(a1);
    }
  }
}

void __57__MEContentRuleListManager_initWithExtensionsController___block_invoke_2_cold_1(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __94__MEContentRuleListManager__compileAndAddContentRuleListForIdentifier_encodedContentRuleList___block_invoke_2_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8]);
  v4 = 138543362;
  v5 = v1;
  _os_log_error_impl(&dword_257F67000, v2, OS_LOG_TYPE_ERROR, "Rule list identifier:%{public}@ was not added to active the rule list", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_encodedContentRuleListForExtension:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end