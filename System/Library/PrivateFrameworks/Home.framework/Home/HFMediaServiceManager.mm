@interface HFMediaServiceManager
+ (id)sharedManager;
- (BOOL)_isReadRequestInFlightForHome:(id)home;
- (BOOL)isRefreshNeededForHome:(id)home;
- (HFMediaServiceManager)init;
- (id)_defaultMediaServiceForHome:(id)home;
- (id)_fetchDefaultMediaServiceForHome:(id)home;
- (id)_mediaServicesForHome:(id)home;
- (id)defaultMediaServiceForHome:(id)home;
- (id)fetchMediaServicesForHome:(id)home;
- (id)mediaServicesForHome:(id)home;
- (id)removeMediaService:(id)service forHome:(id)home;
- (id)updateDefaultMediaService:(id)service forHome:(id)home;
- (id)updateProperty:(id)property forHome:(id)home withOptions:(id)options;
- (void)_dispatchMessageToObserversWithBlock:(id)block;
- (void)addMediaServiceManagerObserver:(id)observer;
- (void)removeMediaServiceManagerObserver:(id)observer;
- (void)warmup;
@end

@implementation HFMediaServiceManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HFMediaServiceManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280E03DF0 != -1)
  {
    dispatch_once(&qword_280E03DF0, block);
  }

  v2 = _MergedGlobals_329;

  return v2;
}

void __38__HFMediaServiceManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_329;
  _MergedGlobals_329 = v1;
}

- (HFMediaServiceManager)init
{
  v14.receiver = self;
  v14.super_class = HFMediaServiceManager;
  v2 = [(HFMediaServiceManager *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    homeIdentifierToMediaServicesMapping = v2->_homeIdentifierToMediaServicesMapping;
    v2->_homeIdentifierToMediaServicesMapping = v3;

    v5 = objc_opt_new();
    homeIdentifierToDefaultServiceMapping = v2->_homeIdentifierToDefaultServiceMapping;
    v2->_homeIdentifierToDefaultServiceMapping = v5;

    v7 = objc_opt_new();
    homeIdentifierToReadRequestInFlightMapping = v2->_homeIdentifierToReadRequestInFlightMapping;
    v2->_homeIdentifierToReadRequestInFlightMapping = v7;

    v9 = objc_opt_new();
    homeIdentifierToRefreshNeededMapping = v2->_homeIdentifierToRefreshNeededMapping;
    v2->_homeIdentifierToRefreshNeededMapping = v9;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

- (void)warmup
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeFuture = [v3 homeFuture];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__HFMediaServiceManager_warmup__block_invoke;
  v6[3] = &unk_277E01608;
  v6[4] = self;
  v5 = [homeFuture addSuccessBlock:v6];
}

void __31__HFMediaServiceManager_warmup__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 hf_hasHomePods])
  {
    v3 = [*(a1 + 32) fetchMediaServicesForHome:v4];
  }
}

- (void)addMediaServiceManagerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFMediaServiceManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeMediaServiceManagerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFMediaServiceManager *)self observers];
  [observers removeObject:observerCopy];
}

- (id)defaultMediaServiceForHome:(id)home
{
  v13 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = [(HFMediaServiceManager *)self _defaultMediaServiceForHome:homeCopy];
  v6 = HFLogForCategory(0xCuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = homeCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Found cached default media service %@ for home %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)mediaServicesForHome:(id)home
{
  v13 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = [(HFMediaServiceManager *)self _mediaServicesForHome:homeCopy];
  v6 = HFLogForCategory(0xCuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = homeCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Found cached media services %@ for home %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchMediaServicesForHome:(id)home
{
  v36 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = HFLogForCategory(0xCuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v33 = v7;
    v34 = 2112;
    v35 = homeCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@ Fetching media services for home %@", buf, 0x16u);
  }

  if (homeCopy)
  {
    v8 = [(HFMediaServiceManager *)self _isReadRequestInFlightForHome:homeCopy];
    v9 = HFLogForCategory(0xCuLL);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138412290;
        v33 = v11;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "%@ Read request already in-flight. Returning cached results.", buf, 0xCu);
      }

      v12 = MEMORY[0x277D2C900];
      v13 = [(HFMediaServiceManager *)self _mediaServicesForHome:homeCopy];
      v14 = [v12 futureWithResult:v13];
    }

    else
    {
      if (v10)
      {
        v18 = NSStringFromSelector(a2);
        *buf = 138412546;
        v33 = v18;
        v34 = 2112;
        v35 = homeCopy;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "%@ Will fetch media services for home %@ from MediaServiceConfigurationClass", buf, 0x16u);
      }

      homeIdentifierToReadRequestInFlightMapping = [(HFMediaServiceManager *)self homeIdentifierToReadRequestInFlightMapping];
      uniqueIdentifier = [homeCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      [homeIdentifierToReadRequestInFlightMapping na_safeSetObject:MEMORY[0x277CBEC38] forKey:uUIDString];

      objc_initWeak(buf, self);
      v22 = MEMORY[0x277D2C900];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __51__HFMediaServiceManager_fetchMediaServicesForHome___block_invoke;
      v29[3] = &unk_277DF5B20;
      objc_copyWeak(v31, buf);
      v30 = homeCopy;
      v31[1] = a2;
      globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
      v24 = [v22 futureWithBlock:v29 scheduler:globalAsyncScheduler];
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v14 = [v24 reschedule:mainThreadScheduler];

      objc_destroyWeak(v31);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v15 = HFLogForCategory(0xCuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      *buf = 138412290;
      v33 = v28;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "%@ Cannot fetch media services without a home", buf, 0xCu);
    }

    v16 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v14 = [v16 futureWithError:v17];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v14;
}

void __51__HFMediaServiceManager_fetchMediaServicesForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [getMediaServiceConfigurationClass() sharedInstance];
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HFMediaServiceManager_fetchMediaServicesForHome___block_invoke_2;
  v10[3] = &unk_277E02968;
  objc_copyWeak(v13, (a1 + 40));
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v11 = v7;
  v13[1] = v8;
  v9 = v3;
  v12 = v9;
  [v5 getAvailableServices:v6 completion:v10];

  objc_destroyWeak(v13);
}

void __51__HFMediaServiceManager_fetchMediaServicesForHome___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = [WeakRetained homeIdentifierToReadRequestInFlightMapping];
    v10 = [*(a1 + 32) uniqueIdentifier];
    v11 = [v10 UUIDString];
    [v9 na_safeSetObject:MEMORY[0x277CBEC28] forKey:v11];

    v12 = HFLogForCategory(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v25 = v18;
      v26 = 2112;
      v27 = v6;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "%@ Failed to fetch media services with error %@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    v13 = [WeakRetained _fetchDefaultMediaServiceForHome:*(a1 + 32)];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__HFMediaServiceManager_fetchMediaServicesForHome___block_invoke_6;
    v19[3] = &unk_277E02940;
    v19[4] = v8;
    v20 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    v21 = v14;
    v23 = v15;
    v22 = v5;
    v16 = [v13 addCompletionBlock:v19];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __51__HFMediaServiceManager_fetchMediaServicesForHome___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [*(a1 + 32) homeIdentifierToReadRequestInFlightMapping];
  v6 = [*(a1 + 40) uniqueIdentifier];
  v7 = [v6 UUIDString];
  [v5 na_safeSetObject:MEMORY[0x277CBEC28] forKey:v7];

  if (v4)
  {
    [*(a1 + 48) finishWithError:v4];
  }

  else
  {
    v8 = [*(a1 + 32) homeIdentifierToRefreshNeededMapping];
    v9 = [*(a1 + 40) uniqueIdentifier];
    v10 = [v9 UUIDString];
    [v8 na_safeSetObject:MEMORY[0x277CBEC28] forKey:v10];

    v11 = HFLogForCategory(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(*(a1 + 64));
      v13 = *(a1 + 56);
      *buf = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Successfully fetched media services %@", buf, 0x16u);
    }

    v14 = [*(a1 + 32) homeIdentifierToMediaServicesMapping];
    v15 = *(a1 + 56);
    v16 = [*(a1 + 40) uniqueIdentifier];
    v17 = [v16 UUIDString];
    [v14 na_safeSetObject:v15 forKey:v17];

    v18 = *(a1 + 32);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51__HFMediaServiceManager_fetchMediaServicesForHome___block_invoke_7;
    v20[3] = &unk_277E02918;
    v21 = *(a1 + 56);
    [v18 _dispatchMessageToObserversWithBlock:v20];
    [*(a1 + 48) finishWithResult:*(a1 + 56)];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __51__HFMediaServiceManager_fetchMediaServicesForHome___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 mediaServicesDidUpdate:*(a1 + 32)];
  }
}

- (id)removeMediaService:(id)service forHome:(id)home
{
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  homeCopy = home;
  v8 = HFLogForCategory(0xCuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = serviceCopy;
    v25 = 2112;
    v26 = homeCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Removing media service %@ for home %@", buf, 0x16u);
  }

  v9 = MEMORY[0x277D2C900];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__HFMediaServiceManager_removeMediaService_forHome___block_invoke;
  v19[3] = &unk_277DFEAA8;
  v20 = serviceCopy;
  v21 = homeCopy;
  selfCopy = self;
  v10 = MEMORY[0x277D2C938];
  v11 = homeCopy;
  v12 = serviceCopy;
  globalAsyncScheduler = [v10 globalAsyncScheduler];
  v14 = [v9 futureWithBlock:v19 scheduler:globalAsyncScheduler];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v16 = [v14 reschedule:mainThreadScheduler];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __52__HFMediaServiceManager_removeMediaService_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [getMediaServiceConfigurationClass() sharedInstance];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HFMediaServiceManager_removeMediaService_forHome___block_invoke_2;
  v10[3] = &unk_277E02990;
  v11 = v5;
  v12 = v3;
  v9 = *(a1 + 40);
  v7 = v9.i64[0];
  v13 = vextq_s8(v9, v9, 8uLL);
  v8 = v3;
  [v4 removeServiceFromHome:v11 fromHome:v6 completion:v10];
}

void __52__HFMediaServiceManager_removeMediaService_forHome___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to remove media service %@ with error %@", buf, 0x16u);
    }

    [a1[5] finishWithError:v4];
  }

  else
  {
    v6 = [a1[6] homeIdentifierToRefreshNeededMapping];
    v7 = [a1[7] uniqueIdentifier];
    v8 = [v7 UUIDString];
    [v6 na_safeSetObject:MEMORY[0x277CBEC38] forKey:v8];

    v9 = HFLogForCategory(0xCuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully removed media service %@", buf, 0xCu);
    }

    v11 = a1[6];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__HFMediaServiceManager_removeMediaService_forHome___block_invoke_15;
    v14[3] = &unk_277E02918;
    v15 = a1[4];
    [v11 _dispatchMessageToObserversWithBlock:v14];
    [a1[5] finishWithNoResult];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __52__HFMediaServiceManager_removeMediaService_forHome___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 mediaServiceRemoved:*(a1 + 32)];
  }
}

- (id)updateDefaultMediaService:(id)service forHome:(id)home
{
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  homeCopy = home;
  v8 = HFLogForCategory(0xCuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = serviceCopy;
    v25 = 2112;
    v26 = homeCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Updating default media service to %@ for home %@", buf, 0x16u);
  }

  v9 = MEMORY[0x277D2C900];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__HFMediaServiceManager_updateDefaultMediaService_forHome___block_invoke;
  v19[3] = &unk_277DFEAA8;
  v20 = serviceCopy;
  v21 = homeCopy;
  selfCopy = self;
  v10 = MEMORY[0x277D2C938];
  v11 = homeCopy;
  v12 = serviceCopy;
  globalAsyncScheduler = [v10 globalAsyncScheduler];
  v14 = [v9 futureWithBlock:v19 scheduler:globalAsyncScheduler];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v16 = [v14 reschedule:mainThreadScheduler];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __59__HFMediaServiceManager_updateDefaultMediaService_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [getMediaServiceConfigurationClass() sharedInstance];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HFMediaServiceManager_updateDefaultMediaService_forHome___block_invoke_2;
  v10[3] = &unk_277E02990;
  v11 = v5;
  v12 = v3;
  v9 = *(a1 + 40);
  v7 = v9.i64[0];
  v13 = vextq_s8(v9, v9, 8uLL);
  v8 = v3;
  [v4 updateDefaultMediaService:v11 forHome:v6 completion:v10];
}

void __59__HFMediaServiceManager_updateDefaultMediaService_forHome___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to update default media service to %@ with error %@", buf, 0x16u);
    }

    [a1[5] finishWithError:v4];
  }

  else
  {
    v6 = [a1[6] homeIdentifierToRefreshNeededMapping];
    v7 = [a1[7] uniqueIdentifier];
    v8 = [v7 UUIDString];
    [v6 na_safeSetObject:MEMORY[0x277CBEC38] forKey:v8];

    v9 = HFLogForCategory(0xCuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully updated default media service to %@", buf, 0xCu);
    }

    v11 = a1[6];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__HFMediaServiceManager_updateDefaultMediaService_forHome___block_invoke_19;
    v14[3] = &unk_277E02918;
    v15 = a1[4];
    [v11 _dispatchMessageToObserversWithBlock:v14];
    [a1[5] finishWithNoResult];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __59__HFMediaServiceManager_updateDefaultMediaService_forHome___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 defaultMediaServiceDidUpdate:*(a1 + 32)];
  }
}

- (id)updateProperty:(id)property forHome:(id)home withOptions:(id)options
{
  v34 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  homeCopy = home;
  optionsCopy = options;
  v11 = HFLogForCategory(0xCuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = optionsCopy;
    v30 = 2112;
    v31 = propertyCopy;
    v32 = 2112;
    v33 = homeCopy;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Updating properties %@ for media service %@ for home %@", buf, 0x20u);
  }

  v12 = MEMORY[0x277D2C900];
  v23 = MEMORY[0x277D85DD0];
  v24 = propertyCopy;
  v25 = homeCopy;
  v26 = optionsCopy;
  selfCopy = self;
  v13 = MEMORY[0x277D2C938];
  v14 = optionsCopy;
  v15 = homeCopy;
  v16 = propertyCopy;
  globalAsyncScheduler = [v13 globalAsyncScheduler];
  v18 = [v12 futureWithBlock:&v23 scheduler:globalAsyncScheduler];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v20 = [v18 reschedule:mainThreadScheduler];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __60__HFMediaServiceManager_updateProperty_forHome_withOptions___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = [getMediaServiceConfigurationClass() sharedInstance];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HFMediaServiceManager_updateProperty_forHome_withOptions___block_invoke_2;
  v9[3] = &unk_277E029B8;
  v10 = v7;
  v11 = a1[4];
  v12 = v3;
  v13 = a1[7];
  v14 = a1[5];
  v8 = v3;
  [v4 updateProperty:v5 forHome:v6 withOptions:v10 completion:v9];
}

void __60__HFMediaServiceManager_updateProperty_forHome_withOptions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      *buf = 138412802;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v4;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to update properties %@ for media service %@ with error %@", buf, 0x20u);
    }

    [*(a1 + 48) finishWithError:v4];
  }

  else
  {
    v6 = [*(a1 + 56) homeIdentifierToRefreshNeededMapping];
    v7 = [*(a1 + 64) uniqueIdentifier];
    v8 = [v7 UUIDString];
    [v6 na_safeSetObject:MEMORY[0x277CBEC38] forKey:v8];

    v9 = HFLogForCategory(0xCuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully updated media service %@", buf, 0xCu);
    }

    v11 = *(a1 + 56);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__HFMediaServiceManager_updateProperty_forHome_withOptions___block_invoke_22;
    v15[3] = &unk_277E02918;
    v16 = *(a1 + 40);
    [v11 _dispatchMessageToObserversWithBlock:v15];
    [*(a1 + 48) finishWithNoResult];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __60__HFMediaServiceManager_updateProperty_forHome_withOptions___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 mediaServiceDidUpdate:*(a1 + 32)];
  }
}

- (id)_fetchDefaultMediaServiceForHome:(id)home
{
  v17 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = HFLogForCategory(0xCuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = homeCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Fetching default media service for home %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = MEMORY[0x277D2C900];
  v12 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v14, buf);
  v7 = homeCopy;
  v13 = v7;
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v9 = [v6 futureWithBlock:&v12 scheduler:globalAsyncScheduler];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __58__HFMediaServiceManager__fetchDefaultMediaServiceForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [getMediaServiceConfigurationClass() sharedInstance];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HFMediaServiceManager__fetchDefaultMediaServiceForHome___block_invoke_2;
  v8[3] = &unk_277E029E0;
  objc_copyWeak(&v11, (a1 + 40));
  v7 = v3;
  v9 = v7;
  v10 = *(a1 + 32);
  [v5 getDefaultMediaService:v6 completion:v8];

  objc_destroyWeak(&v11);
}

void __58__HFMediaServiceManager__fetchDefaultMediaServiceForHome___block_invoke_2(id *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = HFLogForCategory(0xCuLL);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch default media service with error %@", &v16, 0xCu);
    }

    [a1[4] finishWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully fetched default media service %@", &v16, 0xCu);
    }

    v10 = [WeakRetained homeIdentifierToDefaultServiceMapping];
    v11 = [a1[5] uniqueIdentifier];
    v12 = [v11 UUIDString];
    [v10 na_safeSetObject:v5 forKey:v12];

    v13 = a1[4];
    v14 = [WeakRetained _defaultMediaServiceForHome:a1[5]];
    [v13 finishWithResult:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_mediaServicesForHome:(id)home
{
  homeCopy = home;
  homeIdentifierToMediaServicesMapping = [(HFMediaServiceManager *)self homeIdentifierToMediaServicesMapping];
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  uUIDString = [uniqueIdentifier UUIDString];
  v8 = [homeIdentifierToMediaServicesMapping objectForKey:uUIDString];

  return v8;
}

- (id)_defaultMediaServiceForHome:(id)home
{
  homeCopy = home;
  homeIdentifierToDefaultServiceMapping = [(HFMediaServiceManager *)self homeIdentifierToDefaultServiceMapping];
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  uUIDString = [uniqueIdentifier UUIDString];
  v8 = [homeIdentifierToDefaultServiceMapping objectForKey:uUIDString];

  return v8;
}

- (BOOL)_isReadRequestInFlightForHome:(id)home
{
  homeCopy = home;
  homeIdentifierToReadRequestInFlightMapping = [(HFMediaServiceManager *)self homeIdentifierToReadRequestInFlightMapping];
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  uUIDString = [uniqueIdentifier UUIDString];
  v8 = [homeIdentifierToReadRequestInFlightMapping na_objectForKey:uUIDString withDefaultValue:&__block_literal_global_236];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isRefreshNeededForHome:(id)home
{
  homeCopy = home;
  homeIdentifierToRefreshNeededMapping = [(HFMediaServiceManager *)self homeIdentifierToRefreshNeededMapping];
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  uUIDString = [uniqueIdentifier UUIDString];
  v8 = [homeIdentifierToRefreshNeededMapping na_objectForKey:uUIDString withDefaultValue:&__block_literal_global_27_16];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (void)_dispatchMessageToObserversWithBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  observers = [(HFMediaServiceManager *)self observers];
  allObjects = [observers allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = MEMORY[0x277D85CD0];
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __62__HFMediaServiceManager__dispatchMessageToObserversWithBlock___block_invoke;
        v15[3] = &unk_277DF2AD8;
        v13 = blockCopy;
        v15[4] = v12;
        v16 = v13;
        dispatch_async(v10, v15);

        ++v11;
      }

      while (v8 != v11);
      v8 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end