@interface DBAppHistory
+ (id)availableApplicationContexts;
+ (id)contextForApplicationCategory:(unint64_t)category;
+ (unint64_t)applicationCategoryForURL:(id)l;
- (BOOL)_evaluatePolicyForBundleIdentifier:(id)identifier withBlock:(id)block;
- (BOOL)_isCommunicationApplicationForBundleIdentifier:(id)identifier;
- (BOOL)_isMapsApplicationForBundleIdentifier:(id)identifier;
- (BOOL)_isNowPlayingApplicationForBundleIdentifier:(id)identifier;
- (BOOL)applicationVisibleInCarPlay:(id)play withIconProvider:(id)provider;
- (BOOL)isBundleIdentifierValidForDock:(id)dock;
- (DBAppHistory)init;
- (NSArray)orderedAppHistory;
- (double)lastActivationTimeForApplication:(id)application;
- (double)lastActivationTimeForBundleIdentifier:(id)identifier;
- (id)_allInstalledApplicationsInCategories:(id)categories defaultAppPreferenceHints:(unint64_t)hints;
- (id)_applicationForBundleIdentifier:(id)identifier;
- (id)_orderedAppsForBundleIdentifiers:(id)identifiers;
- (id)_preferredBundleIdentifierInCategory:(unint64_t)category defaultAppPreferenceHints:(unint64_t)hints;
- (id)orderedAppsMatchingCategory:(unint64_t)category;
- (id)orderedAppsMatchingDockCategories:(id)categories defaultAppPreferenceHints:(unint64_t)hints;
- (id)orderedAppsMatchingDockCategory:(unint64_t)category;
- (id)orderedBundleIdentifiersMatchingDockCategory:(unint64_t)category;
- (id)policyForBundleIdentifier:(id)identifier;
- (unint64_t)appDockCategoryForBundleIdentifier:(id)identifier;
- (unint64_t)applicationCategoryForBundleIdentifier:(id)identifier;
- (unint64_t)currentOwnerForContext:(id)context;
- (void)_bundleIdentifierDidBecomeVisible:(id)visible previousBundleIdentifier:(id)identifier;
- (void)_evaluateUniversalLinksForURL:(id)l withIconProvider:(id)provider completion:(id)completion;
- (void)_nowPlayingWillAppear:(id)appear;
- (void)_nowPlayingWillDisappear:(id)disappear;
- (void)_persistSessionUIContextOwnership;
- (void)_sessionDidConnect:(id)connect environmentConfiguration:(id)configuration;
- (void)_sessionDidDisconnect;
- (void)addObserver:(id)observer;
- (void)applySessionAppContexts:(id)contexts;
- (void)applySessionEchoContexts:(id)contexts;
- (void)dealloc;
- (void)openApplicationURL:(id)l withIconProvider:(id)provider activationSettings:(id)settings completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)resetAppHistory;
- (void)setDashboardAppOnDisconnect:(id)disconnect;
- (void)siriPresentedIntentForBundleIdentifier:(id)identifier;
- (void)updateOwner:(unint64_t)owner forContext:(id)context;
- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState;
@end

@implementation DBAppHistory

- (NSArray)orderedAppHistory
{
  appHistory = [(DBAppHistory *)self appHistory];
  allKeys = [appHistory allKeys];
  v5 = [(DBAppHistory *)self _orderedAppsForBundleIdentifiers:allKeys];

  return v5;
}

- (BOOL)isBundleIdentifierValidForDock:(id)dock
{
  v3 = isBundleIdentifierValidForDock__onceToken;
  dockCopy = dock;
  if (v3 != -1)
  {
    [DBAppHistory(AppDock) isBundleIdentifierValidForDock:];
  }

  v5 = [isBundleIdentifierValidForDock__invalidDockBundles containsObject:dockCopy];

  return v5 ^ 1;
}

void __56__DBAppHistory_AppDock__isBundleIdentifierValidForDock___block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.siri";
  v2[1] = @"com.apple.InCallService";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];
  v1 = isBundleIdentifierValidForDock__invalidDockBundles;
  isBundleIdentifierValidForDock__invalidDockBundles = v0;
}

- (unint64_t)appDockCategoryForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(DBAppHistory *)self _isNowPlayingApplicationForBundleIdentifier:identifierCopy])
  {
    v5 = 2;
  }

  else if ([(DBAppHistory *)self _isMapsApplicationForBundleIdentifier:identifierCopy])
  {
    v5 = 1;
  }

  else if ([(DBAppHistory *)self _isCommunicationApplicationForBundleIdentifier:identifierCopy])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)orderedBundleIdentifiersMatchingDockCategory:(unint64_t)category
{
  v3 = [(DBAppHistory *)self orderedAppsMatchingDockCategory:category];
  v4 = [v3 db_map:&__block_literal_global_61];

  return v4;
}

- (id)orderedAppsMatchingDockCategory:(unint64_t)category
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [(DBAppHistory *)self orderedAppsMatchingDockCategories:v5 defaultAppPreferenceHints:0];

  return v6;
}

- (id)orderedAppsMatchingDockCategories:(id)categories defaultAppPreferenceHints:(unint64_t)hints
{
  v29 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(DBAppHistory *)self orderedAppHistory];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        v12 = [(DBAppHistory *)self appDockCategoryForBundleIdentifier:bundleIdentifier];

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __85__DBAppHistory_AppDock__orderedAppsMatchingDockCategories_defaultAppPreferenceHints___block_invoke;
        aBlock[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
        aBlock[4] = v12;
        v13 = _Block_copy(aBlock);
        if ([categoriesCopy bs_containsObjectPassingTest:v13])
        {
          [array addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v14 = [(DBAppHistory *)self _allInstalledApplicationsInCategories:categoriesCopy defaultAppPreferenceHints:hints];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__DBAppHistory_AppDock__orderedAppsMatchingDockCategories_defaultAppPreferenceHints___block_invoke_2;
  v21[3] = &unk_278F01420;
  v22 = array;
  v15 = array;
  [v14 bs_each:v21];
  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v15];

  return v16;
}

void __85__DBAppHistory_AppDock__orderedAppsMatchingDockCategories_defaultAppPreferenceHints___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)_evaluatePolicyForBundleIdentifier:(id)identifier withBlock:(id)block
{
  blockCopy = block;
  v7 = [(DBAppHistory *)self policyForBundleIdentifier:identifier];
  LOBYTE(self) = blockCopy[2](blockCopy, v7);

  return self;
}

- (BOOL)_isNowPlayingApplicationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = ([identifierCopy isEqualToString:@"com.apple.Music"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.CarRadio") & 1) != 0 || -[DBAppHistory _evaluatePolicyForBundleIdentifier:withBlock:](self, "_evaluatePolicyForBundleIdentifier:withBlock:", identifierCopy, &__block_literal_global_68);

  return v5;
}

BOOL __69__DBAppHistory_AppDock___isNowPlayingApplicationForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 launchUsingMusicUIService])
  {
    v3 = 1;
  }

  else if ([v2 launchUsingTemplateUI])
  {
    v3 = [v2 applicationCategory] == 16;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_isMapsApplicationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = ([identifierCopy isEqualToString:@"com.apple.Maps"] & 1) != 0 || -[DBAppHistory _evaluatePolicyForBundleIdentifier:withBlock:](self, "_evaluatePolicyForBundleIdentifier:withBlock:", identifierCopy, &__block_literal_global_70);

  return v5;
}

BOOL __63__DBAppHistory_AppDock___isMapsApplicationForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 launchUsingTemplateUI])
  {
    v3 = [v2 applicationCategory] == 8;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_isCommunicationApplicationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = ([identifierCopy isEqualToString:@"com.apple.mobilephone"] & 1) != 0 || -[DBAppHistory _evaluatePolicyForBundleIdentifier:withBlock:](self, "_evaluatePolicyForBundleIdentifier:withBlock:", identifierCopy, &__block_literal_global_72);

  return v5;
}

- (id)_preferredBundleIdentifierInCategory:(unint64_t)category defaultAppPreferenceHints:(unint64_t)hints
{
  if (category > 1)
  {
    if (category == 2)
    {
      v4 = DBMusicBundleIdentifier;
      return *v4;
    }

    goto LABEL_7;
  }

  if (category)
  {
    if (category == 1)
    {
      v4 = DBMapsBundleIdentifier;
      return *v4;
    }

LABEL_7:
    v4 = DBMessagesBundleIdentifier;
    return *v4;
  }

  v4 = DBSettingsBundleIdentifier;
  if ((hints & 1) == 0)
  {
    v4 = DBMessagesBundleIdentifier;
  }

  return *v4;
}

- (id)_allInstalledApplicationsInCategories:(id)categories defaultAppPreferenceHints:(unint64_t)hints
{
  categoriesCopy = categories;
  if ([categoriesCopy count])
  {
    v7 = +[DBApplicationController sharedInstance];
    allApplications = [v7 allApplications];
    v9 = [allApplications copy];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __89__DBAppHistory_AppDock___allInstalledApplicationsInCategories_defaultAppPreferenceHints___block_invoke;
    v20[3] = &unk_278F01468;
    v20[4] = self;
    v10 = categoriesCopy;
    v21 = v10;
    v11 = [v9 bs_filter:v20];

    firstObject = [v10 firstObject];
    unsignedIntegerValue = [firstObject unsignedIntegerValue];

    v14 = [(DBAppHistory *)self _preferredBundleIdentifierInCategory:unsignedIntegerValue defaultAppPreferenceHints:hints];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__DBAppHistory_AppDock___allInstalledApplicationsInCategories_defaultAppPreferenceHints___block_invoke_3;
    v18[3] = &unk_278F01490;
    v19 = v14;
    v15 = v14;
    v16 = [v11 sortedArrayUsingComparator:v18];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

uint64_t __89__DBAppHistory_AppDock___allInstalledApplicationsInCategories_defaultAppPreferenceHints___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 bundleIdentifier];
  v5 = [v3 appDockCategoryForBundleIdentifier:v4];

  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__DBAppHistory_AppDock___allInstalledApplicationsInCategories_defaultAppPreferenceHints___block_invoke_2;
  v8[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  v8[4] = v5;
  return [v6 bs_containsObjectPassingTest:v8];
}

uint64_t __89__DBAppHistory_AppDock___allInstalledApplicationsInCategories_defaultAppPreferenceHints___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 bundleIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v10 = [v6 bundleIdentifier];
    v11 = [v10 isEqualToString:*(a1 + 32)];

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v12 = [v5 isFirstParty];
      v13 = [v6 isFirstParty];
      if (v12)
      {
        v9 = -1;
      }

      else
      {
        v9 = v13;
      }
    }
  }

  return v9;
}

- (DBAppHistory)init
{
  v22.receiver = self;
  v22.super_class = DBAppHistory;
  v2 = [(DBAppHistory *)&v22 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    appHistory = v2->_appHistory;
    v2->_appHistory = dictionary;

    array = [MEMORY[0x277CBEA60] array];
    sessionAppContextURLs = v2->_sessionAppContextURLs;
    v2->_sessionAppContextURLs = array;

    array2 = [MEMORY[0x277CBEA60] array];
    sessionEchoContextURLs = v2->_sessionEchoContextURLs;
    v2->_sessionEchoContextURLs = array2;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    sessionContextOwners = v2->_sessionContextOwners;
    v2->_sessionContextOwners = dictionary2;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [standardUserDefaults dictionaryForKey:@"CARRecentAppHistory"];
    v13 = [standardUserDefaults dictionaryForKey:@"CARLastSessionUIContextOwners"];
    if (v13)
    {
      sessionContextOwners = [(DBAppHistory *)v2 sessionContextOwners];
      [sessionContextOwners setDictionary:v13];
    }

    if (v12)
    {
      appHistory = [(DBAppHistory *)v2 appHistory];
      [appHistory setDictionary:v12];
    }

    else
    {
      appHistory = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
      v16 = [appHistory arrayForKey:@"CarDisplayRecentlyUsedApps"];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __20__DBAppHistory_init__block_invoke;
      v20[3] = &unk_278F02858;
      v21 = v2;
      [v16 enumerateObjectsWithOptions:2 usingBlock:v20];
    }

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__nowPlayingWillAppear_ name:@"MCDNowPlayingWillAppearNotification" object:0 suspensionBehavior:4];

    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__nowPlayingWillDisappear_ name:@"MCDNowPlayingWillDisappearNotification" object:0 suspensionBehavior:4];
  }

  return v2;
}

void __20__DBAppHistory_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = MEMORY[0x277CBEAA8];
  v5 = a2;
  v8 = [v4 date];
  [v8 timeIntervalSince1970];
  v6 = [v3 numberWithDouble:?];
  v7 = [*(a1 + 32) appHistory];
  [v7 setObject:v6 forKeyedSubscript:v5];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!self->_observers)
  {
    v4 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285B040A0];
    observers = self->_observers;
    self->_observers = v4;
  }

  observers = [(DBAppHistory *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBAppHistory *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DBAppHistory;
  [(DBAppHistory *)&v4 dealloc];
}

- (void)resetAppHistory
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(DBAppHistory *)self setAppHistory:dictionary];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
  [standardUserDefaults setObject:dictionary2 forKey:@"CARRecentAppHistory"];
}

- (void)_sessionDidConnect:(id)connect environmentConfiguration:(id)configuration
{
  v20 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  configurationCopy = configuration;
  configuration = [connectCopy configuration];
  lastOnDisplayUIContextURLs = [configuration lastOnDisplayUIContextURLs];

  configuration2 = [connectCopy configuration];
  nowOnDisplayUIContextURLs = [configuration2 nowOnDisplayUIContextURLs];

  v12 = DBLogForCategory(0);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (lastOnDisplayUIContextURLs)
  {
    if (v13)
    {
      *buf = 138412290;
      v19 = lastOnDisplayUIContextURLs;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Applying session UI contexts: %@", buf, 0xCu);
    }

    [(DBAppHistory *)self applySessionAppContexts:lastOnDisplayUIContextURLs];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__DBAppHistory__sessionDidConnect_environmentConfiguration___block_invoke;
    v16[3] = &unk_278F021F8;
    v16[4] = self;
    v17 = connectCopy;
    [configurationCopy fetchEnhancedIntegrationStatusWithCompletion:v16];
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "No available session UI contexts.", buf, 2u);
    }
  }

  v14 = DBLogForCategory(0);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (nowOnDisplayUIContextURLs)
  {
    if (v15)
    {
      *buf = 138412290;
      v19 = nowOnDisplayUIContextURLs;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "Applying session echo contexts: %@", buf, 0xCu);
    }

    [(DBAppHistory *)self applySessionEchoContexts:nowOnDisplayUIContextURLs];
  }

  else
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "No available session echo contexts.", buf, 2u);
    }
  }
}

void __60__DBAppHistory__sessionDidConnect_environmentConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v4 = DBLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "No enhanced integration consent for launch UI Contexts.", buf, 2u);
    }
  }

  v5 = a2 == 2;
  v6 = [*(a1 + 32) sessionAppContextURLs];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__DBAppHistory__sessionDidConnect_environmentConfiguration___block_invoke_282;
  v8[3] = &unk_278F02880;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v10 = v5;
  v9 = v7;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __60__DBAppHistory__sessionDidConnect_environmentConfiguration___block_invoke_282(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) sessionContextOwners];
  v5 = [v4 objectForKey:v3];

  if (!v5)
  {
    v11 = DBLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v3;
      v12 = "No known context owner for context %{public}@, defaulting to accessory.";
LABEL_11:
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  if ([v5 unsignedIntegerValue] != 1)
  {
    v11 = DBLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v3;
      v12 = "Accessory is already owner of context %{public}@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 48);
  v7 = DBLogForCategory(0);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == 1)
  {
    if (v8)
    {
      *buf = 138543362;
      v16 = v3;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Notifying accessory for iOS ownership of context %{public}@", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    v13 = @"url";
    v14 = v3;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v9 sendCommand:@"changeUIContext" withParameters:v10];
  }

  else
  {
    if (v8)
    {
      *buf = 138543362;
      v16 = v3;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Reverting context %{public}@ to accessory ownership.", buf, 0xCu);
    }

    [*(a1 + 32) updateOwner:0 forContext:v3];
  }

LABEL_13:
}

- (void)_sessionDidDisconnect
{
  v3 = MEMORY[0x277CBEBF8];
  [(DBAppHistory *)self setSessionAppContextURLs:MEMORY[0x277CBEBF8]];
  [(DBAppHistory *)self setSessionEchoContextURLs:v3];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(DBAppHistory *)self setSessionContextOwners:dictionary];
}

- (id)policyForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[DBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:identifierCopy];

  appPolicy = [v5 appPolicy];

  return appPolicy;
}

- (BOOL)applicationVisibleInCarPlay:(id)play withIconProvider:(id)provider
{
  v15 = *MEMORY[0x277D85DE8];
  playCopy = play;
  providerCopy = provider;
  v8 = [(DBAppHistory *)self policyForBundleIdentifier:playCopy];
  if (([v8 isCarPlaySupported] & 1) == 0)
  {
    v9 = DBLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = playCopy;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Application %@ does not support CarPlay.", &v13, 0xCu);
    }

    goto LABEL_11;
  }

  v9 = [providerCopy iconForIdentifier:playCopy];
  if (([playCopy isEqualToString:@"com.apple.InCallService"] & 1) == 0 && (!v9 || (objc_msgSend(providerCopy, "isIconVisible:", v9) & 1) == 0))
  {
    v11 = DBLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = playCopy;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Application %@ is not available in the current layout.", &v13, 0xCu);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (void)_evaluateUniversalLinksForURL:(id)l withIconProvider:(id)provider completion:(id)completion
{
  lCopy = l;
  providerCopy = provider;
  completionCopy = completion;
  v11 = MEMORY[0x277CC1E48];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__DBAppHistory__evaluateUniversalLinksForURL_withIconProvider_completion___block_invoke;
  v15[3] = &unk_278F028F8;
  v16 = lCopy;
  selfCopy = self;
  v18 = providerCopy;
  v19 = completionCopy;
  v12 = providerCopy;
  v13 = completionCopy;
  v14 = lCopy;
  [v11 getAppLinksWithURL:v14 completionHandler:v15];
}

void __74__DBAppHistory__evaluateUniversalLinksForURL_withIconProvider_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "No available application for URL %@", &buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x2020000000;
    v29 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __74__DBAppHistory__evaluateUniversalLinksForURL_withIconProvider_completion___block_invoke_289;
    v23[3] = &unk_278F028D0;
    v22 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    p_buf = &buf;
    v11 = v10;
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v22;
    *(&v14 + 1) = v9;
    v24 = v14;
    v25 = v13;
    [v5 enumerateObjectsUsingBlock:v23];
    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      v15 = DBLogForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __74__DBAppHistory__evaluateUniversalLinksForURL_withIconProvider_completion___block_invoke_cold_1(a1 + 32, v15, v16, v17, v18, v19, v20, v21);
      }

      (*(*(a1 + 56) + 16))();
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __74__DBAppHistory__evaluateUniversalLinksForURL_withIconProvider_completion___block_invoke_289(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 targetApplicationRecord];
  v8 = *(a1 + 32);
  v9 = [v7 bundleIdentifier];
  LODWORD(v8) = [v8 applicationVisibleInCarPlay:v9 withIconProvider:*(a1 + 40)];

  if (v8)
  {
    v10 = DBLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Resolved universal link to %@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    *a4 = 1;
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277D0AD78] dashboardEndpoint];
    [v11 setTargetConnectionEndpoint:v12];

    [v11 setReferrerURL:*(a1 + 48)];
    [v11 setIgnoreAppLinkEnabledProperty:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__DBAppHistory__evaluateUniversalLinksForURL_withIconProvider_completion___block_invoke_292;
    v13[3] = &unk_278F028A8;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    [v6 openWithConfiguration:v11 completionHandler:v13];
  }
}

void __74__DBAppHistory__evaluateUniversalLinksForURL_withIconProvider_completion___block_invoke_292(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DBLogForCategory(0);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __74__DBAppHistory__evaluateUniversalLinksForURL_withIconProvider_completion___block_invoke_292_cold_1(v5, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v21 = 138412290;
      v22 = v14;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Opened a universal link for %@", &v21, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __74__DBAppHistory__evaluateUniversalLinksForURL_withIconProvider_completion___block_invoke_292_cold_2(a1, v7, v15, v16, v17, v18, v19, v20);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)openApplicationURL:(id)l withIconProvider:(id)provider activationSettings:(id)settings completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  providerCopy = provider;
  settingsCopy = settings;
  completionCopy = completion;
  v14 = DBLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = lCopy;
    _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "Evaluating application URL %@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__DBAppHistory_openApplicationURL_withIconProvider_activationSettings_completion___block_invoke;
  v19[3] = &unk_278F02920;
  v23 = settingsCopy;
  v24 = completionCopy;
  v20 = lCopy;
  selfCopy = self;
  v22 = providerCopy;
  v15 = settingsCopy;
  v16 = providerCopy;
  v17 = lCopy;
  v18 = completionCopy;
  [(DBAppHistory *)self _evaluateUniversalLinksForURL:v17 withIconProvider:v16 completion:v19];
}

void __82__DBAppHistory_openApplicationURL_withIconProvider_activationSettings_completion___block_invoke(void *a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    (*(a1[8] + 16))();
  }

  else
  {
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v21 = [v6 URLOverrideForURL:a1[4]];
    [v6 applicationsAvailableForOpeningURL:?];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v25 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = a1[5];
        v14 = [v12 bundleIdentifier];
        LOBYTE(v13) = [v13 applicationVisibleInCarPlay:v14 withIconProvider:a1[6]];

        if (v13)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v15 = +[DBApplicationController sharedInstance];
      v16 = [v12 bundleIdentifier];
      v17 = [v15 applicationWithBundleIdentifier:v16];

      if (!v17)
      {
        goto LABEL_16;
      }

      v18 = DBLogForCategory(0);
      v19 = v21;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Resolved URL to %@", buf, 0xCu);
      }

      v20 = [DBApplicationLaunchInfo launchInfoForApplication:v17 withActivationSettings:a1[7]];
      (*(a1[8] + 16))();
    }

    else
    {
LABEL_11:

LABEL_16:
      (*(a1[8] + 16))();
      v19 = v21;
    }
  }
}

- (void)setDashboardAppOnDisconnect:(id)disconnect
{
  if (disconnect)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = MEMORY[0x277CBEAA8];
    disconnectCopy = disconnect;
    date = [v5 date];
    [date timeIntervalSince1970];
    v8 = [v4 numberWithDouble:?];
    appHistory = [(DBAppHistory *)self appHistory];
    [appHistory setObject:v8 forKeyedSubscript:disconnectCopy];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = MEMORY[0x277CBEAC0];
    appHistory2 = [(DBAppHistory *)self appHistory];
    v12 = [v10 dictionaryWithDictionary:appHistory2];
    [standardUserDefaults setObject:v12 forKey:@"CARRecentAppHistory"];
  }
}

- (unint64_t)applicationCategoryForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277CF8FC8]])
  {
    applicationCategory = 64;
  }

  else
  {
    v6 = [(DBAppHistory *)self policyForBundleIdentifier:identifierCopy];
    applicationCategory = [v6 applicationCategory];
  }

  return applicationCategory;
}

- (id)orderedAppsMatchingCategory:(unint64_t)category
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  appHistory = [(DBAppHistory *)self appHistory];
  allKeys = [appHistory allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([(DBAppHistory *)self applicationCategoryForBundleIdentifier:v12]== category)
        {
          [array addObject:v12];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [(DBAppHistory *)self _orderedAppsForBundleIdentifiers:array];

  return v13;
}

- (double)lastActivationTimeForApplication:(id)application
{
  bundleIdentifier = [application bundleIdentifier];
  [(DBAppHistory *)self lastActivationTimeForBundleIdentifier:bundleIdentifier];
  v6 = v5;

  return v6;
}

- (double)lastActivationTimeForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy isEqualToString:*MEMORY[0x277CF8FC8]] || (v5 = 0.0, !-[DBAppHistory nowPlayingIsVisible](self, "nowPlayingIsVisible")))
  {
    appHistory = [(DBAppHistory *)self appHistory];
    v7 = [appHistory objectForKeyedSubscript:identifierCopy];

    if (v7)
    {
      [v7 doubleValue];
      v5 = v8;
    }

    else
    {
      v5 = -1.0;
    }
  }

  return v5;
}

- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  activeBundleIdentifier = [toState activeBundleIdentifier];
  if (activeBundleIdentifier)
  {
    v9 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = activeBundleIdentifier;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Workspace did change to active app %@", buf, 0xCu);
    }

    if ([activeBundleIdentifier isEqualToString:@"com.apple.InCallService"])
    {
      v10 = @"com.apple.mobilephone";

      activeBundleIdentifier = v10;
    }

    if ([(DBAppHistory *)self isBundleIdentifierValidForDock:activeBundleIdentifier])
    {
      v11 = [(DBAppHistory *)self _applicationForBundleIdentifier:activeBundleIdentifier];
      if (v11)
      {
        activeBundleIdentifier2 = [stateCopy activeBundleIdentifier];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__DBAppHistory_workspace_stateDidChangeFromState_toState___block_invoke;
        block[3] = &unk_278F015F8;
        block[4] = self;
        v15 = activeBundleIdentifier;
        v16 = activeBundleIdentifier2;
        observers = activeBundleIdentifier2;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      else
      {
        observers = [(DBAppHistory *)self observers];
        [observers appHistory:self mostRecentHomeScreenUpdatedTo:activeBundleIdentifier];
      }
    }
  }
}

- (void)siriPresentedIntentForBundleIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([(DBAppHistory *)self isBundleIdentifierValidForDock:identifierCopy])
  {
    v5 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = identifierCopy;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Siri presented active app %@", buf, 0xCu);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__DBAppHistory_siriPresentedIntentForBundleIdentifier___block_invoke;
    v6[3] = &unk_278F014B8;
    v6[4] = self;
    v7 = identifierCopy;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

- (void)_bundleIdentifierDidBecomeVisible:(id)visible previousBundleIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  visibleCopy = visible;
  identifierCopy = identifier;
  -[DBAppHistory setNowPlayingIsVisible:](self, "setNowPlayingIsVisible:", [visibleCopy isEqualToString:*MEMORY[0x277CF8FC8]]);
  if (visibleCopy)
  {
    v8 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    appHistory = [(DBAppHistory *)self appHistory];
    [appHistory setObject:v10 forKeyedSubscript:visibleCopy];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = MEMORY[0x277CBEAC0];
  appHistory2 = [(DBAppHistory *)self appHistory];
  v15 = [v13 dictionaryWithDictionary:appHistory2];
  [standardUserDefaults setObject:v15 forKey:@"CARRecentAppHistory"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (identifierCopy)
  {
    v17 = [(DBAppHistory *)self applicationCategoryForBundleIdentifier:identifierCopy];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    [dictionary setObject:v18 forKeyedSubscript:*MEMORY[0x277CF8FA8]];
  }

  if (visibleCopy)
  {
    v19 = [(DBAppHistory *)self applicationCategoryForBundleIdentifier:visibleCopy];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    [dictionary setObject:v20 forKeyedSubscript:*MEMORY[0x277CF8F98]];
  }

  v21 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = dictionary;
    _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "Workspace change event %@", &v25, 0xCu);
  }

  v22 = [(DBAppHistory *)self appDockCategoryForBundleIdentifier:visibleCopy];
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      observers = [(DBAppHistory *)self observers];
      [observers appHistory:self mostRecentAudioAppUpdatedTo:visibleCopy];
      goto LABEL_18;
    }

    if (v22 == 3)
    {
      observers = [(DBAppHistory *)self observers];
      [observers appHistory:self mostRecentCommunicationAppUpdatedTo:visibleCopy];
      goto LABEL_18;
    }
  }

  else
  {
    if (!v22)
    {
      observers = [(DBAppHistory *)self observers];
      [observers appHistory:self mostRecentOtherAppUpdatedTo:visibleCopy];
      goto LABEL_18;
    }

    if (v22 == 1)
    {
      observers = [(DBAppHistory *)self observers];
      [observers appHistory:self mostRecentNavigationAppUpdatedTo:visibleCopy];
LABEL_18:
    }
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277CF8FA0] object:0 userInfo:dictionary];
}

- (void)_nowPlayingWillAppear:(id)appear
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DBAppHistory__nowPlayingWillAppear___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_nowPlayingWillDisappear:(id)disappear
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DBAppHistory__nowPlayingWillDisappear___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_applicationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[DBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:identifierCopy];

  return v5;
}

- (id)_orderedAppsForBundleIdentifiers:(id)identifiers
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__DBAppHistory__orderedAppsForBundleIdentifiers___block_invoke;
  v10[3] = &unk_278F02948;
  v10[4] = self;
  v4 = [identifiers sortedArrayUsingComparator:v10];
  v5 = [v4 bs_filter:&__block_literal_global_6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__DBAppHistory__orderedAppsForBundleIdentifiers___block_invoke_3;
  v9[3] = &unk_278F02990;
  v9[4] = self;
  v6 = [v5 bs_mapNoNulls:v9];
  bs_reverse = [v6 bs_reverse];

  return bs_reverse;
}

uint64_t __49__DBAppHistory__orderedAppsForBundleIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 appHistory];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [*(a1 + 32) appHistory];
  v11 = [v10 objectForKeyedSubscript:v6];

  v12 = [v9 compare:v11];
  return v12;
}

uint64_t __49__DBAppHistory__orderedAppsForBundleIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"com.apple.siri"])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isEqualToString:@"com.apple.InCallService"] ^ 1;
  }

  return v3;
}

- (void)_persistSessionUIContextOwnership
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  sessionContextOwners = [(DBAppHistory *)self sessionContextOwners];
  [standardUserDefaults setObject:sessionContextOwners forKey:@"CARLastSessionUIContextOwners"];
}

+ (id)availableApplicationContexts
{
  if (availableApplicationContexts_onceToken != -1)
  {
    +[DBAppHistory(Contexts) availableApplicationContexts];
  }

  v3 = availableApplicationContexts___contexts;

  return v3;
}

void __54__DBAppHistory_Contexts__availableApplicationContexts__block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"maps:";
  v2[1] = @"mobilephone:";
  v2[2] = @"nowplaying:";
  v2[3] = @"messages:";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = availableApplicationContexts___contexts;
  availableApplicationContexts___contexts = v0;
}

+ (unint64_t)applicationCategoryForURL:(id)l
{
  lCopy = l;
  if ([lCopy hasPrefix:@"maps:"] & 1) != 0 || (objc_msgSend(lCopy, "hasPrefix:", @"maps:/car/destinations"))
  {
    v4 = 8;
  }

  else if ([lCopy hasPrefix:@"nowplaying:"])
  {
    v4 = 64;
  }

  else if ([lCopy hasPrefix:@"music:"])
  {
    v4 = 16;
  }

  else if ([lCopy hasPrefix:@"mobilephone:"])
  {
    v4 = 4;
  }

  else if ([lCopy hasPrefix:@"messages:"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)contextForApplicationCategory:(unint64_t)category
{
  if (category <= 7)
  {
    v4 = @"mobilephone:";
    if (category != 4)
    {
      v4 = 0;
    }

    if (category == 2)
    {
      return @"messages:";
    }

    else
    {
      return v4;
    }
  }

  else if (category == 8)
  {
    return @"maps:";
  }

  else if (category == 64 || category == 16)
  {
    return @"nowplaying:";
  }

  else
  {
    return 0;
  }
}

- (void)applySessionAppContexts:(id)contexts
{
  v23 = *MEMORY[0x277D85DE8];
  contextsCopy = contexts;
  selfCopy = self;
  availableApplicationContexts = [objc_opt_class() availableApplicationContexts];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = contextsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([availableApplicationContexts containsObject:v12])
        {
          [array addObject:v12];
        }

        else
        {
          v13 = DBLogForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v21 = v12;
            _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Received unknown app URL %{public}@ not included in master list", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  [(DBAppHistory *)selfCopy setSessionAppContextURLs:v14];
}

- (void)applySessionEchoContexts:(id)contexts
{
  v23 = *MEMORY[0x277D85DE8];
  contextsCopy = contexts;
  selfCopy = self;
  availableApplicationContexts = [objc_opt_class() availableApplicationContexts];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = contextsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([availableApplicationContexts containsObject:v12])
        {
          [array addObject:v12];
        }

        else
        {
          v13 = DBLogForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v21 = v12;
            _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Received unknown echo URL %{public}@ not included in master list", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  [(DBAppHistory *)selfCopy setSessionEchoContextURLs:v14];
}

- (unint64_t)currentOwnerForContext:(id)context
{
  contextCopy = context;
  sessionContextOwners = [(DBAppHistory *)self sessionContextOwners];
  v6 = [sessionContextOwners objectForKey:contextCopy];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)updateOwner:(unint64_t)owner forContext:(id)context
{
  contextCopy = context;
  sessionContextOwners = [(DBAppHistory *)self sessionContextOwners];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:owner];
  [sessionContextOwners setObject:v8 forKey:contextCopy];

  [(DBAppHistory *)self _persistSessionUIContextOwnership];
}

@end