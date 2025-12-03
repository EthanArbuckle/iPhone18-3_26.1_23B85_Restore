@interface DBAppProtectionCoordinator
- (BOOL)applicationBundleIdentifierIsLockedOrHidden:(id)hidden;
- (DBAppProtectionCoordinator)init;
- (void)addObserver:(id)observer;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)removeObserver:(id)observer;
@end

@implementation DBAppProtectionCoordinator

- (DBAppProtectionCoordinator)init
{
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = DBAppProtectionCoordinator;
  v2 = [(DBAppProtectionCoordinator *)&v27 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    subjectMonitorRegistry = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v5 = [subjectMonitorRegistry addMonitor:v3 subjectMask:1];

    lockedApplications = [MEMORY[0x277CEBE80] lockedApplications];
    hiddenApplications = [MEMORY[0x277CEBE80] hiddenApplications];
    v8 = DBLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = lockedApplications;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[DBAppProtectionCoordinator] App protection locked applications: %@", buf, 0xCu);
    }

    v9 = DBLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = hiddenApplications;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "[DBAppProtectionCoordinator] App protection hidden applications: %@", buf, 0xCu);
    }

    os_unfair_lock_lock(&v3->_lock);
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    lockedApplicationBundleIdentifiers = v3->_lockedApplicationBundleIdentifiers;
    v3->_lockedApplicationBundleIdentifiers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hiddenApplicationBundleIdentifiers = v3->_hiddenApplicationBundleIdentifiers;
    v3->_hiddenApplicationBundleIdentifiers = v12;

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __34__DBAppProtectionCoordinator_init__block_invoke;
    v25[3] = &unk_278F02B08;
    v14 = v3;
    v26 = v14;
    [lockedApplications enumerateObjectsUsingBlock:v25];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __34__DBAppProtectionCoordinator_init__block_invoke_2;
    v23 = &unk_278F02B08;
    v15 = v14;
    v24 = v15;
    [hiddenApplications enumerateObjectsUsingBlock:&v20];
    os_unfair_lock_unlock(&v3->_lock);
    v16 = objc_alloc(MEMORY[0x277CF89C0]);
    v17 = [v16 initWithProtocol:{&unk_285AEEA28, v20, v21, v22, v23}];
    observers = v15->_observers;
    v15->_observers = v17;
  }

  return v3;
}

void __34__DBAppProtectionCoordinator_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [a2 bundleIdentifier];
  [v2 addObject:v3];
}

void __34__DBAppProtectionCoordinator_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [a2 bundleIdentifier];
  [v2 addObject:v3];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBAppProtectionCoordinator *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBAppProtectionCoordinator *)self observers];
  [observers removeObserver:observerCopy];
}

- (BOOL)applicationBundleIdentifierIsLockedOrHidden:(id)hidden
{
  hiddenCopy = hidden;
  os_unfair_lock_lock(&self->_lock);
  lockedApplicationBundleIdentifiers = [(DBAppProtectionCoordinator *)self lockedApplicationBundleIdentifiers];
  if ([lockedApplicationBundleIdentifiers containsObject:hiddenCopy])
  {
    v6 = 1;
  }

  else
  {
    hiddenApplicationBundleIdentifiers = [(DBAppProtectionCoordinator *)self hiddenApplicationBundleIdentifiers];
    v6 = [hiddenApplicationBundleIdentifiers containsObject:hiddenCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  changedCopy = changed;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__DBAppProtectionCoordinator_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_278F014B8;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __75__DBAppProtectionCoordinator_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[DBAppProtectionCoordinator] App protection subjects changed: %@", buf, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 40) + 8));
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __75__DBAppProtectionCoordinator_appProtectionSubjectsChanged_forSubscription___block_invoke_68;
  v13 = &unk_278F02B30;
  v5 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:&v10];
  os_unfair_lock_unlock((*(a1 + 40) + 8));
  v7 = [*(a1 + 40) observers];
  v8 = *(a1 + 40);
  v9 = [v6 copy];
  [v7 appProtectionCoordinator:v8 didUpdateBundleIdentifiers:v9];
}

void __75__DBAppProtectionCoordinator_appProtectionSubjectsChanged_forSubscription___block_invoke_68(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 bundleIdentifier];
  v9 = DBLogForCategory(1uLL);
  v10 = v9;
  if (v7 && v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 isLocked];
      v12 = @"unlocked";
      if (v11)
      {
        v12 = @"locked";
      }

      v22 = 138543618;
      v23 = v8;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "[DBAppProtectionCoordinator] App %{public}@ is now %{public}@", &v22, 0x16u);
    }

    v13 = [v7 isLocked];
    v14 = [*(a1 + 32) lockedApplicationBundleIdentifiers];
    v15 = v14;
    if (v13)
    {
      [v14 addObject:v8];
    }

    else
    {
      [v14 removeObject:v8];
    }

    v16 = DBLogForCategory(1uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v7 isHidden];
      v18 = @"unhidden";
      if (v17)
      {
        v18 = @"hidden";
      }

      v22 = 138543618;
      v23 = v8;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "[DBAppProtectionCoordinator] App %{public}@ is now %{public}@", &v22, 0x16u);
    }

    v19 = [v7 isHidden];
    v20 = [*(a1 + 32) hiddenApplicationBundleIdentifiers];
    v21 = v20;
    if (v19)
    {
      [v20 addObject:v8];
    }

    else
    {
      [v20 removeObject:v8];
    }

    [*(a1 + 40) addObject:v8];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __75__DBAppProtectionCoordinator_appProtectionSubjectsChanged_forSubscription___block_invoke_68_cold_1(v5, v10);
    }
  }
}

void __75__DBAppProtectionCoordinator_appProtectionSubjectsChanged_forSubscription___block_invoke_68_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "[DBAppProtectionCoordinator] Failed to find bundle identifier for subject: %{public}@", &v2, 0xCu);
}

@end