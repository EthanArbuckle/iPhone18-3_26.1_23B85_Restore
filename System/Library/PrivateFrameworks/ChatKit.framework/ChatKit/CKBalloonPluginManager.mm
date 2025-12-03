@interface CKBalloonPluginManager
+ (id)defaultFavoritePlugins;
+ (id)morePlugin;
+ (id)recentPlugin;
+ (id)sharedInstance;
- (BOOL)_addPluginToRecentsFrontIfNeeded:(id)needed frontOfRecents:(id)recents pluginMap:(id)map fallbackMap:(id)fallbackMap;
- (BOOL)_shouldForceRegenerateIndexPathMap;
- (BOOL)_shouldForceRegenerateStickersIndexPathMap;
- (BOOL)_shouldShowActivity;
- (BOOL)_shouldUninstallContainingBundle:(id)bundle;
- (BOOL)hasLoadedExtensions;
- (BOOL)isBalloonPluginVisible:(id)visible;
- (BOOL)isEnabledAndVisible:(id)visible;
- (BOOL)isInternalPlugin:(id)plugin;
- (BOOL)isPluginEnabled:(id)enabled;
- (BOOL)isPluginHiddenFromSendMenuAndStickers:(id)stickers;
- (BOOL)isPluginSeen:(id)seen;
- (BOOL)isPluginSeenWithInstalledVersion:(id)version;
- (BOOL)isPluginSystemApp:(id)app;
- (BOOL)isPluginVisible:(id)visible;
- (BOOL)isViewController:(id)controller fromPluginWithIdentifier:(id)identifier;
- (CKBalloonPluginManager)init;
- (CKPreviewDispatchCache)snapshotCache;
- (NSArray)allEnabledPlugins;
- (NSArray)allOrderedCombinedStickerApps;
- (NSArray)allPlugins;
- (NSArray)combinedStickerApps;
- (NSArray)disabledPlugins;
- (NSArray)orderedCombinedStickerApps;
- (NSArray)potentiallyVisibleNonFavoritePlugins;
- (NSArray)potentiallyVisiblePlugins;
- (NSArray)recentAppStripPlugins;
- (NSArray)visibleDrawerPlugins;
- (NSArray)visibleFavoriteAppStripPlugins;
- (NSArray)visiblePlugins;
- (NSArray)visibleRecentAppStripPlugins;
- (NSArray)visibleSwitcherPlugins;
- (NSCache)iconCache;
- (NSDictionary)combinedStickersAppsIndexPathMap;
- (NSDictionary)pluginIndexPathMap;
- (NSMutableDictionary)activeBrowsers;
- (NSMutableSet)prefetchIconKeys;
- (__CFString)healthKitAchievementAvailabilityChangedNotification;
- (id)_decodeIndexPathMap:(id)map allowMigration:(BOOL)migration;
- (id)_encodeIndexPathMap:(id)map;
- (id)_pluginIndexPathForFavoritePluginWithIdentifier:(id)identifier pluginMap:(id)map fallbackMap:(id)fallbackMap;
- (id)_pluginIndexPathForPluginWithIdentifier:(id)identifier pluginMap:(id)map;
- (id)allPluginsPassingTest:(id)test;
- (id)allPotentiallyVisiblePlugins;
- (id)balloonPluginIdentifierForAppExtensionBundleIdentifier:(id)identifier;
- (id)browserSnapshotForKey:(id)key;
- (id)bundleIdentifiersForCurrentExtensionConsumers;
- (id)candidateAppStripPlugins;
- (id)createFakeAppsForPPTTesting:(unint64_t)testing;
- (id)descriptionOfVisibleDrawerPlugins;
- (id)digitalTouchViewControllerWithDataSource:(id)source;
- (id)existingViewControllerForPluginIdentifier:(id)identifier;
- (id)filteredArrayOfInstallationsThatShouldBeVisible:(id)visible;
- (id)handwritingViewControllerWithPluginPayloads:(id)payloads;
- (id)launchTimeForPlugin:(id)plugin;
- (id)newViewControllerForPluginIdentifier:(id)identifier dataSource:(id)source;
- (id)orderedPlugins:(BOOL)plugins;
- (id)photosBrowserViewControllerWithPluginPayloads:(id)payloads;
- (id)pluginForAdamID:(id)d;
- (id)pluginForExtensionIdentifier:(id)identifier;
- (id)pluginForIdentifier:(id)identifier;
- (id)viewControllerForPluginIdentifier:(id)identifier;
- (id)viewControllerForPluginIdentifier:(id)identifier dataSource:(id)source;
- (unint64_t)launchStatusForPlugin:(id)plugin;
- (unint64_t)unseenPluginCount;
- (void)_addAppWithBalloonIdentifier:(id)identifier;
- (void)_disableAppWithBalloonIdentifier:(id)identifier;
- (void)_invalidatePluginForKey:(id)key;
- (void)_refreshVisibleDrawerPluginsDueToAppInstallationChange;
- (void)_setSeen:(BOOL)seen forPlugin:(id)plugin;
- (void)_updateHistoricalPluginIndexPathMap;
- (void)addExtensionConsumer:(id)consumer;
- (void)appInstallationWatcher:(id)watcher addedAppInstallation:(id)installation;
- (void)appInstallationWatcher:(id)watcher changedAppInstallation:(id)installation;
- (void)cleanSeenMap;
- (void)clearBalloonPluginCache;
- (void)commitInteractionTimeOrderingChanges;
- (void)dealloc;
- (void)deleteAppWithIdentifier:(id)identifier completion:(id)completion;
- (void)forceKillNonCameraRemoteExtensionsImmediately;
- (void)forceKillRemoteExtensionsWithDelay:(BOOL)delay skipCameraApp:(BOOL)app;
- (void)forceTearDownRemoteViewsSkippingCameraApp:(BOOL)app;
- (void)handleManagedConfigSettingsChangeNotification:(id)notification;
- (void)healthStickerStatusChanged;
- (void)invalidateAllActivePluginsSkippingCameraApp:(BOOL)app;
- (void)invalidateIconCache;
- (void)prepareForSuspend;
- (void)refreshPlugins;
- (void)regenerateCombinedStickersAppsIndexPaths;
- (void)regeneratePluginIndexPaths;
- (void)reloadInstalledApps:(id)apps;
- (void)removeAppWithIdentifier:(id)identifier;
- (void)removeVisibleInstallationWithID:(id)d;
- (void)saveCombinedAppsWithNotification:(BOOL)notification;
- (void)saveWithNotification:(BOOL)notification;
- (void)setAppStoreAutoEnableToggled:(BOOL)toggled;
- (void)setEnabled:(BOOL)enabled forPlugin:(id)plugin;
- (void)setPlugin:(id)plugin hiddenInSendMenuAndStickers:(BOOL)stickers;
- (void)setSeen:(BOOL)seen forPlugin:(id)plugin;
- (void)updateAppInstallations;
- (void)updateIndexPath:(id)path forCombinedStickerApp:(id)app;
- (void)updateIndexPath:(id)path forPlugin:(id)plugin isDrawerPluginPath:(BOOL)pluginPath;
- (void)updateInteractionTimeForPlugin:(id)plugin;
- (void)updateLaunchStatus:(unint64_t)status forPlugin:(id)plugin withNotification:(BOOL)notification;
- (void)updateLaunchTimeForPlugin:(id)plugin;
- (void)updateSnapshotForBrowserViewController:(id)controller currentBounds:(CGRect)bounds;
@end

@implementation CKBalloonPluginManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CKBalloonPluginManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = __sharedDataSource;

  return v2;
}

- (NSCache)iconCache
{
  iconCache = self->_iconCache;
  if (!iconCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_iconCache;
    self->_iconCache = v4;

    [(NSCache *)self->_iconCache setName:@"CKBalloonPluginManager icon cache"];
    iconCache = self->_iconCache;
  }

  return iconCache;
}

void __40__CKBalloonPluginManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = __sharedDataSource;
  __sharedDataSource = v0;
}

+ (id)recentPlugin
{
  if (recentPlugin_onceToken != -1)
  {
    +[CKBalloonPluginManager recentPlugin];
  }

  v3 = recentPlugin_sRecentsPlugin;

  return v3;
}

void __38__CKBalloonPluginManager_recentPlugin__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69A5AB8]);
  v4 = CKFrameworkBundle();
  v1 = [v4 localizedStringForKey:@"RECENTS" value:&stru_1F04268F8 table:@"ChatKit"];
  v2 = [v0 initWithIdentifier:@"com.apple.messages.browser.RecentPlugin" browserDisplayName:v1 browserImageName:&stru_1F04268F8 browserClass:objc_opt_class() presentationContext:1];
  v3 = recentPlugin_sRecentsPlugin;
  recentPlugin_sRecentsPlugin = v2;
}

+ (id)morePlugin
{
  if (morePlugin_onceToken != -1)
  {
    +[CKBalloonPluginManager morePlugin];
  }

  v3 = morePlugin_sMorePlugin;

  return v3;
}

void __36__CKBalloonPluginManager_morePlugin__block_invoke()
{
  if (!CKIsRunningInCameraAppsClient())
  {
    v0 = [CKMoreBrowserPlugin alloc];
    v4 = CKFrameworkBundle();
    v1 = [v4 localizedStringForKey:@"MORE" value:&stru_1F04268F8 table:@"ChatKit"];
    v2 = [(IMBalloonBrowserPlugin *)v0 initWithIdentifier:@"com.apple.messages.browser.MorePlugin" browserDisplayName:v1 browserImageName:@"MoreIcon" browserClass:objc_opt_class() presentationContext:1];
    v3 = morePlugin_sMorePlugin;
    morePlugin_sMorePlugin = v2;
  }
}

- (CKBalloonPluginManager)init
{
  v35.receiver = self;
  v35.super_class = CKBalloonPluginManager;
  v2 = [(CKBalloonPluginManager *)&v35 init];
  if (v2)
  {
    v3 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerVersionDictionaryKey");
    pluginVersionMap = v2->_pluginVersionMap;
    v2->_pluginVersionMap = v3;

    if (!v2->_pluginVersionMap)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *v34 = 0;
          _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Version map was not in user defaults, building from scratch.", v34, 2u);
        }
      }

      v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
      v7 = v2->_pluginVersionMap;
      v2->_pluginVersionMap = v6;
    }

    v8 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerSeenDictionaryKey");
    pluginSeenMap = v2->_pluginSeenMap;
    v2->_pluginSeenMap = v8;

    v10 = v2->_pluginSeenMap;
    if (!v10)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v34 = 0;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Seen map was not in user defaults, building from scratch.", v34, 2u);
        }
      }

      v12 = objc_alloc_init(MEMORY[0x1E695DF20]);
      v13 = v2->_pluginSeenMap;
      v2->_pluginSeenMap = v12;

      v10 = v2->_pluginSeenMap;
    }

    allValues = [(NSDictionary *)v10 allValues];
    firstObject = [allValues firstObject];

    if (firstObject)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF20]);
        v17 = v2->_pluginSeenMap;
        v2->_pluginSeenMap = v16;
      }
    }

    v18 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerLaunchTimeDictionaryKey");
    pluginLaunchTimeMap = v2->_pluginLaunchTimeMap;
    v2->_pluginLaunchTimeMap = v18;

    if (!v2->_pluginLaunchTimeMap)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v34 = 0;
          _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Seen map was not in user defaults, building from scratch.", v34, 2u);
        }
      }

      v21 = objc_alloc_init(MEMORY[0x1E695DF20]);
      v22 = v2->_pluginLaunchTimeMap;
      v2->_pluginLaunchTimeMap = v21;
    }

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    currentExtensionConsumers = v2->_currentExtensionConsumers;
    v2->_currentExtensionConsumers = weakObjectsHashTable;

    [(CKBalloonPluginManager *)v2 setNumberOfSectionsToKeep:0];
    v2->_appStoreAutoEnableToggled = IMGetDomainBoolForKey();
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_handleManagedConfigSettingsChangeNotification_ name:*MEMORY[0x1E69ADD68] object:0];

    [(CKBalloonPluginManager *)v2 handleManagedConfigSettingsChangeNotification:0];
    v26 = MEMORY[0x1E695DFD8];
    visibleSwitcherPlugins = [(CKBalloonPluginManager *)v2 visibleSwitcherPlugins];
    v28 = [visibleSwitcherPlugins arrayByApplyingSelector:sel_identifier];
    v29 = [v26 setWithArray:v28];
    oldVisibleSwitcherPluginIdentifiers = v2->_oldVisibleSwitcherPluginIdentifiers;
    v2->_oldVisibleSwitcherPluginIdentifiers = v29;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _HealthStickerStatusChanged, [(CKBalloonPluginManager *)v2 healthKitAchievementAvailabilityChangedNotification], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_reloadInstalledApps_ name:*MEMORY[0x1E69A56D8] object:0];

    CKShouldShowSURF();
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = +[CKAppInstallationWatcher sharedInstance];
  [v4 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, [(CKBalloonPluginManager *)self healthKitAchievementAvailabilityChangedNotification], 0);
  v6.receiver = self;
  v6.super_class = CKBalloonPluginManager;
  [(CKBalloonPluginManager *)&v6 dealloc];
}

- (NSDictionary)pluginIndexPathMap
{
  pluginIndexPathMap = self->_pluginIndexPathMap;
  if (!pluginIndexPathMap)
  {
    v4 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerIndexPathDictionaryV3Key");
    if (!v4)
    {
      v4 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerIndexPathDictionaryV2Key");
      if (!v4)
      {
        v4 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerIndexPathDictionaryV1Key");
      }
    }

    v5 = v4;
    v6 = [(CKBalloonPluginManager *)self _decodeIndexPathMap:v4 allowMigration:1];
    v7 = self->_pluginIndexPathMap;
    self->_pluginIndexPathMap = v6;

    [(CKBalloonPluginManager *)self _updateHistoricalPluginIndexPathMap];
    pluginIndexPathMap = self->_pluginIndexPathMap;
  }

  return pluginIndexPathMap;
}

- (NSDictionary)combinedStickersAppsIndexPathMap
{
  combinedStickersAppsIndexPathMap = self->_combinedStickersAppsIndexPathMap;
  if (!combinedStickersAppsIndexPathMap)
  {
    v4 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKCombinedStickerAppsIndexPathDictionaryV1Key");
    v5 = [(CKBalloonPluginManager *)self _decodeIndexPathMap:v4 allowMigration:0];
    v6 = self->_combinedStickersAppsIndexPathMap;
    self->_combinedStickersAppsIndexPathMap = v5;

    combinedStickersAppsIndexPathMap = self->_combinedStickersAppsIndexPathMap;
  }

  return combinedStickersAppsIndexPathMap;
}

- (void)addExtensionConsumer:(id)consumer
{
  consumerCopy = consumer;
  currentExtensionConsumers = [(CKBalloonPluginManager *)self currentExtensionConsumers];
  [currentExtensionConsumers addObject:consumerCopy];
}

- (void)refreshPlugins
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Resetting plugins, will fetch from plugin manager next request.", v14, 2u);
    }
  }

  allPlugins = self->_allPlugins;
  self->_allPlugins = 0;

  cachedPotentiallyVisiblePlugins = self->_cachedPotentiallyVisiblePlugins;
  self->_cachedPotentiallyVisiblePlugins = 0;

  visiblePlugins = self->_visiblePlugins;
  self->_visiblePlugins = 0;

  appStripCandidatePlugins = self->_appStripCandidatePlugins;
  self->_appStripCandidatePlugins = 0;

  visibleAppStripPlugins = self->_visibleAppStripPlugins;
  self->_visibleAppStripPlugins = 0;

  visibleSwitcherPlugins = self->_visibleSwitcherPlugins;
  self->_visibleSwitcherPlugins = 0;

  favoriteAppStripPlugins = self->_favoriteAppStripPlugins;
  self->_favoriteAppStripPlugins = 0;

  recentAppStripPlugins = self->_recentAppStripPlugins;
  self->_recentAppStripPlugins = 0;

  visibleRecentAppStripPlugins = self->_visibleRecentAppStripPlugins;
  self->_visibleRecentAppStripPlugins = 0;

  combinedStickersAppsIndexPathMap = self->_combinedStickersAppsIndexPathMap;
  self->_combinedStickersAppsIndexPathMap = 0;
}

- (void)reloadInstalledApps:(id)apps
{
  v53 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Received notification to reload all installed apps from imagent.", buf, 2u);
    }
  }

  [(CKBalloonPluginManager *)self refreshPlugins];
  if ([(CKBalloonPluginManager *)self _shouldForceRegenerateIndexPathMap])
  {
    [(CKBalloonPluginManager *)self regeneratePluginIndexPaths];
  }

  if ([(CKBalloonPluginManager *)self _shouldForceRegenerateStickersIndexPathMap])
  {
    [(CKBalloonPluginManager *)self regenerateCombinedStickersAppsIndexPaths];
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Broadcasting browser selection data source changed notification.", buf, 2u);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"CKCombinedStickerAppsOrderChangedNotification" object:0];

  visibleSwitcherPlugins = [(CKBalloonPluginManager *)self visibleSwitcherPlugins];
  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(visibleSwitcherPlugins, "count")}];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = visibleSwitcherPlugins;
  v11 = [v10 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v11)
  {
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v14 identifier];
          [(NSSet *)v9 addObject:identifier];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v11);
  }

  if ([(NSSet *)self->_oldVisibleSwitcherPluginIdentifiers count])
  {
    v16 = [MEMORY[0x1E695DFA8] set];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v17 = self->_oldVisibleSwitcherPluginIdentifiers;
    v18 = [(NSSet *)v17 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v18)
    {
      v19 = *v40;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v39 + 1) + 8 * j);
          if (![(NSSet *)v9 containsObject:v21])
          {
            [v16 addObject:v21];
          }
        }

        v18 = [(NSSet *)v17 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v18);
    }

    v22 = [MEMORY[0x1E695DFA8] set];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v9;
    v24 = [(NSSet *)v23 countByEnumeratingWithState:&v35 objects:v50 count:16];
    if (v24)
    {
      v25 = *v36;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v35 + 1) + 8 * k);
          if (![(NSSet *)self->_oldVisibleSwitcherPluginIdentifiers containsObject:v27])
          {
            [v22 addObject:v27];
          }
        }

        v24 = [(NSSet *)v23 countByEnumeratingWithState:&v35 objects:v50 count:16];
      }

      while (v24);
    }

    if ([v16 count] || objc_msgSend(v22, "count"))
    {
      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      v48[0] = @"CKBrowserSelectionControllerInstalledPluginsKey";
      v48[1] = @"CKBrowserSelectionControllerUninstalledPluginsKey";
      v49[0] = v22;
      v49[1] = v16;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
      [defaultCenter3 postNotificationName:@"CKBrowserSelectionControllerVisibleSwitcherPluginsChangedNotification" object:0 userInfo:v29];
    }
  }

  oldVisibleSwitcherPluginIdentifiers = self->_oldVisibleSwitcherPluginIdentifiers;
  self->_oldVisibleSwitcherPluginIdentifiers = v9;
  v31 = v9;

  combinedStickersAppsIndexPathMap = [(CKBalloonPluginManager *)self combinedStickersAppsIndexPathMap];
  [(CKBalloonPluginManager *)self cleanSeenMap];
  [(CKBalloonPluginManager *)self invalidateIconCache];
  [(CKBalloonPluginManager *)self saveWithNotification:0];
  [(CKBalloonPluginManager *)self saveCombinedAppsWithNotification:0];
  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter4 postNotificationName:@"CKBrowserSelectionControllerReloadedInstallationsNotification" object:0 userInfo:0];
}

- (__CFString)healthKitAchievementAvailabilityChangedNotification
{
  if (healthKitAchievementAvailabilityChangedNotification_onceToken != -1)
  {
    [CKBalloonPluginManager healthKitAchievementAvailabilityChangedNotification];
  }

  return healthKitAchievementAvailabilityChangedNotification_healthActivityNotificationStr;
}

CFStringRef __77__CKBalloonPluginManager_healthKitAchievementAvailabilityChangedNotification__block_invoke()
{
  v0 = MEMORY[0x193AF5ED0]("kHKAchievementStickerAvailbilityDidChangeNotification", @"HealthKit");
  result = CFStringCreateWithCString(0, v0, 0x8000100u);
  healthKitAchievementAvailabilityChangedNotification_healthActivityNotificationStr = result;
  return result;
}

- (void)healthStickerStatusChanged
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Broadcasting browser selection data source changed notification due to Health sticker change.", v4, 2u);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0];
}

- (BOOL)_shouldUninstallContainingBundle:(id)bundle
{
  v20 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  isLaunchProhibited = [bundleCopy isLaunchProhibited];
  applicationType = [bundleCopy applicationType];
  v6 = [applicationType isEqualToString:*MEMORY[0x1E69635B8]];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (isLaunchProhibited)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v12 = 138413058;
      v13 = bundleCopy;
      if (v6)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v15 = v9;
      v14 = 2112;
      v16 = 2112;
      if ((isLaunchProhibited & v6) != 0)
      {
        v8 = @"YES";
      }

      v17 = v10;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "_shouldUninstallContainingBundle containingBundle %@ isMessagesOnly %@ isUserApp %@ shouldUnInstall %@", &v12, 0x2Au);
    }
  }

  return isLaunchProhibited & v6;
}

- (void)_addAppWithBalloonIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = IMOSLoggingEnabled();
  if (identifierCopy)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = identifierCopy;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_addAppWithBalloonIdentifier id %@", &v8, 0xCu);
      }
    }

    if ([identifierCopy isEqualToString:@"com.apple.messages.browser.RecentPlugin"])
    {
      recentPlugin = [objc_opt_class() recentPlugin];
      v7 = [recentPlugin app];
      [v7 setIsEnabled:1];
    }

    else
    {
      recentPlugin = [MEMORY[0x1E69A5AD0] sharedInstance];
      [recentPlugin setPluginEnabled:1 identifier:identifierCopy];
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    recentPlugin = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(recentPlugin, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_19020E000, recentPlugin, OS_LOG_TYPE_INFO, "CKBalloonPluginManager nil idenitifier passed to _addAppWithBalloonIdentifier", &v8, 2u);
    }
  }

LABEL_14:
}

- (void)_disableAppWithBalloonIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = IMOSLoggingEnabled();
  if (identifierCopy)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = identifierCopy;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_disableAppWithBalloonIdentifier id %@", &v8, 0xCu);
      }
    }

    if ([identifierCopy isEqualToString:@"com.apple.messages.browser.RecentPlugin"])
    {
      recentPlugin = [objc_opt_class() recentPlugin];
      v7 = [recentPlugin app];
      [v7 setIsEnabled:0];
    }

    else
    {
      recentPlugin = [MEMORY[0x1E69A5AD0] sharedInstance];
      [recentPlugin setPluginEnabled:0 identifier:identifierCopy];
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    recentPlugin = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(recentPlugin, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_19020E000, recentPlugin, OS_LOG_TYPE_INFO, "CKBalloonPluginManager nil idenitifier passed to _disableAppWithBalloonIdentifier", &v8, 2u);
    }
  }

LABEL_14:
}

- (void)removeAppWithIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = IMOSLoggingEnabled();
  if (identifierCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = identifierCopy;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "removeAppWithBalloonIdentifier id %@", buf, 0xCu);
      }
    }

    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    v8 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:identifierCopy];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ([identifierCopy isEqualToString:@"com.apple.messages.browser.RecentPlugin"])
      {
        recentPlugin = [objc_opt_class() recentPlugin];
        v23 = [recentPlugin app];
        [v23 setIsEnabled:0];
      }

      else
      {
        recentPlugin = [MEMORY[0x1E69A5AD0] sharedInstance];
        [recentPlugin setPluginEnabled:0 identifier:identifierCopy];
      }

      goto LABEL_38;
    }

    recentPlugin = [v8 proxy];
    if (!v8 || (([v8 identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", identifierCopy), recentPlugin) ? (v12 = v11) : (v12 = 0), v10, (v12 & 1) == 0))
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v27 = v8;
          v28 = 2112;
          v29 = identifierCopy;
          v30 = 2112;
          v31 = @"YES";
          _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Did not find plugin %@ for identifier %@ isAppExtension %@", buf, 0x20u);
        }
      }

      goto LABEL_38;
    }

    containingBundle = [recentPlugin containingBundle];
    if ([(CKBalloonPluginManager *)self _shouldUninstallContainingBundle:containingBundle])
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier = [containingBundle bundleIdentifier];
          *buf = 138412290;
          v27 = bundleIdentifier;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Uninstalling app %@", buf, 0xCu);
        }
      }

      v16 = MEMORY[0x193AF5EC0](@"IXAppInstallCoordinator", @"InstallCoordination");
      if (!v16)
      {
        goto LABEL_37;
      }

      bundleIdentifier2 = [containingBundle bundleIdentifier];
      v25 = 0;
      [v16 uninstallAppWithBundleID:bundleIdentifier2 error:&v25];
      mEMORY[0x1E69A5AD0]3 = v25;

      if (mEMORY[0x1E69A5AD0]3 && IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier3 = [containingBundle bundleIdentifier];
          *buf = 138412546;
          v27 = bundleIdentifier3;
          v28 = 2112;
          v29 = mEMORY[0x1E69A5AD0]3;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Error when uninstalling app with bundleID %@ (error: %@)", buf, 0x16u);
        }
      }

      mEMORY[0x1E69A5AD0]2 = [MEMORY[0x1E69A5AD0] sharedInstance];
      [mEMORY[0x1E69A5AD0]2 removePluginWithBundleID:identifierCopy];
    }

    else
    {
      mEMORY[0x1E69A5AD0]3 = [MEMORY[0x1E69A5AD0] sharedInstance];
      [mEMORY[0x1E69A5AD0]3 setPluginEnabled:0 identifier:identifierCopy];
    }

LABEL_37:
LABEL_38:

    goto LABEL_39;
  }

  if (v5)
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "CKBalloonPluginManager nil identifier passed to removeAppWithBalloonIdentifier", buf, 2u);
    }
  }

LABEL_39:
}

- (void)deleteAppWithIdentifier:(id)identifier completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CKBalloonPluginManager_deleteAppWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E72ED1F0;
  v7 = completionCopy;
  v32 = v7;
  v8 = _Block_copy(aBlock);
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

  if ((isStickersAppEnabled & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "CKBalloonPluginManager trying to call deleteAppWithIdentifier with invalid configuration", buf, 2u);
      }
    }

    goto LABEL_24;
  }

  v11 = IMOSLoggingEnabled();
  if (!identifierCopy)
  {
    if (v11)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "CKBalloonPluginManager nil identifier passed to deleteAppWithIdentifier", buf, 2u);
      }
    }

LABEL_24:
    v8[2](v8, 0);
    goto LABEL_37;
  }

  if (v11)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = identifierCopy;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "deleteAppWithIdentifier id %@", buf, 0xCu);
    }
  }

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v14 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:identifierCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proxy = [v14 proxy];
    if (v14 && (([v14 identifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", identifierCopy), proxy) ? (v18 = v17) : (v18 = 0), v16, (v18 & 1) != 0))
    {
      containingBundle = [proxy containingBundle];
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier = [containingBundle bundleIdentifier];
          *buf = 138412290;
          v34 = bundleIdentifier;
          _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Uninstalling app %@", buf, 0xCu);
        }
      }

      v22 = MEMORY[0x193AF5EC0](@"IXAppInstallCoordinator", @"InstallCoordination");
      if (v22)
      {
        bundleIdentifier2 = [containingBundle bundleIdentifier];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __61__CKBalloonPluginManager_deleteAppWithIdentifier_completion___block_invoke_134;
        v27[3] = &unk_1E72F09E8;
        v28 = containingBundle;
        v30 = v8;
        v29 = identifierCopy;
        [v22 uninstallAppWithBundleID:bundleIdentifier2 requestUserConfirmation:1 completion:v27];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v34 = v14;
          v35 = 2112;
          v36 = identifierCopy;
          v37 = 2112;
          v38 = @"YES";
          _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Did not find plugin %@ for identifier %@ isAppExtension %@", buf, 0x20u);
        }
      }

      v8[2](v8, 0);
    }
  }

LABEL_37:
}

void __61__CKBalloonPluginManager_deleteAppWithIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__CKBalloonPluginManager_deleteAppWithIdentifier_completion___block_invoke_2;
  v3[3] = &unk_1E72ED478;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __61__CKBalloonPluginManager_deleteAppWithIdentifier_completion___block_invoke_134(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(a1 + 32) bundleIdentifier];
        v7 = 138412546;
        v8 = v5;
        v9 = 2112;
        v10 = v3;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Error when uninstalling app with bundleID %@ (error: %@)", &v7, 0x16u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E69A5AD0] sharedInstance];
    [v6 removePluginWithBundleID:*(a1 + 40)];

    (*(*(a1 + 48) + 16))();
  }
}

- (void)updateInteractionTimeForPlugin:(id)plugin
{
  if (plugin)
  {
    pluginCopy = plugin;
    mRUPluginInteractionList = [(CKBalloonPluginManager *)self MRUPluginInteractionList];

    if (!mRUPluginInteractionList)
    {
      array = [MEMORY[0x1E695DF70] array];
      [(CKBalloonPluginManager *)self setMRUPluginInteractionList:array];
    }

    mRUPluginInteractionList2 = [(CKBalloonPluginManager *)self MRUPluginInteractionList];
    [mRUPluginInteractionList2 removeObject:pluginCopy];

    mRUPluginInteractionList3 = [(CKBalloonPluginManager *)self MRUPluginInteractionList];
    [mRUPluginInteractionList3 insertObject:pluginCopy atIndex:0];
  }
}

- (void)commitInteractionTimeOrderingChanges
{
  mRUPluginInteractionList = [(CKBalloonPluginManager *)self MRUPluginInteractionList];
  if (mRUPluginInteractionList)
  {
    v4 = mRUPluginInteractionList;
    mRUPluginInteractionList2 = [(CKBalloonPluginManager *)self MRUPluginInteractionList];
    v6 = [mRUPluginInteractionList2 count];

    if (v6)
    {
      recentAppStripPlugins = [(CKBalloonPluginManager *)self recentAppStripPlugins];
      v8 = [recentAppStripPlugins mutableCopy];

      mRUPluginInteractionList3 = [(CKBalloonPluginManager *)self MRUPluginInteractionList];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__CKBalloonPluginManager_commitInteractionTimeOrderingChanges__block_invoke;
      v14[3] = &unk_1E72F0A10;
      v15 = v8;
      v10 = v8;
      [mRUPluginInteractionList3 enumerateObjectsWithOptions:2 usingBlock:v14];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__CKBalloonPluginManager_commitInteractionTimeOrderingChanges__block_invoke_2;
      v13[3] = &unk_1E72F0A38;
      v13[4] = self;
      [v10 enumerateObjectsUsingBlock:v13];
      [(CKBalloonPluginManager *)self _updateHistoricalPluginIndexPathMap];
      [(CKBalloonPluginManager *)self refreshPlugins];
      visiblePlugins = [(CKBalloonPluginManager *)self visiblePlugins];
      [(CKBalloonPluginManager *)self saveWithNotification:1];
      array = [MEMORY[0x1E695DF70] array];
      [(CKBalloonPluginManager *)self setMRUPluginInteractionList:array];
    }
  }
}

void __62__CKBalloonPluginManager_commitInteractionTimeOrderingChanges__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          [*(a1 + 32) removeObject:v9];
          [*(a1 + 32) insertObject:v9 atIndex:0];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __62__CKBalloonPluginManager_commitInteractionTimeOrderingChanges__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AC88];
  v6 = a2;
  v9 = [v5 indexPathForRow:a3 inSection:1];
  v7 = [*(a1 + 32) pluginIndexPathMap];
  v8 = [v6 identifier];

  [v7 setValue:v9 forKey:v8];
}

- (void)_updateHistoricalPluginIndexPathMap
{
  historicalPluginIndexPathMap = [(CKBalloonPluginManager *)self historicalPluginIndexPathMap];

  if (!historicalPluginIndexPathMap)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKBalloonPluginManager *)self setHistoricalPluginIndexPathMap:v4];
  }

  if (self->_pluginIndexPathMap)
  {
    historicalPluginIndexPathMap2 = [(CKBalloonPluginManager *)self historicalPluginIndexPathMap];
    [historicalPluginIndexPathMap2 addEntriesFromDictionary:self->_pluginIndexPathMap];
  }
}

- (void)setEnabled:(BOOL)enabled forPlugin:(id)plugin
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"Disabling";
      if (enabledCopy)
      {
        v8 = @"Enabling";
      }

      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = pluginCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%@ plugin %@.", &v9, 0x16u);
    }
  }

  if (enabledCopy)
  {
    [(CKBalloonPluginManager *)self _addAppWithBalloonIdentifier:pluginCopy];
  }

  else
  {
    [(CKBalloonPluginManager *)self _disableAppWithBalloonIdentifier:pluginCopy];
  }
}

- (BOOL)isPluginEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = enabledCopy;
  if (enabledCopy)
  {
    v6 = *MEMORY[0x1E69A6A10];
    if ([enabledCopy isEqualToString:*MEMORY[0x1E69A6A10]])
    {
      recentPlugin = [objc_opt_class() recentPlugin];
    }

    else
    {
      mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
      recentPlugin = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v5];
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isClingEnabled = [mEMORY[0x1E69A8070] isClingEnabled];

    if (isClingEnabled)
    {
      identifier = [recentPlugin identifier];
      v9 = [identifier isEqualToString:v6] ^ 1;
    }

    else
    {
      if (!recentPlugin)
      {
        LOBYTE(v9) = 1;
LABEL_18:
        if ([v5 isEqualToString:*MEMORY[0x1E69A6988]])
        {
          LOBYTE(v9) = [(CKBalloonPluginManager *)self isAppStoreEnabled];
        }

        if ([v5 isEqualToString:*MEMORY[0x1E69A69A0]])
        {
          LOBYTE(v9) = [(CKBalloonPluginManager *)self isCameraAllowed];
        }

        if (CKIsRunningInMacCatalyst())
        {
          v14 = IMBalloonExtensionIDWithSuffix();
          v15 = [v5 isEqualToString:v14];

          if (v15)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              plugin = [recentPlugin plugin];
              LOBYTE(v9) = [plugin userElection] == 1;
            }
          }
        }

        goto LABEL_27;
      }

      identifier = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      if ([identifier isClingEnabled])
      {
        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = [recentPlugin isEnabled];
      }
    }

    goto LABEL_18;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKBalloonPluginManager nil idenitifier passed to isPluginEnabled:", v18, 2u);
    }
  }

  LOBYTE(v9) = 0;
LABEL_27:

  return v9;
}

- (id)_encodeIndexPathMap:(id)map
{
  v28 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if (mapCopy)
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(mapCopy, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = mapCopy;
    v4 = mapCopy;
    v22 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v22)
    {
      v5 = *v24;
      v6 = 0x1E696A000uLL;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v24 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          v9 = [v4 objectForKeyedSubscript:v8];
          v10 = *(v6 + 3776);
          section = [v9 section];
          v12 = &stru_1F04268F8;
          if (section != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "section")}];
            v20 = v12;
          }

          if ([v9 item] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [v10 stringWithFormat:@"%@, %@", v12, &stru_1F04268F8];
          }

          else
          {
            v14 = v6;
            v15 = v4;
            v16 = v5;
            v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "item")}];
            v13 = [v10 stringWithFormat:@"%@, %@", v12, v17];

            v5 = v16;
            v4 = v15;
            v6 = v14;
          }

          if (section != 0x7FFFFFFFFFFFFFFFLL)
          {
          }

          [v21 setObject:v13 forKeyedSubscript:v8];
        }

        v22 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v22);
    }

    mapCopy = v19;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)defaultFavoritePlugins
{
  v19[15] = *MEMORY[0x1E69E9840];
  v18 = IMBalloonExtensionIDWithSuffix();
  v2 = *MEMORY[0x1E69A6988];
  v19[0] = v18;
  v19[1] = v2;
  v17 = IMBalloonExtensionIDWithSuffix();
  v19[2] = v17;
  v16 = IMBalloonExtensionIDWithSuffix();
  v19[3] = v16;
  v15 = IMBalloonExtensionIDWithSuffix();
  v19[4] = v15;
  v3 = IMBalloonExtensionIDWithSuffix();
  v19[5] = v3;
  v4 = IMBalloonExtensionIDWithSuffix();
  v19[6] = v4;
  v5 = IMBalloonExtensionIDWithSuffix();
  v19[7] = v5;
  v6 = IMBalloonExtensionIDWithSuffix();
  v19[8] = v6;
  v7 = IMBalloonExtensionIDWithSuffix();
  v19[9] = v7;
  v8 = IMBalloonExtensionIDWithSuffix();
  v19[10] = v8;
  v9 = IMBalloonExtensionIDWithSuffix();
  v19[11] = v9;
  v10 = IMBalloonExtensionIDWithSuffix();
  v19[12] = v10;
  v11 = IMBalloonExtensionIDWithSuffix();
  v12 = *MEMORY[0x1E69A69A8];
  v19[13] = v11;
  v19[14] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:15];

  return v13;
}

- (id)_decodeIndexPathMap:(id)map allowMigration:(BOOL)migration
{
  migrationCopy = migration;
  v32 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if (mapCopy)
  {
    v25 = migrationCopy;
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(mapCopy, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = mapCopy;
    v7 = mapCopy;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [v7 objectForKeyedSubscript:v12];
          v14 = [v13 rangeOfString:{@", "}];
          v15 = [v13 substringToIndex:v14];
          v16 = [v13 substringFromIndex:v14 + 1];
          if ([v16 length])
          {
            integerValue = [v16 integerValue];
          }

          else
          {
            integerValue = 0x7FFFFFFFFFFFFFFFLL;
          }

          if ([v15 length])
          {
            integerValue2 = [v15 integerValue];
          }

          else
          {
            integerValue2 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v19 = [MEMORY[0x1E696AC88] indexPathForItem:integerValue inSection:integerValue2];
          [v6 setObject:v19 forKeyedSubscript:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v9);
    }

    if (v25)
    {
      v20 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerIndexPathDictionaryV1Key");
      v21 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerIndexPathDictionaryV2Key");

      v22 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerIndexPathDictionaryV1Key");
      v23 = v22 | v21;

      if (v23)
      {

        IMSetDomainValueForKey();
        IMSetDomainValueForKey();
        v6 = 0;
      }
    }

    mapCopy = v26;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldForceRegenerateIndexPathMap
{
  v2 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerIndexPathDictionaryV3Key");
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerIndexPathDictionaryV2Key");
    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v5 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKBrowserSelectionControllerIndexPathDictionaryV1Key");
      v3 = v5 == 0;
    }
  }

  return v3;
}

- (BOOL)_shouldForceRegenerateStickersIndexPathMap
{
  v2 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"kCKCombinedStickerAppsIndexPathDictionaryV1Key");
  v3 = v2 == 0;

  return v3;
}

- (void)saveWithNotification:(BOOL)notification
{
  notificationCopy = notification;
  if (!CKIsRunningInCameraAppsClient())
  {
    hasLoadedExtensions = [(CKBalloonPluginManager *)self hasLoadedExtensions];
    v6 = IMOSLoggingEnabled();
    if (!hasLoadedExtensions)
    {
      if (!v6)
      {
        return;
      }

      defaultCenter = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_19020E000, defaultCenter, OS_LOG_TYPE_INFO, "Not saving to defaults as extensions haven't finished loading, we'd possible be stomping over user info", v17, 2u);
      }

      goto LABEL_16;
    }

    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Saving enabled states and ordering to user defaults.", buf, 2u);
      }
    }

    pluginIndexPathMap = [(CKBalloonPluginManager *)self pluginIndexPathMap];
    v9 = [(CKBalloonPluginManager *)self _encodeIndexPathMap:pluginIndexPathMap];
    IMSetDomainValueForKey();

    pluginVersionMap = [(CKBalloonPluginManager *)self pluginVersionMap];
    IMSetDomainValueForKey();

    pluginSeenMap = [(CKBalloonPluginManager *)self pluginSeenMap];
    IMSetDomainValueForKey();

    pluginLaunchTimeMap = [(CKBalloonPluginManager *)self pluginLaunchTimeMap];
    IMSetDomainValueForKey();

    if (notificationCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Broadcasting browser selection data source changed notification.", v15, 2u);
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0];
LABEL_16:
    }
  }
}

- (void)saveCombinedAppsWithNotification:(BOOL)notification
{
  notificationCopy = notification;
  if (!CKIsRunningInCameraAppsClient())
  {
    hasLoadedExtensions = [(CKBalloonPluginManager *)self hasLoadedExtensions];
    v6 = IMOSLoggingEnabled();
    if (!hasLoadedExtensions)
    {
      if (!v6)
      {
        return;
      }

      defaultCenter = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_19020E000, defaultCenter, OS_LOG_TYPE_INFO, "Not saving to combined sticker default as extensions haven't finished loading, we'd possible be stomping over user info", v14, 2u);
      }

      goto LABEL_16;
    }

    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Saving combined sticker apps ordering to user defaults.", buf, 2u);
      }
    }

    combinedStickersAppsIndexPathMap = [(CKBalloonPluginManager *)self combinedStickersAppsIndexPathMap];
    v9 = [(CKBalloonPluginManager *)self _encodeIndexPathMap:combinedStickersAppsIndexPathMap];
    IMSetDomainValueForKey();

    if (notificationCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Broadcasting combined sticker apps changed notification.", v12, 2u);
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CKCombinedStickerAppsOrderChangedNotification" object:0];
LABEL_16:
    }
  }
}

- (id)balloonPluginIdentifierForAppExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x1E69A6990]])
  {
    identifierCopy = [*MEMORY[0x1E69A69F0] stringByAppendingFormat:@":%@:%@", @"0000000000", identifierCopy];
  }

  else
  {
    v5 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:identifierCopy];
    teamID = [v5 teamID];
    v7 = teamID;
    v8 = @"0000000000";
    if (teamID)
    {
      v8 = teamID;
    }

    v9 = v8;

    bundleIdentifier = [v5 bundleIdentifier];
    v11 = bundleIdentifier;
    if (bundleIdentifier)
    {
      v12 = bundleIdentifier;
    }

    else
    {
      v12 = identifierCopy;
    }

    v13 = v12;

    identifierCopy = [*MEMORY[0x1E69A69F0] stringByAppendingFormat:@":%@:%@", v9, v13];
  }

  return identifierCopy;
}

- (id)pluginForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__22;
  v17 = __Block_byref_object_dispose__22;
  v18 = 0;
  if ([identifierCopy isEqualToString:@"com.apple.messages.browser.RecentPlugin"])
  {
    recentPlugin = [objc_opt_class() recentPlugin];
LABEL_5:
    v6 = v14[5];
    v14[5] = recentPlugin;
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:@"com.apple.messages.browser.MorePlugin"])
  {
    recentPlugin = [objc_opt_class() morePlugin];
    goto LABEL_5;
  }

  allPlugins = [(CKBalloonPluginManager *)self allPlugins];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__CKBalloonPluginManager_pluginForIdentifier___block_invoke;
  v10[3] = &unk_1E72F0A60;
  v11 = identifierCopy;
  v12 = &v13;
  [allPlugins enumerateObjectsUsingBlock:v10];

  v6 = v11;
LABEL_7:

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__CKBalloonPluginManager_pluginForIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)pluginForExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22;
  v16 = __Block_byref_object_dispose__22;
  v17 = 0;
  allPlugins = [(CKBalloonPluginManager *)self allPlugins];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__CKBalloonPluginManager_pluginForExtensionIdentifier___block_invoke;
  v9[3] = &unk_1E72F0A60;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [allPlugins enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__CKBalloonPluginManager_pluginForExtensionIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [v8 extensionIdentifier];
  if ([v7 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)pluginForAdamID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22;
  v16 = __Block_byref_object_dispose__22;
  v17 = 0;
  allPlugins = [(CKBalloonPluginManager *)self allPlugins];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__CKBalloonPluginManager_pluginForAdamID___block_invoke;
  v9[3] = &unk_1E72F0A60;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [allPlugins enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __42__CKBalloonPluginManager_pluginForAdamID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 adamID];
  v8 = [v7 isEqualToNumber:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)invalidateIconCache
{
  iconCache = [(CKBalloonPluginManager *)self iconCache];
  [iconCache removeAllObjects];
}

- (NSMutableSet)prefetchIconKeys
{
  prefetchIconKeys = self->_prefetchIconKeys;
  if (!prefetchIconKeys)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_prefetchIconKeys;
    self->_prefetchIconKeys = v4;

    prefetchIconKeys = self->_prefetchIconKeys;
  }

  return prefetchIconKeys;
}

- (CKPreviewDispatchCache)snapshotCache
{
  snapshotCache = self->_snapshotCache;
  if (!snapshotCache)
  {
    v4 = objc_alloc_init(CKPreviewDispatchCache);
    v5 = self->_snapshotCache;
    self->_snapshotCache = v4;

    [(CKPreviewDispatchCache *)self->_snapshotCache resume];
    snapshotCache = self->_snapshotCache;
  }

  return snapshotCache;
}

- (void)clearBalloonPluginCache
{
  v55 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  v40 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"LastIconCachePurgeDate");
  if (v40)
  {
    v38 = [date dateByAddingTimeInterval:-86400.0];
    v3 = v38;
    if ([v40 compare:v38] == -1)
    {
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Clearing the balloon icon cache", buf, 2u);
        }
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v6 = CKTranscriptPluginIconCachesFileURL();
      path = [v6 path];
      v8 = [defaultManager enumeratorAtPath:path];

      nextObject = [v8 nextObject];
      if (nextObject)
      {
        *&v10 = 138412290;
        v37 = v10;
        do
        {
          v50 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          visibleRecentAppStripPlugins = [(CKBalloonPluginManager *)self visibleRecentAppStripPlugins];
          v12 = [visibleRecentAppStripPlugins countByEnumeratingWithState:&v47 objects:v54 count:16];
          if (v12)
          {
            v13 = *v48;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v48 != v13)
                {
                  objc_enumerationMutation(visibleRecentAppStripPlugins);
                }

                identifier = [*(*(&v47 + 1) + 8 * i) identifier];
                v16 = [identifier isEqualToString:nextObject];

                if (v16)
                {
                  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
                  v19 = CKTranscriptPluginIconCachesFileURL();
                  path2 = [v19 path];
                  v21 = [path2 stringByAppendingPathComponent:nextObject];
                  v46 = 0;
                  [defaultManager2 removeItemAtPath:v21 error:&v46];
                  v17 = v46;

                  goto LABEL_19;
                }
              }

              v12 = [visibleRecentAppStripPlugins countByEnumeratingWithState:&v47 objects:v54 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v17 = 0;
LABEL_19:

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          visibleFavoriteAppStripPlugins = [(CKBalloonPluginManager *)self visibleFavoriteAppStripPlugins];
          v23 = [visibleFavoriteAppStripPlugins countByEnumeratingWithState:&v42 objects:v53 count:16];
          if (v23)
          {
            v24 = *v43;
            while (2)
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v43 != v24)
                {
                  objc_enumerationMutation(visibleFavoriteAppStripPlugins);
                }

                identifier2 = [*(*(&v42 + 1) + 8 * j) identifier];
                v27 = [identifier2 isEqualToString:nextObject];

                if (v27)
                {
                  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
                  v29 = CKTranscriptPluginIconCachesFileURL();
                  path3 = [v29 path];
                  v31 = [path3 stringByAppendingPathComponent:nextObject];
                  v41 = v17;
                  [defaultManager3 removeItemAtPath:v31 error:&v41];
                  v32 = v41;

                  v17 = v32;
                  goto LABEL_29;
                }
              }

              v23 = [visibleFavoriteAppStripPlugins countByEnumeratingWithState:&v42 objects:v53 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

LABEL_29:

          if (v17 && IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = v37;
              v52 = v17;
              _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "Error clearing the balloon icon cache folder: %@", buf, 0xCu);
            }
          }

          nextObject2 = [v8 nextObject];

          nextObject = nextObject2;
        }

        while (nextObject2);
      }

      date2 = [MEMORY[0x1E695DF00] date];
      IMSetDomainValueForKey();

      v3 = v38;
    }
  }

  else
  {
    date3 = [MEMORY[0x1E695DF00] date];
    IMSetDomainValueForKey();
  }
}

- (NSArray)combinedStickerApps
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = objc_opt_new();
  v25 = objc_opt_new();
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  mEMORY[0x1E69A5AD0]2 = [MEMORY[0x1E69A5AD0] sharedInstance];
  allPlugins = [mEMORY[0x1E69A5AD0]2 allPlugins];
  [v2 addObjectsFromArray:allPlugins];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = *MEMORY[0x1E69A6978];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        presentationContexts = [v10 presentationContexts];
        identifier = [v10 identifier];
        if ([identifier hasSuffix:@"com.apple.messages.MSMessageExtensionBalloonPlugin:0000000000:com.apple.Stickers.UserGenerated.MessagesExtension"])
        {
          mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          v14 = [mEMORY[0x1E69A8070] isClingEnabled] ^ 1;
        }

        else
        {
          v14 = 0;
        }

        if ((v14 & 1) == 0 && (presentationContexts & 2) != 0)
        {
          identifier2 = [v10 identifier];
          v16 = [identifier2 containsString:@"com.apple.FunCamera"];

          identifier3 = [v10 identifier];
          v18 = [identifier3 containsString:v8];

          if ((v16 & 1) == 0 && (v18 & 1) == 0)
          {
            identifier4 = [v10 identifier];
            v20 = [identifier4 hasSuffix:@"com.apple.messages.MSMessageExtensionBalloonPlugin:0000000000:com.apple.Stickers.UserGenerated.MessagesExtension"];

            if ((v20 & 1) == 0)
            {
              [v25 addObject:v10];
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  [v24 addObjectsFromArray:v25];
  v21 = [objc_alloc(MEMORY[0x1E69A5AB8]) initWithIdentifier:@"com.apple.messages.browser.MorePlugin" browserDisplayName:@"MorePlugin" browserImageName:@"ellipsis.circle"];
  [v24 addObject:v21];
  [mEMORY[0x1E69A5AD0] insertPlugin:v21];

  return v24;
}

- (BOOL)isInternalPlugin:(id)plugin
{
  identifier = [plugin identifier];
  v4 = [identifier isEqualToString:@"com.apple.messages.browser.RecentPlugin"];

  return v4;
}

- (BOOL)hasLoadedExtensions
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = self->_allPlugins;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    v6 = *MEMORY[0x1E69A7118];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          extension = [v8 extension];
          if (extension)
          {
            v10 = extension;
            extension2 = [v8 extension];
            extensionPointIdentifier = [extension2 extensionPointIdentifier];
            v13 = [extensionPointIdentifier isEqualToString:v6];

            if (v13)
            {
              v14 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (NSArray)allPlugins
{
  v58 = *MEMORY[0x1E69E9840];
  allPlugins = self->_allPlugins;
  if (allPlugins)
  {
    goto LABEL_59;
  }

  selfCopy = self;
  v43 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v43 startTimingForKey:@"allPlugins"];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Fetching all plugins from plugin manager.", buf, 2u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  recentPlugin = [objc_opt_class() recentPlugin];
  if (recentPlugin)
  {
    [v5 addObject:recentPlugin];
  }

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  allPlugins = [mEMORY[0x1E69A5AD0] allPlugins];
  [v5 addObjectsFromArray:allPlugins];

  v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (!v9)
  {

    goto LABEL_47;
  }

  v47 = 0;
  v10 = *v52;
  v11 = *MEMORY[0x1E69A69F0];
  v49 = *MEMORY[0x1E69A69B8];
  v45 = *MEMORY[0x1E69A6978];
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v52 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v51 + 1) + 8 * i);
      identifier = [v13 identifier];
      v15 = [identifier isEqualToString:v11];

      if ((v15 & 1) == 0)
      {
        if ([v13 showInBrowser])
        {
          browserDisplayName = [v13 browserDisplayName];
          if (browserDisplayName)
          {
          }

          else if (![(CKBalloonPluginManager *)selfCopy isInternalPlugin:v13])
          {
            continue;
          }
        }

        presentationContexts = [v13 presentationContexts];
        if (IMIsRunningIniMessageAppsViewService())
        {
          v18 = 1;
        }

        else
        {
          v18 = CKIsRunningInCameraAppsClient() != 0;
        }

        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

        if (isStickersAppEnabled)
        {
          if ((presentationContexts & 2) != 0 || !v18)
          {
            goto LABEL_34;
          }

          identifier2 = [v13 identifier];
          v23 = IMStickersExtensionIdentifier();
          v24 = [identifier2 hasSuffix:v23];

          if (v24)
          {
            goto LABEL_34;
          }
        }

        else if ((v18 | presentationContexts))
        {
          v25 = (presentationContexts & 2) == 0 && v18;
          if (!v25 || ([v13 identifier], v26 = objc_claimAutoreleasedReturnValue(), IMStickersExtensionIdentifier(), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "hasSuffix:", v27), v27, v26, v28))
          {
LABEL_34:
            if (!IMIsRunningIniMessageAppsViewService())
            {
              goto LABEL_37;
            }

            identifier3 = [v13 identifier];
            if (([identifier3 hasSuffix:v49] & 1) == 0)
            {
              v30 = [identifier3 hasSuffix:v45];

              if (v30)
              {
                continue;
              }

LABEL_37:
              [v48 addObject:v13];
              identifier3 = [v13 identifier];
              [v46 addObject:identifier3];
              if ([identifier3 isEqualToString:@"com.apple.appstore.MessagesProvider"])
              {
                v31 = v13;

                v47 = v31;
              }

              identifier4 = [v13 identifier];
              v33 = [(CKBalloonPluginManager *)selfCopy isPluginEnabled:identifier4];

              if (v33)
              {
                [(CKBalloonPluginManager *)selfCopy _setSeen:1 forPlugin:v13];
              }
            }

            continue;
          }
        }
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
  }

  while (v9);

  if (v47)
  {
    [v48 removeObject:?];
    [v48 insertObject:v47 atIndex:0];
    goto LABEL_48;
  }

LABEL_47:
  v47 = 0;
LABEL_48:
  morePlugin = [objc_opt_class() morePlugin];
  if (morePlugin)
  {
    [v48 addObject:morePlugin];
  }

  [(CKBalloonPluginManager *)selfCopy saveWithNotification:0];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v36 = selfCopy->_allPlugins;
  selfCopy->_allPlugins = v35;

  pluginIndexPathMap = [(CKBalloonPluginManager *)selfCopy pluginIndexPathMap];
  v38 = [pluginIndexPathMap count] == 0;

  if (v38)
  {
    [(CKBalloonPluginManager *)selfCopy regeneratePluginIndexPaths];
  }

  combinedStickersAppsIndexPathMap = [(CKBalloonPluginManager *)selfCopy combinedStickersAppsIndexPathMap];
  v40 = [combinedStickersAppsIndexPathMap count] == 0;

  if (v40)
  {
    [(CKBalloonPluginManager *)selfCopy regenerateCombinedStickersAppsIndexPaths];
  }

  [v43 stopTimingForKey:@"allPlugins"];
  if (IMOSLoggingEnabled())
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v56 = v43;
      _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Loaded allPlugins, %@", buf, 0xCu);
    }
  }

  allPlugins = selfCopy->_allPlugins;
LABEL_59:

  return allPlugins;
}

- (NSArray)allEnabledPlugins
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__CKBalloonPluginManager_allEnabledPlugins__block_invoke;
  v4[3] = &unk_1E72F0A88;
  v4[4] = self;
  v2 = [(CKBalloonPluginManager *)self allPluginsPassingTest:v4];

  return v2;
}

uint64_t __43__CKBalloonPluginManager_allEnabledPlugins__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isPluginEnabled:v3];

  return v4;
}

- (NSArray)visiblePlugins
{
  if (!self->_visiblePlugins)
  {
    if (__CurrentTestName)
    {
      v3 = [(CKBalloonPluginManager *)self createFakeAppsForPPTTesting:60];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __40__CKBalloonPluginManager_visiblePlugins__block_invoke;
      v7[3] = &unk_1E72F0A88;
      v7[4] = self;
      v3 = [(CKBalloonPluginManager *)self allPluginsPassingTest:v7];
    }

    visiblePlugins = self->_visiblePlugins;
    self->_visiblePlugins = v3;
  }

  v5 = self->_visiblePlugins;

  return v5;
}

- (id)createFakeAppsForPPTTesting:(unint64_t)testing
{
  array = [MEMORY[0x1E695DF70] array];
  if (testing)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%d", @"Test", v5];
      v7 = [objc_alloc(MEMORY[0x1E69A5AB8]) initWithIdentifier:v6 browserDisplayName:v6 browserImageName:@"Recents"];
      [array addObject:v7];

      ++v5;
    }

    while (testing != v5);
  }

  return array;
}

- (NSArray)visibleSwitcherPlugins
{
  visibleSwitcherPlugins = self->_visibleSwitcherPlugins;
  if (!visibleSwitcherPlugins)
  {
    visibleDrawerPlugins = [(CKBalloonPluginManager *)self visibleDrawerPlugins];
    v5 = self->_visibleSwitcherPlugins;
    self->_visibleSwitcherPlugins = visibleDrawerPlugins;

    lastObject = [(NSArray *)self->_visibleSwitcherPlugins lastObject];
    identifier = [lastObject identifier];
    v8 = [identifier isEqualToString:@"com.apple.messages.browser.MorePlugin"];

    visibleSwitcherPlugins = self->_visibleSwitcherPlugins;
    if (v8)
    {
      v9 = [(NSArray *)visibleSwitcherPlugins subarrayWithRange:0, [(NSArray *)self->_visibleSwitcherPlugins count]- 1];
      v10 = self->_visibleSwitcherPlugins;
      self->_visibleSwitcherPlugins = v9;

      visibleSwitcherPlugins = self->_visibleSwitcherPlugins;
    }
  }

  return visibleSwitcherPlugins;
}

- (id)allPluginsPassingTest:(id)test
{
  testCopy = test;
  allPlugins = [(CKBalloonPluginManager *)self allPlugins];
  v6 = [allPlugins __imArrayByFilteringWithBlock:testCopy];

  return v6;
}

- (NSArray)disabledPlugins
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isClingEnabled = [mEMORY[0x1E69A8070] isClingEnabled];

  if (isClingEnabled)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__CKBalloonPluginManager_disabledPlugins__block_invoke;
    v7[3] = &unk_1E72F0A88;
    v7[4] = self;
    v5 = [(CKBalloonPluginManager *)self allPluginsPassingTest:v7];
  }

  return v5;
}

uint64_t __41__CKBalloonPluginManager_disabledPlugins__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 isPluginEnabled:v3];

  return v2 ^ 1;
}

- (unint64_t)launchStatusForPlugin:(id)plugin
{
  pluginCopy = plugin;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proxy = [pluginCopy proxy];
    containingBundle = [proxy containingBundle];
    applicationType = [containingBundle applicationType];
    v8 = [applicationType isEqualToString:*MEMORY[0x1E69635B8]];

    if (v8 && ([pluginCopy version], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69A56E0]), v9, (v10 & 1) == 0))
    {
      pluginVersionMap = self->_pluginVersionMap;
      identifier = [pluginCopy identifier];
      v14 = [(NSDictionary *)pluginVersionMap objectForKeyedSubscript:identifier];
      version = [pluginCopy version];
      v16 = [v14 isEqualToString:version];

      v11 = v16;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)updateLaunchStatus:(unint64_t)status forPlugin:(id)plugin withNotification:(BOOL)notification
{
  if (status == 1 && plugin)
  {
    notificationCopy = notification;
    pluginVersionMap = self->_pluginVersionMap;
    pluginCopy = plugin;
    v14 = [(NSDictionary *)pluginVersionMap mutableCopy];
    version = [pluginCopy version];
    identifier = [pluginCopy identifier];

    [v14 setObject:version forKeyedSubscript:identifier];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v14];
    v13 = self->_pluginVersionMap;
    self->_pluginVersionMap = v12;

    [(CKBalloonPluginManager *)self saveWithNotification:notificationCopy];
  }
}

- (void)updateLaunchTimeForPlugin:(id)plugin
{
  v4 = MEMORY[0x1E695DF00];
  pluginCopy = plugin;
  date = [v4 date];
  pluginLaunchTimeMap = [(CKBalloonPluginManager *)self pluginLaunchTimeMap];
  v7 = [pluginLaunchTimeMap mutableCopy];

  identifier = [pluginCopy identifier];

  [v7 setObject:date forKeyedSubscript:identifier];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];
  [(CKBalloonPluginManager *)self setPluginLaunchTimeMap:v9];

  [(CKBalloonPluginManager *)self saveWithNotification:0];
}

- (id)launchTimeForPlugin:(id)plugin
{
  pluginCopy = plugin;
  identifier = [pluginCopy identifier];
  v6 = [identifier isEqualToString:@"com.apple.messages.browser.RecentPlugin"];

  if (v6)
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  }

  else
  {
    pluginLaunchTimeMap = [(CKBalloonPluginManager *)self pluginLaunchTimeMap];
    identifier2 = [pluginCopy identifier];
    distantFuture = [pluginLaunchTimeMap objectForKey:identifier2];
  }

  return distantFuture;
}

- (BOOL)isPluginSeen:(id)seen
{
  seenCopy = seen;
  pluginSeenMap = [(CKBalloonPluginManager *)self pluginSeenMap];
  v6 = [pluginSeenMap objectForKeyedSubscript:seenCopy];

  return v6 != 0;
}

- (BOOL)isPluginSeenWithInstalledVersion:(id)version
{
  versionCopy = version;
  pluginSeenMap = [(CKBalloonPluginManager *)self pluginSeenMap];
  v6 = [pluginSeenMap objectForKeyedSubscript:versionCopy];

  if (v6)
  {
    v7 = [(CKBalloonPluginManager *)self pluginForIdentifier:versionCopy];
    v8 = v7;
    if (v7)
    {
      version = [v7 version];
      v10 = [version compare:v6 options:64] != 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setSeen:(BOOL)seen forPlugin:(id)plugin
{
  seenCopy = seen;
  v6 = [(CKBalloonPluginManager *)self pluginForIdentifier:plugin];
  if (v6)
  {
    v7 = v6;
    [(CKBalloonPluginManager *)self _setSeen:seenCopy forPlugin:v6];
    [(CKBalloonPluginManager *)self saveWithNotification:0];
    v6 = v7;
  }
}

- (void)_setSeen:(BOOL)seen forPlugin:(id)plugin
{
  seenCopy = seen;
  pluginCopy = plugin;
  pluginSeenMap = [(CKBalloonPluginManager *)self pluginSeenMap];
  v7 = [pluginSeenMap mutableCopy];

  if (seenCopy)
  {
    version = [pluginCopy version];
    identifier = [pluginCopy identifier];
    [v7 setObject:version forKeyedSubscript:identifier];
  }

  else
  {
    version = [pluginCopy identifier];
    [v7 removeObjectForKey:version];
  }

  v10 = [v7 copy];
  [(CKBalloonPluginManager *)self setPluginSeenMap:v10];
}

- (void)cleanSeenMap
{
  allPlugins = [(CKBalloonPluginManager *)self allPlugins];
  v10 = [allPlugins arrayByApplyingSelector:sel_identifier];

  pluginSeenMap = [(CKBalloonPluginManager *)self pluginSeenMap];
  allKeys = [pluginSeenMap allKeys];

  v6 = [allKeys arrayByExcludingObjectsInArray:v10];
  if ([v6 count])
  {
    pluginSeenMap2 = [(CKBalloonPluginManager *)self pluginSeenMap];
    v8 = [pluginSeenMap2 mutableCopy];

    [v8 removeObjectsForKeys:v6];
    v9 = [v8 copy];
    [(CKBalloonPluginManager *)self setPluginSeenMap:v9];
  }
}

- (unint64_t)unseenPluginCount
{
  allPlugins = [(CKBalloonPluginManager *)self allPlugins];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CKBalloonPluginManager_unseenPluginCount__block_invoke;
  v7[3] = &unk_1E72F0A88;
  v7[4] = self;
  v4 = [allPlugins __imArrayByFilteringWithBlock:v7];

  v5 = [v4 count];
  return v5;
}

uint64_t __43__CKBalloonPluginManager_unseenPluginCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  if ([v4 isPluginSeenWithInstalledVersion:v5])
  {
    isKindOfClass = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 identifier];
    if ([v7 isPluginVisible:v8])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

- (void)setAppStoreAutoEnableToggled:(BOOL)toggled
{
  if (self->_appStoreAutoEnableToggled != toggled)
  {
    self->_appStoreAutoEnableToggled = toggled;
    [(CKBalloonPluginManager *)self isAppStoreAutoEnableToggled];

    IMSetDomainBoolForKey();
  }
}

- (void)handleManagedConfigSettingsChangeNotification:(id)notification
{
  isAppInstallationEnabled = self->_isAppInstallationEnabled;
  isAppRemovalEnabled = self->_isAppRemovalEnabled;
  isCameraAllowed = self->_isCameraAllowed;
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v8 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADD98]] != 2;

  self->_isAppInstallationEnabled = v8;
  mEMORY[0x1E69ADFB8]2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v10 = [mEMORY[0x1E69ADFB8]2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADDA0]] != 2;

  self->_isAppRemovalEnabled = v10;
  mEMORY[0x1E69ADFB8]3 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v12 = [mEMORY[0x1E69ADFB8]3 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE00]] != 2;

  self->_isCameraAllowed = v12;
  if (__PAIR64__(isAppRemovalEnabled, isAppInstallationEnabled) != __PAIR64__(self->_isAppRemovalEnabled, self->_isAppInstallationEnabled) || isCameraAllowed != v12)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0];
  }
}

- (BOOL)isPluginVisible:(id)visible
{
  v4 = [(CKBalloonPluginManager *)self pluginForIdentifier:visible];
  if (v4)
  {
    v5 = [(CKBalloonPluginManager *)self isBalloonPluginVisible:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isBalloonPluginVisible:(id)visible
{
  visibleCopy = visible;
  identifier = [visibleCopy identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x1E69A6A00]];

  if (v6)
  {
    goto LABEL_2;
  }

  identifier2 = [visibleCopy identifier];
  v9 = [identifier2 isEqualToString:@"com.apple.messages.browser.RecentPlugin"];

  if (v9)
  {
LABEL_4:
    v7 = 1;
    goto LABEL_14;
  }

  if (CKIsSendMenuEnabled())
  {
    if ([visibleCopy showInSendMenu])
    {
LABEL_9:
      identifier3 = [visibleCopy identifier];
      v11 = [identifier3 hasSuffix:*MEMORY[0x1E69A6970]];

      if (v11)
      {
        _shouldShowActivity = [(CKBalloonPluginManager *)self _shouldShowActivity];
      }

      else
      {
        identifier4 = [visibleCopy identifier];
        v14 = [identifier4 hasSuffix:*MEMORY[0x1E69A6A38]];

        if (!v14)
        {
          goto LABEL_4;
        }

        _shouldShowActivity = [(CKBalloonPluginManager *)self _shouldShowSURF];
      }

      v7 = _shouldShowActivity;
      goto LABEL_14;
    }
  }

  else if ([visibleCopy showInBrowser])
  {
    goto LABEL_9;
  }

LABEL_2:
  v7 = 0;
LABEL_14:

  return v7;
}

- (BOOL)_shouldShowActivity
{
  if (!_shouldShowActivity__kHKHealthdBundleIdentifier)
  {
    v2 = MEMORY[0x193AF5ED0]("kHKHealthdBundleIdentifier", @"HealthKit");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&_shouldShowActivity__kHKHealthdBundleIdentifier, v3);
  }

  v4 = _shouldShowActivity__kHKAchievementStickersAvailableKey;
  if (!_shouldShowActivity__kHKAchievementStickersAvailableKey)
  {
    v5 = MEMORY[0x193AF5ED0]("kHKAchievementStickersAvailableKey", @"HealthKit");
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&_shouldShowActivity__kHKAchievementStickersAvailableKey, v6);
    v4 = _shouldShowActivity__kHKAchievementStickersAvailableKey;
  }

  v7 = CFPreferencesCopyValue(v4, _shouldShowActivity__kHKHealthdBundleIdentifier, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (NSMutableDictionary)activeBrowsers
{
  activeBrowsers = self->_activeBrowsers;
  if (!activeBrowsers)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_activeBrowsers;
    self->_activeBrowsers = v4;

    activeBrowsers = self->_activeBrowsers;
  }

  return activeBrowsers;
}

- (void)prepareForSuspend
{
  currentExtensionConsumers = [(CKBalloonPluginManager *)self currentExtensionConsumers];
  [currentExtensionConsumers removeAllObjects];

  if (!CKIsRunningInMessagesViewService() && !CKIsRunningInMessagesNotificationExtension())
  {
    [(CKBalloonPluginManager *)self forceTearDownRemoteViewsSkippingCameraApp:1];

    [(CKBalloonPluginManager *)self forceKillRemoteExtensionsWithDelay:1 skipCameraApp:1];
  }
}

- (void)forceKillRemoteExtensionsWithDelay:(BOOL)delay skipCameraApp:(BOOL)app
{
  delayCopy = delay;
  v14 = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__CKBalloonPluginManager_ViewControllerFactory__forceKillRemoteExtensionsWithDelay_skipCameraApp___block_invoke;
  v10[3] = &unk_1E72ED8D8;
  v10[4] = self;
  appCopy = app;
  v5 = _Block_copy(v10);
  v6 = +[CKPluginExtensionStateObserver sharedInstance];
  stickerDragActiveInCurrentProcess = [v6 stickerDragActiveInCurrentProcess];

  if (stickerDragActiveInCurrentProcess)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = @"YES";
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Not allowing force kill of extension (stickerDragActive: %@).", buf, 0xCu);
      }
    }
  }

  else if (delayCopy)
  {
    v9 = dispatch_time(0, 100000000);
    dispatch_after(v9, MEMORY[0x1E69E96A0], v5);
  }

  else
  {
    v5[2](v5);
  }
}

void __98__CKBalloonPluginManager_ViewControllerFactory__forceKillRemoteExtensionsWithDelay_skipCameraApp___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "forceKill of plugins in cache", buf, 2u);
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = [*(a1 + 32) activeBrowsers];
  obj = [v3 allValues];

  v4 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v4)
  {
    v6 = *v38;
    *&v5 = 138412290;
    v30 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        if (*(a1 + 40) == 1)
        {
          v9 = [*(*(&v37 + 1) + 8 * i) balloonPlugin];
          v10 = [v9 identifier];
          v11 = IMBalloonExtensionIDWithSuffix();
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
            continue;
          }
        }

        if (objc_opt_respondsToSelector())
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = [v8 balloonPlugin];
              v15 = [v14 identifier];
              *buf = v30;
              v42 = v15;
              _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Killing extension process with bundle ID %@", buf, 0xCu);
            }
          }

          [v8 killExtensionProcess];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v4);
  }

  obja = [*(a1 + 32) bundleIdentifiersForCurrentExtensionConsumers];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = [*(a1 + 32) allPlugins];
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v17)
  {
    v18 = *v34;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v33 + 1) + 8 * j);
        if (*(a1 + 40) == 1)
        {
          v21 = [*(*(&v33 + 1) + 8 * j) identifier];
          v22 = IMBalloonExtensionIDWithSuffix();
          v23 = [v21 isEqualToString:v22];

          if (v23)
          {
            continue;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v20 identifier];
          v25 = [obja containsObject:v24];

          if ((v25 & 1) == 0)
          {
            v26 = v20;
            if ((IMGetDomainBoolForKey() & 1) == 0)
            {
              if (IMOSLoggingEnabled())
              {
                v27 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  v28 = [v26 identifier];
                  *buf = 138412546;
                  v42 = v28;
                  v43 = 2112;
                  v44 = obja;
                  _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Killing plugin extension with bundle ID %@. consumedBundleIdentifiers %@", buf, 0x16u);
                }
              }

              v29 = [v26 extension];
              [v29 _kill:9];
            }
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v17);
  }
}

- (void)forceKillNonCameraRemoteExtensionsImmediately
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  activeBrowsers = [(CKBalloonPluginManager *)self activeBrowsers];
  allValues = [activeBrowsers allValues];

  v4 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        balloonPlugin = [v8 balloonPlugin];
        identifier = [balloonPlugin identifier];

        v11 = IMBalloonExtensionIDWithSuffix();
        if ([identifier isEqualToString:v11])
        {
        }

        else
        {
          v12 = objc_opt_respondsToSelector();

          if (v12)
          {
            [v8 killExtensionProcess];
          }
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)bundleIdentifiersForCurrentExtensionConsumers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  currentExtensionConsumers = [(CKBalloonPluginManager *)self currentExtensionConsumers];
  objectEnumerator = [currentExtensionConsumers objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    *&v7 = 138412546;
    v12 = v7;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        consumingBundleIdentifiers = [nextObject consumingBundleIdentifiers];
        [v3 addObjectsFromArray:consumingBundleIdentifiers];

        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = v12;
            v14 = nextObject;
            v15 = 2112;
            v16 = v3;
            _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "following consumed extensions in use by %@ won't be killed: %@", buf, 0x16u);
          }

LABEL_11:
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v14 = nextObject;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "currentExtensionConsumer doesn't conform to CKExtensionConsumer protocol %@", buf, 0xCu);
        }

        goto LABEL_11;
      }

      nextObject2 = [objectEnumerator nextObject];

      nextObject = nextObject2;
    }

    while (nextObject2);
  }

  return v3;
}

- (void)forceTearDownRemoteViewsSkippingCameraApp:(BOOL)app
{
  appCopy = app;
  v38 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "forceTearDownRemoteViews of plugins in cache", buf, 2u);
    }
  }

  bundleIdentifiersForCurrentExtensionConsumers = [(CKBalloonPluginManager *)self bundleIdentifiersForCurrentExtensionConsumers];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  activeBrowsers = [(CKBalloonPluginManager *)self activeBrowsers];
  obj = [activeBrowsers allValues];

  v8 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v10 = *v32;
    *&v9 = 138412290;
    v29 = v9;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        if (!appCopy || ([*(*(&v31 + 1) + 8 * v11) balloonPlugin], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), IMBalloonExtensionIDWithSuffix(), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v13, (v16 & 1) == 0))
        {
          balloonPlugin = [v12 balloonPlugin];
          identifier = [balloonPlugin identifier];
          v19 = [bundleIdentifiersForCurrentExtensionConsumers containsObject:identifier];

          if (v19)
          {
            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                balloonPlugin2 = [v12 balloonPlugin];
                identifier2 = [balloonPlugin2 identifier];
                *buf = v29;
                v36 = identifier2;
                _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "forceTearDownRemoteViews skipped for %@ because it is currently in use", buf, 0xCu);
              }
            }
          }

          else if (objc_opt_respondsToSelector())
          {
            if (IMOSLoggingEnabled())
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                balloonPlugin3 = [v12 balloonPlugin];
                identifier3 = [balloonPlugin3 identifier];
                *buf = v29;
                v36 = identifier3;
                _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "forceTearDownRemoteViews calling deferredForceTearDownRemoteView for %@", buf, 0xCu);
              }
            }

            [v12 deferredForceTearDownRemoteView];
          }

          else if (objc_opt_respondsToSelector())
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                balloonPlugin4 = [v12 balloonPlugin];
                identifier4 = [balloonPlugin4 identifier];
                *buf = v29;
                v36 = identifier4;
                _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "forceTearDownRemoteViews calling forceTearDownRemoteView for %@", buf, 0xCu);
              }
            }

            [v12 forceTearDownRemoteView];
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v8);
  }
}

- (void)invalidateAllActivePluginsSkippingCameraApp:(BOOL)app
{
  appCopy = app;
  v36[16] = *MEMORY[0x1E69E9840];
  v5 = +[CKPluginExtensionStateObserver sharedInstance];
  passKitUIPresented = [v5 passKitUIPresented];

  v7 = +[CKPluginExtensionStateObserver sharedInstance];
  stickerDragActiveInCurrentProcess = [v7 stickerDragActiveInCurrentProcess];

  v9 = IMOSLoggingEnabled();
  if (((passKitUIPresented | stickerDragActiveInCurrentProcess) & 1) == 0)
  {
    if (v9)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Removing all active browser plugins from cache", &v32, 2u);
      }
    }

    [(CKBalloonPluginManager *)self forceTearDownRemoteViewsSkippingCameraApp:appCopy];
    activeBrowsers = [(CKBalloonPluginManager *)self activeBrowsers];
    v15 = [activeBrowsers copy];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = v15;
    v16 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (!v16)
    {
LABEL_28:

      return;
    }

    v17 = *v29;
LABEL_17:
    v18 = 0;
    while (1)
    {
      if (*v29 != v17)
      {
        objc_enumerationMutation(v27);
      }

      v19 = *(*(&v28 + 1) + 8 * v18);
      if (appCopy)
      {
        v20 = IMBalloonExtensionIDWithSuffix();
        v21 = [v19 isEqualToString:v20];

        if (v21)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v22 = IMBalloonExtensionIDWithSuffix();
        v23 = [v19 isEqualToString:v22];

        if (v23)
        {
          activeBrowsers2 = [(CKBalloonPluginManager *)self activeBrowsers];
          v25 = [activeBrowsers2 objectForKey:v19];
          [(CKBalloonPluginManager *)self setLastUsedPhotoViewController:v25];
        }
      }

      activeBrowsers3 = [(CKBalloonPluginManager *)self activeBrowsers];
      [activeBrowsers3 removeObjectForKey:v19];

LABEL_26:
      if (v16 == ++v18)
      {
        v16 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (!v16)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }
    }
  }

  if (v9)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (passKitUIPresented)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (stickerDragActiveInCurrentProcess)
      {
        v11 = @"YES";
      }

      v32 = 138412546;
      v33 = v12;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Not allowing invalidation (passKitPresented: %@, stickerDragActive: %@), maintaining browser plugin cache", &v32, 0x16u);
    }
  }
}

- (void)_invalidatePluginForKey:(id)key
{
  v11 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = keyCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Invalidating plugin for key %@", &v9, 0xCu);
    }
  }

  activeBrowsers = [(CKBalloonPluginManager *)self activeBrowsers];
  v7 = [activeBrowsers objectForKeyedSubscript:keyCopy];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 forceTearDownRemoteView];
    }

    activeBrowsers2 = [(CKBalloonPluginManager *)self activeBrowsers];
    [activeBrowsers2 removeObjectForKey:keyCopy];
  }
}

- (id)browserSnapshotForKey:(id)key
{
  keyCopy = key;
  snapshotCache = [(CKBalloonPluginManager *)self snapshotCache];
  stringValue = [keyCopy stringValue];
  v7 = [snapshotCache cachedPreviewForKey:stringValue];

  if (!v7)
  {
    stringValue2 = [keyCopy stringValue];
    v9 = CKBrowserSnapshotPreviewURL(stringValue2, @"png");

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v9 options:1 error:0];
      if (v10)
      {
        v11 = MEMORY[0x1E69DCAB8];
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen scale];
        v13 = [v11 imageWithData:v10 scale:?];

        v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v13];
        snapshotCache2 = [(CKBalloonPluginManager *)self snapshotCache];
        stringValue3 = [keyCopy stringValue];
        [snapshotCache2 setCachedPreview:v7 key:stringValue3];

        snapshotCache3 = [(CKBalloonPluginManager *)self snapshotCache];
        keyWithOppositeInterfaceStyle = [keyCopy keyWithOppositeInterfaceStyle];
        stringValue4 = [keyWithOppositeInterfaceStyle stringValue];
        [snapshotCache3 setCachedPreview:0 key:stringValue4];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)updateSnapshotForBrowserViewController:(id)controller currentBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v26 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (controllerCopy)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v10 startTimingForKey:@"updateSnapshotForViewController:"];
    view = [controllerCopy view];
    balloonPlugin = [controllerCopy balloonPlugin];
    identifier = [balloonPlugin identifier];

    traitCollection = [view traitCollection];
    v15 = +[CKSnapshotCacheKey keyWithIdentifier:interfaceStyle:bounds:](CKSnapshotCacheKey, "keyWithIdentifier:interfaceStyle:bounds:", identifier, [traitCollection userInterfaceStyle], x, y, width, height);

    v16 = [view snapshotViewAfterScreenUpdates:0];
    snapshotCache = [(CKBalloonPluginManager *)self snapshotCache];
    keyWithOppositeInterfaceStyle = [v15 keyWithOppositeInterfaceStyle];
    stringValue = [keyWithOppositeInterfaceStyle stringValue];
    [snapshotCache setCachedPreview:0 key:stringValue];

    snapshotCache2 = [(CKBalloonPluginManager *)self snapshotCache];
    stringValue2 = [v15 stringValue];
    [snapshotCache2 setCachedPreview:v16 key:stringValue2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKBalloonPluginManagerSnapshotsDidChange" object:0];

    [v10 stopTimingForKey:@"updateSnapshotForViewController:"];
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v10;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Finished updateSnapshotForViewController:, %@", &v24, 0xCu);
      }
    }
  }
}

- (id)newViewControllerForPluginIdentifier:(id)identifier dataSource:(id)source
{
  identifierCopy = identifier;
  sourceCopy = source;
  v8 = [(CKBalloonPluginManager *)self pluginForIdentifier:identifierCopy];
  browserClass = [v8 browserClass];
  v10 = [browserClass instancesRespondToSelector:sel_initWithBalloonPlugin_dataSource_];
  v11 = [browserClass alloc];
  if (v10)
  {
    v12 = [v11 initWithBalloonPlugin:v8 dataSource:sourceCopy];
  }

  else
  {
    v12 = [v11 initWithBalloonPlugin:v8];
  }

  v13 = v12;
  if (v12)
  {
    activeBrowsers = [(CKBalloonPluginManager *)self activeBrowsers];
    [activeBrowsers setObject:v13 forKey:identifierCopy];
  }

  return v13;
}

- (id)viewControllerForPluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CKBalloonPluginManager *)self existingViewControllerForPluginIdentifier:identifierCopy];
  if (!v5)
  {
    v5 = [(CKBalloonPluginManager *)self viewControllerForPluginIdentifier:identifierCopy dataSource:0];
  }

  return v5;
}

- (id)existingViewControllerForPluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activeBrowsers = [(CKBalloonPluginManager *)self activeBrowsers];
  lastUsedPhotoViewController = [activeBrowsers objectForKey:identifierCopy];

  if (!lastUsedPhotoViewController)
  {
    v7 = IMBalloonExtensionIDWithSuffix();
    v8 = [identifierCopy isEqualToString:v7];

    if (v8)
    {
      lastUsedPhotoViewController = [(CKBalloonPluginManager *)self lastUsedPhotoViewController];
    }

    else
    {
      lastUsedPhotoViewController = 0;
    }
  }

  return lastUsedPhotoViewController;
}

- (id)viewControllerForPluginIdentifier:(id)identifier dataSource:(id)source
{
  identifierCopy = identifier;
  sourceCopy = source;
  v8 = [(CKBalloonPluginManager *)self existingViewControllerForPluginIdentifier:identifierCopy];
  if (objc_opt_respondsToSelector())
  {
    canReplaceDataSource = [v8 canReplaceDataSource];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    canReplaceDataSource = 0;
    if (!v8)
    {
LABEL_10:
      v8 = [(CKBalloonPluginManager *)self newViewControllerForPluginIdentifier:identifierCopy dataSource:sourceCopy];
      goto LABEL_11;
    }
  }

  balloonPluginDataSource = [v8 balloonPluginDataSource];
  v11 = (balloonPluginDataSource == sourceCopy) | canReplaceDataSource;

  if ((v11 & 1) == 0)
  {
    [(CKBalloonPluginManager *)self _invalidatePluginForKey:identifierCopy];

    goto LABEL_10;
  }

  if (canReplaceDataSource)
  {
    balloonPluginDataSource2 = [v8 balloonPluginDataSource];

    if (balloonPluginDataSource2 != sourceCopy)
    {
      [v8 setBalloonPluginDataSource:sourceCopy];
    }
  }

LABEL_11:

  return v8;
}

- (id)photosBrowserViewControllerWithPluginPayloads:(id)payloads
{
  payloadsCopy = payloads;
  existingPhotoBrowserViewController = [(CKBalloonPluginManager *)self existingPhotoBrowserViewController];
  v6 = *MEMORY[0x1E69A6A00];
  if (existingPhotoBrowserViewController)
  {
    v7 = existingPhotoBrowserViewController;
    [(CKBalloonPluginManager *)self _invalidatePluginForKey:*MEMORY[0x1E69A6A00]];
  }

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v9 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v6];

  browserClass = [v9 browserClass];
  if ([(objc_class *)browserClass instancesRespondToSelector:sel_initWithBalloonPlugin_pluginPayloads_])
  {
    v11 = [[browserClass alloc] initWithBalloonPlugin:v9 pluginPayloads:payloadsCopy];
  }

  else
  {
    v12 = [(objc_class *)browserClass instancesRespondToSelector:sel_initWithBalloonPlugin_dataSource_];
    v13 = [browserClass alloc];
    if (v12)
    {
      v11 = [v13 initWithBalloonPlugin:v9 dataSource:0];
    }

    else
    {
      v11 = [v13 initWithBalloonPlugin:v9];
    }
  }

  v14 = v11;
  if (v11)
  {
    activeBrowsers = [(CKBalloonPluginManager *)self activeBrowsers];
    [activeBrowsers setObject:v14 forKey:v6];
  }

  return v14;
}

- (id)digitalTouchViewControllerWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = *MEMORY[0x1E69A69A8];
  v6 = [(CKBalloonPluginManager *)self existingViewControllerForPluginIdentifier:*MEMORY[0x1E69A69A8]];
  if (v6)
  {
    v7 = v6;
    balloonPluginDataSource = [v6 balloonPluginDataSource];

    if (balloonPluginDataSource == sourceCopy)
    {
      goto LABEL_7;
    }

    [(CKBalloonPluginManager *)self _invalidatePluginForKey:v5];
  }

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v10 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v5];

  v7 = [objc_alloc(objc_msgSend(v10 "browserClass"))];
  if (v7)
  {
    activeBrowsers = [(CKBalloonPluginManager *)self activeBrowsers];
    [activeBrowsers setObject:v7 forKey:v5];
  }

LABEL_7:

  return v7;
}

- (id)handwritingViewControllerWithPluginPayloads:(id)payloads
{
  payloadsCopy = payloads;
  v5 = *MEMORY[0x1E69A69E0];
  v6 = [(CKBalloonPluginManager *)self existingViewControllerForPluginIdentifier:*MEMORY[0x1E69A69E0]];
  v7 = v6;
  if (payloadsCopy && v6)
  {

    [(CKBalloonPluginManager *)self _invalidatePluginForKey:v5];
LABEL_5:
    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    v9 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v5];

    browserClass = [v9 browserClass];
    if ([(objc_class *)browserClass instancesRespondToSelector:sel_initWithBalloonPlugin_pluginPayloads_])
    {
      v11 = [[browserClass alloc] initWithBalloonPlugin:v9 pluginPayloads:payloadsCopy];
    }

    else
    {
      v12 = [(objc_class *)browserClass instancesRespondToSelector:sel_initWithBalloonPlugin_dataSource_];
      v13 = [browserClass alloc];
      if (v12)
      {
        v11 = [v13 initWithBalloonPlugin:v9 dataSource:0];
      }

      else
      {
        v11 = [v13 initWithBalloonPlugin:v9];
      }
    }

    v7 = v11;

    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_11:

  return v7;
}

- (BOOL)isViewController:(id)controller fromPluginWithIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E69A5AD0];
  identifierCopy = identifier;
  controllerCopy = controller;
  sharedInstance = [v5 sharedInstance];
  v9 = [sharedInstance balloonPluginForBundleID:identifierCopy];

  v10 = objc_opt_class();
  LOBYTE(controllerCopy) = [v10 isEqual:{objc_msgSend(v9, "browserClass")}];

  return controllerCopy;
}

- (void)appInstallationWatcher:(id)watcher changedAppInstallation:(id)installation
{
  watcherCopy = watcher;
  installationCopy = installation;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__34;
  v25 = __Block_byref_object_dispose__34;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  visibleInstallations = [(CKBalloonPluginManager *)self visibleInstallations];

  if (!visibleInstallations)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(CKBalloonPluginManager *)self setVisibleInstallations:array];
  }

  visibleInstallations2 = [(CKBalloonPluginManager *)self visibleInstallations];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__CKBalloonPluginManager_CKBrowserSelectionController__appInstallationWatcher_changedAppInstallation___block_invoke;
  v13[3] = &unk_1E72F3268;
  v11 = installationCopy;
  v14 = v11;
  v15 = &v21;
  v16 = &v17;
  [visibleInstallations2 enumerateObjectsUsingBlock:v13];

  if (v22[5])
  {
    if ([v11 installed])
    {
      visibleInstallations3 = [(CKBalloonPluginManager *)self visibleInstallations];
      [visibleInstallations3 removeObjectAtIndex:v18[3]];
    }

    else
    {
      visibleInstallations3 = [(CKBalloonPluginManager *)self visibleInstallations];
      [visibleInstallations3 replaceObjectAtIndex:v18[3] withObject:v11];
    }

    goto LABEL_9;
  }

  if (([v11 installed] & 1) == 0)
  {
    visibleInstallations3 = [(CKBalloonPluginManager *)self visibleInstallations];
    [visibleInstallations3 addObject:v11];
LABEL_9:

    [(CKBalloonPluginManager *)self _refreshVisibleDrawerPluginsDueToAppInstallationChange];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

void __102__CKBalloonPluginManager_CKBrowserSelectionController__appInstallationWatcher_changedAppInstallation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v8 = [v11 bundleIdentifier];
  v9 = [*(a1 + 32) bundleIdentifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)appInstallationWatcher:(id)watcher addedAppInstallation:(id)installation
{
  installationCopy = installation;
  visibleInstallations = [(CKBalloonPluginManager *)self visibleInstallations];

  if (!visibleInstallations)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(CKBalloonPluginManager *)self setVisibleInstallations:array];
  }

  visibleInstallations2 = [(CKBalloonPluginManager *)self visibleInstallations];
  [visibleInstallations2 addObject:installationCopy];

  [(CKBalloonPluginManager *)self _refreshVisibleDrawerPluginsDueToAppInstallationChange];
}

- (void)updateAppInstallations
{
  v3 = +[CKAppInstallationWatcher sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__CKBalloonPluginManager_CKBrowserSelectionController__updateAppInstallations__block_invoke;
  v4[3] = &unk_1E72EE2A8;
  v4[4] = self;
  [v3 fetchAllAppInstallations:v4];
}

void __78__CKBalloonPluginManager_CKBrowserSelectionController__updateAppInstallations__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) visibleInstallations];
  v4 = [v3 count];

  v5 = [*(a1 + 32) filteredArrayOfInstallationsThatShouldBeVisible:v8];
  v6 = [v5 mutableCopy];
  [*(a1 + 32) setVisibleInstallations:v6];

  if (([*(a1 + 32) isAppInstallationObserver] & 1) == 0)
  {
    v7 = +[CKAppInstallationWatcher sharedInstance];
    [v7 addObserver:*(a1 + 32)];

    [*(a1 + 32) setIsAppInstallationObserver:1];
  }

  if (v4 || [v8 count])
  {
    [*(a1 + 32) _refreshVisibleDrawerPluginsDueToAppInstallationChange];
  }
}

- (void)_refreshVisibleDrawerPluginsDueToAppInstallationChange
{
  [(CKBalloonPluginManager *)self refreshPlugins];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKBrowserSelectionControllerInstallationsChangedNotification" object:0];
}

- (id)filteredArrayOfInstallationsThatShouldBeVisible:(id)visible
{
  v4 = MEMORY[0x1E695DFD8];
  visibleCopy = visible;
  visiblePlugins = [(CKBalloonPluginManager *)self visiblePlugins];
  v7 = [visiblePlugins __imArrayByApplyingBlock:&__block_literal_global_107];
  v8 = [v4 setWithArray:v7];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__CKBalloonPluginManager_CKBrowserSelectionController__filteredArrayOfInstallationsThatShouldBeVisible___block_invoke_2;
  v12[3] = &unk_1E72F32B0;
  v13 = v8;
  v9 = v8;
  v10 = [visibleCopy __imArrayByFilteringWithBlock:v12];

  return v10;
}

id __104__CKBalloonPluginManager_CKBrowserSelectionController__filteredArrayOfInstallationsThatShouldBeVisible___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 containingBundleIdentifier];
  }

  else
  {
    [v2 identifier];
  }
  v3 = ;

  return v3;
}

BOOL __104__CKBalloonPluginManager_CKBrowserSelectionController__filteredArrayOfInstallationsThatShouldBeVisible___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleIdentifier];
  if ([v4 containsObject:v5] & 1) != 0 || (objc_msgSend(v3, "installed"))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 installState] == 1 || objc_msgSend(v3, "installState") == 2 || objc_msgSend(v3, "installState") == 5;
  }

  return v6;
}

- (id)candidateAppStripPlugins
{
  appStripCandidatePlugins = self->_appStripCandidatePlugins;
  if (!appStripCandidatePlugins)
  {
    visibleAppStripPlugins = self->_visibleAppStripPlugins;
    self->_visibleAppStripPlugins = 0;

    visibleSwitcherPlugins = self->_visibleSwitcherPlugins;
    self->_visibleSwitcherPlugins = 0;

    [(CKBalloonPluginManager *)self setFavoriteAppStripPlugins:0];
    recentAppStripPlugins = self->_recentAppStripPlugins;
    self->_recentAppStripPlugins = 0;

    visibleRecentAppStripPlugins = self->_visibleRecentAppStripPlugins;
    self->_visibleRecentAppStripPlugins = 0;

    v8 = [(CKBalloonPluginManager *)self orderedPlugins:0];
    v9 = self->_appStripCandidatePlugins;
    self->_appStripCandidatePlugins = v8;

    appStripCandidatePlugins = self->_appStripCandidatePlugins;
  }

  return appStripCandidatePlugins;
}

- (NSArray)visibleDrawerPlugins
{
  visibleAppStripPlugins = self->_visibleAppStripPlugins;
  if (!visibleAppStripPlugins)
  {
    visibleFavoriteAppStripPlugins = [(CKBalloonPluginManager *)self visibleFavoriteAppStripPlugins];
    visibleRecentAppStripPlugins = [(CKBalloonPluginManager *)self visibleRecentAppStripPlugins];
    v6 = [visibleFavoriteAppStripPlugins arrayByAddingObjectsFromArray:visibleRecentAppStripPlugins];
    v7 = self->_visibleAppStripPlugins;
    self->_visibleAppStripPlugins = v6;

    visibleAppStripPlugins = self->_visibleAppStripPlugins;
  }

  return visibleAppStripPlugins;
}

- (NSArray)visibleFavoriteAppStripPlugins
{
  v21 = *MEMORY[0x1E69E9840];
  favoriteAppStripPlugins = [(CKBalloonPluginManager *)self favoriteAppStripPlugins];

  if (!favoriteAppStripPlugins)
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    candidateAppStripPlugins = [(CKBalloonPluginManager *)self candidateAppStripPlugins];
    v5 = [candidateAppStripPlugins countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(candidateAppStripPlugins);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            pluginIndexPathMap = [(CKBalloonPluginManager *)self pluginIndexPathMap];
            identifier = [v9 identifier];
            v12 = [pluginIndexPathMap objectForKey:identifier];

            if (v12 && ![v12 section])
            {
              [array addObject:v9];
            }
          }
        }

        v6 = [candidateAppStripPlugins countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    [(CKBalloonPluginManager *)self setFavoriteAppStripPlugins:array];
  }

  favoriteAppStripPlugins2 = [(CKBalloonPluginManager *)self favoriteAppStripPlugins];

  return favoriteAppStripPlugins2;
}

- (NSArray)recentAppStripPlugins
{
  v21 = *MEMORY[0x1E69E9840];
  recentAppStripPlugins = self->_recentAppStripPlugins;
  if (!recentAppStripPlugins)
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    candidateAppStripPlugins = [(CKBalloonPluginManager *)self candidateAppStripPlugins];
    v5 = [candidateAppStripPlugins countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(candidateAppStripPlugins);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            pluginIndexPathMap = [(CKBalloonPluginManager *)self pluginIndexPathMap];
            identifier = [v9 identifier];
            v12 = [pluginIndexPathMap objectForKey:identifier];

            if (!v12 || [v12 section] == 1)
            {
              [(NSArray *)array addObject:v9];
            }
          }
        }

        v6 = [candidateAppStripPlugins countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v13 = self->_recentAppStripPlugins;
    self->_recentAppStripPlugins = array;

    recentAppStripPlugins = self->_recentAppStripPlugins;
  }

  return recentAppStripPlugins;
}

- (NSArray)visibleRecentAppStripPlugins
{
  visibleRecentAppStripPlugins = self->_visibleRecentAppStripPlugins;
  if (!visibleRecentAppStripPlugins)
  {
    recentAppStripPlugins = [(CKBalloonPluginManager *)self recentAppStripPlugins];
    v5 = +[CKUIBehavior sharedBehaviors];
    suggestedAppStripLimit = [v5 suggestedAppStripLimit];

    v7 = +[CKUIBehavior sharedBehaviors];
    suggestedMinimumRecentsCount = [v7 suggestedMinimumRecentsCount];

    visibleFavoriteAppStripPlugins = [(CKBalloonPluginManager *)self visibleFavoriteAppStripPlugins];
    v10 = [visibleFavoriteAppStripPlugins count];

    v11 = [recentAppStripPlugins count];
    v12 = suggestedAppStripLimit - v10;
    if (suggestedAppStripLimit - v10 <= suggestedMinimumRecentsCount)
    {
      v12 = suggestedMinimumRecentsCount;
    }

    if (v12 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = [recentAppStripPlugins subarrayWithRange:{0, v13}];
    lastObject = [(NSArray *)v14 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [lastObject identifier];
      v17 = [identifier isEqualToString:@"com.apple.messages.browser.MorePlugin"] ^ 1;
    }

    else
    {
      v17 = 1;
    }

    morePlugin = [objc_opt_class() morePlugin];
    v19 = morePlugin;
    if (v17 && morePlugin)
    {
      v20 = [(NSArray *)v14 arrayByAddingObject:morePlugin];

      v14 = v20;
    }

    v21 = self->_visibleRecentAppStripPlugins;
    self->_visibleRecentAppStripPlugins = v14;

    visibleRecentAppStripPlugins = self->_visibleRecentAppStripPlugins;
  }

  return visibleRecentAppStripPlugins;
}

- (NSArray)potentiallyVisiblePlugins
{
  cachedPotentiallyVisiblePlugins = [(CKBalloonPluginManager *)self cachedPotentiallyVisiblePlugins];

  if (!cachedPotentiallyVisiblePlugins)
  {
    [(CKBalloonPluginManager *)self setFavoriteAppStripPlugins:0];
    recentAppStripPlugins = self->_recentAppStripPlugins;
    self->_recentAppStripPlugins = 0;

    visibleRecentAppStripPlugins = self->_visibleRecentAppStripPlugins;
    self->_visibleRecentAppStripPlugins = 0;

    v6 = [(CKBalloonPluginManager *)self orderedPlugins:1];
    [(CKBalloonPluginManager *)self setCachedPotentiallyVisiblePlugins:v6];
  }

  return [(CKBalloonPluginManager *)self cachedPotentiallyVisiblePlugins];
}

- (NSArray)potentiallyVisibleNonFavoritePlugins
{
  visibleFavoriteAppStripPlugins = [(CKBalloonPluginManager *)self visibleFavoriteAppStripPlugins];
  potentiallyVisiblePlugins = [(CKBalloonPluginManager *)self potentiallyVisiblePlugins];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__CKBalloonPluginManager_CKBrowserSelectionController__potentiallyVisibleNonFavoritePlugins__block_invoke;
  v8[3] = &unk_1E72F0A88;
  v9 = visibleFavoriteAppStripPlugins;
  v5 = visibleFavoriteAppStripPlugins;
  v6 = [potentiallyVisiblePlugins __imArrayByFilteringWithBlock:v8];

  return v6;
}

uint64_t __92__CKBalloonPluginManager_CKBrowserSelectionController__potentiallyVisibleNonFavoritePlugins__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) containsObject:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)allPotentiallyVisiblePlugins
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__CKBalloonPluginManager_CKBrowserSelectionController__allPotentiallyVisiblePlugins__block_invoke;
  v4[3] = &unk_1E72F0A88;
  v4[4] = self;
  v2 = [(CKBalloonPluginManager *)self allPluginsPassingTest:v4];

  return v2;
}

uint64_t __84__CKBalloonPluginManager_CKBrowserSelectionController__allPotentiallyVisiblePlugins__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isPluginVisible:v3];

  return v4;
}

- (id)orderedPlugins:(BOOL)plugins
{
  v114 = *MEMORY[0x1E69E9840];
  cachedPotentiallyVisiblePlugins = [(CKBalloonPluginManager *)self cachedPotentiallyVisiblePlugins];

  if (__CurrentTestName)
  {
    v6 = cachedPotentiallyVisiblePlugins == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    visiblePlugins = [(CKBalloonPluginManager *)self visiblePlugins];
    [(CKBalloonPluginManager *)self setCachedPotentiallyVisiblePlugins:visiblePlugins];
  }

  else if (!cachedPotentiallyVisiblePlugins)
  {
    allPotentiallyVisiblePlugins = [(CKBalloonPluginManager *)self allPotentiallyVisiblePlugins];
    v8 = +[CKBalloonPluginManager defaultFavoritePlugins];
    v9 = +[CKBalloonPluginManager morePlugin];
    lastObject = [allPotentiallyVisiblePlugins lastObject];
    v11 = lastObject;
    if (!v9)
    {
      if ([allPotentiallyVisiblePlugins count])
      {
        goto LABEL_21;
      }

      goto LABEL_54;
    }

    identifier = [lastObject identifier];
    identifier2 = [v9 identifier];
    if (([identifier isEqualToString:identifier2] & 1) == 0 && !__CurrentTestName)
    {
      v14 = [allPotentiallyVisiblePlugins count];

      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = MEMORY[0x1E696AEC0];
      identifier3 = [v9 identifier];
      identifier = [v15 stringWithFormat:@"More plugin was not found last in visible plugins list! Found %@ instead.", identifier3];

      identifier2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:identifier userInfo:0];
      [identifier2 raise];
    }

LABEL_12:
    if ([allPotentiallyVisiblePlugins count])
    {
      v17 = [allPotentiallyVisiblePlugins subarrayWithRange:{0, objc_msgSend(allPotentiallyVisiblePlugins, "count") - 1}];

      allPotentiallyVisiblePlugins = v17;
LABEL_21:
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke;
      v110[3] = &unk_1E72F0A88;
      v76 = v23;
      v111 = v76;
      v24 = [allPotentiallyVisiblePlugins __imArrayByFilteringWithBlock:v110];

      v25 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
      pluginIndexPathMap = [(CKBalloonPluginManager *)self pluginIndexPathMap];
      historicalPluginIndexPathMap = [(CKBalloonPluginManager *)self historicalPluginIndexPathMap];
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_2;
      v106[3] = &unk_1E72F32D8;
      v106[4] = self;
      v28 = pluginIndexPathMap;
      v107 = v28;
      v29 = historicalPluginIndexPathMap;
      v108 = v29;
      v68 = v25;
      v69 = v24;
      v109 = v68;
      v30 = [v24 sortedArrayUsingComparator:v106];
      v31 = [v30 mutableCopy];

      v32 = [v31 __imArrayByFilteringWithBlock:&__block_literal_global_204_0];
      firstObject = [v32 firstObject];

      if (firstObject)
      {
        [v31 removeObject:firstObject];
        [v31 insertObject:firstObject atIndex:0];
      }

      v75 = firstObject;
      v71 = v11;
      pluginsCopy = plugins;
      v34 = [v31 __imArrayByFilteringWithBlock:&__block_literal_global_206_0];
      firstObject2 = [v34 firstObject];

      if (firstObject2)
      {
        [v31 removeObject:firstObject2];
        [v31 insertObject:firstObject2 atIndex:0];
      }

      v73 = firstObject2;
      v70 = v9;
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_5;
      v103[3] = &unk_1E72F3320;
      v36 = v28;
      v104 = v36;
      v82 = v8;
      v105 = v82;
      v37 = [v31 __imArrayByFilteringWithBlock:v103];
      v66 = v31;
      v38 = [v31 arrayByExcludingObjectsInArray:v37];
      v77 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
      array = [MEMORY[0x1E695DF70] array];
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      obj = v38;
      v40 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v100;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v100 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v99 + 1) + 8 * i);
            if (![(CKBalloonPluginManager *)self _addPluginToRecentsFrontIfNeeded:v44 frontOfRecents:array pluginMap:v36 fallbackMap:v29])
            {
              [v78 addObject:v44];
            }
          }

          v41 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
        }

        while (v41);
      }

      v74 = array;
      v67 = v29;

      array2 = [MEMORY[0x1E695DF70] array];
      array3 = [MEMORY[0x1E695DF70] array];
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v80 = v37;
      v47 = [v80 countByEnumeratingWithState:&v95 objects:v112 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v96;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v96 != v49)
            {
              objc_enumerationMutation(v80);
            }

            v51 = *(*(&v95 + 1) + 8 * j);
            identifier4 = [v51 identifier];
            v53 = [v36 objectForKeyedSubscript:identifier4];
            v54 = v53;
            if (!v53 || [v53 section] == 0x7FFFFFFFFFFFFFFFLL || (v55 = objc_msgSend(v54, "item"), v56 = v77, v55 == 0x7FFFFFFFFFFFFFFFLL))
            {
              if ([v82 containsObject:identifier4])
              {
                v56 = array3;
              }

              else
              {
                v56 = array2;
              }
            }

            [v56 addObject:v51];
          }

          v48 = [v80 countByEnumeratingWithState:&v95 objects:v112 count:16];
        }

        while (v48);
      }

      if ([array3 count])
      {
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_6;
        v93[3] = &unk_1E72F3348;
        v94 = v82;
        v57 = [array3 sortedArrayUsingComparator:v93];
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_7;
        v89[3] = &unk_1E72F3370;
        v90 = v73;
        v91 = v75;
        v92 = v77;
        [v57 enumerateObjectsUsingBlock:v89];
      }

      [v77 addObjectsFromArray:array2];
      v58 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v74, "count")}];
      [v78 insertObjects:v74 atIndexes:v58];

      v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v59 addObjectsFromArray:v77];
      visibleInstallations = [(CKBalloonPluginManager *)self visibleInstallations];
      v61 = [(CKBalloonPluginManager *)self filteredArrayOfInstallationsThatShouldBeVisible:visibleInstallations];
      [v59 addObjectsFromArray:v61];

      [v59 addObjectsFromArray:v78];
      [v59 addObjectsFromArray:v76];
      plugins = pluginsCopy;
      if (v70)
      {
        [v59 addObject:v70];
      }

      v62 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v59, "count")}];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_211;
      v84[3] = &unk_1E72F3398;
      v85 = v77;
      v86 = v78;
      v87 = v70;
      v63 = v62;
      v88 = v63;
      v64 = v70;
      v79 = v78;
      v65 = v77;
      [v59 enumerateObjectsUsingBlock:v84];
      if ([(CKBalloonPluginManager *)self hasLoadedExtensions])
      {
        [(CKBalloonPluginManager *)self setPluginIndexPathMap:v63];
        [(CKBalloonPluginManager *)self saveWithNotification:0];
      }

      [(CKBalloonPluginManager *)self setCachedPotentiallyVisiblePlugins:v59];

      goto LABEL_15;
    }

LABEL_54:

    v20 = MEMORY[0x1E695E0F0];
    goto LABEL_17;
  }

LABEL_15:
  cachedPotentiallyVisiblePlugins2 = [(CKBalloonPluginManager *)self cachedPotentiallyVisiblePlugins];
  v20 = cachedPotentiallyVisiblePlugins2;
  if (!plugins)
  {
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_213;
    v83[3] = &unk_1E72F33C0;
    v83[4] = self;
    v21 = [cachedPotentiallyVisiblePlugins2 __imArrayByFilteringWithBlock:v83];

    v20 = v21;
  }

LABEL_17:

  return v20;
}

uint64_t __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isEnabled];
  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  return v4;
}

uint64_t __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = [a2 identifier];
  v8 = [v5 _pluginIndexPathForFavoritePluginWithIdentifier:v7 pluginMap:a1[5] fallbackMap:a1[6]];
  v9 = v8;
  if (!v8)
  {
    v9 = a1[7];
  }

  v10 = v9;

  v11 = a1[4];
  v12 = [v6 identifier];

  v13 = [v11 _pluginIndexPathForFavoritePluginWithIdentifier:v12 pluginMap:a1[5] fallbackMap:a1[6]];
  v14 = v13;
  if (!v13)
  {
    v14 = a1[7];
  }

  v15 = v14;

  v16 = [v10 compare:v15];
  return v16;
}

uint64_t __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToIgnoringCase:*MEMORY[0x1E69A6988]];

  return v3;
}

uint64_t __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = IMBalloonExtensionIDWithSuffix();
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = v4;
  if (!v4)
  {
    if ([*(a1 + 40) containsObject:v3])
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = IMBalloonExtensionIDWithSuffix();
    v6 = [v3 isEqualToString:v7];

    goto LABEL_6;
  }

  if ([v4 section])
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 1;
LABEL_6:

  return v6;
}

uint64_t __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 identifier];
  v8 = [v5 indexOfObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 identifier];

  v11 = [v9 indexOfObject:v10];
  if (v8 < v11)
  {
    return -1;
  }

  else
  {
    return v8 > v11;
  }
}

void __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_7(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 identifier];
  v7 = IMBalloonExtensionIDWithSuffix();
  v8 = [v6 isEqualToIgnoringCase:v7];

  v9 = [v5 identifier];
  v10 = [v9 isEqualToIgnoringCase:*MEMORY[0x1E69A6988]];

  v11 = v8 ^ 1u;
  if ((v8 & 1) == 0 && (v10 & 1) == 0)
  {
    if (*(a1 + 32))
    {
      v12 = a3 + 1;
    }

    else
    {
      v12 = a3;
    }

    if (*(a1 + 40))
    {
      v11 = v12 + 1;
    }

    else
    {
      v11 = v12;
    }
  }

  v13 = [*(a1 + 48) count];
  if (v11 <= v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_7_cold_1(v11, v14, v15);
    }
  }

  [*(a1 + 48) insertObject:v5 atIndex:v14];
}

void __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_211(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = (a1 + 32);
  if ([*(a1 + 32) containsObject:v3])
  {
    v5 = &CKAppStripFavoritesSection;
LABEL_6:
    v6 = *v5;
    v7 = [*v4 indexOfObject:v3];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:v6];
      v10 = *(a1 + 56);
      v11 = [v3 identifier];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    goto LABEL_16;
  }

  v4 = (a1 + 40);
  if ([*(a1 + 40) containsObject:v3])
  {
    v5 = &CKAppStripRecentsSection;
    goto LABEL_6;
  }

  if ([v3 isEnabled] && *(a1 + 48) == v3)
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_211_cold_1(v3, v12);
    }
  }

LABEL_16:
}

uint64_t __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_213(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) isEnabledAndVisible:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isPluginSystemApp:(id)app
{
  appCopy = app;
  v4 = appCopy;
  if (!appCopy)
  {
    identifier = IMLogHandleForCategory();
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
    {
      [(CKBalloonPluginManager(CKBrowserSelectionController) *)identifier isPluginSystemApp:v13, v14, v15, v16, v17, v18, v19];
    }

    goto LABEL_8;
  }

  identifier = [appCopy identifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_13;
  }

  proxy = [v4 proxy];
  identifier2 = [v4 identifier];
  v8 = [identifier2 isEqualToString:identifier];

  if (v8 && proxy)
  {
    containingBundle = [proxy containingBundle];
    applicationType = [containingBundle applicationType];
    v11 = [applicationType isEqualToString:*MEMORY[0x1E69635B8]];

    v12 = v11 ^ 1;
  }

  else
  {
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(CKBalloonPluginManager(CKBrowserSelectionController) *)v4 isPluginSystemApp:identifier, v20];
    }

    v12 = 0;
  }

LABEL_13:
  return v12;
}

- (BOOL)isPluginHiddenFromSendMenuAndStickers:(id)stickers
{
  v19 = *MEMORY[0x1E69E9840];
  stickersCopy = stickers;
  messagesAppDomain = [MEMORY[0x1E695E000] messagesAppDomain];
  v5 = [messagesAppDomain valueForKey:@"SendMenuHiddenExtensionBundleIdentifiers"];

  if (v5)
  {
    messagesAppDomain2 = [MEMORY[0x1E695E000] messagesAppDomain];
    v7 = [messagesAppDomain2 stringArrayForKey:@"SendMenuHiddenExtensionBundleIdentifiers"];

    extensionBundleIdentifier = [stickersCopy extensionBundleIdentifier];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v14 + 1) + 8 * i) isEqualToString:{extensionBundleIdentifier, v14}])
          {
            LOBYTE(v10) = 1;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)setPlugin:(id)plugin hiddenInSendMenuAndStickers:(BOOL)stickers
{
  stickersCopy = stickers;
  v5 = MEMORY[0x1E695E000];
  pluginCopy = plugin;
  messagesAppDomain = [v5 messagesAppDomain];
  v8 = [messagesAppDomain valueForKey:@"SendMenuHiddenExtensionBundleIdentifiers"];

  if (v8)
  {
    messagesAppDomain2 = [MEMORY[0x1E695E000] messagesAppDomain];
    v10 = [messagesAppDomain2 stringArrayForKey:@"SendMenuHiddenExtensionBundleIdentifiers"];
    array = [v10 mutableCopy];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  extensionBundleIdentifier = [pluginCopy extensionBundleIdentifier];

  if (stickersCopy)
  {
    [array removeObject:extensionBundleIdentifier];
  }

  else
  {
    if ([array containsObject:extensionBundleIdentifier])
    {
      goto LABEL_9;
    }

    [array addObject:extensionBundleIdentifier];
  }

  messagesAppDomain3 = [MEMORY[0x1E695E000] messagesAppDomain];
  [messagesAppDomain3 setValue:array forKey:@"SendMenuHiddenExtensionBundleIdentifiers"];

LABEL_9:
}

- (NSArray)orderedCombinedStickerApps
{
  allOrderedCombinedStickerApps = [(CKBalloonPluginManager *)self allOrderedCombinedStickerApps];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__CKBalloonPluginManager_CKBrowserSelectionController__orderedCombinedStickerApps__block_invoke;
  v6[3] = &unk_1E72F0A88;
  v6[4] = self;
  v4 = [allOrderedCombinedStickerApps __imArrayByFilteringWithBlock:v6];

  return v4;
}

uint64_t __82__CKBalloonPluginManager_CKBrowserSelectionController__orderedCombinedStickerApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLaunchProhibited])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) isPluginHiddenFromSendMenuAndStickers:v3] ^ 1;
  }

  return v4;
}

- (NSArray)allOrderedCombinedStickerApps
{
  combinedStickerApps = [(CKBalloonPluginManager *)self combinedStickerApps];
  lastObject = [combinedStickerApps lastObject];
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
  combinedStickersAppsIndexPathMap = [(CKBalloonPluginManager *)self combinedStickersAppsIndexPathMap];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__CKBalloonPluginManager_CKBrowserSelectionController__allOrderedCombinedStickerApps__block_invoke;
  v12[3] = &unk_1E72F33E8;
  v12[4] = self;
  v13 = combinedStickersAppsIndexPathMap;
  v14 = v5;
  v7 = v5;
  v8 = combinedStickersAppsIndexPathMap;
  v9 = [combinedStickerApps sortedArrayUsingComparator:v12];
  v10 = [v9 mutableCopy];

  [v10 removeObject:lastObject];
  [v10 addObject:lastObject];

  return v10;
}

uint64_t __85__CKBalloonPluginManager_CKBrowserSelectionController__allOrderedCombinedStickerApps__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = [a2 identifier];
  v8 = [v5 _pluginIndexPathForPluginWithIdentifier:v7 pluginMap:a1[5]];
  v9 = v8;
  if (!v8)
  {
    v9 = a1[6];
  }

  v10 = v9;

  v11 = a1[4];
  v12 = [v6 identifier];

  v13 = [v11 _pluginIndexPathForPluginWithIdentifier:v12 pluginMap:a1[5]];
  v14 = v13;
  if (!v13)
  {
    v14 = a1[6];
  }

  v15 = v14;

  v16 = [v10 compare:v15];
  return v16;
}

- (id)_pluginIndexPathForFavoritePluginWithIdentifier:(id)identifier pluginMap:(id)map fallbackMap:(id)fallbackMap
{
  identifierCopy = identifier;
  fallbackMapCopy = fallbackMap;
  v9 = [map objectForKeyedSubscript:identifierCopy];
  v10 = v9;
  if (!v9 || [v9 section] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v10, "item") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [fallbackMapCopy objectForKeyedSubscript:identifierCopy];

    if (!v11 || [v11 section] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v11, "item") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v11 = v10;
  }

  v12 = v10;

  return v10;
}

- (id)_pluginIndexPathForPluginWithIdentifier:(id)identifier pluginMap:(id)map
{
  v4 = [map objectForKeyedSubscript:identifier];
  v5 = v4;
  if (v4 && [v4 section] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v5 item] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)_addPluginToRecentsFrontIfNeeded:(id)needed frontOfRecents:(id)recents pluginMap:(id)map fallbackMap:(id)fallbackMap
{
  neededCopy = needed;
  recentsCopy = recents;
  fallbackMapCopy = fallbackMap;
  mapCopy = map;
  identifier = [neededCopy identifier];
  v15 = [(CKBalloonPluginManager *)self _pluginIndexPathForFavoritePluginWithIdentifier:identifier pluginMap:mapCopy fallbackMap:fallbackMapCopy];

  if (!v15)
  {
    [recentsCopy addObject:neededCopy];
  }

  return v15 == 0;
}

- (void)regeneratePluginIndexPaths
{
  v36 = *MEMORY[0x1E69E9840];
  if ([(CKBalloonPluginManager *)self hasLoadedExtensions])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __82__CKBalloonPluginManager_CKBrowserSelectionController__regeneratePluginIndexPaths__block_invoke;
    v32[3] = &unk_1E72F0A88;
    v32[4] = self;
    v22 = [(CKBalloonPluginManager *)self allPluginsPassingTest:v32];
    v4 = [v22 __imArrayByApplyingBlock:&__block_literal_global_226_1];
    selfCopy = self;
    defaultFavoritePlugins = [objc_opt_class() defaultFavoritePlugins];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = [defaultFavoritePlugins countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(defaultFavoritePlugins);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          if ([v4 containsObject:v11])
          {
            v12 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:0];
            [v3 setObject:v12 forKeyedSubscript:v11];

            ++v8;
          }
        }

        v7 = [defaultFavoritePlugins countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v7);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v25;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v24 + 1) + 8 * j);
          if (([defaultFavoritePlugins containsObject:v19] & 1) == 0 && (objc_msgSend(v19, "isEqualToString:", @"com.apple.messages.browser.MorePlugin") & 1) == 0)
          {
            v20 = [MEMORY[0x1E696AC88] indexPathForItem:v16 inSection:1];
            [v3 setObject:v20 forKeyedSubscript:v19];

            ++v16;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v21 = [MEMORY[0x1E696AC88] indexPathForItem:v16 inSection:1];
    [v3 setObject:v21 forKeyedSubscript:@"com.apple.messages.browser.MorePlugin"];

    [(CKBalloonPluginManager *)selfCopy setPluginIndexPathMap:v3];
  }

  else
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Not generating a default plugin index map as extensions haven't finished loading, we'd possible be stomping over user info", buf, 2u);
    }
  }
}

- (void)regenerateCombinedStickersAppsIndexPaths
{
  if ([(CKBalloonPluginManager *)self hasLoadedExtensions])
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    combinedStickerApps = [(CKBalloonPluginManager *)self combinedStickerApps];
    v5 = [combinedStickerApps mutableCopy];

    lastObject = [v5 lastObject];
    identifier = [lastObject identifier];
    v8 = [identifier isEqualToString:@"com.apple.messages.browser.MorePlugin"];

    if ((v8 & 1) == 0)
    {
      [(CKBalloonPluginManager(CKBrowserSelectionController) *)a2 regenerateCombinedStickersAppsIndexPaths];
    }

    if ([v5 count])
    {
      v9 = 0;
      do
      {
        v10 = [v5 objectAtIndexedSubscript:v9];
        identifier2 = [v10 identifier];

        v12 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
        [v14 setObject:v12 forKeyedSubscript:identifier2];

        ++v9;
      }

      while (v9 < [v5 count]);
    }

    [(CKBalloonPluginManager *)self setCombinedStickersAppsIndexPathMap:v14];
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Not generating a default stickers apps index map as extensions haven't finished loading, we'd possible be stomping over user info", buf, 2u);
    }
  }
}

- (void)updateIndexPath:(id)path forPlugin:(id)plugin isDrawerPluginPath:(BOOL)pluginPath
{
  pathCopy = path;
  pluginCopy = plugin;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    visibleFavoriteAppStripPlugins = [(CKBalloonPluginManager *)self visibleFavoriteAppStripPlugins];
    v10 = [visibleFavoriteAppStripPlugins mutableCopy];

    recentAppStripPlugins = [(CKBalloonPluginManager *)self recentAppStripPlugins];
    v12 = [recentAppStripPlugins mutableCopy];

    if ([pathCopy section])
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    [v10 removeObject:pluginCopy];
    [v12 removeObject:pluginCopy];
    -[NSObject insertObject:atIndex:](v14, "insertObject:atIndex:", pluginCopy, [pathCopy row]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __101__CKBalloonPluginManager_CKBrowserSelectionController__updateIndexPath_forPlugin_isDrawerPluginPath___block_invoke;
    v24[3] = &unk_1E72F0A38;
    v24[4] = self;
    [v10 enumerateObjectsUsingBlock:v24];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __101__CKBalloonPluginManager_CKBrowserSelectionController__updateIndexPath_forPlugin_isDrawerPluginPath___block_invoke_2;
    v23[3] = &unk_1E72F0A38;
    v23[4] = self;
    [v12 enumerateObjectsUsingBlock:v23];

    [(CKBalloonPluginManager *)self _updateHistoricalPluginIndexPathMap];
    [(CKBalloonPluginManager *)self refreshPlugins];
    visiblePlugins = [(CKBalloonPluginManager *)self visiblePlugins];
    [(CKBalloonPluginManager *)self saveWithNotification:1];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CKBalloonPluginManager(CKBrowserSelectionController) *)v10 updateIndexPath:v16 forPlugin:v17 isDrawerPluginPath:v18, v19, v20, v21, v22];
    }
  }
}

void __101__CKBalloonPluginManager_CKBrowserSelectionController__updateIndexPath_forPlugin_isDrawerPluginPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AC88];
  v6 = a2;
  v10 = [v5 indexPathForRow:a3 inSection:0];
  v7 = [*(a1 + 32) pluginIndexPathMap];
  v8 = [v6 identifier];
  [v7 setValue:v10 forKey:v8];

  v9 = [v6 identifier];

  NSLog(&cfstr_PuttingToTuTu.isa, v9, [v10 section], objc_msgSend(v10, "row"));
}

void __101__CKBalloonPluginManager_CKBrowserSelectionController__updateIndexPath_forPlugin_isDrawerPluginPath___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AC88];
  v6 = a2;
  v10 = [v5 indexPathForRow:a3 inSection:1];
  v7 = [*(a1 + 32) pluginIndexPathMap];
  v8 = [v6 identifier];
  [v7 setValue:v10 forKey:v8];

  v9 = [v6 identifier];

  NSLog(&cfstr_PuttingToTuTu.isa, v9, [v10 section], objc_msgSend(v10, "row"));
}

- (void)updateIndexPath:(id)path forCombinedStickerApp:(id)app
{
  pathCopy = path;
  appCopy = app;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    orderedCombinedStickerApps = [(CKBalloonPluginManager *)self orderedCombinedStickerApps];
    v9 = [orderedCombinedStickerApps mutableCopy];

    [v9 removeObject:appCopy];
    -[NSObject insertObject:atIndex:](v9, "insertObject:atIndex:", appCopy, [pathCopy row]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __94__CKBalloonPluginManager_CKBrowserSelectionController__updateIndexPath_forCombinedStickerApp___block_invoke;
    v17[3] = &unk_1E72F0A38;
    v17[4] = self;
    [v9 enumerateObjectsUsingBlock:v17];
    [(CKBalloonPluginManager *)self saveCombinedAppsWithNotification:1];
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CKBalloonPluginManager(CKBrowserSelectionController) *)v9 updateIndexPath:v10 forPlugin:v11 isDrawerPluginPath:v12, v13, v14, v15, v16];
    }
  }
}

void __94__CKBalloonPluginManager_CKBrowserSelectionController__updateIndexPath_forCombinedStickerApp___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AC88];
  v6 = a2;
  v10 = [v5 indexPathForRow:a3 inSection:0];
  v7 = [*(a1 + 32) combinedStickersAppsIndexPathMap];
  v8 = [v6 identifier];
  [v7 setValue:v10 forKey:v8];

  v9 = [v6 identifier];

  NSLog(&cfstr_PuttingToTuTu.isa, v9, [v10 section], objc_msgSend(v10, "row"));
}

- (BOOL)isEnabledAndVisible:(id)visible
{
  visibleCopy = visible;
  identifier = [visibleCopy identifier];
  if ([(CKBalloonPluginManager *)self isPluginEnabled:identifier])
  {
    identifier2 = [visibleCopy identifier];
    v7 = [(CKBalloonPluginManager *)self isPluginVisible:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeVisibleInstallationWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__34;
    v17 = __Block_byref_object_dispose__34;
    v18 = 0;
    visibleInstallations = [(CKBalloonPluginManager *)self visibleInstallations];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __88__CKBalloonPluginManager_CKBrowserSelectionController__removeVisibleInstallationWithID___block_invoke;
    v10 = &unk_1E72F3410;
    v11 = dCopy;
    v12 = &v13;
    [visibleInstallations enumerateObjectsUsingBlock:&v7];

    v6 = [(CKBalloonPluginManager *)self visibleInstallations:v7];
    [v6 removeObject:v14[5]];

    [(CKBalloonPluginManager *)self _refreshVisibleDrawerPluginsDueToAppInstallationChange];
    _Block_object_dispose(&v13, 8);
  }
}

void __88__CKBalloonPluginManager_CKBrowserSelectionController__removeVisibleInstallationWithID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 bundleIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)descriptionOfVisibleDrawerPlugins
{
  string = [MEMORY[0x1E696AD60] string];
  visibleDrawerPlugins = [(CKBalloonPluginManager *)self visibleDrawerPlugins];
  if ([visibleDrawerPlugins count])
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        [string appendFormat:@"\n"];
      }

      v6 = [visibleDrawerPlugins objectAtIndexedSubscript:v5];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __89__CKBalloonPluginManager_CKBrowserSelectionController__descriptionOfVisibleDrawerPlugins__block_invoke;
      v8[3] = &unk_1E72EBB28;
      v9 = string;
      [v6 enumerateObjectsUsingBlock:v8];

      ++v5;
    }

    while (v5 < [visibleDrawerPlugins count]);
  }

  return string;
}

void __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_7_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "CKBalloonPluginManager_SelectionController: index %lu is greater than visibleFavoritePlugins count %lu", &v3, 0x16u);
}

void __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_211_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Could not determine if %@ is a recent or favorite!", &v4, 0xCu);
}

@end