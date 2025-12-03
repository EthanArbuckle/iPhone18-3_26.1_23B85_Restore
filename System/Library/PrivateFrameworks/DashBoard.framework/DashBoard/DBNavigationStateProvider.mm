@interface DBNavigationStateProvider
- (DBAppHistoryAppDockProviding)appHistoryAppDockProvider;
- (DBIconProviding)iconProvider;
- (DBNavigationAppInfoProviding)infoProvider;
- (DBNavigationStateProvider)init;
- (NSArray)navigatingIdentifiers;
- (NSString)mostRecentClusterNavigatingApp;
- (NSString)mostRecentDashboardNavigatingApp;
- (NSString)mostRecentNavigatingApp;
- (id)_initWithActiveNavigationIdentifiersObserver:(id)observer;
- (void)_updateMostRecentClusterApp;
- (void)_updateMostRecentDockApp;
- (void)activeNavigationIdentifiersObserver:(id)observer updatedActiveNavigationIdentifiers:(id)identifiers;
- (void)addObserver:(id)observer;
- (void)appHistory:(id)history mostRecentHomeScreenUpdatedTo:(id)to;
- (void)appHistory:(id)history mostRecentNavigationAppUpdatedTo:(id)to;
- (void)appHistory:(id)history mostRecentOtherAppUpdatedTo:(id)to;
- (void)applicationController:(id)controller addedApplications:(id)applications updatedApplications:(id)updatedApplications removedApplications:(id)removedApplications;
- (void)removeObserver:(id)observer;
- (void)setIconProvider:(id)provider;
@end

@implementation DBNavigationStateProvider

- (NSArray)navigatingIdentifiers
{
  activeNavigationIdentifiersObserver = [(DBNavigationStateProvider *)self activeNavigationIdentifiersObserver];
  activeNavigationIdentifiers = [activeNavigationIdentifiersObserver activeNavigationIdentifiers];
  v4 = [activeNavigationIdentifiers copy];

  return v4;
}

- (void)_updateMostRecentDockApp
{
  v13 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__DBNavigationStateProvider__updateMostRecentDockApp__block_invoke;
  aBlock[3] = &unk_278F03A08;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  navigatingIdentifiers = [(DBNavigationStateProvider *)self navigatingIdentifiers];
  v5 = [navigatingIdentifiers db_map:v3];

  lastObject = [v5 lastObject];
  v7 = lastObject;
  if (lastObject)
  {
    v8 = [lastObject copy];
    [(DBNavigationStateProvider *)self setMostRecentlyActivatedDashboardApp:v8];

    v9 = DBLogForCategory(0x16uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_INFO, "Updated most recently activated dashboard app to %{public}@", buf, 0xCu);
    }
  }
}

- (void)_updateMostRecentClusterApp
{
  v13 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__DBNavigationStateProvider__updateMostRecentClusterApp__block_invoke;
  aBlock[3] = &unk_278F03A08;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  navigatingIdentifiers = [(DBNavigationStateProvider *)self navigatingIdentifiers];
  v5 = [navigatingIdentifiers db_map:v3];

  lastObject = [v5 lastObject];
  v7 = lastObject;
  if (lastObject)
  {
    v8 = [lastObject copy];
    [(DBNavigationStateProvider *)self setMostRecentlyActivatedClusterApp:v8];

    v9 = DBLogForCategory(0x16uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_INFO, "Updated most recently activated cluster app to %{public}@", buf, 0xCu);
    }
  }
}

- (DBNavigationAppInfoProviding)infoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_infoProvider);

  return WeakRetained;
}

- (DBIconProviding)iconProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconProvider);

  return WeakRetained;
}

- (NSString)mostRecentDashboardNavigatingApp
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__DBNavigationStateProvider_mostRecentDashboardNavigatingApp__block_invoke;
  aBlock[3] = &unk_278F03A08;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
  appHistoryAppDockProvider = [(DBNavigationStateProvider *)self appHistoryAppDockProvider];
  v6 = [appHistoryAppDockProvider orderedBundleIdentifiersMatchingDockCategory:1];
  [v4 addObjectsFromArray:v6];

  navigatingIdentifiers = [(DBNavigationStateProvider *)self navigatingIdentifiers];
  [v4 addObjectsFromArray:navigatingIdentifiers];

  mostRecentlyActivatedDashboardApp = [(DBNavigationStateProvider *)self mostRecentlyActivatedDashboardApp];
  if (mostRecentlyActivatedDashboardApp)
  {
    [v4 addObject:mostRecentlyActivatedDashboardApp];
  }

  v9 = [v4 indexesOfObjectsPassingTest:&__block_literal_global_80];
  [v4 removeObjectsAtIndexes:v9];
  array = [v4 array];
  v11 = [array db_map:v3];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  if ([v4 containsObject:mostRecentlyActivatedDashboardApp])
  {
    firstObject = mostRecentlyActivatedDashboardApp;
  }

  else
  {
    firstObject = [v11 firstObject];
  }

  v21 = firstObject;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__DBNavigationStateProvider_mostRecentDashboardNavigatingApp__block_invoke_3;
  v15[3] = &unk_278F03A50;
  v15[4] = self;
  v15[5] = &v16;
  [v11 enumerateObjectsUsingBlock:v15];
  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

- (DBAppHistoryAppDockProviding)appHistoryAppDockProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_appHistoryAppDockProvider);

  return WeakRetained;
}

id __61__DBNavigationStateProvider_mostRecentDashboardNavigatingApp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) infoProvider];
  if ([v4 bundleIdentifierSupportsDashboard:v3])
  {
    v5 = [*(a1 + 32) iconProvider];
    v6 = [v5 isIconVisibleForIdentifier:v3];

    if (v6)
    {
      v7 = v3;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

void __61__DBNavigationStateProvider_mostRecentDashboardNavigatingApp__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [*(a1 + 32) navigatingIdentifiers];
  v7 = [v6 containsObject:v11];

  if (v7)
  {
    v8 = [v11 copy];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

uint64_t __61__DBNavigationStateProvider_mostRecentDashboardNavigatingApp__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[DBApplicationController sharedInstance];
  v4 = [v3 applicationWithBundleIdentifier:v2];

  v5 = [v4 isLockedOrHidden];
  return v5;
}

- (DBNavigationStateProvider)init
{
  v3 = objc_alloc_init(MEMORY[0x277CF8978]);
  v4 = [(DBNavigationStateProvider *)self _initWithActiveNavigationIdentifiersObserver:v3];

  return v4;
}

- (id)_initWithActiveNavigationIdentifiersObserver:(id)observer
{
  observerCopy = observer;
  v11.receiver = self;
  v11.super_class = DBNavigationStateProvider;
  v6 = [(DBNavigationStateProvider *)&v11 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285ADA590];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_activeNavigationIdentifiersObserver, observer);
    [(CARActiveNavigationIdentifiersObserver *)v6->_activeNavigationIdentifiersObserver addObserver:v6];
    v9 = +[DBApplicationController sharedInstance];
    [v9 addObserver:v6];
  }

  return v6;
}

- (void)setIconProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_iconProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_iconProvider, obj);
    if (DBIsInternalInstall_onceToken_2 != -1)
    {
      [DBNavigationStateProvider setIconProvider:];
    }

    if (DBIsInternalInstall_isInternal_2 != 1 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLForKey:", @"CARDisableAutoLaunchNavigation"), v5, (v6 & 1) == 0))
    {
      [(DBNavigationStateProvider *)self _updateMostRecentDockApp];
      [(DBNavigationStateProvider *)self _updateMostRecentClusterApp];
      observers = [(DBNavigationStateProvider *)self observers];
      activeNavigationIdentifiersObserver = [(DBNavigationStateProvider *)self activeNavigationIdentifiersObserver];
      activeNavigationIdentifiers = [activeNavigationIdentifiersObserver activeNavigationIdentifiers];
      [observers navigationStateProvider:self navigatingIdentifiersDidChange:activeNavigationIdentifiers];
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBNavigationStateProvider *)self observers];
  [observers addObserver:observerCopy];

  if (DBIsInternalInstall_onceToken_2 != -1)
  {
    [DBNavigationStateProvider setIconProvider:];
  }

  if (DBIsInternalInstall_isInternal_2 != 1 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLForKey:", @"CARDisableAutoLaunchNavigation"), v5, (v6 & 1) == 0))
  {
    navigatingIdentifiers = [(DBNavigationStateProvider *)self navigatingIdentifiers];
    [observerCopy navigationStateProvider:self navigatingIdentifiersDidChange:navigatingIdentifiers];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBNavigationStateProvider *)self observers];
  [observers removeObserver:observerCopy];
}

- (NSString)mostRecentClusterNavigatingApp
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__DBNavigationStateProvider_mostRecentClusterNavigatingApp__block_invoke;
  aBlock[3] = &unk_278F03A08;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
  appHistoryAppDockProvider = [(DBNavigationStateProvider *)self appHistoryAppDockProvider];
  v6 = [appHistoryAppDockProvider orderedBundleIdentifiersMatchingDockCategory:1];
  [v4 addObjectsFromArray:v6];

  navigatingIdentifiers = [(DBNavigationStateProvider *)self navigatingIdentifiers];
  [v4 addObjectsFromArray:navigatingIdentifiers];

  mostRecentlyActivatedClusterApp = [(DBNavigationStateProvider *)self mostRecentlyActivatedClusterApp];
  if (mostRecentlyActivatedClusterApp)
  {
    [v4 addObject:mostRecentlyActivatedClusterApp];
  }

  v9 = [v4 indexesOfObjectsPassingTest:&__block_literal_global_26];
  [v4 removeObjectsAtIndexes:v9];
  array = [v4 array];
  v11 = [array db_map:v3];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  if ([v4 containsObject:mostRecentlyActivatedClusterApp])
  {
    firstObject = mostRecentlyActivatedClusterApp;
  }

  else
  {
    firstObject = [v11 firstObject];
  }

  v21 = firstObject;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__DBNavigationStateProvider_mostRecentClusterNavigatingApp__block_invoke_77;
  v15[3] = &unk_278F03A50;
  v15[4] = self;
  v15[5] = &v16;
  [v11 enumerateObjectsUsingBlock:v15];
  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

id __59__DBNavigationStateProvider_mostRecentClusterNavigatingApp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) infoProvider];
  if ([v4 bundleIdentifierSupportsInstrumentCluster:v3])
  {
    v5 = [*(a1 + 32) iconProvider];
    v6 = [v5 isIconVisibleForIdentifier:v3];

    if (v6)
    {
      v7 = v3;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

uint64_t __59__DBNavigationStateProvider_mostRecentClusterNavigatingApp__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[DBApplicationController sharedInstance];
  v4 = [v3 applicationWithBundleIdentifier:v2];

  v5 = [v4 isLockedOrHidden];
  return v5;
}

void __59__DBNavigationStateProvider_mostRecentClusterNavigatingApp__block_invoke_77(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [*(a1 + 32) navigatingIdentifiers];
  v7 = [v6 containsObject:v11];

  if (v7)
  {
    v8 = [v11 copy];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (NSString)mostRecentNavigatingApp
{
  navigatingIdentifiers = [(DBNavigationStateProvider *)self navigatingIdentifiers];
  lastObject = [navigatingIdentifiers lastObject];

  return lastObject;
}

id __53__DBNavigationStateProvider__updateMostRecentDockApp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) infoProvider];
  if ([v4 bundleIdentifierSupportsDashboard:v3])
  {
    v5 = [*(a1 + 32) iconProvider];
    v6 = [v5 isIconVisibleForIdentifier:v3];

    if (v6)
    {
      v7 = v3;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

id __56__DBNavigationStateProvider__updateMostRecentClusterApp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) infoProvider];
  if ([v4 bundleIdentifierSupportsInstrumentCluster:v3])
  {
    v5 = [*(a1 + 32) iconProvider];
    v6 = [v5 isIconVisibleForIdentifier:v3];

    if (v6)
    {
      v7 = v3;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)appHistory:(id)history mostRecentHomeScreenUpdatedTo:(id)to
{
  [(DBNavigationStateProvider *)self _updateMostRecentDockApp:history];

  [(DBNavigationStateProvider *)self _updateMostRecentClusterApp];
}

- (void)appHistory:(id)history mostRecentNavigationAppUpdatedTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v6 = DBLogForCategory(0x16uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 138543362;
    v15 = toCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_INFO, "Most recent navigation app updated to %{public}@", &v14, 0xCu);
  }

  infoProvider = [(DBNavigationStateProvider *)self infoProvider];
  if ([infoProvider bundleIdentifierSupportsDashboard:toCopy])
  {
    iconProvider = [(DBNavigationStateProvider *)self iconProvider];
    v9 = [iconProvider isIconVisibleForIdentifier:toCopy];

    if (v9)
    {
      [(DBNavigationStateProvider *)self setMostRecentlyActivatedDashboardApp:toCopy];
    }
  }

  else
  {
  }

  infoProvider2 = [(DBNavigationStateProvider *)self infoProvider];
  if ([infoProvider2 bundleIdentifierSupportsInstrumentCluster:toCopy])
  {
    iconProvider2 = [(DBNavigationStateProvider *)self iconProvider];
    v12 = [iconProvider2 isIconVisibleForIdentifier:toCopy];

    if (v12)
    {
      [(DBNavigationStateProvider *)self setMostRecentlyActivatedClusterApp:toCopy];
    }
  }

  else
  {
  }

  observers = [(DBNavigationStateProvider *)self observers];
  [observers navigationStateProvider:self frontmostIdentifierDidChange:toCopy];
}

- (void)appHistory:(id)history mostRecentOtherAppUpdatedTo:(id)to
{
  toCopy = to;
  infoProvider = [(DBNavigationStateProvider *)self infoProvider];
  if ([infoProvider bundleIdentifierIsCertificationApp:toCopy])
  {
    infoProvider2 = [(DBNavigationStateProvider *)self infoProvider];
    v7 = [infoProvider2 bundleIdentifierSupportsInstrumentCluster:toCopy];

    if (!v7)
    {
      goto LABEL_5;
    }

    infoProvider = [(DBNavigationStateProvider *)self observers];
    [infoProvider navigationStateProvider:self frontmostIdentifierDidChange:toCopy];
  }

LABEL_5:
}

- (void)activeNavigationIdentifiersObserver:(id)observer updatedActiveNavigationIdentifiers:(id)identifiers
{
  v14 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  identifiersCopy = identifiers;
  v8 = DBLogForCategory(0x16uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = identifiersCopy;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Active navigation identifiers changed: %{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__DBNavigationStateProvider_activeNavigationIdentifiersObserver_updatedActiveNavigationIdentifiers___block_invoke;
  v10[3] = &unk_278F014B8;
  v10[4] = self;
  v11 = observerCopy;
  v9 = observerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __100__DBNavigationStateProvider_activeNavigationIdentifiersObserver_updatedActiveNavigationIdentifiers___block_invoke(uint64_t a1)
{
  if (DBIsInternalInstall_onceToken_2 != -1)
  {
    [DBNavigationStateProvider setIconProvider:];
  }

  if (DBIsInternalInstall_isInternal_2 != 1 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "BOOLForKey:", @"CARDisableAutoLaunchNavigation"), v2, (v3 & 1) == 0))
  {
    [*(a1 + 32) _updateMostRecentDockApp];
    [*(a1 + 32) _updateMostRecentClusterApp];
    v6 = [*(a1 + 32) observers];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) activeNavigationIdentifiers];
    [v6 navigationStateProvider:v4 navigatingIdentifiersDidChange:v5];
  }
}

- (void)applicationController:(id)controller addedApplications:(id)applications updatedApplications:(id)updatedApplications removedApplications:(id)removedApplications
{
  controllerCopy = controller;
  applicationsCopy = applications;
  updatedApplicationsCopy = updatedApplications;
  removedApplicationsCopy = removedApplications;
  if (DBIsInternalInstall_onceToken_2 != -1)
  {
    [DBNavigationStateProvider setIconProvider:];
  }

  if (DBIsInternalInstall_isInternal_2 != 1 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLForKey:", @"CARDisableAutoLaunchNavigation"), v13, (v14 & 1) == 0))
  {
    [(DBNavigationStateProvider *)self _updateMostRecentDockApp];
    [(DBNavigationStateProvider *)self _updateMostRecentClusterApp];
    observers = [(DBNavigationStateProvider *)self observers];
    activeNavigationIdentifiersObserver = [(DBNavigationStateProvider *)self activeNavigationIdentifiersObserver];
    activeNavigationIdentifiers = [activeNavigationIdentifiersObserver activeNavigationIdentifiers];
    [observers navigationStateProvider:self navigatingIdentifiersDidChange:activeNavigationIdentifiers];
  }
}

@end