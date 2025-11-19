@interface HDProcessStateManager
- (BOOL)applicationIsForeground:(id)a3;
- (BOOL)isApplicationFrontBoardVisibleForBundleIdentifier:(id)a3;
- (BOOL)isApplicationInExtendedRuntimeSessionForBundleIdentifier:(id)a3;
- (BOOL)registerObserver:(id)a3 forBundleIdentifier:(id)a4;
- (HDApplicationStateMonitorProvider)applicationStateMonitorProvider;
- (HDProcessStateManager)init;
- (HDProcessStateManager)initWithApplicationStateMonitorProvider:(id)a3;
- (id)diagnosticDescription;
- (int)processIdentifierForApplicationIdentifier:(id)a3;
- (unsigned)applicationStateForBundleIdentifier:(id)a3;
- (void)_handleBackboardApplicationInfoChanged:(uint64_t)a1;
- (void)dealloc;
- (void)registerForegroundClientProcessObserver:(id)a3;
- (void)unregisterForegroundClientProcessObserver:(id)a3;
- (void)unregisterObserver:(id)a3 forBundleIdentifier:(id)a4;
@end

@implementation HDProcessStateManager

- (HDProcessStateManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDProcessStateManager)initWithApplicationStateMonitorProvider:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HDProcessStateManager;
  v5 = [(HDProcessStateManager *)&v23 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_applicationStateMonitorProvider, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    processObserversByBundleID = v6->_processObserversByBundleID;
    v6->_processObserversByBundleID = v7;

    v6->_lock._os_unfair_lock_opaque = 0;
    v9 = HKCreateSerialDispatchQueue();
    clientCalloutQueue = v6->_clientCalloutQueue;
    v6->_clientCalloutQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    processInfoByBundleID = v6->_processInfoByBundleID;
    v6->_processInfoByBundleID = v11;

    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    foregroundClientProcessObservers = v6->_foregroundClientProcessObservers;
    v6->_foregroundClientProcessObservers = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB98]);
    foregroundClientBundleIdentifiers = v6->_foregroundClientBundleIdentifiers;
    v6->_foregroundClientBundleIdentifiers = v15;

    WeakRetained = objc_loadWeakRetained(&v6->_applicationStateMonitorProvider);
    v18 = [WeakRetained createRBSProcessStateProvider];
    rbsProcessStateProvider = v6->_rbsProcessStateProvider;
    v6->_rbsProcessStateProvider = v18;

    v20 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v20 addObject:v6];

    v21 = v6;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v3 removeObject:self];

  v4.receiver = self;
  v4.super_class = HDProcessStateManager;
  [(HDProcessStateManager *)&v4 dealloc];
}

- (BOOL)registerObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 length] == 0;
  _HKInitializeLogging();
  v9 = HKLogProcessState();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (!v8)
  {
    if (v10)
    {
      v11 = HKLogProcessState();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "Registering observer %@ for process state changes for %@", buf, 0x16u);
      }
    }

    os_unfair_lock_lock(&self->_lock);
    v12 = v6;
    v13 = v7;
    if (!self)
    {
      v16 = 0;
      goto LABEL_31;
    }

    os_unfair_lock_assert_owner(&self->_lock);
    v14 = [(NSMutableDictionary *)self->_processObserversByBundleID objectForKey:v13];
    v15 = v14;
    if (v14)
    {
      [v14 addObject:v12];
      v16 = 1;
LABEL_30:

LABEL_31:
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_32;
    }

    v15 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [v15 addObject:v12];
    [(NSMutableDictionary *)self->_processObserversByBundleID setObject:v15 forKey:v13];
    v18 = [(BKSApplicationStateMonitor *)self->_applicationMonitor interestedBundleIDs];
    v19 = v18;
    if (self->_applicationMonitor)
    {
      if ([v18 containsObject:v13])
      {
LABEL_28:
        v16 = 1;
LABEL_29:

        goto LABEL_30;
      }

      v20 = [v19 arrayByAddingObject:v13];
      _HKInitializeLogging();
      v21 = HKLogProcessState();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

      if (v22)
      {
        v23 = HKLogProcessState();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v20;
          _os_log_debug_impl(&dword_228986000, v23, OS_LOG_TYPE_DEBUG, "Updating application state observer for processes: %@", buf, 0xCu);
        }
      }

      [(BKSApplicationStateMonitor *)self->_applicationMonitor updateInterestedBundleIDs:v20];
    }

    else
    {
      v24 = [(HDProcessStateManager *)self applicationStateMonitorProvider];
      v40[0] = v13;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
      v26 = [v24 createApplicationStateMonitorWithBundleIDs:v25 states:15 elevatedPriority:1];
      applicationMonitor = self->_applicationMonitor;
      self->_applicationMonitor = v26;

      LODWORD(v25) = self->_applicationMonitor == 0;
      _HKInitializeLogging();
      v28 = HKLogProcessState();
      v29 = v28;
      if (v25)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v13;
          _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Failed to create an application state monitor for %@.", buf, 0xCu);
        }

        v16 = 0;
        goto LABEL_29;
      }

      v30 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);

      if (v30)
      {
        v31 = HKLogProcessState();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v13;
          _os_log_debug_impl(&dword_228986000, v31, OS_LOG_TYPE_DEBUG, "Created an application state monitor for bundle identifier %@.", buf, 0xCu);
        }
      }

      objc_initWeak(location, self);
      v32 = self->_applicationMonitor;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __68__HDProcessStateManager__lock_registerObserver_forBundleIdentifier___block_invoke;
      v38 = &unk_27861D920;
      objc_copyWeak(v39, location);
      [(BKSApplicationStateMonitor *)v32 setHandler:buf];
      objc_destroyWeak(v39);
      objc_destroyWeak(location);
    }

    [(NSMutableDictionary *)self->_processInfoByBundleID removeObjectForKey:v13];
    v33 = self->_applicationMonitor;
    location[0] = MEMORY[0x277D85DD0];
    location[1] = 3221225472;
    location[2] = __68__HDProcessStateManager__lock_registerObserver_forBundleIdentifier___block_invoke_310;
    location[3] = &unk_27861D948;
    location[4] = self;
    [(BKSApplicationStateMonitor *)v33 applicationInfoForApplication:v13 completion:location];
    goto LABEL_28;
  }

  if (v10)
  {
    v17 = HKLogProcessState();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_228986000, v17, OS_LOG_TYPE_DEBUG, "Failed to register process missing a bundle identifier.", buf, 2u);
    }
  }

  v16 = 0;
LABEL_32:

  v34 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)unregisterObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 length];
  _HKInitializeLogging();
  v9 = HKLogProcessState();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    if (v10)
    {
      v11 = HKLogProcessState();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v19 = 138412546;
        v20 = v6;
        v21 = 2112;
        v22 = v7;
        _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "Unregistering observer %@ for process state changes for %@", &v19, 0x16u);
      }
    }

    os_unfair_lock_lock(&self->_lock);
    v12 = v7;
    if (self)
    {
      v13 = v6;
      os_unfair_lock_assert_owner(&self->_lock);
      v14 = [(NSMutableDictionary *)self->_processObserversByBundleID objectForKeyedSubscript:v12];
      [v14 removeObject:v13];

      v15 = [v14 allObjects];
      v16 = [v15 count];

      if (!v16)
      {
        [(NSMutableDictionary *)self->_processObserversByBundleID removeObjectForKey:v12];
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else if (v10)
  {
    v17 = HKLogProcessState();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_debug_impl(&dword_228986000, v17, OS_LOG_TYPE_DEBUG, "Failed to unregister process, empty bundle identifier.", &v19, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)registerForegroundClientProcessObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_foregroundClientProcessObservers addObject:v4];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)unregisterForegroundClientProcessObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_foregroundClientProcessObservers removeObject:v4];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (unsigned)applicationStateForBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_processInfoByBundleID objectForKeyedSubscript:v4];
    v6 = self->_applicationMonitor;
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      v7 = v5[2];
    }

    else if (v6)
    {
      v7 = [(BKSApplicationStateMonitor *)v6 applicationStateForApplication:v4];
    }

    else
    {
      v8 = [(HDProcessStateManager *)self applicationStateMonitorProvider];
      v9 = [v8 createApplicationStateMonitor];

      v7 = [v9 applicationStateForApplication:v4];
      [v9 invalidate];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isApplicationInExtendedRuntimeSessionForBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D46F50] identifierWithPid:{-[HDProcessStateManager processIdentifierForApplicationIdentifier:](self, "processIdentifierForApplicationIdentifier:", a3)}];
  v5 = [(HDRBSProcessStateProvider *)self->_rbsProcessStateProvider stateForProcessIdentifier:v4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 tags];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v14 + 1) + 8 * i) isEqualToString:@"CSLExtendedRuntimeSession"])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isApplicationFrontBoardVisibleForBundleIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogProcessState();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Verifying FrontBoard visibility for %{public}@", &v13, 0x16u);
  }

  v6 = [MEMORY[0x277D46F50] identifierWithPid:{-[HDProcessStateManager processIdentifierForApplicationIdentifier:](self, "processIdentifierForApplicationIdentifier:", v4)}];
  v7 = [(HDRBSProcessStateProvider *)self->_rbsProcessStateProvider stateForProcessIdentifier:v6];
  v8 = [v7 endowmentNamespaces];
  v9 = [v8 containsObject:*MEMORY[0x277D0AC90]];

  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogProcessState();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Current process identifier %{public}@ has FBS scene visibility endowment", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)applicationIsForeground:(id)a3
{
  v4 = a3;
  v5 = [(HDProcessStateManager *)self applicationStateMonitorProvider];
  v6 = [v5 createApplicationStateMonitor];

  LODWORD(v5) = [v6 applicationStateForApplication:v4];
  [v6 invalidate];

  return v5 == 8;
}

- (int)processIdentifierForApplicationIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDProcessStateManager *)self applicationStateMonitorProvider];
  v6 = [v5 createApplicationStateMonitor];

  v7 = [v6 applicationInfoForApplication:v4];
  [v6 invalidate];
  v8 = [v7 objectForKey:*MEMORY[0x277CEEE80]];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 intValue];
  }

  else
  {
    v10 = -1;
  }

  v11 = [v7 objectForKey:*MEMORY[0x277CEEE70]];
  v12 = [v11 unsignedIntValue];

  if (v12 == 1 && v10 != -1)
  {
    _HKInitializeLogging();
    v14 = HKLogProcessState();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

    if (v15)
    {
      v16 = HKLogProcessState();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = 138543618;
        v20 = v4;
        v21 = 1026;
        v22 = v10;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "Process %{public}@ is terminated but monitor reported pid %{public}d. Returning -1.", &v19, 0x12u);
      }
    }

    v10 = -1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_handleBackboardApplicationInfoChanged:(uint64_t)a1
{
  v84 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v49 = *MEMORY[0x277D85DE8];
    return;
  }

  v2 = a1;
  v3 = a2;
  os_unfair_lock_lock((v2 + 48));
  v4 = v3;
  os_unfair_lock_assert_owner((v2 + 48));
  v5 = *MEMORY[0x277CEEE68];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEEE68]];
  if (!v6)
  {
    goto LABEL_29;
  }

  v7 = [*(v2 + 64) copy];
  v52 = v2;
  v51 = v4;
  v8 = v4;
  objc_opt_self();
  v9 = objc_alloc_init(_HDProcessInfo);
  v10 = [v8 objectForKeyedSubscript:v5];
  v11 = [v10 copy];
  bundleIdentifier = v9->_bundleIdentifier;
  v9->_bundleIdentifier = v11;

  v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEEE70]];
  v9->_applicationState = [v13 unsignedIntValue];

  v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEEE80]];

  v9->_pid = [v14 intValue];
  v50 = v6;
  [*(v2 + 64) setObject:v9 forKeyedSubscript:v6];

  v15 = v7;
  os_unfair_lock_assert_owner((v2 + 48));
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = [*(v2 + 64) allKeys];
  [v16 addObjectsFromArray:v17];

  v18 = [v15 allKeys];
  [v16 addObjectsFromArray:v18];

  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v16;
  v54 = v20;
  v55 = v19;
  v58 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (!v58)
  {
    goto LABEL_25;
  }

  v57 = *v61;
  v53 = v15;
  do
  {
    v21 = 0;
    do
    {
      if (*v61 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v60 + 1) + 8 * v21);
      v23 = [*(v2 + 64) objectForKeyedSubscript:v22];
      v24 = [v15 objectForKeyedSubscript:v22];
      v25 = v24;
      if (v23)
      {
        v26 = v23[2];
        v59 = v23[3];
        if (!v24)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v26 = 0;
        if (!v24)
        {
          v59 = 0;
LABEL_10:
          v27 = 0;
          goto LABEL_14;
        }

        v59 = *(v24 + 12);
      }

      v27 = *(v24 + 8);
LABEL_14:
      v28 = v22;
      os_unfair_lock_assert_owner((v2 + 48));
      if (v26 != v27)
      {
        _HKInitializeLogging();
        v29 = HKLogProcessState();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = HDBKSApplicationStateString(v27);
          v31 = HDBKSApplicationStateString(v26);
          *buf = 138414338;
          *&buf[4] = v28;
          *&buf[12] = 1024;
          *&buf[14] = v59;
          *&buf[18] = 2114;
          *&buf[20] = v30;
          *&buf[28] = 2114;
          *&buf[30] = v31;
          *&buf[38] = 2048;
          v76 = v27 == 2;
          v2 = v52;
          *v77 = 2048;
          *&v77[2] = v26 == 2;
          v78 = 2048;
          v79 = v27 == 8;
          v80 = 2048;
          v81 = v26 == 8;
          v82 = 2048;
          v83 = v26 < 2;
          _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "Process %@ (%d) state changed %{public}@ -> %{public}@: suspended %ld -> %ld, foreground %ld -> %ld, terminated %ld", buf, 0x58u);
        }

        v32 = [*(v2 + 8) objectForKeyedSubscript:v28];
        v33 = [v32 allObjects];

        v34 = *(v2 + 56);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __141__HDProcessStateManager__lock_notifyObserversProcessWithBundleIdentifier_processIdentifier_applicationStateChanged_previousApplicationState___block_invoke;
        block[3] = &unk_27861D970;
        v65 = v33;
        v67 = v27;
        v68 = v26;
        v66 = v28;
        v69 = v27 == 2;
        v70 = v26 == 2;
        v71 = v27 == 8;
        v72 = v26 == 8;
        v73 = v26 < 2;
        v35 = v33;
        dispatch_async(v34, block);

        v15 = v53;
        v20 = v54;
        v19 = v55;
      }

      v36 = v19;
      if (v26 == 8 || (v36 = v20, v27 == 8))
      {
        [v36 addObject:v28];
      }

      ++v21;
    }

    while (v58 != v21);
    v37 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
    v58 = v37;
  }

  while (v37);
LABEL_25:

  if (([v19 isEqual:v20] & 1) == 0 && (objc_msgSend(*(v2 + 24), "isEqual:", v19) & 1) == 0)
  {
    v38 = [*(v2 + 16) allObjects];
    v39 = [v19 copy];
    v40 = [v20 copy];
    v41 = *(v2 + 56);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __83__HDProcessStateManager__lock_handleProcessInfoChangedWithAllPreviousProcessInfos___block_invoke;
    *&buf[24] = &unk_278613830;
    *&buf[32] = v38;
    v76 = v39;
    *v77 = v40;
    v42 = v40;
    v43 = v39;
    v44 = v38;
    v45 = v41;
    v19 = v55;
    dispatch_async(v45, buf);

    v20 = v54;
  }

  v46 = [v19 copy];
  v47 = *(v2 + 24);
  *(v2 + 24) = v46;

  v6 = v50;
  v4 = v51;
LABEL_29:

  v48 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock((v2 + 48));
}

void __68__HDProcessStateManager__lock_registerObserver_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDProcessStateManager *)WeakRetained _handleBackboardApplicationInfoChanged:v3];
}

void __83__HDProcessStateManager__lock_handleProcessInfoChangedWithAllPreviousProcessInfos___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) foregroundClientProcessesDidChange:*(a1 + 40) previouslyForegroundBundleIdentifiers:{*(a1 + 48), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __141__HDProcessStateManager__lock_notifyObserversProcessWithBundleIdentifier_processIdentifier_applicationStateChanged_previousApplicationState___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (*(a1 + 48) != *(a1 + 52))
        {
          v8 = *(*(&v10 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 processWithBundleIdentifier:*(a1 + 40) didTransitionFromState:*(a1 + 48) toState:*(a1 + 52)];
          }
        }

        if (*(a1 + 56) == 1 && (*(a1 + 57) & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 processResumed:*(a1 + 40)];
        }

        if (*(a1 + 56) & 1) == 0 && *(a1 + 57) == 1 && (objc_opt_respondsToSelector())
        {
          [v7 processSuspended:*(a1 + 40)];
        }

        if (*(a1 + 58) == 1 && (*(a1 + 59) & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 processDidEnterBackground:*(a1 + 40)];
        }

        if (*(a1 + 58) & 1) == 0 && *(a1 + 59) == 1 && (objc_opt_respondsToSelector())
        {
          [v7 processDidEnterForeground:*(a1 + 40)];
        }

        if (*(a1 + 60) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 processTerminated:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"Client processes:"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(NSMutableDictionary *)self->_processInfoByBundleID allValues];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 16);
          v11 = [MEMORY[0x277CCABB0] numberWithInt:*(v9 + 12)];
          v12 = *(v9 + 8);
        }

        else
        {
          v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v10 = 0;
          v12 = 0;
        }

        v13 = HDBKSApplicationStateString(v12);
        [v3 appendFormat:@"\n\t%@ (%@) %@", v10, v11, v13];

        ++v8;
      }

      while (v6 != v8);
      v14 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = v14;
    }

    while (v14);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HDApplicationStateMonitorProvider)applicationStateMonitorProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationStateMonitorProvider);

  return WeakRetained;
}

@end