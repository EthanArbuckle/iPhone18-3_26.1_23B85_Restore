@interface StartPageController
- (BOOL)_bookmarkFolderIsEmpty:(id)empty;
- (BOOL)_canShowPrivateRelaySection;
- (BOOL)_setFavoritesListToFolderWithServerID:(id)d;
- (BOOL)isBackgroundImageEnabledForStartPageCustomizationViewController:(id)controller;
- (BOOL)isCloudSyncAvailableForStartPageCustomizationViewController:(id)controller;
- (BOOL)isCloudSyncEnabledForStartPageCustomizationViewController:(id)controller;
- (BOOL)isSuggestionsCustomizationAvailableForStartPageCustomizationViewController:(id)controller;
- (BOOL)isTabGroupFavoritesSectionEnabled;
- (BOOL)startPageViewController:(id)controller isSectionExpanded:(id)expanded;
- (BOOL)startPageViewControllerIsPrivateBrowsingEnabled:(id)enabled;
- (FrequentlyVisitedSitesController)frequentlyVisitedSitesController;
- (NSArray)cloudTabsSections;
- (SFStartPageViewController)viewController;
- (StartPageController)init;
- (StartPageController)initWithVisualStyleProvider:(id)provider;
- (StartPageDataSource)dataSource;
- (id)_banActionForSiriSuggestion:(id)suggestion;
- (id)_bookmarkSectionForBookmark:(id)bookmark orList:(id)list forFavoritesSection:(BOOL)section forScopedFavoritesSection:(BOOL)favoritesSection sectionTitle:(id)title;
- (id)_cloudTabDeviceForIdentifier:(id)identifier;
- (id)_cloudTabDevices;
- (id)_cloudTabItemForIdentifier:(id)identifier;
- (id)_cloudTabStore;
- (id)_cloudTabsConsentMessage;
- (id)_cloudTabsConsentSection;
- (id)_cloudTabsContextMenuCommitHandler;
- (id)_cloudTabsContextMenuDismissHandler;
- (id)_cloudTabsDragItemProvider;
- (id)_cloudTabsSectionWithDevice:(id)device;
- (id)_contextMenuConfigurationForCloudTabWithSelectedDevice:(id)device;
- (id)_contextMenuConfigurationForFrequentlyVisitedSite:(id)site previewProvider:(id)provider;
- (id)_downvoteActionForSiriSuggestion:(id)suggestion;
- (id)_effectiveProfile;
- (id)_effectiveProfileIdentifier;
- (id)_favoritesSection;
- (id)_favoritesSectionTitle;
- (id)_frequentlyVisitedSection;
- (id)_highlightsSection;
- (id)_lastCloudDeviceProfileKey;
- (id)_openMenuElementsForSiriSuggestion:(id)suggestion;
- (id)_privacyReportSection;
- (id)_privateBrowsingExplanationSection;
- (id)_privateBrowsingPersistentModuleSection;
- (id)_privateRelayPromptInPrivateBrowsingSection;
- (id)_readingListSection;
- (id)_recentCloudTabsSection;
- (id)_recentCloudTabsSectionWithDevice:(id)device;
- (id)_recentItemsForDevice:(id)device;
- (id)_recentlyClosedTabsForProfile:(id)profile;
- (id)_recentlyClosedTabsSection;
- (id)_selectedCloudTabsDevice;
- (id)_shareActionForHighlight:(id)highlight;
- (id)_shareActionForSiriSuggestion:(id)suggestion;
- (id)_siriSuggestionsSection;
- (id)_startPageSectionForManagedBookmarksFolder:(id)folder;
- (id)_tabGroupHeadingSection;
- (id)_tabGroupScopedFavoritesSection;
- (id)backgroundImageAssetControllerForCustomizationViewController:(id)controller;
- (id)backgroundImageForStartPageCustomizationViewController:(id)controller;
- (id)backgroundImageIdentifierForStartPageViewController:(id)controller;
- (id)profileProviderForCustomizationViewController:(id)controller;
- (id)sectionsForStartPageViewController:(id)controller;
- (id)startPageBackgroundImageIdentifier;
- (id)startPageCustomizationViewController:(id)controller customizationItemsForCustomizationVariant:(int64_t)variant;
- (id)startPageViewController:(id)controller detailSectionForItemIdentifier:(id)identifier;
- (id)startPageViewController:(id)controller detailSectionsForItemIdentifier:(id)identifier;
- (id)startPageViewControllerDefaultProfile:(id)profile;
- (int64_t)effectiveUpdatePolicy;
- (void)_appendSectionModelsForIdentifier:(id)identifier toArray:(id)array;
- (void)_bookmarkFolderDidChange:(id)change;
- (void)_bookmarksDidReload:(id)reload;
- (void)_cloudTabsConsentSelected;
- (void)_cloudTabsConsentStateDidChange:(id)change;
- (void)_cloudTabsDidChange;
- (void)_cloudTabsDidChange:(id)change;
- (void)_coalesceDataReload;
- (void)_contentBlockerStatisticsStoreDidClose;
- (void)_contextMenuCommitHandlerForFrequentlyVisitedSite:(id)site animator:(id)animator sectionIdentifier:(id)identifier;
- (void)_copyBookmark:(id)bookmark toFolderWithID:(int)d;
- (void)_fetchHandoffResult;
- (void)_fetchMetadataIfNeededForReadingListBookmark:(id)bookmark;
- (void)_frequentlyVisitedSitesDidChange:(id)change;
- (void)_hideCloudTabsSection;
- (void)_highlightsDidChange:(id)change;
- (void)_historyWasAltered;
- (void)_historyWasCleared:(id)cleared;
- (void)_managedBookmarksDidChange;
- (void)_privacyProxyStateDidChange;
- (void)_privacyReportDataDidChange;
- (void)_readingListBookmarkMetadataDidUpdate:(id)update;
- (void)_recentCloudTabItemsDidRebuild:(id)rebuild;
- (void)_recentCloudTabItemsDidReceiveMetadata:(id)metadata;
- (void)_refreshSiriSuggestions;
- (void)_reloadPrivacyReportSection;
- (void)_reportBookmarkNavigationAnalytics:(id)analytics withIntent:(id)intent;
- (void)_reportBookmarkNavigationAnalytics:(id)analytics withIntent:(id)intent bookmarkIsInFavoritesFolder:(BOOL)folder;
- (void)_requestLeadImageForRecommendation:(id)recommendation;
- (void)_sectionsDidChange:(id)change;
- (void)_setLeadImageForCard:(id)card withRecommendation:(id)recommendation;
- (void)_setProfileIconOnSectionIfNeeded:(id)needed;
- (void)_setReadingListRecommendationAsReadWithRecommendation:(id)recommendation;
- (void)_setSiriSuggestions:(id)suggestions;
- (void)_setUpContextMenuForBookmarksSection:(id)section;
- (void)_suggestionsDidChange:(id)change;
- (void)_updateFavoritesListForActiveProfile;
- (void)_updatePrivacyReportData;
- (void)_updateRecentCloudTabsSection;
- (void)_updateRecentItemsAndDevices;
- (void)_updateRecommendationsForAllTopics;
- (void)_updateRecommendationsForTopics:(id)topics;
- (void)_updateSiriSuggestionsMediator;
- (void)_updateStartPageSectionManager;
- (void)bookmark:(id)bookmark didProduceNavigationIntent:(id)intent userInfo:(id)info;
- (void)bookmark:(id)bookmark shareItems:(id)items userInfo:(id)info;
- (void)cloudTabDeviceProvider:(id)provider didUpdateCloudTabsInProfileWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)deleteBookmark:(id)bookmark userInfo:(id)info;
- (void)didReorderSectionIdentifiersForStartPageCustomizationViewController:(id)controller;
- (void)editBookmark:(id)bookmark userInfo:(id)info;
- (void)openRadarProblemURLforFrequentlyVisitedSite:(id)site userInfo:(id)info;
- (void)setDataSource:(id)source;
- (void)setShowingAsPopover:(BOOL)popover;
- (void)setTabGroupFavoritesSectionEnabled:(BOOL)enabled;
- (void)startPageCustomizationViewController:(id)controller didCustomizeItems:(id)items withVariant:(int64_t)variant;
- (void)startPageCustomizationViewController:(id)controller didModifyBackgroundImageEnabled:(BOOL)enabled;
- (void)startPageCustomizationViewController:(id)controller didSelectBuiltInBackgroundImageAtURL:(id)l precomputedLuminance:(double)luminance;
- (void)startPageCustomizationViewController:(id)controller didSelectCustomBackgroundImage:(id)image;
- (void)startPageCustomizationViewController:(id)controller willModifySectionWithIdentifier:(id)identifier enabled:(BOOL)enabled;
- (void)startPageCustomizationViewControllerDidDisableCloudSync:(id)sync;
- (void)startPageCustomizationViewControllerDidEnableCloudSync:(id)sync withPreference:(int64_t)preference;
- (void)startPageCustomizationViewControllerDidFinish:(id)finish;
- (void)startPageViewController:(id)controller didSelectItemWithIdentifier:(id)identifier atGridLocation:(id)location;
- (void)startPageViewController:(id)controller didUpdateSearchPattern:(id)pattern;
- (void)startPageViewController:(id)controller toggleSectionExpanded:(id)expanded;
- (void)startPageViewControllerDidChangeRootViewVisibility:(id)visibility;
- (void)tabGroupManager:(id)manager didUpdateProfileWithIdentifier:(id)identifier difference:(id)difference;
- (void)tabGroupManager:(id)manager didUpdateScopedBookmarkList:(id)list;
- (void)updatePolicyDidChange;
- (void)updatePrivacyReportIfEnabled;
- (void)updateTabGroupHeading;
@end

@implementation StartPageController

- (StartPageController)init
{
  mEMORY[0x277D28C38] = [MEMORY[0x277D28C38] sharedProvider];
  v4 = [(StartPageController *)self initWithVisualStyleProvider:mEMORY[0x277D28C38]];

  return v4;
}

- (void)_updateStartPageSectionManager
{
  v15 = self->_startPageSectionManager;
  if ([MEMORY[0x277D49A08] isSafariProfilesEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    activeProfileIdentifier = [WeakRetained activeProfileIdentifier];

    if ([activeProfileIdentifier isEqualToString:*MEMORY[0x277D49BD8]])
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277D4A7E0]);
      v8 = +[Application sharedApplication];
      tabGroupManager = [v8 tabGroupManager];
      standardUserDefaults = [v7 initWithProfileIdentifier:activeProfileIdentifier tabGroupManager:tabGroupManager];
    }

    v10 = [objc_alloc(MEMORY[0x277D4A080]) initWithStorage:standardUserDefaults];
    startPageSectionManager = self->_startPageSectionManager;
    self->_startPageSectionManager = v10;
  }

  else
  {
    defaultManager = [MEMORY[0x277D4A080] defaultManager];
    activeProfileIdentifier = self->_startPageSectionManager;
    self->_startPageSectionManager = defaultManager;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = *MEMORY[0x277D4A4D0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D4A4D0] object:v15];
  [defaultCenter addObserver:self selector:sel__sectionsDidChange_ name:v13 object:self->_startPageSectionManager];
  frequentlyVisitedSitesController = self->_frequentlyVisitedSitesController;
  self->_frequentlyVisitedSitesController = 0;

  [(StartPageController *)self _cloudTabsDidChange];
  if ([MEMORY[0x277D49A08] is2024CloudTabsEnabled])
  {
    [(StartPageController *)self _updateRecentCloudTabsSection];
  }

  else
  {
    [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
  }
}

- (void)_cloudTabsDidChange
{
  if (([MEMORY[0x277D49A08] is2024CloudTabsEnabled] & 1) == 0)
  {
    v3 = [(WBSStartPageSectionManager *)self->_startPageSectionManager sectionForIdentifier:*MEMORY[0x277D4A4A8]];
    isEnabled = [v3 isEnabled];

    if (isEnabled)
    {
      _selectedCloudTabsDevice = [(StartPageController *)self _selectedCloudTabsDevice];
      itemIdentifiers = [(WBSStartPageSection *)self->_cachedCloudTabsSection itemIdentifiers];
      tabs = [_selectedCloudTabsDevice tabs];
      v8 = WBSIsEqual();

      if ((v8 & 1) == 0)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_INFO, "Updating iCloud Tabs for selected device in Start Page", v13, 2u);
        }

        v10 = [(StartPageController *)self _cloudTabsSectionWithDevice:_selectedCloudTabsDevice];
        cachedCloudTabsSection = self->_cachedCloudTabsSection;
        self->_cachedCloudTabsSection = v10;

        [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
      }
    }

    else
    {
      v12 = self->_cachedCloudTabsSection;
      self->_cachedCloudTabsSection = 0;
    }
  }
}

- (void)_updateRecentCloudTabsSection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__StartPageController__updateRecentCloudTabsSection__block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_effectiveProfile
{
  v3 = +[Application sharedApplication];
  tabGroupManager = [v3 tabGroupManager];
  _effectiveProfileIdentifier = [(StartPageController *)self _effectiveProfileIdentifier];
  v6 = [tabGroupManager profileWithIdentifier:_effectiveProfileIdentifier];

  return v6;
}

- (id)_effectiveProfileIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if ([WeakRetained isPrivateBrowsingEnabled])
  {
    activeProfileIdentifier = *MEMORY[0x277D49BD8];
  }

  else
  {
    activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
  }

  v4 = activeProfileIdentifier;

  return v4;
}

- (void)updatePolicyDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  updatePolicy = self->_updatePolicy;
  v7 = WeakRetained;
  v5 = [WeakRetained updatePolicyForStartPageController:self];
  if (updatePolicy != v5)
  {
    self->_updatePolicy = v5;
    if ([(StartPageController *)self effectiveUpdatePolicy]== 2)
    {
      cachedFavoritesList = self->_cachedFavoritesList;
      self->_cachedFavoritesList = 0;
    }

    if ([(StartPageController *)self effectiveUpdatePolicy])
    {
      [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
    }
  }
}

- (int64_t)effectiveUpdatePolicy
{
  result = self->_updatePolicy;
  if (!result)
  {
    return 2 * ([(NSMutableArray *)self->_cachedSections count:v2]== 0);
  }

  return result;
}

- (id)_cloudTabStore
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  cloudTabStore = [WeakRetained cloudTabStore];

  return cloudTabStore;
}

- (void)_updateRecentItemsAndDevices
{
  displayableRecentItems = [(WBSRecentsStore *)self->_recentsStore displayableRecentItems];
  v3 = [displayableRecentItems copy];
  recentItems = self->_recentItems;
  self->_recentItems = v3;

  availableDevices = [(WBSRecentsStore *)self->_recentsStore availableDevices];
  v5 = [availableDevices copy];
  availableDevices = self->_availableDevices;
  self->_availableDevices = v5;

  recentItemsByDeviceUUID = self->_recentItemsByDeviceUUID;
  self->_recentItemsByDeviceUUID = 0;

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  self->_cloudTabsConsentObtained = [standardUserDefaults BOOLForKey:*MEMORY[0x277D4A160]];
}

- (SFStartPageViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (!self->_viewController)
  {
    v4 = objc_alloc(MEMORY[0x277D28D58]);
    visualStyleProvider = self->_visualStyleProvider;
    tabGroupProvider = [WeakRetained tabGroupProvider];
    activeProfile = [tabGroupProvider activeProfile];
    v8 = [v4 initWithVisualStyleProvider:visualStyleProvider forProfile:activeProfile];
    viewController = self->_viewController;
    self->_viewController = v8;

    [(SFStartPageViewController *)self->_viewController setCustomizationDataSource:self];
    [(SFStartPageViewController *)self->_viewController setDataSource:self];
    [(StartPageController *)self _updatePrivacyReportData];
  }

  tabGroupProvider2 = [WeakRetained tabGroupProvider];
  activeProfile2 = [tabGroupProvider2 activeProfile];
  [(SFStartPageViewController *)self->_viewController setProfile:activeProfile2];

  v12 = self->_viewController;
  v13 = v12;

  return v12;
}

- (void)_updatePrivacyReportData
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if ([WeakRetained isPrivateBrowsingEnabled])
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v5 = [safari_browserDefaults safari_enableAdvancedPrivacyProtections:1];

    if (v5)
    {

      [(StartPageController *)self _privacyReportDataDidChange];
      return;
    }
  }

  else
  {
  }

  objc_initWeak(&location, self);
  _effectiveProfileIdentifier = [(StartPageController *)self _effectiveProfileIdentifier];
  profileIdentifiers = [(WBSPrivacyReportData *)self->_privacyReportData profileIdentifiers];
  if ([profileIdentifiers count] != 1)
  {

LABEL_11:
    v11 = +[Application sharedApplication];
    historyController = [v11 historyController];
    v13 = [historyController historyForProfileIdentifier:_effectiveProfileIdentifier loadIfNeeded:1];

    if (_effectiveProfileIdentifier && v13)
    {
      v14 = objc_alloc(MEMORY[0x277D4A7C0]);
      v15 = [MEMORY[0x277CBEB98] setWithObject:_effectiveProfileIdentifier];
      v16 = [MEMORY[0x277CBEB98] setWithObject:v13];
      v17 = [v14 initWithProfileIdentifiers:v15 histories:v16];
      privacyReportData = self->_privacyReportData;
      self->_privacyReportData = v17;

      self->_cachedNumberOfTrackers = 0;
    }

    goto LABEL_15;
  }

  profileIdentifiers2 = [(WBSPrivacyReportData *)self->_privacyReportData profileIdentifiers];
  anyObject = [profileIdentifiers2 anyObject];
  v10 = [anyObject isEqualToString:_effectiveProfileIdentifier];

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  if ([MEMORY[0x277D49A08] is2024PrivacyReportEnabled])
  {
    v19 = self->_privacyReportData;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __47__StartPageController__updatePrivacyReportData__block_invoke;
    v27[3] = &unk_2781D6840;
    objc_copyWeak(&v28, &location);
    [(WBSPrivacyReportData *)v19 loadDataWithCompletionHandler:v27];
    objc_destroyWeak(&v28);
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v22 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:date options:0];

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v24 = self->_privacyReportData;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __47__StartPageController__updatePrivacyReportData__block_invoke_3;
    v25[3] = &unk_2781D6840;
    objc_copyWeak(&v26, &location);
    [(WBSPrivacyReportData *)v24 loadDataFromStartDate:v22 toEndDate:distantFuture withCompletionHandler:v25];
    objc_destroyWeak(&v26);
  }

  objc_destroyWeak(&location);
}

- (id)startPageBackgroundImageIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  startPageBackgroundImageIdentifier = [tabGroupProvider startPageBackgroundImageIdentifier];

  return startPageBackgroundImageIdentifier;
}

- (void)updatePrivacyReportIfEnabled
{
  if ([(NSMutableArray *)self->_cachedSections safari_containsObjectPassingTest:&__block_literal_global_125])
  {

    [(StartPageController *)self _updatePrivacyReportData];
  }
}

- (id)_tabGroupScopedFavoritesSection
{
  if ([(StartPageController *)self isTabGroupFavoritesSectionEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    tabGroupProvider = [WeakRetained tabGroupProvider];

    activeTabGroup = [tabGroupProvider activeTabGroup];
    supportsTabGroupFavorites = [activeTabGroup supportsTabGroupFavorites];

    if (supportsTabGroupFavorites)
    {
      topScopedBookmarkListForActiveTabGroup = [tabGroupProvider topScopedBookmarkListForActiveTabGroup];
      tabGroupScopedFavoritesList = self->_tabGroupScopedFavoritesList;
      self->_tabGroupScopedFavoritesList = topScopedBookmarkListForActiveTabGroup;

      activeTabGroup2 = [tabGroupProvider activeTabGroup];
      displayTitle = [activeTabGroup2 displayTitle];

      v11 = MEMORY[0x277CCACA8];
      v12 = _WBSLocalizedString();
      v13 = [v11 stringWithFormat:v12, displayTitle];

      v14 = [(StartPageController *)self _bookmarkSectionForBookmark:0 orList:self->_tabGroupScopedFavoritesList forFavoritesSection:0 forScopedFavoritesSection:1 sectionTitle:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isTabGroupFavoritesSectionEnabled
{
  _effectiveProfile = [(StartPageController *)self _effectiveProfile];
  kind = [_effectiveProfile kind];

  if (kind == 1)
  {
    _effectiveProfile2 = [(StartPageController *)self _effectiveProfile];
    v6 = [_effectiveProfile2 settingForKey:*MEMORY[0x277D4A490]];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    _effectiveProfile2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    bOOLValue = [_effectiveProfile2 BOOLForKey:*MEMORY[0x277D4A490]];
  }

  return bOOLValue;
}

- (id)_favoritesSection
{
  [(StartPageController *)self _updateFavoritesListForActiveProfile];
  _effectiveProfile = [(StartPageController *)self _effectiveProfile];
  if ([_effectiveProfile kind])
  {
    goto LABEL_8;
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  if (([safari_browserDefaults BOOLForKey:*MEMORY[0x277D49C08]] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  mEMORY[0x277D28CD8] = [MEMORY[0x277D28CD8] sharedController];
  managedBookmarksController = [mEMORY[0x277D28CD8] managedBookmarksController];
  managedBookmarks = [managedBookmarksController managedBookmarks];

  if (managedBookmarks)
  {
    cachedManagedBookmarksSection = self->_cachedManagedBookmarksSection;
    if (!cachedManagedBookmarksSection)
    {
      mEMORY[0x277D28CD8]2 = [MEMORY[0x277D28CD8] sharedController];
      topLevelManagedBookmarkFolder = [mEMORY[0x277D28CD8]2 topLevelManagedBookmarkFolder];
      v11 = [(StartPageController *)self _startPageSectionForManagedBookmarksFolder:topLevelManagedBookmarkFolder];
      v12 = self->_cachedManagedBookmarksSection;
      self->_cachedManagedBookmarksSection = v11;

      cachedManagedBookmarksSection = self->_cachedManagedBookmarksSection;
    }

    v13 = cachedManagedBookmarksSection;
    goto LABEL_21;
  }

LABEL_9:
  favoritesList = self->_favoritesList;
  if (!favoritesList)
  {
    bookmarkCollection = self->_bookmarkCollection;
    if (self->_webFilterUsesOnlyAllowedSites)
    {
      [(WebBookmarkCollection *)bookmarkCollection webFilterAllowedSites];
    }

    else
    {
      [(WebBookmarkCollection *)bookmarkCollection favoritesFolderList];
    }
    v16 = ;
    v17 = self->_favoritesList;
    self->_favoritesList = v16;

    self->_favoritesFolderIDForDefaultProfile = [(WebBookmarkList *)self->_favoritesList folderID];
    favoritesList = self->_favoritesList;
  }

  if (self->_cachedFavoritesList != favoritesList)
  {
    v18 = [StartPageController _bookmarkSectionForBookmark:"_bookmarkSectionForBookmark:orList:forFavoritesSection:forScopedFavoritesSection:sectionTitle:" orList:0 forFavoritesSection:? forScopedFavoritesSection:? sectionTitle:?];
    cachedFavoritesSection = self->_cachedFavoritesSection;
    self->_cachedFavoritesSection = v18;

    objc_storeStrong(&self->_cachedFavoritesList, self->_favoritesList);
  }

  v13 = self->_cachedFavoritesSection;
  _effectiveProfile2 = [(StartPageController *)self _effectiveProfile];
  symbolImage = [_effectiveProfile2 symbolImage];
  [(WBSStartPageSection *)v13 setIcon:symbolImage];

  _effectiveProfile3 = [(StartPageController *)self _effectiveProfile];
  kind = [_effectiveProfile3 kind];

  if (!kind)
  {
    itemIdentifiers = [(WBSStartPageSection *)v13 itemIdentifiers];
    if ([itemIdentifiers count])
    {
      v25 = v13;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v13 = v26;
  }

LABEL_21:

  return v13;
}

- (void)_updateFavoritesListForActiveProfile
{
  _effectiveProfile = [(StartPageController *)self _effectiveProfile];
  customFavoritesFolderServerID = [_effectiveProfile customFavoritesFolderServerID];
  lastSeenProfileCustomFavoritesServerID = self->_lastSeenProfileCustomFavoritesServerID;
  self->_lastSeenProfileCustomFavoritesServerID = customFavoritesFolderServerID;

  if ((!self->_lastSeenProfileCustomFavoritesServerID || ![(StartPageController *)self _setFavoritesListToFolderWithServerID:?]) && [(WebBookmarkList *)self->_favoritesList folderID]!= self->_favoritesFolderIDForDefaultProfile)
  {
    favoritesList = self->_favoritesList;
    self->_favoritesList = 0;

    customFavoritesFolderBookmark = self->_customFavoritesFolderBookmark;
    self->_customFavoritesFolderBookmark = 0;
  }
}

- (id)_favoritesSectionTitle
{
  v3 = WBSStartPageSectionIdentifierTitle();
  customFavoritesFolderBookmark = self->_customFavoritesFolderBookmark;
  if (customFavoritesFolderBookmark)
  {
    if (([(WebBookmark *)customFavoritesFolderBookmark isBookmarksBarFolder]& 1) != 0)
    {
      safari_stringByTrimmingWhitespace = 0;
    }

    else
    {
      title = [(WebBookmark *)self->_customFavoritesFolderBookmark title];
      safari_stringByTrimmingWhitespace = [title safari_stringByTrimmingWhitespace];
    }

    if ([safari_stringByTrimmingWhitespace length] && (objc_msgSend(safari_stringByTrimmingWhitespace, "isEqualToString:", v3) & 1) == 0)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", safari_stringByTrimmingWhitespace, v3];

      safari_stringByTrimmingWhitespace = v3;
      v3 = v7;
    }
  }

  return v3;
}

- (void)updateTabGroupHeading
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  activeTabGroup = [tabGroupProvider activeTabGroup];

  if ([activeTabGroup isSyncable])
  {
    title = [(WBSStartPageSection *)self->_cachedTabGroupHeadingSection title];
    displayTitle = [activeTabGroup displayTitle];
    v7 = WBSIsEqual();

    if ((v7 & 1) == 0)
    {
      [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:0];
    }
  }
}

uint64_t __52__StartPageController__updateRecentCloudTabsSection__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateRecentItemsAndDevices];
  v2 = [*(a1 + 32) _recentCloudTabsSection];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(*(a1 + 32) + 360);

  return [v5 reloadDataAnimatingDifferences:1];
}

- (id)_recentCloudTabsSection
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D49A08] is2024CloudTabsEnabled] && -[NSArray count](self->_recentItems, "count"))
  {
    v3 = MEMORY[0x277D4A838];
    toggleSectionExpandedAction = [MEMORY[0x277D4A6E8] toggleSectionExpandedAction];
    v12[0] = toggleSectionExpandedAction;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v6 = [v3 cardSectionWithIdentifier:*MEMORY[0x277D4A4A8] actions:v5 banner:0 identifiers:self->_recentItems configurationProvider:&__block_literal_global_256];

    [v6 setNumberOfRowsVisibleWhenCollapsed:{-[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](self->_visualStyleProvider, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 3, 0)}];
    [v6 setNumberOfRowsVisibleWhenCollapsedInCompactWidth:{-[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](self->_visualStyleProvider, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 3, 1)}];
    [v6 setExpandsModally:1];
    _contextMenuConfigurationForRecentCloudTab = [(StartPageController *)self _contextMenuConfigurationForRecentCloudTab];
    [v6 setContextMenuProvider:_contextMenuConfigurationForRecentCloudTab];

    _cloudTabsContextMenuCommitHandler = [(StartPageController *)self _cloudTabsContextMenuCommitHandler];
    [v6 setContextMenuCommitHandler:_cloudTabsContextMenuCommitHandler];

    _cloudTabsContextMenuDismissHandler = [(StartPageController *)self _cloudTabsContextMenuDismissHandler];
    [v6 setContextMenuDismissHandler:_cloudTabsContextMenuDismissHandler];

    _cloudTabsDragItemProvider = [(StartPageController *)self _cloudTabsDragItemProvider];
    [v6 setDragItemProvider:_cloudTabsDragItemProvider];

    [v6 setMaximumNumberOfPages:4];
    if (!self->_libraryType)
    {
      [(StartPageController *)self _setProfileIconOnSectionIfNeeded:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_privacyProxyStateDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if ([WeakRetained isPrivateBrowsingEnabled])
  {
    privateBrowsingExplanationState = self->_privateBrowsingExplanationState;

    if (privateBrowsingExplanationState == 1)
    {
      goto LABEL_5;
    }

    viewController = self->_viewController;
    WeakRetained = [(StartPageController *)self _privateBrowsingExplanationSection];
    [(SFStartPageViewController *)viewController reloadSection:WeakRetained animated:0];
  }

LABEL_5:

  [(StartPageController *)self _reloadPrivacyReportSection];
}

- (void)_reloadPrivacyReportSection
{
  viewController = self->_viewController;
  _privacyReportSection = [(StartPageController *)self _privacyReportSection];
  [SFStartPageViewController reloadSection:"reloadSection:animated:" animated:?];
}

- (id)_privacyReportSection
{
  mEMORY[0x277D4A7B8] = [MEMORY[0x277D4A7B8] sharedManager];
  initialized = [mEMORY[0x277D4A7B8] initialized];

  if (initialized)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    objc_initWeak(&location, WeakRetained);
    v6 = MEMORY[0x277D4A828];
    cachedNumberOfTrackers = self->_cachedNumberOfTrackers;
    isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];
    privacyReportData = self->_privacyReportData;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __44__StartPageController__privacyReportSection__block_invoke;
    v16 = &unk_2781D6840;
    objc_copyWeak(&v17, &location);
    v10 = [v6 privacyReportBannerWithNumberOfTrackers:cachedNumberOfTrackers privateBrowsingEnabled:isPrivateBrowsingEnabled privacyReportData:privacyReportData selectionHandler:&v13];
    v11 = [MEMORY[0x277D4A838] bannerSectionWithIdentifier:*MEMORY[0x277D4A4E0] banner:{v10, v13, v14, v15, v16}];
    [(StartPageController *)self _setProfileIconOnSectionIfNeeded:v11];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_highlightsSection
{
  v53[1] = *MEMORY[0x277D85DE8];
  v3 = +[Application sharedApplication];
  highlightManager = [v3 highlightManager];

  v33 = highlightManager;
  highlights = [highlightManager highlights];
  v5 = WBSIsEqual();
  v6 = highlights;
  v7 = *MEMORY[0x277D4A4C0];
  v8 = +[Application sharedApplication];
  dataSource = [(StartPageController *)self dataSource];
  activeProfileIdentifier = [dataSource activeProfileIdentifier];
  v11 = [v8 suggestionsManagerForProfileIdentifier:activeProfileIdentifier];

  v32 = v11;
  suggestions = [v11 suggestions];
  v12 = [MEMORY[0x277D49A08] is2024SuggestionsEnabled] ^ 1 | v5;
  if (v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = suggestions;

    v14 = *MEMORY[0x277D4A518];
    v7 = v14;
  }

  v34 = v7;
  if ([v13 count])
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];

    v17 = MEMORY[0x277D4A838];
    if (v5)
    {
      v18 = MEMORY[0x277CBEBF8];
      v19 = &stru_2827BF158;
    }

    else
    {
      v19 = WBSStartPageSectionIdentifierTitle();
      WeakRetained = [MEMORY[0x277D4A6E8] toggleSectionExpandedAction];
      v53[0] = WeakRetained;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __41__StartPageController__highlightsSection__block_invoke;
    v46[3] = &unk_2781DD130;
    objc_copyWeak(&v49, &location);
    v50 = (v12 ^ 1) & 1;
    v47 = v32;
    v25 = v33;
    v48 = v25;
    v51 = isPrivateBrowsingEnabled;
    v24 = [v17 attributedRichLinkSectionWithIdentifier:v34 title:v19 actions:v18 banner:0 identifiers:v13 configurationProvider:v46];
    if ((v5 & 1) == 0)
    {
    }

    [v24 setNumberOfRowsVisibleWhenCollapsed:{-[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](self->_visualStyleProvider, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 4, 0)}];
    [v24 setNumberOfRowsVisibleWhenCollapsedInCompactWidth:{-[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](self->_visualStyleProvider, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 4, 1)}];
    [v24 setMaximumNumberOfPages:4];
    [v24 setExpandsModally:1];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __41__StartPageController__highlightsSection__block_invoke_5;
    v42[3] = &unk_2781DD1D0;
    v42[4] = self;
    objc_copyWeak(&v44, &location);
    v26 = v25;
    v43 = v26;
    v45 = isPrivateBrowsingEnabled;
    [v24 setContextMenuProvider:v42];
    identifier = [v24 identifier];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __41__StartPageController__highlightsSection__block_invoke_2_333;
    v37[3] = &unk_2781DD220;
    objc_copyWeak(&v40, &location);
    v28 = identifier;
    v38 = v28;
    v39 = v26;
    v41 = isPrivateBrowsingEnabled;
    [v24 setContextMenuCommitHandler:v37];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __41__StartPageController__highlightsSection__block_invoke_4_336;
    v35[3] = &unk_2781DCAC8;
    objc_copyWeak(&v36, &location);
    [v24 setContextMenuDismissHandler:v35];
    [v24 setDragItemProvider:&__block_literal_global_340];
    objc_destroyWeak(&v36);

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v44);

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  else if (v5)
  {
    v20 = MEMORY[0x277D4A828];
    v21 = [MEMORY[0x277D755B8] _systemImageNamed:@"shared.with.you"];
    v22 = _WBSLocalizedString();
    v23 = [v20 bannerWithImage:v21 title:&stru_2827BF158 message:v22 interactive:0 dismissHandler:0];

    v24 = [MEMORY[0x277D4A838] bannerSectionWithIdentifier:v7 title:&stru_2827BF158 banner:v23];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (StartPageDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)_readingListSection
{
  v18[1] = *MEMORY[0x277D85DE8];
  readingList = self->_readingList;
  if (!readingList)
  {
    v4 = [(WebBookmarkCollection *)self->_bookmarkCollection readingListWithUnreadOnly:0 filteredUsingString:0];
    v5 = self->_readingList;
    self->_readingList = v4;

    readingList = self->_readingList;
  }

  if ([(WebBookmarkList *)readingList bookmarkCount])
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277D4A838];
    toggleSectionExpandedAction = [MEMORY[0x277D4A6E8] toggleSectionExpandedAction];
    v18[0] = toggleSectionExpandedAction;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v9 = [(WebBookmarkList *)self->_readingList bookmarkArrayRequestingCount:50];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __42__StartPageController__readingListSection__block_invoke;
    v15 = &unk_2781DCA00;
    objc_copyWeak(&v16, &location);
    v10 = [v6 cardSectionWithIdentifier:*MEMORY[0x277D4A500] actions:v8 banner:0 identifiers:v9 configurationProvider:&v12];

    [v10 setExpandsModally:{1, v12, v13, v14, v15}];
    if ([MEMORY[0x277D49A08] is2024ReadingListEnabled])
    {
      [v10 setNumberOfRowsVisibleWhenCollapsed:{-[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](self->_visualStyleProvider, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 3, 0)}];
      [v10 setNumberOfRowsVisibleWhenCollapsedInCompactWidth:{-[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](self->_visualStyleProvider, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 3, 1)}];
      [v10 setMaximumNumberOfPages:4];
    }

    [(StartPageController *)self _setUpContextMenuForBookmarksSection:v10];
    [(StartPageController *)self _setUpDragItemProviderForBookmarksSection:v10];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_recentlyClosedTabsSection
{
  v25[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  activeProfile = [tabGroupProvider activeProfile];
  v6 = [(StartPageController *)self _recentlyClosedTabsForProfile:activeProfile];

  if ([v6 count])
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D4A6E8];
    v8 = _WBSLocalizedString();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke;
    v22[3] = &unk_2781D6840;
    objc_copyWeak(&v23, &location);
    v9 = [v7 actionWithTitle:v8 image:0 identifier:0 handler:v22];

    [v9 setAccessibilityIdentifier:@"StartPageSectionClearAllButton"];
    v10 = _WBSLocalizedString();
    v11 = MEMORY[0x277D4A838];
    v25[0] = v9;
    toggleSectionExpandedAction = [MEMORY[0x277D4A6E8] toggleSectionExpandedAction];
    v25[1] = toggleSectionExpandedAction;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v14 = [v11 listSectionWithIdentifier:*MEMORY[0x277D4A508] title:v10 actions:v13 banner:0 identifiers:v6 configurationProvider:&__block_literal_global_154_1];

    [(StartPageController *)self _setProfileIconOnSectionIfNeeded:v14];
    [v14 setNumberOfRowsVisibleWhenCollapsed:{-[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](self->_visualStyleProvider, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 5, 0)}];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_3;
    v20[3] = &unk_2781DCBC8;
    objc_copyWeak(&v21, &location);
    [v14 setContextMenuProvider:v20];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_13;
    v18[3] = &unk_2781DCBF0;
    objc_copyWeak(&v19, &location);
    [v14 setContextMenuCommitHandler:v18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_15;
    v16[3] = &unk_2781DCAC8;
    objc_copyWeak(&v17, &location);
    [v14 setContextMenuDismissHandler:v16];
    [v14 setDragItemProvider:&__block_literal_global_197];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSArray)cloudTabsSections
{
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = +[Application sharedApplication];
  isCloudHistoryEnabled = [v3 isCloudHistoryEnabled];

  if ((isCloudHistoryEnabled & 1) == 0)
  {
    goto LABEL_34;
  }

  if ([MEMORY[0x277D49A08] is2024CloudTabsEnabled])
  {
    v5 = +[Application sharedApplication];
    _effectiveProfileIdentifier = [(StartPageController *)self _effectiveProfileIdentifier];
    v7 = [v5 recentsStoreForProfileWithIdentifier:_effectiveProfileIdentifier];
    recentsStore = self->_recentsStore;
    self->_recentsStore = v7;

    [(StartPageController *)self _updateRecentItemsAndDevices];
    if ([(StartPageController *)self _shouldShowConsentUI])
    {
      _cloudTabsConsentSection = [(StartPageController *)self _cloudTabsConsentSection];
      v59[0] = _cloudTabsConsentSection;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];

      goto LABEL_35;
    }

    if (self->_libraryType)
    {
      if (![(NSArray *)self->_availableDevices count]&& self->_libraryType)
      {
LABEL_34:
        v10 = 0;
        goto LABEL_35;
      }

      isEnhancedVerticalTabsEnabled = [MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled];
      availableDevices = self->_availableDevices;
      if (isEnhancedVerticalTabsEnabled)
      {
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __40__StartPageController_cloudTabsSections__block_invoke;
        v53[3] = &unk_2781DCC38;
        v53[4] = self;
        v41 = [(NSArray *)availableDevices safari_firstObjectPassingTest:v53];
        if (v41)
        {
          v42 = [(StartPageController *)self _recentCloudTabsSectionWithDevice:v41];
          v43 = v42;
          if (v42)
          {
            v58 = v42;
            v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
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

        goto LABEL_35;
      }

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __40__StartPageController_cloudTabsSections__block_invoke_2;
      v52[3] = &unk_2781DCC60;
      v52[4] = self;
      v17 = [(NSArray *)availableDevices safari_mapObjectsUsingBlock:v52];
    }

    else
    {
      cachedCloudTabsSection = self->_cachedCloudTabsSection;
      if (!cachedCloudTabsSection)
      {
        _recentCloudTabsSection = [(StartPageController *)self _recentCloudTabsSection];
        v46 = self->_cachedCloudTabsSection;
        self->_cachedCloudTabsSection = _recentCloudTabsSection;

        cachedCloudTabsSection = self->_cachedCloudTabsSection;
        if (!cachedCloudTabsSection)
        {
          goto LABEL_34;
        }
      }

      v57 = cachedCloudTabsSection;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    }

LABEL_32:
    v10 = v17;
    goto LABEL_35;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  canShowSidebar = [WeakRetained canShowSidebar];

  if (((self->_libraryType == 0) & canShowSidebar) != 0)
  {
    v13 = self->_cachedCloudTabsSection;
    if (!v13)
    {
      _selectedCloudTabsDevice = [(StartPageController *)self _selectedCloudTabsDevice];
      v15 = [(StartPageController *)self _cloudTabsSectionWithDevice:_selectedCloudTabsDevice];
      v16 = self->_cachedCloudTabsSection;
      self->_cachedCloudTabsSection = v15;

      v13 = self->_cachedCloudTabsSection;
      if (!v13)
      {
        goto LABEL_34;
      }
    }

    v54 = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    goto LABEL_32;
  }

  _cloudTabDevices = [(StartPageController *)self _cloudTabDevices];
  v19 = [_cloudTabDevices count];
  if (v19 || !self->_libraryType)
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __40__StartPageController_cloudTabsSections__block_invoke_3;
    v51[3] = &unk_2781DCC60;
    v51[4] = self;
    v20 = [_cloudTabDevices safari_mapObjectsUsingBlock:v51];
    v10 = [v20 mutableCopy];

    if (v19 < 5)
    {
      v21 = 1;
    }

    else
    {
      v21 = canShowSidebar;
    }

    if ((v21 & 1) == 0)
    {
      [v10 removeObjectsInRange:{4, v19 - 4}];
      objc_initWeak(&location, self);
      v22 = MEMORY[0x277D4A6E8];
      v23 = _WBSLocalizedString();
      v24 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __40__StartPageController_cloudTabsSections__block_invoke_4;
      v48[3] = &unk_2781D6840;
      objc_copyWeak(&v49, &location);
      v25 = [v22 actionWithTitle:v23 image:v24 identifier:0 handler:v48];

      v26 = MEMORY[0x277D4A838];
      v56 = v25;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      v28 = [v26 actionSectionWithIdentifier:@"showAllCloudDevices" actions:v27];
      [v10 addObject:v28];

      objc_destroyWeak(&v49);
      objc_destroyWeak(&location);
    }

    if (![v10 count] && self->_searchPattern && self->_libraryType)
    {
      v30 = MEMORY[0x277D4A828];
      v31 = WBSLocalizedStringWithValue(@"No Results", v29);
      v32 = MEMORY[0x277CCACA8];
      v34 = WBSLocalizedStringWithValue(@"There were no results for “%@”. Try a new search.", v33);
      v35 = [v32 stringWithFormat:v34, self->_searchPattern];
      v36 = [v30 bannerWithImage:0 title:v31 message:v35 interactive:0 dismissHandler:0];

      v37 = [MEMORY[0x277D4A838] bannerSectionWithIdentifier:*MEMORY[0x277D4A4A8] title:&stru_2827BF158 banner:v36];
      v55 = v37;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];

      v10 = v38;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_35:

  return v10;
}

- (FrequentlyVisitedSitesController)frequentlyVisitedSitesController
{
  frequentlyVisitedSitesController = self->_frequentlyVisitedSitesController;
  if (!frequentlyVisitedSitesController)
  {
    v4 = +[Application sharedApplication];
    historyController = [v4 historyController];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
    v8 = [historyController frequentlyVisitedSitesControllerForProfileIdentifier:activeProfileIdentifier loadIfNeeded:1];
    v9 = self->_frequentlyVisitedSitesController;
    self->_frequentlyVisitedSitesController = v8;

    frequentlyVisitedSitesController = self->_frequentlyVisitedSitesController;
  }

  v10 = frequentlyVisitedSitesController;

  return v10;
}

- (StartPageController)initWithVisualStyleProvider:(id)provider
{
  providerCopy = provider;
  v46.receiver = self;
  v46.super_class = StartPageController;
  v6 = [(StartPageController *)&v46 init];
  if (v6)
  {
    objc_initWeak(&location, v6);
    objc_storeStrong(&v6->_visualStyleProvider, provider);
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    bookmarkCollection = v6->_bookmarkCollection;
    v6->_bookmarkCollection = mainBookmarkCollection;

    v9 = +[Application sharedApplication];
    readingListLeadImageCache = [v9 readingListLeadImageCache];
    readingListLeadImageCache = v6->_readingListLeadImageCache;
    v6->_readingListLeadImageCache = readingListLeadImageCache;

    [(StartPageController *)v6 _updateStartPageSectionManager];
    mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
    v6->_webFilterUsesOnlyAllowedSites = [mEMORY[0x277D7B590] usesAllowedSitesOnly];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__cloudTabsDidChange_ name:@"CloudTabStoreDidUpdateNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__bookmarkFolderDidChange_ name:*MEMORY[0x277D7B618] object:v6->_bookmarkCollection];
    [defaultCenter addObserver:v6 selector:sel__bookmarksDidReload_ name:*MEMORY[0x277D7B608] object:v6->_bookmarkCollection];
    [defaultCenter addObserver:v6 selector:sel__bookmarksDidReload_ name:*MEMORY[0x277D7B640] object:v6->_bookmarkCollection];
    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__bookmarksDidReload_ name:*MEMORY[0x277D7B600] object:0];

    [defaultCenter addObserver:v6 selector:sel__frequentlyVisitedSitesDidChange_ name:*MEMORY[0x277D4A8F0] object:0];
    [defaultCenter addObserver:v6 selector:sel__refreshSiriSuggestions name:*MEMORY[0x277D4A208] object:0];
    existingSharedHistory = [MEMORY[0x277D49F68] existingSharedHistory];
    [defaultCenter addObserver:v6 selector:sel__historyWasAltered name:*MEMORY[0x277D4A230] object:existingSharedHistory];

    [defaultCenter addObserver:v6 selector:sel__historyWasCleared_ name:*MEMORY[0x277D4A240] object:0];
    [defaultCenter addObserver:v6 selector:sel__readingListBookmarkMetadataDidUpdate_ name:@"ReadingListBookmarkMetadataDidUpdateNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__contentBlockerStatisticsStoreDidClose name:*MEMORY[0x277D4A170] object:0];
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel__recentCloudTabItemsDidRebuild_ name:*MEMORY[0x277D4A930] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v6 selector:sel__recentCloudTabItemsDidReceiveMetadata_ name:*MEMORY[0x277D4A938] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v6 selector:sel__suggestionsDidChange_ name:*MEMORY[0x277D4A980] object:0];

    safari_suggestionsRelativeDateTimeFormatter = [MEMORY[0x277CCAC78] safari_suggestionsRelativeDateTimeFormatter];
    relativeDateFormatter = v6->_relativeDateFormatter;
    v6->_relativeDateFormatter = safari_suggestionsRelativeDateTimeFormatter;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    suggestionProxiesToMetadataTokens = v6->_suggestionProxiesToMetadataTokens;
    v6->_suggestionProxiesToMetadataTokens = strongToStrongObjectsMapTable;

    siriSuggestions = v6->_siriSuggestions;
    v6->_siriSuggestions = MEMORY[0x277CBEBF8];

    [(StartPageController *)v6 updatePrivateBrowsingExplanationState];
    [defaultCenter addObserver:v6 selector:sel__highlightsDidChange_ name:*MEMORY[0x277D4A8F8] object:0];
    mEMORY[0x277D4A7B8] = [MEMORY[0x277D4A7B8] sharedManager];
    [defaultCenter addObserver:v6 selector:sel__privacyProxyStateDidChange name:*MEMORY[0x277D4A910] object:mEMORY[0x277D4A7B8]];

    [defaultCenter addObserver:v6 selector:sel__managedBookmarksDidChange name:*MEMORY[0x277D29058] object:0];
    defaultCenter6 = [MEMORY[0x277CCA9A0] defaultCenter];
    v26 = [MEMORY[0x277CBEBD0] safari_notificationNameForUserDefaultsKey:*MEMORY[0x277D49C08]];
    [defaultCenter6 addObserver:v6 selector:sel__managedBookmarksDidChange name:v26 object:0];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v28 = *MEMORY[0x277D290B8];
    v29 = MEMORY[0x277D85CD0];
    v30 = MEMORY[0x277D85CD0];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __51__StartPageController_initWithVisualStyleProvider___block_invoke;
    v43[3] = &unk_2781DC858;
    objc_copyWeak(&v44, &location);
    v31 = [standardUserDefaults safari_observeValueForKey:v28 onQueue:v29 notifyForInitialValue:0 handler:v43];
    selectedCloudDeviceObservation = v6->_selectedCloudDeviceObservation;
    v6->_selectedCloudDeviceObservation = v31;

    _effectiveProfile = [(StartPageController *)v6 _effectiveProfile];
    kind = [_effectiveProfile kind];

    if (kind != 1)
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v36 = *MEMORY[0x277D4A490];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __51__StartPageController_initWithVisualStyleProvider___block_invoke_2;
      v41[3] = &unk_2781D83F8;
      objc_copyWeak(&v42, &location);
      v37 = [standardUserDefaults2 safari_observeValueForKey:v36 onQueue:MEMORY[0x277D85CD0] notifyForInitialValue:0 handler:v41];
      tabGroupFavoritesObservation = v6->_tabGroupFavoritesObservation;
      v6->_tabGroupFavoritesObservation = v37;

      objc_destroyWeak(&v42);
    }

    v39 = v6;
    objc_destroyWeak(&v44);

    objc_destroyWeak(&location);
  }

  return v6;
}

void __51__StartPageController_initWithVisualStyleProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cloudTabsDidChange];
}

void __51__StartPageController_initWithVisualStyleProvider___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sectionsDidChange:0];
}

- (void)dealloc
{
  [(WBSUserDefaultObservation *)self->_tabGroupFavoritesObservation invalidate];
  [(WBSUserDefaultObservation *)self->_selectedCloudDeviceObservation invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  [mEMORY[0x277D28F58] cancelRequestsWithTokens:self->_siriSuggestionsMetadataTokens];

  [(WBSForYouRecommendationMediator *)self->_siriSuggestionsMediator stopListeningForURLSuggestionChanges];
  [(NSTimer *)self->_coalescedRecentCloudTabsSectionUpdateTimer invalidate];
  if ([(NSMapTable *)self->_suggestionProxiesToMetadataTokens count])
  {
    mEMORY[0x277D28F58]2 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    objectEnumerator = [(NSMapTable *)self->_suggestionProxiesToMetadataTokens objectEnumerator];
    allObjects = [objectEnumerator allObjects];
    [mEMORY[0x277D28F58]2 cancelRequestsWithTokens:allObjects];
  }

  v9.receiver = self;
  v9.super_class = StartPageController;
  [(StartPageController *)&v9 dealloc];
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained != obj)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"ProfileDidChange" object:WeakRetained];
    [defaultCenter addObserver:self selector:sel__updateStartPageSectionManager name:@"ProfileDidChange" object:obj];
    objc_storeWeak(&self->_dataSource, obj);
    [(StartPageController *)self updatePolicyDidChange];
    [(StartPageController *)self _updateStartPageSectionManager];
    isPrivateBrowsingEnabled = [obj isPrivateBrowsingEnabled];
    v7 = isPrivateBrowsingEnabled;
    if (isPrivateBrowsingEnabled)
    {
      safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      v9 = [safari_browserDefaults safari_enableAdvancedPrivacyProtections:1];

      self->_privateBrowsingWasEnabled = v7;
      if (v9)
      {
        self->_cachedNumberOfTrackers = [MEMORY[0x277D49EE8] totalBlockedTrackerCount];
LABEL_9:
        v17 = objc_alloc(MEMORY[0x277D4A7E8]);
        _cloudTabStore = [(StartPageController *)self _cloudTabStore];
        v19 = [v17 initWithCloudTabDeviceProvider:_cloudTabStore];
        recentCloudTabsProvider = self->_recentCloudTabsProvider;
        self->_recentCloudTabsProvider = v19;

        _effectiveProfileIdentifier = [(StartPageController *)self _effectiveProfileIdentifier];
        [(WBSRecentCloudTabsProvider *)self->_recentCloudTabsProvider setActiveProfileIdentifier:_effectiveProfileIdentifier];

        v22 = +[Application sharedApplication];
        _effectiveProfileIdentifier2 = [(StartPageController *)self _effectiveProfileIdentifier];
        v24 = [v22 recentsStoreForProfileWithIdentifier:_effectiveProfileIdentifier2];
        recentsStore = self->_recentsStore;
        self->_recentsStore = v24;

        [(StartPageController *)self _updateRecentItemsAndDevices];
        goto LABEL_10;
      }
    }

    else
    {
      self->_privateBrowsingWasEnabled = isPrivateBrowsingEnabled;
    }

    v10 = MEMORY[0x277D4A7C0];
    _effectiveProfileIdentifier3 = [(StartPageController *)self _effectiveProfileIdentifier];
    v12 = [v10 cachedNumberOfTrackersOnStartPageForProfileWithIdentifier:_effectiveProfileIdentifier3];

    if (!v12)
    {
      v13 = MEMORY[0x277CCABB0];
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v15 = *MEMORY[0x277D290A8];
      v12 = [v13 numberWithInteger:{objc_msgSend(standardUserDefaults, "integerForKey:", *MEMORY[0x277D290A8])}];

      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults2 removeObjectForKey:v15];
    }

    self->_cachedNumberOfTrackers = [v12 integerValue];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)_sectionsDidChange:(id)change
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {

    [(StartPageController *)self _coalesceDataReload];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__StartPageController__sectionsDidChange___block_invoke;
    block[3] = &unk_2781D60B8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_coalesceDataReload
{
  viewController = self->_viewController;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__StartPageController__coalesceDataReload__block_invoke;
  v3[3] = &unk_2781D60B8;
  v3[4] = self;
  [(SFStartPageViewController *)viewController coalesceDataReloadWithBlock:v3 animatingDifferences:1];
}

- (void)_setProfileIconOnSectionIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[Application sharedApplication];
  primaryBrowserController = [v4 primaryBrowserController];
  hasMultipleProfiles = [primaryBrowserController hasMultipleProfiles];

  if (hasMultipleProfiles)
  {
    _effectiveProfile = [(StartPageController *)self _effectiveProfile];
    symbolImage = [_effectiveProfile symbolImage];
    [neededCopy setIcon:symbolImage];
  }
}

- (BOOL)_setFavoritesListToFolderWithServerID:(id)d
{
  dCopy = d;
  serverID = [(WebBookmark *)self->_customFavoritesFolderBookmark serverID];
  v6 = [serverID isEqualToString:dCopy];

  if (v6)
  {
    v7 = self->_customFavoritesFolderBookmark;
  }

  else
  {
    v7 = [(WebBookmarkCollection *)self->_bookmarkCollection bookmarkWithServerID:self->_lastSeenProfileCustomFavoritesServerID excludeDeletedBookmarks:1];
  }

  v8 = v7;
  identifier = [(WebBookmark *)v7 identifier];
  if ([(WebBookmarkList *)self->_favoritesList folderID]== identifier)
  {
    goto LABEL_8;
  }

  v10 = 0;
  if (v8 && identifier != 0x7FFFFFFF)
  {
    objc_storeStrong(&self->_customFavoritesFolderBookmark, v8);
    v11 = [(WebBookmarkCollection *)self->_bookmarkCollection listWithID:identifier];
    favoritesList = self->_favoritesList;
    self->_favoritesList = v11;

LABEL_8:
    v10 = 1;
  }

  return v10;
}

- (id)_startPageSectionForManagedBookmarksFolder:(id)folder
{
  folderCopy = folder;
  directChildrenAsWebBookmarks = [folderCopy directChildrenAsWebBookmarks];
  v6 = MEMORY[0x277D4A838];
  uuid = [folderCopy uuid];
  title = [folderCopy title];
  v9 = [v6 iconSectionWithIdentifier:uuid title:title actions:MEMORY[0x277CBEBF8] banner:0 supplementaryAction:0 identifiers:directChildrenAsWebBookmarks configurationProvider:&__block_literal_global_78];

  [(StartPageController *)self _setUpContextMenuForBookmarksSection:v9];

  return v9;
}

void __66__StartPageController__startPageSectionForManagedBookmarksFolder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  v5 = [v4 title];
  [v6 setTitle:v5];

  [v6 setIconFromBookmark:v4];
}

- (id)_tabGroupHeadingSection
{
  v2 = MEMORY[0x277D4A838];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  activeTabGroup = [tabGroupProvider activeTabGroup];
  displayTitle = [activeTabGroup displayTitle];
  v7 = [v2 headingSectionWithIdentifier:*MEMORY[0x277D4A530] title:displayTitle];

  [v7 setUsesLargeTitle:1];

  return v7;
}

- (void)setTabGroupFavoritesSectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _effectiveProfile = [(StartPageController *)self _effectiveProfile];
  kind = [_effectiveProfile kind];

  if (kind == 1)
  {
    v7 = +[Application sharedApplication];
    tabGroupManager = [v7 tabGroupManager];
    _effectiveProfile2 = [(StartPageController *)self _effectiveProfile];
    identifier = [_effectiveProfile2 identifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__StartPageController_setTabGroupFavoritesSectionEnabled___block_invoke;
    v13[3] = &__block_descriptor_33_e26_v16__0__WBMutableProfile_8l;
    v14 = enabledCopy;
    v11 = [tabGroupManager updateProfileWithIdentifier:identifier persist:1 usingBlock:v13 completionHandler:0];
  }

  else
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [safari_browserDefaults setBool:enabledCopy forKey:*MEMORY[0x277D4A490]];
  }
}

void __58__StartPageController_setTabGroupFavoritesSectionEnabled___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  [v4 setSetting:v3 forKey:*MEMORY[0x277D4A490]];
}

- (void)_copyBookmark:(id)bookmark toFolderWithID:(int)d
{
  v4 = *&d;
  bookmarkCopy = bookmark;
  v7 = objc_alloc(MEMORY[0x277D7B5A0]);
  title = [bookmarkCopy title];
  address = [bookmarkCopy address];
  v10 = [v7 initWithTitle:title address:address collectionType:{objc_msgSend(bookmarkCopy, "collectionType")}];

  if ([MEMORY[0x277D7B5A8] lockSync])
  {
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    [mainBookmarkCollection saveAndMoveBookmark:v10 toFolderID:v4];

    [MEMORY[0x277D7B5A8] unlockSync];
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXStartPage();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [StartPageController _copyBookmark:v12 toFolderWithID:?];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__StartPageController__copyBookmark_toFolderWithID___block_invoke;
    block[3] = &unk_2781D60B8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didPreventBookmarkActionWithBookmarkType:1 actionType:0];
  }
}

- (id)_bookmarkSectionForBookmark:(id)bookmark orList:(id)list forFavoritesSection:(BOOL)section forScopedFavoritesSection:(BOOL)favoritesSection sectionTitle:(id)title
{
  favoritesSectionCopy = favoritesSection;
  sectionCopy = section;
  bookmarkCopy = bookmark;
  listCopy = list;
  titleCopy = title;
  if (!bookmarkCopy || (-[WebBookmarkCollection listWithID:](self->_bookmarkCollection, "listWithID:", [bookmarkCopy identifier]), v15 = objc_claimAutoreleasedReturnValue(), listCopy, (listCopy = v15) != 0))
  {
    bookmarkArray = [listCopy bookmarkArray];
    if (sectionCopy)
    {
      if ([(StartPageController *)self effectiveUpdatePolicy]== 1)
      {
        if ([bookmarkArray count] <= 0xC)
        {
          v17 = [bookmarkArray count];
        }

        else
        {
          v17 = 12;
        }

        v23 = [bookmarkArray subarrayWithRange:{0, v17}];

        bookmarkArray = v23;
      }

      if (favoritesSectionCopy)
      {
        goto LABEL_16;
      }

      v20 = *MEMORY[0x277D4A4B0];
    }

    else
    {
      if (favoritesSectionCopy)
      {
LABEL_16:
        v20 = *MEMORY[0x277D4A520];
        v38 = bookmarkArray;
        if (titleCopy)
        {
          v36 = titleCopy;
        }

        else
        {
          v36 = WBSStartPageSectionIdentifierTitle();
        }

        goto LABEL_26;
      }

      uUID = [bookmarkCopy UUID];
      v19 = uUID;
      if (uUID)
      {
        v20 = uUID;
      }

      else
      {
        bookmarkArray2 = [listCopy bookmarkArray];
        firstObject = [bookmarkArray2 firstObject];
        uUID2 = [firstObject UUID];

        v20 = uUID2;
      }
    }

    v38 = bookmarkArray;
    if (bookmarkCopy)
    {
      [bookmarkCopy localizedTitle];
    }

    else
    {
      [(StartPageController *)self _favoritesSectionTitle];
    }
    v36 = ;
LABEL_26:
    array = [MEMORY[0x277CBEB18] array];
    if (bookmarkCopy)
    {
      if (!sectionCopy)
      {
        goto LABEL_33;
      }
    }

    else
    {
      toggleSectionExpandedAction = [MEMORY[0x277D4A6E8] toggleSectionExpandedAction];
      [array addObject:toggleSectionExpandedAction];

      if (!sectionCopy)
      {
        goto LABEL_33;
      }
    }

    if (!favoritesSectionCopy)
    {
      _effectiveProfile = [(StartPageController *)self _effectiveProfile];
      kind = [_effectiveProfile kind];

      if (kind == 1)
      {
LABEL_34:
        v35 = v20;
        objc_initWeak(location, self);
        v31 = MEMORY[0x277D4A6E8];
        v32 = _WBSLocalizedString();
        v33 = [MEMORY[0x277D755B8] systemImageNamed:@"plus"];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke;
        v47[3] = &unk_2781DC8E8;
        objc_copyWeak(&v49, location);
        v50 = favoritesSectionCopy;
        v48 = listCopy;
        v30 = [v31 actionWithTitle:v32 image:v33 identifier:0 handler:v47];

        objc_destroyWeak(&v49);
        objc_destroyWeak(location);
        v20 = v35;
LABEL_35:
        v22 = [MEMORY[0x277D4A838] iconSectionWithIdentifier:v20 title:v36 actions:array banner:0 supplementaryAction:v30 identifiers:v38 configurationProvider:&__block_literal_global_83];
        [(StartPageController *)self _setUpContextMenuForBookmarksSection:v22];
        [(StartPageController *)self _setUpDragItemProviderForBookmarksSection:v22];
        if (sectionCopy)
        {
          [(StartPageController *)self _setProfileIconOnSectionIfNeeded:v22];
        }

        else if (!favoritesSectionCopy)
        {
LABEL_40:

          goto LABEL_41;
        }

        if (!self->_webFilterUsesOnlyAllowedSites)
        {
          objc_initWeak(location, v22);
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_4;
          v44[3] = &unk_2781DC938;
          objc_copyWeak(&v45, location);
          v46 = favoritesSectionCopy;
          [v22 setDropOperationProvider:v44];
          objc_initWeak(&from, self);
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_6;
          v39[3] = &unk_2781DC9B0;
          objc_copyWeak(&v41, &from);
          v40 = listCopy;
          v42 = favoritesSectionCopy;
          [v22 setDropHandler:v39];

          objc_destroyWeak(&v41);
          objc_destroyWeak(&from);
          objc_destroyWeak(&v45);
          objc_destroyWeak(location);
        }

        goto LABEL_40;
      }

LABEL_32:
      v30 = 0;
      goto LABEL_35;
    }

LABEL_33:
    if (favoritesSectionCopy)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v21 = WBS_LOG_CHANNEL_PREFIXStartPage();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [StartPageController _bookmarkSectionForBookmark:v21 orList:? forFavoritesSection:? forScopedFavoritesSection:? sectionTitle:?];
  }

  v22 = emptyBookmarksSection();
LABEL_41:

  return v22;
}

void __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 44);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_2;
    v5[3] = &unk_2781DC8C0;
    objc_copyWeak(&v7, (a1 + 40));
    v8 = *(a1 + 48);
    v6 = *(a1 + 32);
    [v4 presentBookmarkPickerWithImportHandler:v5];

    objc_destroyWeak(&v7);
  }
}

void __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 48) == 1)
    {
      v4 = +[Application sharedApplication];
      v5 = [v4 primaryBrowserController];
      v6 = [v5 tabController];
    }

    else
    {
      [WeakRetained _copyBookmark:v7 toFolderWithID:{objc_msgSend(*(a1 + 32), "folderID")}];
    }
  }
}

void __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  v5 = [v4 title];
  [v6 setTitle:v5];

  [v6 setIconFromBookmark:v4];
}

uint64_t __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_4(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained itemIdentifiers];

  v8 = [v7 count];
  v9 = [v5 items];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_5;
  v15[3] = &unk_2781DC910;
  v10 = v7;
  v16 = v10;
  v11 = [v9 safari_containsObjectPassingTest:v15];

  v12 = 0;
  if (v8 == a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v8 >= a2 && (v13 & 1) == 0)
  {
    v12 = [MEMORY[0x277D7B5A0] _sf_operationForDropSession:v5 destinationSubtype:*(a1 + 40)];
  }

  return v12;
}

uint64_t __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _sf_localBookmark];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 session];
  v5 = MEMORY[0x277D7B5A0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_7;
  v8[3] = &unk_2781DC988;
  objc_copyWeak(&v12, (a1 + 40));
  v6 = v3;
  v9 = v6;
  v10 = *(a1 + 32);
  v11 = v4;
  v13 = *(a1 + 48);
  v7 = v4;
  [v5 _sf_webBookmarksFromDropSession:v7 completionHandler:v8];

  objc_destroyWeak(&v12);
}

void __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_7(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v50 = v2;
  if (![v2 count])
  {
    goto LABEL_52;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_51;
  }

  v49 = [MEMORY[0x277D28BE0] sharedCoordinator];
  if (([v49 lockBookmarks] & 1) == 0)
  {
    [MEMORY[0x277D28BE0] showLockedDatabaseAlertForAction:0 fromViewController:*(WeakRetained + 45)];
    goto LABEL_50;
  }

  v3 = objc_alloc_init(MEMORY[0x277D49B60]);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_8;
  v72[3] = &unk_2781D60B8;
  v73 = v49;
  v47 = v3;
  [v3 setHandler:v72];
  v51 = [*(a1 + 32) destinationIndexPath];
  if (!v51)
  {
    goto LABEL_49;
  }

  *(WeakRetained + 112) = 1;
  v48 = [v2 objectAtIndexedSubscript:0];
  v58 = [v51 item];
  v4 = objc_loadWeakRetained(WeakRetained + 44);
  v57 = [v4 tabGroupProvider];

  v5 = [WeakRetained frequentlyVisitedSitesController];
  v6 = [v5 frequentlyVisitedSites];
  v7 = [v6 containsObject:v48];

  if (v7)
  {
    v8 = [WeakRetained frequentlyVisitedSitesController];
    [v8 promoteFrequentlyVisitedSite:v48 toFavoriteAtIndex:{objc_msgSend(v51, "item")}];
    goto LABEL_45;
  }

  v9 = [*(a1 + 40) folderID];
  v10 = [*(a1 + 48) localDragSession];
  v54 = [v10 localContext];
  v11 = [*(WeakRetained + 45) view];
  v53 = [v11 window];

  v52 = [v50 mutableCopy];
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v68 = 0u;
  obj = v50;
  v12 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = *v69;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v69 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v68 + 1) + 8 * i);
      if (v54 != v53 && [*(*(&v68 + 1) + 8 * i) parentID] == v9)
      {
        v16 = [*(a1 + 40) bookmarkArray];
        v17 = [v16 indexOfObject:v15];
        LOBYTE(v17) = v17 < [v51 item];

        v58 = v58 - (v17 & 1);
      }

      if ([v15 subtype] == 1)
      {
        if (*(a1 + 64))
        {
          continue;
        }

        v18 = *(WeakRetained + 2);
        v19 = objc_alloc(MEMORY[0x277D7B5A0]);
        v20 = [v15 title];
        v21 = [v15 address];
        v22 = [v18 configuration];
        v23 = [v19 initWithTitle:v20 address:v21 parentID:v9 collectionType:{objc_msgSend(v22, "collectionType")}];

        [v18 saveBookmark:v23];
        [v52 replaceObjectAtIndex:objc_msgSend(v52 withObject:{"indexOfObject:", v15), v23}];

        goto LABEL_21;
      }

      if (*(a1 + 64))
      {
        v18 = [v57 copyBookmark:v15 toPerTabGroupBookmarkFolderWithID:v9];
        [v52 replaceObjectAtIndex:objc_msgSend(v52 withObject:{"indexOfObject:", v15), v18}];
LABEL_21:

        continue;
      }

      [*(WeakRetained + 2) saveAndMoveBookmark:v15 toFolderID:v9];
    }

    v12 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  }

  while (v12);
LABEL_25:

  if (*(a1 + 64) == 1)
  {
    [v57 perTabGroupBookmarkListForFolderID:v9 filteredUsingString:0];
  }

  else
  {
    [*(WeakRetained + 2) listWithID:v9];
  }
  v24 = ;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v25 = [v52 reverseObjectEnumerator];
  v26 = [v25 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v26)
  {
    v27 = *v65;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v65 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v64 + 1) + 8 * j);
        if (*(a1 + 64) == 1)
        {
          v30 = [v57 perTabGroupBookmarkListForFolderID:objc_msgSend(*(*(&v64 + 1) + 8 * j) filteredUsingString:{"parentID"), 0}];
          v31 = [obj containsObject:v29];
          v32 = v31;
          if (v31)
          {
            v33 = [v30 bookmarkArray];
            v34 = [v33 indexOfObject:v29];
          }

          else
          {
            v34 = 0;
          }

          if (v58)
          {
            v37 = [*(a1 + 40) bookmarkArray];
            v38 = [v37 objectAtIndexedSubscript:v58 - (v34 >= v58 || (v32 & 1) == 0)];
          }

          else
          {
            v38 = 0;
          }

          v39 = [v29 UUID];
          v40 = [v38 UUID];
          [v57 reorderScopedBookmarkWithUUID:v39 afterBookmarkWithUUID:v40 notify:1];
        }

        else
        {
          v35 = [v24 bookmarkArray];
          v36 = [v35 indexOfObject:v29];

          [*(WeakRetained + 2) reorderList:v24 moveBookmarkAtIndex:v36 toIndex:v58];
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v26);
  }

  v8 = v52;
LABEL_45:

  v41 = *(WeakRetained + 7);
  *(WeakRetained + 7) = 0;

  [*(WeakRetained + 45) reloadDataAnimatingDifferences:1];
  v42 = [*(a1 + 48) items];
  v43 = MEMORY[0x277CCAA78];
  v44 = [v42 count];
  if (v44 >= [v50 count])
  {
    v45 = v50;
  }

  else
  {
    v45 = v42;
  }

  v46 = [v43 indexSetWithIndexesInRange:{0, objc_msgSend(v45, "count")}];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_9;
  v60[3] = &unk_2781DC960;
  v63 = v58;
  v61 = v51;
  v62 = *(a1 + 32);
  [v42 enumerateObjectsAtIndexes:v46 options:0 usingBlock:v60];
  *(WeakRetained + 112) = 0;

LABEL_49:
LABEL_50:

LABEL_51:
  v2 = v50;
LABEL_52:
}

void __117__StartPageController__bookmarkSectionForBookmark_orList_forFavoritesSection_forScopedFavoritesSection_sectionTitle___block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 48) + a3 inSection:{objc_msgSend(*(a1 + 32), "section")}];
  v6 = [*(a1 + 40) dropItem:v7 toItemAtIndexPath:v5];
}

- (id)_frequentlyVisitedSection
{
  v10[1] = *MEMORY[0x277D85DE8];
  frequentlyVisitedSitesController = [(StartPageController *)self frequentlyVisitedSitesController];
  frequentlyVisitedSites = [frequentlyVisitedSitesController frequentlyVisitedSites];

  if ([frequentlyVisitedSites count])
  {
    v5 = MEMORY[0x277D4A838];
    toggleSectionExpandedAction = [MEMORY[0x277D4A6E8] toggleSectionExpandedAction];
    v10[0] = toggleSectionExpandedAction;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v8 = [v5 iconSectionWithIdentifier:*MEMORY[0x277D4A4B8] actions:v7 banner:0 supplementaryAction:0 identifiers:frequentlyVisitedSites configurationProvider:&__block_literal_global_94_0];

    [v8 setNumberOfRowsVisibleWhenCollapsed:{-[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](self->_visualStyleProvider, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 2, 0)}];
    [(StartPageController *)self _setUpContextMenuForBookmarksSection:v8];
    [(StartPageController *)self _setUpDragItemProviderForBookmarksSection:v8];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __48__StartPageController__frequentlyVisitedSection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  v5 = [v4 title];
  [v6 setTitle:v5];

  [v6 setIconFromBookmark:v4];
}

void __42__StartPageController__readingListSection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([MEMORY[0x277D49A08] is2024ReadingListEnabled])
  {
    v7 = [v6 previewText];
    [v5 setSubtitle:v7];

    v8 = MEMORY[0x277CBEBC0];
    v9 = [v6 address];
    v10 = [v8 safari_URLWithDataAsString:v9];
    v11 = [v10 host];
    v12 = [v11 safari_highLevelDomainFromHost];
    [v5 setCaptionText:v12 icon:0];
  }

  else
  {
    v13 = [v6 address];
    v14 = [v13 safari_domainFromHost];
    [v5 setSubtitle:v14];

    [v5 setCaption:&stru_2827BF158];
  }

  v15 = [v6 title];
  [v5 setTitle:v15];

  v16 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__StartPageController__readingListSection__block_invoke_2;
  block[3] = &unk_2781D7060;
  objc_copyWeak(&v22, (a1 + 32));
  v20 = v6;
  v21 = v5;
  v17 = v5;
  v18 = v6;
  dispatch_async(v16, block);

  objc_destroyWeak(&v22);
}

void __42__StartPageController__readingListSection__block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] readingListIconUUID];
    v4 = [v3 length];

    if (!v4 || (v5 = WeakRetained[39], [a1[4] readingListIconUUID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "loadImageSynchronouslyForIconUUID:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
    {
      v7 = [a1[4] iconData];

      if (v7)
      {
        v8 = MEMORY[0x277D755B8];
        v9 = [a1[4] iconData];
        v7 = [v8 imageWithData:v9];
      }
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__StartPageController__readingListSection__block_invoke_3;
    v11[3] = &unk_2781DC9D8;
    objc_copyWeak(&v15, a1 + 6);
    v12 = v7;
    v13 = a1[5];
    v14 = a1[4];
    v10 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v11);

    objc_destroyWeak(&v15);
  }
}

void __42__StartPageController__readingListSection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = *(a1 + 40);
    if (*(a1 + 32))
    {
      [v2 setImage:?];
    }

    else
    {
      [v2 setImageFromBookmark:*(a1 + 48)];
      [WeakRetained _fetchMetadataIfNeededForReadingListBookmark:*(a1 + 48)];
    }
  }
}

- (void)_fetchMetadataIfNeededForReadingListBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v4 = [(NSMutableDictionary *)self->_readingListBookmarksToMetadataStates objectForKeyedSubscript:?];
  integerValue = [v4 integerValue];

  if (!integerValue)
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    safari_shouldAutomaticallyDownloadReadingListItems = [safari_browserDefaults safari_shouldAutomaticallyDownloadReadingListItems];

    if ((safari_shouldAutomaticallyDownloadReadingListItems & 1) == 0)
    {
      if (!self->_readingListBookmarksToMetadataStates)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        readingListBookmarksToMetadataStates = self->_readingListBookmarksToMetadataStates;
        self->_readingListBookmarksToMetadataStates = dictionary;
      }

      if ([ReadingListMetadataFetcher shouldFetchMetadataForBookmark:bookmarkCopy])
      {
        [(NSMutableDictionary *)self->_readingListBookmarksToMetadataStates setObject:&unk_2827FC2C8 forKeyedSubscript:bookmarkCopy];
        v10 = +[ReadingListMetadataFetcher sharedMetadataFetcher];
        [v10 fetchMetadataForReadingListBookmark:bookmarkCopy withProvider:0];
      }

      else
      {
        if (![ReadingListMetadataFetcher shouldFetchThumbnailForBookmark:bookmarkCopy])
        {
          goto LABEL_10;
        }

        [(NSMutableDictionary *)self->_readingListBookmarksToMetadataStates setObject:&unk_2827FC2C8 forKeyedSubscript:bookmarkCopy];
        v10 = +[ReadingListMetadataFetcher sharedMetadataFetcher];
        [v10 fetchThumbnailForReadingListBookmark:bookmarkCopy withProvider:0];
      }
    }
  }

LABEL_10:
}

- (void)_contextMenuCommitHandlerForFrequentlyVisitedSite:(id)site animator:(id)animator sectionIdentifier:(id)identifier
{
  animatorCopy = animator;
  identifierCopy = identifier;
  [animatorCopy setPreferredCommitStyle:1];
  previewViewController = [animatorCopy previewViewController];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __100__StartPageController__contextMenuCommitHandlerForFrequentlyVisitedSite_animator_sectionIdentifier___block_invoke;
  v18 = &unk_2781D61F8;
  selfCopy = self;
  v10 = previewViewController;
  v20 = v10;
  [animatorCopy addAnimations:&v15];
  if (*MEMORY[0x277D4A4B0] == identifierCopy)
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didSelectFavoriteWithOpenLocation:0];
    goto LABEL_5;
  }

  if (*MEMORY[0x277D4A4B8] == identifierCopy)
  {
    v11 = objc_alloc(MEMORY[0x277D49A30]);
    v12 = [MEMORY[0x277CBEAA8] now];
    mEMORY[0x277D499B8] = [v11 initWithItemPosition:0 lastVisitedDate:v12 score:0];

    mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8]2 didSelectFrequentlyVisitedSiteWithOpenLocation:0 analyticsPayload:mEMORY[0x277D499B8]];

LABEL_5:
  }
}

void __100__StartPageController__contextMenuCommitHandlerForFrequentlyVisitedSite_animator_sectionIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 352));
  [WeakRetained commitLinkPreviewViewController:*(a1 + 40)];
}

- (BOOL)_bookmarkFolderIsEmpty:(id)empty
{
  emptyCopy = empty;
  if (([emptyCopy isFolder] & 1) == 0 || (objc_msgSend(emptyCopy, "managedBookmarkUUID"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (objc_msgSend(emptyCopy, "_sf_managedBookmark"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "children"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8))
  {
    v9 = 0;
  }

  else
  {
    v10 = -[WebBookmarkCollection listWithID:](self->_bookmarkCollection, "listWithID:", [emptyCopy identifier]);
    v9 = [v10 bookmarkCount] == 0;
  }

  return v9;
}

- (id)_contextMenuConfigurationForFrequentlyVisitedSite:(id)site previewProvider:(id)provider
{
  siteCopy = site;
  providerCopy = provider;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D753B0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__StartPageController__contextMenuConfigurationForFrequentlyVisitedSite_previewProvider___block_invoke;
  v17[3] = &unk_2781DCA28;
  objc_copyWeak(&v20, &location);
  v9 = siteCopy;
  v18 = v9;
  v10 = providerCopy;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__StartPageController__contextMenuConfigurationForFrequentlyVisitedSite_previewProvider___block_invoke_2;
  v14[3] = &unk_2781DCA50;
  objc_copyWeak(&v16, &location);
  v15 = v9;
  v11 = v9;
  v12 = [v8 configurationWithIdentifier:0 previewProvider:v17 actionProvider:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v12;
}

id __89__StartPageController__contextMenuConfigurationForFrequentlyVisitedSite_previewProvider___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  if ([a1[4] isFolder])
  {
    if ([WeakRetained _bookmarkFolderIsEmpty:a1[4]])
    {
LABEL_4:
      v3 = 0;
      goto LABEL_7;
    }

    v3 = [a1[5] previewViewControllerForItemIdentifier:a1[4]];
  }

  else
  {
    v4 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
    v5 = [v4 navigationIntentWithBookmark:a1[4]];

    v6 = objc_loadWeakRetained(WeakRetained + 44);
    v3 = [v6 linkPreviewViewControllerForNavigationIntent:v5];
  }

LABEL_7:

  return v3;
}

id __89__StartPageController__contextMenuConfigurationForFrequentlyVisitedSite_previewProvider___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) historyItem];
    v4 = objc_alloc(MEMORY[0x277D49A30]);
    v5 = [WeakRetained frequentlyVisitedSitesController];
    v6 = [v5 displayIndexOfFrequentlyVisitedSite:*(a1 + 32)];
    v7 = [v3 lastVisitedDate];
    v8 = [*(a1 + 32) frequentlyVisitedSiteScore];
    v9 = [v4 initWithItemPosition:v6 lastVisitedDate:v7 score:v8];

    v10 = *(a1 + 32);
    v11 = WeakRetained[2];
    v12 = objc_loadWeakRetained(WeakRetained + 44);
    v13 = [v12 tabGroupProvider];
    v14 = [v10 _sf_contextMenuUsingCollection:v11 tabGroupActionProvider:v13 analyticsPayload:v9 withUserInfo:0 handler:WeakRetained];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_setUpContextMenuForBookmarksSection:(id)section
{
  sectionCopy = section;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__StartPageController__setUpContextMenuForBookmarksSection___block_invoke;
  v12[3] = &unk_2781DCA78;
  v12[4] = self;
  [sectionCopy setContextMenuProvider:v12];
  identifier = [sectionCopy identifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__StartPageController__setUpContextMenuForBookmarksSection___block_invoke_2;
  v9[3] = &unk_2781DCAA0;
  objc_copyWeak(&v11, &location);
  v6 = identifier;
  v10 = v6;
  [sectionCopy setContextMenuCommitHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__StartPageController__setUpContextMenuForBookmarksSection___block_invoke_3;
  v7[3] = &unk_2781DCAC8;
  objc_copyWeak(&v8, &location);
  [sectionCopy setContextMenuDismissHandler:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __60__StartPageController__setUpContextMenuForBookmarksSection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) _contextMenuConfigurationForFrequentlyVisitedSite:a2 previewProvider:a3];

  return v3;
}

void __60__StartPageController__setUpContextMenuForBookmarksSection___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _contextMenuCommitHandlerForFrequentlyVisitedSite:v9 animator:v6 sectionIdentifier:*(a1 + 32)];
  }
}

void __60__StartPageController__setUpContextMenuForBookmarksSection___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && ([v6 isFolder] & 1) == 0)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 44);
    [v5 linkPreviewProviderWillDismissPreview];
  }
}

id __65__StartPageController__setUpDragItemProviderForBookmarksSection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x277D75470]) _sf_initWithBookmark:v2];

  return v3;
}

- (void)_bookmarkFolderDidChange:(id)change
{
  userInfo = [change userInfo];
  v8 = [userInfo objectForKey:*MEMORY[0x277D7B5E8]];

  if (v8)
  {
    intValue = [v8 intValue];
    p_favoritesList = &self->_favoritesList;
    if (intValue == [(WebBookmarkList *)self->_favoritesList folderID])
    {
      if (self->_isDroppingFavorites)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (intValue != [(WebBookmarkCollection *)self->_bookmarkCollection readingListFolderBookmarkID])
      {
LABEL_8:
        [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
        goto LABEL_9;
      }

      p_favoritesList = &self->_readingList;
    }

    v7 = *p_favoritesList;
    *p_favoritesList = 0;

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_bookmarksDidReload:(id)reload
{
  mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
  self->_webFilterUsesOnlyAllowedSites = [mEMORY[0x277D7B590] usesAllowedSitesOnly];

  favoritesList = self->_favoritesList;
  self->_favoritesList = 0;

  readingList = self->_readingList;
  self->_readingList = 0;

  viewController = self->_viewController;

  [(SFStartPageViewController *)viewController reloadDataAnimatingDifferences:1];
}

- (void)_frequentlyVisitedSitesDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  enabledSectionIdentifiers = [(WBSStartPageSectionManager *)self->_startPageSectionManager enabledSectionIdentifiers];
  v5 = [enabledSectionIdentifiers containsObject:*MEMORY[0x277D4A518]];

  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    suggestionsDataSourceSections = [(WBSStartPageSectionManager *)self->_startPageSectionManager suggestionsDataSourceSections];
    v7 = [suggestionsDataSourceSections countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      v9 = *MEMORY[0x277D4A4B8];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(suggestionsDataSourceSections);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          identifier = [v11 identifier];
          if ([identifier isEqualToString:v9])
          {
            isEnabled = [v11 isEnabled];

            if (isEnabled)
            {

              suggestionsDataSourceSections = [MEMORY[0x277D499B8] sharedLogger];
              frequentlyVisitedSitesController = [(StartPageController *)self frequentlyVisitedSitesController];
              frequentlyVisitedSites = [frequentlyVisitedSitesController frequentlyVisitedSites];
              [suggestionsDataSourceSections didRetrieveNumberOfFrequentlyVisitedSites:{objc_msgSend(frequentlyVisitedSites, "count")}];

              goto LABEL_13;
            }
          }

          else
          {
          }
        }

        v7 = [suggestionsDataSourceSections countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

LABEL_13:
  }
}

- (void)_readingListBookmarkMetadataDidUpdate:(id)update
{
  userInfo = [update userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"BookmarkWithUpdatedMetadataKey"];

  if (v10)
  {
    v5 = [(NSMutableDictionary *)self->_readingListBookmarksToMetadataStates objectForKeyedSubscript:v10];
    integerValue = [v5 integerValue];

    if (integerValue == 1)
    {
      [(NSMutableDictionary *)self->_readingListBookmarksToMetadataStates setObject:&unk_2827FC2E0 forKeyedSubscript:v10];
      readingListIconUUID = [v10 readingListIconUUID];
      if ([readingListIconUUID length])
      {
      }

      else
      {
        iconData = [v10 iconData];

        if (!iconData)
        {
          goto LABEL_7;
        }
      }

      readingList = self->_readingList;
      self->_readingList = 0;

      [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
    }
  }

LABEL_7:
}

void __44__StartPageController__privacyReportSection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentPrivacyReport];

  v2 = [MEMORY[0x277D499B8] sharedLogger];
  [v2 didEngageWithStartPageSection:3];
}

void __47__StartPageController__updatePrivacyReportData__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__StartPageController__updatePrivacyReportData__block_invoke_2;
  block[3] = &unk_2781D6840;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __47__StartPageController__updatePrivacyReportData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _privacyReportDataDidChange];
}

void __47__StartPageController__updatePrivacyReportData__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__StartPageController__updatePrivacyReportData__block_invoke_4;
  block[3] = &unk_2781D6840;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __47__StartPageController__updatePrivacyReportData__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _privacyReportDataDidChange];
}

- (void)_historyWasAltered
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__StartPageController__historyWasAltered__block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_historyWasCleared:(id)cleared
{
  object = [cleared object];
  v5 = MEMORY[0x277D4A7C0];
  v6 = MEMORY[0x277CBEB98];
  profileLocalIdentifier = [object profileLocalIdentifier];
  v8 = [v6 setWithObject:profileLocalIdentifier];
  [v5 clearCachedDataForProfilesWithIdentifiers:v8];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__StartPageController__historyWasCleared___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __42__StartPageController__historyWasCleared___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 136) = 0;
  [*(a1 + 32) _reloadPrivacyReportSection];
  v2 = *(*(a1 + 32) + 360);

  return [v2 reloadDataAnimatingDifferences:1];
}

- (void)setShowingAsPopover:(BOOL)popover
{
  if (self->_showingAsPopover != popover)
  {
    self->_showingAsPopover = popover;
    viewController = self->_viewController;
    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];

    [(SFStartPageViewController *)viewController reloadDataAnimatingDifferences:areAnimationsEnabled];
  }
}

uint64_t __51__StartPageController_updatePrivacyReportIfEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = WBSIsEqual();

  return v3;
}

- (void)_privacyReportDataDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (([WeakRetained isPrivateBrowsingEnabled] & 1) == 0)
  {

    goto LABEL_5;
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [safari_browserDefaults safari_enableAdvancedPrivacyProtections:1];

  if (!v4)
  {
LABEL_5:
    knownTrackers = [(WBSPrivacyReportData *)self->_privacyReportData knownTrackers];
    totalBlockedTrackerCount = [knownTrackers count];

    v6 = 0;
    goto LABEL_6;
  }

  totalBlockedTrackerCount = [MEMORY[0x277D49EE8] totalBlockedTrackerCount];
  v6 = 1;
LABEL_6:
  if (totalBlockedTrackerCount != self->_cachedNumberOfTrackers)
  {
    self->_cachedNumberOfTrackers = totalBlockedTrackerCount;
    [(StartPageController *)self _reloadPrivacyReportSection];
    if ((v6 & 1) == 0)
    {
      _effectiveProfileIdentifier = [(StartPageController *)self _effectiveProfileIdentifier];
      if (_effectiveProfileIdentifier)
      {
        v12 = _effectiveProfileIdentifier;
        v8 = MEMORY[0x277D4A7C0];
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:totalBlockedTrackerCount];
        [v8 setCachedNumberOfTrackersOnStartPage:v9 forProfileWithIdentifier:v12];

        _effectiveProfileIdentifier = v12;
      }
    }
  }
}

- (void)_managedBookmarksDidChange
{
  cachedManagedBookmarksSection = self->_cachedManagedBookmarksSection;
  self->_cachedManagedBookmarksSection = 0;

  viewController = self->_viewController;

  [(SFStartPageViewController *)viewController reloadDataAnimatingDifferences:0];
}

- (void)_contentBlockerStatisticsStoreDidClose
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];

  if (isPrivateBrowsingEnabled)
  {

    [(StartPageController *)self _privacyReportDataDidChange];
  }
}

- (id)_privateRelayPromptInPrivateBrowsingSection
{
  v3 = [StartPageController _privateRelayPromptInPrivateBrowsingSection]::section;
  if (![StartPageController _privateRelayPromptInPrivateBrowsingSection]::section)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = _WBSLocalizedString();
    v6 = [v4 stringWithFormat:v5, @" "];

    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D4A828];
    v8 = [MEMORY[0x277D755B8] _systemImageNamed:@"network.badge.shield.half.filled"];
    v9 = _WBSLocalizedString();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__StartPageController__privateRelayPromptInPrivateBrowsingSection__block_invoke;
    v14[3] = &unk_2781D6840;
    objc_copyWeak(&v15, &location);
    v10 = [v7 privateRelayPromptBannerWithImage:v8 title:v9 message:v6 dismissHandler:v14];

    [v10 setUserInterfaceStyle:2];
    v11 = [MEMORY[0x277D4A838] bannerSectionWithIdentifier:*MEMORY[0x277D4A4F8] title:&stru_2827BF158 banner:v10];
    v12 = [StartPageController _privateRelayPromptInPrivateBrowsingSection]::section;
    [StartPageController _privateRelayPromptInPrivateBrowsingSection]::section = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    v3 = [StartPageController _privateRelayPromptInPrivateBrowsingSection]::section;
  }

  return v3;
}

void __66__StartPageController__privateRelayPromptInPrivateBrowsingSection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v2 setBool:1 forKey:*MEMORY[0x277D4A1B0]];

    v3 = [v4 viewController];
    [v3 reloadDataAnimatingDifferences:1];

    WeakRetained = v4;
  }
}

- (BOOL)_canShowPrivateRelaySection
{
  mEMORY[0x277D4A7B8] = [MEMORY[0x277D4A7B8] sharedManager];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  shouldPromptUsersToTurnOnPrivateRelayForSafari = [mEMORY[0x277D4A7B8] shouldPromptUsersToTurnOnPrivateRelayForSafari];
  if ([WeakRetained startPageControllerActiveTabIsBlank:self] & shouldPromptUsersToTurnOnPrivateRelayForSafari)
  {
    isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];
  }

  else
  {
    isPrivateBrowsingEnabled = 0;
  }

  return isPrivateBrowsingEnabled;
}

- (id)_recentlyClosedTabsForProfile:(id)profile
{
  profileCopy = profile;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  activeTabGroup = [tabGroupProvider activeTabGroup];

  uuid = [activeTabGroup uuid];
  mEMORY[0x277D28F00] = [MEMORY[0x277D28F00] sharedBrowserSavedState];
  identifier = [profileCopy identifier];
  v11 = [mEMORY[0x277D28F00] recentlyClosedTabsForProfileWithIdentifier:identifier];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__StartPageController__recentlyClosedTabsForProfile___block_invoke;
  v15[3] = &unk_2781DCB30;
  v12 = uuid;
  v16 = v12;
  v13 = [v11 safari_mapAndFilterObjectsUsingBlock:v15];

  return v13;
}

id __53__StartPageController__recentlyClosedTabsForProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 tabGroupUUID];
  if (([v4 isEqual:v5] & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = MEMORY[0x277CBEBC0];
  v7 = [v3 url];
  v8 = [v6 URLWithString:v7];
  if (([v8 safari_isHTTPFamilyURL] & 1) == 0)
  {

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v9 = [v3 title];
  v10 = [v9 length];

  if (v10)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v3 = 0;
  }

LABEL_11:

  return v11;
}

void __49__StartPageController__recentlyClosedTabsSection__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 44);
    v4 = [v3 tabGroupProvider];
    v5 = [v4 activeProfile];
    v6 = [v2 _recentlyClosedTabsForProfile:v5];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          v12 = [MEMORY[0x277D28F00] sharedBrowserSavedState];
          [v12 removeRecentlyClosedTabWithStateData:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v2[45] reloadDataAnimatingDifferences:1];
  }
}

void __49__StartPageController__recentlyClosedTabsSection__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = [a3 title];
  [v5 setTitle:v4];
}

id __49__StartPageController__recentlyClosedTabsSection__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D753B0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_4;
  v12[3] = &unk_2781DCB78;
  objc_copyWeak(&v14, (a1 + 32));
  v5 = v3;
  v13 = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_5;
  v9[3] = &unk_2781DCA50;
  objc_copyWeak(&v11, (a1 + 32));
  v10 = v5;
  v6 = v5;
  v7 = [v4 configurationWithIdentifier:0 previewProvider:v12 actionProvider:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v14);

  return v7;
}

id __49__StartPageController__recentlyClosedTabsSection__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
    v4 = MEMORY[0x277CBEBC0];
    v5 = [*(a1 + 32) url];
    v6 = [v4 URLWithString:v5];
    v7 = [v3 navigationIntentWithURL:v6];

    v8 = objc_loadWeakRetained(WeakRetained + 44);
    v9 = [v8 linkPreviewViewControllerForNavigationIntent:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __49__StartPageController__recentlyClosedTabsSection__block_invoke_5(uint64_t a1)
{
  v60[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v39 = WeakRetained;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_6;
    aBlock[3] = &unk_2781DCBA0;
    objc_copyWeak(&v57, (a1 + 40));
    v56 = *(a1 + 32);
    v36 = _Block_copy(aBlock);
    v3 = objc_loadWeakRetained(v39 + 44);
    v38 = [v3 tabGroupProvider];

    v4 = MEMORY[0x277D750C8];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_7;
    v53[3] = &unk_2781D6330;
    v5 = v36;
    v54 = v5;
    v6 = [v4 _sf_openInNewTabActionWithHandler:v53];
    v60[0] = v6;
    v7 = MEMORY[0x277CBEBC0];
    v8 = [*(a1 + 32) url];
    v9 = [v7 URLWithString:v8];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_8;
    v51[3] = &unk_2781D6380;
    v34 = v5;
    v52 = v34;
    v10 = [v38 openInTabGroupMenuWithNewTabGroupName:0 URL:v9 descendantCount:0 handler:v51];
    v60[1] = v10;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];

    v11 = MEMORY[0x277D750C8];
    v40 = _WBSLocalizedString();
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"eyeglasses"];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_9;
    v49[3] = &unk_2781D6908;
    v50 = *(a1 + 32);
    v35 = v12;
    v13 = [v11 actionWithTitle:v40 image:v12 identifier:0 handler:v49];
    v59[0] = v13;
    v14 = MEMORY[0x277D750C8];
    v15 = _WBSLocalizedString();
    v16 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_10;
    v47[3] = &unk_2781D6908;
    v48 = *(a1 + 32);
    v17 = [v14 actionWithTitle:v15 image:v16 identifier:0 handler:v47];
    v59[1] = v17;
    v18 = MEMORY[0x277D750C8];
    v19 = _WBSLocalizedString();
    v20 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_11;
    v44[3] = &unk_2781DA9F8;
    objc_copyWeak(&v46, (a1 + 40));
    v45 = *(a1 + 32);
    v21 = [v18 actionWithTitle:v19 image:v20 identifier:0 handler:v44];
    v59[2] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];

    v23 = MEMORY[0x277D750C8];
    v24 = _WBSLocalizedString();
    v25 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_12;
    v41[3] = &unk_2781DA9F8;
    objc_copyWeak(&v43, (a1 + 40));
    v42 = *(a1 + 32);
    v26 = [v23 actionWithTitle:v24 image:v25 identifier:0 handler:v41];

    [v26 setAttributes:2];
    v27 = [v22 arrayByAddingObject:v26];

    v28 = MEMORY[0x277D75710];
    v29 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v37];
    v58[0] = v29;
    v30 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v27];
    v58[1] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
    v32 = [v28 menuWithTitle:&stru_2827BF158 children:v31];

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v46);

    objc_destroyWeak(&v57);
    WeakRetained = v39;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

void __49__StartPageController__recentlyClosedTabsSection__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v7 = objc_loadWeakRetained(WeakRetained + 44);
    v8 = [MEMORY[0x277D28F40] builder];
    [v8 setPreferredTabOrder:a2];
    [v8 setPrefersOpenInNewTab:a3];
    v9 = MEMORY[0x277CBEBC0];
    v10 = [*(a1 + 32) url];
    v11 = [v9 URLWithString:v10];
    v12 = [v8 navigationIntentWithURL:v11];

    [v7 handleNavigationIntent:v12 completion:0];
    if ([v12 shouldOrderToForeground] && (a3 & 1) == 0)
    {
      v13 = [v7 tabGroupProvider];
      [v13 removeSingleBlankTabFromActiveTabGroup];
    }

    [v14[45] reloadDataAnimatingDifferences:1];

    WeakRetained = v14;
  }
}

void __49__StartPageController__recentlyClosedTabsSection__block_invoke_9(uint64_t a1)
{
  v6 = [MEMORY[0x277CDB710] defaultReadingList];
  v2 = MEMORY[0x277CBEBC0];
  v3 = [*(a1 + 32) url];
  v4 = [v2 URLWithString:v3];
  v5 = [*(a1 + 32) title];
  [v6 addReadingListItemWithURL:v4 title:v5 previewText:0 error:0];
}

void __49__StartPageController__recentlyClosedTabsSection__block_invoke_10(uint64_t a1)
{
  v1 = MEMORY[0x277CBEBC0];
  v4 = [*(a1 + 32) url];
  v2 = [v1 URLWithString:?];
  v3 = [MEMORY[0x277D75810] generalPasteboard];
  [v3 setURL:v2];
}

void __49__StartPageController__recentlyClosedTabsSection__block_invoke_11(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277D546D8]);
    v4 = [*(a1 + 32) url];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    v6 = [v3 initWithActivityItems:v5 applicationActivities:0];

    [WeakRetained[45] presentViewController:v6 fromItemWithIdentifier:*(a1 + 32)];
  }
}

void __49__StartPageController__recentlyClosedTabsSection__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277D28F00] sharedBrowserSavedState];
    [v2 removeRecentlyClosedTabWithStateData:*(a1 + 32)];

    [WeakRetained[45] reloadDataAnimatingDifferences:1];
  }
}

void __49__StartPageController__recentlyClosedTabsSection__block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  [v5 setPreferredCommitStyle:1];
  v6 = [v5 previewViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__StartPageController__recentlyClosedTabsSection__block_invoke_14;
  v8[3] = &unk_2781D6BD8;
  objc_copyWeak(&v10, (a1 + 32));
  v9 = v6;
  v7 = v6;
  [v5 addAnimations:v8];

  objc_destroyWeak(&v10);
}

void __49__StartPageController__recentlyClosedTabsSection__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 44);
    [v3 commitLinkPreviewViewController:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void __49__StartPageController__recentlyClosedTabsSection__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 44);
    [v2 linkPreviewProviderWillDismissPreview];

    WeakRetained = v3;
  }
}

id __49__StartPageController__recentlyClosedTabsSection__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277CCAA88];
  v4 = MEMORY[0x277CBEBC0];
  v5 = [v2 url];
  v6 = [v4 safari_URLWithDataAsString:v5];
  v7 = [v2 title];
  v8 = [v3 itemProviderWithURL:v6 title:v7];

  v9 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v8];

  return v9;
}

- (id)_cloudTabDevices
{
  _cloudTabStore = [(StartPageController *)self _cloudTabStore];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
  v6 = [_cloudTabStore syncedRemoteCloudTabDevicesForProfileWithIdentifier:activeProfileIdentifier];

  return v6;
}

uint64_t __40__StartPageController_cloudTabsSections__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(*(a1 + 32) + 376)];

  return v4;
}

id __40__StartPageController_cloudTabsSections__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _recentCloudTabsSectionWithDevice:a2];

  return v2;
}

id __40__StartPageController_cloudTabsSections__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _cloudTabsSectionWithDevice:a2];

  return v2;
}

void __40__StartPageController_cloudTabsSections__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 44);
    [v2 presentCloudTabsPickerWithPrimaryDeviceUUID:0];

    WeakRetained = v3;
  }
}

- (id)_cloudTabsConsentSection
{
  v3 = MEMORY[0x277D4A828];
  v4 = _WBSLocalizedString();
  _cloudTabsConsentMessage = [(StartPageController *)self _cloudTabsConsentMessage];
  v6 = _WBSLocalizedString();
  v7 = _WBSLocalizedString();
  v16[4] = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__StartPageController__cloudTabsConsentSection__block_invoke;
  v17[3] = &unk_2781D60B8;
  v17[4] = self;
  v15[4] = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__StartPageController__cloudTabsConsentSection__block_invoke_2;
  v16[3] = &unk_2781D60B8;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__StartPageController__cloudTabsConsentSection__block_invoke_3;
  v15[3] = &unk_2781DCC88;
  v8 = [v3 bannerWithTitle:v4 attributedMessage:_cloudTabsConsentMessage primaryButtonTitle:v6 secondaryButtonTitle:v7 primaryButtonHandler:v17 secondaryButtonHandler:v16 messageTextItemHandler:v15];

  v9 = MEMORY[0x277D4A838];
  v10 = *MEMORY[0x277D4A4A8];
  libraryType = self->_libraryType;
  if (libraryType == @"CloudTabsCollection")
  {
    v12 = &stru_2827BF158;
  }

  else
  {
    v12 = WBSStartPageSectionIdentifierTitle();
  }

  v13 = [v9 bannerSectionWithIdentifier:v10 title:v12 banner:v8];
  if (libraryType != @"CloudTabsCollection")
  {
  }

  return v13;
}

id __47__StartPageController__cloudTabsConsentSection__block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__StartPageController__cloudTabsConsentSection__block_invoke_4;
  v3[3] = &unk_2781D6908;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x277D750C8] actionWithHandler:v3];

  return v1;
}

void __47__StartPageController__cloudTabsConsentSection__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getOBPrivacyPresenterClass(void)::softClass;
  v12 = getOBPrivacyPresenterClass(void)::softClass;
  if (!getOBPrivacyPresenterClass(void)::softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZL26getOBPrivacyPresenterClassv_block_invoke;
    v8[3] = &unk_2781D60E0;
    v8[4] = &v9;
    ___ZL26getOBPrivacyPresenterClassv_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [v4 presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.safari"];
  v7 = [*(a1 + 32) viewController];
  [v6 setPresentingViewController:v7];

  [v6 present];
}

- (id)_cloudTabsConsentMessage
{
  v21[3] = *MEMORY[0x277D85DE8];
  v2 = _WBSLocalizedString();
  v3 = objc_alloc_init(MEMORY[0x277D74240]);
  [v3 setAlignment:1];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v6 = objc_alloc(MEMORY[0x277CCAB48]);
  v7 = *MEMORY[0x277D740A8];
  v20[0] = *MEMORY[0x277D74118];
  v20[1] = v7;
  v21[0] = v3;
  v21[1] = v4;
  v20[2] = *MEMORY[0x277D740C0];
  v21[2] = secondaryLabelColor;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v9 = [v6 initWithString:v2 attributes:v8];

  string = [v9 string];
  v11 = [string rangeOfString:@"{about-safari-privacy-link}"];
  v13 = v12;

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x277CBEBC0] URLWithString:@"about-safari-privacy://"];
    v18 = *MEMORY[0x277D740E8];
    v19 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v9 addAttributes:v15 range:{v11, v13}];

    v16 = _WBSLocalizedString();
    [v9 replaceCharactersInRange:v11 withString:{v13, v16}];
  }

  return v9;
}

- (void)_cloudTabsConsentSelected
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults safari_setBool:1 andNotifyForKey:*MEMORY[0x277D4A160]];

  [(StartPageController *)self _updateRecentCloudTabsSection];
  recentsStore = self->_recentsStore;

  [(WBSRecentsStore *)recentsStore fetchMetadata];
}

- (void)_hideCloudTabsSection
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = +[Application sharedApplication];
  tabGroupManager = [v2 tabGroupManager];
  profiles = [tabGroupManager profiles];

  v5 = [profiles countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    v7 = *MEMORY[0x277D4A4A8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(profiles);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 isDefault])
        {
          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
        }

        else
        {
          v11 = objc_alloc(MEMORY[0x277D4A7E0]);
          identifier = [v9 identifier];
          v13 = +[Application sharedApplication];
          tabGroupManager2 = [v13 tabGroupManager];
          standardUserDefaults = [v11 initWithProfileIdentifier:identifier tabGroupManager:tabGroupManager2];
        }

        v15 = [objc_alloc(MEMORY[0x277D4A080]) initWithStorage:standardUserDefaults];
        [v15 setSectionIdentifier:v7 enabled:0];
      }

      v5 = [profiles countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

void __46__StartPageController__recentCloudTabsSection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  v5 = [v4 metadata];
  [v8 setMetadata:v5];

  v6 = [v4 deviceLocationDescription];
  v7 = [v4 icon];
  [v8 setCaptionText:v6 icon:v7];
}

- (id)_recentCloudTabsSectionWithDevice:(id)device
{
  deviceCopy = device;
  v5 = self->_availableDevices;
  if ([(NSArray *)v5 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v7 = [(StartPageController *)self _recentItemsForDevice:deviceCopy];
    if ([(NSString *)self->_searchPattern length])
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57__StartPageController__recentCloudTabsSectionWithDevice___block_invoke;
      v20[3] = &unk_2781DCCD0;
      v21 = WeakRetained;
      selfCopy = self;
      v8 = [v7 safari_filterObjectsUsingBlock:v20];

      v7 = v8;
    }

    if ([v7 count])
    {
      v9 = MEMORY[0x277CCACA8];
      uuid = [deviceCopy uuid];
      v11 = [v9 stringWithFormat:@"%@-%@", *MEMORY[0x277D4A4A8], uuid];

      v12 = MEMORY[0x277D4A838];
      disambiguatedName = [deviceCopy disambiguatedName];
      v14 = [v12 cardSectionWithIdentifier:v11 title:disambiguatedName actions:MEMORY[0x277CBEBF8] banner:0 identifiers:v7 configurationProvider:&__block_literal_global_262];

      [v14 setNumberOfRowsVisibleWhenCollapsed:{-[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](self->_visualStyleProvider, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 3, 0)}];
      [v14 setExpandsModally:1];
      _contextMenuConfigurationForRecentCloudTab = [(StartPageController *)self _contextMenuConfigurationForRecentCloudTab];
      [v14 setContextMenuProvider:_contextMenuConfigurationForRecentCloudTab];

      _cloudTabsContextMenuCommitHandler = [(StartPageController *)self _cloudTabsContextMenuCommitHandler];
      [v14 setContextMenuCommitHandler:_cloudTabsContextMenuCommitHandler];

      _cloudTabsContextMenuDismissHandler = [(StartPageController *)self _cloudTabsContextMenuDismissHandler];
      [v14 setContextMenuDismissHandler:_cloudTabsContextMenuDismissHandler];

      _cloudTabsDragItemProvider = [(StartPageController *)self _cloudTabsDragItemProvider];
      [v14 setDragItemProvider:_cloudTabsDragItemProvider];

      if (!self->_libraryType)
      {
        [(StartPageController *)self _setProfileIconOnSectionIfNeeded:v14];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __57__StartPageController__recentCloudTabsSectionWithDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 cloudTab];
  v5 = [v3 tabItem:v4 matchesSearchText:*(*(a1 + 40) + 152)];

  return v5;
}

void __57__StartPageController__recentCloudTabsSectionWithDevice___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  v5 = [v4 metadata];
  [v8 setMetadata:v5];

  v6 = [v4 deviceLocationDescription];
  v7 = [v4 icon];
  [v8 setCaptionText:v6 icon:v7];
}

- (id)_cloudTabsSectionWithDevice:(id)device
{
  v38[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  _cloudTabDevices = [(StartPageController *)self _cloudTabDevices];
  if ([_cloudTabDevices count])
  {
    if (self->_libraryType)
    {
      disambiguatedName = [deviceCopy disambiguatedName];
    }

    else
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = _WBSLocalizedString();
      disambiguatedName2 = [deviceCopy disambiguatedName];
      disambiguatedName = [v7 stringWithFormat:v8, disambiguatedName2];
    }

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    tabs = [deviceCopy tabs];
    reverseObjectEnumerator = [tabs reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    if ([(NSString *)self->_searchPattern length])
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __51__StartPageController__cloudTabsSectionWithDevice___block_invoke;
      v35[3] = &unk_2781DCCF8;
      v36 = WeakRetained;
      selfCopy = self;
      v14 = [allObjects safari_filterObjectsUsingBlock:v35];

      allObjects = v14;
    }

    if ([allObjects count])
    {
      canShowSidebar = [WeakRetained canShowSidebar];
      v16 = MEMORY[0x277D4A4A8];
      if (canShowSidebar && !self->_libraryType)
      {
        v19 = *MEMORY[0x277D4A4A8];
      }

      else
      {
        v17 = MEMORY[0x277CCACA8];
        uuid = [deviceCopy uuid];
        v19 = [v17 stringWithFormat:@"%@-%@", *v16, uuid];
      }

      if (self->_libraryType)
      {
        v20 = MEMORY[0x277CBEBF8];
      }

      else
      {
        toggleSectionExpandedAction = [MEMORY[0x277D4A6E8] toggleSectionExpandedAction];
        v38[0] = toggleSectionExpandedAction;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
      }

      v22 = [MEMORY[0x277D4A838] listSectionWithIdentifier:v19 title:disambiguatedName actions:v20 banner:0 identifiers:allObjects configurationProvider:&__block_literal_global_272_0];
      v6 = v22;
      if (canShowSidebar)
      {
        v23 = 8;
      }

      else
      {
        v23 = 4;
      }

      [v22 setNumberOfRowsVisibleWhenCollapsed:v23];
      [v6 setExpandsModally:canShowSidebar ^ 1u];
      v24 = [(StartPageController *)self _contextMenuConfigurationForCloudTabWithSelectedDevice:deviceCopy];
      [v6 setContextMenuProvider:v24];

      _cloudTabsContextMenuCommitHandler = [(StartPageController *)self _cloudTabsContextMenuCommitHandler];
      [v6 setContextMenuCommitHandler:_cloudTabsContextMenuCommitHandler];

      _cloudTabsContextMenuDismissHandler = [(StartPageController *)self _cloudTabsContextMenuDismissHandler];
      [v6 setContextMenuDismissHandler:_cloudTabsContextMenuDismissHandler];

      _cloudTabsDragItemProvider = [(StartPageController *)self _cloudTabsDragItemProvider];
      [v6 setDragItemProvider:_cloudTabsDragItemProvider];

      if (!self->_libraryType)
      {
        [(StartPageController *)self _setProfileIconOnSectionIfNeeded:v6];
      }

      if (canShowSidebar && !self->_libraryType && [_cloudTabDevices count] >= 2)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __51__StartPageController__cloudTabsSectionWithDevice___block_invoke_3;
        v32[3] = &unk_2781DCD68;
        v33 = deviceCopy;
        selfCopy2 = self;
        v28 = [_cloudTabDevices safari_mapAndFilterObjectsUsingBlock:v32];
        v29 = [MEMORY[0x277D75710] menuWithChildren:v28];
        [v6 setTitleMenu:v29];
      }
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

  return v6;
}

void __51__StartPageController__cloudTabsSectionWithDevice___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = [a3 title];
  [v5 setTitle:v4];
}

id __51__StartPageController__cloudTabsSectionWithDevice___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = MEMORY[0x277D750C8];
  if (*(a1 + 32) == v3)
  {
    v8 = [v3 disambiguatedName];
    v7 = [v5 actionWithTitle:v8 image:0 identifier:0 handler:&__block_literal_global_274];

    [v7 setState:1];
  }

  else
  {
    v6 = [v3 disambiguatedName];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__StartPageController__cloudTabsSectionWithDevice___block_invoke_5;
    v10[3] = &unk_2781D68E0;
    v10[4] = *(a1 + 40);
    v11 = v4;
    v7 = [v5 actionWithTitle:v6 image:0 identifier:0 handler:v10];
  }

  return v7;
}

void __51__StartPageController__cloudTabsSectionWithDevice___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = *MEMORY[0x277D290B8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__StartPageController__cloudTabsSectionWithDevice___block_invoke_6;
  v5[3] = &unk_2781DCD40;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 safari_modifyDictionaryForKey:v3 block:v5];
}

void __51__StartPageController__cloudTabsSectionWithDevice___block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 40) uuid];
  v4 = [*(a1 + 32) _lastCloudDeviceProfileKey];
  [v5 setObject:v3 forKeyedSubscript:v4];
}

- (id)_cloudTabsContextMenuDismissHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__StartPageController__cloudTabsContextMenuDismissHandler__block_invoke;
  v4[3] = &unk_2781DCAC8;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __58__StartPageController__cloudTabsContextMenuDismissHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 44);
    [v2 linkPreviewProviderWillDismissPreview];

    WeakRetained = v3;
  }
}

- (id)_cloudTabsDragItemProvider
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__StartPageController__cloudTabsDragItemProvider__block_invoke;
  aBlock[3] = &unk_2781DCD90;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __49__StartPageController__cloudTabsDragItemProvider__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _cloudTabItemForIdentifier:a2];
  v3 = MEMORY[0x277CCAA88];
  v4 = [v2 url];
  v5 = [v2 title];
  v6 = [v3 itemProviderWithURL:v4 title:v5];

  v7 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v6];

  return v7;
}

- (id)_cloudTabsContextMenuCommitHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__StartPageController__cloudTabsContextMenuCommitHandler__block_invoke;
  v4[3] = &unk_2781DCDB8;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __57__StartPageController__cloudTabsContextMenuCommitHandler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  [v5 setPreferredCommitStyle:1];
  v6 = [v5 previewViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__StartPageController__cloudTabsContextMenuCommitHandler__block_invoke_2;
  v8[3] = &unk_2781D6BD8;
  objc_copyWeak(&v10, (a1 + 32));
  v9 = v6;
  v7 = v6;
  [v5 addAnimations:v8];

  objc_destroyWeak(&v10);
}

void __57__StartPageController__cloudTabsContextMenuCommitHandler__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 44);
    [v3 commitLinkPreviewViewController:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (id)_cloudTabItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([MEMORY[0x277D49A08] is2024SuggestionsEnabled])
  {
    cloudTab = [identifierCopy cloudTab];

    identifierCopy = cloudTab;
  }

  return identifierCopy;
}

- (id)_cloudTabDeviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([MEMORY[0x277D49A08] is2024SuggestionsEnabled])
  {
    device = [identifierCopy device];

    identifierCopy = device;
  }

  return identifierCopy;
}

- (id)_contextMenuConfigurationForCloudTabWithSelectedDevice:(id)device
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke;
  aBlock[3] = &unk_2781DCE58;
  aBlock[4] = self;
  objc_copyWeak(&v7, &location);
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

id __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _cloudTabItemForIdentifier:v3];
  v5 = [*(a1 + 32) _cloudTabDeviceForIdentifier:v3];
  v6 = MEMORY[0x277D753B0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_2;
  v18[3] = &unk_2781DCB78;
  objc_copyWeak(&v20, (a1 + 40));
  v7 = v4;
  v19 = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_3;
  v13[3] = &unk_2781DCE30;
  objc_copyWeak(&v17, (a1 + 40));
  v8 = v7;
  v14 = v8;
  v9 = v3;
  v15 = v9;
  v16 = v5;
  v10 = v5;
  v11 = [v6 configurationWithIdentifier:0 previewProvider:v18 actionProvider:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);

  return v11;
}

id __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
    v4 = [v3 navigationIntentWithCloudTab:*(a1 + 32)];

    v5 = objc_loadWeakRetained(WeakRetained + 44);
    v6 = [v5 linkPreviewViewControllerForNavigationIntent:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_3(id *a1)
{
  v58[2] = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_4;
  aBlock[3] = &unk_2781DCDE0;
  objc_copyWeak(&v55, a1 + 7);
  v54 = a1[4];
  v35 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v36 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 44);
    v34 = [v3 tabGroupProvider];

    v4 = MEMORY[0x277D750C8];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_5;
    v51[3] = &unk_2781D6330;
    v5 = v35;
    v52 = v5;
    v6 = [v4 _sf_openInNewTabActionWithHandler:v51];
    v58[0] = v6;
    v7 = [a1[4] url];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_6;
    v49[3] = &unk_2781D6380;
    v50 = v5;
    v8 = [v34 openInTabGroupMenuWithNewTabGroupName:0 URL:v7 descendantCount:0 handler:v49];
    v58[1] = v8;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];

    v9 = MEMORY[0x277D750C8];
    v32 = _WBSLocalizedString();
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"eyeglasses"];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_7;
    v47[3] = &unk_2781D6908;
    v48 = a1[4];
    v11 = [v9 actionWithTitle:v32 image:v10 identifier:0 handler:v47];
    v57[0] = v11;
    v12 = MEMORY[0x277D750C8];
    v13 = _WBSLocalizedString();
    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_8;
    v45[3] = &unk_2781D6908;
    v46 = a1[4];
    v15 = [v12 actionWithTitle:v13 image:v14 identifier:0 handler:v45];
    v57[1] = v15;
    v16 = MEMORY[0x277D750C8];
    v17 = _WBSLocalizedString();
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_9;
    v41[3] = &unk_2781DCE08;
    objc_copyWeak(&v44, a1 + 7);
    v42 = a1[4];
    v43 = a1[5];
    v19 = [v16 actionWithTitle:v17 image:v18 identifier:0 handler:v41];
    v57[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];

    if ([a1[6] isCloseRequestSupported])
    {
      v21 = MEMORY[0x277D750C8];
      v22 = _WBSLocalizedString();
      v23 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_10;
      v37[3] = &unk_2781DCE08;
      objc_copyWeak(&v40, a1 + 7);
      v38 = a1[4];
      v39 = a1[6];
      v24 = [v21 actionWithTitle:v22 image:v23 identifier:0 handler:v37];

      [v24 setAttributes:2];
      v25 = [v20 arrayByAddingObject:v24];

      objc_destroyWeak(&v40);
      v20 = v25;
    }

    v26 = MEMORY[0x277D75710];
    v27 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v33];
    v56[0] = v27;
    v28 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v20];
    v56[1] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v30 = [v26 menuWithTitle:&stru_2827BF158 children:v29];

    objc_destroyWeak(&v44);
  }

  else
  {
    v30 = 0;
  }

  objc_destroyWeak(&v55);

  return v30;
}

void __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v5 = objc_loadWeakRetained(WeakRetained + 44);
    v6 = [MEMORY[0x277D28F40] builder];
    [v6 setPrefersOpenInNewTab:1];
    [v6 setPreferredTabOrder:a2];
    v7 = [v6 navigationIntentWithCloudTab:*(a1 + 32)];
    [v5 handleNavigationIntent:v7 completion:0];
    if ([v7 shouldOrderToForeground])
    {
      v8 = [v5 tabGroupProvider];
      [v8 removeSingleBlankTabFromActiveTabGroup];
    }

    WeakRetained = v9;
  }
}

void __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_7(uint64_t a1)
{
  v4 = [MEMORY[0x277CDB710] defaultReadingList];
  v2 = [*(a1 + 32) url];
  v3 = [*(a1 + 32) title];
  [v4 addReadingListItemWithURL:v2 title:v3 previewText:0 error:0];
}

void __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) url];
  v1 = [MEMORY[0x277D75810] generalPasteboard];
  [v1 setURL:v2];
}

void __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_9(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277D546D8]);
    v4 = [*(a1 + 32) url];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    v6 = [v3 initWithActivityItems:v5 applicationActivities:0];

    [WeakRetained[45] presentViewController:v6 fromItemWithIdentifier:*(a1 + 40)];
  }
}

void __78__StartPageController__contextMenuConfigurationForCloudTabWithSelectedDevice___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained _cloudTabStore];
    [v3 closeTab:*(a1 + 32) onDevice:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (id)_lastCloudDeviceProfileKey
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
  v4 = activeProfileIdentifier;
  if (activeProfileIdentifier)
  {
    v5 = activeProfileIdentifier;
  }

  else
  {
    v5 = &stru_2827BF158;
  }

  v6 = v5;

  return v5;
}

- (id)_selectedCloudTabsDevice
{
  _cloudTabDevices = [(StartPageController *)self _cloudTabDevices];
  if ([_cloudTabDevices count])
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v5 = *MEMORY[0x277D290B8];
    v6 = [safari_browserDefaults stringForKey:*MEMORY[0x277D290B8]];
    v7 = v6;
    if (v6)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __47__StartPageController__selectedCloudTabsDevice__block_invoke;
      v18[3] = &unk_2781DCE80;
      v19 = v6;
      [safari_browserDefaults safari_modifyDictionaryForKey:v5 block:v18];
    }

    v8 = [safari_browserDefaults dictionaryForKey:v5];
    _lastCloudDeviceProfileKey = [(StartPageController *)self _lastCloudDeviceProfileKey];
    v10 = [v8 objectForKeyedSubscript:_lastCloudDeviceProfileKey];

    if (!v10 || (v16[0] = MEMORY[0x277D85DD0], v16[1] = 3221225472, v16[2] = __47__StartPageController__selectedCloudTabsDevice__block_invoke_2, v16[3] = &unk_2781DCC38, v17 = v10, [_cloudTabDevices safari_firstObjectPassingTest:v16], v11 = objc_claimAutoreleasedReturnValue(), v17, !v11))
    {
      v12 = [_cloudTabDevices objectAtIndexedSubscript:0];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __47__StartPageController__selectedCloudTabsDevice__block_invoke_3;
      v14[3] = &unk_2781DCD40;
      v14[4] = self;
      v11 = v12;
      v15 = v11;
      [safari_browserDefaults safari_modifyDictionaryForKey:v5 block:v14];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __47__StartPageController__selectedCloudTabsDevice__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void __47__StartPageController__selectedCloudTabsDevice__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 40) uuid];
  v4 = [*(a1 + 32) _lastCloudDeviceProfileKey];
  [v5 setObject:v3 forKeyedSubscript:v4];
}

- (void)_suggestionsDidChange:(id)change
{
  if ([MEMORY[0x277D49A08] is2024SuggestionsEnabled])
  {
    if ([(NSMapTable *)self->_suggestionProxiesToMetadataTokens count])
    {
      mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
      objectEnumerator = [(NSMapTable *)self->_suggestionProxiesToMetadataTokens objectEnumerator];
      allObjects = [objectEnumerator allObjects];
      [mEMORY[0x277D28F58] cancelRequestsWithTokens:allObjects];

      [(NSMapTable *)self->_suggestionProxiesToMetadataTokens removeAllObjects];
    }

    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      viewController = self->_viewController;

      [(SFStartPageViewController *)viewController reloadDataAnimatingDifferences:1];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__StartPageController__suggestionsDidChange___block_invoke;
      block[3] = &unk_2781D60B8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_cloudTabsConsentStateDidChange:(id)change
{
  if ([MEMORY[0x277D49A08] is2024CloudTabsEnabled])
  {
    [(StartPageController *)self _updateRecentCloudTabsSection];
    recentsStore = self->_recentsStore;

    [(WBSRecentsStore *)recentsStore fetchMetadata];
  }
}

- (void)_recentCloudTabItemsDidRebuild:(id)rebuild
{
  if ([MEMORY[0x277D49A08] is2024CloudTabsEnabled])
  {

    [(StartPageController *)self _updateRecentCloudTabsSection];
  }
}

- (void)_recentCloudTabItemsDidReceiveMetadata:(id)metadata
{
  if ([MEMORY[0x277D49A08] is2024CloudTabsEnabled])
  {
    objc_initWeak(&location, self);
    [(NSTimer *)self->_coalescedRecentCloudTabsSectionUpdateTimer invalidate];
    v4 = MEMORY[0x277CBEBB8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__StartPageController__recentCloudTabItemsDidReceiveMetadata___block_invoke;
    v7[3] = &unk_2781DA668;
    objc_copyWeak(&v8, &location);
    v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:1.0];
    coalescedRecentCloudTabsSectionUpdateTimer = self->_coalescedRecentCloudTabsSectionUpdateTimer;
    self->_coalescedRecentCloudTabsSectionUpdateTimer = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __62__StartPageController__recentCloudTabItemsDidReceiveMetadata___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRecentCloudTabsSection];
}

- (id)_recentItemsForDevice:(id)device
{
  deviceCopy = device;
  uuid = [deviceCopy uuid];
  if (uuid)
  {
    recentItemsByDeviceUUID = self->_recentItemsByDeviceUUID;
    if (!recentItemsByDeviceUUID)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v8 = self->_recentItemsByDeviceUUID;
      self->_recentItemsByDeviceUUID = dictionary;

      recentItemsByDeviceUUID = self->_recentItemsByDeviceUUID;
    }

    v9 = [(NSMutableDictionary *)recentItemsByDeviceUUID objectForKeyedSubscript:uuid];
    if (!v9)
    {
      recentItems = self->_recentItems;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __45__StartPageController__recentItemsForDevice___block_invoke;
      v14[3] = &unk_2781DCEA8;
      v11 = uuid;
      v15 = v11;
      v12 = [(NSArray *)recentItems safari_filterObjectsUsingBlock:v14];
      [(NSMutableDictionary *)self->_recentItemsByDeviceUUID setObject:v12 forKeyedSubscript:v11];

      v9 = [(NSMutableDictionary *)self->_recentItemsByDeviceUUID objectForKeyedSubscript:v11];
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

uint64_t __45__StartPageController__recentItemsForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 uuid];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_cloudTabsDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__StartPageController__cloudTabsDidChange___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_siriSuggestionsSection
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D49A08] is2024SuggestionsEnabled] & 1) != 0 || !-[NSArray count](self->_siriSuggestions, "count"))
  {
    v7 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277D4A838];
    toggleSectionExpandedAction = [MEMORY[0x277D4A6E8] toggleSectionExpandedAction];
    v18[0] = toggleSectionExpandedAction;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    siriSuggestions = self->_siriSuggestions;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__StartPageController__siriSuggestionsSection__block_invoke;
    v15[3] = &unk_2781DCED0;
    objc_copyWeak(&v16, &location);
    v7 = [v3 cardSectionWithIdentifier:*MEMORY[0x277D4A510] actions:v5 banner:0 identifiers:siriSuggestions configurationProvider:v15];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__StartPageController__siriSuggestionsSection__block_invoke_2;
    v13[3] = &unk_2781DCEF8;
    objc_copyWeak(&v14, &location);
    [v7 setContextMenuProvider:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__StartPageController__siriSuggestionsSection__block_invoke_7;
    v11[3] = &unk_2781DCF20;
    objc_copyWeak(&v12, &location);
    [v7 setContextMenuCommitHandler:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__StartPageController__siriSuggestionsSection__block_invoke_9;
    v9[3] = &unk_2781DCAC8;
    objc_copyWeak(&v10, &location);
    [v7 setContextMenuDismissHandler:v9];
    [v7 setDragItemProvider:&__block_literal_global_291];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __46__StartPageController__siriSuggestionsSection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v5 appIcon];
    [v16 setBadge:v7];

    [WeakRetained _setLeadImageForCard:v16 withRecommendation:v5];
    v8 = titleForSiriSuggestion(v5);
    [v16 setTitle:v8];

    v9 = v5;
    v10 = [v9 pageURL];
    v11 = [v10 safari_highLevelDomain];

    if ([v11 length])
    {
      v12 = v11;
    }

    else
    {
      v13 = [v9 pageURL];
      v12 = [v13 absoluteString];
    }

    [v16 setSubtitle:v12];
    v14 = [v9 footnote];
    v15 = [v9 sourceIcon];
    [v16 setCaptionText:v14 icon:v15];
  }
}

id __46__StartPageController__siriSuggestionsSection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D753B0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__StartPageController__siriSuggestionsSection__block_invoke_3;
  v12[3] = &unk_2781DCB78;
  objc_copyWeak(&v14, (a1 + 32));
  v5 = v3;
  v13 = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__StartPageController__siriSuggestionsSection__block_invoke_4;
  v9[3] = &unk_2781DCA50;
  objc_copyWeak(&v11, (a1 + 32));
  v10 = v5;
  v6 = v5;
  v7 = [v4 configurationWithIdentifier:0 previewProvider:v12 actionProvider:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v14);

  return v7;
}

id __46__StartPageController__siriSuggestionsSection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
    v4 = [*(a1 + 32) pageURL];
    v5 = [v3 navigationIntentWithURL:v4];

    v6 = objc_loadWeakRetained(WeakRetained + 44);
    v7 = [v6 linkPreviewViewControllerForNavigationIntent:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __46__StartPageController__siriSuggestionsSection__block_invoke_4(uint64_t a1)
{
  v35[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = MEMORY[0x277D75710];
    v23 = [WeakRetained _openMenuElementsForSiriSuggestion:*(a1 + 32)];
    v22 = [v4 menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:?];
    v35[0] = v22;
    v5 = MEMORY[0x277D75710];
    v6 = MEMORY[0x277D750C8];
    v28 = _WBSLocalizedString();
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"eyeglasses"];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__StartPageController__siriSuggestionsSection__block_invoke_5;
    v31[3] = &unk_2781D6908;
    v32 = *(a1 + 32);
    v21 = v7;
    v25 = [v6 actionWithTitle:v28 image:v7 identifier:0 handler:v31];
    v34[0] = v25;
    v8 = MEMORY[0x277D750C8];
    v27 = _WBSLocalizedString();
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __46__StartPageController__siriSuggestionsSection__block_invoke_6;
    v29[3] = &unk_2781D6908;
    v30 = *(a1 + 32);
    v24 = v9;
    v26 = [v8 actionWithTitle:v27 image:v9 identifier:0 handler:v29];
    v34[1] = v26;
    v10 = [v3 _shareActionForSiriSuggestion:*(a1 + 32)];
    v34[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
    v12 = [v5 menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v11];
    v35[1] = v12;
    v13 = MEMORY[0x277D75710];
    v14 = [v3 _downvoteActionForSiriSuggestion:*(a1 + 32)];
    v33[0] = v14;
    v15 = [v3 _banActionForSiriSuggestion:*(a1 + 32)];
    v33[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v17 = [v13 menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v16];
    v35[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
    v19 = [v4 menuWithTitle:&stru_2827BF158 children:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __46__StartPageController__siriSuggestionsSection__block_invoke_5(uint64_t a1)
{
  v4 = [MEMORY[0x277CDB710] defaultReadingList];
  v2 = [*(a1 + 32) pageURL];
  v3 = [*(a1 + 32) title];
  [v4 addReadingListItemWithURL:v2 title:v3 previewText:0 error:0];
}

void __46__StartPageController__siriSuggestionsSection__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) pageURL];
  v1 = [MEMORY[0x277D75810] generalPasteboard];
  [v1 setURL:v2];
}

void __46__StartPageController__siriSuggestionsSection__block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setReadingListRecommendationAsReadWithRecommendation:v6];
    [v7 setPreferredCommitStyle:1];
    v10 = [v7 previewViewController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__StartPageController__siriSuggestionsSection__block_invoke_8;
    v12[3] = &unk_2781D61F8;
    v12[4] = v9;
    v13 = v10;
    v11 = v10;
    [v7 addAnimations:v12];
  }
}

void __46__StartPageController__siriSuggestionsSection__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 352));
  [WeakRetained commitLinkPreviewViewController:*(a1 + 40)];
}

void __46__StartPageController__siriSuggestionsSection__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 44);
    [v2 linkPreviewProviderWillDismissPreview];

    WeakRetained = v3;
  }
}

id __46__StartPageController__siriSuggestionsSection__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x277D75470]) _sf_initWithSiriSuggestion:v2];

  return v3;
}

- (void)_setLeadImageForCard:(id)card withRecommendation:(id)recommendation
{
  cardCopy = card;
  recommendationCopy = recommendation;
  v7 = objc_alloc(MEMORY[0x277D7B5A0]);
  v8 = titleForSiriSuggestion(recommendationCopy);
  pageURL = [recommendationCopy pageURL];
  safari_originalDataAsString = [pageURL safari_originalDataAsString];
  configuration = [(WebBookmarkCollection *)self->_bookmarkCollection configuration];
  v12 = [v7 initWithTitle:v8 address:safari_originalDataAsString collectionType:{objc_msgSend(configuration, "collectionType")}];

  [cardCopy setImageFromBookmark:v12];
  if ([recommendationCopy prefersLeadImage] && (objc_msgSend(recommendationCopy, "image"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    image = [recommendationCopy image];
    [cardCopy setImage:image];
  }

  else
  {
    imageURL = [recommendationCopy imageURL];

    if (imageURL)
    {
      [(StartPageController *)self _requestLeadImageForRecommendation:recommendationCopy];
    }
  }
}

- (void)_requestLeadImageForRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  if (!self->_siriSuggestionsMetadataTokens)
  {
    array = [MEMORY[0x277CBEB18] array];
    siriSuggestionsMetadataTokens = self->_siriSuggestionsMetadataTokens;
    self->_siriSuggestionsMetadataTokens = array;
  }

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D4A798];
  imageURL = [recommendationCopy imageURL];
  v9 = [v7 requestWithURL:imageURL];

  mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__StartPageController__requestLeadImageForRecommendation___block_invoke;
  v13[3] = &unk_2781DCF90;
  objc_copyWeak(&v15, &location);
  v11 = recommendationCopy;
  v14 = v11;
  v12 = [mEMORY[0x277D28F58] registerRequest:v9 priority:2 responseHandler:v13];

  [(NSMutableArray *)self->_siriSuggestionsMetadataTokens addObject:v12];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

void __58__StartPageController__requestLeadImageForRecommendation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 thumbnail];
    v6 = v5;
    if (v5)
    {
      v7 = WeakRetained[45];
      v8 = *(a1 + 32);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __58__StartPageController__requestLeadImageForRecommendation___block_invoke_2;
      v9[3] = &unk_2781DCF68;
      v10 = v5;
      [v7 configureModelWithIdentifier:v8 usingBlock:v9];
    }
  }
}

- (id)_openMenuElementsForSiriSuggestion:(id)suggestion
{
  v25[2] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__StartPageController__openMenuElementsForSiriSuggestion___block_invoke;
  aBlock[3] = &unk_2781DCDE0;
  objc_copyWeak(&v23, &location);
  v5 = suggestionCopy;
  v22 = v5;
  v6 = _Block_copy(aBlock);
  v7 = MEMORY[0x277D750C8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__StartPageController__openMenuElementsForSiriSuggestion___block_invoke_2;
  v19[3] = &unk_2781D6330;
  v8 = v6;
  v20 = v8;
  v9 = [v7 _sf_openInNewTabActionWithHandler:v19];
  v25[0] = v9;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  pageURL = [v5 pageURL];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__StartPageController__openMenuElementsForSiriSuggestion___block_invoke_3;
  v17[3] = &unk_2781D6380;
  v13 = v8;
  v18 = v13;
  v14 = [tabGroupProvider openInTabGroupMenuWithNewTabGroupName:0 URL:pageURL descendantCount:0 handler:v17];
  v25[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v15;
}

void __58__StartPageController__openMenuElementsForSiriSuggestion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x277D28F40] builder];
    [v4 setPrefersOpenInNewTab:1];
    [v4 setPreferredTabOrder:a2];
    v5 = [*(a1 + 32) pageURL];
    v6 = [v4 navigationIntentWithURL:v5];

    v7 = [WeakRetained dataSource];
    [v7 handleNavigationIntent:v6 completion:0];

    [WeakRetained _setReadingListRecommendationAsReadWithRecommendation:*(a1 + 32)];
    if (a2 == 1)
    {
      v8 = objc_loadWeakRetained(WeakRetained + 44);
      v9 = [v8 tabGroupProvider];
      [v9 removeSingleBlankTabFromActiveTabGroup];
    }
  }
}

- (id)_shareActionForHighlight:(id)highlight
{
  highlightCopy = highlight;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v6 = _WBSLocalizedString();
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__StartPageController__shareActionForHighlight___block_invoke;
  v11[3] = &unk_2781DA9F8;
  objc_copyWeak(&v13, &location);
  v8 = highlightCopy;
  v12 = v8;
  v9 = [v5 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __48__StartPageController__shareActionForHighlight___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277D546D8]);
    v4 = [*(a1 + 32) resourceURL];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v6 = [v3 initWithActivityItems:v5 applicationActivities:0];

    v7 = [WeakRetained viewController];
    [v7 presentViewController:v6 fromItemWithIdentifier:*(a1 + 32)];
  }
}

- (id)_shareActionForSiriSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v6 = _WBSLocalizedString();
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__StartPageController__shareActionForSiriSuggestion___block_invoke;
  v11[3] = &unk_2781DA9F8;
  objc_copyWeak(&v13, &location);
  v8 = suggestionCopy;
  v12 = v8;
  v9 = [v5 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __53__StartPageController__shareActionForSiriSuggestion___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277D546D8]);
    v4 = [*(a1 + 32) pageURL];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v6 = [v3 initWithActivityItems:v5 applicationActivities:0];

    v7 = [WeakRetained viewController];
    [v7 presentViewController:v6 fromItemWithIdentifier:*(a1 + 32)];
  }
}

- (id)_downvoteActionForSiriSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  source = [suggestionCopy source];
  v6 = WBSForYouLinkRecommendationSourceDownvoteActionTitle();
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"hand.thumbsdown"];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750C8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__StartPageController__downvoteActionForSiriSuggestion___block_invoke;
  v11[3] = &unk_2781DCFD8;
  objc_copyWeak(v12, &location);
  v12[1] = source;
  v9 = [v8 actionWithTitle:v6 image:v7 identifier:0 handler:v11];
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v9;
}

void __56__StartPageController__downvoteActionForSiriSuggestion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 12) downvoteSource:*(a1 + 40) postingChangeNotificationWhenDone:0];
    v4 = v3[11];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__StartPageController__downvoteActionForSiriSuggestion___block_invoke_2;
    v6[3] = &__block_descriptor_40_e37_B16__0__WBSForYouLinkRecommendation_8l;
    v6[4] = *(a1 + 40);
    v5 = [v4 safari_filterObjectsUsingBlock:v6];
    [v3 _setSiriSuggestions:v5];
  }
}

- (id)_banActionForSiriSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = _WBSLocalizedString();
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"hand.thumbsdown"];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D750C8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__StartPageController__banActionForSiriSuggestion___block_invoke;
  v11[3] = &unk_2781DA9F8;
  objc_copyWeak(&v13, &location);
  v8 = suggestionCopy;
  v12 = v8;
  v9 = [v7 actionWithTitle:v5 image:v6 identifier:0 handler:v11];
  [v9 setAttributes:2];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __51__StartPageController__banActionForSiriSuggestion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[12];
    v5 = [*(a1 + 32) pageURL];
    [v4 banURLsOfSameDomainAsURL:v5 postingChangeNotificationWhenDone:0];

    v6 = [*(a1 + 32) pageURL];
    v7 = [v6 safari_userVisibleHostWithoutWWWSubdomain];
    v8 = [v7 lowercaseString];

    v9 = v3[11];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__StartPageController__banActionForSiriSuggestion___block_invoke_2;
    v12[3] = &unk_2781DD000;
    v10 = v8;
    v13 = v10;
    v11 = [v9 safari_filterObjectsUsingBlock:v12];
    [v3 _setSiriSuggestions:v11];
  }
}

uint64_t __51__StartPageController__banActionForSiriSuggestion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 pageURL];
  v4 = [v3 safari_userVisibleHostWithoutWWWSubdomain];
  v5 = [v4 lowercaseString];
  LODWORD(a1) = [v5 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

- (void)_setReadingListRecommendationAsReadWithRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  if ([recommendationCopy source] == 1)
  {
    sourceID = [recommendationCopy sourceID];
    if ([sourceID length])
    {
      v5 = [(WebBookmarkCollection *)self->_bookmarkCollection bookmarkWithUUID:sourceID];
      if (v5)
      {
        [(WebBookmarkCollection *)self->_bookmarkCollection markReadingListBookmark:v5 asRead:1 postNotification:1];
      }
    }
  }
}

- (void)_setSiriSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if (([(NSArray *)self->_siriSuggestions isEqual:?]& 1) == 0)
  {
    v4 = [suggestionsCopy copy];
    siriSuggestions = self->_siriSuggestions;
    self->_siriSuggestions = v4;

    [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
  }
}

- (void)_updateSiriSuggestionsMediator
{
  if (!self->_siriSuggestionsMediator)
  {
    v3 = +[Application sharedApplication];
    createRecommendationMediatorOrReuseExistingOneIfPossible = [v3 createRecommendationMediatorOrReuseExistingOneIfPossible];
    siriSuggestionsMediator = self->_siriSuggestionsMediator;
    self->_siriSuggestionsMediator = createRecommendationMediatorOrReuseExistingOneIfPossible;
  }

  if ([(SFStartPageViewController *)self->_viewController isShowingRootView])
  {
    objc_initWeak(&location, self);
    [(WBSForYouRecommendationMediator *)self->_siriSuggestionsMediator beginListeningForURLSuggestionChanges];
    v6 = +[History sharedHistory];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__StartPageController__updateSiriSuggestionsMediator__block_invoke;
    v8[3] = &unk_2781D6840;
    objc_copyWeak(&v9, &location);
    [v6 performBlockAfterHistoryHasLoaded:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = self->_siriSuggestionsMediator;

    [(WBSForYouRecommendationMediator *)v7 stopListeningForURLSuggestionChanges];
  }
}

void __53__StartPageController__updateSiriSuggestionsMediator__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__StartPageController__updateSiriSuggestionsMediator__block_invoke_2;
  block[3] = &unk_2781D6840;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __53__StartPageController__updateSiriSuggestionsMediator__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshSiriSuggestions];
}

- (void)_refreshSiriSuggestions
{
  if (([MEMORY[0x277D49A08] is2024SuggestionsEnabled] & 1) != 0 || (objc_msgSend(MEMORY[0x277D4A058], "areLocalSiriSuggestionsEnabled") & 1) == 0)
  {
    v6 = MEMORY[0x277CBEBF8];

    [(StartPageController *)self _setSiriSuggestions:v6];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __46__StartPageController__refreshSiriSuggestions__block_invoke;
    v10 = &unk_2781D6FE8;
    objc_copyWeak(&v11, &location);
    v3 = _Block_copy(&v7);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained getContextForCurrentPageWithCompletionHandler:{v3, v7, v8, v9, v10}];

    if ((v5 & 1) == 0)
    {
      [(StartPageController *)self _updateRecommendationsForAllTopics];
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __46__StartPageController__refreshSiriSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__StartPageController__refreshSiriSuggestions__block_invoke_2;
  v5[3] = &unk_2781D6BD8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __46__StartPageController__refreshSiriSuggestions__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = [v3 results];
      v5 = [v4 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_310];

      if ([v5 count])
      {
        v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = 134217984;
          v8 = [v5 count];
          _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Obtained %ld ContextKit topics related to the current page.", &v7, 0xCu);
        }

        [WeakRetained _updateRecommendationsForTopics:v5];
      }

      else
      {
        [WeakRetained _updateRecommendationsForAllTopics];
      }
    }

    else
    {
      [WeakRetained _updateRecommendationsForAllTopics];
    }
  }
}

id __46__StartPageController__refreshSiriSuggestions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 title];
  v4 = [v3 length];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D4A768]);
    v6 = [v2 title];
    v7 = [v2 topicId];
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [v5 initWithTitle:v6 identifier:v7 relevancyDate:v8 source:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateRecommendationsForAllTopics
{
  objc_initWeak(&location, self);
  siriSuggestionsMediator = self->_siriSuggestionsMediator;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__StartPageController__updateRecommendationsForAllTopics__block_invoke;
  v4[3] = &unk_2781DD048;
  objc_copyWeak(&v5, &location);
  [(WBSForYouRecommendationMediator *)siriSuggestionsMediator updatedTopicsWithCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__StartPageController__updateRecommendationsForAllTopics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRecommendationsForTopics:v3];
}

- (void)_updateRecommendationsForTopics:(id)topics
{
  topicsCopy = topics;
  objc_initWeak(&location, self);
  siriSuggestionsMediator = self->_siriSuggestionsMediator;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__StartPageController__updateRecommendationsForTopics___block_invoke;
  v6[3] = &unk_2781DD048;
  objc_copyWeak(&v7, &location);
  [(ForYouRecommendationMediator *)siriSuggestionsMediator updatedRecommendationsForTopics:topicsCopy withCompletionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__StartPageController__updateRecommendationsForTopics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__StartPageController__updateRecommendationsForTopics___block_invoke_2;
  v5[3] = &unk_2781D6BD8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __55__StartPageController__updateRecommendationsForTopics___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained _setSiriSuggestions:*(a1 + 32)];
    if ([*(a1 + 32) count])
    {
      [WeakRetained _fetchHandoffResult];
    }
  }
}

- (void)_fetchHandoffResult
{
  objc_initWeak(&location, self);
  siriSuggestionsMediator = self->_siriSuggestionsMediator;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__StartPageController__fetchHandoffResult__block_invoke;
  v4[3] = &unk_2781DD090;
  objc_copyWeak(&v5, &location);
  [(WBSForYouRecommendationMediator *)siriSuggestionsMediator retrieveHandoffRecommendationWithCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__StartPageController__fetchHandoffResult__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __42__StartPageController__fetchHandoffResult__block_invoke_2;
    v4[3] = &unk_2781D6BD8;
    objc_copyWeak(&v6, (a1 + 32));
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __42__StartPageController__fetchHandoffResult__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained[11] mutableCopy];
    [v3 safari_removeObjectsPassingTest:&__block_literal_global_315];
    [v3 addObject:*(a1 + 32)];
    [v4 _setSiriSuggestions:v3];

    WeakRetained = v4;
  }
}

void __41__StartPageController__highlightsSection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v29 = v6;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = v6;
    if (isKindOfClass)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v11 = 0;
      v12 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v8;
      }

      else
      {
        v13 = 0;
      }

      v12 = v13;

      v10 = 0;
      if (*(a1 + 56) == 1)
      {
        [*(a1 + 32) attributionViewForSuggestion:v8];
      }

      else
      {
        [*(a1 + 40) attributionViewForHighlight:v12];
      }
      v11 = ;
    }

    [v5 setHighlight:v12];
    [v5 setAttributionView:v11];
    v30 = v12;
    v14 = objc_alloc_init(MEMORY[0x277CD46C8]);
    [v5 setRelativeDateString:&stru_2827BF158];
    if (v10)
    {
      v15 = objc_alloc(MEMORY[0x277CBEBC0]);
      v16 = [v10 address];
      v17 = [v15 initWithString:v16];

      [v14 setOriginalURL:v17];
      [v14 setURL:v17];
      v18 = [v10 title];
      [v14 setTitle:v18];

      v19 = *(WeakRetained + 34);
      v20 = [v10 historyItem];
      v21 = [v20 lastVisitedDate];
      v22 = [v19 safari_suggestionsLocalizedStringRelativeToNowForDate:v21];
      [v5 setRelativeDateString:v22];
    }

    [v5 setMetadata:v14];
    if (*(a1 + 56) == 1)
    {
      v23 = [*(WeakRetained + 36) objectForKey:v5];
      if (v23)
      {
        v24 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
        [v24 cancelRequestWithToken:v23];

        [*(WeakRetained + 36) removeObjectForKey:v5];
      }

      objc_initWeak(location, v5);
      v25 = *(a1 + 32);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __41__StartPageController__highlightsSection__block_invoke_2;
      v39[3] = &unk_2781DD0B8;
      objc_copyWeak(&v41, location);
      v40 = v10;
      v26 = [v25 fetchMetadataForSuggestion:v8 completionHandler:v39];
      if (v10)
      {
        [*(WeakRetained + 36) setObject:v26 forKey:v5];
      }

      objc_destroyWeak(&v41);
      v27 = location;
    }

    else
    {
      v28 = *(a1 + 40);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __41__StartPageController__highlightsSection__block_invoke_3;
      v32[3] = &unk_2781DD108;
      objc_copyWeak(&v37, (a1 + 48));
      v33 = *(a1 + 40);
      v34 = v30;
      v38 = *(a1 + 57);
      v35 = v11;
      v36 = v5;
      [v28 fetchMetadataForHighlight:v34 completionHandler:v32];

      v27 = &v37;
    }

    objc_destroyWeak(v27);

    v6 = v29;
  }
}

void __41__StartPageController__highlightsSection__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v10)
  {
    if (WeakRetained)
    {
      v4 = [WeakRetained metadata];
      v5 = [v4 isEqual:v10];

      if ((v5 & 1) == 0)
      {
        v6 = *(a1 + 32);
        if (v6)
        {
          v7 = [v6 title];
          v8 = [v7 length];

          if (v8)
          {
            v9 = [*(a1 + 32) title];
            [v10 setTitle:v9];
          }

          else
          {
            v9 = [v10 title];
            [*(a1 + 32) setTitle:v9];
          }
        }

        [WeakRetained setMetadata:v10];
      }
    }
  }
}

void __41__StartPageController__highlightsSection__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__StartPageController__highlightsSection__block_invoke_4;
    aBlock[3] = &unk_2781DD0E0;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14 = *(a1 + 72);
    v12 = v3;
    v13 = *(a1 + 48);
    v6 = _Block_copy(aBlock);
    v7 = [*(a1 + 56) highlight];
    v8 = WBSIsEqual();

    if (v8)
    {
      v6[2](v6, *(a1 + 56));
    }

    else
    {
      [v5[45] configureModelWithIdentifier:*(a1 + 40) usingBlock:v6];
    }
  }
}

void __41__StartPageController__highlightsSection__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) sendFeedbackForHighlight:*(a1 + 40) withType:0 inPrivateBrowsing:*(a1 + 64)];
  [v3 setMetadata:*(a1 + 48)];
  [v3 setHighlight:*(a1 + 40)];
  [v3 setAttributionView:*(a1 + 56)];
}

id __41__StartPageController__highlightsSection__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 32) _contextMenuConfigurationForFrequentlyVisitedSite:v5 previewProvider:v6];
  }

  else
  {
    v8 = v5;
    v9 = MEMORY[0x277D753B0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__StartPageController__highlightsSection__block_invoke_6;
    v18[3] = &unk_2781DCB78;
    objc_copyWeak(&v20, (a1 + 48));
    v10 = v8;
    v19 = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__StartPageController__highlightsSection__block_invoke_7;
    v13[3] = &unk_2781DD1A8;
    objc_copyWeak(&v16, (a1 + 48));
    v14 = v10;
    v15 = *(a1 + 40);
    v17 = *(a1 + 56);
    v11 = v10;
    v7 = [v9 configurationWithIdentifier:0 previewProvider:v18 actionProvider:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v20);
  }

  return v7;
}

id __41__StartPageController__highlightsSection__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D28F40] builder];
    v4 = [v3 navigationIntentWithHighlight:*(a1 + 32)];

    v5 = objc_loadWeakRetained(WeakRetained + 44);
    v6 = [v5 linkPreviewViewControllerForNavigationIntent:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __41__StartPageController__highlightsSection__block_invoke_7(uint64_t a1, void *a2)
{
  v82[2] = *MEMORY[0x277D85DE8];
  v44 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277D750C8];
    v4 = _WBSLocalizedString();
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __41__StartPageController__highlightsSection__block_invoke_8;
    v68[3] = &unk_2781D6908;
    v69 = *(a1 + 32);
    v41 = [v3 actionWithTitle:v4 image:v5 identifier:0 handler:v68];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__StartPageController__highlightsSection__block_invoke_9;
    aBlock[3] = &unk_2781DD158;
    objc_copyWeak(&v66, (a1 + 48));
    v64 = *(a1 + 32);
    v65 = *(a1 + 40);
    v67 = *(a1 + 56);
    v38 = _Block_copy(aBlock);
    v6 = objc_loadWeakRetained(WeakRetained + 44);
    v7 = [v6 tabGroupProvider];
    v8 = WBSURLForHighlight();
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __41__StartPageController__highlightsSection__block_invoke_10;
    v61[3] = &unk_2781D6380;
    v9 = v38;
    v62 = v9;
    v42 = [v7 openInTabGroupMenuWithNewTabGroupName:0 URL:v8 descendantCount:0 handler:v61];

    v10 = MEMORY[0x277D750C8];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __41__StartPageController__highlightsSection__block_invoke_11;
    v59[3] = &unk_2781D6330;
    v37 = v9;
    v60 = v37;
    v11 = [v10 _sf_openInNewTabActionWithHandler:v59];
    v82[0] = v11;
    v82[1] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];

    v12 = MEMORY[0x277D75710];
    v81 = v41;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
    v39 = [v12 menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v13];

    v40 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v43];
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__17;
    v57 = __Block_byref_object_dispose__17;
    v58 = 0;
    v14 = [WeakRetained viewController];
    v15 = *(a1 + 32);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __41__StartPageController__highlightsSection__block_invoke_328;
    v52[3] = &unk_2781DD180;
    v52[4] = &v53;
    [v14 configureModelWithIdentifier:v15 usingBlock:v52];

    v16 = MEMORY[0x277CBEB18];
    v17 = [WeakRetained _shareActionForHighlight:*(a1 + 32)];
    v46 = [v16 arrayWithObject:v17];

    v18 = [MEMORY[0x277CBEB18] array];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v54[5];
    v19 = [obj countByEnumeratingWithState:&v48 objects:v80 count:16];
    if (v19)
    {
      v20 = *v49;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v48 + 1) + 8 * i);
          v23 = [v22 identifier];
          v75 = 0;
          v76 = &v75;
          v77 = 0x2020000000;
          v24 = getSLHideContextMenuIdentifierSymbolLoc(void)::ptr;
          v78 = getSLHideContextMenuIdentifierSymbolLoc(void)::ptr;
          if (!getSLHideContextMenuIdentifierSymbolLoc(void)::ptr)
          {
            v70 = MEMORY[0x277D85DD0];
            v71 = 3221225472;
            v72 = ___ZL39getSLHideContextMenuIdentifierSymbolLocv_block_invoke;
            v73 = &unk_2781D60E0;
            v74 = &v75;
            v25 = SocialLayerLibrary();
            v26 = dlsym(v25, "SLHideContextMenuIdentifier");
            *(v74[1] + 24) = v26;
            getSLHideContextMenuIdentifierSymbolLoc(void)::ptr = *(v74[1] + 24);
            v24 = v76[3];
          }

          _Block_object_dispose(&v75, 8);
          if (!v24)
          {
            dlerror();
            abort_report_np();
            __break(1u);
          }

          v27 = *v24;
          v28 = [v23 isEqualToString:v27];

          v29 = v18;
          if (v28)
          {
            v30 = _WBSLocalizedString();
            [v22 setTitle:v30];

            v29 = v46;
          }

          [v29 addObject:v22];
        }

        v19 = [obj countByEnumeratingWithState:&v48 objects:v80 count:16];
      }

      while (v19);
    }

    v31 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v18];
    v32 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v46];
    v33 = MEMORY[0x277D75710];
    v79[0] = v39;
    v79[1] = v40;
    v79[2] = v31;
    v79[3] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
    v35 = [v33 menuWithTitle:&stru_2827BF158 children:v34];

    _Block_object_dispose(&v53, 8);
    objc_destroyWeak(&v66);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void __41__StartPageController__highlightsSection__block_invoke_8()
{
  v1 = WBSURLForHighlight();
  v0 = [MEMORY[0x277D75810] generalPasteboard];
  [v0 setURL:v1];
}

void __41__StartPageController__highlightsSection__block_invoke_9(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v5 = [MEMORY[0x277D28F40] builder];
    [v5 setPrefersOpenInNewTab:1];
    [v5 setPreferredTabOrder:a2];
    v6 = [v5 navigationIntentWithHighlight:*(a1 + 32)];
    [*(a1 + 40) sendFeedbackForHighlight:*(a1 + 32) withType:1 inPrivateBrowsing:*(a1 + 56)];
    v7 = objc_loadWeakRetained(v9 + 44);
    [v7 dispatchNavigationIntent:v6];
    if (a2 == 1)
    {
      v8 = [v7 tabGroupProvider];
      [v8 removeSingleBlankTabFromActiveTabGroup];
    }

    WeakRetained = v9;
  }
}

void __41__StartPageController__highlightsSection__block_invoke_328(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 attributionView];
  v4 = [v3 contextMenuItems];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __41__StartPageController__highlightsSection__block_invoke_2_333(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _contextMenuCommitHandlerForFrequentlyVisitedSite:v6 animator:v7 sectionIdentifier:*(a1 + 32)];
    }
  }

  else
  {
    v9 = v6;
    v10 = objc_loadWeakRetained((a1 + 48));
    if (v10)
    {
      [v7 setPreferredCommitStyle:1];
      v11 = [v7 previewViewController];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __41__StartPageController__highlightsSection__block_invoke_3_334;
      v14[3] = &unk_2781DD1F8;
      v15 = *(a1 + 40);
      v12 = v9;
      v19 = *(a1 + 56);
      v16 = v12;
      v17 = v10;
      v18 = v11;
      v13 = v11;
      [v7 addAnimations:v14];
    }
  }
}

void __41__StartPageController__highlightsSection__block_invoke_3_334(uint64_t a1)
{
  [*(a1 + 32) sendFeedbackForHighlight:*(a1 + 40) withType:1 inPrivateBrowsing:*(a1 + 64)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 352));
  [WeakRetained commitLinkPreviewViewController:*(a1 + 56)];
}

void __41__StartPageController__highlightsSection__block_invoke_4_336(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 44);
    [v2 linkPreviewProviderWillDismissPreview];

    WeakRetained = v3;
  }
}

id __41__StartPageController__highlightsSection__block_invoke_5_337(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = [v2 address];
    v5 = [v3 URLWithString:v4];
  }

  else
  {
    v5 = [v2 resourceURL];
  }

  v6 = [objc_alloc(MEMORY[0x277CCAA88]) initWithContentsOfURL:v5];
  v7 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v6];

  return v7;
}

- (void)_highlightsDidChange:(id)change
{
  if (([MEMORY[0x277D49A08] is2024SuggestionsEnabled] & 1) == 0)
  {
    viewController = self->_viewController;

    [(SFStartPageViewController *)viewController reloadDataAnimatingDifferences:1];
  }
}

- (id)_privateBrowsingPersistentModuleSection
{
  v2 = MEMORY[0x277D4A838];
  v3 = *MEMORY[0x277D4A4F0];
  privateBrowsingPersistentModule = [MEMORY[0x277D4A828] privateBrowsingPersistentModule];
  v5 = [v2 bannerSectionWithIdentifier:v3 banner:privateBrowsingPersistentModule];

  return v5;
}

- (id)_privateBrowsingExplanationSection
{
  privateBrowsingExplanationState = self->_privateBrowsingExplanationState;
  if (privateBrowsingExplanationState == 1)
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  else if (privateBrowsingExplanationState)
  {
    v6 = 0;
  }

  else
  {
    v4 = MEMORY[0x277D4A7D8];
    defaultConfiguration = [MEMORY[0x277D4A7D0] defaultConfiguration];
    v6 = [v4 itemsForConfiguration:defaultConfiguration];
  }

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D4A828];
  v8 = self->_privateBrowsingExplanationState;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __57__StartPageController__privateBrowsingExplanationSection__block_invoke;
  v15 = &unk_2781D6840;
  objc_copyWeak(&v16, &location);
  v9 = [v7 privateBrowsingExplanationBannerWithState:v8 explanationItems:v6 dismissHandler:&v12];
  v10 = [MEMORY[0x277D4A838] bannerSectionWithIdentifier:*MEMORY[0x277D4A4E8] title:&stru_2827BF158 banner:{v9, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

void __57__StartPageController__privateBrowsingExplanationSection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [v2 setInteger:1 forKey:*MEMORY[0x277D4A340]];

    [WeakRetained updatePrivateBrowsingExplanationState];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __57__StartPageController__privateBrowsingExplanationSection__block_invoke_2;
    v3[3] = &unk_2781D60B8;
    v3[4] = WeakRetained;
    [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:0 animations:v3 completion:0];
  }
}

- (id)profileProviderForCustomizationViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];

  return tabGroupProvider;
}

- (id)backgroundImageAssetControllerForCustomizationViewController:(id)controller
{
  v3 = +[Application sharedApplication];
  backgroundImageAssetController = [v3 backgroundImageAssetController];

  return backgroundImageAssetController;
}

- (BOOL)isCloudSyncAvailableForStartPageCustomizationViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  activeProfile = [tabGroupProvider activeProfile];
  kind = [activeProfile kind];

  if (kind)
  {
    return 0;
  }

  v8 = +[Application sharedApplication];
  isCloudHistoryEnabled = [v8 isCloudHistoryEnabled];

  return isCloudHistoryEnabled;
}

- (BOOL)isSuggestionsCustomizationAvailableForStartPageCustomizationViewController:(id)controller
{
  enabledSectionIdentifiers = [(WBSStartPageSectionManager *)self->_startPageSectionManager enabledSectionIdentifiers];
  v4 = [enabledSectionIdentifiers containsObject:*MEMORY[0x277D4A518]];

  return v4;
}

- (BOOL)isCloudSyncEnabledForStartPageCustomizationViewController:(id)controller
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D49BE8]];

  return v4;
}

- (void)startPageCustomizationViewControllerDidDisableCloudSync:(id)sync
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:0 forKey:*MEMORY[0x277D49BE8]];
}

- (void)startPageCustomizationViewControllerDidEnableCloudSync:(id)sync withPreference:(int64_t)preference
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = *MEMORY[0x277D49BE8];
  v8 = standardUserDefaults;
  [standardUserDefaults setBool:1 forKey:*MEMORY[0x277D49BE8]];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v7 = [MEMORY[0x277CBEBD0] safari_notificationNameForUserDefaultsKey:v6];
  [defaultCenter postNotificationName:v7 object:0];

  if (preference)
  {
    if (preference != 1)
    {
      return;
    }

    mEMORY[0x277D49B18] = [MEMORY[0x277D49B18] sharedProxy];
    [mEMORY[0x277D49B18] syncUpSafariSettingsSyncWithCompletion:&__block_literal_global_345];
  }

  else
  {
    mEMORY[0x277D49B18] = [MEMORY[0x277D49B18] sharedProxy];
    [mEMORY[0x277D49B18] syncDownSafariSettingsSyncWithCompletion:&__block_literal_global_347];
  }
}

- (id)startPageCustomizationViewController:(id)controller customizationItemsForCustomizationVariant:(int64_t)variant
{
  controllerCopy = controller;
  if (!variant)
  {
    sections = [(WBSStartPageSectionManager *)self->_startPageSectionManager sections];
    v14 = [sections safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_351_0];
    goto LABEL_8;
  }

  if (variant == 2)
  {
    sections = [(WBSStartPageSectionManager *)self->_startPageSectionManager suggestionsDataSourceSections];
    v14 = [sections safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_353];
LABEL_8:
    array = v14;
    goto LABEL_9;
  }

  if (variant != 1)
  {
    goto LABEL_10;
  }

  array = [MEMORY[0x277CBEB18] array];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  sections = [tabGroupProvider activeTabGroup];

  if ([sections supportsTabGroupFavorites])
  {
    v11 = MEMORY[0x277D4A830];
    isTabGroupFavoritesSectionEnabled = [(StartPageController *)self isTabGroupFavoritesSectionEnabled];
    v13 = [v11 itemWithIdentifier:*MEMORY[0x277D4A520] enabled:isTabGroupFavoritesSectionEnabled];
    [array addObject:v13];
  }

LABEL_9:

LABEL_10:

  return array;
}

id __102__StartPageController_startPageCustomizationViewController_customizationItemsForCustomizationVariant___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 identifier];
  if (([v3 isEqual:*MEMORY[0x277D4A520]] & 1) != 0 || ((objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D4A4B8]) & 1) == 0 ? (v5 = objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D4A510])) : (v5 = 1), (v5 | objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D4A4C0])) == 1 && (objc_msgSend(MEMORY[0x277D49A08], "is2024SuggestionsEnabled") & 1) != 0 || objc_msgSend(v3, "isEqual:", *MEMORY[0x277D4A518]) && !objc_msgSend(MEMORY[0x277D49A08], "is2024SuggestionsEnabled") || objc_msgSend(v3, "isEqual:", *MEMORY[0x277D4A4A8]) && (+[Application sharedApplication](Application, "sharedApplication"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isCloudHistoryEnabled"), v6, (v7 & 1) == 0)))
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D4A830] itemWithIdentifier:v3 enabled:{objc_msgSend(v2, "isEnabled")}];
  }

  return v4;
}

id __102__StartPageController_startPageCustomizationViewController_customizationItemsForCustomizationVariant___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D4A830];
  v4 = [v2 identifier];
  v5 = [v3 itemWithIdentifier:v4 enabled:{objc_msgSend(v2, "isEnabled")}];

  return v5;
}

- (void)startPageCustomizationViewController:(id)controller didCustomizeItems:(id)items withVariant:(int64_t)variant
{
  v54 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  itemsCopy = items;
  v9 = itemsCopy;
  if (!variant || variant == 2)
  {
    v13 = [itemsCopy mutableCopy];
    sections = [(WBSStartPageSectionManager *)self->_startPageSectionManager sections];
    v14 = [sections indexOfObjectPassingTest:&__block_literal_global_358];
    v15 = [sections indexOfObjectPassingTest:&__block_literal_global_360_0];
    v16 = [v9 indexOfObjectPassingTest:&__block_literal_global_363];
    v17 = [v9 indexOfObjectPassingTest:&__block_literal_global_365_0];
    v36 = [v9 objectAtIndexedSubscript:v16];
    v35 = [v9 objectAtIndexedSubscript:v17];
    [v13 removeObject:v36];
    [v13 removeObject:v35];
    if (v14 >= v15)
    {
      v18 = v35;
    }

    else
    {
      v18 = v36;
    }

    if (v14 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v14;
    }

    if (v14 >= v15)
    {
      v20 = v36;
    }

    else
    {
      v20 = v35;
    }

    if (v14 <= v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = v14;
    }

    v22 = v18;
    v23 = v20;
    if (v22)
    {
      v24 = [v13 count];
      v25 = v19;
      if (v19 >= v24)
      {
        v25 = [v13 count];
      }

      [v13 insertObject:v22 atIndex:v25];
    }

    if (v23)
    {
      v26 = [v13 count];
      v27 = v21;
      if (v21 >= v26)
      {
        v27 = [v13 count];
      }

      [v13 insertObject:v23 atIndex:v27];
    }

    if (!v22 || !v23 || v19 == 0x7FFFFFFFFFFFFFFFLL || v21 == 0x7FFFFFFFFFFFFFFFLL || v16 == 0x7FFFFFFFFFFFFFFFLL || v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = WBS_LOG_CHANNEL_PREFIXStartPage();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v33 = [v22 description];
        [v23 description];
        *buf = 138544642;
        v43 = v33;
        v45 = v44 = 2114;
        v46 = 2048;
        v47 = v19;
        v48 = 2048;
        v49 = v21;
        v50 = 2048;
        v51 = v16;
        v52 = 2048;
        v53 = v17;
        v32 = v45;
        _os_log_error_impl(&dword_215819000, v28, OS_LOG_TYPE_ERROR, "Unexpected Suggestions sections state: Item1:%{public}@, Item2:%{public}@, Index1:%ld, Index2:%ld, Frecents:%ld, Highlights:%ld", buf, 0x3Eu);
      }
    }

    v29 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __90__StartPageController_startPageCustomizationViewController_didCustomizeItems_withVariant___block_invoke_367;
    v38[3] = &unk_2781DD318;
    v30 = v29;
    v39 = v30;
    v31 = [v13 safari_mapAndFilterObjectsWithOptions:0 usingBlock:v38];
    [(WBSStartPageSectionManager *)self->_startPageSectionManager setSectionsIdentifiers:v31 enabledIndexes:v30];

    goto LABEL_37;
  }

  if (variant == 1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__StartPageController_startPageCustomizationViewController_didCustomizeItems_withVariant___block_invoke;
    aBlock[3] = &unk_2781DD2B0;
    v41 = itemsCopy;
    v10 = _Block_copy(aBlock);
    v11 = v10[2](v10, *MEMORY[0x277D4A520]);
    v12 = v11;
    if (v11)
    {
      -[StartPageController setTabGroupFavoritesSectionEnabled:](self, "setTabGroupFavoritesSectionEnabled:", [v11 isEnabled]);
    }

    v13 = v41;
LABEL_37:
  }

  [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
}

id __90__StartPageController_startPageCustomizationViewController_didCustomizeItems_withVariant___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__StartPageController_startPageCustomizationViewController_didCustomizeItems_withVariant___block_invoke_2;
  v8[3] = &unk_2781DD288;
  v9 = v3;
  v5 = v3;
  v6 = [v4 safari_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __90__StartPageController_startPageCustomizationViewController_didCustomizeItems_withVariant___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = WBSIsEqual();

  return v3;
}

uint64_t __90__StartPageController_startPageCustomizationViewController_didCustomizeItems_withVariant___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277D4A4B8]];

  return v3;
}

uint64_t __90__StartPageController_startPageCustomizationViewController_didCustomizeItems_withVariant___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277D4A4C0]];

  return v3;
}

uint64_t __90__StartPageController_startPageCustomizationViewController_didCustomizeItems_withVariant___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277D4A4B8]];

  return v3;
}

uint64_t __90__StartPageController_startPageCustomizationViewController_didCustomizeItems_withVariant___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277D4A4C0]];

  return v3;
}

id __90__StartPageController_startPageCustomizationViewController_didCustomizeItems_withVariant___block_invoke_367(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 isEnabled])
  {
    [*(a1 + 32) addIndex:a3];
  }

  v6 = [v5 identifier];

  return v6;
}

- (BOOL)isBackgroundImageEnabledForStartPageCustomizationViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  activeProfileIdentifier = [tabGroupProvider activeProfileIdentifier];

  v6 = +[Application sharedApplication];
  tabGroupManager = [v6 tabGroupManager];
  v8 = [tabGroupManager profileWithIdentifier:activeProfileIdentifier];

  if ([v8 kind] == 1)
  {
    standardUserDefaults = [v8 settingForKey:*MEMORY[0x277D4A478]];
    bOOLValue = [standardUserDefaults BOOLValue];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    bOOLValue = [standardUserDefaults BOOLForKey:*MEMORY[0x277D4A478]];
  }

  v11 = bOOLValue;

  return v11;
}

- (id)backgroundImageForStartPageCustomizationViewController:(id)controller
{
  cachedItemProvider = self->_cachedItemProvider;
  if (cachedItemProvider)
  {
    v4 = cachedItemProvider;
  }

  else
  {
    defaultManager = [MEMORY[0x277D4A820] defaultManager];
    v7 = +[Application sharedApplication];
    tabGroupManager = [v7 tabGroupManager];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
    v11 = [tabGroupManager profileWithIdentifier:activeProfileIdentifier];

    startPageBackgroundImageIdentifier = [(StartPageController *)self startPageBackgroundImageIdentifier];
    v13 = [defaultManager imageForIdentifier:startPageBackgroundImageIdentifier forProfile:v11];

    if (v13)
    {
      v14 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v13, "CGImage")}];
      v4 = [objc_alloc(MEMORY[0x277CCAA88]) initWithObject:v14];
      v15 = [defaultManager prefetchedImageNameForProfile:v11];
      [(NSItemProvider *)v4 setSuggestedName:v15];

      v16 = [defaultManager prefetchedImageThumbnailForProfile:v11];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v13;
      }

      v19 = v18;

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __78__StartPageController_backgroundImageForStartPageCustomizationViewController___block_invoke;
      v22[3] = &unk_2781DD340;
      v23 = v19;
      v20 = v19;
      [(NSItemProvider *)v4 setPreviewImageHandler:v22];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __78__StartPageController_backgroundImageForStartPageCustomizationViewController___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(*(a1 + 32), "CGImage")}];
  v4[2](v4, v3, 0);
}

- (void)startPageCustomizationViewController:(id)controller willModifySectionWithIdentifier:(id)identifier enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:1 forKey:*MEMORY[0x277D4A4A0]];

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
  v11 = [activeProfileIdentifier isEqualToString:*MEMORY[0x277D49BD8]];

  if (v11)
  {
    v15[0] = @"section";
    v15[1] = @"isEnabled";
    v16[0] = identifierCopy;
    v12 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
    v16[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D4A3B0] object:0 userInfo:v13];
  }
}

- (void)didReorderSectionIdentifiersForStartPageCustomizationViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
  v5 = [activeProfileIdentifier isEqualToString:*MEMORY[0x277D49BD8]];

  if (v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D4A4C8] object:self];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:1 forKey:*MEMORY[0x277D4A4A0]];
}

- (void)startPageCustomizationViewControllerDidFinish:(id)finish
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
  v4 = [activeProfileIdentifier isEqualToString:*MEMORY[0x277D49BD8]];

  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D4A3B8] object:0];
  }
}

- (void)startPageCustomizationViewController:(id)controller didModifyBackgroundImageEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  activeProfileIdentifier = [tabGroupProvider activeProfileIdentifier];

  if ([activeProfileIdentifier isEqualToString:*MEMORY[0x277D49BD8]])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:enabledCopy forKey:*MEMORY[0x277D4A478]];
  }

  else
  {
    v10 = +[Application sharedApplication];
    tabGroupManager = [v10 tabGroupManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __92__StartPageController_startPageCustomizationViewController_didModifyBackgroundImageEnabled___block_invoke;
    v16[3] = &__block_descriptor_33_e26_v16__0__WBMutableProfile_8l;
    v17 = enabledCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__StartPageController_startPageCustomizationViewController_didModifyBackgroundImageEnabled___block_invoke_2;
    v14[3] = &unk_2781D6890;
    v14[4] = self;
    v15 = activeProfileIdentifier;
    v12 = [tabGroupManager updateProfileWithIdentifier:v15 persist:1 usingBlock:v16 completionHandler:v14];
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 setBool:1 forKey:*MEMORY[0x277D4A4A0]];
}

void __92__StartPageController_startPageCustomizationViewController_didModifyBackgroundImageEnabled___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  [v4 setSetting:v3 forKey:*MEMORY[0x277D4A478]];
}

void __92__StartPageController_startPageCustomizationViewController_didModifyBackgroundImageEnabled___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[Application sharedApplication];
    v2 = [v4 tabGroupManager];
    v3 = [v2 profileWithIdentifier:*(a1 + 40)];
    [*(*(a1 + 32) + 360) setProfile:v3];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:*MEMORY[0x277D4A928] object:0];
  }
}

- (void)startPageCustomizationViewController:(id)controller didSelectCustomBackgroundImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_cachedItemProvider, image);
  defaultManager = [MEMORY[0x277D4A820] defaultManager];
  if (imageCopy)
  {
    os_unfair_lock_lock(&generationLock);
    v8 = ++generationToken;
    os_unfair_lock_unlock(&generationLock);
    objc_initWeak(&location, self);
    identifier = [*MEMORY[0x277CE1DB0] identifier];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke;
    v19[3] = &unk_2781DD3E0;
    v21[1] = v8;
    v20 = defaultManager;
    objc_copyWeak(v21, &location);
    v10 = [imageCopy loadFileRepresentationForTypeIdentifier:identifier completionHandler:v19];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    tabGroupProvider = [WeakRetained tabGroupProvider];
    activeProfile = [tabGroupProvider activeProfile];
    kind = [activeProfile kind];

    tabGroupProvider2 = [WeakRetained tabGroupProvider];
    activeTabGroup = [tabGroupProvider2 activeTabGroup];
    isUnnamed = [activeTabGroup isUnnamed];

    startPageBackgroundImageIdentifier = [(StartPageController *)self startPageBackgroundImageIdentifier];
    if (((kind != 0) & isUnnamed) == 1)
    {
      [defaultManager clearImageWithIdentifier:startPageBackgroundImageIdentifier withinProfile:1];
    }

    else
    {
      [defaultManager clearImageWithIdentifier:startPageBackgroundImageIdentifier withinProfile:0];
    }
  }
}

void __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock(&generationLock);
  v7 = *(a1 + 48);
  v8 = generationToken;
  os_unfair_lock_unlock(&generationLock);
  if (v7 == v8)
  {
    if (v6)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXStartPage();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 safari_privacyPreservingDescription];
        __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_cold_1(v10, buf, v9);
      }
    }

    v11 = MEMORY[0x277CBEBC0];
    v12 = NSTemporaryDirectory();
    v13 = [v11 fileURLWithPath:v12];
    v14 = [MEMORY[0x277CCAC38] processInfo];
    v15 = [v14 globallyUniqueString];
    v16 = [v13 URLByAppendingPathComponent:v15 isDirectory:0];

    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = v17;
    if (v5)
    {
      v32 = v6;
      [v17 moveItemAtURL:v5 toURL:v16 error:&v32];
      v19 = v32;

      v6 = v19;
    }

    v20 = objc_alloc_init(MEMORY[0x277D49B60]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_379;
    v29[3] = &unk_2781D61F8;
    v21 = v18;
    v30 = v21;
    v31 = v5;
    [v20 setHandler:v29];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_380;
    v24[3] = &unk_2781DD3B8;
    v25 = *(a1 + 32);
    v26 = v16;
    v27 = v20;
    v22 = v20;
    v23 = v16;
    objc_copyWeak(v28, (a1 + 40));
    v28[1] = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v24);
    objc_destroyWeak(v28);
  }
}

void __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_379(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7 = 0;
  v3 = [v2 removeItemAtURL:v1 error:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXStartPage();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 safari_privacyPreservingDescription];
      __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_379_cold_1(v6, buf, v5);
    }
  }
}

void __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_380(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_2;
  v4[3] = &unk_2781DD390;
  v5 = *(a1 + 48);
  objc_copyWeak(v7, (a1 + 56));
  v7[1] = *(a1 + 64);
  v6 = *(a1 + 32);
  [v2 cacheImageFromURL:v3 completion:v4];

  objc_destroyWeak(v7);
}

void __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_3;
  block[3] = &unk_2781DD368;
  v6 = a1[4];
  objc_copyWeak(v9, a1 + 6);
  v9[1] = a1[7];
  v7 = v3;
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v9);
}

void __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    os_unfair_lock_lock(&generationLock);
    v2 = *(a1 + 64);
    v3 = generationToken;
    os_unfair_lock_unlock(&generationLock);
    if (v2 == v3)
    {
      v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v4 removeObjectForKey:*MEMORY[0x277D4A270]];
      if (*(a1 + 40))
      {
        [v4 setBool:1 forKey:*MEMORY[0x277D4A478]];
        v5 = objc_loadWeakRetained(WeakRetained + 44);
        v6 = [v5 tabGroupProvider];
        v7 = [v6 activeProfile];
        v8 = [v7 kind];

        v9 = [v5 tabGroupProvider];
        v10 = [v9 activeTabGroup];
        v11 = [v10 isUnnamed];

        v12 = *(a1 + 48);
        v13 = [WeakRetained startPageBackgroundImageIdentifier];
        if (((v8 != 0) & v11) == 1)
        {
          [v12 processImageForIdentifier:v13 isGeneratedImage:0 withinProfile:1];
        }

        else
        {
          [v12 processImageForIdentifier:v13 isGeneratedImage:0 withinProfile:0];
        }

        v14 = WeakRetained[5];
        WeakRetained[5] = 0;

        v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [v15 setBool:1 forKey:*MEMORY[0x277D4A4A0]];
      }

      else
      {
        [*(a1 + 48) clearPrefetchedImage];
        [v4 setBool:0 forKey:*MEMORY[0x277D4A478]];
      }
    }
  }
}

- (void)startPageCustomizationViewController:(id)controller didSelectBuiltInBackgroundImageAtURL:(id)l precomputedLuminance:(double)luminance
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v9 = objc_alloc_init(MEMORY[0x277CCAA88]);
  cachedItemProvider = self->_cachedItemProvider;
  self->_cachedItemProvider = v9;

  [(NSItemProvider *)self->_cachedItemProvider setSuggestedName:lastPathComponent];
  os_unfair_lock_lock(&generationLock);
  v11 = ++generationToken;
  os_unfair_lock_unlock(&generationLock);
  defaultManager = [MEMORY[0x277D4A820] defaultManager];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __118__StartPageController_startPageCustomizationViewController_didSelectBuiltInBackgroundImageAtURL_precomputedLuminance___block_invoke;
  v15[3] = &unk_2781DD430;
  objc_copyWeak(v18, &location);
  v18[1] = v11;
  v13 = lastPathComponent;
  v16 = v13;
  v17 = defaultManager;
  v18[2] = *&luminance;
  v14 = defaultManager;
  [v14 prefetchImage:lCopy luminance:v15 completion:luminance];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __118__StartPageController_startPageCustomizationViewController_didSelectBuiltInBackgroundImageAtURL_precomputedLuminance___block_invoke(id *a1, uint64_t a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __118__StartPageController_startPageCustomizationViewController_didSelectBuiltInBackgroundImageAtURL_precomputedLuminance___block_invoke_2;
    block[3] = &unk_2781DD408;
    objc_copyWeak(v6, a1 + 6);
    v6[1] = a1[7];
    v4 = a1[4];
    v5 = a1[5];
    v6[2] = a1[8];
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(v6);
  }
}

void __118__StartPageController_startPageCustomizationViewController_didSelectBuiltInBackgroundImageAtURL_precomputedLuminance___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock(&generationLock);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 56);
    v4 = generationToken;
    os_unfair_lock_unlock(&generationLock);
    if (v3 == v4)
    {
      v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v5 setObject:*(a1 + 32) forKey:*MEMORY[0x277D4A270]];
      v6 = objc_loadWeakRetained(WeakRetained + 44);
      v7 = [v6 tabGroupProvider];
      v8 = [v7 activeProfileIdentifier];

      if ([v8 isEqualToString:*MEMORY[0x277D49BD8]])
      {
        [v5 setBool:1 forKey:*MEMORY[0x277D4A478]];
      }

      else
      {
        v9 = +[Application sharedApplication];
        v10 = [v9 tabGroupManager];
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __118__StartPageController_startPageCustomizationViewController_didSelectBuiltInBackgroundImageAtURL_precomputedLuminance___block_invoke_4;
        v25 = &unk_2781D6890;
        v26 = WeakRetained;
        v27 = v8;
        v11 = [v10 updateProfileWithIdentifier:v27 persist:1 usingBlock:&__block_literal_global_384 completionHandler:&v22];
      }

      v12 = [v6 tabGroupProvider];
      v13 = [v12 activeProfile];
      v14 = [v13 kind];

      v15 = [v6 tabGroupProvider];
      v16 = [v15 activeTabGroup];
      LOBYTE(v13) = [v16 isUnnamed];

      v17 = *(a1 + 40);
      v18 = *(a1 + 64);
      v19 = [WeakRetained startPageBackgroundImageIdentifier];
      [v17 commitPrefetchedImageWithLuminance:v19 forIdentifier:0 isGeneratedImage:(v14 != 0) & v13 withinProfile:v18];

      v20 = WeakRetained[5];
      WeakRetained[5] = 0;

      v21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v21 setBool:1 forKey:*MEMORY[0x277D4A4A0]];
    }
  }
}

void __118__StartPageController_startPageCustomizationViewController_didSelectBuiltInBackgroundImageAtURL_precomputedLuminance___block_invoke_4(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[Application sharedApplication];
    v2 = [v4 tabGroupManager];
    v3 = [v2 profileWithIdentifier:*(a1 + 40)];
    [*(*(a1 + 32) + 360) setProfile:v3];
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:*MEMORY[0x277D4A928] object:0];
}

- (id)sectionsForStartPageViewController:(id)controller
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];
  if (self->_privateBrowsingWasEnabled != isPrivateBrowsingEnabled)
  {
    cachedCloudTabsSection = self->_cachedCloudTabsSection;
    self->_cachedCloudTabsSection = 0;

    self->_privateBrowsingWasEnabled = isPrivateBrowsingEnabled;
  }

  array = [MEMORY[0x277CBEB18] array];
  libraryType = self->_libraryType;
  if (libraryType)
  {
    v9 = startPageSectionIdentifierForCollectionType(libraryType);
    [(StartPageController *)self _appendSectionModelsForIdentifier:v9 toArray:array];

    goto LABEL_42;
  }

  if ([MEMORY[0x277D49A08] isOnboardingEnabled] && !(isPrivateBrowsingEnabled & 1 | ((objc_msgSend(WeakRetained, "startPageControllerActiveTabIsBlank:", self) & 1) == 0)))
  {
    onboardingProvidersForStartPage = [MEMORY[0x277D28D00] onboardingProvidersForStartPage];
    if ([onboardingProvidersForStartPage count])
    {
      v11 = [MEMORY[0x277D4A838] onboardingSectionWithIdentifier:*MEMORY[0x277D4A4D8] items:onboardingProvidersForStartPage];
      [array addObject:v11];
    }
  }

  if (isPrivateBrowsingEnabled)
  {
    _privateBrowsingPersistentModuleSection = [(StartPageController *)self _privateBrowsingPersistentModuleSection];
    [array addObject:_privateBrowsingPersistentModuleSection];

    if (self->_privateBrowsingExplanationState != 1 && [WeakRetained startPageControllerActiveTabIsBlank:self])
    {
      _privateBrowsingExplanationSection = [(StartPageController *)self _privateBrowsingExplanationSection];
      [array addObject:_privateBrowsingExplanationSection];
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if ([standardUserDefaults BOOLForKey:*MEMORY[0x277D4A1B0]])
    {
      goto LABEL_17;
    }

    _canShowPrivateRelaySection = [(StartPageController *)self _canShowPrivateRelaySection];

    if (_canShowPrivateRelaySection)
    {
      standardUserDefaults = [(StartPageController *)self _privateRelayPromptInPrivateBrowsingSection];
      [array addObject:standardUserDefaults];
LABEL_17:
    }
  }

  array2 = [MEMORY[0x277CBEB18] array];
  _tabGroupScopedFavoritesSection = [(StartPageController *)self _tabGroupScopedFavoritesSection];
  [array2 safari_addObjectUnlessNil:_tabGroupScopedFavoritesSection];

  v18 = [array2 count];
  if (v18)
  {
    _tabGroupHeadingSection = [(StartPageController *)self _tabGroupHeadingSection];
    cachedTabGroupHeadingSection = self->_cachedTabGroupHeadingSection;
    self->_cachedTabGroupHeadingSection = _tabGroupHeadingSection;

    [array addObject:self->_cachedTabGroupHeadingSection];
    [array addObjectsFromArray:array2];
    if (!startPageSeparatorSection(void)::section)
    {
      v21 = [MEMORY[0x277D4A838] separatorSectionWithIdentifier:*MEMORY[0x277D4A528]];
      v22 = startPageSeparatorSection(void)::section;
      startPageSeparatorSection(void)::section = v21;
    }

    [array addObject:?];
  }

  else
  {
    v23 = self->_cachedTabGroupHeadingSection;
    self->_cachedTabGroupHeadingSection = 0;
  }

  array3 = [MEMORY[0x277CBEB18] array];
  enabledSectionIdentifiers = [(WBSStartPageSectionManager *)self->_startPageSectionManager enabledSectionIdentifiers];
  effectiveUpdatePolicy = [(StartPageController *)self effectiveUpdatePolicy];
  if (effectiveUpdatePolicy)
  {
    if (effectiveUpdatePolicy == 1)
    {
      firstObject = [enabledSectionIdentifiers firstObject];
      v32 = firstObject;
      if (!v18 && firstObject)
      {
        [(StartPageController *)self _appendSectionModelsForIdentifier:firstObject toArray:array3];
      }
    }

    else if (effectiveUpdatePolicy == 2)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v27 = enabledSectionIdentifiers;
      v28 = [v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v28)
      {
        v29 = *v36;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v36 != v29)
            {
              objc_enumerationMutation(v27);
            }

            [(StartPageController *)self _appendSectionModelsForIdentifier:*(*(&v35 + 1) + 8 * i) toArray:array3, v35];
          }

          v28 = [v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v28);
      }
    }
  }

  else
  {
    v33 = self->_cachedSections;

    array3 = v33;
  }

  objc_storeStrong(&self->_cachedSections, array3);
  if ([array3 count])
  {
    [array addObjectsFromArray:array3];
  }

LABEL_42:

  return array;
}

- (void)_appendSectionModelsForIdentifier:(id)identifier toArray:(id)array
{
  identifierCopy = identifier;
  arrayCopy = array;
  if ([identifierCopy isEqualToString:*MEMORY[0x277D4A4B0]])
  {
    _favoritesSection = [(StartPageController *)self _favoritesSection];
    [arrayCopy safari_addObjectUnlessNil:_favoritesSection];
LABEL_3:

    goto LABEL_4;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277D4A4B8]])
  {
    if (([MEMORY[0x277D49A08] is2024SuggestionsEnabled] & 1) == 0)
    {
      _favoritesSection = [(StartPageController *)self _frequentlyVisitedSection];
      [arrayCopy safari_addObjectUnlessNil:_favoritesSection];
      goto LABEL_3;
    }
  }

  else
  {
    if ([identifierCopy isEqualToString:*MEMORY[0x277D4A4E0]] && !self->_showingAsPopover)
    {
      _favoritesSection = [(StartPageController *)self _privacyReportSection];
      [arrayCopy safari_addObjectUnlessNil:_favoritesSection];
      goto LABEL_3;
    }

    if ([identifierCopy isEqualToString:*MEMORY[0x277D4A4C0]] || objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277D4A518]))
    {
      _favoritesSection = [(StartPageController *)self _highlightsSection];
      [arrayCopy safari_addObjectUnlessNil:_favoritesSection];
      goto LABEL_3;
    }

    if (!self->_showingAsPopover && [identifierCopy isEqualToString:*MEMORY[0x277D4A508]])
    {
      _favoritesSection = [(StartPageController *)self _recentlyClosedTabsSection];
      [arrayCopy safari_addObjectUnlessNil:_favoritesSection];
      goto LABEL_3;
    }

    if ([identifierCopy isEqualToString:*MEMORY[0x277D4A510]])
    {
      _favoritesSection = [(StartPageController *)self _siriSuggestionsSection];
      [arrayCopy safari_addObjectUnlessNil:_favoritesSection];
      goto LABEL_3;
    }

    if ([identifierCopy isEqualToString:*MEMORY[0x277D4A500]])
    {
      _favoritesSection = [(StartPageController *)self _readingListSection];
      [arrayCopy safari_addObjectUnlessNil:_favoritesSection];
      goto LABEL_3;
    }

    if ([identifierCopy isEqualToString:*MEMORY[0x277D4A4A8]])
    {
      _favoritesSection = [(StartPageController *)self cloudTabsSections];
      [arrayCopy safari_addObjectsFromArrayUnlessNil:_favoritesSection];
      goto LABEL_3;
    }
  }

LABEL_4:
}

- (BOOL)startPageViewController:(id)controller isSectionExpanded:(id)expanded
{
  controllerCopy = controller;
  expandedCopy = expanded;
  libraryType = self->_libraryType;
  if (libraryType && ![(NSString *)libraryType isEqualToString:@"BookmarksCollection"])
  {
    v9 = 1;
  }

  else if ([expandedCopy expandsModally])
  {
    v9 = 0;
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [standardUserDefaults dictionaryForKey:@"startPageExpansionDictionary"];
    identifier = [expandedCopy identifier];
    v9 = [v11 safari_BOOLForKey:identifier];
  }

  return v9;
}

- (void)startPageViewController:(id)controller toggleSectionExpanded:(id)expanded
{
  expandedCopy = expanded;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (![expandedCopy expandsModally])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [standardUserDefaults dictionaryForKey:@"startPageExpansionDictionary"];
    v16 = [v15 mutableCopy];
    v17 = v16;
    if (v16)
    {
      dictionary = v16;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v19 = dictionary;

    v20 = MEMORY[0x277CCABB0];
    identifier = [expandedCopy identifier];
    v22 = [v20 numberWithBool:{objc_msgSend(v19, "safari_BOOLForKey:", identifier) ^ 1}];
    identifier2 = [expandedCopy identifier];
    [v19 setObject:v22 forKeyedSubscript:identifier2];

    [standardUserDefaults setObject:v19 forKey:@"startPageExpansionDictionary"];
    goto LABEL_11;
  }

  identifier3 = [expandedCopy identifier];
  v7 = *MEMORY[0x277D4A4A8];
  v8 = [identifier3 hasPrefix:*MEMORY[0x277D4A4A8]];

  if (v8)
  {
    identifier4 = [expandedCopy identifier];
    v10 = [identifier4 substringFromIndex:{objc_msgSend(v7, "length") + 1}];
    [WeakRetained presentCloudTabsPickerWithPrimaryDeviceUUID:v10];
  }

  identifier5 = [expandedCopy identifier];
  v12 = [identifier5 isEqualToString:*MEMORY[0x277D4A500]];

  if (v12)
  {
    if ([WeakRetained canShowSidebar])
    {
      viewController = self->_viewController;
      standardUserDefaults = [expandedCopy identifier];
      [(SFStartPageViewController *)viewController showDetailForItemWithIdentifier:standardUserDefaults];
LABEL_11:

      goto LABEL_12;
    }

    [WeakRetained setPresentingModalBookmarksController:1 withExclusiveCollection:@"ReadingListCollection" bookmarkUUIDString:0 animated:1];
  }

LABEL_12:
}

- (id)startPageViewController:(id)controller detailSectionForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    managedBookmarkUUID = [identifierCopy managedBookmarkUUID];
    if (managedBookmarkUUID)
    {
      mEMORY[0x277D28CD8] = [MEMORY[0x277D28CD8] sharedController];
      topLevelManagedBookmarkFolder = [mEMORY[0x277D28CD8] topLevelManagedBookmarkFolder];
      v9 = [topLevelManagedBookmarkFolder findChildBookmarkWithUUID:managedBookmarkUUID];

      _highlightsSection = [(StartPageController *)self _startPageSectionForManagedBookmarksFolder:v9];

      goto LABEL_13;
    }

    v11 = [(StartPageController *)self _bookmarkSectionForBookmark:identifierCopy orList:0 forFavoritesSection:1 forScopedFavoritesSection:0 sectionTitle:0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [identifierCopy isEqualToString:*MEMORY[0x277D4A518]])
    {
      _highlightsSection = [(StartPageController *)self _highlightsSection];
      [_highlightsSection setMaximumNumberOfPages:1];
      goto LABEL_13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [identifierCopy isEqualToString:*MEMORY[0x277D4A500]])
    {
      _highlightsSection = [(StartPageController *)self _readingListSection];
      [_highlightsSection setMaximumNumberOfPages:1];
      goto LABEL_13;
    }

    v11 = emptyBookmarksSection();
  }

  _highlightsSection = v11;
LABEL_13:

  return _highlightsSection;
}

- (id)startPageViewController:(id)controller detailSectionsForItemIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [identifierCopy isEqualToString:*MEMORY[0x277D4A4A8]])
  {
    availableDevices = self->_availableDevices;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__StartPageController_startPageViewController_detailSectionsForItemIdentifier___block_invoke;
    v10[3] = &unk_2781DCC60;
    v10[4] = self;
    v7 = [(NSArray *)availableDevices safari_mapObjectsUsingBlock:v10];
  }

  else
  {
    v8 = emptyBookmarksSection();
    v11[0] = v8;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  return v7;
}

id __79__StartPageController_startPageViewController_detailSectionsForItemIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _recentCloudTabsSectionWithDevice:a2];

  return v2;
}

- (void)startPageViewController:(id)controller didSelectItemWithIdentifier:(id)identifier atGridLocation:(id)location
{
  var1 = location.var1;
  controllerCopy = controller;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = identifierCopy;
    if ([v11 isFolder] && (objc_msgSend(MEMORY[0x277D28F40], "shouldOpenBookmarkFolderAsTabs") & 1) == 0)
    {
      [controllerCopy showDetailForItemWithIdentifier:v11];
    }

    else
    {
      builder = [MEMORY[0x277D28F40] builder];
      v13 = [builder navigationIntentWithBookmark:v11];

      if (v13)
      {
        [WeakRetained dispatchNavigationIntent:v13];
        v14 = [(WebBookmarkCollection *)self->_bookmarkCollection bookmarkIsInFavoritesFolder:v11];
        [(StartPageController *)self _reportBookmarkNavigationAnalytics:v11 withIntent:v13 bookmarkIsInFavoritesFolder:v14];
        if (v14)
        {
          mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
          [mEMORY[0x277D499B8] didSelectFavoritesRow:var1];
        }
      }
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = identifierCopy;
    builder2 = [MEMORY[0x277D28F40] builder];
    pageURL = [v11 pageURL];
    mEMORY[0x277D499B8]3 = [builder2 navigationIntentWithURL:pageURL];

    [WeakRetained dispatchNavigationIntent:mEMORY[0x277D499B8]3];
    mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8]2 didEngageWithStartPageSection:2];
  }

  else
  {
    if ([identifierCopy conformsToProtocol:&unk_2828C44E0])
    {
      builder3 = [MEMORY[0x277D28F40] builder];
      v11 = [builder3 navigationIntentWithCloudTab:identifierCopy];

      [WeakRetained dispatchNavigationIntent:v11];
      mEMORY[0x277D499B8]3 = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8]3 didEngageWithStartPageSection:5];
      goto LABEL_13;
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v21 = getSLHighlightClass(void)::softClass;
    v36 = getSLHighlightClass(void)::softClass;
    if (!getSLHighlightClass(void)::softClass)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = ___ZL19getSLHighlightClassv_block_invoke;
      v32[3] = &unk_2781D60E0;
      v32[4] = &v33;
      ___ZL19getSLHighlightClassv_block_invoke(v32);
      v21 = v34[3];
    }

    v22 = v21;
    _Block_object_dispose(&v33, 8);
    if (objc_opt_isKindOfClass())
    {
      v11 = identifierCopy;
      builder4 = [MEMORY[0x277D28F40] builder];
      mEMORY[0x277D499B8]3 = [builder4 navigationIntentWithHighlight:v11];

      v24 = +[Application sharedApplication];
      highlightManager = [v24 highlightManager];
      [highlightManager sendFeedbackForHighlight:v11 withType:1 inPrivateBrowsing:{objc_msgSend(WeakRetained, "isPrivateBrowsingEnabled")}];

      [WeakRetained dispatchNavigationIntent:mEMORY[0x277D499B8]3];
      mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8]2 didEngageWithStartPageSection:7];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_16;
        }

        builder5 = [MEMORY[0x277D28F40] builder];
        v31 = [(StartPageController *)self _cloudTabItemForIdentifier:identifierCopy];
        v11 = [builder5 navigationIntentWithCloudTab:v31];

        [WeakRetained dispatchNavigationIntent:v11];
        mEMORY[0x277D499B8]3 = [MEMORY[0x277D499B8] sharedLogger];
        [mEMORY[0x277D499B8]3 didEngageWithStartPageSection:5];
        goto LABEL_13;
      }

      v11 = identifierCopy;
      builder6 = [MEMORY[0x277D28F40] builder];
      v27 = MEMORY[0x277CBEBC0];
      v28 = [v11 url];
      v29 = [v27 URLWithString:v28];
      mEMORY[0x277D499B8]3 = [builder6 navigationIntentWithURL:v29];

      [WeakRetained dispatchNavigationIntent:mEMORY[0x277D499B8]3];
      [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
      mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8]2 didEngageWithStartPageSection:8];
    }
  }

LABEL_13:
LABEL_15:

LABEL_16:
}

- (void)startPageViewControllerDidChangeRootViewVisibility:(id)visibility
{
  visibilityCopy = visibility;
  if (([MEMORY[0x277D49A08] is2024SuggestionsEnabled] & 1) == 0)
  {
    [(StartPageController *)self _updateSiriSuggestionsMediator];
  }

  if ([visibilityCopy isShowingRootView])
  {
    frequentlyVisitedSitesController = [(StartPageController *)self frequentlyVisitedSitesController];
    [frequentlyVisitedSitesController recomputeFrequentlyVisitedSitesIfNecessary];
  }
}

- (void)startPageViewController:(id)controller didUpdateSearchPattern:(id)pattern
{
  patternCopy = pattern;
  if ((WBSIsEqual() & 1) == 0)
  {
    v5 = [patternCopy copy];
    searchPattern = self->_searchPattern;
    self->_searchPattern = v5;

    [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
  }
}

- (id)backgroundImageIdentifierForStartPageViewController:(id)controller
{
  startPageBackgroundImageIdentifier = [(StartPageController *)self startPageBackgroundImageIdentifier];

  return startPageBackgroundImageIdentifier;
}

- (BOOL)startPageViewControllerIsPrivateBrowsingEnabled:(id)enabled
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];

  return isPrivateBrowsingEnabled;
}

- (id)startPageViewControllerDefaultProfile:(id)profile
{
  v3 = +[Application sharedApplication];
  tabGroupManager = [v3 tabGroupManager];
  defaultProfile = [tabGroupManager defaultProfile];

  return defaultProfile;
}

- (void)editBookmark:(id)bookmark userInfo:(id)info
{
  bookmarkCopy = bookmark;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained editBookmark:bookmarkCopy];
}

- (void)deleteBookmark:(id)bookmark userInfo:(id)info
{
  bookmarkCopy = bookmark;
  if ([bookmarkCopy subtype] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    tabGroupProvider = [WeakRetained tabGroupProvider];
    uUID = [bookmarkCopy UUID];
    [tabGroupProvider deleteScopedBookmarkWithUUID:uUID completionHandler:0];

LABEL_3:
    goto LABEL_8;
  }

  frequentlyVisitedSitesController = [(StartPageController *)self frequentlyVisitedSitesController];
  v9 = [frequentlyVisitedSitesController bookmarkIsFrequentlyVistedSite:bookmarkCopy];

  if (v9)
  {
    frequentlyVisitedSitesController2 = [(StartPageController *)self frequentlyVisitedSitesController];
    v11 = +[FeatureManager sharedFeatureManager];
    [frequentlyVisitedSitesController2 banFrequentlyVisitedSite:bookmarkCopy inMemoryBookmarkChangeTrackingAvailable:{objc_msgSend(v11, "isInMemoryBookmarkChangeTrackingAvailable")}];
  }

  if (![MEMORY[0x277D7B5A8] lockSync])
  {
    v12 = +[FeatureManager sharedFeatureManager];
    isInMemoryBookmarkChangeTrackingAvailable = [v12 isInMemoryBookmarkChangeTrackingAvailable];

    if (isInMemoryBookmarkChangeTrackingAvailable)
    {
      [(WebBookmarkCollection *)self->_bookmarkCollection deleteBookmarkInMemory:bookmarkCopy];
      WeakRetained = [MEMORY[0x277D499B8] sharedLogger];
      [WeakRetained didDeleteBookmarkInMemory];
    }

    else
    {
      [MEMORY[0x277D28BE0] showLockedDatabaseAlertForAction:0 fromViewController:self->_viewController];
      WeakRetained = [MEMORY[0x277D499B8] sharedLogger];
      [WeakRetained didPreventBookmarkActionWithBookmarkType:1 actionType:1];
    }

    goto LABEL_3;
  }

  [(WebBookmarkCollection *)self->_bookmarkCollection deleteBookmark:bookmarkCopy];
  [MEMORY[0x277D7B5A8] unlockSync];
LABEL_8:
}

- (void)bookmark:(id)bookmark didProduceNavigationIntent:(id)intent userInfo:(id)info
{
  bookmarkCopy = bookmark;
  intentCopy = intent;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained dispatchNavigationIntent:intentCopy];

  [(StartPageController *)self _reportBookmarkNavigationAnalytics:bookmarkCopy withIntent:intentCopy];
}

- (void)bookmark:(id)bookmark shareItems:(id)items userInfo:(id)info
{
  bookmarkCopy = bookmark;
  itemsCopy = items;
  v8 = [objc_alloc(MEMORY[0x277D546D8]) initWithActivityItems:itemsCopy applicationActivities:0];
  [(SFStartPageViewController *)self->_viewController presentViewController:v8 fromItemWithIdentifier:bookmarkCopy];
}

- (void)openRadarProblemURLforFrequentlyVisitedSite:(id)site userInfo:(id)info
{
  siteCopy = site;
  frequentlyVisitedSitesController = [(StartPageController *)self frequentlyVisitedSitesController];
  [frequentlyVisitedSitesController openNewRadarProblemURLForFrequentlyVisitedSite:siteCopy];
}

- (void)_reportBookmarkNavigationAnalytics:(id)analytics withIntent:(id)intent
{
  analyticsCopy = analytics;
  intentCopy = intent;
  [(StartPageController *)self _reportBookmarkNavigationAnalytics:analyticsCopy withIntent:intentCopy bookmarkIsInFavoritesFolder:[(WebBookmarkCollection *)self->_bookmarkCollection bookmarkIsInFavoritesFolder:analyticsCopy]];
}

- (void)_reportBookmarkNavigationAnalytics:(id)analytics withIntent:(id)intent bookmarkIsInFavoritesFolder:(BOOL)folder
{
  analyticsCopy = analytics;
  intentCopy = intent;
  v10 = [(WebBookmarkCollection *)self->_bookmarkCollection bookmarkIsFrequentlyVisitedSite:analyticsCopy];
  frequentlyVisitedSitesController = [(StartPageController *)self frequentlyVisitedSitesController];
  v12 = [frequentlyVisitedSitesController displayIndexOfFrequentlyVisitedSite:analyticsCopy];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__StartPageController__reportBookmarkNavigationAnalytics_withIntent_bookmarkIsInFavoritesFolder___block_invoke;
  v17[3] = &unk_2781DD458;
  v14 = intentCopy;
  folderCopy = folder;
  v18 = v14;
  v19 = mEMORY[0x277D499B8];
  v23 = v10;
  v21 = v12;
  v15 = analyticsCopy;
  v20 = v15;
  v16 = mEMORY[0x277D499B8];
  [v16 performOnAnalyticsQueueWithDelay:0 block:v17];
}

void __97__StartPageController__reportBookmarkNavigationAnalytics_withIntent_bookmarkIsInFavoritesFolder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) policy];
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
LABEL_10:
      v3 = 1;
      goto LABEL_12;
    }

    if (v2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    if (v2 == 5)
    {
      return;
    }

    if (v2 != 4)
    {
      if (v2 != 3)
      {
        v3 = 0;
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v3 = 3;
  }

LABEL_12:
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 40) didSelectFavoriteWithOpenLocation:v3];
    v4 = *(a1 + 40);
    v5 = 0;
LABEL_14:

    [v4 didEngageWithStartPageSection:v5];
    return;
  }

  if (*(a1 + 65) != 1)
  {
    if (![*(a1 + 48) isReadingListItem])
    {
      return;
    }

    v4 = *(a1 + 40);
    v5 = 4;
    goto LABEL_14;
  }

  v6 = objc_alloc(MEMORY[0x277D49A30]);
  v7 = *(a1 + 56);
  v8 = [*(a1 + 48) historyItem];
  v9 = [v8 lastVisitedDate];
  v10 = [*(a1 + 48) frequentlyVisitedSiteScore];
  v11 = [v6 initWithItemPosition:v7 lastVisitedDate:v9 score:v10];

  [*(a1 + 40) didSelectFrequentlyVisitedSiteWithOpenLocation:v3 analyticsPayload:v11];
  [*(a1 + 40) didEngageWithStartPageSection:1];
}

- (void)tabGroupManager:(id)manager didUpdateScopedBookmarkList:(id)list
{
  listCopy = list;
  folderID = [listCopy folderID];
  if (folderID == [(WebBookmarkList *)self->_tabGroupScopedFavoritesList folderID])
  {
    [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
  }
}

- (void)tabGroupManager:(id)manager didUpdateProfileWithIdentifier:(id)identifier difference:(id)difference
{
  managerCopy = manager;
  identifierCopy = identifier;
  _effectiveProfileIdentifier = [(StartPageController *)self _effectiveProfileIdentifier];
  v9 = [identifierCopy isEqual:_effectiveProfileIdentifier];

  if (v9)
  {
    v10 = [managerCopy profileWithIdentifier:identifierCopy];
    profile = [(SFStartPageViewController *)self->_viewController profile];
    v12 = *MEMORY[0x277D4A478];
    v13 = [profile settingForKey:*MEMORY[0x277D4A478]];
    bOOLValue = [v13 BOOLValue];

    v15 = [v10 settingForKey:v12];
    LODWORD(v13) = [v15 BOOLValue];

    v16 = *MEMORY[0x277D4A490];
    v17 = [profile settingForKey:*MEMORY[0x277D4A490]];
    bOOLValue2 = [v17 BOOLValue];

    v19 = [v10 settingForKey:v16];
    bOOLValue3 = [v19 BOOLValue];

    [(SFStartPageViewController *)self->_viewController setProfile:v10];
    if (bOOLValue != v13)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x277D4A928] object:0];
    }

    if (bOOLValue2 != bOOLValue3 || ([v10 customFavoritesFolderServerID], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqual:", self->_lastSeenProfileCustomFavoritesServerID), v22, (v23 & 1) == 0))
    {
      [(StartPageController *)self _sectionsDidChange:0];
    }
  }
}

- (void)cloudTabDeviceProvider:(id)provider didUpdateCloudTabsInProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([MEMORY[0x277D49A08] is2024CloudTabsEnabled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    tabGroupProvider = [WeakRetained tabGroupProvider];
    activeProfileIdentifier = [tabGroupProvider activeProfileIdentifier];
    v8 = WBSIsEqual();

    if (v8)
    {
      [(StartPageController *)self _cloudTabsDidChange];
      [(SFStartPageViewController *)self->_viewController reloadDataAnimatingDifferences:1];
    }
  }
}

void __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_215819000, log, OS_LOG_TYPE_ERROR, "Failed to load background image from item provider: %{public}@", buf, 0xCu);
}

void __91__StartPageController_startPageCustomizationViewController_didSelectCustomBackgroundImage___block_invoke_379_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_215819000, log, OS_LOG_TYPE_ERROR, "Failed to remove temporary background image file: %{public}@", buf, 0xCu);
}

@end