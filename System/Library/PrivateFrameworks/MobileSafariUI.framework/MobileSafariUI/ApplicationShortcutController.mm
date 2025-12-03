@interface ApplicationShortcutController
+ (id)_shortcutItemWithType:(id)type systemImageName:(id)name;
+ (id)_shortcutItemsIncludingPrivateBrowsing:(BOOL)browsing;
+ (void)setUpManagedConfigurationNotificationResponder;
+ (void)updateShortcutItemsIfNeeded;
- (BOOL)_handleActionWithType:(id)type;
- (BOOL)handleActionWithType:(id)type;
- (BrowserController)browserController;
- (void)_openNewEmptyTabWithURLFieldFocused:(BOOL)focused privateBrowsingState:(int64_t)state;
- (void)_showBookmarksPanelWithSelectedCollection:(id)collection;
@end

@implementation ApplicationShortcutController

+ (void)setUpManagedConfigurationNotificationResponder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__ApplicationShortcutController_setUpManagedConfigurationNotificationResponder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (setUpManagedConfigurationNotificationResponder_onceToken != -1)
  {
    dispatch_once(&setUpManagedConfigurationNotificationResponder_onceToken, block);
  }
}

void __79__ApplicationShortcutController_setUpManagedConfigurationNotificationResponder__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D25CA0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__ApplicationShortcutController_setUpManagedConfigurationNotificationResponder__block_invoke_2;
  v5[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  v5[4] = *(a1 + 32);
  v4 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v5];
}

+ (void)updateShortcutItemsIfNeeded
{
  v3 = +[FeatureManager sharedFeatureManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__ApplicationShortcutController_updateShortcutItemsIfNeeded__block_invoke;
  v4[3] = &__block_descriptor_40_e8_v12__0B8l;
  v4[4] = self;
  [v3 determineIfPrivateBrowsingIsAvailableWithCompletionHandler:v4];
}

void __60__ApplicationShortcutController_updateShortcutItemsIfNeeded__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__ApplicationShortcutController_updateShortcutItemsIfNeeded__block_invoke_2;
  v2[3] = &__block_descriptor_41_e5_v8__0l;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __60__ApplicationShortcutController_updateShortcutItemsIfNeeded__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) _shortcutItemsIncludingPrivateBrowsing:*(a1 + 40)];
  v1 = MEMORY[0x277D76620];
  v2 = [*MEMORY[0x277D76620] shortcutItems];
  v3 = [v4 isEqualToArray:v2];

  if ((v3 & 1) == 0)
  {
    [*v1 setShortcutItems:v4];
  }
}

- (BOOL)handleActionWithType:(id)type
{
  typeCopy = type;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__ApplicationShortcutController_handleActionWithType___block_invoke;
  v8[3] = &unk_2781DA400;
  v10 = &v11;
  v8[4] = self;
  v6 = typeCopy;
  v9 = v6;
  [v5 performWithoutAnimation:v8];
  LOBYTE(v5) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t __54__ApplicationShortcutController_handleActionWithType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _handleActionWithType:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_handleActionWithType:(id)type
{
  typeCopy = type;
  objc_initWeak(&location, self);
  if ([typeCopy isEqualToString:*MEMORY[0x277CDBA10]])
  {
    v5 = 1;
    [(ApplicationShortcutController *)self _openNewEmptyTabWithURLFieldFocused:1 privateBrowsingState:0];
  }

  else
  {
    if ([typeCopy isEqualToString:*MEMORY[0x277CDBA08]])
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      if ([WeakRetained isPrivateBrowsingAvailable])
      {
        [(ApplicationShortcutController *)self _openNewEmptyTabWithURLFieldFocused:1 privateBrowsingState:1];
      }

      else
      {
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __55__ApplicationShortcutController__handleActionWithType___block_invoke;
        v9[3] = &unk_2781DA428;
        objc_copyWeak(&v10, &location);
        [WeakRetained updatePrivateBrowsingAvailabilityWithCompletionHandler:v9];
        objc_destroyWeak(&v10);
      }
    }

    else
    {
      if ([typeCopy isEqualToString:*MEMORY[0x277CDBA00]])
      {
        v7 = kCollectionTypeBookmarks;
      }

      else
      {
        if (![typeCopy isEqualToString:*MEMORY[0x277CDBA18]])
        {
          v5 = 0;
          goto LABEL_14;
        }

        v7 = kCollectionTypeReadingList;
      }

      [(ApplicationShortcutController *)self _showBookmarksPanelWithSelectedCollection:*v7];
    }

    v5 = 1;
  }

LABEL_14:
  objc_destroyWeak(&location);

  return v5;
}

void __55__ApplicationShortcutController__handleActionWithType___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v3 = WeakRetained;
      [WeakRetained _openNewEmptyTabWithURLFieldFocused:1 privateBrowsingState:1];
      WeakRetained = v3;
    }
  }
}

+ (id)_shortcutItemWithType:(id)type systemImageName:(id)name
{
  v5 = MEMORY[0x277D75198];
  nameCopy = name;
  typeCopy = type;
  v8 = [v5 alloc];
  v9 = _SFLocalizedTitleStringForShortcutItemType();
  v10 = [MEMORY[0x277D75190] iconWithSystemImageName:nameCopy];

  v11 = [v8 initWithType:typeCopy localizedTitle:v9 localizedSubtitle:0 icon:v10 userInfo:0];

  return v11;
}

- (void)_openNewEmptyTabWithURLFieldFocused:(BOOL)focused privateBrowsingState:(int64_t)state
{
  focusedCopy = focused;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
  if (focusedCopy)
  {
    [WeakRetained setSkipShowingRecentSearches:1];
  }

  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  [WeakRetained dismissTransientUIAnimated:areAnimationsEnabled options:2];
  isShowingPrivateTabs = [WeakRetained isShowingPrivateTabs];
  if (state != 1 || (isShowingPrivateTabs & 1) != 0)
  {
    if (((state == 0) & isShowingPrivateTabs) == 1)
    {
      [tabController selectLocalTabGroup];
    }
  }

  else
  {
    [tabController selectPrivateTabGroup];
  }

  if ([tabController isPrivateBrowsingEnabled])
  {
    v11 = +[Application sharedApplication];
    isPrivateBrowsingLocked = [v11 isPrivateBrowsingLocked];

    LOBYTE(focusedCopy) = focusedCopy & ~isPrivateBrowsingLocked;
  }

  else
  {
    isPrivateBrowsingLocked = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__ApplicationShortcutController__openNewEmptyTabWithURLFieldFocused_privateBrowsingState___block_invoke;
  aBlock[3] = &unk_2781DA450;
  v13 = WeakRetained;
  v24 = v13;
  v25 = areAnimationsEnabled;
  v26 = focusedCopy;
  v14 = _Block_copy(aBlock);
  blankTabToReuse = [tabController blankTabToReuse];
  if (blankTabToReuse)
  {
    activeTabDocument = [tabController activeTabDocument];

    if (blankTabToReuse != activeTabDocument)
    {
      [tabController setActiveTab:blankTabToReuse animated:areAnimationsEnabled];
    }

    if (isPrivateBrowsingLocked)
    {
      tabSwitcherViewController = [tabCollectionViewProvider tabSwitcherViewController];
      [tabSwitcherViewController setDismissesOnUnlock:1];
    }

    [tabCollectionViewProvider updateTabViewsAnimatingTabBar:areAnimationsEnabled];
    tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
    v19 = objc_opt_respondsToSelector();
    if (areAnimationsEnabled && (v19 & 1) != 0)
    {
      [tabThumbnailCollectionView dismissWithAddTabAnimation];
    }

    else
    {
      [tabThumbnailCollectionView dismissAnimated:areAnimationsEnabled];
    }

    v14[2](v14);
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __90__ApplicationShortcutController__openNewEmptyTabWithURLFieldFocused_privateBrowsingState___block_invoke_2;
    v20[3] = &unk_2781DA478;
    v22 = v14;
    v21 = tabCollectionViewProvider;
    [tabController openNewTabWithOptions:0 completionHandler:v20];

    tabThumbnailCollectionView = v22;
  }
}

uint64_t __90__ApplicationShortcutController__openNewEmptyTabWithURLFieldFocused_privateBrowsingState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFavoritesAreEmbedded:1 animated:*(a1 + 40)];
  [*(a1 + 32) updateFirstResponderOrFocus];
  if (*(a1 + 41) == 1 && [*(a1 + 32) canAutoFocusURLField])
  {
    [*(a1 + 32) setFavoritesFieldFocused:1 animated:*(a1 + 40)];
  }

  v2 = *(a1 + 32);

  return [v2 setSkipShowingRecentSearches:0];
}

void __90__ApplicationShortcutController__openNewEmptyTabWithURLFieldFocused_privateBrowsingState___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    [v3 didOpenNewBlankTabWithTrigger:3 tabCollectionViewType:{objc_msgSend(*(a1 + 32), "visibleTabCollectionViewType")}];
  }
}

- (void)_showBookmarksPanelWithSelectedCollection:(id)collection
{
  collectionCopy = collection;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  if ([activeTabDocument isBlank])
  {
    if ([WeakRetained isPresentingModalBookmarksController])
    {
      isShowingSidebar = 1;
    }

    else
    {
      sidebarUIProxy = [WeakRetained sidebarUIProxy];
      isShowingSidebar = [sidebarUIProxy isShowingSidebar];
    }
  }

  else
  {
    isShowingSidebar = 0;
  }

  if ([WeakRetained isSuspendedOrSuspending] && (isShowingSidebar & 1) == 0)
  {
    [(ApplicationShortcutController *)self _openNewEmptyTabWithURLFieldFocused:0 privateBrowsingState:2];
  }

  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
  [tabThumbnailCollectionView dismissAnimated:areAnimationsEnabled];

  if (!areAnimationsEnabled)
  {
    goto LABEL_13;
  }

  sidebarUIProxy2 = [WeakRetained sidebarUIProxy];
  if ([sidebarUIProxy2 isShowingSidebar])
  {

LABEL_13:
    [WeakRetained showBookmarksPanelWithNonAnimatedTransitionWithCollection:collectionCopy];
    goto LABEL_14;
  }

  isPresentingModalBookmarksController = [WeakRetained isPresentingModalBookmarksController];

  if (isPresentingModalBookmarksController)
  {
    goto LABEL_13;
  }

  [WeakRetained toggleBookmarksPresentation];
LABEL_14:
  [WeakRetained setCurrentBookmarksCollection:collectionCopy];
}

+ (id)_shortcutItemsIncludingPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  v11[4] = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ApplicationShortcutController__shortcutItemsIncludingPrivateBrowsing___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_shortcutItemsIncludingPrivateBrowsing__onceToken != -1)
  {
    dispatch_once(&_shortcutItemsIncludingPrivateBrowsing__onceToken, block);
  }

  if (browsingCopy)
  {
    v11[0] = _shortcutItemsIncludingPrivateBrowsing__newTabShortcutItem;
    v11[1] = _shortcutItemsIncludingPrivateBrowsing__newPrivateTabShortcutItem;
    v11[2] = _shortcutItemsIncludingPrivateBrowsing__showBookmarksShortcutItem;
    v11[3] = _shortcutItemsIncludingPrivateBrowsing__showReadingListShortcutItem;
    v4 = MEMORY[0x277CBEA60];
    v5 = v11;
    v6 = 4;
  }

  else
  {
    v10[0] = _shortcutItemsIncludingPrivateBrowsing__newTabShortcutItem;
    v10[1] = _shortcutItemsIncludingPrivateBrowsing__showBookmarksShortcutItem;
    v10[2] = _shortcutItemsIncludingPrivateBrowsing__showReadingListShortcutItem;
    v4 = MEMORY[0x277CBEA60];
    v5 = v10;
    v6 = 3;
  }

  v7 = [v4 arrayWithObjects:v5 count:v6];

  return v7;
}

void __72__ApplicationShortcutController__shortcutItemsIncludingPrivateBrowsing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _shortcutItemWithType:*MEMORY[0x277CDBA18] systemImageName:@"eyeglasses"];
  v3 = _shortcutItemsIncludingPrivateBrowsing__showReadingListShortcutItem;
  _shortcutItemsIncludingPrivateBrowsing__showReadingListShortcutItem = v2;

  v4 = [*(a1 + 32) _shortcutItemWithType:*MEMORY[0x277CDBA00] systemImageName:@"book"];
  v5 = _shortcutItemsIncludingPrivateBrowsing__showBookmarksShortcutItem;
  _shortcutItemsIncludingPrivateBrowsing__showBookmarksShortcutItem = v4;

  v6 = [*(a1 + 32) _shortcutItemWithType:*MEMORY[0x277CDBA08] systemImageName:@"plus.square.fill.on.square.fill"];
  v7 = _shortcutItemsIncludingPrivateBrowsing__newPrivateTabShortcutItem;
  _shortcutItemsIncludingPrivateBrowsing__newPrivateTabShortcutItem = v6;

  v8 = [*(a1 + 32) _shortcutItemWithType:*MEMORY[0x277CDBA10] systemImageName:@"plus.square.on.square"];
  v9 = _shortcutItemsIncludingPrivateBrowsing__newTabShortcutItem;
  _shortcutItemsIncludingPrivateBrowsing__newTabShortcutItem = v8;
}

- (BrowserController)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

@end