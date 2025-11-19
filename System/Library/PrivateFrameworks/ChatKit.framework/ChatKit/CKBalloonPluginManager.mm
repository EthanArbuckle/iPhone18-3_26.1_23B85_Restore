@interface CKBalloonPluginManager
+ (id)defaultFavoritePlugins;
+ (id)morePlugin;
+ (id)recentPlugin;
+ (id)sharedInstance;
- (BOOL)_addPluginToRecentsFrontIfNeeded:(id)a3 frontOfRecents:(id)a4 pluginMap:(id)a5 fallbackMap:(id)a6;
- (BOOL)_shouldForceRegenerateIndexPathMap;
- (BOOL)_shouldForceRegenerateStickersIndexPathMap;
- (BOOL)_shouldShowActivity;
- (BOOL)_shouldUninstallContainingBundle:(id)a3;
- (BOOL)hasLoadedExtensions;
- (BOOL)isBalloonPluginVisible:(id)a3;
- (BOOL)isEnabledAndVisible:(id)a3;
- (BOOL)isInternalPlugin:(id)a3;
- (BOOL)isPluginEnabled:(id)a3;
- (BOOL)isPluginHiddenFromSendMenuAndStickers:(id)a3;
- (BOOL)isPluginSeen:(id)a3;
- (BOOL)isPluginSeenWithInstalledVersion:(id)a3;
- (BOOL)isPluginSystemApp:(id)a3;
- (BOOL)isPluginVisible:(id)a3;
- (BOOL)isViewController:(id)a3 fromPluginWithIdentifier:(id)a4;
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
- (id)_decodeIndexPathMap:(id)a3 allowMigration:(BOOL)a4;
- (id)_encodeIndexPathMap:(id)a3;
- (id)_pluginIndexPathForFavoritePluginWithIdentifier:(id)a3 pluginMap:(id)a4 fallbackMap:(id)a5;
- (id)_pluginIndexPathForPluginWithIdentifier:(id)a3 pluginMap:(id)a4;
- (id)allPluginsPassingTest:(id)a3;
- (id)allPotentiallyVisiblePlugins;
- (id)balloonPluginIdentifierForAppExtensionBundleIdentifier:(id)a3;
- (id)browserSnapshotForKey:(id)a3;
- (id)bundleIdentifiersForCurrentExtensionConsumers;
- (id)candidateAppStripPlugins;
- (id)createFakeAppsForPPTTesting:(unint64_t)a3;
- (id)descriptionOfVisibleDrawerPlugins;
- (id)digitalTouchViewControllerWithDataSource:(id)a3;
- (id)existingViewControllerForPluginIdentifier:(id)a3;
- (id)filteredArrayOfInstallationsThatShouldBeVisible:(id)a3;
- (id)handwritingViewControllerWithPluginPayloads:(id)a3;
- (id)launchTimeForPlugin:(id)a3;
- (id)newViewControllerForPluginIdentifier:(id)a3 dataSource:(id)a4;
- (id)orderedPlugins:(BOOL)a3;
- (id)photosBrowserViewControllerWithPluginPayloads:(id)a3;
- (id)pluginForAdamID:(id)a3;
- (id)pluginForExtensionIdentifier:(id)a3;
- (id)pluginForIdentifier:(id)a3;
- (id)viewControllerForPluginIdentifier:(id)a3;
- (id)viewControllerForPluginIdentifier:(id)a3 dataSource:(id)a4;
- (unint64_t)launchStatusForPlugin:(id)a3;
- (unint64_t)unseenPluginCount;
- (void)_addAppWithBalloonIdentifier:(id)a3;
- (void)_disableAppWithBalloonIdentifier:(id)a3;
- (void)_invalidatePluginForKey:(id)a3;
- (void)_refreshVisibleDrawerPluginsDueToAppInstallationChange;
- (void)_setSeen:(BOOL)a3 forPlugin:(id)a4;
- (void)_updateHistoricalPluginIndexPathMap;
- (void)addExtensionConsumer:(id)a3;
- (void)appInstallationWatcher:(id)a3 addedAppInstallation:(id)a4;
- (void)appInstallationWatcher:(id)a3 changedAppInstallation:(id)a4;
- (void)cleanSeenMap;
- (void)clearBalloonPluginCache;
- (void)commitInteractionTimeOrderingChanges;
- (void)dealloc;
- (void)deleteAppWithIdentifier:(id)a3 completion:(id)a4;
- (void)forceKillNonCameraRemoteExtensionsImmediately;
- (void)forceKillRemoteExtensionsWithDelay:(BOOL)a3 skipCameraApp:(BOOL)a4;
- (void)forceTearDownRemoteViewsSkippingCameraApp:(BOOL)a3;
- (void)handleManagedConfigSettingsChangeNotification:(id)a3;
- (void)healthStickerStatusChanged;
- (void)invalidateAllActivePluginsSkippingCameraApp:(BOOL)a3;
- (void)invalidateIconCache;
- (void)prepareForSuspend;
- (void)refreshPlugins;
- (void)regenerateCombinedStickersAppsIndexPaths;
- (void)regeneratePluginIndexPaths;
- (void)reloadInstalledApps:(id)a3;
- (void)removeAppWithIdentifier:(id)a3;
- (void)removeVisibleInstallationWithID:(id)a3;
- (void)saveCombinedAppsWithNotification:(BOOL)a3;
- (void)saveWithNotification:(BOOL)a3;
- (void)setAppStoreAutoEnableToggled:(BOOL)a3;
- (void)setEnabled:(BOOL)a3 forPlugin:(id)a4;
- (void)setPlugin:(id)a3 hiddenInSendMenuAndStickers:(BOOL)a4;
- (void)setSeen:(BOOL)a3 forPlugin:(id)a4;
- (void)updateAppInstallations;
- (void)updateIndexPath:(id)a3 forCombinedStickerApp:(id)a4;
- (void)updateIndexPath:(id)a3 forPlugin:(id)a4 isDrawerPluginPath:(BOOL)a5;
- (void)updateInteractionTimeForPlugin:(id)a3;
- (void)updateLaunchStatus:(unint64_t)a3 forPlugin:(id)a4 withNotification:(BOOL)a5;
- (void)updateLaunchTimeForPlugin:(id)a3;
- (void)updateSnapshotForBrowserViewController:(id)a3 currentBounds:(CGRect)a4;
@end

@implementation CKBalloonPluginManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CKBalloonPluginManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

    v14 = [(NSDictionary *)v10 allValues];
    v15 = [v14 firstObject];

    if (v15)
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

    v23 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    currentExtensionConsumers = v2->_currentExtensionConsumers;
    v2->_currentExtensionConsumers = v23;

    [(CKBalloonPluginManager *)v2 setNumberOfSectionsToKeep:0];
    v2->_appStoreAutoEnableToggled = IMGetDomainBoolForKey();
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v2 selector:sel_handleManagedConfigSettingsChangeNotification_ name:*MEMORY[0x1E69ADD68] object:0];

    [(CKBalloonPluginManager *)v2 handleManagedConfigSettingsChangeNotification:0];
    v26 = MEMORY[0x1E695DFD8];
    v27 = [(CKBalloonPluginManager *)v2 visibleSwitcherPlugins];
    v28 = [v27 arrayByApplyingSelector:sel_identifier];
    v29 = [v26 setWithArray:v28];
    oldVisibleSwitcherPluginIdentifiers = v2->_oldVisibleSwitcherPluginIdentifiers;
    v2->_oldVisibleSwitcherPluginIdentifiers = v29;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _HealthStickerStatusChanged, [(CKBalloonPluginManager *)v2 healthKitAchievementAvailabilityChangedNotification], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    [v32 addObserver:v2 selector:sel_reloadInstalledApps_ name:*MEMORY[0x1E69A56D8] object:0];

    CKShouldShowSURF();
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

- (void)addExtensionConsumer:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonPluginManager *)self currentExtensionConsumers];
  [v5 addObject:v4];
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

- (void)reloadInstalledApps:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v34 = a3;
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

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"CKCombinedStickerAppsOrderChangedNotification" object:0];

  v8 = [(CKBalloonPluginManager *)self visibleSwitcherPlugins];
  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v8;
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
          v15 = [v14 identifier];
          [(NSSet *)v9 addObject:v15];
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
      v28 = [MEMORY[0x1E696AD88] defaultCenter];
      v48[0] = @"CKBrowserSelectionControllerInstalledPluginsKey";
      v48[1] = @"CKBrowserSelectionControllerUninstalledPluginsKey";
      v49[0] = v22;
      v49[1] = v16;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
      [v28 postNotificationName:@"CKBrowserSelectionControllerVisibleSwitcherPluginsChangedNotification" object:0 userInfo:v29];
    }
  }

  oldVisibleSwitcherPluginIdentifiers = self->_oldVisibleSwitcherPluginIdentifiers;
  self->_oldVisibleSwitcherPluginIdentifiers = v9;
  v31 = v9;

  v32 = [(CKBalloonPluginManager *)self combinedStickersAppsIndexPathMap];
  [(CKBalloonPluginManager *)self cleanSeenMap];
  [(CKBalloonPluginManager *)self invalidateIconCache];
  [(CKBalloonPluginManager *)self saveWithNotification:0];
  [(CKBalloonPluginManager *)self saveCombinedAppsWithNotification:0];
  v33 = [MEMORY[0x1E696AD88] defaultCenter];

  [v33 postNotificationName:@"CKBrowserSelectionControllerReloadedInstallationsNotification" object:0 userInfo:0];
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

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0];
}

- (BOOL)_shouldUninstallContainingBundle:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 isLaunchProhibited];
  v5 = [v3 applicationType];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69635B8]];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v4)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v12 = 138413058;
      v13 = v3;
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
      if ((v4 & v6) != 0)
      {
        v8 = @"YES";
      }

      v17 = v10;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "_shouldUninstallContainingBundle containingBundle %@ isMessagesOnly %@ isUserApp %@ shouldUnInstall %@", &v12, 0x2Au);
    }
  }

  return v4 & v6;
}

- (void)_addAppWithBalloonIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_addAppWithBalloonIdentifier id %@", &v8, 0xCu);
      }
    }

    if ([v3 isEqualToString:@"com.apple.messages.browser.RecentPlugin"])
    {
      v6 = [objc_opt_class() recentPlugin];
      v7 = [v6 app];
      [v7 setIsEnabled:1];
    }

    else
    {
      v6 = [MEMORY[0x1E69A5AD0] sharedInstance];
      [v6 setPluginEnabled:1 identifier:v3];
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "CKBalloonPluginManager nil idenitifier passed to _addAppWithBalloonIdentifier", &v8, 2u);
    }
  }

LABEL_14:
}

- (void)_disableAppWithBalloonIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_disableAppWithBalloonIdentifier id %@", &v8, 0xCu);
      }
    }

    if ([v3 isEqualToString:@"com.apple.messages.browser.RecentPlugin"])
    {
      v6 = [objc_opt_class() recentPlugin];
      v7 = [v6 app];
      [v7 setIsEnabled:0];
    }

    else
    {
      v6 = [MEMORY[0x1E69A5AD0] sharedInstance];
      [v6 setPluginEnabled:0 identifier:v3];
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "CKBalloonPluginManager nil idenitifier passed to _disableAppWithBalloonIdentifier", &v8, 2u);
    }
  }

LABEL_14:
}

- (void)removeAppWithIdentifier:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v4;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "removeAppWithBalloonIdentifier id %@", buf, 0xCu);
      }
    }

    v7 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v8 = [v7 balloonPluginForBundleID:v4];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ([v4 isEqualToString:@"com.apple.messages.browser.RecentPlugin"])
      {
        v9 = [objc_opt_class() recentPlugin];
        v23 = [v9 app];
        [v23 setIsEnabled:0];
      }

      else
      {
        v9 = [MEMORY[0x1E69A5AD0] sharedInstance];
        [v9 setPluginEnabled:0 identifier:v4];
      }

      goto LABEL_38;
    }

    v9 = [v8 proxy];
    if (!v8 || (([v8 identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", v4), v9) ? (v12 = v11) : (v12 = 0), v10, (v12 & 1) == 0))
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v27 = v8;
          v28 = 2112;
          v29 = v4;
          v30 = 2112;
          v31 = @"YES";
          _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Did not find plugin %@ for identifier %@ isAppExtension %@", buf, 0x20u);
        }
      }

      goto LABEL_38;
    }

    v13 = [v9 containingBundle];
    if ([(CKBalloonPluginManager *)self _shouldUninstallContainingBundle:v13])
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v13 bundleIdentifier];
          *buf = 138412290;
          v27 = v15;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Uninstalling app %@", buf, 0xCu);
        }
      }

      v16 = MEMORY[0x193AF5EC0](@"IXAppInstallCoordinator", @"InstallCoordination");
      if (!v16)
      {
        goto LABEL_37;
      }

      v17 = [v13 bundleIdentifier];
      v25 = 0;
      [v16 uninstallAppWithBundleID:v17 error:&v25];
      v18 = v25;

      if (v18 && IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v13 bundleIdentifier];
          *buf = 138412546;
          v27 = v20;
          v28 = 2112;
          v29 = v18;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Error when uninstalling app with bundleID %@ (error: %@)", buf, 0x16u);
        }
      }

      v21 = [MEMORY[0x1E69A5AD0] sharedInstance];
      [v21 removePluginWithBundleID:v4];
    }

    else
    {
      v18 = [MEMORY[0x1E69A5AD0] sharedInstance];
      [v18 setPluginEnabled:0 identifier:v4];
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

- (void)deleteAppWithIdentifier:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CKBalloonPluginManager_deleteAppWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E72ED1F0;
  v7 = v6;
  v32 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isStickersAppEnabled];

  if ((v10 & 1) == 0)
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
  if (!v5)
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
      v34 = v5;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "deleteAppWithIdentifier id %@", buf, 0xCu);
    }
  }

  v13 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v14 = [v13 balloonPluginForBundleID:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 proxy];
    if (v14 && (([v14 identifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", v5), v15) ? (v18 = v17) : (v18 = 0), v16, (v18 & 1) != 0))
    {
      v19 = [v15 containingBundle];
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v19 bundleIdentifier];
          *buf = 138412290;
          v34 = v21;
          _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Uninstalling app %@", buf, 0xCu);
        }
      }

      v22 = MEMORY[0x193AF5EC0](@"IXAppInstallCoordinator", @"InstallCoordination");
      if (v22)
      {
        v23 = [v19 bundleIdentifier];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __61__CKBalloonPluginManager_deleteAppWithIdentifier_completion___block_invoke_134;
        v27[3] = &unk_1E72F09E8;
        v28 = v19;
        v30 = v8;
        v29 = v5;
        [v22 uninstallAppWithBundleID:v23 requestUserConfirmation:1 completion:v27];
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
          v36 = v5;
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

- (void)updateInteractionTimeForPlugin:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CKBalloonPluginManager *)self MRUPluginInteractionList];

    if (!v5)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      [(CKBalloonPluginManager *)self setMRUPluginInteractionList:v6];
    }

    v7 = [(CKBalloonPluginManager *)self MRUPluginInteractionList];
    [v7 removeObject:v4];

    v8 = [(CKBalloonPluginManager *)self MRUPluginInteractionList];
    [v8 insertObject:v4 atIndex:0];
  }
}

- (void)commitInteractionTimeOrderingChanges
{
  v3 = [(CKBalloonPluginManager *)self MRUPluginInteractionList];
  if (v3)
  {
    v4 = v3;
    v5 = [(CKBalloonPluginManager *)self MRUPluginInteractionList];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(CKBalloonPluginManager *)self recentAppStripPlugins];
      v8 = [v7 mutableCopy];

      v9 = [(CKBalloonPluginManager *)self MRUPluginInteractionList];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__CKBalloonPluginManager_commitInteractionTimeOrderingChanges__block_invoke;
      v14[3] = &unk_1E72F0A10;
      v15 = v8;
      v10 = v8;
      [v9 enumerateObjectsWithOptions:2 usingBlock:v14];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__CKBalloonPluginManager_commitInteractionTimeOrderingChanges__block_invoke_2;
      v13[3] = &unk_1E72F0A38;
      v13[4] = self;
      [v10 enumerateObjectsUsingBlock:v13];
      [(CKBalloonPluginManager *)self _updateHistoricalPluginIndexPathMap];
      [(CKBalloonPluginManager *)self refreshPlugins];
      v11 = [(CKBalloonPluginManager *)self visiblePlugins];
      [(CKBalloonPluginManager *)self saveWithNotification:1];
      v12 = [MEMORY[0x1E695DF70] array];
      [(CKBalloonPluginManager *)self setMRUPluginInteractionList:v12];
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
  v3 = [(CKBalloonPluginManager *)self historicalPluginIndexPathMap];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKBalloonPluginManager *)self setHistoricalPluginIndexPathMap:v4];
  }

  if (self->_pluginIndexPathMap)
  {
    v5 = [(CKBalloonPluginManager *)self historicalPluginIndexPathMap];
    [v5 addEntriesFromDictionary:self->_pluginIndexPathMap];
  }
}

- (void)setEnabled:(BOOL)a3 forPlugin:(id)a4
{
  v4 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"Disabling";
      if (v4)
      {
        v8 = @"Enabling";
      }

      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%@ plugin %@.", &v9, 0x16u);
    }
  }

  if (v4)
  {
    [(CKBalloonPluginManager *)self _addAppWithBalloonIdentifier:v6];
  }

  else
  {
    [(CKBalloonPluginManager *)self _disableAppWithBalloonIdentifier:v6];
  }
}

- (BOOL)isPluginEnabled:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x1E69A6A10];
    if ([v4 isEqualToString:*MEMORY[0x1E69A6A10]])
    {
      v7 = [objc_opt_class() recentPlugin];
    }

    else
    {
      v10 = [MEMORY[0x1E69A5AD0] sharedInstance];
      v7 = [v10 balloonPluginForBundleID:v5];
    }

    v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v12 = [v11 isClingEnabled];

    if (v12)
    {
      v13 = [v7 identifier];
      v9 = [v13 isEqualToString:v6] ^ 1;
    }

    else
    {
      if (!v7)
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
              v16 = [v7 plugin];
              LOBYTE(v9) = [v16 userElection] == 1;
            }
          }
        }

        goto LABEL_27;
      }

      v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      if ([v13 isClingEnabled])
      {
        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = [v7 isEnabled];
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

- (id)_encodeIndexPathMap:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v3;
    v4 = v3;
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
          v11 = [v9 section];
          v12 = &stru_1F04268F8;
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
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

          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
          }

          [v21 setObject:v13 forKeyedSubscript:v8];
        }

        v22 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v22);
    }

    v3 = v19;
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

- (id)_decodeIndexPathMap:(id)a3 allowMigration:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v25 = v4;
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v5;
    v7 = v5;
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
            v17 = [v16 integerValue];
          }

          else
          {
            v17 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if ([v15 length])
          {
            v18 = [v15 integerValue];
          }

          else
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v19 = [MEMORY[0x1E696AC88] indexPathForItem:v17 inSection:v18];
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

    v5 = v26;
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

- (void)saveWithNotification:(BOOL)a3
{
  v3 = a3;
  if (!CKIsRunningInCameraAppsClient())
  {
    v5 = [(CKBalloonPluginManager *)self hasLoadedExtensions];
    v6 = IMOSLoggingEnabled();
    if (!v5)
    {
      if (!v6)
      {
        return;
      }

      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Not saving to defaults as extensions haven't finished loading, we'd possible be stomping over user info", v17, 2u);
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

    v8 = [(CKBalloonPluginManager *)self pluginIndexPathMap];
    v9 = [(CKBalloonPluginManager *)self _encodeIndexPathMap:v8];
    IMSetDomainValueForKey();

    v10 = [(CKBalloonPluginManager *)self pluginVersionMap];
    IMSetDomainValueForKey();

    v11 = [(CKBalloonPluginManager *)self pluginSeenMap];
    IMSetDomainValueForKey();

    v12 = [(CKBalloonPluginManager *)self pluginLaunchTimeMap];
    IMSetDomainValueForKey();

    if (v3)
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

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 postNotificationName:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0];
LABEL_16:
    }
  }
}

- (void)saveCombinedAppsWithNotification:(BOOL)a3
{
  v3 = a3;
  if (!CKIsRunningInCameraAppsClient())
  {
    v5 = [(CKBalloonPluginManager *)self hasLoadedExtensions];
    v6 = IMOSLoggingEnabled();
    if (!v5)
    {
      if (!v6)
      {
        return;
      }

      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Not saving to combined sticker default as extensions haven't finished loading, we'd possible be stomping over user info", v14, 2u);
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

    v8 = [(CKBalloonPluginManager *)self combinedStickersAppsIndexPathMap];
    v9 = [(CKBalloonPluginManager *)self _encodeIndexPathMap:v8];
    IMSetDomainValueForKey();

    if (v3)
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

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 postNotificationName:@"CKCombinedStickerAppsOrderChangedNotification" object:0];
LABEL_16:
    }
  }
}

- (id)balloonPluginIdentifierForAppExtensionBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69A6990]])
  {
    v4 = [*MEMORY[0x1E69A69F0] stringByAppendingFormat:@":%@:%@", @"0000000000", v3];
  }

  else
  {
    v5 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:v3];
    v6 = [v5 teamID];
    v7 = v6;
    v8 = @"0000000000";
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [v5 bundleIdentifier];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v3;
    }

    v13 = v12;

    v4 = [*MEMORY[0x1E69A69F0] stringByAppendingFormat:@":%@:%@", v9, v13];
  }

  return v4;
}

- (id)pluginForIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__22;
  v17 = __Block_byref_object_dispose__22;
  v18 = 0;
  if ([v4 isEqualToString:@"com.apple.messages.browser.RecentPlugin"])
  {
    v5 = [objc_opt_class() recentPlugin];
LABEL_5:
    v6 = v14[5];
    v14[5] = v5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"com.apple.messages.browser.MorePlugin"])
  {
    v5 = [objc_opt_class() morePlugin];
    goto LABEL_5;
  }

  v7 = [(CKBalloonPluginManager *)self allPlugins];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__CKBalloonPluginManager_pluginForIdentifier___block_invoke;
  v10[3] = &unk_1E72F0A60;
  v11 = v4;
  v12 = &v13;
  [v7 enumerateObjectsUsingBlock:v10];

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

- (id)pluginForExtensionIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22;
  v16 = __Block_byref_object_dispose__22;
  v17 = 0;
  v5 = [(CKBalloonPluginManager *)self allPlugins];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__CKBalloonPluginManager_pluginForExtensionIdentifier___block_invoke;
  v9[3] = &unk_1E72F0A60;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

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

- (id)pluginForAdamID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22;
  v16 = __Block_byref_object_dispose__22;
  v17 = 0;
  v5 = [(CKBalloonPluginManager *)self allPlugins];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__CKBalloonPluginManager_pluginForAdamID___block_invoke;
  v9[3] = &unk_1E72F0A60;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

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
  v2 = [(CKBalloonPluginManager *)self iconCache];
  [v2 removeAllObjects];
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
  v39 = [MEMORY[0x1E695DF00] date];
  v40 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"LastIconCachePurgeDate");
  if (v40)
  {
    v38 = [v39 dateByAddingTimeInterval:-86400.0];
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

      v5 = [MEMORY[0x1E696AC08] defaultManager];
      v6 = CKTranscriptPluginIconCachesFileURL();
      v7 = [v6 path];
      v8 = [v5 enumeratorAtPath:v7];

      v9 = [v8 nextObject];
      if (v9)
      {
        *&v10 = 138412290;
        v37 = v10;
        do
        {
          v50 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          v11 = [(CKBalloonPluginManager *)self visibleRecentAppStripPlugins];
          v12 = [v11 countByEnumeratingWithState:&v47 objects:v54 count:16];
          if (v12)
          {
            v13 = *v48;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v48 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = [*(*(&v47 + 1) + 8 * i) identifier];
                v16 = [v15 isEqualToString:v9];

                if (v16)
                {
                  v18 = [MEMORY[0x1E696AC08] defaultManager];
                  v19 = CKTranscriptPluginIconCachesFileURL();
                  v20 = [v19 path];
                  v21 = [v20 stringByAppendingPathComponent:v9];
                  v46 = 0;
                  [v18 removeItemAtPath:v21 error:&v46];
                  v17 = v46;

                  goto LABEL_19;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v47 objects:v54 count:16];
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
          v22 = [(CKBalloonPluginManager *)self visibleFavoriteAppStripPlugins];
          v23 = [v22 countByEnumeratingWithState:&v42 objects:v53 count:16];
          if (v23)
          {
            v24 = *v43;
            while (2)
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v43 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = [*(*(&v42 + 1) + 8 * j) identifier];
                v27 = [v26 isEqualToString:v9];

                if (v27)
                {
                  v28 = [MEMORY[0x1E696AC08] defaultManager];
                  v29 = CKTranscriptPluginIconCachesFileURL();
                  v30 = [v29 path];
                  v31 = [v30 stringByAppendingPathComponent:v9];
                  v41 = v17;
                  [v28 removeItemAtPath:v31 error:&v41];
                  v32 = v41;

                  v17 = v32;
                  goto LABEL_29;
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v42 objects:v53 count:16];
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

          v34 = [v8 nextObject];

          v9 = v34;
        }

        while (v34);
      }

      v36 = [MEMORY[0x1E695DF00] date];
      IMSetDomainValueForKey();

      v3 = v38;
    }
  }

  else
  {
    v35 = [MEMORY[0x1E695DF00] date];
    IMSetDomainValueForKey();
  }
}

- (NSArray)combinedStickerApps
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = objc_opt_new();
  v25 = objc_opt_new();
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v3 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v4 = [v3 allPlugins];
  [v2 addObjectsFromArray:v4];

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
        v11 = [v10 presentationContexts];
        v12 = [v10 identifier];
        if ([v12 hasSuffix:@"com.apple.messages.MSMessageExtensionBalloonPlugin:0000000000:com.apple.Stickers.UserGenerated.MessagesExtension"])
        {
          v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          v14 = [v13 isClingEnabled] ^ 1;
        }

        else
        {
          v14 = 0;
        }

        if ((v14 & 1) == 0 && (v11 & 2) != 0)
        {
          v15 = [v10 identifier];
          v16 = [v15 containsString:@"com.apple.FunCamera"];

          v17 = [v10 identifier];
          v18 = [v17 containsString:v8];

          if ((v16 & 1) == 0 && (v18 & 1) == 0)
          {
            v19 = [v10 identifier];
            v20 = [v19 hasSuffix:@"com.apple.messages.MSMessageExtensionBalloonPlugin:0000000000:com.apple.Stickers.UserGenerated.MessagesExtension"];

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
  [v23 insertPlugin:v21];

  return v24;
}

- (BOOL)isInternalPlugin:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 isEqualToString:@"com.apple.messages.browser.RecentPlugin"];

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
          v9 = [v8 extension];
          if (v9)
          {
            v10 = v9;
            v11 = [v8 extension];
            v12 = [v11 extensionPointIdentifier];
            v13 = [v12 isEqualToString:v6];

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

  v50 = self;
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
  v44 = [objc_opt_class() recentPlugin];
  if (v44)
  {
    [v5 addObject:v44];
  }

  v6 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v7 = [v6 allPlugins];
  [v5 addObjectsFromArray:v7];

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
      v14 = [v13 identifier];
      v15 = [v14 isEqualToString:v11];

      if ((v15 & 1) == 0)
      {
        if ([v13 showInBrowser])
        {
          v16 = [v13 browserDisplayName];
          if (v16)
          {
          }

          else if (![(CKBalloonPluginManager *)v50 isInternalPlugin:v13])
          {
            continue;
          }
        }

        v17 = [v13 presentationContexts];
        if (IMIsRunningIniMessageAppsViewService())
        {
          v18 = 1;
        }

        else
        {
          v18 = CKIsRunningInCameraAppsClient() != 0;
        }

        v19 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v20 = [v19 isStickersAppEnabled];

        if (v20)
        {
          if ((v17 & 2) != 0 || !v18)
          {
            goto LABEL_34;
          }

          v22 = [v13 identifier];
          v23 = IMStickersExtensionIdentifier();
          v24 = [v22 hasSuffix:v23];

          if (v24)
          {
            goto LABEL_34;
          }
        }

        else if ((v18 | v17))
        {
          v25 = (v17 & 2) == 0 && v18;
          if (!v25 || ([v13 identifier], v26 = objc_claimAutoreleasedReturnValue(), IMStickersExtensionIdentifier(), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "hasSuffix:", v27), v27, v26, v28))
          {
LABEL_34:
            if (!IMIsRunningIniMessageAppsViewService())
            {
              goto LABEL_37;
            }

            v29 = [v13 identifier];
            if (([v29 hasSuffix:v49] & 1) == 0)
            {
              v30 = [v29 hasSuffix:v45];

              if (v30)
              {
                continue;
              }

LABEL_37:
              [v48 addObject:v13];
              v29 = [v13 identifier];
              [v46 addObject:v29];
              if ([v29 isEqualToString:@"com.apple.appstore.MessagesProvider"])
              {
                v31 = v13;

                v47 = v31;
              }

              v32 = [v13 identifier];
              v33 = [(CKBalloonPluginManager *)v50 isPluginEnabled:v32];

              if (v33)
              {
                [(CKBalloonPluginManager *)v50 _setSeen:1 forPlugin:v13];
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
  v34 = [objc_opt_class() morePlugin];
  if (v34)
  {
    [v48 addObject:v34];
  }

  [(CKBalloonPluginManager *)v50 saveWithNotification:0];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v36 = v50->_allPlugins;
  v50->_allPlugins = v35;

  v37 = [(CKBalloonPluginManager *)v50 pluginIndexPathMap];
  v38 = [v37 count] == 0;

  if (v38)
  {
    [(CKBalloonPluginManager *)v50 regeneratePluginIndexPaths];
  }

  v39 = [(CKBalloonPluginManager *)v50 combinedStickersAppsIndexPathMap];
  v40 = [v39 count] == 0;

  if (v40)
  {
    [(CKBalloonPluginManager *)v50 regenerateCombinedStickersAppsIndexPaths];
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

  allPlugins = v50->_allPlugins;
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

- (id)createFakeAppsForPPTTesting:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%d", @"Test", v5];
      v7 = [objc_alloc(MEMORY[0x1E69A5AB8]) initWithIdentifier:v6 browserDisplayName:v6 browserImageName:@"Recents"];
      [v4 addObject:v7];

      ++v5;
    }

    while (a3 != v5);
  }

  return v4;
}

- (NSArray)visibleSwitcherPlugins
{
  visibleSwitcherPlugins = self->_visibleSwitcherPlugins;
  if (!visibleSwitcherPlugins)
  {
    v4 = [(CKBalloonPluginManager *)self visibleDrawerPlugins];
    v5 = self->_visibleSwitcherPlugins;
    self->_visibleSwitcherPlugins = v4;

    v6 = [(NSArray *)self->_visibleSwitcherPlugins lastObject];
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:@"com.apple.messages.browser.MorePlugin"];

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

- (id)allPluginsPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonPluginManager *)self allPlugins];
  v6 = [v5 __imArrayByFilteringWithBlock:v4];

  return v6;
}

- (NSArray)disabledPlugins
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isClingEnabled];

  if (v4)
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

- (unint64_t)launchStatusForPlugin:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 proxy];
    v6 = [v5 containingBundle];
    v7 = [v6 applicationType];
    v8 = [v7 isEqualToString:*MEMORY[0x1E69635B8]];

    if (v8 && ([v4 version], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69A56E0]), v9, (v10 & 1) == 0))
    {
      pluginVersionMap = self->_pluginVersionMap;
      v13 = [v4 identifier];
      v14 = [(NSDictionary *)pluginVersionMap objectForKeyedSubscript:v13];
      v15 = [v4 version];
      v16 = [v14 isEqualToString:v15];

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

- (void)updateLaunchStatus:(unint64_t)a3 forPlugin:(id)a4 withNotification:(BOOL)a5
{
  if (a3 == 1 && a4)
  {
    v6 = a5;
    pluginVersionMap = self->_pluginVersionMap;
    v9 = a4;
    v14 = [(NSDictionary *)pluginVersionMap mutableCopy];
    v10 = [v9 version];
    v11 = [v9 identifier];

    [v14 setObject:v10 forKeyedSubscript:v11];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v14];
    v13 = self->_pluginVersionMap;
    self->_pluginVersionMap = v12;

    [(CKBalloonPluginManager *)self saveWithNotification:v6];
  }
}

- (void)updateLaunchTimeForPlugin:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v10 = [v4 date];
  v6 = [(CKBalloonPluginManager *)self pluginLaunchTimeMap];
  v7 = [v6 mutableCopy];

  v8 = [v5 identifier];

  [v7 setObject:v10 forKeyedSubscript:v8];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];
  [(CKBalloonPluginManager *)self setPluginLaunchTimeMap:v9];

  [(CKBalloonPluginManager *)self saveWithNotification:0];
}

- (id)launchTimeForPlugin:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"com.apple.messages.browser.RecentPlugin"];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] distantFuture];
  }

  else
  {
    v8 = [(CKBalloonPluginManager *)self pluginLaunchTimeMap];
    v9 = [v4 identifier];
    v7 = [v8 objectForKey:v9];
  }

  return v7;
}

- (BOOL)isPluginSeen:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonPluginManager *)self pluginSeenMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (BOOL)isPluginSeenWithInstalledVersion:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonPluginManager *)self pluginSeenMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(CKBalloonPluginManager *)self pluginForIdentifier:v4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 version];
      v10 = [v9 compare:v6 options:64] != 1;
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

- (void)setSeen:(BOOL)a3 forPlugin:(id)a4
{
  v4 = a3;
  v6 = [(CKBalloonPluginManager *)self pluginForIdentifier:a4];
  if (v6)
  {
    v7 = v6;
    [(CKBalloonPluginManager *)self _setSeen:v4 forPlugin:v6];
    [(CKBalloonPluginManager *)self saveWithNotification:0];
    v6 = v7;
  }
}

- (void)_setSeen:(BOOL)a3 forPlugin:(id)a4
{
  v4 = a3;
  v11 = a4;
  v6 = [(CKBalloonPluginManager *)self pluginSeenMap];
  v7 = [v6 mutableCopy];

  if (v4)
  {
    v8 = [v11 version];
    v9 = [v11 identifier];
    [v7 setObject:v8 forKeyedSubscript:v9];
  }

  else
  {
    v8 = [v11 identifier];
    [v7 removeObjectForKey:v8];
  }

  v10 = [v7 copy];
  [(CKBalloonPluginManager *)self setPluginSeenMap:v10];
}

- (void)cleanSeenMap
{
  v3 = [(CKBalloonPluginManager *)self allPlugins];
  v10 = [v3 arrayByApplyingSelector:sel_identifier];

  v4 = [(CKBalloonPluginManager *)self pluginSeenMap];
  v5 = [v4 allKeys];

  v6 = [v5 arrayByExcludingObjectsInArray:v10];
  if ([v6 count])
  {
    v7 = [(CKBalloonPluginManager *)self pluginSeenMap];
    v8 = [v7 mutableCopy];

    [v8 removeObjectsForKeys:v6];
    v9 = [v8 copy];
    [(CKBalloonPluginManager *)self setPluginSeenMap:v9];
  }
}

- (unint64_t)unseenPluginCount
{
  v3 = [(CKBalloonPluginManager *)self allPlugins];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CKBalloonPluginManager_unseenPluginCount__block_invoke;
  v7[3] = &unk_1E72F0A88;
  v7[4] = self;
  v4 = [v3 __imArrayByFilteringWithBlock:v7];

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

- (void)setAppStoreAutoEnableToggled:(BOOL)a3
{
  if (self->_appStoreAutoEnableToggled != a3)
  {
    self->_appStoreAutoEnableToggled = a3;
    [(CKBalloonPluginManager *)self isAppStoreAutoEnableToggled];

    IMSetDomainBoolForKey();
  }
}

- (void)handleManagedConfigSettingsChangeNotification:(id)a3
{
  isAppInstallationEnabled = self->_isAppInstallationEnabled;
  isAppRemovalEnabled = self->_isAppRemovalEnabled;
  isCameraAllowed = self->_isCameraAllowed;
  v7 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v8 = [v7 effectiveBoolValueForSetting:*MEMORY[0x1E69ADD98]] != 2;

  self->_isAppInstallationEnabled = v8;
  v9 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v10 = [v9 effectiveBoolValueForSetting:*MEMORY[0x1E69ADDA0]] != 2;

  self->_isAppRemovalEnabled = v10;
  v11 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v12 = [v11 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE00]] != 2;

  self->_isCameraAllowed = v12;
  if (__PAIR64__(isAppRemovalEnabled, isAppInstallationEnabled) != __PAIR64__(self->_isAppRemovalEnabled, self->_isAppInstallationEnabled) || isCameraAllowed != v12)
  {
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0];
  }
}

- (BOOL)isPluginVisible:(id)a3
{
  v4 = [(CKBalloonPluginManager *)self pluginForIdentifier:a3];
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

- (BOOL)isBalloonPluginVisible:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69A6A00]];

  if (v6)
  {
    goto LABEL_2;
  }

  v8 = [v4 identifier];
  v9 = [v8 isEqualToString:@"com.apple.messages.browser.RecentPlugin"];

  if (v9)
  {
LABEL_4:
    v7 = 1;
    goto LABEL_14;
  }

  if (CKIsSendMenuEnabled())
  {
    if ([v4 showInSendMenu])
    {
LABEL_9:
      v10 = [v4 identifier];
      v11 = [v10 hasSuffix:*MEMORY[0x1E69A6970]];

      if (v11)
      {
        v12 = [(CKBalloonPluginManager *)self _shouldShowActivity];
      }

      else
      {
        v13 = [v4 identifier];
        v14 = [v13 hasSuffix:*MEMORY[0x1E69A6A38]];

        if (!v14)
        {
          goto LABEL_4;
        }

        v12 = [(CKBalloonPluginManager *)self _shouldShowSURF];
      }

      v7 = v12;
      goto LABEL_14;
    }
  }

  else if ([v4 showInBrowser])
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
  v8 = [v7 BOOLValue];

  return v8;
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
  v3 = [(CKBalloonPluginManager *)self currentExtensionConsumers];
  [v3 removeAllObjects];

  if (!CKIsRunningInMessagesViewService() && !CKIsRunningInMessagesNotificationExtension())
  {
    [(CKBalloonPluginManager *)self forceTearDownRemoteViewsSkippingCameraApp:1];

    [(CKBalloonPluginManager *)self forceKillRemoteExtensionsWithDelay:1 skipCameraApp:1];
  }
}

- (void)forceKillRemoteExtensionsWithDelay:(BOOL)a3 skipCameraApp:(BOOL)a4
{
  v4 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__CKBalloonPluginManager_ViewControllerFactory__forceKillRemoteExtensionsWithDelay_skipCameraApp___block_invoke;
  v10[3] = &unk_1E72ED8D8;
  v10[4] = self;
  v11 = a4;
  v5 = _Block_copy(v10);
  v6 = +[CKPluginExtensionStateObserver sharedInstance];
  v7 = [v6 stickerDragActiveInCurrentProcess];

  if (v7)
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

  else if (v4)
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
  v2 = [(CKBalloonPluginManager *)self activeBrowsers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 balloonPlugin];
        v10 = [v9 identifier];

        v11 = IMBalloonExtensionIDWithSuffix();
        if ([v10 isEqualToString:v11])
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

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)bundleIdentifiersForCurrentExtensionConsumers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(CKBalloonPluginManager *)self currentExtensionConsumers];
  v5 = [v4 objectEnumerator];

  v6 = [v5 nextObject];
  if (v6)
  {
    *&v7 = 138412546;
    v12 = v7;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [v6 consumingBundleIdentifiers];
        [v3 addObjectsFromArray:v8];

        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = v12;
            v14 = v6;
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
          v14 = v6;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "currentExtensionConsumer doesn't conform to CKExtensionConsumer protocol %@", buf, 0xCu);
        }

        goto LABEL_11;
      }

      v10 = [v5 nextObject];

      v6 = v10;
    }

    while (v10);
  }

  return v3;
}

- (void)forceTearDownRemoteViewsSkippingCameraApp:(BOOL)a3
{
  v3 = a3;
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

  v6 = [(CKBalloonPluginManager *)self bundleIdentifiersForCurrentExtensionConsumers];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(CKBalloonPluginManager *)self activeBrowsers];
  obj = [v7 allValues];

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
        if (!v3 || ([*(*(&v31 + 1) + 8 * v11) balloonPlugin], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), IMBalloonExtensionIDWithSuffix(), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v13, (v16 & 1) == 0))
        {
          v17 = [v12 balloonPlugin];
          v18 = [v17 identifier];
          v19 = [v6 containsObject:v18];

          if (v19)
          {
            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = [v12 balloonPlugin];
                v22 = [v21 identifier];
                *buf = v29;
                v36 = v22;
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
                v24 = [v12 balloonPlugin];
                v25 = [v24 identifier];
                *buf = v29;
                v36 = v25;
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
                v27 = [v12 balloonPlugin];
                v28 = [v27 identifier];
                *buf = v29;
                v36 = v28;
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

- (void)invalidateAllActivePluginsSkippingCameraApp:(BOOL)a3
{
  v3 = a3;
  v36[16] = *MEMORY[0x1E69E9840];
  v5 = +[CKPluginExtensionStateObserver sharedInstance];
  v6 = [v5 passKitUIPresented];

  v7 = +[CKPluginExtensionStateObserver sharedInstance];
  v8 = [v7 stickerDragActiveInCurrentProcess];

  v9 = IMOSLoggingEnabled();
  if (((v6 | v8) & 1) == 0)
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

    [(CKBalloonPluginManager *)self forceTearDownRemoteViewsSkippingCameraApp:v3];
    v14 = [(CKBalloonPluginManager *)self activeBrowsers];
    v15 = [v14 copy];

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
      if (v3)
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
          v24 = [(CKBalloonPluginManager *)self activeBrowsers];
          v25 = [v24 objectForKey:v19];
          [(CKBalloonPluginManager *)self setLastUsedPhotoViewController:v25];
        }
      }

      v26 = [(CKBalloonPluginManager *)self activeBrowsers];
      [v26 removeObjectForKey:v19];

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
      if (v6)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (v8)
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

- (void)_invalidatePluginForKey:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Invalidating plugin for key %@", &v9, 0xCu);
    }
  }

  v6 = [(CKBalloonPluginManager *)self activeBrowsers];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 forceTearDownRemoteView];
    }

    v8 = [(CKBalloonPluginManager *)self activeBrowsers];
    [v8 removeObjectForKey:v4];
  }
}

- (id)browserSnapshotForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonPluginManager *)self snapshotCache];
  v6 = [v4 stringValue];
  v7 = [v5 cachedPreviewForKey:v6];

  if (!v7)
  {
    v8 = [v4 stringValue];
    v9 = CKBrowserSnapshotPreviewURL(v8, @"png");

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v9 options:1 error:0];
      if (v10)
      {
        v11 = MEMORY[0x1E69DCAB8];
        v12 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v12 scale];
        v13 = [v11 imageWithData:v10 scale:?];

        v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v13];
        v14 = [(CKBalloonPluginManager *)self snapshotCache];
        v15 = [v4 stringValue];
        [v14 setCachedPreview:v7 key:v15];

        v16 = [(CKBalloonPluginManager *)self snapshotCache];
        v17 = [v4 keyWithOppositeInterfaceStyle];
        v18 = [v17 stringValue];
        [v16 setCachedPreview:0 key:v18];
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

- (void)updateSnapshotForBrowserViewController:(id)a3 currentBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v10 startTimingForKey:@"updateSnapshotForViewController:"];
    v11 = [v9 view];
    v12 = [v9 balloonPlugin];
    v13 = [v12 identifier];

    v14 = [v11 traitCollection];
    v15 = +[CKSnapshotCacheKey keyWithIdentifier:interfaceStyle:bounds:](CKSnapshotCacheKey, "keyWithIdentifier:interfaceStyle:bounds:", v13, [v14 userInterfaceStyle], x, y, width, height);

    v16 = [v11 snapshotViewAfterScreenUpdates:0];
    v17 = [(CKBalloonPluginManager *)self snapshotCache];
    v18 = [v15 keyWithOppositeInterfaceStyle];
    v19 = [v18 stringValue];
    [v17 setCachedPreview:0 key:v19];

    v20 = [(CKBalloonPluginManager *)self snapshotCache];
    v21 = [v15 stringValue];
    [v20 setCachedPreview:v16 key:v21];

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 postNotificationName:@"CKBalloonPluginManagerSnapshotsDidChange" object:0];

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

- (id)newViewControllerForPluginIdentifier:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKBalloonPluginManager *)self pluginForIdentifier:v6];
  v9 = [v8 browserClass];
  v10 = [v9 instancesRespondToSelector:sel_initWithBalloonPlugin_dataSource_];
  v11 = [v9 alloc];
  if (v10)
  {
    v12 = [v11 initWithBalloonPlugin:v8 dataSource:v7];
  }

  else
  {
    v12 = [v11 initWithBalloonPlugin:v8];
  }

  v13 = v12;
  if (v12)
  {
    v14 = [(CKBalloonPluginManager *)self activeBrowsers];
    [v14 setObject:v13 forKey:v6];
  }

  return v13;
}

- (id)viewControllerForPluginIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonPluginManager *)self existingViewControllerForPluginIdentifier:v4];
  if (!v5)
  {
    v5 = [(CKBalloonPluginManager *)self viewControllerForPluginIdentifier:v4 dataSource:0];
  }

  return v5;
}

- (id)existingViewControllerForPluginIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonPluginManager *)self activeBrowsers];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = IMBalloonExtensionIDWithSuffix();
    v8 = [v4 isEqualToString:v7];

    if (v8)
    {
      v6 = [(CKBalloonPluginManager *)self lastUsedPhotoViewController];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)viewControllerForPluginIdentifier:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKBalloonPluginManager *)self existingViewControllerForPluginIdentifier:v6];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 canReplaceDataSource];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    if (!v8)
    {
LABEL_10:
      v8 = [(CKBalloonPluginManager *)self newViewControllerForPluginIdentifier:v6 dataSource:v7];
      goto LABEL_11;
    }
  }

  v10 = [v8 balloonPluginDataSource];
  v11 = (v10 == v7) | v9;

  if ((v11 & 1) == 0)
  {
    [(CKBalloonPluginManager *)self _invalidatePluginForKey:v6];

    goto LABEL_10;
  }

  if (v9)
  {
    v12 = [v8 balloonPluginDataSource];

    if (v12 != v7)
    {
      [v8 setBalloonPluginDataSource:v7];
    }
  }

LABEL_11:

  return v8;
}

- (id)photosBrowserViewControllerWithPluginPayloads:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonPluginManager *)self existingPhotoBrowserViewController];
  v6 = *MEMORY[0x1E69A6A00];
  if (v5)
  {
    v7 = v5;
    [(CKBalloonPluginManager *)self _invalidatePluginForKey:*MEMORY[0x1E69A6A00]];
  }

  v8 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v9 = [v8 balloonPluginForBundleID:v6];

  v10 = [v9 browserClass];
  if ([(objc_class *)v10 instancesRespondToSelector:sel_initWithBalloonPlugin_pluginPayloads_])
  {
    v11 = [[v10 alloc] initWithBalloonPlugin:v9 pluginPayloads:v4];
  }

  else
  {
    v12 = [(objc_class *)v10 instancesRespondToSelector:sel_initWithBalloonPlugin_dataSource_];
    v13 = [v10 alloc];
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
    v15 = [(CKBalloonPluginManager *)self activeBrowsers];
    [v15 setObject:v14 forKey:v6];
  }

  return v14;
}

- (id)digitalTouchViewControllerWithDataSource:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E69A69A8];
  v6 = [(CKBalloonPluginManager *)self existingViewControllerForPluginIdentifier:*MEMORY[0x1E69A69A8]];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 balloonPluginDataSource];

    if (v8 == v4)
    {
      goto LABEL_7;
    }

    [(CKBalloonPluginManager *)self _invalidatePluginForKey:v5];
  }

  v9 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v10 = [v9 balloonPluginForBundleID:v5];

  v7 = [objc_alloc(objc_msgSend(v10 "browserClass"))];
  if (v7)
  {
    v11 = [(CKBalloonPluginManager *)self activeBrowsers];
    [v11 setObject:v7 forKey:v5];
  }

LABEL_7:

  return v7;
}

- (id)handwritingViewControllerWithPluginPayloads:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E69A69E0];
  v6 = [(CKBalloonPluginManager *)self existingViewControllerForPluginIdentifier:*MEMORY[0x1E69A69E0]];
  v7 = v6;
  if (v4 && v6)
  {

    [(CKBalloonPluginManager *)self _invalidatePluginForKey:v5];
LABEL_5:
    v8 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v9 = [v8 balloonPluginForBundleID:v5];

    v10 = [v9 browserClass];
    if ([(objc_class *)v10 instancesRespondToSelector:sel_initWithBalloonPlugin_pluginPayloads_])
    {
      v11 = [[v10 alloc] initWithBalloonPlugin:v9 pluginPayloads:v4];
    }

    else
    {
      v12 = [(objc_class *)v10 instancesRespondToSelector:sel_initWithBalloonPlugin_dataSource_];
      v13 = [v10 alloc];
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

- (BOOL)isViewController:(id)a3 fromPluginWithIdentifier:(id)a4
{
  v5 = MEMORY[0x1E69A5AD0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedInstance];
  v9 = [v8 balloonPluginForBundleID:v6];

  v10 = objc_opt_class();
  LOBYTE(v7) = [v10 isEqual:{objc_msgSend(v9, "browserClass")}];

  return v7;
}

- (void)appInstallationWatcher:(id)a3 changedAppInstallation:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = [(CKBalloonPluginManager *)self visibleInstallations];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    [(CKBalloonPluginManager *)self setVisibleInstallations:v9];
  }

  v10 = [(CKBalloonPluginManager *)self visibleInstallations];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__CKBalloonPluginManager_CKBrowserSelectionController__appInstallationWatcher_changedAppInstallation___block_invoke;
  v13[3] = &unk_1E72F3268;
  v11 = v7;
  v14 = v11;
  v15 = &v21;
  v16 = &v17;
  [v10 enumerateObjectsUsingBlock:v13];

  if (v22[5])
  {
    if ([v11 installed])
    {
      v12 = [(CKBalloonPluginManager *)self visibleInstallations];
      [v12 removeObjectAtIndex:v18[3]];
    }

    else
    {
      v12 = [(CKBalloonPluginManager *)self visibleInstallations];
      [v12 replaceObjectAtIndex:v18[3] withObject:v11];
    }

    goto LABEL_9;
  }

  if (([v11 installed] & 1) == 0)
  {
    v12 = [(CKBalloonPluginManager *)self visibleInstallations];
    [v12 addObject:v11];
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

- (void)appInstallationWatcher:(id)a3 addedAppInstallation:(id)a4
{
  v5 = a4;
  v6 = [(CKBalloonPluginManager *)self visibleInstallations];

  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    [(CKBalloonPluginManager *)self setVisibleInstallations:v7];
  }

  v8 = [(CKBalloonPluginManager *)self visibleInstallations];
  [v8 addObject:v5];

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
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"CKBrowserSelectionControllerInstallationsChangedNotification" object:0];
}

- (id)filteredArrayOfInstallationsThatShouldBeVisible:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [(CKBalloonPluginManager *)self visiblePlugins];
  v7 = [v6 __imArrayByApplyingBlock:&__block_literal_global_107];
  v8 = [v4 setWithArray:v7];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__CKBalloonPluginManager_CKBrowserSelectionController__filteredArrayOfInstallationsThatShouldBeVisible___block_invoke_2;
  v12[3] = &unk_1E72F32B0;
  v13 = v8;
  v9 = v8;
  v10 = [v5 __imArrayByFilteringWithBlock:v12];

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
    v4 = [(CKBalloonPluginManager *)self visibleFavoriteAppStripPlugins];
    v5 = [(CKBalloonPluginManager *)self visibleRecentAppStripPlugins];
    v6 = [v4 arrayByAddingObjectsFromArray:v5];
    v7 = self->_visibleAppStripPlugins;
    self->_visibleAppStripPlugins = v6;

    visibleAppStripPlugins = self->_visibleAppStripPlugins;
  }

  return visibleAppStripPlugins;
}

- (NSArray)visibleFavoriteAppStripPlugins
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(CKBalloonPluginManager *)self favoriteAppStripPlugins];

  if (!v3)
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(CKBalloonPluginManager *)self candidateAppStripPlugins];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [(CKBalloonPluginManager *)self pluginIndexPathMap];
            v11 = [v9 identifier];
            v12 = [v10 objectForKey:v11];

            if (v12 && ![v12 section])
            {
              [v15 addObject:v9];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    [(CKBalloonPluginManager *)self setFavoriteAppStripPlugins:v15];
  }

  v13 = [(CKBalloonPluginManager *)self favoriteAppStripPlugins];

  return v13;
}

- (NSArray)recentAppStripPlugins
{
  v21 = *MEMORY[0x1E69E9840];
  recentAppStripPlugins = self->_recentAppStripPlugins;
  if (!recentAppStripPlugins)
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(CKBalloonPluginManager *)self candidateAppStripPlugins];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [(CKBalloonPluginManager *)self pluginIndexPathMap];
            v11 = [v9 identifier];
            v12 = [v10 objectForKey:v11];

            if (!v12 || [v12 section] == 1)
            {
              [(NSArray *)v15 addObject:v9];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v13 = self->_recentAppStripPlugins;
    self->_recentAppStripPlugins = v15;

    recentAppStripPlugins = self->_recentAppStripPlugins;
  }

  return recentAppStripPlugins;
}

- (NSArray)visibleRecentAppStripPlugins
{
  visibleRecentAppStripPlugins = self->_visibleRecentAppStripPlugins;
  if (!visibleRecentAppStripPlugins)
  {
    v4 = [(CKBalloonPluginManager *)self recentAppStripPlugins];
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 suggestedAppStripLimit];

    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 suggestedMinimumRecentsCount];

    v9 = [(CKBalloonPluginManager *)self visibleFavoriteAppStripPlugins];
    v10 = [v9 count];

    v11 = [v4 count];
    v12 = v6 - v10;
    if (v6 - v10 <= v8)
    {
      v12 = v8;
    }

    if (v12 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v4 subarrayWithRange:{0, v13}];
    v15 = [(NSArray *)v14 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 identifier];
      v17 = [v16 isEqualToString:@"com.apple.messages.browser.MorePlugin"] ^ 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = [objc_opt_class() morePlugin];
    v19 = v18;
    if (v17 && v18)
    {
      v20 = [(NSArray *)v14 arrayByAddingObject:v18];

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
  v3 = [(CKBalloonPluginManager *)self cachedPotentiallyVisiblePlugins];

  if (!v3)
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
  v3 = [(CKBalloonPluginManager *)self visibleFavoriteAppStripPlugins];
  v4 = [(CKBalloonPluginManager *)self potentiallyVisiblePlugins];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__CKBalloonPluginManager_CKBrowserSelectionController__potentiallyVisibleNonFavoritePlugins__block_invoke;
  v8[3] = &unk_1E72F0A88;
  v9 = v3;
  v5 = v3;
  v6 = [v4 __imArrayByFilteringWithBlock:v8];

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

- (id)orderedPlugins:(BOOL)a3
{
  v114 = *MEMORY[0x1E69E9840];
  v5 = [(CKBalloonPluginManager *)self cachedPotentiallyVisiblePlugins];

  if (__CurrentTestName)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v18 = [(CKBalloonPluginManager *)self visiblePlugins];
    [(CKBalloonPluginManager *)self setCachedPotentiallyVisiblePlugins:v18];
  }

  else if (!v5)
  {
    v7 = [(CKBalloonPluginManager *)self allPotentiallyVisiblePlugins];
    v8 = +[CKBalloonPluginManager defaultFavoritePlugins];
    v9 = +[CKBalloonPluginManager morePlugin];
    v10 = [v7 lastObject];
    v11 = v10;
    if (!v9)
    {
      if ([v7 count])
      {
        goto LABEL_21;
      }

      goto LABEL_54;
    }

    v12 = [v10 identifier];
    v13 = [v9 identifier];
    if (([v12 isEqualToString:v13] & 1) == 0 && !__CurrentTestName)
    {
      v14 = [v7 count];

      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = MEMORY[0x1E696AEC0];
      v16 = [v9 identifier];
      v12 = [v15 stringWithFormat:@"More plugin was not found last in visible plugins list! Found %@ instead.", v16];

      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v12 userInfo:0];
      [v13 raise];
    }

LABEL_12:
    if ([v7 count])
    {
      v17 = [v7 subarrayWithRange:{0, objc_msgSend(v7, "count") - 1}];

      v7 = v17;
LABEL_21:
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke;
      v110[3] = &unk_1E72F0A88;
      v76 = v23;
      v111 = v76;
      v24 = [v7 __imArrayByFilteringWithBlock:v110];

      v25 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
      v26 = [(CKBalloonPluginManager *)self pluginIndexPathMap];
      v27 = [(CKBalloonPluginManager *)self historicalPluginIndexPathMap];
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_2;
      v106[3] = &unk_1E72F32D8;
      v106[4] = self;
      v28 = v26;
      v107 = v28;
      v29 = v27;
      v108 = v29;
      v68 = v25;
      v69 = v24;
      v109 = v68;
      v30 = [v24 sortedArrayUsingComparator:v106];
      v31 = [v30 mutableCopy];

      v32 = [v31 __imArrayByFilteringWithBlock:&__block_literal_global_204_0];
      v33 = [v32 firstObject];

      if (v33)
      {
        [v31 removeObject:v33];
        [v31 insertObject:v33 atIndex:0];
      }

      v75 = v33;
      v71 = v11;
      v72 = a3;
      v34 = [v31 __imArrayByFilteringWithBlock:&__block_literal_global_206_0];
      v35 = [v34 firstObject];

      if (v35)
      {
        [v31 removeObject:v35];
        [v31 insertObject:v35 atIndex:0];
      }

      v73 = v35;
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
      v39 = [MEMORY[0x1E695DF70] array];
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
            if (![(CKBalloonPluginManager *)self _addPluginToRecentsFrontIfNeeded:v44 frontOfRecents:v39 pluginMap:v36 fallbackMap:v29])
            {
              [v78 addObject:v44];
            }
          }

          v41 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
        }

        while (v41);
      }

      v74 = v39;
      v67 = v29;

      v45 = [MEMORY[0x1E695DF70] array];
      v46 = [MEMORY[0x1E695DF70] array];
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
            v52 = [v51 identifier];
            v53 = [v36 objectForKeyedSubscript:v52];
            v54 = v53;
            if (!v53 || [v53 section] == 0x7FFFFFFFFFFFFFFFLL || (v55 = objc_msgSend(v54, "item"), v56 = v77, v55 == 0x7FFFFFFFFFFFFFFFLL))
            {
              if ([v82 containsObject:v52])
              {
                v56 = v46;
              }

              else
              {
                v56 = v45;
              }
            }

            [v56 addObject:v51];
          }

          v48 = [v80 countByEnumeratingWithState:&v95 objects:v112 count:16];
        }

        while (v48);
      }

      if ([v46 count])
      {
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_6;
        v93[3] = &unk_1E72F3348;
        v94 = v82;
        v57 = [v46 sortedArrayUsingComparator:v93];
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_7;
        v89[3] = &unk_1E72F3370;
        v90 = v73;
        v91 = v75;
        v92 = v77;
        [v57 enumerateObjectsUsingBlock:v89];
      }

      [v77 addObjectsFromArray:v45];
      v58 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v74, "count")}];
      [v78 insertObjects:v74 atIndexes:v58];

      v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v59 addObjectsFromArray:v77];
      v60 = [(CKBalloonPluginManager *)self visibleInstallations];
      v61 = [(CKBalloonPluginManager *)self filteredArrayOfInstallationsThatShouldBeVisible:v60];
      [v59 addObjectsFromArray:v61];

      [v59 addObjectsFromArray:v78];
      [v59 addObjectsFromArray:v76];
      a3 = v72;
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
  v19 = [(CKBalloonPluginManager *)self cachedPotentiallyVisiblePlugins];
  v20 = v19;
  if (!a3)
  {
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __71__CKBalloonPluginManager_CKBrowserSelectionController__orderedPlugins___block_invoke_213;
    v83[3] = &unk_1E72F33C0;
    v83[4] = self;
    v21 = [v19 __imArrayByFilteringWithBlock:v83];

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

- (BOOL)isPluginSystemApp:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CKBalloonPluginManager(CKBrowserSelectionController) *)v5 isPluginSystemApp:v13, v14, v15, v16, v17, v18, v19];
    }

    goto LABEL_8;
  }

  v5 = [v3 identifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_13;
  }

  v6 = [v4 proxy];
  v7 = [v4 identifier];
  v8 = [v7 isEqualToString:v5];

  if (v8 && v6)
  {
    v9 = [v6 containingBundle];
    v10 = [v9 applicationType];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69635B8]];

    v12 = v11 ^ 1;
  }

  else
  {
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(CKBalloonPluginManager(CKBrowserSelectionController) *)v4 isPluginSystemApp:v5, v20];
    }

    v12 = 0;
  }

LABEL_13:
  return v12;
}

- (BOOL)isPluginHiddenFromSendMenuAndStickers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] messagesAppDomain];
  v5 = [v4 valueForKey:@"SendMenuHiddenExtensionBundleIdentifiers"];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] messagesAppDomain];
    v7 = [v6 stringArrayForKey:@"SendMenuHiddenExtensionBundleIdentifiers"];

    v8 = [v3 extensionBundleIdentifier];
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

          if ([*(*(&v14 + 1) + 8 * i) isEqualToString:{v8, v14}])
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

- (void)setPlugin:(id)a3 hiddenInSendMenuAndStickers:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E695E000];
  v6 = a3;
  v7 = [v5 messagesAppDomain];
  v8 = [v7 valueForKey:@"SendMenuHiddenExtensionBundleIdentifiers"];

  if (v8)
  {
    v9 = [MEMORY[0x1E695E000] messagesAppDomain];
    v10 = [v9 stringArrayForKey:@"SendMenuHiddenExtensionBundleIdentifiers"];
    v13 = [v10 mutableCopy];
  }

  else
  {
    v13 = [MEMORY[0x1E695DF70] array];
  }

  v11 = [v6 extensionBundleIdentifier];

  if (v4)
  {
    [v13 removeObject:v11];
  }

  else
  {
    if ([v13 containsObject:v11])
    {
      goto LABEL_9;
    }

    [v13 addObject:v11];
  }

  v12 = [MEMORY[0x1E695E000] messagesAppDomain];
  [v12 setValue:v13 forKey:@"SendMenuHiddenExtensionBundleIdentifiers"];

LABEL_9:
}

- (NSArray)orderedCombinedStickerApps
{
  v3 = [(CKBalloonPluginManager *)self allOrderedCombinedStickerApps];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__CKBalloonPluginManager_CKBrowserSelectionController__orderedCombinedStickerApps__block_invoke;
  v6[3] = &unk_1E72F0A88;
  v6[4] = self;
  v4 = [v3 __imArrayByFilteringWithBlock:v6];

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
  v3 = [(CKBalloonPluginManager *)self combinedStickerApps];
  v4 = [v3 lastObject];
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
  v6 = [(CKBalloonPluginManager *)self combinedStickersAppsIndexPathMap];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__CKBalloonPluginManager_CKBrowserSelectionController__allOrderedCombinedStickerApps__block_invoke;
  v12[3] = &unk_1E72F33E8;
  v12[4] = self;
  v13 = v6;
  v14 = v5;
  v7 = v5;
  v8 = v6;
  v9 = [v3 sortedArrayUsingComparator:v12];
  v10 = [v9 mutableCopy];

  [v10 removeObject:v4];
  [v10 addObject:v4];

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

- (id)_pluginIndexPathForFavoritePluginWithIdentifier:(id)a3 pluginMap:(id)a4 fallbackMap:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 objectForKeyedSubscript:v7];
  v10 = v9;
  if (!v9 || [v9 section] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v10, "item") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v8 objectForKeyedSubscript:v7];

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

- (id)_pluginIndexPathForPluginWithIdentifier:(id)a3 pluginMap:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
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

- (BOOL)_addPluginToRecentsFrontIfNeeded:(id)a3 frontOfRecents:(id)a4 pluginMap:(id)a5 fallbackMap:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [v10 identifier];
  v15 = [(CKBalloonPluginManager *)self _pluginIndexPathForFavoritePluginWithIdentifier:v14 pluginMap:v13 fallbackMap:v12];

  if (!v15)
  {
    [v11 addObject:v10];
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
    v23 = self;
    v5 = [objc_opt_class() defaultFavoritePlugins];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          if ([v4 containsObject:v11])
          {
            v12 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:0];
            [v3 setObject:v12 forKeyedSubscript:v11];

            ++v8;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
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
          if (([v5 containsObject:v19] & 1) == 0 && (objc_msgSend(v19, "isEqualToString:", @"com.apple.messages.browser.MorePlugin") & 1) == 0)
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

    [(CKBalloonPluginManager *)v23 setPluginIndexPathMap:v3];
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
    v4 = [(CKBalloonPluginManager *)self combinedStickerApps];
    v5 = [v4 mutableCopy];

    v6 = [v5 lastObject];
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:@"com.apple.messages.browser.MorePlugin"];

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
        v11 = [v10 identifier];

        v12 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
        [v14 setObject:v12 forKeyedSubscript:v11];

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

- (void)updateIndexPath:(id)a3 forPlugin:(id)a4 isDrawerPluginPath:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(CKBalloonPluginManager *)self visibleFavoriteAppStripPlugins];
    v10 = [v9 mutableCopy];

    v11 = [(CKBalloonPluginManager *)self recentAppStripPlugins];
    v12 = [v11 mutableCopy];

    if ([v7 section])
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    [v10 removeObject:v8];
    [v12 removeObject:v8];
    -[NSObject insertObject:atIndex:](v14, "insertObject:atIndex:", v8, [v7 row]);
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
    v15 = [(CKBalloonPluginManager *)self visiblePlugins];
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

- (void)updateIndexPath:(id)a3 forCombinedStickerApp:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(CKBalloonPluginManager *)self orderedCombinedStickerApps];
    v9 = [v8 mutableCopy];

    [v9 removeObject:v7];
    -[NSObject insertObject:atIndex:](v9, "insertObject:atIndex:", v7, [v6 row]);
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

- (BOOL)isEnabledAndVisible:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([(CKBalloonPluginManager *)self isPluginEnabled:v5])
  {
    v6 = [v4 identifier];
    v7 = [(CKBalloonPluginManager *)self isPluginVisible:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeVisibleInstallationWithID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__34;
    v17 = __Block_byref_object_dispose__34;
    v18 = 0;
    v5 = [(CKBalloonPluginManager *)self visibleInstallations];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __88__CKBalloonPluginManager_CKBrowserSelectionController__removeVisibleInstallationWithID___block_invoke;
    v10 = &unk_1E72F3410;
    v11 = v4;
    v12 = &v13;
    [v5 enumerateObjectsUsingBlock:&v7];

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
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CKBalloonPluginManager *)self visibleDrawerPlugins];
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        [v3 appendFormat:@"\n"];
      }

      v6 = [v4 objectAtIndexedSubscript:v5];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __89__CKBalloonPluginManager_CKBrowserSelectionController__descriptionOfVisibleDrawerPlugins__block_invoke;
      v8[3] = &unk_1E72EBB28;
      v9 = v3;
      [v6 enumerateObjectsUsingBlock:v8];

      ++v5;
    }

    while (v5 < [v4 count]);
  }

  return v3;
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