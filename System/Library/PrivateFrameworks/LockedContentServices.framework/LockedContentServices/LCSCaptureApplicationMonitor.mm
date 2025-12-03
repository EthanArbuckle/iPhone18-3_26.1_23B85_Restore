@interface LCSCaptureApplicationMonitor
+ (BOOL)_hasCameraUsageDescriptionForBundleIdentifier:(id)identifier;
+ (BOOL)_hasCaptureAppIntentForExtension:(id)extension;
+ (id)_bundleRecordForBundleIdentifier:(id)identifier;
+ (id)sharedInstance;
- (BOOL)isCaptureApplication:(id)application;
- (LCSCaptureApplicationMonitor)init;
- (NSDictionary)knownCameraCaptureApplicationsByBundleIdentifier;
- (id)_filterCaptureApplications:(id)applications launchType:(unint64_t)type;
- (id)_lock_captureApplicationsFromKnownExtensions:(id)extensions currentCaptureApplications:(id)applications usingCachedLaunchOptions:(BOOL)options;
- (unint64_t)_lock_supportedLaunchTypesForExtension:(id)extension;
- (void)_beginObservingMetadataChanges;
- (void)_endObservingMetadataChanges;
- (void)_lock_updateKnownCaptureApplications:(id)applications;
- (void)_processMetadataChangeForBundleIdentifiers:(id)identifiers;
- (void)_queue_knownCameraCaptureApplicationsByBundleIdentifierWithCompletionHandler:(id)handler;
- (void)_reevaluateCaptureApplicationRequirements;
- (void)_updateCachedKnownCaptureApplications:(id)applications;
- (void)_updateTCCMonitorForBundleIdentifiers:(id)identifiers;
- (void)addObserver:(id)observer;
- (void)captureExtensionProvider:(id)provider didUpdateKnownExtensions:(id)extensions;
- (void)dealloc;
- (void)invalidate;
- (void)knownCameraCaptureApplicationsByBundleIdentifierWithCompletionHandler:(id)handler;
- (void)removeObserver:(id)observer;
- (void)tccMonitor:(id)monitor didUpdateCameraTCCStatuses:(id)statuses;
@end

@implementation LCSCaptureApplicationMonitor

- (NSDictionary)knownCameraCaptureApplicationsByBundleIdentifier
{
  os_unfair_lock_lock(&self->_cache_lock);
  v3 = [(NSDictionary *)self->_lock_cached_knownCaptureApplicationsByBundleIdentifier bs_filter:&__block_literal_global_30];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_cache_lock);

  return v4;
}

uint64_t __80__LCSCaptureApplicationMonitor_knownCameraCaptureApplicationsByBundleIdentifier__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 attributes];
  v4 = [v3 supportsLaunchType:0];

  return v4;
}

+ (BOOL)_hasCaptureAppIntentForExtension:(id)extension
{
  v20 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  cameraCaptureProtocol = [MEMORY[0x277D23938] cameraCaptureProtocol];
  v5 = [extensionCopy hasImplementedAppIntentProtocol:cameraCaptureProtocol bundleTarget:0];
  v6 = [extensionCopy hasImplementedAppIntentProtocol:cameraCaptureProtocol bundleTarget:1];
  v7 = LCSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    containerBundleIdentifier = [extensionCopy containerBundleIdentifier];
    typeName = [cameraCaptureProtocol typeName];
    v12 = 138413058;
    v13 = containerBundleIdentifier;
    v14 = 2112;
    v15 = typeName;
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_256175000, v7, OS_LOG_TYPE_DEFAULT, "Capture Application (%@) implements %@: application %{BOOL}u, extension %{BOOL}u", &v12, 0x22u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5 & v6;
}

+ (BOOL)_hasCameraUsageDescriptionForBundleIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = [objc_opt_class() _bundleRecordForBundleIdentifier:identifierCopy];
  v5 = v4;
  if (v4)
  {
    infoDictionary = [v4 infoDictionary];
    v7 = [infoDictionary objectForKey:@"NSCameraUsageDescription" ofClass:objc_opt_class()];
    v8 = LCSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_256175000, v8, OS_LOG_TYPE_DEFAULT, "NSCameraUsageDescription for %@", &v12, 0xCu);
    }

    if (v7)
    {
      v9 = [v7 isEqualToString:&stru_286834A10] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    infoDictionary = LCSLogCommon();
    if (os_log_type_enabled(infoDictionary, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = identifierCopy;
      _os_log_impl(&dword_256175000, infoDictionary, OS_LOG_TYPE_DEFAULT, "No NSCameraUsageDescription for %@", &v12, 0xCu);
    }

    LOBYTE(v9) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)_bundleRecordForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0;
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = LCSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(LCSCaptureApplicationMonitor *)identifierCopy _bundleRecordForBundleIdentifier:v5, v6];
    }
  }

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[LCSCaptureApplicationMonitor sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __46__LCSCaptureApplicationMonitor_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(LCSCaptureApplicationMonitor);

  return MEMORY[0x2821F96F8]();
}

- (LCSCaptureApplicationMonitor)init
{
  v15.receiver = self;
  v15.super_class = LCSCaptureApplicationMonitor;
  v2 = [(LCSCaptureApplicationMonitor *)&v15 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_lock._os_unfair_lock_opaque = 0;
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    queue = v3->_queue;
    v3->_queue = SerialWithQoS;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    queue_observers = v3->_queue_observers;
    v3->_queue_observers = weakObjectsHashTable;

    v8 = [[LCSExtensionMonitor alloc] initWithExtensionPointIdentifier:@"com.apple.securecapture"];
    queue_extensionMonitor = v3->_queue_extensionMonitor;
    v3->_queue_extensionMonitor = v8;

    [(LCSExtensionProvider *)v3->_queue_extensionMonitor addObserver:v3];
    [(LCSCaptureApplicationMonitor *)v3 _beginObservingMetadataChanges];
    objc_initWeak(&location, v3);
    v10 = objc_alloc_init(LCSFirstUnlockManager);
    if (![(LCSFirstUnlockManager *)v10 hasUnlockedSinceBoot])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __36__LCSCaptureApplicationMonitor_init__block_invoke;
      v12[3] = &unk_279824CE0;
      objc_copyWeak(&v13, &location);
      [(LCSFirstUnlockManager *)v10 setPostFirstUnlockHandler:v12];
      objc_storeStrong(&v3->_firstUnlockManager, v10);
      objc_destroyWeak(&v13);
    }

    objc_destroyWeak(&location);
  }

  return v3;
}

void __36__LCSCaptureApplicationMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reevaluateCaptureApplicationRequirements];
    v2 = v3[7];
    v3[7] = 0;

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  [(LCSCaptureApplicationMonitor *)self invalidate];
  v3.receiver = self;
  v3.super_class = LCSCaptureApplicationMonitor;
  [(LCSCaptureApplicationMonitor *)&v3 dealloc];
}

- (void)invalidate
{
  [(LCSCaptureApplicationMonitor *)self _endObservingMetadataChanges];
  [(LCSCaptureApplicationTCCObservationToken *)self->_tccObservationToken invalidate];
  tccObservationToken = self->_tccObservationToken;
  self->_tccObservationToken = 0;

  os_unfair_lock_lock(&self->_lock);
  lock_knownCaptureApplicationsByBundleIdentifier = self->_lock_knownCaptureApplicationsByBundleIdentifier;
  self->_lock_knownCaptureApplicationsByBundleIdentifier = 0;

  os_unfair_lock_unlock(&self->_lock);
  os_unfair_lock_lock(&self->_cache_lock);
  lock_cached_knownCaptureApplicationsByBundleIdentifier = self->_lock_cached_knownCaptureApplicationsByBundleIdentifier;
  self->_lock_cached_knownCaptureApplicationsByBundleIdentifier = 0;

  os_unfair_lock_unlock(&self->_cache_lock);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__LCSCaptureApplicationMonitor_invalidate__block_invoke;
  block[3] = &unk_279824D08;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __42__LCSCaptureApplicationMonitor_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

- (void)knownCameraCaptureApplicationsByBundleIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__LCSCaptureApplicationMonitor_knownCameraCaptureApplicationsByBundleIdentifierWithCompletionHandler___block_invoke;
  block[3] = &unk_279824D50;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __102__LCSCaptureApplicationMonitor_knownCameraCaptureApplicationsByBundleIdentifierWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_knownCameraCaptureApplicationsByBundleIdentifierWithCompletionHandler:*(a1 + 32)];
}

- (void)_queue_knownCameraCaptureApplicationsByBundleIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue_extensionMonitor = self->_queue_extensionMonitor;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __109__LCSCaptureApplicationMonitor__queue_knownCameraCaptureApplicationsByBundleIdentifierWithCompletionHandler___block_invoke;
  v7[3] = &unk_279824D78;
  objc_copyWeak(&v9, &location);
  v6 = handlerCopy;
  v8 = v6;
  [(LCSExtensionProvider *)queue_extensionMonitor knownExtensionsWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __109__LCSCaptureApplicationMonitor__queue_knownCameraCaptureApplicationsByBundleIdentifierWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained captureExtensionProvider:WeakRetained[6] didUpdateKnownExtensions:v3];

  v4 = *(a1 + 32);
  v5 = [WeakRetained knownCameraCaptureApplicationsByBundleIdentifier];
  (*(v4 + 16))(v4, v5);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__LCSCaptureApplicationMonitor_addObserver___block_invoke;
    v7[3] = &unk_279824C98;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __44__LCSCaptureApplicationMonitor_addObserver___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 40) count])
  {
    v2 = LCSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_256175000, v2, OS_LOG_TYPE_DEFAULT, "Starting extension monitor because first observer added", v4, 2u);
    }

    [*(a1 + 32) _queue_start];
  }

  return [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__LCSCaptureApplicationMonitor_removeObserver___block_invoke;
    v7[3] = &unk_279824C98;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __47__LCSCaptureApplicationMonitor_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 40) count];
  if (!result)
  {
    v3 = LCSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_256175000, v3, OS_LOG_TYPE_DEFAULT, "Suspending extension monitor because no observers left", v4, 2u);
    }

    return [*(a1 + 32) _queue_cancel];
  }

  return result;
}

- (BOOL)isCaptureApplication:(id)application
{
  applicationCopy = application;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_lock_knownCaptureApplicationsByBundleIdentifier copy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5 && ([v5 objectForKey:applicationCopy], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = 1;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CC5DF8]) initWithExtensionPointIdentifier:@"com.apple.securecapture"];
    v9 = [MEMORY[0x277CC5E00] executeQuery:v8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__LCSCaptureApplicationMonitor_isCaptureApplication___block_invoke;
    v12[3] = &unk_279824DA0;
    v13 = applicationCopy;
    v10 = [v9 bs_firstObjectPassingTest:v12];
    v7 = v10 != 0;
  }

  return v7;
}

uint64_t __53__LCSCaptureApplicationMonitor_isCaptureApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 containingBundleRecord];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_reevaluateCaptureApplicationRequirements
{
  v3 = LCSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_256175000, v3, OS_LOG_TYPE_DEFAULT, "Reevaluating capture application requirements", buf, 2u);
  }

  *buf = 0;
  v8 = buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__LCSCaptureApplicationMonitor__reevaluateCaptureApplicationRequirements__block_invoke;
  v6[3] = &unk_279824DC8;
  v6[4] = self;
  v6[5] = buf;
  dispatch_sync(queue, v6);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(LCSCaptureApplicationMonitor *)self _lock_evaluateCaptureApplicationRequirementsForKnownExtensions:*(v8 + 5) usingCachedLaunchOptions:0];
  [(LCSCaptureApplicationMonitor *)self _lock_updateKnownCaptureApplications:v5];
  os_unfair_lock_unlock(&self->_lock);

  _Block_object_dispose(buf, 8);
}

void __73__LCSCaptureApplicationMonitor__reevaluateCaptureApplicationRequirements__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v6 = [*(*(a1 + 32) + 48) knownExtensions];
  v3 = [v2 setWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_lock_updateKnownCaptureApplications:(id)applications
{
  applicationsCopy = applications;
  v6 = [(NSDictionary *)self->_lock_knownCaptureApplicationsByBundleIdentifier copy];
  objc_storeStrong(&self->_lock_knownCaptureApplicationsByBundleIdentifier, applications);
  [(LCSCaptureApplicationMonitor *)self _updateCachedKnownCaptureApplications:applicationsCopy];
  v7 = MEMORY[0x277CBEB98];
  allKeys = [applicationsCopy allKeys];
  v9 = [v7 setWithArray:allKeys];

  v10 = MEMORY[0x277CBEB98];
  allKeys2 = [v6 allKeys];
  v12 = [v10 setWithArray:allKeys2];

  if (([v12 isEqualToSet:v9] & 1) == 0)
  {
    allKeys3 = [applicationsCopy allKeys];
    [(LCSCaptureApplicationMonitor *)self _updateTCCMonitorForBundleIdentifiers:allKeys3];
  }

  v14 = MEMORY[0x277CBEB98];
  allValues = [applicationsCopy allValues];
  v16 = [v14 setWithArray:allValues];

  v17 = MEMORY[0x277CBEB98];
  allValues2 = [v6 allValues];
  v19 = [v17 setWithArray:allValues2];

  v20 = [(LCSCaptureApplicationMonitor *)self _filterCaptureApplications:v16 launchType:0];
  v21 = [(LCSCaptureApplicationMonitor *)self _filterCaptureApplications:v19 launchType:0];
  queue = self->_queue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __69__LCSCaptureApplicationMonitor__lock_updateKnownCaptureApplications___block_invoke;
  v26[3] = &unk_279824DF0;
  v27 = v20;
  v28 = v21;
  selfCopy = self;
  v30 = v6;
  v23 = v6;
  v24 = v21;
  v25 = v20;
  dispatch_async(queue, v26);
}

id __69__LCSCaptureApplicationMonitor__lock_updateKnownCaptureApplications___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToSet:*(a1 + 40)] & 1) == 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [*(*(a1 + 48) + 40) copy];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 captureApplicationProvider:*(a1 + 48) didUpdateKnownCameraCaptureApplications:*(a1 + 32)];
          }

          else if (objc_opt_respondsToSelector())
          {
            [v7 captureApplicationProvider:*(a1 + 48) didUpdateKnownApplications:*(a1 + 32)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }

  v8 = *(a1 + 56);
  result = objc_opt_self();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateCachedKnownCaptureApplications:(id)applications
{
  applicationsCopy = applications;
  os_unfair_lock_lock(&self->_cache_lock);
  lock_cached_knownCaptureApplicationsByBundleIdentifier = self->_lock_cached_knownCaptureApplicationsByBundleIdentifier;
  self->_lock_cached_knownCaptureApplicationsByBundleIdentifier = applicationsCopy;

  os_unfair_lock_unlock(&self->_cache_lock);
}

- (id)_filterCaptureApplications:(id)applications launchType:(unint64_t)type
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__LCSCaptureApplicationMonitor__filterCaptureApplications_launchType___block_invoke;
  v6[3] = &__block_descriptor_40_e43_B16__0___LCSCaptureApplicationDescribing__8l;
  v6[4] = type;
  v4 = [applications bs_filter:v6];

  return v4;
}

uint64_t __70__LCSCaptureApplicationMonitor__filterCaptureApplications_launchType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = [v3 supportsLaunchType:*(a1 + 32)];

  return v4;
}

- (void)_beginObservingMetadataChanges
{
  if (!self->_metadataChangedObserverToken)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    v4 = *MEMORY[0x277D23A70];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__LCSCaptureApplicationMonitor__beginObservingMetadataChanges__block_invoke;
    v7[3] = &unk_279824E38;
    objc_copyWeak(&v8, &location);
    v5 = [defaultCenter addObserverForName:v4 object:0 queue:0 usingBlock:v7];

    metadataChangedObserverToken = self->_metadataChangedObserverToken;
    self->_metadataChangedObserverToken = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __62__LCSCaptureApplicationMonitor__beginObservingMetadataChanges__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D23A78]];

    [WeakRetained _processMetadataChangeForBundleIdentifiers:v5];
  }
}

- (void)_processMetadataChangeForBundleIdentifiers:(id)identifiers
{
  v36 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__LCSCaptureApplicationMonitor__processMetadataChangeForBundleIdentifiers___block_invoke;
  block[3] = &unk_279824DC8;
  block[4] = self;
  block[5] = &v28;
  dispatch_sync(queue, block);
  if ([v29[5] count])
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{2 * objc_msgSend(v29[5], "count")}];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v29[5];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          bundleIdentifier = [v11 bundleIdentifier];
          [v6 addObject:bundleIdentifier];

          containerBundleIdentifier = [v11 containerBundleIdentifier];
          [v6 addObject:containerBundleIdentifier];
        }

        v8 = [v7 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v8);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = identifiersCopy;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v34 count:16];
    if (v15)
    {
      v16 = *v20;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          if ([v6 containsObject:{*(*(&v19 + 1) + 8 * j), v19}])
          {

            goto LABEL_20;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v19 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if (!v14)
    {
LABEL_20:
      [(LCSCaptureApplicationMonitor *)self _reevaluateCaptureApplicationRequirements];
    }
  }

  _Block_object_dispose(&v28, 8);

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __75__LCSCaptureApplicationMonitor__processMetadataChangeForBundleIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) knownExtensions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_endObservingMetadataChanges
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self->_metadataChangedObserverToken];

  metadataChangedObserverToken = self->_metadataChangedObserverToken;
  self->_metadataChangedObserverToken = 0;
}

- (id)_lock_captureApplicationsFromKnownExtensions:(id)extensions currentCaptureApplications:(id)applications usingCachedLaunchOptions:(BOOL)options
{
  applicationsCopy = applications;
  extensionsCopy = extensions;
  v10 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __129__LCSCaptureApplicationMonitor__lock_captureApplicationsFromKnownExtensions_currentCaptureApplications_usingCachedLaunchOptions___block_invoke;
  v16[3] = &unk_279824E60;
  optionsCopy = options;
  v17 = applicationsCopy;
  selfCopy = self;
  v11 = v10;
  v19 = v11;
  v12 = applicationsCopy;
  [extensionsCopy bs_each:v16];

  v13 = v19;
  v14 = v11;

  return v11;
}

void __129__LCSCaptureApplicationMonitor__lock_captureApplicationsFromKnownExtensions_currentCaptureApplications_usingCachedLaunchOptions___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 containerBundleIdentifier];
  v5 = [v3 bundleIdentifier];
  if (*(a1 + 56) == 1)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 attributes];
      v9 = [v8 supportedLaunchTypes];

      v10 = LCSLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSStringFromLCSCaptureApplicationLaunchTypeMask(v9);
        *buf = 138412546;
        v28 = v4;
        v29 = 2112;
        *v30 = v11;
        _os_log_impl(&dword_256175000, v10, OS_LOG_TYPE_DEFAULT, "Capture Application (%@): Using cached supported launch type: %@", buf, 0x16u);
      }

      if (v9)
      {
        goto LABEL_10;
      }

      v12 = LCSLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v4;
        _os_log_impl(&dword_256175000, v12, OS_LOG_TYPE_DEFAULT, "Capture Application (%@): Cached supported launch type is not found, trying again", buf, 0xCu);
      }
    }

    v9 = [*(a1 + 40) _lock_supportedLaunchTypesForExtension:v3];
LABEL_10:

    goto LABEL_12;
  }

  v9 = [*(a1 + 40) _lock_supportedLaunchTypesForExtension:v3];
LABEL_12:
  v13 = *(a1 + 40);
  v14 = [objc_opt_class() _hasCameraUsageDescriptionForBundleIdentifier:v4];
  v15 = *(a1 + 40);
  v16 = [objc_opt_class() _hasCameraUsageDescriptionForBundleIdentifier:v5];
  v17 = [v3 visibilityOverride];
  v18 = LCSLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    NSStringFromLCSCaptureApplicationLaunchTypeMask(v9);
    v26 = v3;
    v20 = v19 = v9;
    *buf = 138413570;
    v28 = v4;
    v29 = 1024;
    *v30 = v14;
    *&v30[4] = 2112;
    *&v30[6] = v5;
    v31 = 1024;
    v32 = v16;
    v33 = 2112;
    v34 = v20;
    v35 = 1024;
    v36 = v17 == 2;
    _os_log_impl(&dword_256175000, v18, OS_LOG_TYPE_DEFAULT, "Capture Application (%@): appHasCameraUsageDescription: %{BOOL}u; Extension (%@): extensionHasCameraUsageDescription: %{BOOL}u; supportedLaunchOptions: %@, visibilityHidden: %{BOOL}u", buf, 0x32u);

    v9 = v19;
    v3 = v26;
  }

  if ((v14 & v16) == 1 && v9 && v17 != 2)
  {
    v21 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (!v21)
    {
      v22 = +[LCSCaptureApplicationTCCMonitor sharedMonitor];
      v23 = [v22 cameraTCCStatusForBundleIdentifier:v4];

      v24 = [[LCSCaptureApplicationAttributes alloc] initWithCameraTCCStatus:v23 supportedLaunchTypes:v9];
      v21 = [[LCSCaptureApplication alloc] initWithExtensionInfo:v3 attributes:v24];
    }

    [*(a1 + 48) setObject:v21 forKeyedSubscript:v4];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_lock_supportedLaunchTypesForExtension:(id)extension
{
  extensionCopy = extension;
  v4 = [objc_opt_class() _hasCaptureAppIntentForExtension:extensionCopy];

  return v4;
}

- (void)_updateTCCMonitorForBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = +[LCSCaptureApplicationTCCMonitor sharedMonitor];
  v5 = [v7 addObserver:self forBundleIdentifiers:identifiersCopy];

  tccObservationToken = self->_tccObservationToken;
  self->_tccObservationToken = v5;
}

- (void)captureExtensionProvider:(id)provider didUpdateKnownExtensions:(id)extensions
{
  if (self->_queue_extensionMonitor == provider)
  {
    extensionsCopy = extensions;
    os_unfair_lock_lock(&self->_lock);
    v7 = [(LCSCaptureApplicationMonitor *)self _lock_evaluateCaptureApplicationRequirementsForKnownExtensions:extensionsCopy usingCachedLaunchOptions:1];

    [(LCSCaptureApplicationMonitor *)self _lock_updateKnownCaptureApplications:v7];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)tccMonitor:(id)monitor didUpdateCameraTCCStatuses:(id)statuses
{
  v29 = *MEMORY[0x277D85DE8];
  statusesCopy = statuses;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSDictionary *)self->_lock_knownCaptureApplicationsByBundleIdentifier mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = statusesCopy;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        bundleIdentifier = [v11 bundleIdentifier];
        v13 = [(NSDictionary *)self->_lock_knownCaptureApplicationsByBundleIdentifier objectForKeyedSubscript:bundleIdentifier];
        if (v13)
        {
          v14 = [LCSCaptureApplicationAttributes alloc];
          tccStatus = [v11 tccStatus];
          attributes = [v13 attributes];
          v17 = -[LCSCaptureApplicationAttributes initWithCameraTCCStatus:supportedLaunchTypes:](v14, "initWithCameraTCCStatus:supportedLaunchTypes:", tccStatus, [attributes supportedLaunchTypes]);

          v18 = [LCSCaptureApplication alloc];
          extension = [v13 extension];
          v20 = [(LCSCaptureApplication *)v18 initWithExtensionInfo:extension attributes:v17];

          [v6 setObject:v20 forKeyedSubscript:bundleIdentifier];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = [v6 copy];
  [(LCSCaptureApplicationMonitor *)self _lock_updateKnownCaptureApplications:v21];

  os_unfair_lock_unlock(&self->_lock);
  v22 = *MEMORY[0x277D85DE8];
}

+ (void)_bundleRecordForBundleIdentifier:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_256175000, a3, OS_LOG_TYPE_ERROR, "Unable to resolve bundle record for %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end