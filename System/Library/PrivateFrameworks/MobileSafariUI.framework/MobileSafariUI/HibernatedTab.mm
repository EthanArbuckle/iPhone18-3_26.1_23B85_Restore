@interface HibernatedTab
- (BOOL)isBlank;
- (BOOL)isReusableForURL:(id)l webClipURL:(id)rL;
- (BrowserController)browserController;
- (CGSize)tabViewSize;
- (HibernatedTab)initWithTabDocument:(id)document;
- (HibernatedTab)initWithWBTab:(id)tab browserController:(id)controller;
- (NSArray)tabCollectionItems;
- (NSString)addressForNewBookmark;
- (NSString)windowIdentifier;
- (NSURL)urlForSharing;
- (NSUUID)uuid;
- (NSUUID)webClipID;
- (SFNavigationBarItem)navigationBarItem;
- (SFTabStateData)tabStateData;
- (SFWebExtensionsController)webExtensionsController;
- (WBProfile)profile;
- (WBSCloudTab)cloudTab;
- (WBSSiriIntelligenceDonorTabData)tabDataForSpotlightDonation;
- (WBSWebExtensionWindow)webExtensionWindow;
- (double)parentTabIDForWebExtensions;
- (id)_localAttributes;
- (id)_titleAllowURLStringFallback:(BOOL)fallback allowUntitled:(BOOL)untitled;
- (id)_titleForStatePersistingForTabGroupTab;
- (id)_titleForStatePersistingForTabStateData;
- (id)currentUnifiedTabBarItem;
- (id)itemForTabCollectionView:(id)view;
- (id)parentTabForWebExtensionContext:(id)context;
- (id)readingListAddress;
- (id)tabUpdateBlock;
- (id)titleForSharing;
- (id)titleForTabCollection;
- (id)urlForCloudTab;
- (id)urlForStatePersisting;
- (id)urlString;
- (int64_t)pageStatus;
- (unint64_t)indexInWindowForWebExtensionContext:(id)context;
- (void)_cancelFaviconUpdate;
- (void)_reconfigureLibraryItemView;
- (void)_searchEngineControllerDidFinishPopulating:(id)populating;
- (void)_setIcon:(id)icon isMonogram:(BOOL)monogram;
- (void)_updateNavigationBarItem;
- (void)activateForWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)clearBrowserController;
- (void)close;
- (void)closeForWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)dealloc;
- (void)displayNewTabOverridePageIfNecessary;
- (void)duplicateUsingConfiguration:(id)configuration forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)goBackForWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)goForwardForWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)loadURL:(id)l forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)loadURL:(id)l title:(id)title skipSyncableTabUpdates:(BOOL)updates;
- (void)reloadFromOrigin:(BOOL)origin forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)resetTabViewItems;
- (void)restoreStateFromTab:(id)tab;
- (void)select;
- (void)setBrowserController:(id)controller;
- (void)setMuted:(BOOL)muted forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)setPinned:(BOOL)pinned;
- (void)setPinned:(BOOL)pinned forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)setReaderModeActive:(BOOL)active forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)setReaderModeShowing:(BOOL)showing forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)setSelected:(BOOL)selected forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)setShareParticipants:(id)participants;
- (void)setUnread:(BOOL)unread;
- (void)setZoomFactor:(double)factor forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)updateAncestryWithParentTab:(id)tab;
- (void)updateTabIcon;
- (void)updateTabIconWithDelay:(double)delay;
- (void)updateTabTitle;
@end

@implementation HibernatedTab

- (HibernatedTab)initWithTabDocument:(id)document
{
  documentCopy = document;
  v28.receiver = self;
  v28.super_class = HibernatedTab;
  v5 = [(HibernatedTab *)&v28 init];
  if (v5)
  {
    tabGroupTab = [documentCopy tabGroupTab];
    v7 = [tabGroupTab url];
    url = v5->_url;
    v5->_url = v7;

    if (v5->_url)
    {
      title = [tabGroupTab title];
    }

    else
    {
      title = 0;
    }

    title = v5->_title;
    v5->_title = title;

    wbTab = v5->_wbTab;
    v5->_wbTab = tabGroupTab;
    v12 = tabGroupTab;

    browserController = [documentCopy browserController];
    [(HibernatedTab *)v5 setBrowserController:browserController];
    unifiedTabBarItem = [documentCopy unifiedTabBarItem];
    unifiedTabBarItem = v5->_unifiedTabBarItem;
    v5->_unifiedTabBarItem = unifiedTabBarItem;

    tabBarItem = [documentCopy tabBarItem];
    tabBarItem = v5->_tabBarItem;
    v5->_tabBarItem = tabBarItem;

    tabCollectionItem = [documentCopy tabCollectionItem];
    tabCollectionItem = v5->_tabCollectionItem;
    v5->_tabCollectionItem = tabCollectionItem;

    [documentCopy idForWebExtensions];
    v5->_idForWebExtensions = v20;
    ancestorUUIDs = [documentCopy ancestorUUIDs];
    ancestorUUIDs = v5->_ancestorUUIDs;
    v5->_ancestorUUIDs = ancestorUUIDs;

    [documentCopy lastViewedTime];
    v5->_lastViewedTime = v23;
    shareParticipants = [documentCopy shareParticipants];
    shareParticipants = v5->_shareParticipants;
    v5->_shareParticipants = shareParticipants;

    -[HibernatedTab setUnread:](v5, "setUnread:", [documentCopy isUnread]);
    [(HibernatedTab *)v5 restoreStateFromTab:v12];

    v26 = v5;
  }

  return v5;
}

- (HibernatedTab)initWithWBTab:(id)tab browserController:(id)controller
{
  tabCopy = tab;
  controllerCopy = controller;
  v34.receiver = self;
  v34.super_class = HibernatedTab;
  v9 = [(HibernatedTab *)&v34 init];
  if (v9)
  {
    v10 = [tabCopy url];
    url = v9->_url;
    v9->_url = v10;

    if (v9->_url)
    {
      title = [tabCopy title];
    }

    else
    {
      title = 0;
    }

    title = v9->_title;
    v9->_title = title;

    objc_storeStrong(&v9->_wbTab, tab);
    [(HibernatedTab *)v9 setBrowserController:controllerCopy];
    v14 = objc_alloc_init(UnifiedTabBarItem);
    unifiedTabBarItem = v9->_unifiedTabBarItem;
    v9->_unifiedTabBarItem = v14;

    uuid = [(HibernatedTab *)v9 uuid];
    [(UnifiedTabBarItem *)v9->_unifiedTabBarItem setUUID:uuid];

    [(SFUnifiedTabBarItem *)v9->_unifiedTabBarItem setMenuButtonConfigurator:controllerCopy];
    mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
    showRectangularTabsInSeparateBar = [mEMORY[0x277D28C70] showRectangularTabsInSeparateBar];

    if (showRectangularTabsInSeparateBar)
    {
      v19 = objc_alloc_init(TabBarItem);
      tabBarItem = v9->_tabBarItem;
      v9->_tabBarItem = v19;

      uuid2 = [(HibernatedTab *)v9 uuid];
      [(TabBarItem *)v9->_tabBarItem setUUID:uuid2];
    }

    [(HibernatedTab *)v9 resetTabViewItems];
    [MEMORY[0x277D4A8B0] nextTabID];
    v9->_idForWebExtensions = v22;
    localAttributes = [tabCopy localAttributes];
    ancestorTabUUIDs = [localAttributes ancestorTabUUIDs];
    v25 = [ancestorTabUUIDs safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_33];
    ancestorUUIDs = v9->_ancestorUUIDs;
    v9->_ancestorUUIDs = v25;

    lastVisitTime = [localAttributes lastVisitTime];
    if (lastVisitTime)
    {
      lastVisitTime2 = [localAttributes lastVisitTime];
      [lastVisitTime2 timeIntervalSinceReferenceDate];
      v9->_lastViewedTime = v29;
    }

    else
    {
      v9->_lastViewedTime = -1.0;
    }

    shareParticipants = v9->_shareParticipants;
    v9->_shareParticipants = MEMORY[0x277CBEBF8];

    if ([tabCopy isShared])
    {
      v31 = [tabCopy isMarkedAsRead] ^ 1;
    }

    else
    {
      v31 = 0;
    }

    [(HibernatedTab *)v9 setUnread:v31];
    [(HibernatedTab *)v9 restoreStateFromTab:tabCopy];
    v32 = v9;
  }

  return v9;
}

id __49__HibernatedTab_initWithWBTab_browserController___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (void)dealloc
{
  [(HibernatedTab *)self _cancelFaviconUpdate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HibernatedTab;
  [(HibernatedTab *)&v4 dealloc];
}

- (void)setBrowserController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (WeakRetained != obj)
  {
    tabController = [WeakRetained tabController];
    [tabController willLoseOwnershipOfTab:self];

    objc_storeWeak(&self->_browserController, obj);
    tabController2 = [obj tabController];
    [tabController2 didGainOwnershipOfTab:self];
  }
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    uuidString = [(HibernatedTab *)self uuidString];
    v6 = [v4 initWithUUIDString:uuidString];
    v7 = self->_uuid;
    self->_uuid = v6;

    uuid = self->_uuid;
  }

  return uuid;
}

- (BOOL)isBlank
{
  url = self->_url;
  if (!url)
  {
    return 1;
  }

  v3 = extensionOverridenStartPageURLForTab(self);
  v4 = [(NSURL *)url isEqual:v3];

  return v4;
}

- (int64_t)pageStatus
{
  if (self->_showingErrorPage)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)setPinned:(BOOL)pinned
{
  if (self->_pinned != pinned)
  {
    pinnedCopy = pinned;
    self->_pinned = pinned;
    [(TabBarItem *)self->_tabBarItem setPinned:?];
    [(UnifiedTabBarItem *)self->_unifiedTabBarItem setPinned:pinnedCopy];
    [(TabDocumentCollectionItem *)self->_tabCollectionItem setPinned:pinnedCopy];
    if (pinnedCopy)
    {
      objc_storeStrong(&self->_pinnedURL, self->_url);
      title = [(HibernatedTab *)self title];
    }

    else
    {
      pinnedURL = self->_pinnedURL;
      self->_pinnedURL = 0;

      title = 0;
    }

    pinnedTitle = self->_pinnedTitle;
    self->_pinnedTitle = title;
  }
}

- (void)loadURL:(id)l title:(id)title skipSyncableTabUpdates:(BOOL)updates
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  self->_skipSyncableTabUpdates = updates;
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v11 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v19 = 134218499;
    selfCopy = self;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2117;
    v24 = lCopy;
    _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_INFO, "Store deferred navigation: (hibernated tab: %p) %{sensitive, mask.hash}@", &v19, 0x20u);
  }

  self->_hasDeferredNavigation = 1;
  v12 = [lCopy copy];
  url = self->_url;
  self->_url = v12;

  v14 = [titleCopy copy];
  title = self->_title;
  self->_title = v14;

  [(HibernatedTab *)self updateTabTitle];
  [(HibernatedTab *)self updateTabIcon];
  tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
  uuid = [(HibernatedTab *)self uuid];
  [tabCollectionViewProvider removeSnapshotForTabWithUUID:uuid];

  tabController = [WeakRetained tabController];
  [tabController updateWBTabWithTab:self notify:0 persist:0];
}

- (void)restoreStateFromTab:(id)tab
{
  tabCopy = tab;
  localAttributes = [tabCopy localAttributes];
  queuedNavigation = [localAttributes queuedNavigation];
  sessionStateData = [localAttributes sessionStateData];

  if (sessionStateData && queuedNavigation)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [queuedNavigation objectForKeyedSubscript:@"url"];
    v9 = [v7 URLWithString:v8];

    v10 = [queuedNavigation objectForKeyedSubscript:@"title"];
    [(HibernatedTab *)self loadURL:v9 title:v10 skipSyncableTabUpdates:0];
  }

  -[HibernatedTab setPinned:](self, "setPinned:", [tabCopy isPinned]);
  pinnedTitle = [tabCopy pinnedTitle];
  v12 = [pinnedTitle copy];
  pinnedTitle = self->_pinnedTitle;
  self->_pinnedTitle = v12;

  pinnedURL = [tabCopy pinnedURL];
  v15 = [pinnedURL copy];
  pinnedURL = self->_pinnedURL;
  self->_pinnedURL = v15;

  wbTab = self->_wbTab;
  self->_wbTab = tabCopy;
}

- (id)tabUpdateBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__HibernatedTab_tabUpdateBlock__block_invoke;
  v4[3] = &unk_2781D8AC8;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __31__HibernatedTab_tabUpdateBlock__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[24] == 1)
    {
      [v8 setPinned:WeakRetained[73] title:*(WeakRetained + 14) url:*(WeakRetained + 15)];
    }

    else
    {
      WeakRetained[24] = 1;
      v5 = [WeakRetained _localAttributes];
      [v8 setLocalAttributes:v5];

      v6 = [v4 _titleForStatePersistingForTabGroupTab];
      v7 = [v4 urlForStatePersisting];
      if (v7 && v4[25] == 1)
      {
        [v8 setLocalTitle:v6];
        [v8 setLocalURL:v7];
      }

      [v8 setPinned:v4[73] title:*(v4 + 14) url:*(v4 + 15)];
    }
  }
}

- (id)_localAttributes
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_lastViewedTime];
  if (self->_hasDeferredNavigation)
  {
    v12[0] = @"url";
    absoluteString = [(NSURL *)self->_url absoluteString];
    v5 = absoluteString;
    title = &stru_2827BF158;
    if (absoluteString)
    {
      v7 = absoluteString;
    }

    else
    {
      v7 = &stru_2827BF158;
    }

    v12[1] = @"title";
    v13[0] = v7;
    if (self->_title)
    {
      title = self->_title;
    }

    v13[1] = title;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v8 = 0;
  }

  localAttributes = [(WBTab *)self->_wbTab localAttributes];
  v10 = [localAttributes localAttributesWithLastVisitTime:v3 queuedNavigation:v8];

  return v10;
}

- (WBSCloudTab)cloudTab
{
  v3 = objc_alloc(MEMORY[0x277D49ED0]);
  urlForCloudTab = [(HibernatedTab *)self urlForCloudTab];
  v5 = [v3 initWithURL:urlForCloudTab];

  uuid = [(HibernatedTab *)self uuid];
  [v5 setUuid:uuid];

  titleForCloudTab = [(HibernatedTab *)self titleForCloudTab];
  [v5 setTitle:titleForCloudTab];

  localAttributes = [(WBTab *)self->_wbTab localAttributes];
  [v5 setShowingReader:{objc_msgSend(localAttributes, "isShowingReader")}];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  windowState = [WeakRetained windowState];
  sceneID = [windowState sceneID];
  [v5 setSceneID:sceneID];

  [v5 setLastViewedTime:self->_lastViewedTime];
  v12 = [objc_alloc(MEMORY[0x277D49EB8]) initWithParameters:v5];

  return v12;
}

- (SFTabStateData)tabStateData
{
  v3 = objc_alloc_init(MEMORY[0x277D28DC0]);
  urlForStatePersisting = [(HibernatedTab *)self urlForStatePersisting];
  safari_originalDataAsString = [urlForStatePersisting safari_originalDataAsString];
  v6 = safari_originalDataAsString;
  v7 = &stru_2827BF158;
  if (safari_originalDataAsString)
  {
    v7 = safari_originalDataAsString;
  }

  v8 = v7;

  uuid = [(HibernatedTab *)self uuid];
  uUIDString = [uuid UUIDString];
  [v3 setUUIDString:uUIDString];

  _titleForStatePersistingForTabStateData = [(HibernatedTab *)self _titleForStatePersistingForTabStateData];
  [v3 setTitle:_titleForStatePersistingForTabStateData];

  [v3 setUrl:v8];
  localAttributes = [(WBTab *)self->_wbTab localAttributes];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (self->_hasDeferredNavigation)
  {
    [v3 setUserVisibleURL:v8];
    [v3 setLastViewedTime:-1.0];
    [v3 setReadingListBookmarkID:0];
    [v3 setShowingReader:0];
    [v3 setReaderViewTopScrollOffset:0];
    [v3 setDisplayingStandaloneImage:0];
    wasOpenedFromLink = 0;
  }

  else
  {
    if ([urlForStatePersisting isFileURL])
    {
      urlString = [(HibernatedTab *)self urlString];
      [v3 setUserVisibleURL:urlString];
    }

    else
    {
      [v3 setUserVisibleURL:v8];
    }

    [(HibernatedTab *)self lastActivationTime];
    [v3 setLastViewedTime:?];
    [v3 setReadingListBookmarkID:{objc_msgSend(localAttributes, "readingListBookmarkID")}];
    [v3 setShowingReader:{objc_msgSend(localAttributes, "isShowingReader")}];
    [localAttributes readerViewTopScrollOffset];
    [v3 setReaderViewTopScrollOffset:v16];
    [v3 setDisplayingStandaloneImage:{objc_msgSend(localAttributes, "isDisplayingStandaloneImage")}];
    wasOpenedFromLink = [localAttributes wasOpenedFromLink];
  }

  [v3 setWasOpenedFromLink:wasOpenedFromLink];
  [v3 setPrivateBrowsing:{-[HibernatedTab isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}];
  sessionStateData = [localAttributes sessionStateData];
  [v3 setSessionStateData:sessionStateData];

  uUID = [WeakRetained UUID];
  uUIDString2 = [uUID UUIDString];
  [v3 setOwningBrowserWindowUUIDString:uUIDString2];

  [v3 setOrderIndex:{objc_msgSend(WeakRetained, "orderIndexForTab:", self)}];
  sessionStateData2 = [v3 sessionStateData];
  [v3 setUncompressedSessionStateDataSize:{objc_msgSend(sessionStateData2, "length")}];

  tabGroupUUID = [(WBTab *)self->_wbTab tabGroupUUID];
  [v3 setTabGroupUUID:tabGroupUUID];

  effectiveProfileIdentifier = [WeakRetained effectiveProfileIdentifier];
  [v3 setProfileIdentifier:effectiveProfileIdentifier];

  return v3;
}

- (void)updateAncestryWithParentTab:(id)tab
{
  tabCopy = tab;
  ancestorUUIDs = [tabCopy ancestorUUIDs];
  uuid = [tabCopy uuid];

  v6 = [ancestorUUIDs arrayByAddingObject:uuid];
  ancestorUUIDs = self->_ancestorUUIDs;
  self->_ancestorUUIDs = v6;
}

- (SFNavigationBarItem)navigationBarItem
{
  cachedNavigationBarItem = self->_cachedNavigationBarItem;
  if (!cachedNavigationBarItem)
  {
    v4 = objc_alloc_init(MEMORY[0x277D28CE8]);
    v5 = self->_cachedNavigationBarItem;
    self->_cachedNavigationBarItem = v4;

    [(HibernatedTab *)self _updateNavigationBarItem];
    cachedNavigationBarItem = self->_cachedNavigationBarItem;
  }

  return cachedNavigationBarItem;
}

- (void)_updateNavigationBarItem
{
  if ([(HibernatedTab *)self isBlank])
  {
    v3 = 0;
  }

  else if ([MEMORY[0x277D4A888] isLockdownModeEnabledForSafari])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(SFNavigationBarItem *)self->_cachedNavigationBarItem setLockdownModeAnnotation:v3];
  urlString = [(HibernatedTab *)self urlString];
  if ([(NSURL *)self->_url safari_isSafariWebExtensionURL])
  {

    urlString = 0;
  }

  mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
  v5 = [mEMORY[0x277CDB8A8] defaultSearchEngineIfPopulatedForPrivateBrowsing:{-[HibernatedTab isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}];
  if (!v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = *MEMORY[0x277CDBA28];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CDBA28] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__searchEngineControllerDidFinishPopulating_ name:v7 object:0];
  }

  v9 = [v5 userVisibleQueryFromSearchURL:self->_url];
  v10 = [urlString safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
  if (([(NSURL *)self->_url safari_isDataURL]& 1) != 0)
  {
    v11 = @"data:";
    goto LABEL_21;
  }

  if ([(NSURL *)self->_url safari_looksLikeAboutBlankURL])
  {
    v12 = MEMORY[0x277D4A6E0];
  }

  else
  {
    if (![(NSURL *)self->_url safari_looksLikeAboutSrcdocURL])
    {
      if (v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v10;
      }

      goto LABEL_20;
    }

    v12 = MEMORY[0x277D4A0D0];
  }

  v13 = *v12;
LABEL_20:
  v11 = v13;
LABEL_21:
  [(SFNavigationBarItem *)self->_cachedNavigationBarItem setText:v11 textWhenExpanded:0 startIndex:0x7FFFFFFFFFFFFFFFLL];
  [(SFNavigationBarItem *)self->_cachedNavigationBarItem setShowsPageFormatButton:self->_url != 0];
  v14 = v11 == v9 || self->_url == 0;
  [(SFNavigationBarItem *)self->_cachedNavigationBarItem setShowsSearchIndicator:v14];
}

- (void)_searchEngineControllerDidFinishPopulating:(id)populating
{
  [(HibernatedTab *)self _updateNavigationBarItem];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CDBA28] object:0];
}

- (void)clearBrowserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  [tabController willLoseOwnershipOfTab:self];

  objc_storeWeak(&self->_browserController, 0);
}

- (BOOL)isReusableForURL:(id)l webClipURL:(id)rL
{
  rLCopy = rL;
  url = self->_url;
  lCopy = l;
  _webkit_URLByRemovingFragment = [(NSURL *)url _webkit_URLByRemovingFragment];
  LOBYTE(url) = [_webkit_URLByRemovingFragment isEqual:lCopy];

  if (url)
  {
    v10 = 1;
  }

  else if (rLCopy)
  {
    v10 = [_webkit_URLByRemovingFragment isEqual:rLCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSArray)tabCollectionItems
{
  v6[2] = *MEMORY[0x277D85DE8];
  unifiedTabBarItem = self->_unifiedTabBarItem;
  v6[0] = self->_tabCollectionItem;
  if (unifiedTabBarItem)
  {
    tabBarItem = [(HibernatedTab *)self currentUnifiedTabBarItem];
  }

  else
  {
    tabBarItem = self->_tabBarItem;
  }

  v6[1] = tabBarItem;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  if (unifiedTabBarItem)
  {
  }

  return v4;
}

- (id)currentUnifiedTabBarItem
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabBarManager = [WeakRetained tabBarManager];
  displayMode = [tabBarManager displayMode];

  unifiedTabBarItem = self->_unifiedTabBarItem;
  if (displayMode == 2)
  {
    secondaryItem = [(UnifiedTabBarItem *)unifiedTabBarItem secondaryItem];
  }

  else
  {
    secondaryItem = unifiedTabBarItem;
  }

  return secondaryItem;
}

- (void)resetTabViewItems
{
  v3 = objc_alloc_init(TabDocumentCollectionItem);
  tabCollectionItem = self->_tabCollectionItem;
  self->_tabCollectionItem = v3;

  uuid = [(HibernatedTab *)self uuid];
  [(TabDocumentCollectionItem *)self->_tabCollectionItem setUUID:uuid];

  [(TabDocumentCollectionItem *)self->_tabCollectionItem setPinned:self->_pinned];

  [(HibernatedTab *)self updateTabTitle];
}

- (id)itemForTabCollectionView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tabBarItem = self->_tabBarItem;
LABEL_7:
    secondaryItem = tabBarItem;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    tabBarItem = self->_tabCollectionItem;
    goto LABEL_7;
  }

  isStandalone = [viewCopy isStandalone];
  unifiedTabBarItem = self->_unifiedTabBarItem;
  if (isStandalone)
  {
    secondaryItem = [(UnifiedTabBarItem *)unifiedTabBarItem secondaryItem];
  }

  else
  {
    secondaryItem = unifiedTabBarItem;
  }

LABEL_8:
  v9 = secondaryItem;

  return v9;
}

- (void)updateTabIconWithDelay:(double)delay
{
  [(HibernatedTab *)self _cancelFaviconUpdate];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CBEBB8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HibernatedTab_updateTabIconWithDelay___block_invoke;
  v7[3] = &unk_2781D8AF0;
  objc_copyWeak(&v8, &location);
  v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:delay];
  objc_storeWeak(&self->_updateFaviconTimer, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __40__HibernatedTab_updateTabIconWithDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTabIcon];
}

- (void)_cancelFaviconUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateFaviconTimer);
  if (([WeakRetained isValid] & 1) != 0 || self->_faviconToken)
  {
    cachedURLForIconUpdate = self->_cachedURLForIconUpdate;
    self->_cachedURLForIconUpdate = 0;
  }

  [WeakRetained invalidate];
  mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  [mEMORY[0x277D28F58] cancelRequestWithToken:self->_faviconToken];

  faviconToken = self->_faviconToken;
  self->_faviconToken = 0;
}

- (void)updateTabIcon
{
  p_cachedURLForIconUpdate = &self->_cachedURLForIconUpdate;
  if (([(NSURL *)self->_url isEqual:self->_cachedURLForIconUpdate]& 1) != 0)
  {
    return;
  }

  [(HibernatedTab *)self _cancelFaviconUpdate];
  objc_storeStrong(p_cachedURLForIconUpdate, self->_url);
  url = self->_url;
  if (url)
  {
    absoluteString = [(NSURL *)url absoluteString];
    v6 = [absoluteString isEqualToString:@"about:blank"];

    if (!v6)
    {
      if (![(NSURL *)self->_url safari_isSafariWebExtensionURL])
      {
        v11 = [objc_alloc(MEMORY[0x277D4A730]) initWithURL:self->_url iconSize:2 fallbackType:+[TabIconAndTitleView defaultTabIconSize]()];
        objc_initWeak(&location, self);
        mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __30__HibernatedTab_updateTabIcon__block_invoke;
        v16[3] = &unk_2781D5D78;
        objc_copyWeak(&v17, &location);
        v13 = [mEMORY[0x277D28F58] registerRequest:v11 priority:2 responseHandler:v16];
        faviconToken = self->_faviconToken;
        self->_faviconToken = v13;

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);

        return;
      }

      webExtensionsController = [(HibernatedTab *)self webExtensionsController];
      host = [(NSURL *)self->_url host];
      v15 = [webExtensionsController webExtensionForBaseURIHost:host];

      icon = [v15 icon];
      [(HibernatedTab *)self _setIcon:icon isMonogram:0];

      goto LABEL_7;
    }

    fallbackFavicon = [MEMORY[0x277D28F20] fallbackFavicon];
  }

  else
  {
    fallbackFavicon = [MEMORY[0x277D28F20] favoritesFavicon];
  }

  v15 = fallbackFavicon;
  [(HibernatedTab *)self _setIcon:fallbackFavicon isMonogram:0];
LABEL_7:
}

void __30__HibernatedTab_updateTabIcon__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v9;
    v5 = [v4 favicon];
    v6 = [WeakRetained browserController];
    v7 = [v6 rootViewController];
    v8 = [v7 tabBar];

    if (v8)
    {
      [v5 sf_registerFaviconForDarkUserInterfaceStyle];
    }

    [WeakRetained _setIcon:v5 isMonogram:{objc_msgSend(v4, "faviconType") == 0}];
  }
}

- (void)_setIcon:(id)icon isMonogram:(BOOL)monogram
{
  monogramCopy = monogram;
  tabBarItem = self->_tabBarItem;
  iconCopy = icon;
  [(TabBarItem *)tabBarItem setIcon:iconCopy];
  [(UnifiedTabBarItem *)self->_unifiedTabBarItem setIcon:iconCopy];
  if (monogramCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = iconCopy;
  }

  [(TabDocumentCollectionItem *)self->_tabCollectionItem setIcon:v7];
}

- (void)updateTabTitle
{
  titleForTabCollection = [(HibernatedTab *)self titleForTabCollection];
  [(TabBarItem *)self->_tabBarItem setTitle:titleForTabCollection];
  [(UnifiedTabBarItem *)self->_unifiedTabBarItem setTitle:titleForTabCollection];
  [(TabDocumentCollectionItem *)self->_tabCollectionItem setTitle:titleForTabCollection];
}

- (void)setUnread:(BOOL)unread
{
  if (self->_unread != unread)
  {
    unreadCopy = unread;
    self->_unread = unread;
    [(TabBarItem *)self->_tabBarItem setUnread:?];
    [(SFUnifiedTabBarItem *)self->_unifiedTabBarItem setUnread:unreadCopy];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained updateTabOverviewButton];

    [(HibernatedTab *)self _reconfigureLibraryItemView];
  }
}

- (void)setShareParticipants:(id)participants
{
  participantsCopy = participants;
  if (![(NSArray *)self->_shareParticipants isEqualToArray:?])
  {
    v4 = [participantsCopy copy];
    shareParticipants = self->_shareParticipants;
    self->_shareParticipants = v4;

    [(TabBarItem *)self->_tabBarItem setShareParticipants:participantsCopy];
    [(SFUnifiedTabBarItem *)self->_unifiedTabBarItem setShareParticipants:participantsCopy];
    [(HibernatedTab *)self _reconfigureLibraryItemView];
  }
}

- (void)_reconfigureLibraryItemView
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  libraryController = [WeakRetained libraryController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuidString = [(HibernatedTab *)self uuidString];
    [libraryController reconfigureTabCellWithUUIDString:uuidString];
  }
}

- (NSUUID)webClipID
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  localAttributes = [(WBTab *)self->_wbTab localAttributes];
  webClipIDString = [localAttributes webClipIDString];
  v6 = [v3 initWithUUIDString:webClipIDString];

  return v6;
}

- (id)readingListAddress
{
  localAttributes = [(WBTab *)self->_wbTab localAttributes];
  readingListBookmarkID = [localAttributes readingListBookmarkID];

  if ([(NSURL *)self->_url isFileURL])
  {
    v5 = readingListBookmarkID == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    address = 0;
  }

  else
  {
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v7 = [mainBookmarkCollection bookmarkWithID:readingListBookmarkID];
    address = [v7 address];
  }

  return address;
}

- (id)urlString
{
  readingListAddress = [(HibernatedTab *)self readingListAddress];
  v4 = readingListAddress;
  if (readingListAddress)
  {
    safari_userVisibleStringConsideringLongURLs = readingListAddress;
  }

  else
  {
    safari_userVisibleStringConsideringLongURLs = [(NSURL *)self->_url safari_userVisibleStringConsideringLongURLs];
  }

  v6 = safari_userVisibleStringConsideringLongURLs;

  return v6;
}

- (NSString)addressForNewBookmark
{
  urlForSharing = [(HibernatedTab *)self urlForSharing];
  safari_originalDataAsString = [urlForSharing safari_originalDataAsString];

  return safari_originalDataAsString;
}

- (id)urlForCloudTab
{
  if ([(NSURL *)self->_url isFileURL])
  {
    urlString = [(HibernatedTab *)self urlString];
    safari_bestURLForUserTypedString = [urlString safari_bestURLForUserTypedString];
  }

  else
  {
    safari_bestURLForUserTypedString = self->_url;
  }

  return safari_bestURLForUserTypedString;
}

- (NSURL)urlForSharing
{
  readingListAddress = [(HibernatedTab *)self readingListAddress];
  if (readingListAddress)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:readingListAddress];
  }

  else
  {
    v4 = self->_url;
  }

  v5 = v4;
  titleForSharing = [(HibernatedTab *)self titleForSharing];
  if (titleForSharing)
  {
    [(NSURL *)v5 _setTitle:titleForSharing];
  }

  return v5;
}

- (id)urlForStatePersisting
{
  v20 = *MEMORY[0x277D85DE8];
  hasDeferredNavigation = self->_hasDeferredNavigation;
  url = self->_url;
  if (hasDeferredNavigation)
  {
    v5 = url;
  }

  else
  {
    if ([(NSURL *)url safari_isSafariWebExtensionURL])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = +[Application sharedApplication];
      allWebExtensionsControllers = [v6 allWebExtensionsControllers];

      v8 = [allWebExtensionsControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(allWebExtensionsControllers);
            }

            v12 = [*(*(&v15 + 1) + 8 * i) _persistentStateURLForExtensionURL:self->_url];
            if (v12)
            {
              v13 = v12;

              goto LABEL_15;
            }
          }

          v9 = [allWebExtensionsControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    v5 = self->_url;
  }

  v13 = v5;
LABEL_15:

  return v13;
}

- (id)titleForTabCollection
{
  localAttributes = [(WBTab *)self->_wbTab localAttributes];
  isDisplayingStandaloneImage = [localAttributes isDisplayingStandaloneImage];

  if (isDisplayingStandaloneImage)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(HibernatedTab *)self _titleAllowURLStringFallback:1 allowUntitled:1];
  }

  return v5;
}

- (id)titleForSharing
{
  if (self->_showingErrorPage)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(HibernatedTab *)self _titleAllowURLStringFallback:0 allowUntitled:0, v2];
  }

  return v4;
}

- (id)_titleForStatePersistingForTabGroupTab
{
  v3 = [(HibernatedTab *)self _titleAllowURLStringFallback:0 allowUntitled:0];
  if (![v3 length])
  {
    url = self->_url;
    if (url)
    {
      [(NSURL *)url safari_userVisibleHostWithoutWWWSubdomain];
    }

    else
    {
      _WBSLocalizedString();
    }
    v5 = ;

    v3 = v5;
  }

  v6 = v3;

  return v3;
}

- (id)_titleForStatePersistingForTabStateData
{
  title = self->_title;
  if (self->_hasDeferredNavigation)
  {
    v3 = title;
  }

  else
  {
    if (title)
    {
      safari_lockRelatedEmojiCharacterSet = [MEMORY[0x277CCA900] safari_lockRelatedEmojiCharacterSet];
      v5 = [(NSString *)title safari_stringByRemovingCharactersInSet:safari_lockRelatedEmojiCharacterSet];

      goto LABEL_7;
    }

    v3 = [(HibernatedTab *)self _titleAllowURLStringFallback:1 allowUntitled:0];
  }

  v5 = v3;
LABEL_7:

  return v5;
}

- (id)_titleAllowURLStringFallback:(BOOL)fallback allowUntitled:(BOOL)untitled
{
  untitledCopy = untitled;
  fallbackCopy = fallback;
  if ([(NSString *)self->_title length])
  {
    v7 = self->_title;
LABEL_3:
    v8 = v7;
    goto LABEL_4;
  }

  if (fallbackCopy && ([(HibernatedTab *)self urlString], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    urlString = [(HibernatedTab *)self urlString];
    v8 = [urlString safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:1 simplifiedStringOffset:0];
  }

  else
  {
    if (untitledCopy)
    {
      v7 = _WBSLocalizedString();
      goto LABEL_3;
    }

    v8 = &stru_2827BF158;
  }

LABEL_4:

  return v8;
}

- (NSString)windowIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  uUID = [WeakRetained UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (SFWebExtensionsController)webExtensionsController
{
  v3 = +[Application sharedApplication];
  isPrivateBrowsingEnabled = [(HibernatedTab *)self isPrivateBrowsingEnabled];
  profile = [(HibernatedTab *)self profile];
  v6 = [v3 webExtensionsControllerForTabWithPrivateBrowsingEnabled:isPrivateBrowsingEnabled profile:profile];

  return v6;
}

- (double)parentTabIDForWebExtensions
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  v5 = [tabController originatingTabForTab:self];

  if (v5)
  {
    [v5 idForWebExtensions];
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x277D4A9C0];
  }

  return v7;
}

- (CGSize)tabViewSize
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained webExtensionTabSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (WBSWebExtensionWindow)webExtensionWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained webExtensionWindowForTab:self];

  return v4;
}

- (void)displayNewTabOverridePageIfNecessary
{
  v3 = extensionOverridenStartPageURLForTab(self);
  if (v3)
  {
    v4 = v3;
    objc_storeStrong(&self->_url, v3);
    v3 = v4;
  }
}

- (WBProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  effectiveProfile = [WeakRetained effectiveProfile];

  return effectiveProfile;
}

- (void)close
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  [tabController closeTab:self animated:1];

  mEMORY[0x277D4A060] = [MEMORY[0x277D4A060] sharedInstance];
  [mEMORY[0x277D4A060] setTabNeedsSpotlightDeletion:self];
}

- (void)select
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  [tabController setActiveTab:self];
}

- (unint64_t)indexInWindowForWebExtensionContext:(id)context
{
  webExtensionWindow = [(HibernatedTab *)self webExtensionWindow];
  v5 = webExtensionWindow;
  if (webExtensionWindow)
  {
    webExtensionTabs = [webExtensionWindow webExtensionTabs];
    v7 = [webExtensionTabs indexOfObjectIdenticalTo:self];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)parentTabForWebExtensionContext:(id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  v6 = [tabController originatingTabForTab:self];

  return v6;
}

- (void)setPinned:(BOOL)pinned forWebExtensionContext:(id)context completionHandler:(id)handler
{
  pinnedCopy = pinned;
  handlerCopy = handler;
  [(HibernatedTab *)self setPinned:pinnedCopy];
  handlerCopy[2](handlerCopy, 0);
}

- (void)setReaderModeShowing:(BOOL)showing forWebExtensionContext:(id)context completionHandler:(id)handler
{
  showingCopy = showing;
  handlerCopy = handler;
  if ([(HibernatedTab *)self isInReaderMode]!= showingCopy)
  {
    [(HibernatedTab *)self toggleReader];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)setReaderModeActive:(BOOL)active forWebExtensionContext:(id)context completionHandler:(id)handler
{
  activeCopy = active;
  handlerCopy = handler;
  if ([(HibernatedTab *)self isInReaderMode]!= activeCopy)
  {
    [(HibernatedTab *)self toggleReader];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)setMuted:(BOOL)muted forWebExtensionContext:(id)context completionHandler:(id)handler
{
  mutedCopy = muted;
  handlerCopy = handler;
  if (mutedCopy)
  {
    [(HibernatedTab *)self mute];
  }

  else
  {
    [(HibernatedTab *)self unmute];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)setZoomFactor:(double)factor forWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(HibernatedTab *)self setZoomFactor:factor];
  handlerCopy[2](handlerCopy, 0);
}

- (void)loadURL:(id)l forWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(HibernatedTab *)self loadURL:l];
  handlerCopy[2](handlerCopy, 0);
}

- (void)reloadFromOrigin:(BOOL)origin forWebExtensionContext:(id)context completionHandler:(id)handler
{
  originCopy = origin;
  handlerCopy = handler;
  if (originCopy)
  {
    [(HibernatedTab *)self reloadFromOrigin];
  }

  else
  {
    [(HibernatedTab *)self reload];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)goBackForWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(HibernatedTab *)self goBack];
  handlerCopy[2](handlerCopy, 0);
}

- (void)goForwardForWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(HibernatedTab *)self goForward];
  handlerCopy[2](handlerCopy, 0);
}

- (void)activateForWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(HibernatedTab *)self select];
  handlerCopy[2](handlerCopy, 0);
}

- (void)setSelected:(BOOL)selected forWebExtensionContext:(id)context completionHandler:(id)handler
{
  selectedCopy = selected;
  handlerCopy = handler;
  if (selectedCopy)
  {
    [(HibernatedTab *)self select];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)duplicateUsingConfiguration:(id)configuration forWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  v9 = [tabController duplicateTab:self];
  (*(handler + 2))(handlerCopy, v9, 0);
}

- (void)closeForWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(HibernatedTab *)self close];
  handlerCopy[2](handlerCopy, 0);
}

- (WBSSiriIntelligenceDonorTabData)tabDataForSpotlightDonation
{
  v2 = objc_alloc_init(MEMORY[0x277D4A078]);

  return v2;
}

- (BrowserController)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

@end