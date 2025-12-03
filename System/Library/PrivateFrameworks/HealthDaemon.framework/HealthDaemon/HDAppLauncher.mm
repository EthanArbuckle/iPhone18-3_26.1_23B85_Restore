@interface HDAppLauncher
- (BOOL)unitTest_hasAssertionForBundleIdentifier:(id)identifier;
- (HDAppLauncher)initWithProcessStateManager:(id)manager openApplicationService:(id)service;
- (id)_queue_assertionsForClientBundleIdentifier:(uint64_t)identifier;
- (id)takeKeepAliveAssertionForApplicationBundleIdentifier:(id)identifier processBundleIdentifier:(id)bundleIdentifier client:(id)client;
- (uint64_t)_queue_clientRequiresLaunch:(void *)launch assertions:;
- (void)_queue_launchClientIfNeeded:(uint64_t)needed;
- (void)_queue_scheduleLaunchForClient:(uint64_t)client;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)processTerminated:(id)terminated;
- (void)unitTest_setBaseLaunchDelay:(double)delay launchCountResetThreshold:(double)threshold maxLaunchCount:(int64_t)count;
@end

@implementation HDAppLauncher

- (HDAppLauncher)initWithProcessStateManager:(id)manager openApplicationService:(id)service
{
  managerCopy = manager;
  serviceCopy = service;
  v22.receiver = self;
  v22.super_class = HDAppLauncher;
  v9 = [(HDAppLauncher *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_processStateManager, manager);
    objc_storeStrong(&v10->_openApplicationService, service);
    v11 = HKCreateSerialDispatchQueue();
    queue = v10->_queue;
    v10->_queue = v11;

    v13 = objc_alloc_init(MEMORY[0x277D10AC0]);
    assertionManager = v10->_assertionManager;
    v10->_assertionManager = v13;

    [(HDAssertionManager *)v10->_assertionManager addObserver:v10 forAssertionIdentifier:@"HDAppLaunchClientKeepAliveAssertionIdentifier" queue:v10->_queue];
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    registeredAssertionsByIdentifier = v10->_registeredAssertionsByIdentifier;
    v10->_registeredAssertionsByIdentifier = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    monitoredProcessBundleIdentifiers = v10->_monitoredProcessBundleIdentifiers;
    v10->_monitoredProcessBundleIdentifiers = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    launchingProcessBundleIdentifiers = v10->_launchingProcessBundleIdentifiers;
    v10->_launchingProcessBundleIdentifiers = v19;

    v10->_baseLaunchDelay = 8.0;
    v10->_maxLaunchCount = 6;
    objc_opt_self();
    v10->_launchCountResetThreshold = 1037.9707;
  }

  return v10;
}

- (id)takeKeepAliveAssertionForApplicationBundleIdentifier:(id)identifier processBundleIdentifier:(id)bundleIdentifier client:(id)client
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  if ([identifierCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__103;
    v20 = __Block_byref_object_dispose__103;
    v21 = 0;
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __101__HDAppLauncher_takeKeepAliveAssertionForApplicationBundleIdentifier_processBundleIdentifier_client___block_invoke;
    v14[3] = &unk_278617558;
    v14[4] = self;
    v15 = identifierCopy;
    v16 = clientCopy;
    v17 = buf;
    dispatch_sync(queue, v14);
    v10 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = identifierCopy;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Ignoring attempt to request keep-alive for invalide bundle identifier %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

void __101__HDAppLauncher_takeKeepAliveAssertionForApplicationBundleIdentifier_processBundleIdentifier_client___block_invoke(uint64_t a1)
{
  v1 = a1;
  v45 = *MEMORY[0x277D85DE8];
  [(HDAppLauncher *)*(a1 + 32) _queue_assertionsForClientBundleIdentifier:?];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = v42 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v40;
    v7 = 0.0;
    obj = v2;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * v8);
        v10 = [(HDClientKeepAliveAssertion *)v9 weakClient];
        v11 = [v10 launchPayloadOptions];
        v12 = v1;
        v13 = [*(v1 + 48) launchPayloadOptions];
        v14 = [v11 isEqual:v13];

        if ((v14 & 1) == 0)
        {
          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            v36 = *(v12 + 32);
            v37 = *(v12 + 40);
            *v43 = 138543618;
            *&v43[4] = v36;
            *&v43[12] = 2112;
            *&v43[14] = v37;
            _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Taking assertion on processs %@ with different payload", v43, 0x16u);
          }

          v2 = obj;

          goto LABEL_40;
        }

        if (v9)
        {
          v15 = *(v9 + 96);
        }

        else
        {
          v15 = 0;
        }

        v1 = v12;
        [v15 timeIntervalSinceReferenceDate];
        if (v7 < v16)
        {
          v7 = v16;
        }

        if (v9)
        {
          v17 = *(v9 + 88);
        }

        else
        {
          v17 = 0;
        }

        if (v5 <= v17)
        {
          v5 = v17;
        }

        ++v8;
      }

      while (v4 != v8);
      v2 = obj;
      v18 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      v4 = v18;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0.0;
  }

  v20 = [HDClientKeepAliveAssertion alloc];
  v21 = *(v1 + 48);
  v22 = *(v1 + 40);
  v23 = v21;
  if (v20)
  {
    *v43 = v20;
    *&v43[8] = HDClientKeepAliveAssertion;
    v20 = objc_msgSendSuper2(v43, sel_initWithAssertionIdentifier_ownerIdentifier_, @"HDAppLaunchClientKeepAliveAssertionIdentifier", v22);
    if (v20)
    {
      v24 = [v22 copy];
      clientBundleIdentifier = v20->_clientBundleIdentifier;
      v20->_clientBundleIdentifier = v24;

      objc_storeWeak(&v20->_weakClient, v23);
    }
  }

  v26 = *(*(v1 + 56) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v20;

  v28 = *(*(*(v1 + 56) + 8) + 40);
  if (v28)
  {
    *(v28 + 88) = v5;
  }

  if (v7 > 0.0)
  {
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v7];
    v31 = *(*(*(v1 + 56) + 8) + 40);
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v29, v30, 96);
    }
  }

  _HKInitializeLogging();
  v32 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    v33 = *(v1 + 32);
    v34 = *(v1 + 40);
    *v43 = 138543618;
    *&v43[4] = v33;
    *&v43[12] = 2114;
    *&v43[14] = v34;
    _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_INFO, "%{public}@: Taking keep-alive assertion for %{public}@", v43, 0x16u);
  }

  if ([*(*(v1 + 32) + 32) takeAssertion:*(*(*(v1 + 56) + 8) + 40)])
  {
    if (([*(*(v1 + 32) + 48) containsObject:*(v1 + 40)] & 1) == 0)
    {
      [*(*(v1 + 32) + 8) registerObserver:*(v1 + 32) forBundleIdentifier:*(v1 + 40)];
    }

    [(HDAppLauncher *)*(v1 + 32) _queue_launchClientIfNeeded:?];
  }

LABEL_40:

  v35 = *MEMORY[0x277D85DE8];
}

- (id)_queue_assertionsForClientBundleIdentifier:(uint64_t)identifier
{
  v3 = a2;
  if (identifier)
  {
    dispatch_assert_queue_V2(*(identifier + 24));
    v4 = [*(identifier + 32) activeAssertionsForIdentifier:@"HDAppLaunchClientKeepAliveAssertionIdentifier"];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__HDAppLauncher__queue_assertionsForClientBundleIdentifier___block_invoke;
    v6[3] = &unk_2786220C8;
    v7 = v3;
    identifier = [v4 hk_filter:v6];
  }

  return identifier;
}

- (void)_queue_launchClientIfNeeded:(uint64_t)needed
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (needed)
  {
    dispatch_assert_queue_V2(*(needed + 24));
    v4 = [(HDAppLauncher *)needed _queue_assertionsForClientBundleIdentifier:v3];
    if (([(HDAppLauncher *)needed _queue_clientRequiresLaunch:v3 assertions:v4]& 1) != 0)
    {
      v24 = v3;
      [*(needed + 56) addObject:v3];
      date = [MEMORY[0x277CBEAA8] date];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v7)
      {
        v9 = v7;
        v10 = 0;
        v11 = *v30;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v29 + 1) + 8 * i);
            if (v13)
            {
              objc_setProperty_nonatomic_copy(*(*(&v29 + 1) + 8 * i), v8, date, 96);
              ++*(v13 + 88);
            }

            weakClient = [(HDClientKeepAliveAssertion *)v13 weakClient];
            launchPayloadOptions = [weakClient launchPayloadOptions];

            if (launchPayloadOptions)
            {
              v16 = launchPayloadOptions;

              v10 = v16;
            }
          }

          v9 = [v6 countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v9);
      }

      else
      {
        v10 = 0;
      }

      anyObject = [v6 anyObject];
      ownerIdentifier = [anyObject ownerIdentifier];

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        neededCopy3 = needed;
        v35 = 2114;
        v36 = ownerIdentifier;
        v37 = 2114;
        v38 = v10;
        _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to launch %{public}@ with options %{public}@.", buf, 0x20u);
      }

      v21 = *(needed + 16);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __45__HDAppLauncher__queue_launchClientIfNeeded___block_invoke;
      v25[3] = &unk_2786220F0;
      v26 = ownerIdentifier;
      neededCopy2 = needed;
      v3 = v24;
      v28 = v24;
      v22 = ownerIdentifier;
      [v21 hd_openApplication:v22 optionsDictionary:v10 completion:v25];
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        neededCopy3 = needed;
        v35 = 2114;
        v36 = v3;
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Not attempting to launch %{public}@; does not require launch.", buf, 0x16u);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HDAppLauncher__queue_assertionsForClientBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      v4 = v3[13];
    }

    else
    {
      v4 = 0;
    }

    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_queue_clientRequiresLaunch:(void *)launch assertions:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  launchCopy = launch;
  dispatch_assert_queue_V2(*(self + 24));
  if (![launchCopy count])
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v17 = 138543618;
    selfCopy3 = self;
    v19 = 2114;
    v20 = v5;
    v10 = "%{public}@: %{public}@ has no active assertions.";
    goto LABEL_10;
  }

  v7 = [*(self + 8) processIdentifierForApplicationIdentifier:v5];
  if (v7 < 1)
  {
    if (![*(self + 56) containsObject:v5])
    {
      v14 = 1;
      goto LABEL_13;
    }

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v17 = 138543618;
    selfCopy3 = self;
    v19 = 2114;
    v20 = v5;
    v10 = "%{public}@: %{public}@ is already being launched.";
LABEL_10:
    v11 = v13;
    v12 = 22;
    goto LABEL_11;
  }

  v8 = v7;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543874;
    selfCopy3 = self;
    v19 = 2114;
    v20 = v5;
    v21 = 1026;
    v22 = v8;
    v10 = "%{public}@: %{public}@ is already running with pid %{public}d.";
    v11 = v9;
    v12 = 28;
LABEL_11:
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
  }

LABEL_12:
  v14 = 0;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __45__HDAppLauncher__queue_launchClientIfNeeded___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to open: %{public}@", buf, 0x16u);
    }
  }

  v8 = a1[5];
  v7 = a1[6];
  v9 = *(v8 + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__HDAppLauncher__queue_launchClientIfNeeded___block_invoke_302;
  v12[3] = &unk_278613920;
  v12[4] = v8;
  v13 = v7;
  dispatch_async(v9, v12);

  v10 = *MEMORY[0x277D85DE8];
}

void __45__HDAppLauncher__queue_launchClientIfNeeded___block_invoke_302(uint64_t a1)
{
  [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  [(HDAppLauncher *)v2 _queue_scheduleLaunchForClient:v3];
}

- (void)_queue_scheduleLaunchForClient:(uint64_t)client
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!client)
  {
    goto LABEL_38;
  }

  dispatch_assert_queue_V2(*(client + 24));
  v4 = [(HDAppLauncher *)client _queue_assertionsForClientBundleIdentifier:v3];
  if (([(HDAppLauncher *)client _queue_clientRequiresLaunch:v3 assertions:v4]& 1) == 0)
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      clientCopy4 = client;
      v46 = 2114;
      v47 = *&v3;
      _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Not scheduling launch %{public}@; does not require launch.", buf, 0x16u);
    }

    goto LABEL_37;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v6)
  {

    v9 = 0;
    goto LABEL_33;
  }

  v7 = v6;
  clientCopy2 = client;
  v9 = 0;
  v10 = *v40;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  obj = v5;
  do
  {
    v12 = 0;
    v13 = v9;
    do
    {
      if (*v40 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v39 + 1) + 8 * v12);
      if (v14)
      {
        v15 = *(v14 + 96);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      [date timeIntervalSinceDate:v16];
      v18 = v17;
      v19 = *(clientCopy2 + 64);

      if (v18 <= v19)
      {
        if (v14)
        {
          goto LABEL_14;
        }
      }

      else if (v14)
      {
        *(v14 + 88) = 0;
LABEL_14:
        v20 = *(v14 + 96);
      }

      v9 = HKDateMax();

      if (v14)
      {
        v21 = *(v14 + 88);
      }

      else
      {
        v21 = 0;
      }

      if (v11 >= v21)
      {
        v11 = v21;
      }

      ++v12;
      v13 = v9;
    }

    while (v7 != v12);
    v22 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    v7 = v22;
  }

  while (v22);

  client = clientCopy2;
  if (v11 < *(clientCopy2 + 80))
  {
    v23 = *(clientCopy2 + 72);
    v24 = pow(1.5, v11) * v23;
    [v9 timeIntervalSinceReferenceDate];
    v26 = v25 + v24;
    [date timeIntervalSinceReferenceDate];
    v28 = v26 - v27;
    if (v28 <= 0.0)
    {
      [(HDAppLauncher *)clientCopy2 _queue_launchClientIfNeeded:v3];
    }

    else
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        clientCopy4 = client;
        v46 = 2048;
        v47 = v28;
        _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling launch in %0.2lfs.", buf, 0x16u);
      }

      v30 = dispatch_time(0, (v28 * 1000000000.0));
      v31 = *(client + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__HDAppLauncher__queue_scheduleLaunchForClient___block_invoke;
      block[3] = &unk_278613920;
      block[4] = client;
      v38 = v3;
      dispatch_after(v30, v31, block);
    }

    goto LABEL_36;
  }

LABEL_33:
  _HKInitializeLogging();
  v33 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    clientCopy4 = client;
    _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Too many terminations; not rescheduling a launch.", buf, 0xCu);
  }

LABEL_36:

LABEL_37:
LABEL_38:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  v16 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_queue);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (invalidatedCopy)
    {
      v6 = invalidatedCopy[13];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      v12 = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, "%{public}@: Invalidated keep-alive assertion for %{public}@", &v12, 0x16u);
    }

    v9 = [(HDAppLauncher *)self _queue_assertionsForClientBundleIdentifier:v7];
    v10 = [v9 count];

    if (!v10)
    {
      [(NSMutableSet *)self->_monitoredProcessBundleIdentifiers removeObject:v7];
      [(HDProcessStateManager *)self->_processStateManager unregisterObserver:self forBundleIdentifier:v7];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)processTerminated:(id)terminated
{
  terminatedCopy = terminated;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HDAppLauncher_processTerminated___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = terminatedCopy;
  v6 = terminatedCopy;
  dispatch_async(queue, v7);
}

- (void)unitTest_setBaseLaunchDelay:(double)delay launchCountResetThreshold:(double)threshold maxLaunchCount:(int64_t)count
{
  self->_launchCountResetThreshold = threshold;
  self->_baseLaunchDelay = delay;
  self->_maxLaunchCount = count;
}

- (BOOL)unitTest_hasAssertionForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDAppLauncher_unitTest_hasAssertionForBundleIdentifier___block_invoke;
  block[3] = &unk_27861F190;
  v9 = identifierCopy;
  v10 = &v11;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __58__HDAppLauncher_unitTest_hasAssertionForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [(HDAppLauncher *)*(a1 + 32) _queue_assertionsForClientBundleIdentifier:?];
  *(*(*(a1 + 48) + 8) + 24) = [v2 count] != 0;
}

@end