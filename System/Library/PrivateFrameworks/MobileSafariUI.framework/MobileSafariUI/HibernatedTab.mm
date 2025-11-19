@interface HibernatedTab
- (BOOL)isBlank;
- (BOOL)isReusableForURL:(id)a3 webClipURL:(id)a4;
- (BrowserController)browserController;
- (CGSize)tabViewSize;
- (HibernatedTab)initWithTabDocument:(id)a3;
- (HibernatedTab)initWithWBTab:(id)a3 browserController:(id)a4;
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
- (id)_titleAllowURLStringFallback:(BOOL)a3 allowUntitled:(BOOL)a4;
- (id)_titleForStatePersistingForTabGroupTab;
- (id)_titleForStatePersistingForTabStateData;
- (id)currentUnifiedTabBarItem;
- (id)itemForTabCollectionView:(id)a3;
- (id)parentTabForWebExtensionContext:(id)a3;
- (id)readingListAddress;
- (id)tabUpdateBlock;
- (id)titleForSharing;
- (id)titleForTabCollection;
- (id)urlForCloudTab;
- (id)urlForStatePersisting;
- (id)urlString;
- (int64_t)pageStatus;
- (unint64_t)indexInWindowForWebExtensionContext:(id)a3;
- (void)_cancelFaviconUpdate;
- (void)_reconfigureLibraryItemView;
- (void)_searchEngineControllerDidFinishPopulating:(id)a3;
- (void)_setIcon:(id)a3 isMonogram:(BOOL)a4;
- (void)_updateNavigationBarItem;
- (void)activateForWebExtensionContext:(id)a3 completionHandler:(id)a4;
- (void)clearBrowserController;
- (void)close;
- (void)closeForWebExtensionContext:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)displayNewTabOverridePageIfNecessary;
- (void)duplicateUsingConfiguration:(id)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)goBackForWebExtensionContext:(id)a3 completionHandler:(id)a4;
- (void)goForwardForWebExtensionContext:(id)a3 completionHandler:(id)a4;
- (void)loadURL:(id)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)loadURL:(id)a3 title:(id)a4 skipSyncableTabUpdates:(BOOL)a5;
- (void)reloadFromOrigin:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)resetTabViewItems;
- (void)restoreStateFromTab:(id)a3;
- (void)select;
- (void)setBrowserController:(id)a3;
- (void)setMuted:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)setPinned:(BOOL)a3;
- (void)setPinned:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)setReaderModeActive:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)setReaderModeShowing:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)setSelected:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)setShareParticipants:(id)a3;
- (void)setUnread:(BOOL)a3;
- (void)setZoomFactor:(double)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)updateAncestryWithParentTab:(id)a3;
- (void)updateTabIcon;
- (void)updateTabIconWithDelay:(double)a3;
- (void)updateTabTitle;
@end

@implementation HibernatedTab

- (HibernatedTab)initWithTabDocument:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HibernatedTab;
  v5 = [(HibernatedTab *)&v28 init];
  if (v5)
  {
    v6 = [v4 tabGroupTab];
    v7 = [v6 url];
    url = v5->_url;
    v5->_url = v7;

    if (v5->_url)
    {
      v9 = [v6 title];
    }

    else
    {
      v9 = 0;
    }

    title = v5->_title;
    v5->_title = v9;

    wbTab = v5->_wbTab;
    v5->_wbTab = v6;
    v12 = v6;

    v13 = [v4 browserController];
    [(HibernatedTab *)v5 setBrowserController:v13];
    v14 = [v4 unifiedTabBarItem];
    unifiedTabBarItem = v5->_unifiedTabBarItem;
    v5->_unifiedTabBarItem = v14;

    v16 = [v4 tabBarItem];
    tabBarItem = v5->_tabBarItem;
    v5->_tabBarItem = v16;

    v18 = [v4 tabCollectionItem];
    tabCollectionItem = v5->_tabCollectionItem;
    v5->_tabCollectionItem = v18;

    [v4 idForWebExtensions];
    v5->_idForWebExtensions = v20;
    v21 = [v4 ancestorUUIDs];
    ancestorUUIDs = v5->_ancestorUUIDs;
    v5->_ancestorUUIDs = v21;

    [v4 lastViewedTime];
    v5->_lastViewedTime = v23;
    v24 = [v4 shareParticipants];
    shareParticipants = v5->_shareParticipants;
    v5->_shareParticipants = v24;

    -[HibernatedTab setUnread:](v5, "setUnread:", [v4 isUnread]);
    [(HibernatedTab *)v5 restoreStateFromTab:v12];

    v26 = v5;
  }

  return v5;
}

- (HibernatedTab)initWithWBTab:(id)a3 browserController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v34.receiver = self;
  v34.super_class = HibernatedTab;
  v9 = [(HibernatedTab *)&v34 init];
  if (v9)
  {
    v10 = [v7 url];
    url = v9->_url;
    v9->_url = v10;

    if (v9->_url)
    {
      v12 = [v7 title];
    }

    else
    {
      v12 = 0;
    }

    title = v9->_title;
    v9->_title = v12;

    objc_storeStrong(&v9->_wbTab, a3);
    [(HibernatedTab *)v9 setBrowserController:v8];
    v14 = objc_alloc_init(UnifiedTabBarItem);
    unifiedTabBarItem = v9->_unifiedTabBarItem;
    v9->_unifiedTabBarItem = v14;

    v16 = [(HibernatedTab *)v9 uuid];
    [(UnifiedTabBarItem *)v9->_unifiedTabBarItem setUUID:v16];

    [(SFUnifiedTabBarItem *)v9->_unifiedTabBarItem setMenuButtonConfigurator:v8];
    v17 = [MEMORY[0x277D28C70] sharedFeatureManager];
    v18 = [v17 showRectangularTabsInSeparateBar];

    if (v18)
    {
      v19 = objc_alloc_init(TabBarItem);
      tabBarItem = v9->_tabBarItem;
      v9->_tabBarItem = v19;

      v21 = [(HibernatedTab *)v9 uuid];
      [(TabBarItem *)v9->_tabBarItem setUUID:v21];
    }

    [(HibernatedTab *)v9 resetTabViewItems];
    [MEMORY[0x277D4A8B0] nextTabID];
    v9->_idForWebExtensions = v22;
    v23 = [v7 localAttributes];
    v24 = [v23 ancestorTabUUIDs];
    v25 = [v24 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_33];
    ancestorUUIDs = v9->_ancestorUUIDs;
    v9->_ancestorUUIDs = v25;

    v27 = [v23 lastVisitTime];
    if (v27)
    {
      v28 = [v23 lastVisitTime];
      [v28 timeIntervalSinceReferenceDate];
      v9->_lastViewedTime = v29;
    }

    else
    {
      v9->_lastViewedTime = -1.0;
    }

    shareParticipants = v9->_shareParticipants;
    v9->_shareParticipants = MEMORY[0x277CBEBF8];

    if ([v7 isShared])
    {
      v31 = [v7 isMarkedAsRead] ^ 1;
    }

    else
    {
      v31 = 0;
    }

    [(HibernatedTab *)v9 setUnread:v31];
    [(HibernatedTab *)v9 restoreStateFromTab:v7];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HibernatedTab;
  [(HibernatedTab *)&v4 dealloc];
}

- (void)setBrowserController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (WeakRetained != obj)
  {
    v5 = [WeakRetained tabController];
    [v5 willLoseOwnershipOfTab:self];

    objc_storeWeak(&self->_browserController, obj);
    v6 = [obj tabController];
    [v6 didGainOwnershipOfTab:self];
  }
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [(HibernatedTab *)self uuidString];
    v6 = [v4 initWithUUIDString:v5];
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

- (void)setPinned:(BOOL)a3
{
  if (self->_pinned != a3)
  {
    v4 = a3;
    self->_pinned = a3;
    [(TabBarItem *)self->_tabBarItem setPinned:?];
    [(UnifiedTabBarItem *)self->_unifiedTabBarItem setPinned:v4];
    [(TabDocumentCollectionItem *)self->_tabCollectionItem setPinned:v4];
    if (v4)
    {
      objc_storeStrong(&self->_pinnedURL, self->_url);
      v6 = [(HibernatedTab *)self title];
    }

    else
    {
      pinnedURL = self->_pinnedURL;
      self->_pinnedURL = 0;

      v6 = 0;
    }

    pinnedTitle = self->_pinnedTitle;
    self->_pinnedTitle = v6;
  }
}

- (void)loadURL:(id)a3 title:(id)a4 skipSyncableTabUpdates:(BOOL)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  self->_skipSyncableTabUpdates = a5;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v11 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v19 = 134218499;
    v20 = self;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2117;
    v24 = v8;
    _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_INFO, "Store deferred navigation: (hibernated tab: %p) %{sensitive, mask.hash}@", &v19, 0x20u);
  }

  self->_hasDeferredNavigation = 1;
  v12 = [v8 copy];
  url = self->_url;
  self->_url = v12;

  v14 = [v9 copy];
  title = self->_title;
  self->_title = v14;

  [(HibernatedTab *)self updateTabTitle];
  [(HibernatedTab *)self updateTabIcon];
  v16 = [WeakRetained tabCollectionViewProvider];
  v17 = [(HibernatedTab *)self uuid];
  [v16 removeSnapshotForTabWithUUID:v17];

  v18 = [WeakRetained tabController];
  [v18 updateWBTabWithTab:self notify:0 persist:0];
}

- (void)restoreStateFromTab:(id)a3
{
  v4 = a3;
  v18 = [v4 localAttributes];
  v5 = [v18 queuedNavigation];
  v6 = [v18 sessionStateData];

  if (v6 && v5)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [v5 objectForKeyedSubscript:@"url"];
    v9 = [v7 URLWithString:v8];

    v10 = [v5 objectForKeyedSubscript:@"title"];
    [(HibernatedTab *)self loadURL:v9 title:v10 skipSyncableTabUpdates:0];
  }

  -[HibernatedTab setPinned:](self, "setPinned:", [v4 isPinned]);
  v11 = [v4 pinnedTitle];
  v12 = [v11 copy];
  pinnedTitle = self->_pinnedTitle;
  self->_pinnedTitle = v12;

  v14 = [v4 pinnedURL];
  v15 = [v14 copy];
  pinnedURL = self->_pinnedURL;
  self->_pinnedURL = v15;

  wbTab = self->_wbTab;
  self->_wbTab = v4;
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
    v4 = [(NSURL *)self->_url absoluteString];
    v5 = v4;
    title = &stru_2827BF158;
    if (v4)
    {
      v7 = v4;
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

  v9 = [(WBTab *)self->_wbTab localAttributes];
  v10 = [v9 localAttributesWithLastVisitTime:v3 queuedNavigation:v8];

  return v10;
}

- (WBSCloudTab)cloudTab
{
  v3 = objc_alloc(MEMORY[0x277D49ED0]);
  v4 = [(HibernatedTab *)self urlForCloudTab];
  v5 = [v3 initWithURL:v4];

  v6 = [(HibernatedTab *)self uuid];
  [v5 setUuid:v6];

  v7 = [(HibernatedTab *)self titleForCloudTab];
  [v5 setTitle:v7];

  v8 = [(WBTab *)self->_wbTab localAttributes];
  [v5 setShowingReader:{objc_msgSend(v8, "isShowingReader")}];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [WeakRetained windowState];
  v11 = [v10 sceneID];
  [v5 setSceneID:v11];

  [v5 setLastViewedTime:self->_lastViewedTime];
  v12 = [objc_alloc(MEMORY[0x277D49EB8]) initWithParameters:v5];

  return v12;
}

- (SFTabStateData)tabStateData
{
  v3 = objc_alloc_init(MEMORY[0x277D28DC0]);
  v4 = [(HibernatedTab *)self urlForStatePersisting];
  v5 = [v4 safari_originalDataAsString];
  v6 = v5;
  v7 = &stru_2827BF158;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(HibernatedTab *)self uuid];
  v10 = [v9 UUIDString];
  [v3 setUUIDString:v10];

  v11 = [(HibernatedTab *)self _titleForStatePersistingForTabStateData];
  [v3 setTitle:v11];

  [v3 setUrl:v8];
  v12 = [(WBTab *)self->_wbTab localAttributes];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (self->_hasDeferredNavigation)
  {
    [v3 setUserVisibleURL:v8];
    [v3 setLastViewedTime:-1.0];
    [v3 setReadingListBookmarkID:0];
    [v3 setShowingReader:0];
    [v3 setReaderViewTopScrollOffset:0];
    [v3 setDisplayingStandaloneImage:0];
    v14 = 0;
  }

  else
  {
    if ([v4 isFileURL])
    {
      v15 = [(HibernatedTab *)self urlString];
      [v3 setUserVisibleURL:v15];
    }

    else
    {
      [v3 setUserVisibleURL:v8];
    }

    [(HibernatedTab *)self lastActivationTime];
    [v3 setLastViewedTime:?];
    [v3 setReadingListBookmarkID:{objc_msgSend(v12, "readingListBookmarkID")}];
    [v3 setShowingReader:{objc_msgSend(v12, "isShowingReader")}];
    [v12 readerViewTopScrollOffset];
    [v3 setReaderViewTopScrollOffset:v16];
    [v3 setDisplayingStandaloneImage:{objc_msgSend(v12, "isDisplayingStandaloneImage")}];
    v14 = [v12 wasOpenedFromLink];
  }

  [v3 setWasOpenedFromLink:v14];
  [v3 setPrivateBrowsing:{-[HibernatedTab isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}];
  v17 = [v12 sessionStateData];
  [v3 setSessionStateData:v17];

  v18 = [WeakRetained UUID];
  v19 = [v18 UUIDString];
  [v3 setOwningBrowserWindowUUIDString:v19];

  [v3 setOrderIndex:{objc_msgSend(WeakRetained, "orderIndexForTab:", self)}];
  v20 = [v3 sessionStateData];
  [v3 setUncompressedSessionStateDataSize:{objc_msgSend(v20, "length")}];

  v21 = [(WBTab *)self->_wbTab tabGroupUUID];
  [v3 setTabGroupUUID:v21];

  v22 = [WeakRetained effectiveProfileIdentifier];
  [v3 setProfileIdentifier:v22];

  return v3;
}

- (void)updateAncestryWithParentTab:(id)a3
{
  v4 = a3;
  v8 = [v4 ancestorUUIDs];
  v5 = [v4 uuid];

  v6 = [v8 arrayByAddingObject:v5];
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
  v15 = [(HibernatedTab *)self urlString];
  if ([(NSURL *)self->_url safari_isSafariWebExtensionURL])
  {

    v15 = 0;
  }

  v4 = [MEMORY[0x277CDB8A8] sharedInstance];
  v5 = [v4 defaultSearchEngineIfPopulatedForPrivateBrowsing:{-[HibernatedTab isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = *MEMORY[0x277CDBA28];
    [v6 removeObserver:self name:*MEMORY[0x277CDBA28] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel__searchEngineControllerDidFinishPopulating_ name:v7 object:0];
  }

  v9 = [v5 userVisibleQueryFromSearchURL:self->_url];
  v10 = [v15 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
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

- (void)_searchEngineControllerDidFinishPopulating:(id)a3
{
  [(HibernatedTab *)self _updateNavigationBarItem];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277CDBA28] object:0];
}

- (void)clearBrowserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  [v4 willLoseOwnershipOfTab:self];

  objc_storeWeak(&self->_browserController, 0);
}

- (BOOL)isReusableForURL:(id)a3 webClipURL:(id)a4
{
  v6 = a4;
  url = self->_url;
  v8 = a3;
  v9 = [(NSURL *)url _webkit_URLByRemovingFragment];
  LOBYTE(url) = [v9 isEqual:v8];

  if (url)
  {
    v10 = 1;
  }

  else if (v6)
  {
    v10 = [v9 isEqual:v6];
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
  v4 = [WeakRetained tabBarManager];
  v5 = [v4 displayMode];

  unifiedTabBarItem = self->_unifiedTabBarItem;
  if (v5 == 2)
  {
    v7 = [(UnifiedTabBarItem *)unifiedTabBarItem secondaryItem];
  }

  else
  {
    v7 = unifiedTabBarItem;
  }

  return v7;
}

- (void)resetTabViewItems
{
  v3 = objc_alloc_init(TabDocumentCollectionItem);
  tabCollectionItem = self->_tabCollectionItem;
  self->_tabCollectionItem = v3;

  v5 = [(HibernatedTab *)self uuid];
  [(TabDocumentCollectionItem *)self->_tabCollectionItem setUUID:v5];

  [(TabDocumentCollectionItem *)self->_tabCollectionItem setPinned:self->_pinned];

  [(HibernatedTab *)self updateTabTitle];
}

- (id)itemForTabCollectionView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tabBarItem = self->_tabBarItem;
LABEL_7:
    v8 = tabBarItem;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    tabBarItem = self->_tabCollectionItem;
    goto LABEL_7;
  }

  v6 = [v4 isStandalone];
  unifiedTabBarItem = self->_unifiedTabBarItem;
  if (v6)
  {
    v8 = [(UnifiedTabBarItem *)unifiedTabBarItem secondaryItem];
  }

  else
  {
    v8 = unifiedTabBarItem;
  }

LABEL_8:
  v9 = v8;

  return v9;
}

- (void)updateTabIconWithDelay:(double)a3
{
  [(HibernatedTab *)self _cancelFaviconUpdate];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CBEBB8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HibernatedTab_updateTabIconWithDelay___block_invoke;
  v7[3] = &unk_2781D8AF0;
  objc_copyWeak(&v8, &location);
  v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:a3];
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
  v4 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  [v4 cancelRequestWithToken:self->_faviconToken];

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
    v5 = [(NSURL *)url absoluteString];
    v6 = [v5 isEqualToString:@"about:blank"];

    if (!v6)
    {
      if (![(NSURL *)self->_url safari_isSafariWebExtensionURL])
      {
        v11 = [objc_alloc(MEMORY[0x277D4A730]) initWithURL:self->_url iconSize:2 fallbackType:+[TabIconAndTitleView defaultTabIconSize]()];
        objc_initWeak(&location, self);
        v12 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __30__HibernatedTab_updateTabIcon__block_invoke;
        v16[3] = &unk_2781D5D78;
        objc_copyWeak(&v17, &location);
        v13 = [v12 registerRequest:v11 priority:2 responseHandler:v16];
        faviconToken = self->_faviconToken;
        self->_faviconToken = v13;

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);

        return;
      }

      v8 = [(HibernatedTab *)self webExtensionsController];
      v9 = [(NSURL *)self->_url host];
      v15 = [v8 webExtensionForBaseURIHost:v9];

      v10 = [v15 icon];
      [(HibernatedTab *)self _setIcon:v10 isMonogram:0];

      goto LABEL_7;
    }

    v7 = [MEMORY[0x277D28F20] fallbackFavicon];
  }

  else
  {
    v7 = [MEMORY[0x277D28F20] favoritesFavicon];
  }

  v15 = v7;
  [(HibernatedTab *)self _setIcon:v7 isMonogram:0];
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

- (void)_setIcon:(id)a3 isMonogram:(BOOL)a4
{
  v4 = a4;
  tabBarItem = self->_tabBarItem;
  v8 = a3;
  [(TabBarItem *)tabBarItem setIcon:v8];
  [(UnifiedTabBarItem *)self->_unifiedTabBarItem setIcon:v8];
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  [(TabDocumentCollectionItem *)self->_tabCollectionItem setIcon:v7];
}

- (void)updateTabTitle
{
  v3 = [(HibernatedTab *)self titleForTabCollection];
  [(TabBarItem *)self->_tabBarItem setTitle:v3];
  [(UnifiedTabBarItem *)self->_unifiedTabBarItem setTitle:v3];
  [(TabDocumentCollectionItem *)self->_tabCollectionItem setTitle:v3];
}

- (void)setUnread:(BOOL)a3
{
  if (self->_unread != a3)
  {
    v4 = a3;
    self->_unread = a3;
    [(TabBarItem *)self->_tabBarItem setUnread:?];
    [(SFUnifiedTabBarItem *)self->_unifiedTabBarItem setUnread:v4];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained updateTabOverviewButton];

    [(HibernatedTab *)self _reconfigureLibraryItemView];
  }
}

- (void)setShareParticipants:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_shareParticipants isEqualToArray:?])
  {
    v4 = [v6 copy];
    shareParticipants = self->_shareParticipants;
    self->_shareParticipants = v4;

    [(TabBarItem *)self->_tabBarItem setShareParticipants:v6];
    [(SFUnifiedTabBarItem *)self->_unifiedTabBarItem setShareParticipants:v6];
    [(HibernatedTab *)self _reconfigureLibraryItemView];
  }
}

- (void)_reconfigureLibraryItemView
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v5 = [WeakRetained libraryController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(HibernatedTab *)self uuidString];
    [v5 reconfigureTabCellWithUUIDString:v4];
  }
}

- (NSUUID)webClipID
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [(WBTab *)self->_wbTab localAttributes];
  v5 = [v4 webClipIDString];
  v6 = [v3 initWithUUIDString:v5];

  return v6;
}

- (id)readingListAddress
{
  v3 = [(WBTab *)self->_wbTab localAttributes];
  v4 = [v3 readingListBookmarkID];

  if ([(NSURL *)self->_url isFileURL])
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v7 = [v6 bookmarkWithID:v4];
    v8 = [v7 address];
  }

  return v8;
}

- (id)urlString
{
  v3 = [(HibernatedTab *)self readingListAddress];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NSURL *)self->_url safari_userVisibleStringConsideringLongURLs];
  }

  v6 = v5;

  return v6;
}

- (NSString)addressForNewBookmark
{
  v2 = [(HibernatedTab *)self urlForSharing];
  v3 = [v2 safari_originalDataAsString];

  return v3;
}

- (id)urlForCloudTab
{
  if ([(NSURL *)self->_url isFileURL])
  {
    v3 = [(HibernatedTab *)self urlString];
    v4 = [v3 safari_bestURLForUserTypedString];
  }

  else
  {
    v4 = self->_url;
  }

  return v4;
}

- (NSURL)urlForSharing
{
  v3 = [(HibernatedTab *)self readingListAddress];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v4 = self->_url;
  }

  v5 = v4;
  v6 = [(HibernatedTab *)self titleForSharing];
  if (v6)
  {
    [(NSURL *)v5 _setTitle:v6];
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
      v7 = [v6 allWebExtensionsControllers];

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v15 + 1) + 8 * i) _persistentStateURLForExtensionURL:self->_url];
            if (v12)
            {
              v13 = v12;

              goto LABEL_15;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(WBTab *)self->_wbTab localAttributes];
  v4 = [v3 isDisplayingStandaloneImage];

  if (v4)
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
      v4 = [MEMORY[0x277CCA900] safari_lockRelatedEmojiCharacterSet];
      v5 = [(NSString *)title safari_stringByRemovingCharactersInSet:v4];

      goto LABEL_7;
    }

    v3 = [(HibernatedTab *)self _titleAllowURLStringFallback:1 allowUntitled:0];
  }

  v5 = v3;
LABEL_7:

  return v5;
}

- (id)_titleAllowURLStringFallback:(BOOL)a3 allowUntitled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(NSString *)self->_title length])
  {
    v7 = self->_title;
LABEL_3:
    v8 = v7;
    goto LABEL_4;
  }

  if (v5 && ([(HibernatedTab *)self urlString], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [(HibernatedTab *)self urlString];
    v8 = [v11 safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:1 simplifiedStringOffset:0];
  }

  else
  {
    if (v4)
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
  v3 = [WeakRetained UUID];
  v4 = [v3 UUIDString];

  return v4;
}

- (SFWebExtensionsController)webExtensionsController
{
  v3 = +[Application sharedApplication];
  v4 = [(HibernatedTab *)self isPrivateBrowsingEnabled];
  v5 = [(HibernatedTab *)self profile];
  v6 = [v3 webExtensionsControllerForTabWithPrivateBrowsingEnabled:v4 profile:v5];

  return v6;
}

- (double)parentTabIDForWebExtensions
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  v5 = [v4 originatingTabForTab:self];

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
  v3 = [WeakRetained effectiveProfile];

  return v3;
}

- (void)close
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  [v4 closeTab:self animated:1];

  v5 = [MEMORY[0x277D4A060] sharedInstance];
  [v5 setTabNeedsSpotlightDeletion:self];
}

- (void)select
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained tabController];
  [v3 setActiveTab:self];
}

- (unint64_t)indexInWindowForWebExtensionContext:(id)a3
{
  v4 = [(HibernatedTab *)self webExtensionWindow];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 webExtensionTabs];
    v7 = [v6 indexOfObjectIdenticalTo:self];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)parentTabForWebExtensionContext:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v5 = [WeakRetained tabController];
  v6 = [v5 originatingTabForTab:self];

  return v6;
}

- (void)setPinned:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v5 = a3;
  v7 = a5;
  [(HibernatedTab *)self setPinned:v5];
  v7[2](v7, 0);
}

- (void)setReaderModeShowing:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v5 = a3;
  v7 = a5;
  if ([(HibernatedTab *)self isInReaderMode]!= v5)
  {
    [(HibernatedTab *)self toggleReader];
  }

  v7[2](v7, 0);
}

- (void)setReaderModeActive:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v5 = a3;
  v7 = a5;
  if ([(HibernatedTab *)self isInReaderMode]!= v5)
  {
    [(HibernatedTab *)self toggleReader];
  }

  v7[2](v7, 0);
}

- (void)setMuted:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v5 = a3;
  v7 = a5;
  if (v5)
  {
    [(HibernatedTab *)self mute];
  }

  else
  {
    [(HibernatedTab *)self unmute];
  }

  v7[2](v7, 0);
}

- (void)setZoomFactor:(double)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  [(HibernatedTab *)self setZoomFactor:a3];
  v7[2](v7, 0);
}

- (void)loadURL:(id)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  [(HibernatedTab *)self loadURL:a3];
  v7[2](v7, 0);
}

- (void)reloadFromOrigin:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v5 = a3;
  v7 = a5;
  if (v5)
  {
    [(HibernatedTab *)self reloadFromOrigin];
  }

  else
  {
    [(HibernatedTab *)self reload];
  }

  v7[2](v7, 0);
}

- (void)goBackForWebExtensionContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  [(HibernatedTab *)self goBack];
  v5[2](v5, 0);
}

- (void)goForwardForWebExtensionContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  [(HibernatedTab *)self goForward];
  v5[2](v5, 0);
}

- (void)activateForWebExtensionContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  [(HibernatedTab *)self select];
  v5[2](v5, 0);
}

- (void)setSelected:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v5 = a3;
  v7 = a5;
  if (v5)
  {
    [(HibernatedTab *)self select];
  }

  v7[2](v7, 0);
}

- (void)duplicateUsingConfiguration:(id)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v8 = [WeakRetained tabController];
  v9 = [v8 duplicateTab:self];
  (*(a5 + 2))(v7, v9, 0);
}

- (void)closeForWebExtensionContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  [(HibernatedTab *)self close];
  v5[2](v5, 0);
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