@interface NTKPigmentPreferenceManager
+ (BOOL)_shouldSaveAutoSelectedPigments:(id)pigments forCollectionName:(id)name userDefault:(id)default;
- (BOOL)_threadunsafe_isOptionVisible:(id)visible;
- (BOOL)isOptionVisible:(id)visible;
- (NSSet)autoSelectedPigments;
- (NSSet)selectedPigments;
- (NTKPigmentPreferenceManager)initWithDomain:(id)domain;
- (NTKPigmentPreferenceManagerDelegate)delegate;
- (void)_loadAutoSelectedPigments;
- (void)_loadVisibleOptions;
- (void)_threadunsafe_appendAutoSelectPigments:(id)pigments;
- (void)_threadunsafe_removeAllAutoSelectPigments;
- (void)_threadunsafe_removeAutoSelectionWithOptionName:(id)name;
- (void)_threadunsafe_setOptionName:(id)name visible:(BOOL)visible manual:(BOOL)manual;
- (void)_threadunsafe_syncAllContent;
- (void)_threadunsafe_syncAutoSelectedPigments:(id)pigments;
- (void)_threadunsafe_syncVisibleOptionsByCollection:(id)collection;
- (void)dealloc;
- (void)handlePairedDeviceChanged;
- (void)resetContent;
- (void)setAutoSelectedPigments:(id)pigments;
- (void)setAutoSelectedPigments:(id)pigments forCollectionName:(id)name;
- (void)setOption:(id)option visible:(BOOL)visible;
- (void)setSelectedPigments:(id)pigments;
@end

@implementation NTKPigmentPreferenceManager

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwlock);
  v3.receiver = self;
  v3.super_class = NTKPigmentPreferenceManager;
  [(NTKPigmentPreferenceManager *)&v3 dealloc];
}

- (NTKPigmentPreferenceManager)initWithDomain:(id)domain
{
  v35 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v32.receiver = self;
  v32.super_class = NTKPigmentPreferenceManager;
  v6 = [(NTKPigmentPreferenceManager *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, domain);
    v8 = dispatch_queue_create("com.apple.nanotimekit.NTKPigmentPreferenceManager", 0);
    privateQueue = v7->_privateQueue;
    v7->_privateQueue = v8;

    pthread_rwlock_init(&v7->_rwlock, 0);
    v10 = objc_alloc(MEMORY[0x277CBEBD0]);
    domain = [(NTKPigmentPreferenceManager *)v7 domain];
    v12 = [v10 initWithSuiteName:domain];
    userDefault = v7->_userDefault;
    v7->_userDefault = v12;

    v14 = objc_alloc(MEMORY[0x277D2BA58]);
    domain2 = [(NTKPigmentPreferenceManager *)v7 domain];
    v16 = [v14 initWithDomain:domain2];
    npsDomainAccessor = v7->_npsDomainAccessor;
    v7->_npsDomainAccessor = v16;

    [(NTKPigmentPreferenceManager *)v7 _loadVisibleOptions];
    [(NTKPigmentPreferenceManager *)v7 _loadAutoSelectedPigments];
    v18 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      selectedPigments = v7->_selectedPigments;
      *buf = 138543362;
      v34 = selectedPigments;
      _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_INFO, "#pref-sync Initializing with visible options: %{public}@", buf, 0xCu);
    }

    v20 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      autoSelectedPigments = v7->_autoSelectedPigments;
      *buf = 138543362;
      v34 = autoSelectedPigments;
      _os_log_impl(&dword_22D9C5000, v20, OS_LOG_TYPE_INFO, "#pref-sync Initializing with auto-selected pigments: %{public}@", buf, 0xCu);
    }

    if ((CLKIsClockFaceApp() & 1) != 0 || CLKIsBridge())
    {
      objc_initWeak(buf, v7);
      v22 = +[NTKDarwinNotificationCenter defaultCenter];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __46__NTKPigmentPreferenceManager_initWithDomain___block_invoke;
      v30[3] = &unk_27877DC58;
      objc_copyWeak(&v31, buf);
      [v22 addObserver:v7 notificationName:@"com.apple.NanoTimeKit.NPS.NTKSelectedPigmentListDidChangeNotification" usingBlock:v30];

      v23 = +[NTKDarwinNotificationCenter defaultCenter];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __46__NTKPigmentPreferenceManager_initWithDomain___block_invoke_27;
      v28[3] = &unk_27877DC58;
      objc_copyWeak(&v29, buf);
      [v23 addObserver:v7 notificationName:@"com.apple.NanoTimeKit.NPS.NTKAutoSelectedPigmentListDidChangeNotification" usingBlock:v28];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }

    if (CLKIsClockFaceApp())
    {
      objc_initWeak(buf, v7);
      v24 = +[NTKDarwinNotificationCenter defaultCenter];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __46__NTKPigmentPreferenceManager_initWithDomain___block_invoke_29;
      v26[3] = &unk_27877DC58;
      objc_copyWeak(&v27, buf);
      [v24 addObserver:v7 notificationName:*MEMORY[0x277D2BA68] usingBlock:v26];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }

  return v7;
}

void __46__NTKPigmentPreferenceManager_initWithDomain___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = @"com.apple.NanoTimeKit.NPS.NTKSelectedPigmentListDidChangeNotification";
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "#pref-sync received darwin notification %{public}@", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v3 = [WeakRetained privateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__NTKPigmentPreferenceManager_initWithDomain___block_invoke_25;
    block[3] = &unk_27877DB10;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void __46__NTKPigmentPreferenceManager_initWithDomain___block_invoke_25(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _loadVisibleOptions];
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) selectedPigments];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "#pref-sync Visible options after handling darwin notification: %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 pigmentPreferenceManagerDidUpdateSelectedColors:*(a1 + 32)];
}

void __46__NTKPigmentPreferenceManager_initWithDomain___block_invoke_27(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = @"com.apple.NanoTimeKit.NPS.NTKAutoSelectedPigmentListDidChangeNotification";
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "#pref-sync received darwin notification %{public}@", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v3 = [WeakRetained privateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__NTKPigmentPreferenceManager_initWithDomain___block_invoke_28;
    block[3] = &unk_27877DB10;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void __46__NTKPigmentPreferenceManager_initWithDomain___block_invoke_28(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _loadAutoSelectedPigments];
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) autoSelectedPigments];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "#pref-sync Auto-selected pigments after handling darwin notification: %{public}@", &v4, 0xCu);
  }
}

void __46__NTKPigmentPreferenceManager_initWithDomain___block_invoke_29(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 0;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "#pref-sync Received darwin notification initial sync completed. Forcing sync.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    pthread_rwlock_rdlock((WeakRetained + 8));
    [v4 _threadunsafe_syncAllContent];
    pthread_rwlock_unlock((v4 + 8));
  }
}

- (NSSet)selectedPigments
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(NSSet *)self->_selectedPigments copy];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (void)setSelectedPigments:(id)pigments
{
  pigmentsCopy = pigments;
  pthread_rwlock_wrlock(&self->_rwlock);
  v5 = [pigmentsCopy copy];

  selectedPigments = self->_selectedPigments;
  self->_selectedPigments = v5;

  pthread_rwlock_unlock(&self->_rwlock);
}

- (NSSet)autoSelectedPigments
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(NSSet *)self->_autoSelectedPigments copy];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (void)setAutoSelectedPigments:(id)pigments
{
  pigmentsCopy = pigments;
  pthread_rwlock_wrlock(&self->_rwlock);
  v5 = [pigmentsCopy copy];

  autoSelectedPigments = self->_autoSelectedPigments;
  self->_autoSelectedPigments = v5;

  pthread_rwlock_unlock(&self->_rwlock);
}

- (BOOL)isOptionVisible:(id)visible
{
  visibleCopy = visible;
  if ([visibleCopy isAddable])
  {
    pthread_rwlock_rdlock(&self->_rwlock);
    v5 = [(NTKPigmentPreferenceManager *)self _threadunsafe_isOptionVisible:visibleCopy];
    pthread_rwlock_unlock(&self->_rwlock);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setOption:(id)option visible:(BOOL)visible
{
  visibleCopy = visible;
  optionCopy = option;
  pthread_rwlock_wrlock(&self->_rwlock);
  fullname = [optionCopy fullname];
  [(NTKPigmentPreferenceManager *)self _threadunsafe_setOptionName:fullname visible:visibleCopy];

  [(NTKPigmentPreferenceManager *)self _threadunsafe_syncAllContent];
  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)setAutoSelectedPigments:(id)pigments forCollectionName:(id)name
{
  v43 = *MEMORY[0x277D85DE8];
  pigmentsCopy = pigments;
  nameCopy = name;
  pthread_rwlock_wrlock(&self->_rwlock);
  v7 = objc_opt_class();
  userDefault = [(NTKPigmentPreferenceManager *)self userDefault];
  LODWORD(v7) = [v7 _shouldSaveAutoSelectedPigments:pigmentsCopy forCollectionName:nameCopy userDefault:userDefault];

  if (v7)
  {
    v9 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = nameCopy;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "#pref-sync Starting auto-selection for domain: %{public}@", buf, 0xCu);
    }

    userDefault2 = [(NTKPigmentPreferenceManager *)self userDefault];
    v29 = [userDefault2 objectForKey:@"DefaultSelectedPigmentsByDomain"];

    v11 = MEMORY[0x277CBEB98];
    v12 = [v29 objectForKeyedSubscript:nameCopy];
    v28 = [v11 setWithArray:v12];

    if ([v28 count])
    {
      v13 = [(NSSet *)self->_autoSelectedPigments copy];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __73__NTKPigmentPreferenceManager_setAutoSelectedPigments_forCollectionName___block_invoke;
      v35[3] = &unk_27877F498;
      v36 = v28;
      selfCopy = self;
      [v13 enumerateObjectsUsingBlock:v35];
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = pigmentsCopy;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v17)
    {
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          fullname = [v20 fullname];
          [v15 addObject:fullname];

          if (![(NTKPigmentPreferenceManager *)self _threadunsafe_isOptionVisible:v20])
          {
            [v14 addObject:v20];
          }

          fullname2 = [v20 fullname];
          [(NTKPigmentPreferenceManager *)self _threadunsafe_setOptionName:fullname2 visible:1 manual:0];
        }

        v17 = [v16 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v17);
    }

    dictionary = [v29 mutableCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    [dictionary setObject:v15 forKeyedSubscript:nameCopy];
    userDefault3 = [(NTKPigmentPreferenceManager *)self userDefault];
    [userDefault3 setObject:dictionary forKey:@"DefaultSelectedPigmentsByDomain"];

    userDefault4 = [(NTKPigmentPreferenceManager *)self userDefault];
    [userDefault4 synchronize];

    [(NTKPigmentPreferenceManager *)self _threadunsafe_appendAutoSelectPigments:v14];
    [(NTKPigmentPreferenceManager *)self _threadunsafe_syncAllContent];
    v26 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      selectedPigments = self->_selectedPigments;
      *buf = 138543618;
      v39 = nameCopy;
      v40 = 2114;
      v41 = selectedPigments;
      _os_log_impl(&dword_22D9C5000, v26, OS_LOG_TYPE_DEFAULT, "#pref-sync Finished auto-selection for domain: %{public}@ - selections: %{public}@", buf, 0x16u);
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

void __73__NTKPigmentPreferenceManager_setAutoSelectedPigments_forCollectionName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) _threadunsafe_setOptionName:v3 visible:0 manual:1];
  }
}

- (void)_threadunsafe_syncAllContent
{
  if ((NPSHasCompletedInitialSync() & 1) == 0)
  {
    v3 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "#pref-sync Trying to sync preferences, but NPS has not completed initial sync yet", v6, 2u);
    }
  }

  v4 = [(NSSet *)self->_autoSelectedPigments copy];
  [(NTKPigmentPreferenceManager *)self _threadunsafe_syncAutoSelectedPigments:v4];

  v5 = [(NSSet *)self->_selectedPigments copy];
  [(NTKPigmentPreferenceManager *)self _threadunsafe_syncVisibleOptionsByCollection:v5];
}

- (void)resetContent
{
  obj = [MEMORY[0x277CBEB98] set];
  pthread_rwlock_wrlock(&self->_rwlock);
  [(NTKPigmentPreferenceManager *)self _threadunsafe_removeAllAutoSelectPigments];
  objc_storeStrong(&self->_selectedPigments, obj);
  pthread_rwlock_unlock(&self->_rwlock);
  [(NTKPigmentPreferenceManager *)self _threadunsafe_syncVisibleOptionsByCollection:obj];
}

- (void)handlePairedDeviceChanged
{
  v3 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "#pref-sync Recreating domain accessor because paired device changed", v8, 2u);
  }

  pthread_rwlock_wrlock(&self->_rwlock);
  v4 = objc_alloc(MEMORY[0x277D2BA58]);
  domain = [(NTKPigmentPreferenceManager *)self domain];
  v6 = [v4 initWithDomain:domain];
  npsDomainAccessor = self->_npsDomainAccessor;
  self->_npsDomainAccessor = v6;

  pthread_rwlock_unlock(&self->_rwlock);
}

- (BOOL)_threadunsafe_isOptionVisible:(id)visible
{
  visibleCopy = visible;
  if ([visibleCopy isAddable])
  {
    selectedPigments = self->_selectedPigments;
    fullname = [visibleCopy fullname];
    v7 = [(NSSet *)selectedPigments containsObject:fullname];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_threadunsafe_setOptionName:(id)name visible:(BOOL)visible manual:(BOOL)manual
{
  manualCopy = manual;
  visibleCopy = visible;
  nameCopy = name;
  v8 = [(NSSet *)self->_selectedPigments mutableCopy];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB58] set];
  }

  if (visibleCopy)
  {
    [v8 addObject:nameCopy];
  }

  else
  {
    [v8 removeObject:nameCopy];
  }

  v9 = [v8 copy];
  selectedPigments = self->_selectedPigments;
  self->_selectedPigments = v9;

  if (manualCopy)
  {
    [(NTKPigmentPreferenceManager *)self _threadunsafe_removeAutoSelectionWithOptionName:nameCopy];
  }
}

+ (BOOL)_shouldSaveAutoSelectedPigments:(id)pigments forCollectionName:(id)name userDefault:(id)default
{
  v31 = *MEMORY[0x277D85DE8];
  pigmentsCopy = pigments;
  nameCopy = name;
  defaultCopy = default;
  v10 = defaultCopy;
  v11 = 0;
  if (nameCopy && defaultCopy)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = pigmentsCopy;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          identifier = [*(*(&v26 + 1) + 8 * i) identifier];
          [v12 appendString:identifier];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
    v20 = [v10 objectForKey:@"AutoSelectionIdentifiersByDomain"];
    v21 = v20;
    if (v20 && ([v20 objectForKeyedSubscript:nameCopy], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToNumber:", v19), v22, (v23 & 1) != 0))
    {
      v11 = 0;
    }

    else
    {
      dictionary = [v21 mutableCopy];
      if (!dictionary)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      [dictionary setObject:v19 forKeyedSubscript:nameCopy];
      [v10 setObject:dictionary forKey:@"AutoSelectionIdentifiersByDomain"];

      v11 = 1;
    }
  }

  return v11;
}

- (void)_threadunsafe_removeAutoSelectionWithOptionName:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([(NSSet *)self->_autoSelectedPigments containsObject:nameCopy])
  {
    v5 = [(NSSet *)self->_autoSelectedPigments mutableCopy];
    [v5 removeObject:nameCopy];
    v6 = [v5 copy];
    autoSelectedPigments = self->_autoSelectedPigments;
    self->_autoSelectedPigments = v6;

    v8 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = nameCopy;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "#pref-sync Auto-selected pigment removed: %{public}@", &v9, 0xCu);
    }
  }
}

- (void)_threadunsafe_appendAutoSelectPigments:(id)pigments
{
  v22 = *MEMORY[0x277D85DE8];
  pigmentsCopy = pigments;
  if ([pigmentsCopy count])
  {
    v5 = [(NSSet *)self->_autoSelectedPigments mutableCopy];
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEB58] set];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = pigmentsCopy;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          fullname = [*(*(&v15 + 1) + 8 * v10) fullname];
          [v5 addObject:fullname];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v6;
      _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "#pref-sync Auto-selected pigments added: %{public}@ Synchronizing.", buf, 0xCu);
    }

    v13 = [v5 copy];
    autoSelectedPigments = self->_autoSelectedPigments;
    self->_autoSelectedPigments = v13;
  }
}

- (void)_threadunsafe_removeAllAutoSelectPigments
{
  v3 = [MEMORY[0x277CBEB98] set];
  autoSelectedPigments = self->_autoSelectedPigments;
  self->_autoSelectedPigments = v3;
  v5 = v3;

  v6 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "#pref-sync Removed all auto-selected pigments.", v7, 2u);
  }

  [(NTKPigmentPreferenceManager *)self _threadunsafe_syncAutoSelectedPigments:v5];
}

- (void)_threadunsafe_syncAutoSelectedPigments:(id)pigments
{
  pigmentsCopy = pigments;
  privateQueue = [(NTKPigmentPreferenceManager *)self privateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NTKPigmentPreferenceManager__threadunsafe_syncAutoSelectedPigments___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = pigmentsCopy;
  v6 = pigmentsCopy;
  dispatch_async(privateQueue, v7);
}

void __70__NTKPigmentPreferenceManager__threadunsafe_syncAutoSelectedPigments___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) npsDomainAccessor];
  v3 = [*(a1 + 40) allObjects];
  v4 = [v3 copy];
  [v2 setObject:v4 forKey:@"AutoSelectedPigmentList"];

  v5 = [*(a1 + 32) npsDomainAccessor];
  v6 = [v5 synchronize];

  v7 = objc_opt_new();
  v8 = [*(a1 + 32) npsDomainAccessor];
  v9 = [v8 domain];
  v10 = MEMORY[0x277CBEB98];
  v17[0] = @"AutoSelectedPigmentList";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12 = [v10 setWithArray:v11];
  [v7 synchronizeNanoDomain:v9 keys:v12 cloudEnabled:1];

  v13 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 40);
    v15 = 138543362;
    v16 = v14;
    _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_INFO, "#pref-sync Synchronizing auto-selected pigments: %{public}@", &v15, 0xCu);
  }
}

- (void)_threadunsafe_syncVisibleOptionsByCollection:(id)collection
{
  collectionCopy = collection;
  privateQueue = [(NTKPigmentPreferenceManager *)self privateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__NTKPigmentPreferenceManager__threadunsafe_syncVisibleOptionsByCollection___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = collectionCopy;
  v6 = collectionCopy;
  dispatch_async(privateQueue, v7);
}

void __76__NTKPigmentPreferenceManager__threadunsafe_syncVisibleOptionsByCollection___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) npsDomainAccessor];
  v3 = [*(a1 + 40) allObjects];
  v4 = [v3 copy];
  [v2 setObject:v4 forKey:@"SelectedPigmentList"];

  v5 = [*(a1 + 32) npsDomainAccessor];
  v6 = [v5 synchronize];

  v7 = objc_opt_new();
  v8 = [*(a1 + 32) npsDomainAccessor];
  v9 = [v8 domain];
  v10 = MEMORY[0x277CBEB98];
  v18[0] = @"SelectedPigmentList";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v12 = [v10 setWithArray:v11];
  [v7 synchronizeNanoDomain:v9 keys:v12 cloudEnabled:1];

  v13 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "#pref-sync Pigment preferences changed. Synchronizing.", &v16, 2u);
  }

  v14 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 40);
    v16 = 138543362;
    v17 = v15;
    _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_INFO, "#pref-sync Visible options: %{public}@", &v16, 0xCu);
  }
}

- (void)_loadVisibleOptions
{
  pthread_rwlock_wrlock(&self->_rwlock);
  synchronize = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
  v7 = [(NPSDomainAccessor *)self->_npsDomainAccessor objectForKey:@"SelectedPigmentList"];
  pthread_rwlock_unlock(&self->_rwlock);
  v4 = v7;
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4 = v7, (isKindOfClass & 1) == 0))
  {

    v4 = MEMORY[0x277CBEBF8];
  }

  v8 = v4;
  v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
  [(NTKPigmentPreferenceManager *)self setSelectedPigments:v6];
}

- (void)_loadAutoSelectedPigments
{
  pthread_rwlock_wrlock(&self->_rwlock);
  synchronize = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
  v7 = [(NPSDomainAccessor *)self->_npsDomainAccessor objectForKey:@"AutoSelectedPigmentList"];
  pthread_rwlock_unlock(&self->_rwlock);
  v4 = v7;
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4 = v7, (isKindOfClass & 1) == 0))
  {

    v4 = MEMORY[0x277CBEBF8];
  }

  v8 = v4;
  v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
  [(NTKPigmentPreferenceManager *)self setAutoSelectedPigments:v6];
}

- (NTKPigmentPreferenceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAutoSelectedPigments:(uint64_t)a1 forCollectionName:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "#pref-sync setAutoSelectedPigments triggered exception: %{public}@", &v2, 0xCu);
}

@end