@interface ApplicationShortcutController
+ (id)_shortcutItemWithType:(id)a3 systemImageName:(id)a4;
+ (id)_shortcutItemsIncludingPrivateBrowsing:(BOOL)a3;
+ (void)setUpManagedConfigurationNotificationResponder;
+ (void)updateShortcutItemsIfNeeded;
- (BOOL)_handleActionWithType:(id)a3;
- (BOOL)handleActionWithType:(id)a3;
- (BrowserController)browserController;
- (void)_openNewEmptyTabWithURLFieldFocused:(BOOL)a3 privateBrowsingState:(int64_t)a4;
- (void)_showBookmarksPanelWithSelectedCollection:(id)a3;
@end

@implementation ApplicationShortcutController

+ (void)setUpManagedConfigurationNotificationResponder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__ApplicationShortcutController_setUpManagedConfigurationNotificationResponder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  v4[4] = a1;
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

- (BOOL)handleActionWithType:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (BOOL)_handleActionWithType:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if ([v4 isEqualToString:*MEMORY[0x277CDBA10]])
  {
    v5 = 1;
    [(ApplicationShortcutController *)self _openNewEmptyTabWithURLFieldFocused:1 privateBrowsingState:0];
  }

  else
  {
    if ([v4 isEqualToString:*MEMORY[0x277CDBA08]])
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
      if ([v4 isEqualToString:*MEMORY[0x277CDBA00]])
      {
        v7 = kCollectionTypeBookmarks;
      }

      else
      {
        if (![v4 isEqualToString:*MEMORY[0x277CDBA18]])
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

+ (id)_shortcutItemWithType:(id)a3 systemImageName:(id)a4
{
  v5 = MEMORY[0x277D75198];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = _SFLocalizedTitleStringForShortcutItemType();
  v10 = [MEMORY[0x277D75190] iconWithSystemImageName:v6];

  v11 = [v8 initWithType:v7 localizedTitle:v9 localizedSubtitle:0 icon:v10 userInfo:0];

  return v11;
}

- (void)_openNewEmptyTabWithURLFieldFocused:(BOOL)a3 privateBrowsingState:(int64_t)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v7 = [WeakRetained tabController];
  v8 = [WeakRetained tabCollectionViewProvider];
  if (v5)
  {
    [WeakRetained setSkipShowingRecentSearches:1];
  }

  v9 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  [WeakRetained dismissTransientUIAnimated:v9 options:2];
  v10 = [WeakRetained isShowingPrivateTabs];
  if (a4 != 1 || (v10 & 1) != 0)
  {
    if (((a4 == 0) & v10) == 1)
    {
      [v7 selectLocalTabGroup];
    }
  }

  else
  {
    [v7 selectPrivateTabGroup];
  }

  if ([v7 isPrivateBrowsingEnabled])
  {
    v11 = +[Application sharedApplication];
    v12 = [v11 isPrivateBrowsingLocked];

    LOBYTE(v5) = v5 & ~v12;
  }

  else
  {
    v12 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__ApplicationShortcutController__openNewEmptyTabWithURLFieldFocused_privateBrowsingState___block_invoke;
  aBlock[3] = &unk_2781DA450;
  v13 = WeakRetained;
  v24 = v13;
  v25 = v9;
  v26 = v5;
  v14 = _Block_copy(aBlock);
  v15 = [v7 blankTabToReuse];
  if (v15)
  {
    v16 = [v7 activeTabDocument];

    if (v15 != v16)
    {
      [v7 setActiveTab:v15 animated:v9];
    }

    if (v12)
    {
      v17 = [v8 tabSwitcherViewController];
      [v17 setDismissesOnUnlock:1];
    }

    [v8 updateTabViewsAnimatingTabBar:v9];
    v18 = [v8 tabThumbnailCollectionView];
    v19 = objc_opt_respondsToSelector();
    if (v9 && (v19 & 1) != 0)
    {
      [v18 dismissWithAddTabAnimation];
    }

    else
    {
      [v18 dismissAnimated:v9];
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
    v21 = v8;
    [v7 openNewTabWithOptions:0 completionHandler:v20];

    v18 = v22;
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

- (void)_showBookmarksPanelWithSelectedCollection:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v5 = [WeakRetained tabController];
  v6 = [v5 activeTabDocument];
  if ([v6 isBlank])
  {
    if ([WeakRetained isPresentingModalBookmarksController])
    {
      v7 = 1;
    }

    else
    {
      v8 = [WeakRetained sidebarUIProxy];
      v7 = [v8 isShowingSidebar];
    }
  }

  else
  {
    v7 = 0;
  }

  if ([WeakRetained isSuspendedOrSuspending] && (v7 & 1) == 0)
  {
    [(ApplicationShortcutController *)self _openNewEmptyTabWithURLFieldFocused:0 privateBrowsingState:2];
  }

  v9 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  v10 = [WeakRetained tabCollectionViewProvider];
  v11 = [v10 tabThumbnailCollectionView];
  [v11 dismissAnimated:v9];

  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = [WeakRetained sidebarUIProxy];
  if ([v12 isShowingSidebar])
  {

LABEL_13:
    [WeakRetained showBookmarksPanelWithNonAnimatedTransitionWithCollection:v4];
    goto LABEL_14;
  }

  v13 = [WeakRetained isPresentingModalBookmarksController];

  if (v13)
  {
    goto LABEL_13;
  }

  [WeakRetained toggleBookmarksPresentation];
LABEL_14:
  [WeakRetained setCurrentBookmarksCollection:v4];
}

+ (id)_shortcutItemsIncludingPrivateBrowsing:(BOOL)a3
{
  v3 = a3;
  v11[4] = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ApplicationShortcutController__shortcutItemsIncludingPrivateBrowsing___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_shortcutItemsIncludingPrivateBrowsing__onceToken != -1)
  {
    dispatch_once(&_shortcutItemsIncludingPrivateBrowsing__onceToken, block);
  }

  if (v3)
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