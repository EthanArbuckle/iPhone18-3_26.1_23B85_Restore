@interface TabController
- (BOOL)_makeRoomForNewTab:(_BYTE *)a1;
- (BOOL)_shouldCloseAfterAutomaticallySwitchingFromTab:(_BOOL8)a1;
- (BOOL)_switchToTab:(void *)a3 orTabUUID:(void *)a4 inTabGroup:;
- (BOOL)canAddNewTabForCurrentBrowsingMode;
- (BOOL)canAddNewTabForPrivateBrowsing:(BOOL)a3;
- (BOOL)canAddNewTabInTabGroup:(id)a3;
- (BOOL)canAddNewTabInTabGroup:(id)a3 withTabCount:(unint64_t)a4;
- (BOOL)canCloseOtherTabs;
- (BOOL)canCloseTab;
- (BOOL)canCloseTabWithUUID:(id)a3;
- (BOOL)canCloseWBTab:(id)a3;
- (BOOL)canCreateTabGroupFromCurrentTabs;
- (BOOL)canRenameActiveTabGroup;
- (BOOL)createTabGroupAlertIsPresented;
- (BOOL)hasActiveLibrary;
- (BOOL)hasMultipleProfiles;
- (BOOL)hasNamedTabGroups;
- (BOOL)hasTabsThatShouldBeObscuredForDigitalHealth;
- (BOOL)hasUnreadTab;
- (BOOL)isControlledByAutomation;
- (BOOL)isInDefaultProfile;
- (BOOL)isPrivateBrowsingAndLocked;
- (BOOL)isShowingLibraryDocument;
- (BOOL)isTabGroupActive:(id)a3;
- (BOOL)isTabPinnable:(id)a3;
- (BOOL)isTabUUIDActive:(id)a3;
- (BOOL)isTabWithUUIDBeingHiddenFromTabView:(id)a3;
- (BOOL)moveTabWithUUID:(id)a3 fromForeignLocalGroupWithUUIDIntoActiveGroup:(id)a4;
- (BOOL)readState;
- (BOOL)scrollTabSwitcherToTabGroupIfShowing:(id)a3;
- (BOOL)selectFirstUnpinnedTab;
- (BOOL)switchToTabWithUUID:(id)a3 inTabGroupWithUUID:(id)a4;
- (CKShare)shareRecordForActiveTabGroup;
- (CKShare)shareRecordForActiveTabGroupIfIsShared;
- (CloudTabStore)cloudTabStore;
- (CollectionViewTab)blankTabToReuse;
- (CollectionViewTab)tabBeingActivated;
- (NSArray)allTabDocuments;
- (NSArray)alternateTabs;
- (NSArray)currentTabDocuments;
- (NSArray)currentTabs;
- (NSArray)normalAndPrivateTabs;
- (NSArray)normalTabs;
- (NSArray)normalUnpinnedTabDocuments;
- (NSArray)normalUnpinnedTabs;
- (NSArray)pinnedTabDocuments;
- (NSArray)pinnedTabs;
- (NSArray)privateTabs;
- (NSArray)privateUnpinnedTabDocuments;
- (NSArray)privateUnpinnedTabs;
- (NSArray)tabDocumentsForAllTabGroups;
- (NSArray)tabGroups;
- (NSArray)unnamedTabGroups;
- (NSArray)unpinnedTabDocuments;
- (NSArray)unpinnedTabs;
- (NSSet)nonActiveTabGroupsInCurrentBrowsingMode;
- (NSString)activeLibraryType;
- (NSString)activeProfileIdentifier;
- (NSString)activeTabUUID;
- (NSString)deviceIDForActiveCloudTabsLibrary;
- (NSString)moveLocalTabsToNewGroupTitle;
- (NSString)startPageBackgroundImageIdentifier;
- (TabController)initWithBrowserController:(id)a3;
- (TabDocument)_activeTabDocumentForTabGroup:(TabDocument *)a1;
- (TabDocument)_unhibernateTabIfNeeded:(TabDocument *)a1;
- (TabDocument)activeNonLibraryTab;
- (TabDocument)activeTabDocument;
- (TabDocument)hiddenPrivateTabDocumentWhenShowingPrivateBrowsingExplanationText;
- (TabDocument)singleUnpinnedBlankTab;
- (TabDocument)tabDocumentBeingActivated;
- (TabDocument)tabDocumentForSpotlightSearch;
- (UIImage)iconForSharingActiveTabGroup;
- (UIMenu)menuForSwitchingProfiles;
- (UIMenu)menuForSwitchingProfilesQuickly;
- (UIMenu)newTabGroupMenu;
- (UIMenu)submenuForSwitchingProfiles;
- (UIMenu)tabExposeMenu;
- (WBProfile)activeProfile;
- (WBSCloudTabDeviceProvider)profileCloudTabStore;
- (WBTabGroup)activeTabGroup;
- (WBTabGroup)activeTabGroupOrTabGroupVisibleInSwitcher;
- (WBTabGroup)focusedTabGroup;
- (WBTabGroup)privateTabGroupIfAvailable;
- (WBTabGroup)unnamedTabGroup;
- (char)_activeTabDocumentForPrivateBrowsing:(char *)a1;
- (char)_mutableTabsForPrivateBrowsing:(char *)a1;
- (char)_tabsForPrivateBrowsing:(char *)a1;
- (char)mutableAlternateTabs;
- (char)mutableCurrentTabs;
- (id)_activeTabGroupForWindowState:(void *)a1;
- (id)_addTabGroup:(void *)a3 fromTabs:;
- (id)_allTabGroupsAcrossWindows;
- (id)_application;
- (id)_containerForPinnedTabsInTabGroup:(void *)a1;
- (id)_createFromCurrentTabsActionForTabGroupsMenu:(uint64_t)a1;
- (id)_createNewTabGroupActionForTabGroupsMenu:;
- (id)_deleteActionForTabGroup:(char)a3 forPickerSheet:;
- (id)_dropWBTab:(void *)a3 fromBrowserController:(unint64_t)a4 atIndex:(int)a5 pinned:(void *)a6 anchorTab:;
- (id)_findPinnedTabMatchingURL:(uint64_t)a3;
- (id)_firstUnpinnedTab;
- (id)_focusedTabGroupForWindowState:(_BYTE *)a1;
- (id)_foreignLocalTabGroupWithUUID:(void *)a1;
- (id)_imageForTabGroupButton;
- (id)_insertNewBlankTabDocumentWithOptions:(uint64_t)a1 inBackground:(char)a2 animated:(char)a3;
- (id)_insertNewBlankTabDocumentWithPrivateBrowsing:(void *)a1 inBackground:(int)a2 animated:(char)a3;
- (id)_localTabGroupTitleProvider;
- (id)_mutableTabsForTabGroup:(uint64_t)a1;
- (id)_oldestInactiveTabDocumentForPrivateBrowsing:(uint64_t)a3;
- (id)_openBlankTabDocument;
- (id)_openTabForDroppedLinkAtIndex:(uint64_t)a3 pinned:;
- (id)_orderIndexesForTabs:(void *)a1;
- (id)_renameActionForTabGroup:(char)a3 forPickerSheet:;
- (id)_reopenGloballyPinnedTabsForUndoAction:(id *)a1;
- (id)_reopenTabGroupTabsForUndoAction:(id)a1;
- (id)_representativeHostForTabGroup:(uint64_t)a1;
- (id)_shareActionForTabGroup:(void *)a1;
- (id)_subMenusForTabGroup:(uint64_t)a3 variant:;
- (id)_switchToTabGroupMenu;
- (id)_syncedTabGroupsForActiveProfileWithOptions:(void *)a1;
- (id)_tabCountForDisplay;
- (id)_tabDocumentForWebClip:(uint64_t)a3;
- (id)_tabForWBTab:(_BYTE *)a3 didReuseTabDocument:;
- (id)_tabForWBTab:(id *)a1;
- (id)_tabGroupAlertControllerWithTitle:(uint64_t)a3 message:(void *)a4 okActionTitle:(uint64_t)a5 role:(char)a6 showingSuggestionsIfPossible:(void *)a7 actionHandler:(void *)a8 completionHandler:;
- (id)_tabGroupShareSheetWithTabGroupActivityItemConfiguration:(void *)a1;
- (id)_tabGroupsFromAllWindows;
- (id)_titleForTabGroupButton;
- (id)_toggleSidebarSectionIsExpandedActionForTabGroup:(id *)a1;
- (id)_toggleTabViewActionForTabGroup:(id *)a1;
- (id)_undoActionForClosingTabs:(id)a1;
- (id)_undoCloseAllTabsActionName;
- (id)_urlForActiveTabInTabGroup:(id)a1;
- (id)addNewTabGroupWithTitle:(id)a3 fromExistingTabs:(BOOL)a4;
- (id)addNewTabGroupWithTitle:(id)a3 fromTabs:(id)a4;
- (id)appendWBTabInTabGroupWithUUID:(id)a3;
- (id)browserControllerContainingLocalTabGroupUUID:(id)a3;
- (id)cachedTabSwitcherShareConfigurationForTabGroup:(id)a3;
- (id)contextMenuConfigurationForMultipleTabSelection:(id)a3;
- (id)contextMenuConfigurationForTab:(id)a3 inTabGroup:(id)a4;
- (id)contextMenuConfigurationForTabGroup:(id)a3 variant:(int64_t)a4;
- (id)copyBookmark:(id)a3 toPerTabGroupBookmarkFolderWithID:(int)a4;
- (id)defaultTabToSelectInTabGroup:(id)a3;
- (id)detachTabWithUUID:(id)a3 forMoveToBrowserController:(id)a4;
- (id)dragItemForTab:(id)a3 tabItem:(id)a4;
- (id)dropTabsAtIndex:(unint64_t)a3 pinned:(BOOL)a4 dropSession:(id)a5 dragItems:(id)a6;
- (id)duplicateTab:(id)a3;
- (id)existingPersistedTitleForTabDocument:(id)a3;
- (id)globalPinnedTabsForTabGroup:(id)a3;
- (id)iconForSharingTabGroup:(id)a3;
- (id)iconForTabUUID:(id)a3;
- (id)imageForTabGroup:(id)a3;
- (id)menuForTabGroup:(id)a3 variant:(int64_t)a4;
- (id)moveMenuOnPageMenuWithDismissHandler:(id)a3;
- (id)normalPinnedTabs;
- (id)oldestTabsWithLimit:(unint64_t)a3 inPrivateBrowsing:(BOOL)a4;
- (id)openInTabGroupMenuWithNewTabGroupName:(id)a3 URL:(id)a4 descendantCount:(int64_t)a5 handler:(id)a6;
- (id)originatingTabForTab:(id)a3;
- (id)pinnedWBTabsForTabGroup:(id)a3;
- (id)privatePinnedTabs;
- (id)profilesMenuElementsWithOptions:(unint64_t)a3 movingSelectedTabGroups:(id)a4 actionHandler:(id)a5;
- (id)recentlyClosedTabsMenuForTabGroupWithUUID:(id)a3;
- (id)representativeURLForTabGroupConfirmationAlert:(id)a3;
- (id)swipeActionsConfigurationForTab:(id)a3 inTabGroup:(id)a4;
- (id)swipeActionsConfigurationForTabGroup:(id)a3 forPickerSheet:(BOOL)a4;
- (id)switchToTabDocumentForWebClip:(id)a3;
- (id)syntheticBookmarkFolderForTabGroup:(id)a3 withAttribution:(BOOL)a4;
- (id)syntheticBookmarkFoldersIncludingActiveTabGroup:(BOOL)a3;
- (id)tabAtIndex:(unint64_t)a3;
- (id)tabDocumentForURL:(id)a3 forceUnhibernate:(BOOL)a4;
- (id)tabDocumentWithUUID:(id)a3;
- (id)tabForURL:(id)a3;
- (id)tabGroupRelatedToTabWithUUID:(id)a3;
- (id)tabGroupShareSheetForCurrentTabGroup;
- (id)tabGroupsMenuChildrenProvider;
- (id)tabGroupsMenuElementsWithOptions:(unint64_t)a3 newTabGroupName:(id)a4 hostTitle:(id)a5 descendantCount:(int64_t)a6 movingSelectedTabs:(id)a7 actionHandler:(id)a8 dismissHandler:(id)a9;
- (id)tabGroupsMenuForTabGroupButton:(BOOL)a3;
- (id)tabThumbnailCollectionView;
- (id)tabWithIDForWebExtensions:(double)a3;
- (id)tabsOlderThan:(id)a3 inPrivateBrowsing:(BOOL)a4;
- (id)topScopedBookmarkListForActiveTabGroup;
- (id)unnamedTabGroupDisplayTitleProvider;
- (id)wbTabWithUUID:(id)a3;
- (uint64_t)_controlledByAutomation;
- (uint64_t)_currentTabsAreBlank;
- (uint64_t)_didCompleteStateRestoration;
- (uint64_t)_indexForInsertionAfterTab:(int)a3 withPrivateBrowsingEnabled:;
- (uint64_t)_indexForInsertionBeforeTab:(int)a3 withPrivateBrowsingEnabled:;
- (uint64_t)_isProfileActive:(uint64_t)result;
- (uint64_t)_performWithFixedTabBarItems:(uint64_t)result;
- (uint64_t)_shouldReloadAfterAutomaticallySwitchingToTab:(uint64_t)a1;
- (uint64_t)_tabShouldBeHiddenFromWebExtensions:(void *)a1;
- (uint64_t)_wbTabIsBlank:(uint64_t)a1;
- (uint64_t)_wbTabIsShowingStartPageOverriddenByExtension:(uint64_t)a1;
- (uint64_t)canCloseLastTabInTabGroup:(uint64_t)a1;
- (uint64_t)isTabInActiveTabGroup:(uint64_t)result;
- (uint64_t)tabCollectionViewManager;
- (unint64_t)indexForTab:(id)a3;
- (unint64_t)indexOfSelectedTab;
- (unint64_t)newTabGroupTabCount;
- (unint64_t)numberOfCurrentNonHiddenTabs;
- (unint64_t)numberOfTabs;
- (unint64_t)numberOfTabsForCloseAllAction;
- (void)_addNewActiveTabOverviewTab;
- (void)_addTabsToRecentlyClosed:(int)a3 includeUndo:;
- (void)_appendTab:(void *)a3 toTabGroup:;
- (void)_beganSharingTabGroup:(id)a3;
- (void)_cancelPendingUpdateUserActivityTimer;
- (void)_cancelVeryRecentlyClosedTabCountInvalidationTimer;
- (void)_closeLibraryIfNeeded;
- (void)_closeTab:(unsigned int)a3 animated:(int)a4 allowAddingToRecentlyClosedTabs:(char)a5 keepWebViewAlive:(char)a6 showAutoCloseTabsAlert:;
- (void)_closeTabGroup:(id *)a1;
- (void)_closeTabs:(unsigned int)a3 animated:(int)a4 allowAddingToRecentlyClosedTabs:(char)a5 keepWebViewAlive:(char)a6 showAutoCloseTabsAlert:;
- (void)_cloudTabsDidUpdate:(id)a3;
- (void)_copyLinksActionForTabGroup:forPickerSheet:;
- (void)_createInitialPrivateTabIfNeeded;
- (void)_createVeryRecentlyClosedTabCountInvalidationTimer;
- (void)_detachTab:(unsigned int)a3 animated:;
- (void)_detachTabs:(id *)a1;
- (void)_didPerformBatchUpdates;
- (void)_forceUpdateTabGroupTitleIfNeeded:(id *)a1;
- (void)_hasPinnedStartPageExcludingTabs:(void *)a1;
- (void)_hibernateTab:(char *)a1;
- (void)_insertTab:(unint64_t)a3 atIndex:(uint64_t)a4 inBackground:(unsigned int)a5 animated:(char)a6 updateUI:;
- (void)_lockedPrivateBrowsingStateDidChange:(id)a3;
- (void)_markAllTabsInTabGroupAsRead:(uint64_t)a1;
- (void)_movePinnedWBTab:(void *)a3 toTabGroup:;
- (void)_openBlankTabDocumentInTabBarWithOptions:(uint64_t)a1;
- (void)_openBookmark:orURL:inTabGroup:;
- (void)_openLibrary:cloudTabDeviceID:;
- (void)_openSingleBookmark:(void *)a3 orURL:(void *)a4 inTabGroup:(int)a5 setActive:;
- (void)_prepareToMoveTabDocumentToWindow:(int)a3 createPlaceholderImage:;
- (void)_presentAutomaticTabClosingPromptIfNeededForClosedTabCount:(int)a3;
- (void)_presentCloseAlertForTabGroup:completionHandler:;
- (void)_presentOpenAlertForFocusProfile:(int)a3 completionHandler:(int)a4;
- (void)_presentOpenAlertForFocusedTabGroup:(int)a3 completionHandler:(int)a4;
- (void)_presentRenameAlertForTabGroup:(id *)a1;
- (void)_presentShareSheetForTabGroup:(uint64_t)a1 sender:;
- (void)_presentShareSheetWithTabGroupActivityItemConfiguration:sender:;
- (void)_reconfigureLibraryItemViewForTabGroupWithUUID:(uint64_t)a1;
- (void)_redoCloseTabs:(id)a3;
- (void)_registerSingleUndoActionForClosedTabs:(id *)a1;
- (void)_registerUndoActionsForClosedTabs:(uint64_t)a3;
- (void)_registerUndoWithGroup:(void *)a3 actions:;
- (void)_removeTab:(uint64_t)a3 fromTabGroup:(uint64_t)a4;
- (void)_replaceTabs:(uint64_t)a3 withTabs:(unsigned int)a4 persist:;
- (void)_reportTabGroupCreationPrepopulatedWithTabs:(int)a3 fromPotentialAnalyticsSource:(int)a4 TabGroupsMenu:(int)a5;
- (void)_requestContactsAccessIfNeeded;
- (void)_restoreEducationTabsIfNecessaryAnimated:(uint64_t)a1;
- (void)_reuseTabAfterInsertion:(id *)a1;
- (void)_reuseTabIfNecessary:(uint64_t)a1;
- (void)_selectAcceptedSharedTabGroup:(uint64_t)a1;
- (void)_selectNewTabGroupIfNecessaryBeforeClosingTabGroup:(void *)a1;
- (void)_sendDidEndDocumentUpdates;
- (void)_sendEventsForAutoFillTelemetryForClosingTabs:(uint64_t)a1;
- (void)_setTabGroupButtonTitle:image:;
- (void)_switchTabGroupLoopByRelativeIndex:(uint64_t)a1;
- (void)_tabDocumentsWereReusedWhenActiveTabGroupChanged:(uint64_t)a1;
- (void)_tabGroupTabDidUpdatePinned:(void *)a3 inTabGroup:;
- (void)_tabWasAddedToReusableTabs:(void *)a3 fromWindowWithID:(double)a4 previousTabPositions:;
- (void)_undoCloseTabs:(id)a3;
- (void)_updateActiveTabForTabGroup:;
- (void)_updateContextKitSuggestionsForTabGroupWithCompletionHandler:(void *)a1;
- (void)_updateShare:(void *)a3 forActiveTabGroup:;
- (void)_updateTabGroupSuggestions:matchingText:;
- (void)_updateTabsForTabGroup:(uint64_t)a1;
- (void)_updateTabsWithPinnedTabs:(unsigned int)a3 persist:;
- (void)_updateTabsWithPinnedWBTabs:(uint64_t)a1;
- (void)_updateUserActivityTimerFired;
- (void)addBookmarkFolderForTabs:(id)a3;
- (void)addDocumentObserver:(id)a3;
- (void)allowsClosingLastTab;
- (void)attemptToSelectTabGroupFromShare:(id)a3;
- (void)authenticateToUnlockPrivateBrowsing;
- (void)bacgkroundTaskWillExpireWithTotalBackgroundTime:(double)a3;
- (void)canCloseOtherTabs;
- (void)clearBrowserController;
- (void)clearCachedTabSwitcherShareConfigurationForTabGroupWithUUID:(id)a3;
- (void)clearHiddenTabForExplanationView;
- (void)closeAllOpenTabsAnimated:(BOOL)a3;
- (void)closeOtherTabs;
- (void)closeSelectedTabs:(id)a3;
- (void)closeTab;
- (void)closeTab:(id)a3 animated:(BOOL)a4;
- (void)closeTabWithURL:(id)a3 UUID:(id)a4;
- (void)closeTabs:(id)a3 inInactiveTabGroup:(id)a4;
- (void)closeTabsAutomaticallyIfNecessary;
- (void)closeWBTabs:(id)a3 action:(id)a4;
- (void)createTabGroupFromExistingTabs:(BOOL)a3 completionHandler:(id)a4;
- (void)deactivateAllUsageTrackingInformationIfNecessary;
- (void)dealloc;
- (void)didFetchRecentlyAcceptedSharedTabGroupWithUUID:(id)a3 acceptedShareDate:(id)a4;
- (void)didFocusTabGroup:(id)a3;
- (void)didGainOwnershipOfTab:(id)a3;
- (void)didSelectProfileWithIdentifier:(id)a3 previousProfileIdentifier:(id)a4;
- (void)didUpdateTabDocumentsInTabGroupWithUUID:(int)a3;
- (void)dismissOpenTabGroupAlertIfNeeded;
- (void)displayAlreadyAcceptedSharedTabGroupWithUUID:(id)a3;
- (void)duplicateWBTabs:(id)a3;
- (void)evictTabDocument:(id)a3;
- (void)insertNewTabDocument:(id)a3 forcingOrderAfterTabDocument:(id)a4 inBackground:(BOOL)a5 animated:(BOOL)a6;
- (void)insertPerTabGroupBookmark:(id)a3 inPerTabGroupBookmarkFolderWithID:(int)a4;
- (void)insertTab:(id)a3 afterTab:(id)a4 inBackground:(BOOL)a5 animated:(BOOL)a6;
- (void)insertTabDocumentFromTabStateData:(id)a3;
- (void)insertTabWithUUIDForNavigation:(id)a3;
- (void)insertTabs:(id)a3 beforeTab:(id)a4 inBackground:(BOOL)a5 animated:(BOOL)a6;
- (void)makeActiveTabDocumentActive;
- (void)moveTab:(id)a3 fromTabGroupWithUUID:(id)a4 toTabGroupWithUUID:(id)a5 afterTab:(id)a6;
- (void)moveTab:(id)a3 overTab:(id)a4;
- (void)moveTab:(id)a3 toTabGroupWithUUID:(id)a4;
- (void)moveTabGroup:(id)a3 beforeOrAfterTabGroup:(id)a4;
- (void)moveTabGroup:(id)a3 toProfile:(id)a4;
- (void)moveTabsToNewWindow:(id)a3;
- (void)moveWBTabs:(id)a3 toTabGroup:(id)a4;
- (void)openInitialBlankTabDocumentIfNeeded;
- (void)openLibrary:(id)a3;
- (void)openNewTabWithOptions:(int64_t)a3 completionHandler:(id)a4;
- (void)openRecentlyClosedTabWithUUID:(id)a3 inTabGroupWithUUID:(id)a4;
- (void)openTab:(id)a3 navigatedFromLibraryType:(id)a4;
- (void)performBatchUpdatesWithBlock:(id)a3;
- (void)performSuppressingDataModelUpdates:(id)a3;
- (void)persistActiveTabGroupOrTabGroupVisibleInSwitcher;
- (void)persistAllCurrentTabsInBackground:(BOOL)a3;
- (void)persistTab:(id)a3 notify:(BOOL)a4;
- (void)persistTabs:(id)a3 inTabGroupWithUUID:(id)a4 inBackground:(BOOL)a5;
- (void)pinnedTabsManager:(id)a3 didUpdatePinnedTabs:(id)a4 inProfileWithIdentifier:(id)a5;
- (void)pinnedTabsManager:(id)a3 didUpdatePinnedTabs:(id)a4 isPrivate:(BOOL)a5;
- (void)presentAlertToCreateTabGroupFromTabs:(id)a3 withTitle:(id)a4 message:(id)a5 suggestedName:(id)a6 okActionTitle:(id)a7 completionHandler:(id)a8;
- (void)registerUndoWithName:(id)a3 actions:(id)a4;
- (void)registerUndoWithType:(int64_t)a3 actions:(id)a4;
- (void)reloadTabsUsingFilter:(void *)a1;
- (void)removeDocumentObserver:(id)a3;
- (void)removeSingleBlankTabFromActiveTabGroup;
- (void)removeSingleBlankTabFromInactiveTabGroup:(id)a3;
- (void)reorderPinnedTabsIntoPlace;
- (void)replaceBlankActiveTabWithTab:(id)a3;
- (void)replaceBlankActiveTabWithTabs:(id)a3 andSelectTab:(id)a4;
- (void)replaceTabDocument:(id)a3 withTabDocument:(id)a4 committingSpeculativeLoad:(BOOL)a5;
- (void)saveStateInBackground:(BOOL)a3 needsValidate:(BOOL)a4;
- (void)saveTabDocumentUserActivitySoon:(id)a3;
- (void)selectLocalTabGroup;
- (void)selectPrivateTabGroup;
- (void)setActiveProfileIdentifier:(id)a3;
- (void)setActiveTab:(id)a3 animated:(BOOL)a4 deferActivation:(BOOL)a5;
- (void)setActiveTabDocument:(id)a3 animated:(BOOL)a4 deferActivation:(BOOL)a5;
- (void)setActiveTabGroupUUID:(id)a3;
- (void)setActiveTabUUID:(id)a3;
- (void)setPrivateBrowsingMode:(int64_t)a3 animated:(BOOL)a4;
- (void)setTab:(id)a3 isPinned:(BOOL)a4;
- (void)setTitle:(id)a3 forTabGroupWithUUID:(id)a4;
- (void)setWBTabs:(id)a3 arePinned:(BOOL)a4;
- (void)setWindowState:(id)a3;
- (void)sortTabsInTabGroupWithUUIDString:(id)a3 withSortMode:(int64_t)a4;
- (void)sortTabsWithMode:(int64_t)a3;
- (void)switchOutOfSyncedTabGroup;
- (void)switchToTabGroupVisibleInSwitcherIfNeeded;
- (void)tabDocumentDidUpdateUUID:(id)a3 previousUUID:(id)a4;
- (void)tabGroupConfirmationAlertDidBeginDismissal:(id)a3;
- (void)tabGroupManager:(id)a3 didRemoveTabGroupWithUUID:(id)a4;
- (void)tabGroupManager:(id)a3 didUpdateTabGroupWithUUID:(id)a4;
- (void)tabGroupManager:(id)a3 didUpdateTabWithUUID:(id)a4 userDriven:(BOOL)a5;
- (void)tabGroupManager:(id)a3 didUpdateTabsInTabGroupWithUUID:(id)a4;
- (void)tabGroupManager:(id)a3 willPerformBlockUpdatesForTabGroupWithUUID:(id)a4;
- (void)tabGroupManager:(id)a3 willReplaceTabWithUUID:(id)a4 withTabWithUUID:(id)a5;
- (void)tabGroupManagerDidDeletedAllLocalTabs:(id)a3;
- (void)tabGroupManagerDidFinishSetup:(id)a3;
- (void)tabGroupManagerDidUpdateTabGroups:(id)a3;
- (void)tabGroupNamingTextDidChange:(id)a3;
- (void)tabSwitcherShareConfigurationForTabGroup:(id)a3 completion:(id)a4;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)togglePinningTab:(id)a3 inInactiveTabGroup:(id)a4;
- (void)toggleTabGroupUUIDExpanded:(id)a3;
- (void)updateActiveTab;
- (void)updateEducationTabsLastSyncDate;
- (void)updateFocusProfileEnteringForeground;
- (void)updateFocusedTabGroupEnteringForeground;
- (void)updateHibernatedTabDocumentsSavingState;
- (void)updateLastSelectedTabUUIDForClosingWBTabs:(uint64_t)a1;
- (void)updateLocalTabGroupTitle;
- (void)updateLockedBrowsingState;
- (void)updateSelectedTabGroupName;
- (void)updateTabCount;
- (void)updateUsageTrackingInformationIfNecessary;
- (void)updateWBTabWithTab:(id)a3 notify:(BOOL)a4 persist:(BOOL)a5;
- (void)webContentFilterChanged;
- (void)willLoseOwnershipOfTab:(id)a3;
- (void)willSelectProfileWithIdentifier:(id)a3;
@end

@implementation TabController

- (UIMenu)tabExposeMenu
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D75710];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__TabController_tabExposeMenu__block_invoke;
  v5[3] = &unk_2781D9580;
  objc_copyWeak(&v6, &location);
  v3 = [v2 safari_menuWithUncachedChildrenProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (TabDocument)activeTabDocument
{
  activeLibraryTab = self->_activeLibraryTab;
  if (activeLibraryTab)
  {
    v3 = activeLibraryTab;
  }

  else
  {
    v3 = [(TabController *)self activeNonLibraryTab];
  }

  return v3;
}

- (TabDocument)activeNonLibraryTab
{
  v3 = [(TabController *)self isPrivateBrowsingEnabled];

  return [(TabController *)self _activeTabDocumentForPrivateBrowsing:v3];
}

- (NSString)startPageBackgroundImageIdentifier
{
  v3 = &stru_2827BF158;
  if (![(TabController *)self isPrivateBrowsingEnabled])
  {
    v4 = [(TabController *)self activeTabGroup];
    if ([v4 isNamed])
    {
      v5 = [(TabController *)self activeTabGroup];
      v6 = [v5 uuid];
    }

    else
    {
      v6 = [(TabController *)self activeProfileIdentifier];
    }

    if ([(__CFString *)v6 isEqualToString:*MEMORY[0x277D49BD8]])
    {
      v7 = &stru_2827BF158;
    }

    else
    {
      v7 = v6;
    }

    v3 = v7;
  }

  return v3;
}

- (NSString)activeProfileIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained activeProfileIdentifier];

  return v3;
}

- (NSArray)currentTabs
{
  v3 = [(TabController *)self isPrivateBrowsingEnabled];

  return [(TabController *)self _tabsForPrivateBrowsing:v3];
}

- (void)_sendDidEndDocumentUpdates
{
  if (a1)
  {
    [*(a1 + 272) didEndUpdates];
    v1 = +[TabDocumentManager sharedManager];
    [v1 reclaimTabsIfNeeded];
  }
}

- (id)normalPinnedTabs
{
  if (a1)
  {
    v1 = [a1 normalTabs];
    v2 = [v1 safari_filterObjectsUsingBlock:&__block_literal_global_51];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)privatePinnedTabs
{
  if (a1)
  {
    v1 = [a1 privateTabs];
    v2 = [v1 safari_filterObjectsUsingBlock:&__block_literal_global_53_0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (char)mutableCurrentTabs
{
  if (a1)
  {
    v2 = a1;
    [a1 isPrivateBrowsingEnabled];
    OUTLINED_FUNCTION_54();
    if (!v4)
    {
      v3 = 24;
    }

    a1 = *&v2[v3];
    v1 = vars8;
  }

  return a1;
}

- (void)_createInitialPrivateTabIfNeeded
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (![a1[3] count])
    {
      v2 = [TabDocument alloc];
      v3 = [MEMORY[0x277CCAD78] UUID];
      WeakRetained = objc_loadWeakRetained(a1 + 1);
      v5 = [(TabDocument *)v2 initWithTitle:0 URL:0 UUID:v3 privateBrowsingEnabled:1 hibernated:1 bookmark:0 browserController:WeakRetained];
      v6 = a1[35];
      a1[35] = v5;

      [a1[35] setIsBlank:1];
      [a1[35] displayNewTabOverridePageIfNecessary];
      [a1[3] addObject:a1[35]];
      v7 = [a1[32] privateTabGroup];
      v9[0] = a1[35];
      [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_22() uuid];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_21() persistTabs:v3 inTabGroupWithUUID:WeakRetained inBackground:1];

      v8 = [a1[35] uuid];
      [v8 UUIDString];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_33() setLastSelectedTabUUID:WeakRetained];

      [a1[35] setHasBeenInserted:1];
    }
  }
}

- (id)unnamedTabGroupDisplayTitleProvider
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__TabController_unnamedTabGroupDisplayTitleProvider__block_invoke;
  v4[3] = &unk_2781D9DC0;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (WBTabGroup)activeTabGroup
{
  if (self->_activeTabGroupUUID)
  {
    v3 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_didPerformBatchUpdates
{
  if (a1)
  {
    [OUTLINED_FUNCTION_68(a1) endFixingTabBarItems];
    [v1[9] endFixingTabOverviewItems];
    [v1[9] updateTabOverviewItems];
    v2 = [v1 activeTabDocument];
    [v1[9] updateTabBarAnimated:objc_msgSend(MEMORY[0x277D75D18] keepingTabVisible:{"areAnimationsEnabled"), v2}];
    [(TabController *)v1 _sendDidEndDocumentUpdates];
  }
}

- (NSArray)normalTabs
{
  v2 = [(NSMutableArray *)self->_mutableNormalTabs copy];

  return v2;
}

- (NSArray)unpinnedTabs
{
  v2 = [(TabController *)self currentTabs];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_55_0];

  return v3;
}

- (NSArray)privateTabs
{
  v2 = [(NSMutableArray *)self->_mutablePrivateTabs copy];

  return v2;
}

- (id)_application
{
  if (a1)
  {
    a1 = +[Application sharedApplication];
    v1 = vars8;
  }

  return a1;
}

- (NSArray)normalAndPrivateTabs
{
  mutableNormalTabs = self->_mutableNormalTabs;
  v3 = [(TabController *)self privateTabs];
  v4 = [(NSMutableArray *)mutableNormalTabs arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (id)_localTabGroupTitleProvider
{
  if (val)
  {
    objc_initWeak(&location, val);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __44__TabController__localTabGroupTitleProvider__block_invoke;
    v3[3] = &unk_2781D9D98;
    objc_copyWeak(&v4, &location);
    v1 = _Block_copy(v3);
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (void)openInitialBlankTabDocumentIfNeeded
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (!self->_activeTabGroupUUID)
  {
    v2 = [(WBWindowState *)self->_windowState localTabGroup];
    v6 = [v2 uuid];
    activeTabGroupUUID = self->_activeTabGroupUUID;
    self->_activeTabGroupUUID = v6;
  }

  objc_loadWeakRetained(&self->_browserController);
  [OUTLINED_FUNCTION_4() startPageBackgroundImageIdentifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_6_1() loadBackgroundImageIfNeededForIdentifier:?];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (![(NSMutableArray *)self->_mutableNormalTabs count])
  {
    v9 = [TabDocument alloc];
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [(TabDocument *)v9 initWithTitle:0 URL:0 UUID:v10 privateBrowsingEnabled:0 hibernated:1 bookmark:0 browserController:WeakRetained];
    normalActiveTabDocument = self->_normalActiveTabDocument;
    self->_normalActiveTabDocument = v11;

    [self->_normalActiveTabDocument setIsBlank:1];
    [self->_normalActiveTabDocument displayNewTabOverridePageIfNecessary];
    [(NSMutableArray *)self->_mutableNormalTabs addObject:self->_normalActiveTabDocument];
    v13 = [(TabController *)self activeTabGroup];
    if ([v13 isPrivateBrowsing])
    {
      v14 = [(WBWindowState *)self->_windowState localTabGroup];
    }

    else
    {
      v14 = v13;
    }

    v15 = v14;
    v18[0] = self->_normalActiveTabDocument;
    [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    objc_claimAutoreleasedReturnValue();
    v16 = [OUTLINED_FUNCTION_31() uuid];
    [(TabController *)self persistTabs:v4 inTabGroupWithUUID:v16 inBackground:1];

    [self->_normalActiveTabDocument setHasBeenInserted:1];
  }

  [(TabController *)&self->super.isa _createInitialPrivateTabIfNeeded];
  v17 = [(TabController *)self _application];
  [v17 updateTabCount];

  [(TabCollectionViewManager *)self->_tabCollectionViewManager updateTabOverviewItems];
  [WeakRetained clearCachedTabCompletionData];
}

- (id)_allTabGroupsAcrossWindows
{
  if (a1)
  {
    v3 = [*(a1 + 48) allSyncedTabGroupsExceptRemoteUnnamedTabGroups];
    v4 = [v3 mutableCopy];

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v6 = [WeakRetained browserWindowController];
    v7 = [v6 browserControllers];

    OUTLINED_FUNCTION_5_0();
    v8 = v7;
    OUTLINED_FUNCTION_20();
    v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
    if (v10)
    {
      v11 = v10;
      OUTLINED_FUNCTION_81();
      do
      {
        for (i = 0; i != v11; ++i)
        {
          OUTLINED_FUNCTION_35();
          if (v13 != v1)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(v21 + 8 * i) tabController];
          v15 = [v14 windowState];

          [v15 localTabGroup];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_11() safari_addObjectUnlessNil:?];

          [v15 privateTabGroup];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_11() safari_addObjectUnlessNil:?];
        }

        OUTLINED_FUNCTION_20();
        v11 = OUTLINED_FUNCTION_76(v16, v17, v18, v19);
      }

      while (v11);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canAddNewTabForCurrentBrowsingMode
{
  v3 = [(TabController *)self isPrivateBrowsingEnabled];

  return [(TabController *)self canAddNewTabForPrivateBrowsing:v3];
}

- (BOOL)hasUnreadTab
{
  v3 = [(TabController *)self activeTabGroup];
  v4 = [v3 isShared];

  if (!v4)
  {
    return 0;
  }

  v5 = [(TabController *)self currentTabs];
  v6 = [v5 safari_containsObjectPassingTest:&__block_literal_global_618];

  return v6;
}

- (void)updateTabCount
{
  [(TabController *)self updateLocalTabGroupTitle];
  notificationManager = self->_notificationManager;

  [(TabControllerNotificationManager *)notificationManager tabDocumentCountDidChange];
}

- (void)updateLocalTabGroupTitle
{
  v4 = [(TabController *)self currentTabs];
  if ([v4 count])
  {
    v3 = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabBarItemsFixed];

    if (v3)
    {
      return;
    }

    v4 = [(TabController *)self activeTabGroup];
    [(TabController *)&self->super.isa _forceUpdateTabGroupTitleIfNeeded:v4];
  }
}

- (void)updateSelectedTabGroupName
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained bannerController];
  v4 = [v3 tabGroupBanner];
  [v4 updateTitle];

  v5 = [(TabController *)&self->super.isa _titleForTabGroupButton];
  v6 = [(TabController *)&self->super.isa _imageForTabGroupButton];
  [TabController _setTabGroupButtonTitle:image:];

  [WeakRetained updateTabGroupButtonsVisibility];
  [WeakRetained updateTabGroupHeading];
  v7 = [WeakRetained rootViewController];
  v8 = [v7 unifiedBar];
  [v8 setNeedsLayout];

  v9 = [WeakRetained libraryController];
  [v9 updateSelection];
}

- (id)_titleForTabGroupButton
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 activeTabGroup];
    WeakRetained = objc_loadWeakRetained(v1 + 1);
    if ([WeakRetained canShowProfileInNavigationBar])
    {
      v4 = [v2 isNamed];

      if ((v4 & 1) == 0)
      {
        v5 = [v1 activeProfile];
        v1 = [v5 title];

LABEL_7:
        goto LABEL_8;
      }
    }

    else
    {
    }

    v1 = [v2 displayTitle];
    goto LABEL_7;
  }

LABEL_8:

  return v1;
}

__CFString *__44__TabController__localTabGroupTitleProvider__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    __44__TabController__localTabGroupTitleProvider__block_invoke_cold_1();
    v2 = v4;
  }

  else
  {
    v2 = &stru_2827BF158;
  }

  return v2;
}

void __44__TabController__localTabGroupTitleProvider__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_47();
  v3 = [*(v2 + 256) localTabGroup];
  v10 = [v3 tabs];

  v4 = [(TabController *)v1 _tabCountForDisplay];
  if (v4 && ((v5 = v4, v4 != 1) || ([v10 firstObject], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "url"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7)))
  {
    v8 = _WBSLocalizedString();
    v9 = [OUTLINED_FUNCTION_25() localizedStringWithFormat:v5];
  }

  else
  {
    v9 = _WBSLocalizedString();
  }

  *v0 = v9;
}

- (id)_tabCountForDisplay
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 activeTabGroup];
    v3 = [v2 isLocal];

    if (v3)
    {
      v4 = [v1 currentTabs];
      v5 = [v4 safari_filterObjectsUsingBlock:&__block_literal_global_289];

      v1 = [v5 count];
    }

    else
    {
      v5 = [v1[32] localTabGroup];
      v6 = [v5 tabs];
      v7 = [v6 count];
      v8 = [v1[33] pinnedTabs];
      v1 = ([v8 count] + v7);
    }
  }

  return v1;
}

uint64_t __36__TabController__tabCountForDisplay__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isInteractivelyInserted] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)_imageForTabGroupButton
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 1);
    v3 = [WeakRetained canShowProfileInNavigationBar];

    if (v3)
    {
      v4 = [v1 activeProfile];
      v1 = [v4 symbolImage];
    }

    else
    {
      v5 = [v1 activeTabGroup];
      v6 = [v5 isShared];

      if (v6)
      {
        v1 = [MEMORY[0x277D755B8] systemImageNamed:@"person.2.fill"];
      }

      else
      {
        v1 = 0;
      }
    }
  }

  return v1;
}

- (WBProfile)activeProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained activeProfile];

  return v3;
}

- (WBSCloudTabDeviceProvider)profileCloudTabStore
{
  if ([MEMORY[0x277D49A08] isSafariProfilesEnabled] && !-[TabController isInDefaultProfile](self, "isInDefaultProfile"))
  {
    v3 = self->_tabGroupManager;
  }

  else
  {
    v3 = [(TabController *)self cloudTabStore];
  }

  return v3;
}

- (BOOL)isInDefaultProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained isInDefaultProfile];

  return v3;
}

- (CloudTabStore)cloudTabStore
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained browserWindowController];
  v4 = [v3 cloudTabStore];

  return v4;
}

- (void)updateUsageTrackingInformationIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(TabController *)self allTabDocuments];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(TabController *)self activeTabDocument];
  [v8 updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:1];
}

- (NSArray)allTabDocuments
{
  v3 = [(TabController *)self tabDocuments];
  v4 = [(TabController *)self privateTabDocuments];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

uint64_t __29__TabController_tabDocuments__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __36__TabController_privateTabDocuments__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)updateFocusProfileEnteringForeground
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [(TabController *)self _application];
  if ([v5 needsFocusProfileUpdate] && (objc_msgSend(v5, "needsFocusedTabGroupUpdate") & 1) == 0)
  {
    v6 = [v5 focusProfile];
    if (!v6 || (-[TabController activeProfileIdentifier](self, "activeProfileIdentifier"), objc_claimAutoreleasedReturnValue(), [OUTLINED_FUNCTION_33() identifier], objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(OUTLINED_FUNCTION_14(), "isEqualToString:"), v3, v2, v7))
    {
      if (self->_didFinishTabGroupSetup)
      {
        [v5 setNeedsFocusProfileUpdate:0];
      }

      goto LABEL_22;
    }

    if (![v5 prefersSingleWindow])
    {
LABEL_22:

      goto LABEL_23;
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v9 = [WeakRetained viewControllerToPresentFrom];
    v10 = [v9 presentedViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = v12;
    if (v12)
    {
      v14 = [v12 role];
      v15 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      v16 = v15;
      if (v14 == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_215819000, v16, OS_LOG_TYPE_DEFAULT, "Did not change profile when tab entered foreground because a FTG/profile alert is already in place.", &v23, 2u);
        }

LABEL_21:

        goto LABEL_22;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v21 = v16;
        [v13 role];
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_71(&dword_215819000, v21, v22, "Closing unexpected alert with role (%lu) that was in the way when changing focus profile.", &v23);
      }

      [v13 dismissViewControllerAnimated:1 completion:0];
    }

    v17 = [v6 identifier];
    v18 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = v17;
      OUTLINED_FUNCTION_75(&dword_215819000, v19, v20, "Opening focus profile %{public}@ on entering foreground.", &v23);
    }

    [OUTLINED_FUNCTION_65() setActiveProfileIdentifier:?];

    goto LABEL_21;
  }

LABEL_23:
}

- (void)updateFocusedTabGroupEnteringForeground
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(TabController *)self _application];
  if ([v3 needsFocusedTabGroupUpdate] && (objc_msgSend(v3, "needsFocusProfileUpdate") & 1) == 0)
  {
    v4 = [(TabController *)self focusedTabGroup];
    if (v4 && ![OUTLINED_FUNCTION_40() isTabGroupActive:?])
    {
      if ([v3 prefersSingleWindow])
      {
        WeakRetained = objc_loadWeakRetained(&self->_browserController);
        v6 = [WeakRetained viewControllerToPresentFrom];
        v7 = [v6 presentedViewController];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;
        v10 = v9;
        if (v9 && [v9 role] == 1)
        {
          v11 = WBS_LOG_CHANNEL_PREFIXSiriLink();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v16) = 0;
            _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_DEFAULT, "Has open FTG alert on entering foreground", &v16, 2u);
          }
        }

        else
        {
          [v10 dismissViewControllerAnimated:1 completion:0];
          v12 = [v4 uuid];
          v13 = WBS_LOG_CHANNEL_PREFIXSiriLink();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138543362;
            v17 = v12;
            OUTLINED_FUNCTION_75(&dword_215819000, v14, v15, "Opening FTG %{public}@ on entering foreground", &v16);
          }

          [OUTLINED_FUNCTION_65() setActiveTabGroupUUID:?];
        }
      }
    }

    else if (self->_didFinishTabGroupSetup)
    {
      [v3 setNeedsFocusedTabGroupUpdate:0];
    }
  }
}

- (WBTabGroup)activeTabGroupOrTabGroupVisibleInSwitcher
{
  if (SFEnhancedTabOverviewEnabled() && [(TabCollectionViewManager *)self->_tabCollectionViewManager isShowingTabView])
  {
    v3 = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabSwitcherViewController];
    v4 = [v3 visibleTabGroup];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(TabController *)self activeTabGroup];
    }

    v7 = v6;
  }

  else
  {
    v7 = [(TabController *)self activeTabGroup];
  }

  return v7;
}

- (BOOL)hasMultipleProfiles
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained hasMultipleProfiles];

  return v3;
}

- (NSString)activeLibraryType
{
  v2 = [(TabController *)self activeTabDocument];
  v3 = [v2 libraryType];

  return v3;
}

- (NSArray)tabGroups
{
  v3 = [(TabController *)self unnamedTabGroups];
  v4 = [(TabController *)self namedTabGroups];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (NSArray)unnamedTabGroups
{
  if (self->_windowState)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [WeakRetained unnamedTabGroup];
    [v4 safari_addObjectUnlessNil:v5];

    if ([WeakRetained isPrivateBrowsingAvailable])
    {
      v6 = [(WBWindowState *)self->_windowState privateTabGroup];
      [v4 addObject:v6];
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)makeActiveTabDocumentActive
{
  v3 = [(TabController *)self activeTabDocument];
  [v3 setActive:1];
  [(TabControllerNotificationManager *)self->_notificationManager didSwitchFromTabDocument:0 toTabDocument:v3];
}

- (NSArray)tabDocumentsForAllTabGroups
{
  v3 = [(TabController *)self currentTabDocuments];
  v4 = [v3 mutableCopy];

  v5 = [(TabController *)self tabGroups];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __44__TabController_tabDocumentsForAllTabGroups__block_invoke;
  v12 = &unk_2781D9840;
  v13 = self;
  v14 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

- (NSArray)currentTabDocuments
{
  v2 = [(TabController *)self currentTabs];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_70_1];

  return v3;
}

uint64_t __36__TabController_currentTabDocuments__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __44__TabController_tabDocumentsForAllTabGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activeTabGroup];

  if (v4 != v3)
  {
    v5 = [v3 tabs];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__TabController_tabDocumentsForAllTabGroups__block_invoke_2;
    v6[3] = &unk_2781D9818;
    v7 = *(a1 + 40);
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __44__TabController_tabDocumentsForAllTabGroups__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 uuid];

  v9 = [v5 initWithUUIDString:v6];
  v7 = +[(WBReusableTabManager *)ReusableTabManager];
  v8 = [v7 referenceToTabWithUUID:v9];

  if (v8)
  {
    [*(a1 + 32) addObject:v8];
  }
}

- (TabDocument)hiddenPrivateTabDocumentWhenShowingPrivateBrowsingExplanationText
{
  if ([(TabDocument *)self->_tabDocumentBeingHiddenFromTabView isPrivateBrowsingEnabled]&& [(NSMutableArray *)self->_mutablePrivateTabs count]== 1)
  {
    v3 = self->_tabDocumentBeingHiddenFromTabView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isShowingLibraryDocument
{
  v2 = [(TabController *)self activeTabDocument];
  v3 = [v2 libraryType];
  v4 = v3 != 0;

  return v4;
}

- (WBTabGroup)privateTabGroupIfAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isPrivateBrowsingAvailable])
  {

LABEL_4:
    v7 = [(WBWindowState *)self->_windowState privateTabGroup];
    goto LABEL_6;
  }

  activeTabGroupUUID = self->_activeTabGroupUUID;
  v5 = [(WBWindowState *)self->_windowState privateTabGroup];
  v6 = [v5 uuid];
  LODWORD(activeTabGroupUUID) = [(NSString *)activeTabGroupUUID isEqual:v6];

  if (activeTabGroupUUID)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (WBTabGroup)unnamedTabGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained unnamedTabGroup];

  return v3;
}

- (void)setWindowState:(id)a3
{
  v8 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_windowState, a3);
    v5 = [(TabController *)self _localTabGroupTitleProvider];
    v6 = [(WBWindowState *)self->_windowState localTabGroup];
    [v6 setDisplayTitleProvider:v5];

    v7 = [(WBWindowState *)self->_windowState privateTabGroup];
    [v7 setDisplayTitleProvider:&__block_literal_global_54];

    [(WBTabGroupManager *)self->_tabGroupManager registerWindowState:v8];
  }
}

- (void)closeTabsAutomaticallyIfNecessary
{
  v3 = [MEMORY[0x277D49E28] automaticTabClosingInterval];
  if (self && ![MEMORY[0x277D49E28] automaticTabClosingInterval])
  {
    v14 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "Not closing any tabs, since the user's preference is to never close tabs automatically", buf, 2u);
    }
  }

  else
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 0;
    v31 = buf;
    v32 = 0x2020000000;
    v33 = v4;
    v5 = [(WBWindowState *)self->_windowState localTabGroup];
    v6 = [v5 tabs];
    v7 = [(WBWindowState *)self->_windowState privateTabGroup];
    v8 = [v7 tabs];
    v9 = [v6 arrayByAddingObjectsFromArray:v8];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __50__TabController_closeTabsAutomaticallyIfNecessary__block_invoke;
    v29[3] = &unk_2781D9780;
    v29[4] = self;
    v29[5] = buf;
    v29[6] = v3;
    v10 = [v9 safari_filterObjectsUsingBlock:v29];
    [MEMORY[0x277D49E28] setMostDistantLastViewedTime:*(v31 + 3)];
    if ([v10 count])
    {
      v11 = [(TabController *)self activeTabGroup];
      v12 = [v11 isLocal];

      if (v12)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __50__TabController_closeTabsAutomaticallyIfNecessary__block_invoke_41;
        v28[3] = &unk_2781D97A8;
        v28[4] = self;
        v13 = [v10 safari_mapAndFilterObjectsUsingBlock:v28];
        if ([v13 count])
        {
          [(TabController *)self _closeTabs:v13 animated:0 allowAddingToRecentlyClosedTabs:1 keepWebViewAlive:0 showAutoCloseTabsAlert:1];
        }
      }

      else
      {
        tabGroupManager = self->_tabGroupManager;
        v17 = [(WBWindowState *)self->_windowState localTabGroup];
        v18 = [v17 uuid];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __50__TabController_closeTabsAutomaticallyIfNecessary__block_invoke_2;
        v26[3] = &unk_2781D97D0;
        v27 = v10;
        [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:v18 persist:1 usingBlock:v26];
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __50__TabController_closeTabsAutomaticallyIfNecessary__block_invoke_3;
      v25[3] = &unk_2781D97A8;
      v25[4] = self;
      v19 = [v10 safari_mapAndFilterObjectsUsingBlock:v25];
      if ([v19 count])
      {
        [(TabController *)self _closeTabs:v19 animated:0 allowAddingToRecentlyClosedTabs:0 keepWebViewAlive:0 showAutoCloseTabsAlert:1];
        v20 = +[Application sharedApplication];
        [v20 updateLockedPrivateBrowsingState];
      }

      v21 = [MEMORY[0x277D499B8] sharedLogger];
      v22 = [v10 count];
      v23 = WBSAutomaticTabClosingIntervalAnalyticsTitle();
      [v21 didCloseTabsAutomaticallyWithCount:v22 tabClosingInterval:v23];
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXTabs();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_215819000, v15, OS_LOG_TYPE_DEFAULT, "Not closing any tabs, because none were eligible to close automatically", v24, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

uint64_t __50__TabController_closeTabsAutomaticallyIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v3 uuid];
  v7 = [v5 initWithUUIDString:v6];
  v8 = [v4 tabWithUUID:v7];

  if (![v8 isActive])
  {
    v11 = [v3 localAttributes];
    v12 = [v11 lastVisitTime];

    if (v12 && ([v12 timeIntervalSinceReferenceDate], v13 > 0.0))
    {
      WBSAutomaticTabClosingIntervalTimeInterval();
      if ([v3 canCloseAutomaticallyForInterval:?])
      {
        v10 = 1;
LABEL_11:

        goto LABEL_12;
      }

      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v12];
      v18 = v17;

      if (v18 > 0.0)
      {
        v10 = 0;
        v19 = *(*(a1 + 40) + 8);
        v20 = *(v19 + 24);
        if (v20 >= v18)
        {
          v20 = v18;
        }

        *(v19 + 24) = v20;
        goto LABEL_11;
      }
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXTabs();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "Not closing tab automatically because lastViewedTime is unknown.", v21, 2u);
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

  v9 = WBS_LOG_CHANNEL_PREFIXTabs();
  v10 = 0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Not closing tab automatically because it is active", buf, 2u);
    v10 = 0;
  }

LABEL_12:

  return v10;
}

id __50__TabController_closeTabsAutomaticallyIfNecessary__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPrivateBrowsing])
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    v7 = [v3 uuid];
    v8 = [v6 initWithUUIDString:v7];
    v4 = [v5 tabWithUUID:v8];
  }

  return v4;
}

id __50__TabController_closeTabsAutomaticallyIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPrivateBrowsing])
  {
    v4 = *(a1 + 32);
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = [v3 uuid];
    v7 = [v5 initWithUUIDString:v6];
    v8 = [v4 tabWithUUID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_cancelVeryRecentlyClosedTabCountInvalidationTimer
{
  veryRecentlyClosedTabCountInvalidationTimer = self->_veryRecentlyClosedTabCountInvalidationTimer;
  if (veryRecentlyClosedTabCountInvalidationTimer)
  {
    self->_veryRecentlyClosedTabCount = 0;
    [(NSTimer *)veryRecentlyClosedTabCountInvalidationTimer invalidate];
    v4 = self->_veryRecentlyClosedTabCountInvalidationTimer;
    self->_veryRecentlyClosedTabCountInvalidationTimer = 0;
  }
}

- (NSArray)pinnedTabs
{
  v2 = [(TabController *)self currentTabs];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_49_1];

  return v3;
}

- (NSArray)normalUnpinnedTabs
{
  v2 = [(TabController *)self normalTabs];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_57];

  return v3;
}

- (NSArray)privateUnpinnedTabs
{
  v2 = [(TabController *)self privateTabs];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_59_0];

  return v3;
}

- (id)tabsOlderThan:(id)a3 inPrivateBrowsing:(BOOL)a4
{
  v6 = MEMORY[0x277CBEA80];
  v7 = a3;
  v8 = [v6 currentCalendar];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 dateByAddingComponents:v7 toDate:v9 options:0];

  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  if (a4)
  {
    [(TabController *)self privateUnpinnedTabs];
  }

  else
  {
    [(TabController *)self normalUnpinnedTabs];
  }
  v13 = ;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__TabController_tabsOlderThan_inPrivateBrowsing___block_invoke;
  v16[3] = &__block_descriptor_40_e29_B16__0___CollectionViewTab__8l;
  v16[4] = v12;
  v14 = [v13 safari_filterObjectsUsingBlock:v16];

  return v14;
}

uint64_t __55__TabController_oldestTabsWithLimit_inPrivateBrowsing___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  [a2 lastActivationTime];
  v6 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = MEMORY[0x277CBEAA8];
  [v5 lastActivationTime];
  v9 = v8;

  v10 = [v7 dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (unint64_t)numberOfCurrentNonHiddenTabs
{
  v3 = [(TabController *)self currentTabs];
  tabDocumentBeingHiddenFromTabView = self->_tabDocumentBeingHiddenFromTabView;
  if (tabDocumentBeingHiddenFromTabView && (v5 = -[TabDocument isPrivateBrowsingEnabled](tabDocumentBeingHiddenFromTabView, "isPrivateBrowsingEnabled"), v5 == -[TabController isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")) && [v3 containsObject:self->_tabDocumentBeingHiddenFromTabView])
  {
    v6 = [v3 count] - 1;
  }

  else
  {
    v6 = [v3 count];
  }

  return v6;
}

- (unint64_t)numberOfTabsForCloseAllAction
{
  v3 = [(TabController *)self numberOfCurrentNonHiddenTabs];
  v4 = [(TabController *)self pinnedTabs];
  v5 = v3 - [v4 count];

  return v5;
}

- (NSArray)pinnedTabDocuments
{
  v2 = [(TabController *)self currentTabs];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_72];

  return v3;
}

uint64_t __35__TabController_pinnedTabDocuments__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isPinned];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)unpinnedTabDocuments
{
  v2 = [(TabController *)self currentTabs];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_74];

  return v3;
}

uint64_t __37__TabController_unpinnedTabDocuments__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isPinned] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)normalUnpinnedTabDocuments
{
  v2 = [(TabController *)self normalTabs];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_76];

  return v3;
}

uint64_t __43__TabController_normalUnpinnedTabDocuments__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isPinned] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)privateUnpinnedTabDocuments
{
  v2 = [(TabController *)self privateTabs];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_78];

  return v3;
}

uint64_t __44__TabController_privateUnpinnedTabDocuments__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isPinned] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addDocumentObserver:(id)a3
{
  if (a3)
  {
    [(TabControllerNotificationManager *)self->_notificationManager addObserver:?];
  }
}

- (void)removeDocumentObserver:(id)a3
{
  if (a3)
  {
    [(TabControllerNotificationManager *)self->_notificationManager removeObserver:?];
  }
}

id __57__TabController_didUpdateTabDocumentsInTabGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pinnedTabs];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__TabController_didUpdateTabDocumentsInTabGroupWithUUID___block_invoke_2;
  v8[3] = &unk_2781D9868;
  v9 = v3;
  v5 = v3;
  v6 = [v4 safari_mapObjectsUsingBlock:v8];

  return v6;
}

id __57__TabController_didUpdateTabDocumentsInTabGroupWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uuidString];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v3 wbTab];
    v8 = [v9 mutableCopy];
  }

  v10 = [v3 tabUpdateBlock];
  (v10)[2](v10, v8);

  return v8;
}

- (void)updateHibernatedTabDocumentsSavingState
{
  v2 = [(TabController *)self allTabDocuments];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_87];
}

void __56__TabController_updateHibernatedTabDocumentsSavingState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPersistWhenHibernated:{objc_msgSend(v2, "isHibernated")}];
}

- (void)deactivateAllUsageTrackingInformationIfNecessary
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(TabController *)self allTabDocuments];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_browserController);
        v10 = [WeakRetained tabDocumentPlayingPIPVideo];

        if (v10 != v8)
        {
          [v8 updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (BOOL)hasTabsThatShouldBeObscuredForDigitalHealth
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(TabController *)self allTabDocuments];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldObscureForDigitalHealth])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (TabDocument)tabDocumentBeingActivated
{
  v2 = [(TabController *)self tabBeingActivated];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (CollectionViewTab)tabBeingActivated
{
  v3 = [(TabController *)&self->super.isa tabThumbnailCollectionView];
  v4 = [v3 itemToActivate];

  if (!v4 || ([v4 UUID], v5 = objc_claimAutoreleasedReturnValue(), -[TabController tabWithUUID:](self, "tabWithUUID:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = [(TabController *)self activeTabDocument];
  }

  return v6;
}

- (BOOL)canCloseTab
{
  v2 = self;
  v3 = [(TabController *)self activeTabDocument];
  if ([v3 isBlank] && (objc_msgSend(v3, "isPinned") & 1) == 0)
  {
    v4 = [(TabController *)v2 unpinnedTabs];
    if ([v4 count] == 1)
    {
      if (!v2)
      {
LABEL_23:

        goto LABEL_11;
      }

      v5 = [(TabController *)v2 _hasPinnedStartPageExcludingTabs:?];

      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  WeakRetained = objc_loadWeakRetained(&v2->_browserController);
  if (([WeakRetained isPrivateBrowsingEnabled] & 1) == 0)
  {

    goto LABEL_13;
  }

  v7 = +[Application sharedApplication];
  v8 = [v7 isPrivateBrowsingLocked];

  if ((v8 & 1) == 0)
  {
LABEL_13:
    v4 = [(TabController *)&v2->super.isa tabThumbnailCollectionView];
    if ([v4 presentationState] == 1 || objc_msgSend(v4, "presentationState") == 2)
    {
      if ([v4 defersActivation])
      {
        v10 = [v4 itemToActivate];
        v11 = v10;
        if (v10 && ([v10 isPinned] & 1) == 0)
        {
          v12 = [v11 UUID];
          LOBYTE(v2) = [(TabController *)v2 canCloseTabWithUUID:v12];
        }

        else
        {
          LOBYTE(v2) = 0;
        }
      }

      else
      {
        LOBYTE(v2) = 0;
      }
    }

    else
    {
      LOBYTE(v2) = 1;
    }

    goto LABEL_23;
  }

LABEL_10:
  LOBYTE(v2) = 0;
LABEL_11:

  return v2;
}

- (BOOL)canCloseOtherTabs
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isPrivateBrowsingEnabled])
  {
    v4 = +[Application sharedApplication];
    v5 = [v4 isPrivateBrowsingLocked];

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = [(TabController *)self currentTabs];
  if ([v7 count] >= 2)
  {
    [(TabController *)&self->super.isa canCloseOtherTabs];
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setActiveTab:(id)a3 animated:(BOOL)a4 deferActivation:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(TabController *)self _unhibernateTabIfNeeded:a3];
  [(TabController *)self setActiveTabDocument:v8 animated:v6 deferActivation:v5];
}

- (BOOL)canAddNewTabInTabGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 tabs];
  v6 = [v5 count];

  if ([v4 usesGlobalPinnedTabs])
  {
    v7 = [(TabController *)self pinnedWBTabsForTabGroup:v4];
    v6 += [v7 count];
  }

  v8 = [(TabController *)self canAddNewTabInTabGroup:v4 withTabCount:v6];

  return v8;
}

- (BOOL)canAddNewTabInTabGroup:(id)a3 withTabCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277D28C70] sharedFeatureManager];
  v8 = [v7 allowsUnlimitedTabs];

  if (v8)
  {
    if ([MEMORY[0x277D49E28] automaticTabClosingInterval] || (objc_msgSend(MEMORY[0x277D75128], "sharedApplication"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "supportsMultipleScenes"), v9, (v10 & 1) != 0))
    {
      v11 = 1;
    }

    else
    {
      v11 = [v6 isNamed];
    }

    v12 = [(TabController *)self _application];
    v13 = [v12 maximumTabCountAllowingMoreTabs:v11] > a4;
  }

  else
  {
    v12 = [(TabController *)self _application];
    v13 = [v12 canAddNewTabForPrivateBrowsing:{objc_msgSend(v6, "isPrivateBrowsing")}];
  }

  return v13;
}

- (void)performSuppressingDataModelUpdates:(id)a3
{
  ++self->_updateTabsSuppressionCount;
  (*(a3 + 2))(a3, a2);
  --self->_updateTabsSuppressionCount;
}

uint64_t __41__TabController__reuseTabAfterInsertion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabs];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__TabController__reuseTabAfterInsertion___block_invoke_2;
  v6[3] = &unk_2781D98D8;
  v7 = *(a1 + 32);
  v4 = [v3 safari_containsObjectPassingTest:v6];

  return v4;
}

uint64_t __41__TabController__reuseTabAfterInsertion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v4 UUIDString];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

void __67__TabController__insertTab_atIndex_inBackground_animated_updateUI___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webExtensionsController];
  [v2 didOpenTab:*(a1 + 32)];
}

- (void)insertTabs:(id)a3 beforeTab:(id)a4 inBackground:(BOOL)a5 animated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0x7FFFFFFFFFFFFFFFLL;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0x7FFFFFFFFFFFFFFFLL;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__TabController_insertTabs_beforeTab_inBackground_animated___block_invoke;
  v13[3] = &unk_2781D9928;
  v15 = v20;
  v16 = v19;
  v13[4] = self;
  v12 = v11;
  v14 = v12;
  v17 = a5;
  v18 = a6;
  [v10 enumerateObjectsWithOptions:2 usingBlock:v13];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
}

- (uint64_t)_indexForInsertionBeforeTab:(int)a3 withPrivateBrowsingEnabled:
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = 16;
    if (a3)
    {
      v4 = 24;
    }

    v5 = *(a1 + v4);
    v6 = a2;
    v7 = [v5 copy];
    v3 = [v7 indexOfObject:v6];

    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)insertNewTabDocument:(id)a3 forcingOrderAfterTabDocument:(id)a4 inBackground:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v17 = a3;
  v10 = a4;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v17 ancestorUUIDs];
    v14 = [v13 count];

    tabOrderManager = self->_tabOrderManager;
    if (v14)
    {
      [(WBSTabOrderManager *)tabOrderManager tabToInsertSpawnedTabAfter];
    }

    else
    {
      [(WBSTabOrderManager *)tabOrderManager tabToInsertNewBlankTabAfter];
    }
    v12 = ;
  }

  v16 = v12;
  [(TabController *)self insertTab:v17 afterTab:v12 inBackground:v7 animated:v6];
}

- (CollectionViewTab)blankTabToReuse
{
  v3 = [(TabController *)self activeTabDocument];
  if ([v3 isBlank])
  {
    v4 = v3;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = [(TabController *)self currentTabs];
    v4 = [v5 safari_firstObjectPassingTest:&__block_literal_global_98_1];

    if (!v4)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v4 == self->_tabDocumentBeingHiddenFromTabView)
  {
    goto LABEL_9;
  }

  if (![(TabDocument *)v4 isPinned])
  {
    v6 = [(TabController *)self currentTabs];
    v7 = [v6 lastObject];
    [(TabController *)self moveTab:v4 overTab:v7];
  }

  v8 = v4;
LABEL_10:

  return v8;
}

- (void)openNewTabWithOptions:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__block_literal_global_101;
  }

  if ([(TabController *)self isPrivateBrowsingAndLocked])
  {
    v12 = [(TabController *)self _application];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__TabController_openNewTabWithOptions_completionHandler___block_invoke_2;
    v19[3] = &unk_2781D9950;
    v19[4] = self;
    v20 = v7;
    v21 = a3;
    [v12 authenticateToUnlockPrivateBrowsingWithCompletionHandler:v19];

    WeakRetained = v20;
    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (!self || (a3 & 3) == 1 || (a3 & 3) != 2 && ![(TabController *)self isPrivateBrowsingEnabled])
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_12;
  }

  if ([WeakRetained isPrivateBrowsingAvailable])
  {
    v9 = 1;
    v10 = 1;
LABEL_12:
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__TabController_openNewTabWithOptions_completionHandler___block_invoke_102;
    v13[3] = &unk_2781D9978;
    v17 = v9;
    v15 = v7;
    v13[4] = self;
    WeakRetained = WeakRetained;
    v14 = WeakRetained;
    v16 = a3;
    [WeakRetained makeSpaceForTabWithPrivateBrowsing:v10 resultHandler:v13];

    goto LABEL_16;
  }

  v11 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_INFO, "Preventing new private tab because Private Browsing is not available", buf, 2u);
  }

  (*(v7 + 2))(v7, 0);
LABEL_16:
}

uint64_t __57__TabController_openNewTabWithOptions_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    return [*(a1 + 32) openNewTabWithOptions:*(a1 + 48) completionHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

uint64_t __57__TabController_openNewTabWithOptions_completionHandler___block_invoke_102(uint64_t a1, int a2)
{
  if (a2)
  {
    __57__TabController_openNewTabWithOptions_completionHandler___block_invoke_102_cold_1(a1);
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)openLibrary:(id)a3
{
  v17 = a3;
  v4 = [(TabController *)self activeTabDocument];
  v5 = [v4 libraryType];
  v6 = WBSIsEqual();

  if ((v6 & 1) == 0)
  {
    v7 = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabThumbnailCollectionView];
    [v7 dismissAnimated:0];

    p_libraryTabs = &self->_libraryTabs;
    if (!self->_libraryTabs)
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      v10 = *p_libraryTabs;
      *p_libraryTabs = v9;
    }

    if (!self->_activeLibraryTab)
    {
      v11 = [(TabController *)self tabGroups];
      v12 = [v11 firstObject];
      v13 = [v12 uuid];
      [(TabController *)self setActiveTabGroupUUID:v13];
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v15 = [(NSMutableDictionary *)self->_libraryTabs objectForKeyedSubscript:v17];

    if (!v15)
    {
      [TabController openLibrary:];
    }

    v16 = [(NSMutableDictionary *)self->_libraryTabs objectForKeyedSubscript:v17];
    [(TabController *)self setActiveTabDocument:v16];

    [WeakRetained updateUnifiedBarVisibility];
  }
}

- (void)openTab:(id)a3 navigatedFromLibraryType:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setSuppressWebExtensionEvents:0];
  activeLibraryTab = self->_activeLibraryTab;
  self->_activeLibraryTab = 0;

  v9 = [(TabController *)self activeNonLibraryTab];
  [(TabController *)self insertNewTabDocument:v7 forcingOrderAfterTabDocument:v9 inBackground:0 animated:0];

  [(NSMutableDictionary *)self->_libraryTabs setObject:0 forKeyedSubscript:v6];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained updateUnifiedBarVisibility];
}

- (NSString)deviceIDForActiveCloudTabsLibrary
{
  v2 = [(TabController *)self activeTabDocument];
  v3 = [v2 cloudTabDeviceID];

  return v3;
}

uint64_t __38__TabController_closeTabWithURL_UUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuid];
  v5 = [*(a1 + 32) UUIDString];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 syncableURL];
    v7 = [v6 safari_isSameAsURLRemovingFragment:*(a1 + 40)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)closeTabs:(id)a3 inInactiveTabGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(TabController *)self isTabGroupActive:v7])
  {
    tabGroupManager = self->_tabGroupManager;
    v9 = [v7 uuid];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __46__TabController_closeTabs_inInactiveTabGroup___block_invoke;
    v14 = &unk_2781D99C8;
    v15 = v6;
    v16 = self;
    [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:v9 persist:1 usingBlock:&v11];

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained reloadSidebarAnimated:{0, v11, v12, v13, v14}];
  }
}

void __46__TabController_closeTabs_inInactiveTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 deleteTabs:*(a1 + 32)];
  if ([v3 usesGlobalPinnedTabs])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 isPinned])
          {
            v10 = *(*(a1 + 40) + 264);
            v11 = [v9 uuid];
            [v10 removeTabWithUUID:v11 persist:1];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)closeSelectedTabs:(id)a3
{
  [(TabController *)self closeWBTabs:a3];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained reloadSidebarAnimated:0];
}

- (void)_closeTab:(unsigned int)a3 animated:(int)a4 allowAddingToRecentlyClosedTabs:(char)a5 keepWebViewAlive:(char)a6 showAutoCloseTabsAlert:
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v14[0] = a2;
      v11 = MEMORY[0x277CBEA60];
      v12 = a2;
      v13 = [v11 arrayWithObjects:v14 count:1];

      [(TabController *)a1 _closeTabs:v13 animated:a3 allowAddingToRecentlyClosedTabs:a4 keepWebViewAlive:a5 showAutoCloseTabsAlert:a6];
    }
  }
}

- (id)detachTabWithUUID:(id)a3 forMoveToBrowserController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TabController *)self tabWithUUID:v6];
  if (v8)
  {
    [(TabController *)self detachTabWithUUID:v8 forMoveToBrowserController:v27, v7];
    v14 = v8;
  }

  else
  {
    tabGroupManager = self->_tabGroupManager;
    v10 = [v6 UUIDString];
    v11 = [(WBTabGroupManager *)tabGroupManager tabWithUUID:v10];

    v12 = [v11 tabGroupUUID];
    v13 = v12;
    v14 = 0;
    if (v11 && v12)
    {
      v15 = self->_tabGroupManager;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __62__TabController_detachTabWithUUID_forMoveToBrowserController___block_invoke_2;
      v24[3] = &unk_2781D99C8;
      v16 = v11;
      v25 = v16;
      v26 = self;
      [(WBTabGroupManager *)v15 updateTabsInTabGroupWithUUID:v13 persist:1 usingBlock:v24];
      v17 = +[(WBReusableTabManager *)ReusableTabManager];
      v18 = [v17 reuseTabForUUID:v6];

      if (v18)
      {
        [v18 setBrowserController:v7 afterTabGroupReuse:1];
        v19 = [v18 wbTab];
        v20 = [v19 duplicatePreservingUUID];
        [v18 setWBTab:v20];

        v14 = v18;
      }

      else
      {
        v21 = [HibernatedTab alloc];
        v22 = [v16 duplicatePreservingUUID];
        v14 = [(HibernatedTab *)v21 initWithWBTab:v22 browserController:v7];
      }
    }
  }

  return v14;
}

void __62__TabController_detachTabWithUUID_forMoveToBrowserController___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [v4 deleteTabs:{v5, v6, v7}];

  [*(*(a1 + 40) + 48) flushDeletedTabsInTabGroup:v4];
}

uint64_t __76__TabController__presentAutomaticTabClosingPromptIfNeededForClosedTabCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained presentAutomaticTabClosingAlertController];

  result = [*(a1 + 32) _cancelVeryRecentlyClosedTabCountInvalidationTimer];
  *(*(a1 + 32) + 136) = 0;
  return result;
}

- (void)closeTab
{
  v3 = [(TabController *)self activeTabDocument];
  [(TabController *)self closeTab:v3 animated:1];
}

- (void)closeOtherTabs
{
  v3 = [(TabController *)self currentTabs];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__TabController_closeOtherTabs__block_invoke;
  v9[3] = &unk_2781D5BC8;
  v9[4] = self;
  v4 = [v3 safari_filterObjectsUsingBlock:v9];

  v5 = _WBSLocalizedString();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__TabController_closeOtherTabs__block_invoke_2;
  v7[3] = &unk_2781D4C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(TabController *)self registerUndoWithName:v5 actions:v7];
}

BOOL __31__TabController_closeOtherTabs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPinned])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) activeTabDocument];
    v4 = v5 != v3;
  }

  return v4;
}

- (void)closeAllOpenTabsAnimated:(BOOL)a3
{
  v5 = [(TabController *)self unpinnedTabs];
  v6 = [(TabController *)self _undoCloseAllTabsActionName];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__TabController_closeAllOpenTabsAnimated___block_invoke;
  v8[3] = &unk_2781D5060;
  v8[4] = self;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  [(TabController *)self registerUndoWithName:v6 actions:v8];
}

- (void)togglePinningTab:(id)a3 inInactiveTabGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isPinned];
  pinnedTabsManager = self->_pinnedTabsManager;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __53__TabController_togglePinningTab_inInactiveTabGroup___block_invoke;
  v17 = &unk_2781D9A18;
  v18 = self;
  v19 = v7;
  v20 = v6;
  v21 = v8 ^ 1;
  v10 = v6;
  v11 = v7;
  [(PinnedTabsManager *)pinnedTabsManager performUpdatesUsingBlock:&v14];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v13 = [WeakRetained libraryController];
  [v13 reloadSectionControllersIfNeeded];
}

void __53__TabController_togglePinningTab_inInactiveTabGroup___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) uuid];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TabController_togglePinningTab_inInactiveTabGroup___block_invoke_2;
  v6[3] = &unk_2781D99F0;
  v4 = *(a1 + 48);
  v9 = *(a1 + 56);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v2 updateTabsInTabGroupWithUUID:v3 persist:1 usingBlock:v6];
}

void __53__TabController_togglePinningTab_inInactiveTabGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) uuid];
  v4 = [v11 mutableTabWithUUID:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [*(a1 + 32) mutableCopy];
  }

  v7 = v6;

  [v7 setSyncable:{objc_msgSend(v11, "isSyncable")}];
  v8 = *(a1 + 48);
  v9 = [v7 title];
  v10 = [v7 url];
  [v7 setPinned:v8 title:v9 url:v10];

  [(TabController *)*(a1 + 40) _tabGroupTabDidUpdatePinned:v7 inTabGroup:v11];
}

- (BOOL)isTabPinnable:(id)a3
{
  v4 = a3;
  if ([v4 canSetPinned])
  {
    v5 = [v4 url];

    if (v5)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v7 = [v4 tabGroupUUID];
      if (v7 && ([(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = v8;
        v6 = [v8 usesGlobalPinnedTabs] ^ 1;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)switchToTabDocumentForWebClip:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  if (v5)
  {
    [(TabController *)self setActiveProfileIdentifier:*MEMORY[0x277D49BD8]];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v9 = [WeakRetained isPrivateBrowsingEnabled];

    if (v9)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v16, OS_LOG_TYPE_DEFAULT, "Will switch to local tab group for web clip.", buf, 2u);
      }

      [(TabController *)self selectLocalTabGroup];
    }

    v17 = [(TabController *)self _tabDocumentForWebClip:v4, v10, v11, v12, v13, v14, v15, v51, v54, v57, v59, v61, v63];
    if (v17)
    {
      [(TabController *)self setActiveTabDocument:v17];
      v6 = v17;
    }

    else
    {
      v18 = [v5 UUIDString];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v19 = [(TabController *)self tabGroups];
      v20 = [v19 countByEnumeratingWithState:&v73 objects:v79 count:16];
      if (v20)
      {
        v21 = v20;
        v52 = 0;
        v55 = v5;
        v58 = v4;
        v60 = self;
        v66 = 0;
        v67 = 0;
        v22 = *v74;
        v62 = *v74;
        v64 = v19;
        do
        {
          v23 = 0;
          v65 = v21;
          do
          {
            if (*v74 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v73 + 1) + 8 * v23);
            if (([v24 isPrivateBrowsing] & 1) == 0)
            {
              v25 = [v24 tabs];
              if ([v24 isLocal])
              {
                v26 = [(PinnedTabsManager *)v60->_pinnedTabsManager pinnedTabs];
                if ([v26 count])
                {
                  v27 = [v26 arrayByAddingObjectsFromArray:v25];

                  v25 = v27;
                }
              }

              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v28 = v25;
              v29 = [v28 countByEnumeratingWithState:&v69 objects:v78 count:16];
              if (v29)
              {
                v30 = v29;
                v68 = v24;
                v31 = *v70;
                while (2)
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v70 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = *(*(&v69 + 1) + 8 * i);
                    v34 = [v33 localAttributes];
                    v35 = [v34 webClipIDString];
                    v36 = [v35 isEqualToString:v18];

                    if (v36)
                    {
                      v37 = objc_alloc(MEMORY[0x277CCAD78]);
                      v38 = [v68 uuid];
                      v39 = [v37 initWithUUIDString:v38];

                      v40 = objc_alloc(MEMORY[0x277CCAD78]);
                      v41 = [v33 uuidString];
                      v42 = [v40 initWithUUIDString:v41];

                      v66 = v39;
                      v67 = v42;
                      goto LABEL_32;
                    }
                  }

                  v30 = [v28 countByEnumeratingWithState:&v69 objects:v78 count:16];
                  if (v30)
                  {
                    continue;
                  }

                  break;
                }

LABEL_32:
                v22 = v62;
                v19 = v64;
                v21 = v65;
              }
            }

            ++v23;
          }

          while (v23 != v21);
          v21 = [v19 countByEnumeratingWithState:&v73 objects:v79 count:16];
        }

        while (v21);

        v43 = v67;
        if (v67)
        {
          v44 = v66;
          [(TabController *)v60 switchToTabWithUUID:v67 inTabGroupWithUUID:v66];
          v4 = v58;
          v6 = [(TabController *)v60 _tabDocumentForWebClip:v58, v45, v46, v47, v48, v49, v50, v52, v55, v58, v60, v62, v64];
          v17 = v53;
          v5 = v56;
        }

        else
        {
          v6 = 0;
          v5 = v55;
          v4 = v58;
          v17 = v52;
          v44 = v66;
        }
      }

      else
      {

        v43 = 0;
        v44 = 0;
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __40__TabController__tabDocumentForWebClip___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 webClipID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)tabDocumentForURL:(id)a3 forceUnhibernate:(BOOL)a4
{
  v4 = a4;
  v6 = [(TabController *)self tabForURL:a3];
  if (v4)
  {
    v8 = [(TabController *)self _unhibernateTabIfNeeded:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (id)tabForURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277D75D70] webClipWithURL:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 pageURL];
      v9 = [v8 _webkit_URLByRemovingFragment];
    }

    else
    {
      v9 = 0;
    }

    v11 = [v5 _webkit_URLByRemovingFragment];

    v12 = [(TabController *)self currentTabs];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __27__TabController_tabForURL___block_invoke;
    v16[3] = &unk_2781D5200;
    v17 = v11;
    v18 = v9;
    v13 = v9;
    v14 = v11;
    v10 = [v12 safari_firstObjectPassingTest:v16];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TabDocument)tabDocumentForSpotlightSearch
{
  v2 = [(TabController *)self currentTabDocuments];
  v3 = [v2 safari_firstObjectPassingTest:&__block_literal_global_124_0];

  return v3;
}

- (id)duplicateTab:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [TabDocument alloc];
  v7 = [v4 tabStateData];
  v8 = [(TabDocument *)v6 initWithTabStateData:v7 hibernated:0 browserController:WeakRetained];

  if (v8)
  {
    if ([v4 isBlank])
    {
      [(TabDocument *)v8 setIsBlank:1];
    }

    -[TabController insertTab:afterTab:inBackground:animated:](self, "insertTab:afterTab:inBackground:animated:", v8, v4, -[TabDocument isPrivateBrowsingEnabled](v8, "isPrivateBrowsingEnabled") ^ [WeakRetained isPrivateBrowsingEnabled], 1);
    v9 = v8;
  }

  return v8;
}

- (void)sortTabsWithMode:(int64_t)a3
{
  v5 = [(TabController *)self activeTabGroupUUID];
  [(TabController *)self sortTabsInTabGroupWithUUIDString:v5 withSortMode:a3];
}

- (void)sortTabsInTabGroupWithUUIDString:(id)a3 withSortMode:(int64_t)a4
{
  tabGroupManager = self->_tabGroupManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__TabController_sortTabsInTabGroupWithUUIDString_withSortMode___block_invoke;
  v7[3] = &__block_descriptor_40_e27_v16__0__WBMutableTabGroup_8l;
  v7[4] = a4;
  [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:a3 persist:1 usingBlock:v7];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained reloadSidebarAnimated:1];
}

void __63__TabController_sortTabsInTabGroupWithUUIDString_withSortMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 tabs];
  v5 = [v4 mutableCopy];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__TabController_sortTabsInTabGroupWithUUIDString_withSortMode___block_invoke_2;
  v6[3] = &__block_descriptor_40_e39_q24__0__WBMutableTab_8__WBMutableTab_16l;
  v6[4] = *(a1 + 32);
  [v5 sortWithOptions:16 usingComparator:v6];
  [v3 setTabs:v5];
}

uint64_t __63__TabController_sortTabsInTabGroupWithUUIDString_withSortMode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (v8 == 1)
  {
    v11 = [v6 url];
    v12 = [v11 host];
    v9 = [v12 safari_highLevelDomainFromHost];

    v13 = [v7 url];
    v14 = [v13 host];
    v10 = [v14 safari_highLevelDomainFromHost];

    if (!v9 && v10)
    {
      v3 = 1;
      goto LABEL_13;
    }

    if (v9 && !v10)
    {
      v3 = -1;
      goto LABEL_13;
    }

    if (!(v9 | v10))
    {
      v3 = 0;
      goto LABEL_13;
    }

LABEL_4:
    v3 = [v9 localizedStandardCompare:v10];
LABEL_13:

    goto LABEL_14;
  }

  if (!v8)
  {
    v9 = [v6 title];
    v10 = [v7 title];
    goto LABEL_4;
  }

LABEL_14:

  return v3;
}

- (void)replaceBlankActiveTabWithTab:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self activeTabDocument];
  if (([v5 isBlank] & 1) != 0 || (-[TabController currentTabs](self, "currentTabs"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7 != 1))
  {
    v8 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__TabController_replaceBlankActiveTabWithTab___block_invoke;
    v9[3] = &unk_2781D58E8;
    v10 = v4;
    v11 = self;
    v12 = v5;
    [v8 performWithoutAnimation:v9];
  }
}

void __46__TabController_replaceBlankActiveTabWithTab___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) browserController];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) wbTab];
  v4 = [(TabController *)v2 _dropWBTab:v3 fromBrowserController:v6 atIndex:0 pinned:0 anchorTab:0];

  [*(a1 + 40) closeTab:*(a1 + 48) animated:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  [WeakRetained updateFavoritesForNewDocument];
}

- (void)replaceBlankActiveTabWithTabs:(id)a3 andSelectTab:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstObject];
  v9 = [v8 isPrivateBrowsingEnabled];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained setPrivateBrowsingEnabled:v9];

  v11 = [(TabController *)self activeTabDocument];
  if ([v11 isBlank])
  {
    v12 = [(TabController *)self currentTabs];
    v13 = [v12 count];

    if (v13 == 1)
    {
      v14 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__TabController_replaceBlankActiveTabWithTabs_andSelectTab___block_invoke;
      v15[3] = &unk_2781D5A50;
      v15[4] = self;
      v16 = v6;
      v17 = v11;
      v18 = v7;
      [v14 performWithoutAnimation:v15];
    }
  }
}

void __47__TabController__replaceTabs_withTabs_persist___block_invoke(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] unpinnedTabs];
  if ([v3 count])
  {
    goto LABEL_4;
  }

  v4 = *v2;
  if (*v2)
  {
    if (([(TabController *)v4 _hasPinnedStartPageExcludingTabs:?]& 1) != 0)
    {
LABEL_4:

      goto LABEL_5;
    }

    v4 = *v2;
  }

  v7 = [v4 updatingTabGroupTabs];

  if ((v7 & 1) == 0)
  {
    v8 = [(TabController *)*v2 _openBlankTabDocument];
  }

LABEL_5:
  v5 = [a1[5] count];
  if (v5 != [a1[6] count])
  {
    [*v2 updateTabCount];
  }

  if (([*(*v2 + 9) tabBarItemsFixed] & 1) == 0)
  {
    v6 = [a1[5] count];
    if (v6 != [a1[6] count])
    {
      __47__TabController__replaceTabs_withTabs_persist___block_invoke_cold_1(v2);
    }

    [*(*v2 + 9) updateTabOverviewItems];
    [*(*v2 + 9) updateTabBarAnimated:0];
    WeakRetained = objc_loadWeakRetained(*v2 + 1);
    [WeakRetained reloadSidebarAnimated:0];
  }
}

void __47__TabController__replaceTabs_withTabs_persist___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) webExtensionsController];
  [v2 didOpenTab:*(a1 + 32)];
}

- (void)updateWBTabWithTab:(id)a3 notify:(BOOL)a4 persist:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (self->_activeTabGroupUUID && !self->_updateTabsSuppressionCount)
  {
    v15 = v8;
    if ([v8 isPinned] && (-[TabController activeTabGroup](self, "activeTabGroup"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "usesGlobalPinnedTabs"), v9, v10))
    {
      pinnedTabsManager = self->_pinnedTabsManager;
      v12 = [v15 uuidString];
      v13 = [v15 tabUpdateBlock];
      [(PinnedTabsManager *)pinnedTabsManager updatePinnedTabWithUUID:v12 inContainer:self usingBlock:v13];
    }

    else
    {
      tabGroupManager = self->_tabGroupManager;
      v12 = [v15 uuidString];
      v13 = [v15 tabUpdateBlock];
      [(WBTabGroupManager *)tabGroupManager updateTabWithUUID:v12 persist:v5 notify:v6 usingBlock:v13];
    }

    if (v5)
    {
      [(TabController *)self persistTab:v15 notify:v6];
      [(TabController *)self updateActiveTab];
    }

    [(TabController *)self updateLocalTabGroupTitle];
    v8 = v15;
  }
}

- (TabController)initWithBrowserController:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = TabController;
  v5 = [(TabController *)&v39 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserController, v4);
    v7 = [v4 UUID];
    browserWindowUUID = v6->_browserWindowUUID;
    v6->_browserWindowUUID = v7;

    v9 = objc_alloc_init(TabCollectionViewManager);
    tabCollectionViewManager = v6->_tabCollectionViewManager;
    v6->_tabCollectionViewManager = v9;

    [(TabCollectionViewManager *)v6->_tabCollectionViewManager setDataSource:v6];
    [(TabCollectionViewManager *)v6->_tabCollectionViewManager setBrowserController:v4];
    v11 = [[TabControllerNotificationManager alloc] initWithTabController:v6];
    notificationManager = v6->_notificationManager;
    v6->_notificationManager = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableNormalTabs = v6->_mutableNormalTabs;
    v6->_mutableNormalTabs = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutablePrivateTabs = v6->_mutablePrivateTabs;
    v6->_mutablePrivateTabs = v15;

    v17 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    uuidToTabMap = v6->_uuidToTabMap;
    v6->_uuidToTabMap = v17;

    v19 = [MEMORY[0x277CBEB18] array];
    expandedTabGroupUUIDs = v6->_expandedTabGroupUUIDs;
    v6->_expandedTabGroupUUIDs = v19;

    v21 = objc_alloc_init(MEMORY[0x277D4A090]);
    tabOrderManager = v6->_tabOrderManager;
    v6->_tabOrderManager = v21;

    [(WBSTabOrderManager *)v6->_tabOrderManager setTabOrderProvider:v6];
    v23 = [v4 windowState];
    v24 = [v23 localTabGroup];
    v25 = [v24 uuid];
    v26 = [v25 copy];
    activeTabGroupUUID = v6->_activeTabGroupUUID;
    v6->_activeTabGroupUUID = v26;

    v28 = [v4 tabGroupManager];
    tabGroupManager = v6->_tabGroupManager;
    v6->_tabGroupManager = v28;

    [(WBTabGroupManager *)v6->_tabGroupManager addTabGroupObserver:v6];
    v30 = objc_alloc_init(MEMORY[0x277CCAD90]);
    undoManager = v6->_undoManager;
    v6->_undoManager = v30;

    [(NSUndoManager *)v6->_undoManager setGroupsByEvent:0];
    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 addObserver:v6 selector:sel__cloudTabsDidUpdate_ name:@"CloudTabStoreDidUpdateNotification" object:0];
    [v32 addObserver:v6 selector:sel__beganSharingTabGroup_ name:*MEMORY[0x277D29120] object:0];
    v33 = [MEMORY[0x277D7B588] sharedProxy];
    [v33 addSyncObserver:v6];

    [v32 addObserver:v6 selector:sel__lockedPrivateBrowsingStateDidChange_ name:@"lockedPrivateBrowsingStateDidChangeNotification" object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, webFilterConfigurationChanged, *MEMORY[0x277D7B5E0], 0, 1026);
    v35 = objc_alloc_init(BackgroundTaskExpirationObserver);
    backgroundTaskExpirationObserver = v6->_backgroundTaskExpirationObserver;
    v6->_backgroundTaskExpirationObserver = v35;

    [(BackgroundTaskExpirationObserver *)v6->_backgroundTaskExpirationObserver setDelegate:v6];
    v37 = v6;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D7B5E0], 0);
  v5.receiver = self;
  v5.super_class = TabController;
  [(TabController *)&v5 dealloc];
}

- (void)clearBrowserController
{
  v15 = *MEMORY[0x277D85DE8];
  [(TabCollectionViewManager *)self->_tabCollectionViewManager clearSnapshotCache];
  tabCollectionViewManager = self->_tabCollectionViewManager;
  self->_tabCollectionViewManager = 0;

  objc_storeWeak(&self->_browserController, 0);
  notificationManager = self->_notificationManager;
  self->_notificationManager = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(TabController *)self normalAndPrivateTabs];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) clearBrowserController];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(WBTabGroupManager *)self->_tabGroupManager removeTabGroupObserver:self];
  [(PinnedTabsManager *)self->_pinnedTabsManager removePinnedTabsObserver:self];
}

- (BOOL)isControlledByAutomation
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained isControlledByAutomation];

  return v3;
}

- (void)setPrivateBrowsingMode:(int64_t)a3 animated:(BOOL)a4
{
  v32[16] = *MEMORY[0x277D85DE8];
  if (self->_privateBrowsingMode != a3)
  {
    v4 = a4;
    *v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
    v7 = [(TabController *)self currentTabDocuments];
    v8 = [v7 countByEnumeratingWithState:v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        v11 = 0;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(v27[1] + 8 * v11) webView];
          [v12 _stopAllMediaPlayback];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:v27 objects:v32 count:16];
      }

      while (v9);
    }

    v13 = [(TabController *)self activeTabDocument];
    self->_privateBrowsingMode = a3;
    v14 = [(TabController *)&self->super.isa tabThumbnailCollectionView];
    v15 = [v14 presentationState];

    if (v15)
    {
      [(TabController *)self _suppressSingleEmptyTabIfAppropriate:v16];
    }

    [(TabCollectionViewManager *)self->_tabCollectionViewManager setPrivateBrowsingEnabled:self->_privateBrowsingMode == 1 animated:v4];
    [(TabControllerNotificationManager *)self->_notificationManager didChangeCurrentTabDocuments];
    v23 = [(TabController *)self activeTabDocument];
    [(TabController *)self _switchActiveTabDocumentFromTabDocument:v13 toTabDocument:v23];

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained setNeedsSnapshotUpdateForActiveTabIfTabIsBlank];
    [(TabController *)self updateTabCount];
    v25 = [WeakRetained configuration];
    v26 = [v25 allowsRestoringEducationTabs];

    if (v26)
    {
      [(TabController *)self _restoreEducationTabsIfNecessaryAnimated:?];
    }
  }
}

- (BOOL)isPrivateBrowsingAndLocked
{
  v3 = [(TabController *)self isPrivateBrowsingEnabled];
  if (v3)
  {
    v4 = [(TabController *)self _application];
    v5 = [v4 isPrivateBrowsingLocked];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)_cloudTabsDidUpdate:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TabController__cloudTabsDidUpdate___block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__TabController__cloudTabsDidUpdate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 89) & 1) == 0)
  {
    *(v1 + 89) = 1;
    [(TabController *)*(a1 + 32) _restoreEducationTabsIfNecessaryAnimated:?];
  }
}

- (void)updateEducationTabsLastSyncDate
{
  if (self->_didRestoreCloudTabsForEducationDevice)
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [(TabController *)self cloudTabStore];
    v5 = [v4 currentDevice];
    v6 = [v5 lastModified];
    [v7 setObject:v6 forKey:@"SafariEducationModeEducationTabsLastSyncDate"];

    [v7 synchronize];
  }
}

- (void)addBookmarkFolderForTabs:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained addBookmarkFolderForTabs:v4];
}

- (void)moveTabsToNewWindow:(id)a3
{
  v12 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_158];
  v4 = [(TabController *)self activeTabDocument];
  v5 = [v4 uuid];

  if ([v12 containsObject:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = MEMORY[0x277CC1EF0];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [WeakRetained UUID];
  v11 = [v8 safari_windowCreationActivityWithTabUUIDs:v12 selectedTabUUID:v7 browserControllerUUID:v10];

  [*MEMORY[0x277D76620] requestSceneSessionActivation:0 userActivity:v11 options:0 errorHandler:&__block_literal_global_162_0];
}

id __37__TabController_moveTabsToNewWindow___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uuid];

  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

void __37__TabController_moveTabsToNewWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __37__TabController_moveTabsToNewWindow___block_invoke_2_cold_1(v3);
  }
}

- (id)dropTabsAtIndex:(unint64_t)a3 pinned:(BOOL)a4 dropSession:(id)a5 dragItems:(id)a6
{
  v11 = a5;
  v12 = a6;
  [(TabCollectionViewManager *)self->_tabCollectionViewManager dismissTabHoverPreview];
  v13 = +[TabDocumentManager sharedManager];
  [v13 beginSuppressingTabRecycling];

  v14 = [MEMORY[0x277CBEB38] dictionary];
  originalToReplacementUUIDMap = self->_originalToReplacementUUIDMap;
  self->_originalToReplacementUUIDMap = v14;

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = 0;
  if (a3 && a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(TabController *)self currentTabs];
    v17 = [v6 objectAtIndexedSubscript:a3 - 1];
  }

  v18 = v17;
  if (a3 && a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  v19 = [MEMORY[0x277CBEB38] dictionary];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __62__TabController_dropTabsAtIndex_pinned_dropSession_dragItems___block_invoke;
  v35[3] = &unk_2781D9AA0;
  v35[4] = self;
  v39 = a3;
  v40 = a4;
  v20 = v18;
  v36 = v20;
  v21 = v19;
  v37 = v21;
  v22 = v16;
  v38 = v22;
  [v12 enumerateObjectsWithOptions:2 usingBlock:v35];
  if ([v21 count])
  {
    v23 = [MEMORY[0x277D28F40] builder];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __62__TabController_dropTabsAtIndex_pinned_dropSession_dragItems___block_invoke_2;
    v32 = &unk_2781D9AF0;
    v33 = v12;
    v34 = v21;
    [v23 buildNavigationIntentForDropSession:v11 completionHandler:&v29];
  }

  v24 = [TabDocumentManager sharedManager:v29];
  [v24 endSuppressingTabRecycling];

  [(TabController *)self didUpdateTabDocuments];
  [(TabCollectionViewManager *)self->_tabCollectionViewManager updateTabOverviewItems];
  v25 = self->_originalToReplacementUUIDMap;
  self->_originalToReplacementUUIDMap = 0;

  v26 = v38;
  v27 = v22;

  return v22;
}

void __62__TabController_dropTabsAtIndex_pinned_dropSession_dragItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 safari_localWBTab];
  v7 = [v5 safari_localBrowserController];

  if (!v6 || ((v8 = [v6 isPrivateBrowsing], v8 == objc_msgSend(*(a1 + 32), "isPrivateBrowsingEnabled")) ? (v9 = v7 == 0) : (v9 = 1), v9))
  {
    v12 = [(TabController *)*(a1 + 32) _openTabForDroppedLinkAtIndex:*(a1 + 72) pinned:?];
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v10 setObject:v12 forKeyedSubscript:v11];
  }

  else
  {
    v12 = [(TabController *)*(a1 + 32) _dropWBTab:v6 fromBrowserController:v7 atIndex:*(a1 + 64) pinned:*(a1 + 72) anchorTab:*(a1 + 40)];
  }

  [*(a1 + 56) insertObject:v12 atIndex:0];
}

void __62__TabController_dropTabsAtIndex_pinned_dropSession_dragItems___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 type] == 11)
    {
      v5 = [v4 navigationIntents];
    }

    else
    {
      v11[0] = v4;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    }

    v6 = v5;
    v7 = [v5 count];
    if (v7 == [*(a1 + 32) count])
    {
      v8 = *(a1 + 40);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __62__TabController_dropTabsAtIndex_pinned_dropSession_dragItems___block_invoke_3;
      v9[3] = &unk_2781D9AC8;
      v10 = v6;
      [v8 enumerateKeysAndObjectsUsingBlock:v9];
    }
  }
}

void __62__TabController_dropTabsAtIndex_pinned_dropSession_dragItems___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 objectAtIndexedSubscript:{objc_msgSend(a2, "unsignedIntegerValue")}];
  [v5 handleNavigationIntent:v6 completion:0];
}

void __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (*(a1 + 32) == 1)
  {
    v4 = [v3 pinnedTitle];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v12 title];
    }

    v7 = v6;

    v3 = v12;
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 32) == 1)
  {
    v8 = [v3 pinnedURL];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v12 url];
    }

    v11 = v10;

    v3 = v12;
  }

  else
  {
    v11 = 0;
  }

  [v3 setPinned:*(a1 + 32) title:v7 url:v11];
}

id __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pinnedTabs];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke_3;
  v17[3] = &unk_2781D9868;
  v5 = v3;
  v18 = v5;
  v6 = [v4 safari_mapObjectsUsingBlock:v17];
  v7 = [v6 mutableCopy];

  if ([*(a1 + 40) isSyncable])
  {
    v8 = objc_alloc(MEMORY[0x277D7B538]);
    v9 = [*(a1 + 40) deviceIdentifier];
    v10 = [v8 initWithUUID:0 deviceIdentifier:v9];

    [v10 adoptAttributesFromTab:*(a1 + 40)];
    v11 = *(a1 + 32);
    v12 = v11[6];
    v13 = [*(a1 + 40) uuid];
    v14 = [v10 uuid];
    [v11 tabGroupManager:v12 willReplaceTabWithUUID:v13 withTabWithUUID:v14];
  }

  else
  {
    v10 = [*(a1 + 40) mutableCopy];
  }

  v15 = [*(a1 + 48) tabUpdateBlock];
  (v15)[2](v15, v10);

  (*(*(a1 + 56) + 16))();
  [v7 insertObject:v10 atIndex:*(a1 + 64)];

  return v7;
}

id __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uuid];
  v6 = [v5 UUIDString];
  v7 = [v4 objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [v3 wbTab];
    v9 = [v10 mutableCopy];
  }

  v11 = [v3 tabUpdateBlock];
  (v11)[2](v11, v9);

  return v9;
}

void __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke_4(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isSyncable])
  {
    v5[0] = *(a1 + 32);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    [v3 deleteTabs:v4];
  }

  else
  {
    [v3 removeTab:*(a1 + 32)];
  }
}

- (id)tabDocumentWithUUID:(id)a3
{
  v3 = [(TabController *)self tabWithUUID:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)didGainOwnershipOfTab:(id)a3
{
  v11 = a3;
  uuidToTabMap = self->_uuidToTabMap;
  v5 = [v11 uuid];
  [(NSMapTable *)uuidToTabMap setObject:v11 forKey:v5];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v11;
  if (isKindOfClass)
  {
    v8 = v11;
    [v8 addRenderingProgressObserver:self->_tabCollectionViewManager];
    v9 = [v8 libraryType];

    if (!v9)
    {
      v10 = +[TabDocumentManager sharedManager];
      [v10 addTab:v8];
    }

    v7 = v11;
  }
}

- (void)willLoseOwnershipOfTab:(id)a3
{
  v9 = a3;
  uuidToTabMap = self->_uuidToTabMap;
  v5 = [v9 uuid];
  [(NSMapTable *)uuidToTabMap removeObjectForKey:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tabCollectionViewManager = self->_tabCollectionViewManager;
    v7 = v9;
    [v7 removeRenderingProgressObserver:tabCollectionViewManager];
    v8 = +[TabDocumentManager sharedManager];
    [v8 removeTab:v7];
  }
}

- (void)tabDocumentDidUpdateUUID:(id)a3 previousUUID:(id)a4
{
  v7 = a3;
  if (a4)
  {
    [(NSMapTable *)self->_uuidToTabMap removeObjectForKey:a4];
  }

  v6 = [v7 uuid];
  [(NSMapTable *)self->_uuidToTabMap setObject:v7 forKey:v6];
  [(TabCollectionViewManager *)self->_tabCollectionViewManager updateSnapshotIdentifiers];
}

- (void)saveTabDocumentUserActivitySoon:(id)a3
{
  v4 = a3;
  if (!self->_updateContinuityTimer && self->_normalActiveTabDocument == v4)
  {
    v7 = v4;
    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__updateUserActivityTimerFired selector:0 userInfo:0 repeats:1.0];
    updateContinuityTimer = self->_updateContinuityTimer;
    self->_updateContinuityTimer = v5;

    [(NSTimer *)self->_updateContinuityTimer setTolerance:1.0];
    v4 = v7;
  }
}

- (unint64_t)indexOfSelectedTab
{
  v3 = [(TabController *)self activeTabDocument];
  v4 = [(TabController *)self indexForTab:v3];

  return v4;
}

- (id)tabAtIndex:(unint64_t)a3
{
  v4 = [(TabController *)self currentTabs];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)originatingTabForTab:(id)a3
{
  v4 = a3;
  if ([v4 shouldSelectOriginatingTabWhenClosed])
  {
    v5 = [v4 ancestorTabIdentifiers];
    v6 = [v5 lastObject];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
      v8 = [(TabController *)self tabWithUUID:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)numberOfTabs
{
  v2 = [(TabController *)self currentTabs];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)indexForTab:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self currentTabs];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

uint64_t __47__TabController__foreignLocalTabGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)canRenameActiveTabGroup
{
  v2 = [(TabController *)self activeTabGroup];
  v3 = [v2 isSyncable];

  return v3;
}

uint64_t __58__TabController__createNewTabGroupActionForTabGroupsMenu___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sender];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TabController__createNewTabGroupActionForTabGroupsMenu___block_invoke_2;
  v7[3] = &unk_2781D9B60;
  v7[4] = v5;
  v7[5] = v4;
  v8 = *(a1 + 40);
  return [v5 createTabGroupFromExistingTabs:0 completionHandler:v7];
}

void __58__TabController__createNewTabGroupActionForTabGroupsMenu___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    [(TabController *)*(a1 + 32) _reportTabGroupCreationPrepopulatedWithTabs:*(a1 + 40) fromPotentialAnalyticsSource:*(a1 + 48) TabGroupsMenu:a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18];
  }
}

uint64_t __62__TabController__createFromCurrentTabsActionForTabGroupsMenu___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sender];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__TabController__createFromCurrentTabsActionForTabGroupsMenu___block_invoke_2;
  v7[3] = &unk_2781D9B60;
  v7[4] = v5;
  v7[5] = v4;
  v8 = *(a1 + 40);
  return [v5 createTabGroupFromExistingTabs:1 completionHandler:v7];
}

- (void)createTabGroupFromExistingTabs:(BOOL)a3 completionHandler:(id)a4
{
  v19 = a4;
  v6 = _WBSLocalizedString();
  v7 = _WBSLocalizedString();
  if (!a3)
  {
    v8 = _WBSLocalizedString();
    [(TabController *)self presentAlertToCreateTabGroupFromTabs:0 withTitle:v6 message:v8 suggestedName:0 okActionTitle:v7 completionHandler:v19];
    goto LABEL_3;
  }

  v9 = [(TabController *)self unnamedTabGroup];
  v10 = [(TabController *)self _representativeHostForTabGroup:v9];
  if (!v10)
  {
    [(TabController *)&self->super.isa _closeTabGroup:v9];
    if (v19)
    {
      v19[2]();
    }

    v8 = 0;
    goto LABEL_14;
  }

  v11 = [v9 tabs];
  v12 = [v11 count];

  if (v12 == 2)
  {
    v14 = MEMORY[0x277CCACA8];
  }

  else
  {
    v13 = v12 - 1;
    if (v12 != 1)
    {
      v17 = MEMORY[0x277CCACA8];
      v15 = _WBSLocalizedString();
      v16 = [v17 localizedStringWithFormat:v15, v10, v13];
      goto LABEL_13;
    }

    v14 = MEMORY[0x277CCACA8];
  }

  v15 = _WBSLocalizedString();
  v16 = [v14 stringWithFormat:v15, v10];
LABEL_13:
  v8 = v16;

  v18 = [v9 tabs];
  [(TabController *)self presentAlertToCreateTabGroupFromTabs:v18 withTitle:v6 message:v8 suggestedName:0 okActionTitle:v7 completionHandler:v19];

LABEL_14:
LABEL_3:
}

BOOL __37__TabController__currentTabsAreBlank__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];
  v3 = v2 != 0;

  return v3;
}

- (id)tabGroupsMenuForTabGroupButton:(BOOL)a3
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D75710];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__TabController_tabGroupsMenuForTabGroupButton___block_invoke;
  v7[3] = &unk_2781D9BB0;
  objc_copyWeak(&v8, &location);
  v9 = a3;
  v5 = [v4 safari_menuWithTitle:&stru_2827BF158 uncachedChildrenProvider:v7];
  [v5 setAccessibilityIdentifier:@"TabGroupsMenu"];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __48__TabController_tabGroupsMenuForTabGroupButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    [v3 didOpenTabGroupDropDownMenu];

    if (*(a1 + 40) == 1)
    {
      v4 = [MEMORY[0x277D499B8] sharedLogger];
      v5 = objc_loadWeakRetained(WeakRetained + 1);
      [v4 reportIOSToolbarButtonUsage:7 withLayout:{objc_msgSend(v5, "analyticsLayoutProvenance")}];
    }

    v6 = [WeakRetained tabGroupsMenuChildrenProvider];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canCreateTabGroupFromCurrentTabs
{
  v3 = [(TabController *)self activeTabGroup];
  if ([v3 isNamed])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(TabController *)self activeTabGroup];
    if ([v5 isPrivateBrowsing])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = [(TabController *)self _currentTabsAreBlank]^ 1;
    }
  }

  return v4;
}

void __38__TabController__switchToTabGroupMenu__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  [*(a1 + 32) setActiveTabGroupUUID:v3];
}

id __30__TabController_tabExposeMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __30__TabController_tabExposeMenu__block_invoke_2;
    v12[3] = &unk_2781D7598;
    v12[4] = WeakRetained;
    v2 = [MEMORY[0x277D75710] sf_tabMenuWithAdditionalChildrenProvider:v12];
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = [WeakRetained[9] tabBarManager];
    v5 = [v4 displayMode];

    if (v5 != 2)
    {
      __30__TabController_tabExposeMenu__block_invoke_cold_1(WeakRetained);
    }

    [v3 addObject:v2];
    v6 = [MEMORY[0x277D28C70] sharedFeatureManager];
    v7 = [v6 preferredCapsuleLayoutStyle];

    if (v7 == 1)
    {
      v8 = [v3 reverseObjectEnumerator];
      v9 = [v8 allObjects];
      v10 = [v9 mutableCopy];

      v3 = v10;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __30__TabController_tabExposeMenu__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeTabDocument];
  v3 = [TabMenuProvider moveMenuForTab:v2 dataSource:*(a1 + 32)];

  if (v3)
  {
    v6[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)updateActiveTab
{
  if (self->_activeTabGroupUUID && !self->_updateTabsSuppressionCount)
  {
    v3 = [(TabController *)self activeTabDocument];
    v4 = [(TabDocument *)v3 libraryType];

    if (!v4)
    {
      [(TabDocument *)v3 validateWebClip];
      if (v3 == self->_tabDocumentBeingHiddenFromTabView)
      {
        v6 = 0;
      }

      else
      {
        v5 = [(TabDocument *)v3 uuid];
        v6 = [v5 UUIDString];
      }

      if (!-[TabDocument isPinned](v3, "isPinned") || (-[TabController activeTabGroup](self, "activeTabGroup"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 usesGlobalPinnedTabs], v7, (v8 & 1) == 0))
      {
        tabGroupManager = self->_tabGroupManager;
        activeTabGroupUUID = self->_activeTabGroupUUID;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __32__TabController_updateActiveTab__block_invoke;
        v15[3] = &unk_2781D97D0;
        v16 = v6;
        [(WBTabGroupManager *)tabGroupManager updateTabGroupWithUUID:activeTabGroupUUID persist:1 usingBlock:v15];
      }

      v11 = [(TabDocument *)v3 tabGroupTab];
      if ([v11 isShared] && (objc_msgSend(v11, "isMarkedAsRead") & 1) == 0)
      {
        v12 = self->_tabGroupManager;
        v13 = [v11 uuid];
        [(WBTabGroupManager *)v12 updateTabWithUUID:v13 persist:1 notify:1 usingBlock:&__block_literal_global_231_0];
      }

      v14 = [(WBWindowState *)self->_windowState activeTabUUIDForTabGroupWithUUID:self->_activeTabGroupUUID];
      if ((WBSIsEqual() & 1) == 0)
      {
        [(WBWindowState *)self->_windowState setActiveTabUUID:v6 forTabGroupWithUUID:self->_activeTabGroupUUID];
        [(WBTabGroupManager *)self->_tabGroupManager saveWindowState:self->_windowState completionHandler:0];
      }
    }
  }
}

- (UIMenu)menuForSwitchingProfiles
{
  v3 = [(TabController *)self tabGroupManager];
  v4 = [v3 profiles];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__TabController_menuForSwitchingProfiles__block_invoke;
  v8[3] = &unk_2781D9C60;
  v8[4] = self;
  v5 = [v4 safari_mapObjectsUsingBlock:v8];

  v6 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 children:v5];

  return v6;
}

id __41__TabController_menuForSwitchingProfiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D750C8];
  v5 = [v3 title];
  v6 = [v3 symbolImage];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__TabController_menuForSwitchingProfiles__block_invoke_2;
  v13[3] = &unk_2781D9420;
  v13[4] = *(a1 + 32);
  v14 = v3;
  v7 = v3;
  v8 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:v13];

  v9 = MEMORY[0x277CCACA8];
  v10 = [v7 title];
  v11 = [v9 stringWithFormat:@"ProfileSwitcher-%@", v10];
  [v8 setAccessibilityIdentifier:v11];

  [v8 setState:{-[TabController _isProfileActive:](*(a1 + 32), v7)}];

  return v8;
}

void __41__TabController_menuForSwitchingProfiles__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 setActiveProfileIdentifier:v3];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained hideTabGroupPicker];
}

- (UIMenu)menuForSwitchingProfilesQuickly
{
  v3 = [(TabController *)self tabGroupManager];
  v4 = [v3 profiles];
  v5 = [v4 mutableCopy];

  if ([v5 count] >= 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v8 = [WeakRetained activeProfile];

    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [v9 BOOLForKey:@"EnableQuickProfileSwitcher"];

    if (v10)
    {
      [v5 removeObject:v8];
      [v5 addObject:v8];
    }

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __48__TabController_menuForSwitchingProfilesQuickly__block_invoke;
    v17 = &unk_2781D9C88;
    v18 = self;
    v19 = v8;
    v11 = v8;
    v12 = [v5 safari_mapObjectsUsingBlock:&v14];
    v6 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:{v12, v14, v15, v16, v17, v18}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __48__TabController_menuForSwitchingProfilesQuickly__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D750C8];
  v5 = [v3 title];
  v6 = [v3 symbolImage];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__TabController_menuForSwitchingProfilesQuickly__block_invoke_2;
  v13[3] = &unk_2781D9420;
  v13[4] = *(a1 + 32);
  v14 = v3;
  v7 = v3;
  v8 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:v13];

  v9 = MEMORY[0x277CCACA8];
  v10 = [v7 title];
  v11 = [v9 stringWithFormat:@"ProfileSwitcher-%@", v10];
  [v8 setAccessibilityIdentifier:v11];

  [v8 setState:{objc_msgSend(v7, "isEqual:", *(a1 + 40))}];

  return v8;
}

void __48__TabController_menuForSwitchingProfilesQuickly__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 setActiveProfileIdentifier:v3];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained hideTabGroupPicker];
}

- (UIMenu)submenuForSwitchingProfiles
{
  if ([(TabController *)self hasMultipleProfiles])
  {
    v3 = [(TabController *)self tabGroupManager];
    v4 = [v3 profiles];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__TabController_submenuForSwitchingProfiles__block_invoke;
    v17[3] = &unk_2781D9C60;
    v17[4] = self;
    v5 = [v4 safari_mapObjectsUsingBlock:v17];

    v6 = [(TabController *)self activeProfile];
    v7 = [v6 symbolImage];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.crop.rectangle.stack"];
    }

    v11 = v9;

    v12 = MEMORY[0x277D75710];
    v13 = _WBSLocalizedString();
    v10 = [v12 menuWithTitle:v13 image:v11 identifier:0 options:0 children:v5];

    v14 = [(TabController *)self activeProfile];
    v15 = [v14 title];
    [v10 setSubtitle:v15];

    [v10 setAccessibilityIdentifier:@"ProfileSwitcher"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __44__TabController_submenuForSwitchingProfiles__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  [v1 setActiveProfileIdentifier:v2];
}

- (id)tabGroupShareSheetForCurrentTabGroup
{
  v3 = [(TabController *)self activeTabGroup];
  v4 = [(TabController *)self shareRecordForActiveTabGroup];
  v5 = objc_alloc(MEMORY[0x277D28D78]);
  v6 = [(TabController *)self tabGroupManager];
  v7 = [(TabController *)self iconForSharingActiveTabGroup];
  v8 = [v5 initWithTabGroup:v3 inTabGroupManager:v6 existingShare:v4 icon:v7];

  v9 = [(TabController *)self _tabGroupShareSheetWithTabGroupActivityItemConfiguration:v8];

  return v9;
}

- (id)_tabGroupShareSheetWithTabGroupActivityItemConfiguration:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [objc_alloc(MEMORY[0x277D546D8]) initWithActivityItemsConfiguration:v3];
    objc_initWeak(&location, a1);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__TabController__tabGroupShareSheetWithTabGroupActivityItemConfiguration___block_invoke;
    v6[3] = &unk_2781D9CB0;
    objc_copyWeak(&v7, &location);
    [v4 setCompletionWithItemsHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __74__TabController__tabGroupShareSheetWithTabGroupActivityItemConfiguration___block_invoke(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [(TabController *)WeakRetained _requestContactsAccessIfNeeded];
  }

  else if (v11)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __74__TabController__tabGroupShareSheetWithTabGroupActivityItemConfiguration___block_invoke_cold_1(v13);
    }
  }
}

- (void)_beganSharingTabGroup:(id)a3
{
  v4 = [a3 object];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__TabController__beganSharingTabGroup___block_invoke;
  v6[3] = &unk_2781D4C88;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __46__TabController__markAllTabsInTabGroupAsRead___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a2 tabs];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (([v7 isMarkedAsRead] & 1) == 0)
        {
          [v7 markAsRead];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __47__TabController__requestContactsAccessIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47__TabController__requestContactsAccessIfNeeded__block_invoke_cold_1(v4);
    }
  }
}

- (UIImage)iconForSharingActiveTabGroup
{
  v3 = [(TabController *)self activeTabGroup];
  v4 = [(TabController *)self iconForSharingTabGroup:v3];

  return v4;
}

- (id)iconForSharingTabGroup:(id)a3
{
  v3 = MEMORY[0x277D28F58];
  v4 = a3;
  v5 = [v3 sharedSiteMetadataManager];
  v6 = [v5 tabGroupIconProvider];
  v7 = [v6 iconForTabGroup:v4];

  v8 = iconForSharingTabGroup__appIcon;
  if (!(v7 | iconForSharingTabGroup__appIcon))
  {
    v9 = MEMORY[0x277D28CA0];
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v9 appIconForBundleIdentifier:v11 imageSize:{60.0, 60.0}];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277D755B8] imageNamed:@"AppIcon"];
    }

    v15 = iconForSharingTabGroup__appIcon;
    iconForSharingTabGroup__appIcon = v14;

    v8 = iconForSharingTabGroup__appIcon;
  }

  if (v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v8;
  }

  v17 = v16;

  return v16;
}

- (CKShare)shareRecordForActiveTabGroupIfIsShared
{
  v3 = [(TabController *)self activeTabGroupOrTabGroupVisibleInSwitcher];
  if ([v3 isShared])
  {
    v4 = [(TabController *)self shareRecordForActiveTabGroup];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CKShare)shareRecordForActiveTabGroup
{
  v3 = [(TabController *)self activeTabGroupOrTabGroupVisibleInSwitcher];
  v4 = [(WBTabGroupManager *)self->_tabGroupManager shareRecordForTabGroup:v3];
  if (v4)
  {
    [(TabController *)self _updateShare:v4 forActiveTabGroup:v3];
    v6 = v4;
  }

  return v4;
}

- (id)cachedTabSwitcherShareConfigurationForTabGroup:(id)a3
{
  cachedShareConfigurationsByTabGroupUUID = self->_cachedShareConfigurationsByTabGroupUUID;
  v4 = [a3 uuid];
  v5 = [(NSMutableDictionary *)cachedShareConfigurationsByTabGroupUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)clearCachedTabSwitcherShareConfigurationForTabGroupWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cachedShareConfigurationsByTabGroupUUID objectForKeyedSubscript:v4];

  if (v5)
  {
    [(NSMutableDictionary *)self->_cachedShareConfigurationsByTabGroupUUID setObject:0 forKeyedSubscript:v4];
    v6 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:v4];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__TabController_clearCachedTabSwitcherShareConfigurationForTabGroupWithUUID___block_invoke;
    v7[3] = &unk_2781D9CF8;
    v7[4] = self;
    [(TabController *)self tabSwitcherShareConfigurationForTabGroup:v6 completion:v7];
  }
}

void __77__TabController_clearCachedTabSwitcherShareConfigurationForTabGroupWithUUID___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 72) tabSwitcherViewController];
  [v1 setNeedsApplyContentAnimated:0];
}

- (void)tabSwitcherShareConfigurationForTabGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isNamed] && (+[FeatureManager sharedFeatureManager](FeatureManager, "sharedFeatureManager"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "areSharedTabGroupsEnabled"), v8, (v9 & 1) != 0))
  {
    cachedShareConfigurationsByTabGroupUUID = self->_cachedShareConfigurationsByTabGroupUUID;
    v11 = [v6 uuid];
    v12 = [(NSMutableDictionary *)cachedShareConfigurationsByTabGroupUUID objectForKeyedSubscript:v11];

    if (v12)
    {
      v7[2](v7, v12);
    }

    else
    {
      objc_initWeak(&location, self);
      tabGroupManager = self->_tabGroupManager;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __69__TabController_tabSwitcherShareConfigurationForTabGroup_completion___block_invoke;
      v14[3] = &unk_2781D9D70;
      v14[4] = self;
      v15 = v6;
      objc_copyWeak(&v17, &location);
      v16 = v7;
      [(WBTabGroupManager *)tabGroupManager shareRecordForTabGroup:v15 completionHandler:v14];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v7[2](v7, 0);
  }
}

void __69__TabController_tabSwitcherShareConfigurationForTabGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__TabController_tabSwitcherShareConfigurationForTabGroup_completion___block_invoke_2;
  block[3] = &unk_2781D9D48;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  objc_copyWeak(&v10, (a1 + 56));
  v9 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v10);
}

void __69__TabController_tabSwitcherShareConfigurationForTabGroup_completion___block_invoke_2(uint64_t a1)
{
  [(TabController *)*(a1 + 32) _updateShare:*(a1 + 48) forActiveTabGroup:?];
  v2 = objc_alloc(MEMORY[0x277D28D78]);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v5[6];
  v7 = [v5 iconForSharingTabGroup:v3];
  v8 = [v2 initWithTabGroup:v3 inTabGroupManager:v6 existingShare:v4 icon:v7];

  v9 = objc_alloc(MEMORY[0x277D28E20]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__TabController_tabSwitcherShareConfigurationForTabGroup_completion___block_invoke_3;
  v20[3] = &unk_2781D9D20;
  objc_copyWeak(&v23, (a1 + 64));
  v10 = v8;
  v21 = v10;
  v22 = *(a1 + 48);
  v11 = [v9 initWithIdentifier:@"TabController.TabGroupShare" shareHandler:v20];
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v13 = [WeakRetained newCollaborationButtonWithActiveTabGroup:*(a1 + 48) existingShare:*(a1 + 40)];
    [v11 setCollaborationButtonForLargeTitle:v13];

    v14 = [WeakRetained newCollaborationButtonWithActiveTabGroup:*(a1 + 48) existingShare:*(a1 + 40)];
    [v11 setCollaborationButtonForNavigationBar:v14];
  }

  v15 = *(*(a1 + 32) + 232);
  if (!v15)
  {
    v16 = [MEMORY[0x277CBEB38] dictionary];
    v17 = *(a1 + 32);
    v18 = *(v17 + 232);
    *(v17 + 232) = v16;

    v15 = *(*(a1 + 32) + 232);
  }

  v19 = [*(a1 + 48) uuid];
  [v15 setObject:v11 forKeyedSubscript:v19];

  (*(*(a1 + 56) + 16))();
  objc_destroyWeak(&v23);
}

void __69__TabController_tabSwitcherShareConfigurationForTabGroup_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    __69__TabController_tabSwitcherShareConfigurationForTabGroup_completion___block_invoke_3_cold_1(a1, WeakRetained);
  }
}

__CFString *__52__TabController_unnamedTabGroupDisplayTitleProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v3 usesGlobalPinnedTabs])
    {
      v16 = WeakRetained[33];
      v17 = [(TabController *)WeakRetained _containerForPinnedTabsInTabGroup:v3];
      v5 = [v16 pinnedTabsInContainer:v17];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v3 tabs];
    v7 = [v6 count];
    v8 = [v5 count] + v7;

    if (v8 && (v8 != 1 || ([v3 tabs], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "url"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v11)))
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = _WBSLocalizedString();
      v14 = [v12 localizedStringWithFormat:v13, v8];
    }

    else
    {
      v14 = _WBSLocalizedString();
    }
  }

  else
  {
    v14 = &stru_2827BF158;
  }

  return v14;
}

- (void)willSelectProfileWithIdentifier:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:*MEMORY[0x277D49BD8]] & 1) == 0)
  {
    [(PinnedTabsManager *)self->_pinnedTabsManager willSelectProfileWithIdentifier:v4];
  }
}

- (void)didSelectProfileWithIdentifier:(id)a3 previousProfileIdentifier:(id)a4
{
  v5 = a4;
  if (([v5 isEqualToString:*MEMORY[0x277D49BD8]] & 1) == 0)
  {
    [(PinnedTabsManager *)self->_pinnedTabsManager didDeselectProfileWithIdentifier:v5];
  }

  [(NSUndoManager *)self->_undoManager removeAllActions];
}

void __139__TabController__tabGroupAlertControllerWithTitle_message_okActionTitle_role_showingSuggestionsIfPossible_actionHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  [v10 setAutocorrectionType:2];
  v3 = _WBSLocalizedString();
  if ([v3 integerValue] <= 2 && objc_msgSend(v3, "integerValue") < 0)
  {
    v4 = 0;
  }

  else if ([v3 integerValue] > 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = [v3 integerValue];
  }

  [v10 setAutocapitalizationType:v4];
  [v10 setClearButtonMode:1];
  if (*(a1 + 40))
  {
    v5 = +[FeatureManager sharedFeatureManager];
    v6 = [v5 areTabGroupSuggestionsEnabled];
    v8 = *(a1 + 32);
    v7 = a1 + 32;
    *(v8 + 208) = v6;
  }

  else
  {
    v9 = *(a1 + 32);
    v7 = a1 + 32;
    *(v9 + 208) = 0;
  }

  if (*(*v7 + 208) == 1)
  {
    [v10 setAutocorrectionType:1];
  }
}

uint64_t __139__TabController__tabGroupAlertControllerWithTitle_message_okActionTitle_role_showingSuggestionsIfPossible_actionHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __139__TabController__tabGroupAlertControllerWithTitle_message_okActionTitle_role_showingSuggestionsIfPossible_actionHandler_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  v10 = [v3 text];

  v4 = [v10 length];
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [*(a1 + 32) textFields];
      v7 = [v6 firstObject];
      v8 = [v7 text];
      (*(v5 + 16))(v5, v8);
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v4 != 0);
  }
}

void __118__TabController_presentAlertToCreateTabGroupFromTabs_withTitle_message_suggestedName_okActionTitle_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) addNewTabGroupWithTitle:a2 fromTabs:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained scrollSidebarToTopAnimated:1];

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

uint64_t __118__TabController_presentAlertToCreateTabGroupFromTabs_withTitle_message_suggestedName_okActionTitle_completionHandler___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    WeakRetained = objc_loadWeakRetained((*(result + 32) + 8));
    [WeakRetained closePreviewDocument];

    result = *(v2 + 40);
    if (result)
    {
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

- (id)addNewTabGroupWithTitle:(id)a3 fromExistingTabs:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [(TabController *)self unnamedTabGroup];
    v8 = [v7 tabs];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(TabController *)self addNewTabGroupWithTitle:v6 fromTabs:v8];

  return v9;
}

- (id)addNewTabGroupWithTitle:(id)a3 fromTabs:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    [(TabController *)self addNewTabGroupWithTitle:v6 fromTabs:v7, &v10];
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dismissOpenTabGroupAlertIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained viewControllerToPresentFrom];

  v5 = [v4 presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 role] == 1)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      windowState = self->_windowState;
      v8 = v6;
      v9 = [(WBWindowState *)windowState uuid];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Dismissing open FTG alert on window %{public}@", &v10, 0xCu);
    }

    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t __68__TabController__presentOpenAlertForFocusProfile_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) identifier];
  [*(a1 + 32) setActiveProfileIdentifier:v2];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

uint64_t __71__TabController__presentOpenAlertForFocusedTabGroup_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) uuid];
  [*(a1 + 32) setActiveTabGroupUUID:v2];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __48__TabController__presentRenameAlertForTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 48);
  v6 = [v4 uuid];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__TabController__presentRenameAlertForTabGroup___block_invoke_2;
  v8[3] = &unk_2781D97D0;
  v9 = v3;
  v7 = v3;
  [v5 updateTabGroupWithUUID:v6 persist:1 usingBlock:v8];
}

void __78__TabController__updateContextKitSuggestionsForTabGroupWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 40);
    objc_sync_enter(v3);
    [*(a1 + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __78__TabController__updateContextKitSuggestionsForTabGroupWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v2 = getCKContextClientClass_softClass_0;
    v14 = getCKContextClientClass_softClass_0;
    if (!getCKContextClientClass_softClass_0)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getCKContextClientClass_block_invoke_0;
      v10[3] = &unk_2781D4BD8;
      v10[4] = &v11;
      __getCKContextClientClass_block_invoke_0(v10);
      v2 = v12[3];
    }

    v3 = v2;
    _Block_object_dispose(&v11, 8);
    v4 = [v2 clientWithDefaultRequestType:1];
    v5 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__TabController__updateContextKitSuggestionsForTabGroupWithCompletionHandler___block_invoke_3;
    v8[3] = &unk_2781D9F00;
    v6 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = v6;
    [v4 groupResponses:v5 withReply:v8];
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __78__TabController__updateContextKitSuggestionsForTabGroupWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (!v5)
  {
    v6 = [v11 results];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v11 completer];
      v9 = *(a1 + 32);
      v10 = *(v9 + 200);
      *(v9 + 200) = v8;
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)tabGroupNamingTextDidChange:(id)a3
{
  if (self->_showsTabGroupNameSuggestions)
  {
    v4 = a3;
    v5 = [v4 text];
    [TabController _updateTabGroupSuggestions:matchingText:];
  }
}

id __57__TabController__updateTabGroupSuggestions_matchingText___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75C38];
  v3 = [a2 title];
  v4 = [v2 textSuggestionWithInputText:v3];

  return v4;
}

- (BOOL)isTabGroupActive:(id)a3
{
  v4 = [a3 uuid];
  LOBYTE(self) = [v4 isEqualToString:self->_activeTabGroupUUID];

  return self;
}

- (void)selectLocalTabGroup
{
  v4 = [(TabController *)self unnamedTabGroup];
  v3 = [v4 uuid];
  [(TabController *)self setActiveTabGroupUUID:v3];
}

- (void)selectPrivateTabGroup
{
  v4 = [(WBWindowState *)self->_windowState privateTabGroup];
  v3 = [v4 uuid];
  [(TabController *)self setActiveTabGroupUUID:v3];
}

- (void)didFocusTabGroup:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained didFocusTabGroup:v4];
}

- (void)setActiveProfileIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained setActiveProfileIdentifier:v4];
}

- (void)setActiveTabGroupUUID:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TabController *)self activeTabGroup];
  v6 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:v4];
  v7 = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabSwitcherViewController];
  [v7 setNeedsScrollToTabGroup:v6];

  if ([v5 isIdentical:v6])
  {
    [TabController setActiveTabGroupUUID:?];
  }

  else
  {
    if (self->_activeTabGroupUUID)
    {
      v8 = [(TabController *)self tabGroupManager];
      [v8 endParticipantPresenceReportingForTabGroupWithUUID:self->_activeTabGroupUUID];
    }

    v9 = objc_alloc_init(MEMORY[0x277D49B60]);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __39__TabController_setActiveTabGroupUUID___block_invoke;
    v32[3] = &unk_2781D4D40;
    v32[4] = self;
    [v9 setHandler:v32];
    v10 = [v4 isEqualToString:self->_activeTabGroupUUID];
    if ((v10 & 1) == 0)
    {
      [(TabController *)self persistAllCurrentTabsInBackground:0];
    }

    v11 = [v4 copy];
    activeTabGroupUUID = self->_activeTabGroupUUID;
    self->_activeTabGroupUUID = v11;

    v13 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"YES";
      if (v10)
      {
        v14 = @"NO";
      }

      v15 = v14;
      v16 = v15;
      v17 = &stru_2827BF158;
      v18 = @", UUID is nil";
      if (v4)
      {
        v18 = &stru_2827BF158;
      }

      *buf = 138543874;
      v34 = v15;
      v36 = v18;
      v35 = 2114;
      if (!v6)
      {
        v17 = @", group is nil";
      }

      v37 = 2114;
      v38 = v17;
      _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Did switch to tab group: %{public}@%{public}@%{public}@", buf, 0x20u);
    }

    v19 = [(TabController *)self _application];
    v20 = [v19 focusedTabGroupUUIDString];
    v21 = [v20 isEqualToString:v4];

    if (v21)
    {
      [v19 setNeedsFocusedTabGroupUpdate:0];
    }

    if (v4)
    {
      [(WBWindowState *)self->_windowState setActiveTabGroupUUID:v4];
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      [WeakRetained willSelectTabGroupWithUUID:v4];

      [(PinnedTabsManager *)self->_pinnedTabsManager removePinnedTabsObserver:self];
      if ((v10 & 1) == 0)
      {
        [(TabControllerNotificationManager *)self->_notificationManager willBeginUpdates];
        [(TabCollectionViewManager *)self->_tabCollectionViewManager beginFixingTabBarItems];
        [(TabCollectionViewManager *)self->_tabCollectionViewManager beginFixingTabOverviewItems];
        ++self->_updateTabsSuppressionCount;
        [(TabController *)self _updateTabsForTabGroup:v6];
        --self->_updateTabsSuppressionCount;
      }

      [(TabController *)self updateSelectedTabGroupName];
      if ([v6 usesGlobalPinnedTabs])
      {
        [(PinnedTabsManager *)self->_pinnedTabsManager addPinnedTabsObserver:self];
        [TabController _updateActiveTabForTabGroup:];
      }

      v23 = [v6 tabs];
      v24 = [v23 count];

      if (!v24)
      {
        [(TabController *)self didUpdateTabDocuments];
      }

      [(TabController *)self didFocusTabGroup:v6];
      if ((v10 & 1) == 0)
      {
        [(TabCollectionViewManager *)self->_tabCollectionViewManager endFixingTabBarItems];
        [(TabCollectionViewManager *)self->_tabCollectionViewManager endFixingTabOverviewItems];
        [(TabCollectionViewManager *)self->_tabCollectionViewManager updateTabOverviewItems];
        [(TabCollectionViewManager *)self->_tabCollectionViewManager updateExplanationViewVisibilityAnimated:1];
      }

      v25 = [(TabController *)self activeTabDocument];
      [(TabCollectionViewManager *)self->_tabCollectionViewManager updateTabBarAnimated:0 keepingTabVisible:v25];
      v26 = objc_loadWeakRetained(&self->_browserController);
      [v26 updateFavoritesForNewDocument];
      [v26 reloadSidebarAnimated:0];
      v27 = [(TabController *)self startPageBackgroundImageIdentifier];
      [v26 loadBackgroundImageIfNeededForIdentifier:v27];

      if ((v10 & 1) == 0)
      {
        [(TabController *)self setActiveTabGroupUUID:v5];
      }

      if ([v6 isShared])
      {
        [(TabController *)self _requestContactsAccessIfNeeded];
      }

      if ([v6 isSyncable])
      {
        v28 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
        v29 = objc_alloc(MEMORY[0x277D4A860]);
        v30 = [(TabController *)self tabGroupManager];
        v31 = [v29 initWithTabGroup:v6 tabProvider:v30];
        [v28 preloadRequest:v31 withPriority:0 responseHandler:0];
      }
    }
  }
}

void __39__TabController_setActiveTabGroupUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[7])
  {
    v3 = [v2 tabGroupManager];
    [v3 beginParticipantPresenceReportingForTabGroupWithUUID:*(*(a1 + 32) + 56)];
  }
}

- (void)_updateTabsForTabGroup:(uint64_t)a1
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    [*(a1 + 272) willBeginUpdates];
    v4 = objc_alloc_init(MEMORY[0x277D49B60]);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __40__TabController__updateTabsForTabGroup___block_invoke;
    v47[3] = &unk_2781D4D40;
    v47[4] = a1;
    v38 = v4;
    [v4 setHandler:v47];
    v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [v3 privacyPreservingDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Updating tab documents for %{public}@", &buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v9 = [v3 tabsUUIDSet];
    v10 = [v3 isPrivateBrowsing];
    v11 = 16;
    if (v10)
    {
      v11 = 24;
    }

    v12 = [*(a1 + v11) copy];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __40__TabController__updateTabsForTabGroup___block_invoke_492;
    v44[3] = &unk_2781D5200;
    v37 = v9;
    v45 = v37;
    v46 = a1;
    v13 = [v12 safari_filterObjectsUsingBlock:v44];

    v14 = [WeakRetained activeWebExtensionWindow];
    [v14 idForWebExtensions];
    v16 = v15;
    v17 = MEMORY[0x277D4A8B0];
    v18 = [v14 webExtensionTabs];
    v19 = [v17 tabIDToTabPositionDictionaryForTabs:v18];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v21)
    {
      v22 = *v41;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v40 + 1) + 8 * i);
          [a1 willLoseOwnershipOfTab:v24];
          [(TabController *)a1 _reuseTabIfNecessary:v24];
          [(TabController *)a1 _tabWasAddedToReusableTabs:v24 fromWindowWithID:v19 previousTabPositions:v16];
        }

        v21 = [v20 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v21);
    }

    v25 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      v27 = [v20 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_215819000, v26, OS_LOG_TYPE_INFO, "Closing %zu tabs", &buf, 0xCu);
    }

    [(TabController *)a1 _detachTabs:v20];
    v28 = [v3 tabs];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__10;
    v54 = __Block_byref_object_dispose__10;
    v55 = [MEMORY[0x277CBEB18] array];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __40__TabController__updateTabsForTabGroup___block_invoke_493;
    v39[3] = &unk_2781DA140;
    v39[4] = a1;
    v39[5] = &buf;
    v29 = [v28 safari_mapAndFilterObjectsUsingBlock:v39];
    if (![v28 count] && (objc_msgSend(v3, "isPrivateBrowsing") & 1) == 0)
    {
      v30 = [[TabDocument alloc] initWithTitle:0 URL:0 UUID:0 privateBrowsingEnabled:0 controlledByAutomation:[(TabController *)a1 _controlledByAutomation] hibernated:0 bookmark:0 browserController:WeakRetained relatedWebView:0];
      [(TabDocument *)v30 setIsBlank:1];
      v50 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];

      v29 = v31;
    }

    if ([v29 count])
    {
      v32 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v29 count];
        *v48 = 134217984;
        v49 = v33;
        _os_log_impl(&dword_215819000, v32, OS_LOG_TYPE_INFO, "Inserting %zu tabs", v48, 0xCu);
      }

      v34 = [*(*(&buf + 1) + 40) copy];
      v35 = *(a1 + 184);
      *(a1 + 184) = v34;

      [a1 insertTabs:v29 beforeTab:0 inBackground:1 animated:1];
      v36 = *(a1 + 184);
      *(a1 + 184) = 0;

      [(TabController *)a1 _tabDocumentsWereReusedWhenActiveTabGroupChanged:?];
    }

    [TabController _updateActiveTabForTabGroup:];
    [WeakRetained setPrivateBrowsingEnabled:{objc_msgSend(v3, "isPrivateBrowsing")}];

    _Block_object_dispose(&buf, 8);
  }
}

- (BOOL)createTabGroupAlertIsPresented
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained viewControllerToPresentFrom];
  v4 = [v3 presentedViewController];

  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [v4 role] == 2;

  return v5;
}

- (NSString)moveLocalTabsToNewGroupTitle
{
  v3 = [(TabController *)self activeTabGroupOrTabGroupVisibleInSwitcher];
  if ([v3 isNamed] & 1) != 0 || (objc_msgSend(v3, "isPrivateBrowsing") & 1) != 0 || (-[TabController activeTabDocument](self, "activeTabDocument"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "libraryType"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5) || (objc_msgSend(v3, "isEmpty"))
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v9 = [WeakRetained unnamedTabGroup];
    v10 = [v9 tabs];
    v11 = [v10 count];

    v12 = MEMORY[0x277CCACA8];
    v13 = _WBSLocalizedString();
    v6 = [v12 localizedStringWithFormat:v13, v11];
  }

  return v6;
}

- (NSSet)nonActiveTabGroupsInCurrentBrowsingMode
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained isPrivateBrowsingEnabled];
  v22 = [MEMORY[0x277CBEB58] set];
  v5 = MEMORY[0x277CBEB58];
  if (v4)
  {
    v6 = [MEMORY[0x277CBEB58] set];
  }

  else
  {
    tabGroupManager = self->_tabGroupManager;
    v8 = [(TabController *)self activeProfileIdentifier];
    v9 = [(WBTabGroupManager *)tabGroupManager namedTabGroupsForProfileWithIdentifier:v8];
    v6 = [v5 setWithArray:v9];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [WeakRetained browserWindowController];
  v11 = [v10 browserControllers];

  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v23 + 1) + 8 * i) tabController];
        v17 = [v16 windowState];
        v18 = [v16 activeTabGroup];
        if (v18)
        {
          [v22 addObject:v18];
        }

        if (v4)
        {
          [v17 privateTabGroup];
        }

        else
        {
          [v16 unnamedTabGroup];
        }
        v19 = ;
        if (v19)
        {
          [v6 addObject:v19];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  [v6 minusSet:v22];

  return v6;
}

- (id)existingPersistedTitleForTabDocument:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(TabController *)self activeTabGroup];
  v6 = [v5 tabs];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v4 uuid];
        v13 = [v12 UUIDString];
        v14 = [v11 isEqualToString:v13];

        if (v14)
        {
          v7 = [v10 title];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)imageForTabGroup:(id)a3
{
  v4 = a3;
  if ([v4 isNamed])
  {
    v5 = [v4 isShared];
    v6 = MEMORY[0x277D755B8];
    if (v5)
    {
      v7 = @"square.on.square.badge.person.crop";
    }

    else
    {
      v7 = @"square.on.square";
    }

    goto LABEL_10;
  }

  if (([v4 isUnnamed] & 1) != 0 || objc_msgSend(v4, "isLocal"))
  {
    if (-[TabController hasMultipleProfiles](self, "hasMultipleProfiles") && ([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
    {
      v14 = [(TabController *)self activeProfile];
      v12 = [v14 symbolImage];
    }

    else
    {
      v8 = MEMORY[0x277D755B8];
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      v10 = [WeakRetained scene];
      v11 = [v8 safari_currentDeviceImageNameForOrientation:{objc_msgSend(v10, "interfaceOrientation")}];
      v12 = [v8 _systemImageNamed:v11];
    }

    goto LABEL_11;
  }

  if ([v4 isPrivateBrowsing])
  {
    v6 = MEMORY[0x277D755B8];
    v7 = @"hand.raised";
LABEL_10:
    v12 = [v6 systemImageNamed:v7];
    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)swipeActionsConfigurationForTabGroup:(id)a3 forPickerSheet:(BOOL)a4
{
  v6 = a3;
  if ([v6 isNamed])
  {
    v7 = [MEMORY[0x277CBEB18] array];
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D753C0];
    v9 = _WBSLocalizedString();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__TabController_swipeActionsConfigurationForTabGroup_forPickerSheet___block_invoke;
    v23[3] = &unk_2781D9F68;
    objc_copyWeak(&v25, &location);
    v10 = v6;
    v24 = v10;
    v26 = a4;
    v11 = [v8 contextualActionWithStyle:1 title:v9 handler:v23];

    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
    [v11 setImage:v12];

    [v7 addObject:v11];
    if ([v10 isNamed])
    {
      v13 = _WBSLocalizedString();
      v14 = MEMORY[0x277D753C0];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __69__TabController_swipeActionsConfigurationForTabGroup_forPickerSheet___block_invoke_3;
      v19[3] = &unk_2781D9F68;
      objc_copyWeak(&v21, &location);
      v20 = v10;
      v22 = a4;
      v15 = [v14 contextualActionWithStyle:0 title:v13 handler:v19];
      v16 = [MEMORY[0x277D755B8] systemImageNamed:@"pencil"];
      [v15 setImage:v16];

      [v7 addObject:v15];
      objc_destroyWeak(&v21);
    }

    v17 = [MEMORY[0x277D75AD8] configurationWithActions:v7];
    [v17 setPerformsFirstActionWithFullSwipe:1];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __69__TabController_swipeActionsConfigurationForTabGroup_forPickerSheet___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = v5;
    [TabController _presentCloseAlertForTabGroup:completionHandler:];
  }
}

void __69__TabController_swipeActionsConfigurationForTabGroup_forPickerSheet___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained libraryController];
  [v5 reloadSectionControllersIfNeeded];

  if (a2)
  {
    v6 = [*(*(a1 + 32) + 72) tabSwitcherViewController];
    [v6 setNeedsApplyContentAnimated:1];
    [v6 applyContentIfNeeded];
  }

  (*(*(a1 + 40) + 16))();
  if (a2 && (*(a1 + 48) & 1) == 0)
  {
    v7 = [MEMORY[0x277D499B8] sharedLogger];
    [v7 didUseSidebarAction:4];
  }
}

void __69__TabController_swipeActionsConfigurationForTabGroup_forPickerSheet___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    __69__TabController_swipeActionsConfigurationForTabGroup_forPickerSheet___block_invoke_3_cold_1(a1, WeakRetained);
  }
}

- (id)swipeActionsConfigurationForTab:(id)a3 inTabGroup:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 url];
  if (v8)
  {
  }

  else
  {
    v9 = [v7 tabs];
    v10 = [v9 count] < 2;

    if (v10)
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  v12 = MEMORY[0x277D753C0];
  v13 = _WBSLocalizedString();
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __60__TabController_swipeActionsConfigurationForTab_inTabGroup___block_invoke;
  v22 = &unk_2781D9F90;
  objc_copyWeak(&v25, &location);
  v23 = v7;
  v24 = v6;
  v14 = [v12 contextualActionWithStyle:1 title:v13 handler:&v19];

  v15 = [MEMORY[0x277D755B8] systemImageNamed:{@"trash", v19, v20, v21, v22}];
  [v14 setImage:v15];

  v16 = MEMORY[0x277D75AD8];
  v27[0] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v11 = [v16 configurationWithActions:v17];

  [v11 setPerformsFirstActionWithFullSwipe:1];
  objc_destroyWeak(&v25);
LABEL_6:
  objc_destroyWeak(&location);

  return v11;
}

void __60__TabController_swipeActionsConfigurationForTab_inTabGroup___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained isTabGroupActive:*(a1 + 32)])
    {
      v8 = objc_alloc(MEMORY[0x277CCAD78]);
      v9 = [*(a1 + 40) uuid];
      v10 = [v8 initWithUUIDString:v9];
      v11 = [v7 tabWithUUID:v10];
      [v7 closeTab:v11 animated:0];
    }

    else if ([*(a1 + 40) isPinned])
    {
      v20 = *(a1 + 40);
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      [v7 closeTabs:v17 inInactiveTabGroup:*(a1 + 32)];
    }

    else
    {
      [(TabController *)v7 _removeTab:*(a1 + 32) fromTabGroup:v12, v13, v14, v15, v16, v20, v21, v22, v23, v24, v25];
    }

    v18 = objc_loadWeakRetained(v7 + 1);
    [v18 reloadSidebarAnimated:1];
    v19 = [v18 libraryController];
    [v19 reloadSectionControllersIfNeeded];

    v5[2](v5, 1);
  }
}

- (id)menuForTabGroup:(id)a3 variant:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D75710];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__TabController_menuForTabGroup_variant___block_invoke;
  v11[3] = &unk_2781D9FB8;
  objc_copyWeak(v13, &location);
  v8 = v6;
  v12 = v8;
  v13[1] = a4;
  v9 = [v7 safari_menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 uncachedChildrenProvider:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

id __41__TabController_menuForTabGroup_variant___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [(TabController *)WeakRetained _subMenusForTabGroup:*(a1 + 48) variant:?];

  return v3;
}

- (id)_subMenusForTabGroup:(uint64_t)a3 variant:
{
  v67[2] = *MEMORY[0x277D85DE8];
  v49 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    if ([v49 isPrivateBrowsing])
    {
      v5 = +[Application sharedApplication];
      v6 = [v5 isPrivateBrowsingLocked];

      if (v6)
      {
        v45 = MEMORY[0x277CBEBF8];
LABEL_27:
        objc_destroyWeak(&location);
        goto LABEL_28;
      }
    }

    v47 = a3 != 0;
    v45 = [MEMORY[0x277CBEB18] array];
    v46 = [MEMORY[0x277CBEB18] array];
    v7 = [(TabController *)a1 _shareActionForTabGroup:v49];
    [v46 safari_addObjectUnlessNil:v7];

    [TabController _copyLinksActionForTabGroup:forPickerSheet:];
    v9 = v8;
    [v46 safari_addObjectUnlessNil:v8];

    if ([v46 count])
    {
      v10 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v46];
      [v45 addObject:v10];
    }

    if ([v49 isNamed])
    {
      v11 = [MEMORY[0x277CBEB18] array];
      v12 = [(TabController *)a1 _renameActionForTabGroup:v49 forPickerSheet:a3 != 0];
      [v11 safari_addObjectUnlessNil:v12];

      v13 = [(TabController *)a1 _deleteActionForTabGroup:v49 forPickerSheet:a3 != 0];
      [v11 addObject:v13];

      v14 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v11];
      [v45 addObject:v14];
    }

    if ([MEMORY[0x277D49A08] isSafariProfilesEnabled])
    {
      v15 = [TabMenuProvider moveMenuForTabGroup:v49 dataSource:a1];
      [v45 safari_addObjectUnlessNil:v15];
    }

    if (a3 == 1)
    {
      v48 = [MEMORY[0x277CBEB18] array];
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v20 = [v49 tabs];
      v21 = [v20 countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v21)
      {
        v22 = *v62;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v62 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v61 + 1) + 8 * i);
            v25 = objc_alloc(MEMORY[0x277CCAD78]);
            v26 = [v24 uuid];
            v27 = [v25 initWithUUIDString:v26];
            v28 = [a1 iconForTabUUID:v27];

            v29 = MEMORY[0x277D750C8];
            v30 = [(WBTab *)v24 displayTitle];
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __46__TabController__subMenusForTabGroup_variant___block_invoke;
            v56[3] = &unk_2781D9FE0;
            objc_copyWeak(&v59, &location);
            v31 = v49;
            v60 = v47;
            v57 = v31;
            v58 = v24;
            v32 = [v29 actionWithTitle:v30 image:v28 identifier:0 handler:v56];

            [v48 addObject:v32];
            objc_destroyWeak(&v59);
          }

          v21 = [v20 countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v21);
      }

      v17 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v48];
      [v45 addObject:v17];
    }

    else
    {
      if (a3)
      {
        goto LABEL_23;
      }

      v16 = MEMORY[0x277D75710];
      v48 = [(TabController *)a1 _toggleTabViewActionForTabGroup:v49];
      v67[0] = v48;
      v17 = [(TabController *)a1 _toggleSidebarSectionIsExpandedActionForTabGroup:v49];
      v67[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
      v19 = [v16 menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v18];
      [v45 addObject:v19];
    }

LABEL_23:
    if (SFDebugMenuEnabled() && [v49 isSyncable])
    {
      v33 = [v49 uuid];
      v34 = [MEMORY[0x277CBEB18] array];
      v35 = MEMORY[0x277D750C8];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __46__TabController__subMenusForTabGroup_variant___block_invoke_2;
      v53[3] = &unk_2781DA008;
      objc_copyWeak(&v55, &location);
      v36 = v33;
      v54 = v36;
      v37 = [v35 actionWithTitle:@"Copy Tab Group Sync Data" image:0 identifier:0 handler:v53];
      [v34 addObject:v37];

      v38 = MEMORY[0x277D750C8];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __46__TabController__subMenusForTabGroup_variant___block_invoke_3;
      v50[3] = &unk_2781DA008;
      objc_copyWeak(&v52, &location);
      v39 = v36;
      v51 = v39;
      v40 = [v38 actionWithTitle:@"Copy Tab Group and Tabs Sync Data" image:0 identifier:0 handler:v50];
      [v34 addObject:v40];

      v41 = MEMORY[0x277D75710];
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Debug UUID %@ (Internal Only)", v39];
      v43 = [v41 menuWithTitle:v42 image:0 identifier:0 options:1 children:v34];
      [v45 addObject:v43];

      objc_destroyWeak(&v52);
      objc_destroyWeak(&v55);
    }

    goto LABEL_27;
  }

  v45 = 0;
LABEL_28:

  return v45;
}

- (id)_shareActionForTabGroup:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 isNamed] && (+[FeatureManager sharedFeatureManager](FeatureManager, "sharedFeatureManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "areSharedTabGroupsEnabled"), v5, v6))
  {
    objc_initWeak(&location, a1);
    v7 = MEMORY[0x277D750C8];
    v8 = _WBSLocalizedString();
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__TabController__shareActionForTabGroup___block_invoke;
    v12[3] = &unk_2781DA008;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    v10 = [v7 actionWithTitle:v8 image:v9 identifier:0 handler:v12];

    [v10 setAccessibilityIdentifier:@"ShareTabGroupButton"];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_renameActionForTabGroup:(char)a3 forPickerSheet:
{
  v5 = a2;
  v6 = v5;
  if (a1 && [v5 isNamed])
  {
    v7 = _WBSLocalizedString();
    objc_initWeak(&location, a1);
    v8 = MEMORY[0x277D750C8];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"pencil"];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __57__TabController__renameActionForTabGroup_forPickerSheet___block_invoke;
    v15 = &unk_2781DA080;
    objc_copyWeak(&v17, &location);
    v16 = v6;
    v18 = a3;
    v10 = [v8 actionWithTitle:v7 image:v9 identifier:0 handler:&v12];

    [v10 setAccessibilityIdentifier:{@"RenameTabGroupButton", v12, v13, v14, v15}];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_deleteActionForTabGroup:(char)a3 forPickerSheet:
{
  v5 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v6 = _WBSLocalizedString();
    v7 = [a1[6] shareRecordForTabGroup:v5];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 currentUserParticipant];
      v10 = [v9 role];

      if (v10 != 1)
      {
        v11 = _WBSLocalizedString();

        v6 = v11;
      }
    }

    v12 = MEMORY[0x277D750C8];
    v13 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __57__TabController__deleteActionForTabGroup_forPickerSheet___block_invoke;
    v19 = &unk_2781DA080;
    objc_copyWeak(&v21, &location);
    v20 = v5;
    v22 = a3;
    v14 = [v12 actionWithTitle:v6 image:v13 identifier:0 handler:&v16];

    [v14 setAttributes:{2, v16, v17, v18, v19}];
    [v14 setAccessibilityIdentifier:@"DeleteTabGroupButton"];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_toggleTabViewActionForTabGroup:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = MEMORY[0x277D750C8];
    if ([a1[9] isShowingTabView] && objc_msgSend(a1, "isTabGroupActive:", v3))
    {
      v5 = _WBSLocalizedString();
      v6 = 0;
      v7 = 1;
    }

    else
    {
      v5 = _WBSLocalizedString();
      v7 = 0;
      v6 = 1;
    }

    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"square.on.square"];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__TabController__toggleTabViewActionForTabGroup___block_invoke;
    v11[3] = &unk_2781DA008;
    objc_copyWeak(&v13, &location);
    v12 = v3;
    v9 = [v4 actionWithTitle:v5 image:v8 identifier:0 handler:v11];

    if (v6)
    {
    }

    if (v7)
    {
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_toggleSidebarSectionIsExpandedActionForTabGroup:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
    {
      WeakRetained = objc_loadWeakRetained(a1 + 1);
      v5 = [WeakRetained libraryController];

      v6 = [v5 isTabGroupExpanded:v3];
      v8 = _WBSLocalizedString();
      v9 = MEMORY[0x277D750C8];
      v10 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.grid.1x2"];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __66__TabController__toggleSidebarSectionIsExpandedActionForTabGroup___block_invoke;
      v20[3] = &unk_2781DA0C8;
      v21 = v5;
      v23 = v6;
      v22 = v3;
      v11 = v5;
      v12 = [v9 actionWithTitle:v8 image:v10 identifier:0 handler:v20];
    }

    else
    {
      v7 = [v3 uuid];
      [a1 isTabGroupUUIDExpanded:v7];

      v8 = _WBSLocalizedString();
      objc_initWeak(&location, a1);
      v13 = MEMORY[0x277D750C8];
      v14 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.grid.1x2"];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __66__TabController__toggleSidebarSectionIsExpandedActionForTabGroup___block_invoke_2;
      v16[3] = &unk_2781DA008;
      objc_copyWeak(&v18, &location);
      v17 = v3;
      v12 = [v13 actionWithTitle:v8 image:v14 identifier:0 handler:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __46__TabController__subMenusForTabGroup_variant___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_2;
  }

  v11 = WeakRetained;
  if (([WeakRetained isTabGroupActive:*(a1 + 32)] & 1) == 0)
  {
    v3 = objc_loadWeakRetained(v11 + 1);
    v4 = [v3 rootViewController];
    v5 = [v4 usingLoweredBar];

    if (v5)
    {
      v6 = [MEMORY[0x277D499B8] sharedLogger];
      v7 = v6;
    }

    else
    {
      v8 = *(a1 + 56);
      v6 = [MEMORY[0x277D499B8] sharedLogger];
      v7 = v6;
      if (v8 != 1)
      {
        v9 = 1;
        goto LABEL_11;
      }
    }

    v9 = 4;
LABEL_11:
    [v6 didSwitchToTabGroupFromLocation:v9];
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v10 = [MEMORY[0x277D499B8] sharedLogger];
    [v10 didUseSidebarAction:16];
  }

  [(TabController *)v11 _switchToTab:0 orTabUUID:*(a1 + 32) inTabGroup:?];
  WeakRetained = v11;
LABEL_2:
}

void __46__TabController__subMenusForTabGroup_variant___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[6] tabGroupWithUUID:*(a1 + 32)];
    v4 = [v3 debugSyncDescription];
    v5 = [MEMORY[0x277D75810] generalPasteboard];
    [v5 setString:v4];

    WeakRetained = v6;
  }
}

void __46__TabController__subMenusForTabGroup_variant___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[6] tabGroupWithUUID:*(a1 + 32)];
    v4 = [v3 debugRecursiveSyncDescription];
    v5 = [MEMORY[0x277D75810] generalPasteboard];
    [v5 setString:v4];

    WeakRetained = v6;
  }
}

- (id)contextMenuConfigurationForTabGroup:(id)a3 variant:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D753B0];
  v8 = [v6 uuid];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__TabController_contextMenuConfigurationForTabGroup_variant___block_invoke;
  v12[3] = &unk_2781DA030;
  objc_copyWeak(v14, &location);
  v9 = v6;
  v13 = v9;
  v14[1] = a4;
  v10 = [v7 configurationWithIdentifier:v8 previewProvider:0 actionProvider:v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);

  return v10;
}

id __61__TabController_contextMenuConfigurationForTabGroup_variant___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained menuForTabGroup:*(a1 + 32) variant:*(a1 + 48)];

  return v3;
}

- (id)contextMenuConfigurationForTab:(id)a3 inTabGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    v8 = 53558;
  }

  else
  {
    v8 = 53622;
  }

  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [v6 uuid];
  v11 = [v9 initWithUUIDString:v10];
  v12 = [(TabController *)self tabWithUUID:v11];

  if (v12)
  {
    if ([v12 isActive])
    {
      v13 = v8;
    }

    else
    {
      v13 = 53554;
    }

    v14 = [TabMenuProvider actionProviderForTab:v12 dataSource:self options:v13];
  }

  else
  {
    v14 = [TabMenuProvider actionProviderForTabGroupTab:v6 inTabGroup:v7 dataSource:self options:v8];
  }

  v15 = v14;
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v17 = [WeakRetained libraryController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = MEMORY[0x277D750C8];
      v19 = _WBSLocalizedString();
      v20 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle"];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __59__TabController_contextMenuConfigurationForTab_inTabGroup___block_invoke;
      v33[3] = &unk_2781D9420;
      v34 = v17;
      v35 = v12;
      v21 = [v18 actionWithTitle:v19 image:v20 identifier:0 handler:v33];

      [v21 setAccessibilityIdentifier:@"SelectTabsButton"];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __59__TabController_contextMenuConfigurationForTab_inTabGroup___block_invoke_2;
      v30 = &unk_2781DA058;
      v31 = v21;
      v32 = v15;
      v22 = v21;
      v15 = _Block_copy(&v27);
    }

    v23 = MEMORY[0x277D753B0];
    v24 = [v6 uuid];
    v25 = [v23 configurationWithIdentifier:v24 previewProvider:0 actionProvider:v15];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __59__TabController_contextMenuConfigurationForTab_inTabGroup___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) uuidString];
  [v1 selectTabWithUUIDStringInEditMode:v2];
}

id __59__TabController_contextMenuConfigurationForTab_inTabGroup___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v2 children];
  v4 = [v3 arrayByAddingObject:*(a1 + 32)];
  v5 = [v2 menuByReplacingChildren:v4];

  return v5;
}

- (id)contextMenuConfigurationForMultipleTabSelection:(id)a3
{
  v3 = [TabMenuProvider actionProviderForMultipleTabSelection:a3 dataSource:self];
  v4 = [MEMORY[0x277D753B0] configurationWithIdentifier:0 previewProvider:0 actionProvider:v3];

  return v4;
}

void __60__TabController__copyLinksActionForTabGroup_forPickerSheet___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  [v2 safari_copyLinksForTabGroup:*(a1 + 32)];

  v3 = [MEMORY[0x277D499B8] sharedLogger];
  [v3 didSendTabGroup];

  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = [MEMORY[0x277D499B8] sharedLogger];
    [v4 didUseSidebarAction:13];
  }
}

void __57__TabController__renameActionForTabGroup_forPickerSheet___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    __57__TabController__renameActionForTabGroup_forPickerSheet___block_invoke_cold_1(a1, WeakRetained);
    WeakRetained = v3;
  }
}

void __57__TabController__deleteActionForTabGroup_forPickerSheet___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    __57__TabController__deleteActionForTabGroup_forPickerSheet___block_invoke_cold_1(a1, v3);
  }
}

void __57__TabController__deleteActionForTabGroup_forPickerSheet___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 && (*(a1 + 32) & 1) == 0)
  {
    v2 = [MEMORY[0x277D499B8] sharedLogger];
    [v2 didUseSidebarAction:4];
  }
}

void __49__TabController__toggleTabViewActionForTabGroup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    [v3 didUseSidebarAction:15];

    if (([v9 isTabGroupActive:*(a1 + 32)] & 1) == 0)
    {
      v4 = [MEMORY[0x277D499B8] sharedLogger];
      [v4 didSwitchToTabGroupFromLocation:1];
    }

    if ([v9 isTabGroupActive:*(a1 + 32)])
    {
      v5 = [*(a1 + 32) uuid];
      [v9 setActiveTabGroupUUID:v5];
    }

    else
    {
      v6 = [v9[9] isShowingTabView];
      v7 = [*(a1 + 32) uuid];
      [v9 setActiveTabGroupUUID:v7];

      WeakRetained = v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v8 = objc_loadWeakRetained(v9 + 1);
    [v8 toggleTabView];

    WeakRetained = v9;
  }

LABEL_8:
}

void __66__TabController__toggleSidebarSectionIsExpandedActionForTabGroup___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) uuid];
    [v6 toggleTabGroupUUIDExpanded:v3];

    v4 = objc_loadWeakRetained(v6 + 1);
    v5 = [v4 libraryController];
    [v5 reloadExpansionStateForTabGroup:*(a1 + 32)];

    WeakRetained = v6;
  }
}

- (BOOL)isTabUUIDActive:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self activeTabDocument];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  v8 = [v7 isEqualToString:v4];

  return v8;
}

- (void)toggleTabGroupUUIDExpanded:(id)a3
{
  expandedTabGroupUUIDs = self->_expandedTabGroupUUIDs;
  v5 = a3;
  v6 = [(NSMutableArray *)expandedTabGroupUUIDs containsObject:v5];
  v7 = self->_expandedTabGroupUUIDs;
  if (v6)
  {
    [(NSMutableArray *)v7 removeObject:v5];
  }

  else
  {
    [(NSMutableArray *)v7 addObject:v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v8 = [WeakRetained libraryController];
  [v8 setNeedsUpdateSelection];
}

- (id)iconForTabUUID:(id)a3
{
  v4 = a3;
  v5 = +[(WBReusableTabManager *)ReusableTabManager];
  v6 = [v5 faviconForUUID:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(TabController *)self tabWithUUID:v4];
    if (!v8)
    {
      v9 = [(TabController *)self alternateTabs];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __32__TabController_iconForTabUUID___block_invoke;
      v12[3] = &unk_2781D5BC8;
      v13 = v4;
      v8 = [v9 safari_firstObjectPassingTest:v12];
    }

    v10 = [v8 tabCollectionItem];
    v7 = [v10 icon];
  }

  return v7;
}

uint64_t __32__TabController_iconForTabUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)dragItemForTab:(id)a3 tabItem:(id)a4
{
  v6 = MEMORY[0x277D75470];
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [v6 safari_itemWithTab:v8 tabItem:v7 browserController:WeakRetained];

  return v10;
}

- (void)moveTab:(id)a3 fromTabGroupWithUUID:(id)a4 toTabGroupWithUUID:(id)a5 afterTab:(id)a6
{
  v27[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = [(TabController *)self tabGroupWithUUID:a4];
  v14 = [(TabController *)self tabGroupWithUUID:v12];

  LODWORD(v12) = [v13 isPrivateBrowsing];
  if (v12 == [v14 isPrivateBrowsing])
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    if (WBSIsEqual())
    {
      v16 = [v14 tabs];
      v17 = [v16 indexOfObject:v11];
      if (v17 != [v16 indexOfObject:v10])
      {
        tabGroupManager = self->_tabGroupManager;
        v19 = [v14 uuid];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __74__TabController_moveTab_fromTabGroupWithUUID_toTabGroupWithUUID_afterTab___block_invoke;
        v23[3] = &unk_2781D99C8;
        v24 = v10;
        v25 = v11;
        [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:v19 persist:1 usingBlock:v23];

        [WeakRetained reloadSidebarAnimated:0];
      }
    }

    else
    {
      v27[0] = v10;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      [(TabController *)self updateLastSelectedTabUUIDForClosingWBTabs:v20];

      v21 = self->_tabGroupManager;
      v26 = v10;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      [(WBTabGroupManager *)v21 moveTabs:v22 toTabGroup:v14 afterTab:v11 withoutPersistingTabGroupsWithUUIDStrings:0];

      [WeakRetained reloadSidebarAnimated:0];
      v16 = [MEMORY[0x277D499B8] sharedLogger];
      [v16 reportTabUpdatedWithUpdateType:8];
    }
  }
}

- (id)syntheticBookmarkFoldersIncludingActiveTabGroup:(BOOL)a3
{
  v5 = [(TabController *)self namedTabGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__TabController_syntheticBookmarkFoldersIncludingActiveTabGroup___block_invoke;
  v8[3] = &unk_2781DA0F0;
  v9 = a3;
  v8[4] = self;
  v6 = [v5 safari_mapObjectsUsingBlock:v8];

  return v6;
}

id __65__TabController_syntheticBookmarkFoldersIncludingActiveTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 40) & 1) != 0 || ([*(a1 + 32) isTabGroupActive:v3] & 1) == 0)
  {
    v4 = [*(a1 + 32) syntheticBookmarkFolderForTabGroup:v3 withAttribution:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)syntheticBookmarkFolderForTabGroup:(id)a3 withAttribution:(BOOL)a4
{
  v6 = a3;
  v7 = [(WBTabGroupManager *)self->_tabGroupManager topScopedBookmarkListForTabGroup:v6];
  if (v7)
  {
    v8 = [v6 displayTitle];
    v9 = v8;
    if (a4)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = _WBSLocalizedString();
      v12 = [v10 stringWithFormat:v11, v9];
    }

    else
    {
      v12 = v8;
    }

    v13 = [objc_alloc(MEMORY[0x277D28D68]) initWithBookmarkList:v7 title:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)topScopedBookmarkListForActiveTabGroup
{
  tabGroupManager = self->_tabGroupManager;
  v3 = [(TabController *)self activeTabGroup];
  v4 = [(WBTabGroupManager *)tabGroupManager topScopedBookmarkListForTabGroup:v3];

  return v4;
}

- (void)insertPerTabGroupBookmark:(id)a3 inPerTabGroupBookmarkFolderWithID:(int)a4
{
  v4 = *&a4;
  tabGroupManager = self->_tabGroupManager;
  v7 = a3;
  v12 = [(WBTabGroupManager *)tabGroupManager scopedBookmarkListWithID:v4 filteredUsingString:0];
  v8 = self->_tabGroupManager;
  v9 = [v12 bookmarkArray];
  v10 = [v9 lastObject];
  v11 = [v10 UUID];
  [(WBTabGroupManager *)v8 insertScopedBookmark:v7 inScopedBookmarkFolderWithID:v4 afterBookmarkWithUUID:v11 notify:1];
}

- (id)copyBookmark:(id)a3 toPerTabGroupBookmarkFolderWithID:(int)a4
{
  v4 = *&a4;
  v6 = MEMORY[0x277D7B5A0];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v7 title];
  v10 = [v7 address];
  v11 = [v7 deviceIdentifier];

  v12 = [v8 initWithTitle:v9 address:v10 parentID:v4 subtype:1 deviceIdentifier:v11 collectionType:1];
  [(TabController *)self insertPerTabGroupBookmark:v12 inPerTabGroupBookmarkFolderWithID:v4];
  return v12;
}

- (BOOL)hasActiveLibrary
{
  v2 = [(TabController *)self activeLibraryType];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasNamedTabGroups
{
  v2 = [(TabController *)self namedTabGroups];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)openInTabGroupMenuWithNewTabGroupName:(id)a3 URL:(id)a4 descendantCount:(int64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  if ([(TabController *)self isPrivateBrowsingEnabled])
  {
    v13 = 0;
  }

  else
  {
    v14 = [v11 safari_userVisibleHostWithoutWWWSubdomain];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83__TabController_openInTabGroupMenuWithNewTabGroupName_URL_descendantCount_handler___block_invoke;
    v20[3] = &unk_2781DA118;
    objc_copyWeak(&v22, &location);
    v21 = v12;
    v13 = [(TabController *)self tabGroupsMenuElementsWithOptions:20 newTabGroupName:v10 hostTitle:v14 descendantCount:a5 movingSelectedTabs:0 actionHandler:v20];

    objc_destroyWeak(&v22);
  }

  v15 = MEMORY[0x277D75710];
  v16 = _WBSLocalizedString();
  v17 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.forward.app"];
  v18 = [v15 menuWithTitle:v16 image:v17 identifier:0 options:0 children:v13];

  [v18 setAccessibilityIdentifier:@"OpenInTabGroupMenuItem"];
  objc_destroyWeak(&location);

  return v18;
}

void __83__TabController_openInTabGroupMenuWithNewTabGroupName_URL_descendantCount_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained removeSingleBlankTabFromInactiveTabGroup:v9];
    v7 = [v9 uuid];
    [v6 setActiveTabGroupUUID:v7];

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, a3);
    }
  }
}

- (void)switchOutOfSyncedTabGroup
{
  v3 = [(TabController *)self activeTabGroup];
  v4 = [v3 isNamed];

  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Will switch to local tab group for external link.", v6, 2u);
    }

    [(TabController *)self selectLocalTabGroup];
  }
}

- (BOOL)switchToTabWithUUID:(id)a3 inTabGroupWithUUID:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(TabController *)self tabGroups];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = v6;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 uuid];
        v15 = [v7 UUIDString];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v6 = v19;
          v17 = [(TabController *)&self->super.isa _switchToTab:v19 orTabUUID:v13 inTabGroup:?];
          goto LABEL_12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v17 = 0;
    v6 = v19;
  }

  else
  {
    v17 = 0;
  }

LABEL_12:

  return v17;
}

- (void)evictTabDocument:(id)a3
{
  ++self->_updateTabsSuppressionCount;
  v4 = a3;
  [v4 setClosed:1];
  [v4 willClose];

  --self->_updateTabsSuppressionCount;
}

uint64_t __65__TabController__presentCloseAlertForTabGroup_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    __65__TabController__presentCloseAlertForTabGroup_completionHandler___block_invoke_cold_1(a1);
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)moveTab:(id)a3 toTabGroupWithUUID:(id)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(TabController *)self tabGroupWithUUID:a4];
  v8 = [v6 isPrivate];
  if (v8 == [v7 isPrivateBrowsing] && !-[TabController isTabGroupActive:](self, "isTabGroupActive:", v7))
  {
    [(TabController *)self removeSingleBlankTabFromInactiveTabGroup:v7];
    v9 = [v6 webExtensionWindow];
    v10 = [v9 webExtensionTabs];
    v11 = [v10 indexOfObject:v6];

    [v9 idForWebExtensions];
    v13 = v12;
    [(TabController *)self _reuseTabIfNecessary:v6];
    v14 = [v6 webExtensionsController];
    [v14 didMoveTab:v6 fromWindowWithID:v11 indexInOldWindow:v13];

    if ([v6 isPinned])
    {
      pinnedTabsManager = self->_pinnedTabsManager;
      v16 = [v6 uuid];
      v17 = [v16 UUIDString];
      [(PinnedTabsManager *)pinnedTabsManager removeTabWithUUID:v17 persist:0];

      v18 = [v6 wbTab];
      if ([v7 usesGlobalPinnedTabs])
      {
        tabGroupManager = self->_tabGroupManager;
        v20 = [v18 tabGroupUUID];
        v37 = MEMORY[0x277D85DD0];
        v38 = 3221225472;
        v39 = __44__TabController_moveTab_toTabGroupWithUUID___block_invoke;
        v40 = &unk_2781D97D0;
        v18 = v18;
        v41 = v18;
        [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:v20 persist:1 usingBlock:&v37];

        v21 = objc_alloc(MEMORY[0x277D7B538]);
        v22 = [v6 uuid];
        v23 = [v22 UUIDString];
        v24 = [v18 deviceIdentifier];
        v25 = [v21 initWithUUID:v23 deviceIdentifier:v24];

        v26 = [v6 tabUpdateBlock];
        (v26)[2](v26, v25);

        v27 = self->_pinnedTabsManager;
        v28 = [(TabController *)self _containerForPinnedTabsInTabGroup:v7];
        [(PinnedTabsManager *)v27 appendTab:v25 inContainer:v28];

        v29 = v41;
LABEL_10:

        [(TabController *)&self->super.isa _forceUpdateTabGroupTitleIfNeeded:v7];
        v36 = [MEMORY[0x277D499B8] sharedLogger];
        [v36 reportTabUpdatedWithUpdateType:8];

        goto LABEL_3;
      }

      v33 = self->_pinnedTabsManager;
      v34 = [v18 uuid];
      [(PinnedTabsManager *)v33 removeTabWithUUID:v34 persist:1];

      v35 = self->_tabGroupManager;
      v43[0] = v18;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
      v31 = [v7 lastPinnedTab];
      [(WBTabGroupManager *)v35 moveTabs:v29 toTabGroup:v7 afterTab:v31 withoutPersistingTabGroupsWithUUIDStrings:0];
    }

    else
    {
      v30 = self->_tabGroupManager;
      v18 = [v6 wbTab];
      v42 = v18;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      v31 = [v7 tabs];
      v32 = [v31 lastObject];
      [(WBTabGroupManager *)v30 moveTabs:v29 toTabGroup:v7 afterTab:v32 withoutPersistingTabGroupsWithUUIDStrings:0];
    }

    goto LABEL_10;
  }

LABEL_3:
}

void __44__TabController_moveTab_toTabGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 deleteTabs:{v4, v5, v6}];
}

- (void)moveTabGroup:(id)a3 beforeOrAfterTabGroup:(id)a4
{
  v14 = a3;
  v6 = a4;
  tabGroupManager = self->_tabGroupManager;
  v8 = [(TabController *)self activeProfileIdentifier];
  v9 = [(WBTabGroupManager *)tabGroupManager namedTabGroupsForProfileWithIdentifier:v8];

  v10 = v6;
  v11 = [v9 indexOfObject:v10];
  v12 = [v9 indexOfObject:v14];
  v13 = v10;
  if (v11 < v12)
  {
    if (v11)
    {
      v13 = [v9 objectAtIndexedSubscript:v11 - 1];
    }

    else
    {
      v13 = 0;
    }
  }

  if (v11 != v12)
  {
    self->_suppressSidebarReloadAnimation = 1;
    [(WBTabGroupManager *)self->_tabGroupManager moveTabGroup:v14 afterTabGroup:v13];
    self->_suppressSidebarReloadAnimation = 0;
  }
}

BOOL __40__TabController__updateTabsForTabGroup___block_invoke_492(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uuid];
  v6 = ([v4 containsObject:v5] & 1) == 0 && *(*(a1 + 40) + 32) != v3;

  return v6;
}

id __40__TabController__updateTabsForTabGroup___block_invoke_493(uint64_t a1, void *a2)
{
  v5 = 0;
  v3 = [(TabController *)*(a1 + 32) _tabForWBTab:a2 didReuseTabDocument:&v5];
  if (v5 == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }

  return v3;
}

- (id)moveMenuOnPageMenuWithDismissHandler:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self activeTabDocument];
  v6 = [TabMenuProvider moveMenuForTab:v5 dataSource:self showTitle:0 dismissHandler:v4];

  return v6;
}

- (id)tabGroupsMenuElementsWithOptions:(unint64_t)a3 newTabGroupName:(id)a4 hostTitle:(id)a5 descendantCount:(int64_t)a6 movingSelectedTabs:(id)a7 actionHandler:(id)a8 dismissHandler:(id)a9
{
  v13 = a3;
  v67 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a5;
  v48 = a7;
  v47 = a8;
  v46 = a9;
  v17 = [MEMORY[0x277CBEB18] array];
  v45 = [MEMORY[0x277CBEB18] array];
  v44 = [MEMORY[0x277CBEB18] array];
  if ((v13 & 0x10) != 0)
  {
    v18 = +[FeatureManager sharedFeatureManager];
    v19 = [v18 isCustomTabGroupsEnabled];

    if (v19)
    {
      v20 = MEMORY[0x277D750C8];
      v21 = _WBSLocalizedString();
      v22 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.square.on.square"];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __140__TabController_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler___block_invoke;
      v57[3] = &unk_2781DA1B8;
      v62 = v46;
      v58 = v16;
      v64 = a6;
      v59 = v15;
      v60 = v48;
      v61 = self;
      v63 = v47;
      v23 = [v20 actionWithTitle:v21 image:v22 identifier:0 handler:v57];

      [v23 setAccessibilityIdentifier:@"NewTabGroupButton"];
      [v17 addObject:v23];
    }
  }

  v41 = v16;
  v42 = v15;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [(TabController *)self tabGroups];
  v24 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v54;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v53 + 1) + 8 * i);
        if ((!-[TabController isTabGroupActive:](self, "isTabGroupActive:", v28) || ((v13 & 2) != 0 || ([v28 isLocal] & 1) == 0) && ((v13 & 4) != 0 || (objc_msgSend(v28, "isSyncable") & 1) == 0)) && ((v13 & 8) != 0 || (objc_msgSend(v28, "isPrivateBrowsing") & 1) == 0))
        {
          v29 = [(TabController *)self imageForTabGroup:v28];
          v30 = MEMORY[0x277D750C8];
          v31 = [v28 displayTitle];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __140__TabController_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler___block_invoke_4;
          v49[3] = &unk_2781DA1E0;
          v51 = v46;
          v52 = v47;
          v49[4] = v28;
          v49[5] = self;
          v50 = v48;
          v32 = [v30 actionWithTitle:v31 image:v29 identifier:0 handler:v49];

          v33 = [v28 title];
          [v32 setAccessibilityIdentifier:v33];

          if (v13)
          {
            [v32 setState:{-[TabController isTabGroupActive:](self, "isTabGroupActive:", v28)}];
          }

          if ([v28 isNamed])
          {
            v34 = v44;
          }

          else
          {
            v34 = v45;
          }

          [v34 addObject:v32];
        }
      }

      v25 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v25);
  }

  v35 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v40];
  v65[0] = v35;
  v36 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v45];
  v65[1] = v36;
  v37 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v44];
  v65[2] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];

  return v38;
}

void __140__TabController_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 64) + 16))();
  if ([*(a1 + 32) length])
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = _WBSLocalizedString();
  }

  v5 = v4;
  v6 = *(a1 + 80);
  v7 = v6 - 1;
  if (*(a1 + 40))
  {
    v8 = MEMORY[0x277CCACA8];
    if (v6 == 2 || v6 == 1)
    {
      v10 = _WBSLocalizedString();
      v11 = *(a1 + 40);
    }

    else
    {
      v10 = _WBSLocalizedString();
      v11 = *(a1 + 40);
      v12 = *MEMORY[0x277D29070] - 1;
      if (v7 < v12)
      {
        v12 = v7;
      }

      v31 = v12;
    }

    v13 = [v8 stringWithFormat:v10, v11, v5, v31];

    v14 = _WBSLocalizedString();
    goto LABEL_24;
  }

  if (v6)
  {
    if (v6 == 2)
    {
      v9 = MEMORY[0x277CCACA8];
    }

    else
    {
      if (v6 != 1)
      {
        v9 = MEMORY[0x277CCACA8];
        v15 = _WBSLocalizedString();
        v30 = v7;
        goto LABEL_23;
      }

      v9 = MEMORY[0x277CCACA8];
    }

    v15 = _WBSLocalizedString();
LABEL_23:
    v13 = [v9 stringWithFormat:v15, v5, v30];

    v14 = _WBSLocalizedString();
LABEL_24:
    v19 = _WBSLocalizedString();
    v20 = 11;
    goto LABEL_25;
  }

  if ([*(a1 + 48) count])
  {
    v14 = _WBSLocalizedString();
    v16 = [*(a1 + 48) count];
    v17 = MEMORY[0x277CCACA8];
    if (v16 == 1)
    {
      v18 = _WBSLocalizedString();
      [v17 stringWithFormat:v18, v5];
    }

    else
    {
      v18 = _WBSLocalizedString();
      [v17 localizedStringWithFormat:v18, objc_msgSend(*(a1 + 48), "count")];
    }
    v13 = ;

    v19 = _WBSLocalizedString();
    v28 = [v3 sender];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v20 = 3;
    }

    else
    {
      v20 = 9;
    }
  }

  else
  {
    v14 = _WBSLocalizedString();
    v26 = MEMORY[0x277CCACA8];
    v27 = _WBSLocalizedString();
    v13 = [v26 stringWithFormat:v27, v5];

    v19 = _WBSLocalizedString();
    v20 = 10;
  }

LABEL_25:
  v21 = *MEMORY[0x277D76620];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __140__TabController_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler___block_invoke_2;
  v33[3] = &unk_2781DA190;
  v32 = *(a1 + 48);
  v22 = v32.i64[0];
  v34 = vextq_s8(v32, v32, 8uLL);
  v35 = v14;
  v36 = v13;
  v37 = *(a1 + 40);
  v38 = v19;
  v39 = *(a1 + 72);
  v40 = v20;
  v23 = v19;
  v24 = v13;
  v25 = v14;
  [v21 _performBlockAfterCATransactionCommits:v33];
}

void __140__TabController_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __140__TabController_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler___block_invoke_3;
  v10[3] = &unk_2781DA168;
  v12 = *(a1 + 80);
  v8 = *(a1 + 40);
  v9 = *(a1 + 88);
  v11 = v8;
  v13 = v9;
  [v2 presentAlertToCreateTabGroupFromTabs:v3 withTitle:v4 message:v5 suggestedName:v6 okActionTitle:v7 completionHandler:v10];
}

void __140__TabController_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (*(a1 + 40) && ![*(a1 + 32) count])
    {
      (*(*(a1 + 40) + 16))();
    }

    v4 = [MEMORY[0x277D499B8] sharedLogger];
    [v4 didCreateTabGroupFromLocation:*(a1 + 48) prepopulatedWithTabs:1];

    v3 = v5;
  }
}

void __140__TabController_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v19 = a2;
  (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 64);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v5 = [WeakRetained rootViewController];
  v6 = [v5 usingLoweredBar];

  v7 = [v19 sender];
  if (!v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_8;
    }

    v15 = [v19 sender];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v17 = [MEMORY[0x277D499B8] sharedLogger];
    [v17 didSwitchToTabGroupFromLocation:3];

    v18 = [MEMORY[0x277D499B8] sharedLogger];
    [v18 didSelectTabGroupInDropDownMenu];

    if (![*(a1 + 32) isPrivateBrowsing])
    {
      goto LABEL_14;
    }

    v13 = [MEMORY[0x277D499B8] sharedLogger];
    [v13 didSelectStartPrivateWindowInDropDownMenu];
    goto LABEL_13;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if (v8)
  {
    goto LABEL_11;
  }

  v9 = [v19 sender];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
LABEL_8:
    v12 = [MEMORY[0x277D499B8] sharedLogger];
    v13 = v12;
    v14 = 5;
LABEL_9:
    [v12 didSwitchToTabGroupFromLocation:v14];
LABEL_13:

    goto LABEL_14;
  }

LABEL_17:
  if (![*(a1 + 48) count])
  {
    v12 = [MEMORY[0x277D499B8] sharedLogger];
    v13 = v12;
    v14 = 10;
    goto LABEL_9;
  }

LABEL_14:
}

- (id)profilesMenuElementsWithOptions:(unint64_t)a3 movingSelectedTabGroups:(id)a4 actionHandler:(id)a5
{
  v5 = a3;
  v33 = *MEMORY[0x277D85DE8];
  v24 = a5;
  v7 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = self;
  obj = [(TabController *)self profiles];
  v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        if ((v5 & 2) != 0 || ([(TabController *)v22 _isProfileActive:?]& 1) == 0)
        {
          v13 = MEMORY[0x277D750C8];
          v14 = [v12 title];
          v15 = [v12 symbolImage];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __87__TabController_profilesMenuElementsWithOptions_movingSelectedTabGroups_actionHandler___block_invoke;
          v25[3] = &unk_2781D96B0;
          v16 = v24;
          v25[4] = v12;
          v26 = v16;
          v17 = [v13 actionWithTitle:v14 image:v15 identifier:0 handler:v25];

          [v17 setAccessibilityIdentifier:@"MoveToProfileMenuOption"];
          if (v5)
          {
            [v17 setState:{-[TabController _isProfileActive:](v22, v12)}];
          }

          [v7 addObject:v17];
        }

        ++v11;
      }

      while (v9 != v11);
      v18 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      v9 = v18;
    }

    while (v18);
  }

  v19 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v7];
  v31 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];

  return v20;
}

- (void)removeSingleBlankTabFromInactiveTabGroup:(id)a3
{
  v16 = a3;
  v4 = [(TabController *)self isTabGroupActive:v16];
  v5 = v16;
  if (!v4)
  {
    v6 = [v16 tabs];
    if ([v6 count] <= 1)
    {
      v7 = [v6 firstObject];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 url];

        if (!v9)
        {
          [(TabController *)self _removeTab:v8 fromTabGroup:v16, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20];
        }
      }
    }

    v5 = v16;
  }
}

- (void)removeSingleBlankTabFromActiveTabGroup
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(TabController *)self currentTabs];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 url];

        if (!v9)
        {
          [(TabController *)self closeTab:v8 animated:0];
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __39__TabController__appendTab_toTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mutableCopy];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v3 appendTabs:v5];
}

void __41__TabController__removeTab_fromTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 deleteTabs:{v4, v5, v6}];
}

- (id)browserControllerContainingLocalTabGroupUUID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained browserWindowController];
  v7 = [v6 browserControllers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__TabController_browserControllerContainingLocalTabGroupUUID___block_invoke;
  v11[3] = &unk_2781D4E70;
  v12 = v4;
  v8 = v4;
  v9 = [v7 safari_firstObjectPassingTest:v11];

  return v9;
}

uint64_t __62__TabController_browserControllerContainingLocalTabGroupUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabController];
  v4 = [v3 windowState];
  v5 = [v4 localTabGroup];
  v6 = [v5 uuid];
  v7 = [*(a1 + 32) UUIDString];
  if ([v6 isEqualToString:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v4 privateTabGroup];
    v10 = [v9 uuid];
    v11 = [*(a1 + 32) UUIDString];
    v8 = [v10 isEqualToString:v11];
  }

  return v8;
}

- (BOOL)scrollTabSwitcherToTabGroupIfShowing:(id)a3
{
  v4 = a3;
  if (SFEnhancedTabOverviewEnabled() && [(TabCollectionViewManager *)self->_tabCollectionViewManager isShowingTabView])
  {
    v5 = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabSwitcherViewController];
    [v5 scrollToTabGroup:v4];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)newTabGroupTabCount
{
  v2 = [(TabController *)self unnamedTabGroup];
  v3 = [v2 tabs];
  v4 = [v3 count];

  return v4;
}

- (void)tabGroupManagerDidUpdateTabGroups:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained reloadSidebarAnimated:!self->_suppressSidebarReloadAnimation];
}

- (void)tabGroupManager:(id)a3 didUpdateTabsInTabGroupWithUUID:(id)a4
{
  v5 = [a3 tabGroupWithUUID:a4];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __65__TabController_tabGroupManager_didUpdateTabsInTabGroupWithUUID___block_invoke;
  v25 = &unk_2781DA230;
  v6 = v5;
  v26 = v6;
  v27 = self;
  v7 = _Block_copy(&v22);
  if ([(TabController *)self isTabGroupActive:v6, v22, v23, v24, v25])
  {
    [TabController tabGroupManager:didUpdateTabsInTabGroupWithUUID:];
  }

  else if (([v6 isPrivateBrowsing] & 1) != 0 || (objc_msgSend(v6, "profileIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), -[TabController activeProfileIdentifier](self, "activeProfileIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = WBSIsEqual(), v9, v8, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained reloadSidebarAnimated:0];

    v12 = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabSwitcherViewController];
    [v12 setNeedsApplyContentAnimated:1];

    v13 = [(WBWindowState *)self->_windowState privateTabGroup];
    v14 = [v6 isEqual:v13];

    if (v14)
    {
      [TabController tabGroupManager:v7 didUpdateTabsInTabGroupWithUUID:?];
    }

    else
    {
      v15 = [v6 uuid];
      v16 = [(NSMutableArray *)self->_mutableNormalTabs firstObject];
      v17 = [v16 wbTab];
      v18 = [v17 tabGroupUUID];
      v19 = [v15 isEqual:v18];

      if (v19)
      {
        mutableNormalTabs = self->_mutableNormalTabs;
        v21 = v7[2](v7);
        [(NSMutableArray *)mutableNormalTabs setArray:v21];
      }
    }
  }
}

id __65__TabController_tabGroupManager_didUpdateTabsInTabGroupWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tabs];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __65__TabController_tabGroupManager_didUpdateTabsInTabGroupWithUUID___block_invoke_2;
  v14 = &unk_2781DA208;
  v10 = *(a1 + 32);
  v3 = v10.i64[0];
  v15 = vextq_s8(v10, v10, 8uLL);
  v4 = [v2 safari_mapObjectsUsingBlock:&v11];

  if ([*(a1 + 32) usesGlobalPinnedTabs])
  {
    v6 = [*(a1 + 32) isPrivateBrowsing];
    v7 = *(a1 + 40);
    if (v6)
    {
      [(TabController *)v7 privatePinnedTabs];
    }

    else
    {
      [(TabController *)v7 normalPinnedTabs];
    }
    v8 = ;
    v9 = [v8 safari_arrayByAddingObjectsFromArrayIfNotDuplicates:{v4, *&v10, v11, v12, v13, v14}];

    v4 = v9;
  }

  return v4;
}

id __65__TabController_tabGroupManager_didUpdateTabsInTabGroupWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v3 uuid];
  v7 = [v5 initWithUUIDString:v6];
  v8 = [v4 tabWithUUID:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(TabController *)*(a1 + 32) _tabForWBTab:v3];
  }

  v11 = v10;

  if ([*(a1 + 40) usesGlobalPinnedTabs])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v3 isPinned];
  }

  [v11 setPinned:v12];
  [v11 setWBTab:v3];

  return v11;
}

- (void)tabGroupManager:(id)a3 didUpdateTabWithUUID:(id)a4 userDriven:(BOOL)a5
{
  v5 = a5;
  v50 = *MEMORY[0x277D85DE8];
  v7 = [a3 tabWithUUID:a4];
  if (v7)
  {
    if ([(TabController *)self isTabInActiveTabGroup:v7])
    {
      v8 = objc_alloc(MEMORY[0x277CCAD78]);
      v9 = [v7 uuid];
      v10 = [v8 initWithUUIDString:v9];
      v11 = [(TabController *)self tabWithUUID:v10];

      if (v11)
      {
        [v11 setWBTab:v7];
        v12 = objc_alloc_init(MEMORY[0x277D49B60]);
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __65__TabController_tabGroupManager_didUpdateTabWithUUID_userDriven___block_invoke;
        v44[3] = &unk_2781D58E8;
        v13 = v11;
        v45 = v13;
        v46 = self;
        v14 = v7;
        v47 = v14;
        [v12 setHandler:v44];
        v15 = [v13 title];
        v16 = [v14 title];
        if (WBSIsEqual())
        {
          v17 = v12;
          v18 = [v13 url];
          v19 = [v14 url];
          if (WBSIsEqual())
          {
            v42 = [v13 isPinned];
            v40 = [v14 isPinned];

            v12 = v17;
            if (v42 == v40)
            {
              v20 = WBS_LOG_CHANNEL_PREFIXTabGroup();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_215819000, v20, OS_LOG_TYPE_INFO, "Ignoring tab update because title, url, and pinned state are identical", buf, 2u);
              }

LABEL_26:

              goto LABEL_2;
            }

LABEL_12:
            v21 = [v13 url];
            v22 = [v14 url];
            v23 = WBSIsEqual();

            v24 = [v13 expectedOrCurrentURL];
            if ([v24 safari_isSafariWebExtensionURL])
            {
              v25 = [v13 webExtensionsController];
              [v14 url];
              v26 = v43 = v12;
              [v25 _extensionURLToLoadFromPersistentStateURL:v26];
              v41 = v13;
              v27 = v14;
              v28 = v23;
              v30 = v29 = v24;
              v31 = WBSIsEqual();

              v24 = v29;
              v23 = v28;
              v14 = v27;
              v13 = v41;

              v12 = v43;
            }

            else
            {
              v31 = 0;
            }

            if (((v23 | v31) & 1) == 0)
            {
              v32 = WBS_LOG_CHANNEL_PREFIXTabGroup();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 67109120;
                v49 = v5;
                _os_log_impl(&dword_215819000, v32, OS_LOG_TYPE_INFO, "Navigating tab because the URL has changed (user driven: %d)", buf, 8u);
              }

              if (v5)
              {
                v39 = [(TabController *)self _unhibernateTabIfNeeded:v13];
                [v39 unhibernate];
                v33 = v39;

                [v33 restoreStateFromTab:v14];
                v13 = v33;
              }

              else
              {
                [v13 clearBackForwardList];
                v33 = [v14 url];
                v34 = [v14 title];
                [v13 loadURL:v33 title:v34 skipSyncableTabUpdates:1];
              }

              [v13 updateTabIcon];
            }

            v35 = [v13 isPinned];
            if (v35 != [v14 isPinned])
            {
              v36 = WBS_LOG_CHANNEL_PREFIXTabGroup();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_215819000, v36, OS_LOG_TYPE_INFO, "Changing pinned state of tab", buf, 2u);
              }

              [v13 setPinned:{objc_msgSend(v14, "isPinned")}];
              v37 = [v14 pinnedTitle];
              [v13 setPinnedTitle:v37];

              v38 = [v14 pinnedURL];
              [v13 setPinnedURL:v38];
            }

            goto LABEL_26;
          }

          v12 = v17;
        }

        goto LABEL_12;
      }
    }
  }

LABEL_2:
}

void __65__TabController_tabGroupManager_didUpdateTabWithUUID_userDriven___block_invoke(id *a1)
{
  v3 = [a1[5] activeTabGroup];
  if ([v3 isShared])
  {
    v2 = [a1[6] isMarkedAsRead] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  [a1[4] setUnread:v2];
}

- (void)tabGroupManager:(id)a3 didRemoveTabGroupWithUUID:(id)a4
{
  v5 = [a3 removedTabGroupWithUUID:a4];
  if (v5)
  {
    windowState = self->_windowState;
    v11 = v5;
    v7 = [v5 uuid];
    [(WBWindowState *)windowState removeActiveTabUUIDForTabGroupWithUUID:v7];

    v8 = [MEMORY[0x277D28F08] settings];
    v9 = [v11 isPrivateBrowsing];
    if ([v11 isSyncable])
    {
      v10 = [v11 uuid];
      [v8 setBlankSnapshotGroupIdentifier:0 forPrivateBrowsing:v9 syncableTabGroupUUID:v10 forWindowWithUUID:self->_browserWindowUUID];
    }

    else
    {
      [v8 setBlankSnapshotGroupIdentifier:0 forPrivateBrowsing:v9 syncableTabGroupUUID:0 forWindowWithUUID:self->_browserWindowUUID];
    }

    v5 = v11;
  }
}

- (void)tabGroupManager:(id)a3 willReplaceTabWithUUID:(id)a4 withTabWithUUID:(id)a5
{
  v7 = MEMORY[0x277CCAD78];
  v8 = a5;
  v9 = a4;
  v11 = [[v7 alloc] initWithUUIDString:v9];

  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
  [(NSMutableDictionary *)self->_originalToReplacementUUIDMap setObject:v10 forKeyedSubscript:v11];
}

- (void)tabGroupManagerDidDeletedAllLocalTabs:(id)a3
{
  v4 = a3;
  if (!self->_isClosingWBTabsWithAction && ![MEMORY[0x277D49E28] automaticTabClosingInterval] && !self->_requestedFilingRadarForTabLoss && objc_msgSend(MEMORY[0x277D49A08], "shouldShowInternalUI"))
  {
    self->_requestedFilingRadarForTabLoss = 1;
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v6 = _WBSLocalizedString();
    v7 = _WBSLocalizedString();
    v8 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
    v9 = MEMORY[0x277D750F8];
    v10 = _WBSLocalizedString();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__TabController_tabGroupManagerDidDeletedAllLocalTabs___block_invoke;
    v19[3] = &unk_2781D79E8;
    v20 = WeakRetained;
    v11 = WeakRetained;
    v12 = [v9 actionWithTitle:v10 style:0 handler:v19];

    v13 = MEMORY[0x277D750F8];
    v14 = _WBSLocalizedString();
    v15 = [v13 actionWithTitle:v14 style:1 handler:0];

    [v8 addAction:v12];
    [v8 addAction:v15];
    v16 = [v11 scene];
    v17 = [v16 keyWindow];
    v18 = [v17 rootViewController];
    [v18 presentViewController:v8 animated:1 completion:0];
  }
}

void __55__TabController_tabGroupManagerDidDeletedAllLocalTabs___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D49F98]);
  v3 = [MEMORY[0x277D49FA0] safariTabsAll];
  v6 = [v2 initWithComponent:v3 title:@"[Tab Loss] All local tabs are lost" descriptionTemplate:@"Describe what you were doing in Safari before filing the radar."];

  [v6 setClassification:@"Serious Bug"];
  [v6 setReproducibility:@"Not Applicable"];
  v4 = [*(a1 + 32) scene];
  v5 = [v6 continueInTapToRadarURL];
  [v4 openURL:v5 options:0 completionHandler:0];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  [v4 selectAll:0];
  if (self->_showsTabGroupNameSuggestions)
  {
    [TabController textFieldDidBeginEditing:];
  }
}

void __42__TabController_textFieldDidBeginEditing___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__TabController_textFieldDidBeginEditing___block_invoke_2;
    v6[3] = &unk_2781D4C88;
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v7 = v3;
    v8 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  else
  {
    *(*(a1 + 32) + 208) = 0;
    v5 = *(a1 + 40);

    [v5 setAutocorrectionType:2];
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  if (self->_showsTabGroupNameSuggestions)
  {
    v14 = v3;
    v15 = v4;
    v6 = [a3 text];
    v7 = [v6 copy];

    tabGroupSuggestions = self->_tabGroupSuggestions;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__TabController_textFieldDidEndEditing___block_invoke;
    v12[3] = &unk_2781D91D8;
    v9 = v7;
    v13 = v9;
    v10 = [(NSArray *)tabGroupSuggestions safari_firstObjectPassingTest:v12];
    if (v10)
    {
      [(CKContextCompleter *)self->_contextCompleter logEngagement:v10 forInput:0];
    }

    contextCompleter = self->_contextCompleter;
    self->_contextCompleter = 0;
  }
}

uint64_t __40__TabController_textFieldDidEndEditing___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)registerUndoWithName:(id)a3 actions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[TabCloseUndoGroup alloc] initWithName:v7];

  [(TabController *)self _registerUndoWithGroup:v8 actions:v6];
}

id __38__TabController__orderIndexesForTabs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v3 uuid];
  v7 = [v5 tabGroupRelatedToTabWithUUID:v6];

  if ([v7 usesGlobalPinnedTabs] && objc_msgSend(v3, "isPinned"))
  {
    __38__TabController__orderIndexesForTabs___block_invoke_cold_1(v4, v7, &v12);
    v8 = v12;
  }

  else
  {
    v8 = [v7 tabs];
  }

  v9 = [v8 indexOfObject:v3];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];

  return v10;
}

- (void)_undoCloseTabs:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v13 = [v4 array];
  v6 = [(TabController *)self _reopenTabGroupTabsForUndoAction:v5];
  [v13 addObjectsFromArray:v6];

  v7 = [(TabController *)&self->super.isa _reopenGloballyPinnedTabsForUndoAction:v5];

  [v13 addObjectsFromArray:v7];
  if ([(NSUndoManager *)self->_undoManager isUndoing])
  {
    v8 = [(NSUndoManager *)self->_undoManager prepareWithInvocationTarget:self];
    [v8 closeWBTabs:v13];
  }

  if ([v13 count] == 1)
  {
    v9 = [v13 objectAtIndexedSubscript:0];
    v10 = [v9 uuid];
    [(TabController *)self setActiveTabUUID:v10];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v12 = [WeakRetained libraryController];
  [v12 setNeedsReloadSectionControllersAnimated:1];
}

void __50__TabController__reopenTabGroupTabsForUndoAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__TabController__reopenTabGroupTabsForUndoAction___block_invoke_2;
  v8[3] = &unk_2781DA280;
  v9 = v5;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = v5;
  [v6 updateTabsInTabGroupWithUUID:a2 persist:1 usingBlock:v8];
}

void __50__TabController__reopenTabGroupTabsForUndoAction___block_invoke_2(id *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [a1[5] orderIndexForTab:v8];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v9, [v3 tabs], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10 > v12))
        {
          v13 = [v3 tabs];
          v14 = [v13 lastObject];
LABEL_9:
          v10 = v14;

          goto LABEL_10;
        }

        if (v10)
        {
          v13 = [v3 tabs];
          v14 = [v13 objectAtIndexedSubscript:v10 - 1];
          goto LABEL_9;
        }

LABEL_10:
        v15 = [v8 mutableDuplicate];
        v23 = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        [v3 insertTabs:v16 afterTab:v10];

        [a1[6] addObject:v15];
        ++v7;
      }

      while (v5 != v7);
      v17 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      v5 = v17;
    }

    while (v17);
  }
}

id __56__TabController__reopenGloballyPinnedTabsForUndoAction___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__TabController__reopenGloballyPinnedTabsForUndoAction___block_invoke_2;
  v23[3] = &unk_2781DA2D0;
  v18 = v3;
  v24 = v18;
  v5 = [v4 safari_mapAndFilterObjectsUsingBlock:v23];
  v6 = [v5 mutableCopy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [*(a1 + 40) globallyPinnedTabs];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [*(a1 + 40) orderIndexForTab:v12];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL || (v14 = v13, v13 > [v6 count]))
        {
          v14 = [v6 count];
        }

        v15 = [v12 mutableDuplicate];
        v16 = [v12 mutableCopy];
        [v6 insertObject:v16 atIndex:v14];

        [*(a1 + 48) addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  return v6;
}

id __56__TabController__reopenGloballyPinnedTabsForUndoAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (void)_redoCloseTabs:(id)a3
{
  [(TabController *)self closeWBTabs:a3];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained libraryController];
  [v4 setNeedsReloadSectionControllersAnimated:1];
}

- (void)setTab:(id)a3 isPinned:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 isPinned] != v4)
  {
    [v6 setPinned:v4];
    v7 = [v6 wbTab];
    v8 = [v7 tabGroupUUID];
    v9 = [(TabController *)self tabGroupWithUUID:v8];

    if (!v9)
    {
      if ([v6 isPrivateBrowsingEnabled])
      {
        [(WBWindowState *)self->_windowState privateTabGroup];
      }

      else
      {
        [(TabController *)self unnamedTabGroup];
      }
      v9 = ;
    }

    pinnedTabsManager = self->_pinnedTabsManager;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __33__TabController_setTab_isPinned___block_invoke;
    v18 = &unk_2781D5A50;
    v19 = self;
    v20 = v9;
    v21 = v7;
    v22 = v6;
    v11 = v7;
    v12 = v9;
    [(PinnedTabsManager *)pinnedTabsManager performUpdatesUsingBlock:&v15];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained reloadSidebarAnimated:{1, v15, v16, v17, v18, v19}];
    v14 = [WeakRetained libraryController];
    [v14 reloadSectionControllersIfNeeded];
  }
}

void __33__TabController_setTab_isPinned___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) uuid];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__TabController_setTab_isPinned___block_invoke_2;
  v6[3] = &unk_2781DA280;
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  [v2 updateTabsInTabGroupWithUUID:v3 persist:1 usingBlock:v6];
}

- (TabDocument)singleUnpinnedBlankTab
{
  v3 = [(TabController *)self unpinnedTabs];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(TabController *)self unpinnedTabs];
    v6 = [v5 lastObject];

    if ([v6 isBlank])
    {
      v7 = [(TabController *)self _unhibernateTabIfNeeded:v6];
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

  return v7;
}

uint64_t __50__TabController__hasPinnedStartPageExcludingTabs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPinned] && objc_msgSend(v3, "isBlank"))
  {
    v4 = [*(a1 + 32) containsObject:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)recentlyClosedTabsMenuForTabGroupWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self tabGroupWithUUID:v4];
  v6 = [v5 isPrivateBrowsing];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D75710];
    v9 = [(TabController *)self activeProfile];
    v10 = [(TabController *)self hasMultipleProfiles];
    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
    v7 = [v8 safari_recentlyClosedTabsMenuForProfile:v9 showProfileTitle:v10 displayInline:1 openInTabGroupWithUUID:v11 image:0];
  }

  return v7;
}

- (void)openRecentlyClosedTabWithUUID:(id)a3 inTabGroupWithUUID:(id)a4
{
  v6 = a3;
  v7 = [a4 UUIDString];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(TabController *)self activeTabGroupUUID];
  }

  v14 = v9;

  v10 = [MEMORY[0x277D28F00] sharedBrowserSavedState];
  v11 = [v10 tabStateDataForUUID:v6];

  v12 = [MEMORY[0x277D28F00] sharedBrowserSavedState];
  [v12 loadSessionStateDataAndRemoveRecentlyClosedTab:v11];

  [(TabController *)self setActiveTabGroupUUID:v14];
  [(TabController *)self insertTabDocumentFromTabStateData:v11];
  v13 = [MEMORY[0x277D499B8] sharedLogger];
  [v13 didOpenNewTabWithURLWithTrigger:4 tabCollectionViewType:{-[TabCollectionViewManager visibleTabCollectionViewType](self->_tabCollectionViewManager, "visibleTabCollectionViewType")}];
}

- (NSString)activeTabUUID
{
  v2 = [(TabController *)self activeTabDocument];
  v3 = [v2 uuidString];

  return v3;
}

- (void)setActiveTabUUID:(id)a3
{
  v14 = a3;
  v4 = [(TabController *)self tabGroupRelatedToTabWithUUID:?];
  if (([v4 isPrivateBrowsing] & 1) != 0 || (objc_msgSend(v4, "profileIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), -[TabController activeProfileIdentifier](self, "activeProfileIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    v8 = [(TabController *)self activeTabGroupUUID];
    v9 = [v4 uuid];
    v10 = [v8 isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [v4 uuid];
      [(TabController *)self setActiveTabGroupUUID:v11];
    }

    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
    v13 = [(TabController *)self tabWithUUID:v12];

    if (v13)
    {
      [(TabController *)self setActiveTab:v13];
    }
  }
}

- (id)appendWBTabInTabGroupWithUUID:(id)a3
{
  v4 = a3;
  if (self->_tabDocumentBeingHiddenFromTabView && (-[TabController privateTabGroupIfAvailable](self, "privateTabGroupIfAvailable"), v5 = objc_claimAutoreleasedReturnValue(), [v5 uuid], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", v4), v6, v5, v7))
  {
    v8 = [(TabDocument *)self->_tabDocumentBeingHiddenFromTabView tabGroupTab];
    [(TabController *)self setActiveTabGroupUUID:v4];
    tabDocumentBeingHiddenFromTabView = self->_tabDocumentBeingHiddenFromTabView;
    self->_tabDocumentBeingHiddenFromTabView = 0;
  }

  else
  {
    v10 = MEMORY[0x277D7B538];
    v11 = [(TabController *)self deviceIdentifier];
    v12 = [v10 startPageTabWithDeviceIdentifier:v11];

    tabGroupManager = self->_tabGroupManager;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__TabController_appendWBTabInTabGroupWithUUID___block_invoke;
    v15[3] = &unk_2781D97D0;
    v8 = v12;
    v16 = v8;
    [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:v4 persist:1 usingBlock:v15];
    tabDocumentBeingHiddenFromTabView = v16;
  }

  return v8;
}

void __47__TabController_appendWBTabInTabGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 appendTabs:{v4, v5, v6}];
}

- (void)authenticateToUnlockPrivateBrowsing
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained authenticateToUnlockPrivateBrowsing];
}

- (BOOL)canCloseWBTab:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(TabController *)self tabGroupRelatedToTabWithUUID:v5];

  v7 = [v6 unpinnedTabs];
  v8 = [v7 count];

  if (v8 > 1 || (-[TabController canCloseLastTabInTabGroup:](self, v6) & 1) != 0 || ([v6 pinnedStartPage], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v9 = 1;
  }

  else
  {
    [TabController canCloseWBTab:];
    v9 = v12;
  }

  return v9;
}

uint64_t __36__TabController_closeWBTabs_action___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isPrivateBrowsing])
  {
    return 0;
  }

  else
  {
    return [*(a1 + 32) isControlledByAutomation] ^ 1;
  }
}

id __36__TabController_closeWBTabs_action___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 uuid];

  v7 = [v5 initWithUUIDString:v6];
  v8 = [v2 tabWithUUID:v7];

  return v8;
}

BOOL __36__TabController_closeWBTabs_action___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 tabGroupUUID];
  v3 = v2 == 0;

  return v3;
}

void __36__TabController_closeWBTabs_action___block_invoke_8(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(a1 + 40) + 264);
        v8 = [*(*(&v9 + 1) + 8 * v6) uuid];
        [v7 removeTabWithUUID:v8 persist:1];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)defaultTabToSelectInTabGroup:(id)a3
{
  v4 = a3;
  if ([(TabController *)self isTabGroupActive:v4])
  {
    v5 = [(TabController *)self activeTabDocument];
    v6 = [v5 wbTab];
  }

  else
  {
    v5 = [v4 lastSelectedTabUUID];
    v7 = [(TabController *)self wbTabWithUUID:v5];
    v8 = v7;
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v9 = [v4 firstUnpinnedTab];
      v10 = v9;
      if (v9)
      {
        v6 = v9;
      }

      else
      {
        v11 = [v4 tabs];
        v6 = [v11 firstObject];
      }
    }
  }

  return v6;
}

- (void)duplicateWBTabs:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAC0] safari_dictionaryWithObjectsInFastEnumerationCollection:v4 groupedUsingBlock:&__block_literal_global_608];
  v6 = [v4 safari_filterObjectsUsingBlock:&__block_literal_global_610];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__TabController_duplicateWBTabs___block_invoke_3;
  aBlock[3] = &unk_2781DA370;
  v19 = v4;
  v29 = v19;
  v30 = self;
  v7 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __33__TabController_duplicateWBTabs___block_invoke_4;
  v26[3] = &unk_2781DA3C0;
  v26[4] = self;
  v8 = v7;
  v27 = v8;
  v20 = v5;
  [v5 enumerateKeysAndObjectsUsingBlock:v26];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [(PinnedTabsManager *)self->_pinnedTabsManager duplicateTab:*(*(&v22 + 1) + 8 * v12)];
        v14 = [v13 uuid];
        v15 = [(TabController *)self tabGroupRelatedToTabWithUUID:v14];
        v16 = [v15 uuid];
        (*(v8 + 2))(v8, v13, v16);

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v10);
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v18 = [WeakRetained libraryController];
  [v18 reloadSectionControllersIfNeeded];
}

BOOL __33__TabController_duplicateWBTabs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPinned])
  {
    v3 = [v2 tabGroupUUID];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __33__TabController_duplicateWBTabs___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7 && [*(a1 + 32) count] == 1 && objc_msgSend(v5, "isEqualToString:", *(*(a1 + 40) + 56)))
  {
    v6 = [v7 uuid];
    [*(a1 + 40) setActiveTabUUID:v6];
  }
}

void __33__TabController_duplicateWBTabs___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v7 = *(*(a1 + 32) + 48);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __33__TabController_duplicateWBTabs___block_invoke_5;
  v14 = &unk_2781DA398;
  v16 = &v17;
  v8 = v6;
  v15 = v8;
  [v7 updateTabsInTabGroupWithUUID:v5 persist:1 usingBlock:&v11];
  v9 = *(a1 + 40);
  v10 = [v18[5] firstObject];
  (*(v9 + 16))(v9, v10, v5);

  _Block_object_dispose(&v17, 8);
}

void __33__TabController_duplicateWBTabs___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 duplicateTabs:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isTabWithUUIDBeingHiddenFromTabView:(id)a3
{
  tabDocumentBeingHiddenFromTabView = self->_tabDocumentBeingHiddenFromTabView;
  v4 = a3;
  v5 = [(TabDocument *)tabDocumentBeingHiddenFromTabView uuidString];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (void)switchToTabGroupVisibleInSwitcherIfNeeded
{
  v3 = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabSwitcherViewController];
  [v3 cancelRenamingVisibleTabGroup];

  v4 = [(TabController *)self activeTabGroupOrTabGroupVisibleInSwitcher];
  activeTabGroupUUID = self->_activeTabGroupUUID;
  v6 = [v4 uuid];
  LOBYTE(activeTabGroupUUID) = [(NSString *)activeTabGroupUUID isEqualToString:v6];

  if ((activeTabGroupUUID & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_DEFAULT, "Will switch tab group to visible group.", v9, 2u);
    }

    v8 = [v4 uuid];
    [(TabController *)self setActiveTabGroupUUID:v8];
  }
}

void __45__TabController__movePinnedWBTab_toTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v6 count:1];
  v5 = [v3 lastPinnedTab];
  [v3 insertTabs:v4 afterTab:v5];
}

void __45__TabController__movePinnedWBTab_toTabGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 deleteTabs:{v4, v5, v6}];
}

- (void)moveWBTabs:(id)a3 toTabGroup:(id)a4
{
  v6 = a4;
  v7 = [a3 safari_splitArrayUsingCondition:&__block_literal_global_613];
  v8 = [v7 first];
  v9 = [v7 second];
  if ([v9 count])
  {
    tabGroupManager = self->_tabGroupManager;
    v11 = [v6 tabs];
    v12 = [v11 lastObject];
    [(WBTabGroupManager *)tabGroupManager moveTabs:v9 toTabGroup:v6 afterTab:v12 withoutPersistingTabGroupsWithUUIDStrings:0];
  }

  if ([v8 count])
  {
    pinnedTabsManager = self->_pinnedTabsManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__TabController_moveWBTabs_toTabGroup___block_invoke_2;
    v14[3] = &unk_2781D58E8;
    v15 = v8;
    v16 = self;
    v17 = v6;
    [(PinnedTabsManager *)pinnedTabsManager performUpdatesUsingBlock:v14];
  }
}

void __39__TabController_moveWBTabs_toTabGroup___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [(TabController *)*(a1 + 40) _movePinnedWBTab:*(a1 + 48) toTabGroup:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)pinnedWBTabsForTabGroup:(id)a3
{
  v4 = a3;
  if ([v4 usesGlobalPinnedTabs])
  {
    pinnedTabsManager = self->_pinnedTabsManager;
    v5 = [(TabController *)self _containerForPinnedTabsInTabGroup:v4];

    [(PinnedTabsManager *)pinnedTabsManager pinnedTabsInContainer:v5];
  }

  else
  {
    v5 = [v4 tabs];

    [v5 safari_filterObjectsUsingBlock:&__block_literal_global_615];
  }
  v6 = ;

  return v6;
}

- (void)setTitle:(id)a3 forTabGroupWithUUID:(id)a4
{
  v6 = a3;
  tabGroupManager = self->_tabGroupManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__TabController_setTitle_forTabGroupWithUUID___block_invoke;
  v9[3] = &unk_2781D97D0;
  v10 = v6;
  v8 = v6;
  [(WBTabGroupManager *)tabGroupManager updateTabGroupWithUUID:a4 persist:1 usingBlock:v9];
}

- (void)setWBTabs:(id)a3 arePinned:(BOOL)a4
{
  v6 = a3;
  pinnedTabsManager = self->_pinnedTabsManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__TabController_setWBTabs_arePinned___block_invoke;
  v9[3] = &unk_2781D5060;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [(PinnedTabsManager *)pinnedTabsManager performUpdatesUsingBlock:v9];
}

void __37__TabController_setWBTabs_arePinned___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 reverseObjectEnumerator];
  }

  v5 = v4;
  v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if (*(a1 + 48) != [v10 isPinned] && (!*(a1 + 48) || objc_msgSend(*(a1 + 40), "isTabPinnable:", v10)))
        {
          v11 = *(a1 + 40);
          v12 = [v10 uuid];
          v13 = [v11 tabGroupRelatedToTabWithUUID:v12];
          v14 = [v13 uuid];

          v15 = *(a1 + 40);
          v16 = *(v15 + 48);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __37__TabController_setWBTabs_arePinned___block_invoke_2;
          v17[3] = &unk_2781D99F0;
          v18 = *(a1 + 48);
          v17[4] = v10;
          v17[5] = v15;
          [v16 updateTabsInTabGroupWithUUID:v14 persist:1 usingBlock:v17];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (id)tabGroupRelatedToTabWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(WBTabGroupManager *)self->_tabGroupManager tabWithUUID:v4];
  v6 = [v5 tabGroupUUID];

  if (v6)
  {
    tabGroupManager = self->_tabGroupManager;
    v8 = [v5 tabGroupUUID];
    v9 = [(WBTabGroupManager *)tabGroupManager tabGroupWithUUID:v8];
LABEL_3:
    v10 = v9;
    goto LABEL_4;
  }

  v8 = [(PinnedTabsManager *)self->_pinnedTabsManager containerForTabWithUUID:v4];
  if ([v8 isInDefaultProfile])
  {
    v12 = [v8 isPrivateBrowsingEnabled];
    windowState = self->_windowState;
    if (v12)
    {
      [(WBWindowState *)windowState privateTabGroup];
    }

    else
    {
      [(WBWindowState *)windowState localTabGroup];
    }
    v9 = ;
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v15 = [v8 activeProfileIdentifier];
  v10 = [WeakRetained existingUnnamedTabGroupForProfileWithIdentifier:v15];

LABEL_4:

  return v10;
}

- (id)wbTabWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(WBTabGroupManager *)self->_tabGroupManager tabWithUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(PinnedTabsManager *)self->_pinnedTabsManager tabWithUUID:v4];
  }

  v8 = v7;

  return v8;
}

- (void)reorderPinnedTabsIntoPlace
{
  v2 = [a1 pinnedTabs];
  [(TabController *)a1 _updateTabsWithPinnedTabs:v2 persist:1u];
}

- (void)pinnedTabsManager:(id)a3 didUpdatePinnedTabs:(id)a4 isPrivate:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  if ([(TabController *)self isPrivateBrowsingEnabled]== v5)
  {
    v7 = [(TabController *)self activeTabGroup];
    v8 = [v7 isSyncable];

    if ((v8 & 1) == 0 && (v5 || [(TabController *)self isInDefaultProfile]))
    {
      [TabController _updateTabsWithPinnedWBTabs:?];
    }
  }
}

- (void)pinnedTabsManager:(id)a3 didUpdatePinnedTabs:(id)a4 inProfileWithIdentifier:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(TabController *)self activeProfileIdentifier];
  v9 = [v8 isEqual:v7];

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = [(TabController *)self activeTabGroup];
  if (([v10 usesGlobalPinnedTabs] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v11 = [(TabController *)self isPrivateBrowsingEnabled];

  if (!v11)
  {
    [TabController _updateTabsWithPinnedWBTabs:?];
  }

LABEL_7:
}

id __45__TabController__updateTabsWithPinnedWBTabs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v3 uuid];
  v7 = [v5 initWithUUIDString:v6];
  v8 = [v4 tabWithUUID:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(TabController *)*(a1 + 32) _tabForWBTab:v3];
  }

  v11 = v10;

  [v11 setPinned:1];
  [v11 setWBTab:v3];

  return v11;
}

- (void)attemptToSelectTabGroupFromShare:(id)a3
{
  v4 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupMatchingShare:a3];
  if (v4)
  {
    v5 = v4;
    [(TabController *)self _selectAcceptedSharedTabGroup:v4];
    v4 = v5;
  }

  self->_didSelectAcceptedSharedTabGroup = v4 != 0;
}

- (void)displayAlreadyAcceptedSharedTabGroupWithUUID:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(TabController *)self didFetchRecentlyAcceptedSharedTabGroupWithUUID:v5 acceptedShareDate:v6];
}

- (void)didFetchRecentlyAcceptedSharedTabGroupWithUUID:(id)a3 acceptedShareDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_didSelectAcceptedSharedTabGroup)
  {
    objc_initWeak(&location, self);
    tabGroupManager = self->_tabGroupManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__TabController_didFetchRecentlyAcceptedSharedTabGroupWithUUID_acceptedShareDate___block_invoke;
    v9[3] = &unk_2781D4F30;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    [(WBTabGroupManager *)tabGroupManager reloadTabGroupsFromDatabaseWithCompletionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __82__TabController_didFetchRecentlyAcceptedSharedTabGroupWithUUID_acceptedShareDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    v6 = [WeakRetained tabGroupWithUUID:v5];
    if (v6)
    {
      [(TabController *)v3 _selectAcceptedSharedTabGroup:v6];
    }

    else
    {
      v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __82__TabController_didFetchRecentlyAcceptedSharedTabGroupWithUUID_acceptedShareDate___block_invoke_cold_1(v4, v7, v8);
      }
    }
  }
}

- (void)tabGroupConfirmationAlertDidBeginDismissal:(id)a3
{
  if ([a3 role] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained closePreviewDocument];
  }
}

- (void)clearHiddenTabForExplanationView
{
  tabDocumentBeingHiddenFromTabView = self->_tabDocumentBeingHiddenFromTabView;
  self->_tabDocumentBeingHiddenFromTabView = 0;
}

- (BOOL)canCloseTabWithUUID:(id)a3
{
  v4 = [(TabController *)self tabWithUUID:a3];
  v5 = v4;
  if (v4)
  {
    if ([v4 isLoading] && !objc_msgSend(v5, "isLoadingStartPage"))
    {
      v8 = 1;
      if (!self)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = [v5 isBlank] ^ 1;
      if (!self)
      {
        goto LABEL_11;
      }
    }

    if (([(TabController *)self _hasPinnedStartPageExcludingTabs:?]& 1) != 0)
    {
LABEL_10:
      v6 = 1;
      goto LABEL_3;
    }

LABEL_11:
    if ((([(TabController *)self allowsClosingLastTab]| v8) & 1) == 0)
    {
      v9 = [(TabController *)self unpinnedTabs];
      v6 = [v9 count] > 1;

      goto LABEL_3;
    }

    goto LABEL_10;
  }

  v6 = 0;
LABEL_3:

  return v6;
}

- (void)insertTabWithUUIDForNavigation:(id)a3
{
  v4 = [(TabController *)self tabWithUUID:a3];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    tabDocumentBeingHiddenFromTabView = self->_tabDocumentBeingHiddenFromTabView;
    if (!tabDocumentBeingHiddenFromTabView || (v7 = [(TabDocument *)tabDocumentBeingHiddenFromTabView isPrivateBrowsingEnabled], v7 != [(TabController *)self isPrivateBrowsingEnabled]) || (v9 = self->_tabDocumentBeingHiddenFromTabView, v8 = self->_tabDocumentBeingHiddenFromTabView, self->_tabDocumentBeingHiddenFromTabView = 0, v8, (v5 = v9) == 0))
    {
      [TabController insertTabWithUUIDForNavigation:];
      v5 = v11;
    }
  }

  [(TabController *)self setActiveTab:v5, v5];
}

- (void)bacgkroundTaskWillExpireWithTotalBackgroundTime:(double)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXOther();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Background tasks are about to expire. Total background time: %.2fs", &v5, 0xCu);
  }
}

- (void)saveStateInBackground:(BOOL)a3 needsValidate:(BOOL)a4
{
  v4 = a3;
  if ([(WBUFeatureManager *)FeatureManager accessLevel:a3]== 2)
  {
    [(TabController *)self updateEducationTabsLastSyncDate];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isShowingReader])
  {
    v6 = [(TabController *)self activeTabDocument];
    [WeakRetained verticalScrollOffsetForReaderViewInTabDocument:v6];
    v8 = v7;
    v9 = [(TabController *)self activeTabDocument];
    [v9 setReaderViewTopScrollOffset:v8];
  }

  v10 = [WeakRetained tabGroupManager];
  v11 = [WeakRetained windowState];
  [v10 saveWindowState:v11 completionHandler:0];

  [(TabController *)self persistAllCurrentTabsInBackground:v4];
}

- (void)persistAllCurrentTabsInBackground:(BOOL)a3
{
  v3 = a3;
  v5 = [(TabController *)self activeTabGroup];
  if ([v5 usesGlobalPinnedTabs])
  {
    [(TabController *)self unpinnedTabs];
  }

  else
  {
    [(TabController *)self currentTabs];
  }
  v6 = ;

  [(TabController *)self persistTabs:v6 inTabGroupWithUUID:self->_activeTabGroupUUID inBackground:v3];
}

- (void)persistTab:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  tabGroupManager = self->_tabGroupManager;
  v11 = v6;
  v8 = [v6 uuid];
  v9 = [v8 UUIDString];
  v10 = [v11 tabUpdateBlock];
  [(WBTabGroupManager *)tabGroupManager updateTabWithUUID:v9 persist:1 notify:v4 usingBlock:v10];
}

- (void)persistTabs:(id)a3 inTabGroupWithUUID:(id)a4 inBackground:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    tabGroupManager = self->_tabGroupManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__TabController_Persistence__persistTabs_inTabGroupWithUUID_inBackground___block_invoke;
    v11[3] = &unk_2781D7038;
    v12 = v8;
    [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:v9 persist:1 usingBlock:v11];
    if (!a5)
    {
      [(WBTabGroupManager *)self->_tabGroupManager disableSuddenTerminationForPendingChanges];
    }
  }
}

void __74__TabController_Persistence__persistTabs_inTabGroupWithUUID_inBackground___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__TabController_Persistence__persistTabs_inTabGroupWithUUID_inBackground___block_invoke_2;
  v7[3] = &unk_2781DA618;
  v5 = v3;
  v8 = v5;
  v6 = [v4 safari_mapAndFilterObjectsUsingBlock:v7];
  [v5 setTabs:v6];
}

id __74__TabController_Persistence__persistTabs_inTabGroupWithUUID_inBackground___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uuidString];
  v6 = [v4 tabWithUUID:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v3 wbTab];
    v8 = [v9 mutableCopy];
  }

  v10 = [v3 tabUpdateBlock];
  (v10)[2](v10, v8);

  return v8;
}

- (uint64_t)_didCompleteStateRestoration
{
  if (result)
  {
    v1 = result;
    v2 = [(TabController *)result tabCollectionViewManager];
    v3 = [v1 activeTabDocument];
    [v2 updateTabBarAnimated:0 keepingTabVisible:v3];

    v4 = [(TabController *)v1 tabCollectionViewManager];
    [v4 updateTabOverviewItems];

    return [v1 updateHibernatedTabDocumentsSavingState];
  }

  return result;
}

- (TabDocument)_activeTabDocumentForTabGroup:(TabDocument *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(TabDocument *)a1 windowState];
    v5 = [v4 tabGroupsToActiveTabs];
    v6 = [v3 uuid];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
    v9 = [(TabDocument *)a1 tabWithUUID:v8];
    if (v9)
    {
LABEL_11:
      a1 = [(TabController *)a1 _unhibernateTabIfNeeded:v9];

      goto LABEL_12;
    }

    if ([v3 isPrivateBrowsing])
    {
      v10 = [(TabDocument *)a1 privateUnpinnedTabs];
      v11 = [v10 firstObject];
      if (!v11)
      {
        v12 = [(TabDocument *)a1 privateTabs];
        v13 = [v12 firstObject];
LABEL_9:
        v9 = v13;

        goto LABEL_10;
      }
    }

    else
    {
      v10 = [(TabDocument *)a1 normalUnpinnedTabs];
      v11 = [v10 firstObject];
      if (!v11)
      {
        v12 = [(TabDocument *)a1 normalTabs];
        v13 = [v12 firstObject];
        goto LABEL_9;
      }
    }

    v11 = v11;
    v9 = v11;
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:

  return a1;
}

- (id)_mutableTabsForTabGroup:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 isPrivateBrowsing];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v7 = [v4 tabs];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__TabController_Persistence___mutableTabsForTabGroup___block_invoke;
    v12[3] = &unk_2781DA640;
    v12[4] = a1;
    v8 = WeakRetained;
    v13 = v8;
    v14 = v5;
    v9 = [v7 safari_mapObjectsUsingBlock:v12];
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __54__TabController_Persistence___mutableTabsForTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v3 uuid];
  v7 = [v5 initWithUUIDString:v6];
  v8 = [v4 tabWithUUID:v7];

  if (v8)
  {
    [v8 restoreStateFromTab:v3];
  }

  else
  {
    v9 = [MEMORY[0x277D28C70] sharedFeatureManager];
    v10 = [v9 allowsUnlimitedTabs];

    if (v10)
    {
      v11 = [[HibernatedTab alloc] initWithWBTab:v3 browserController:*(a1 + 40)];
    }

    else
    {
      v11 = [[TabDocument alloc] initWithTabGroupTab:v3 privateBrowsingEnabled:*(a1 + 48) hibernated:1 bookmark:0 browserController:*(a1 + 40)];
    }

    v8 = v11;
  }

  [v8 updateTabIconWithDelay:0.4];

  return v8;
}

- (id)_focusedTabGroupForWindowState:(_BYTE *)a1
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!a1 || ([a1 isPrivateBrowsingEnabled] & 1) != 0)
  {
    v4 = 0;
    goto LABEL_18;
  }

  v5 = +[Application sharedApplication];
  if (([v5 needsFocusedTabGroupUpdate] & 1) == 0)
  {
    v4 = 0;
    goto LABEL_17;
  }

  v4 = [a1 focusedTabGroup];
  if (v4)
  {
    if (a1[64] == 1)
    {
      [v5 setNeedsFocusedTabGroupUpdate:0];
    }

    if (([v3 newlyCreated] & 1) == 0 && (objc_msgSend(a1, "isTabGroupActive:", v4) & 1) == 0 && !objc_msgSend(v5, "prefersSingleWindow"))
    {
      v9 = v4;
      v4 = 0;
      goto LABEL_15;
    }

    v6 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 uuid];
      v8 = [v4 uuid];
      [(TabController *)v7 _focusedTabGroupForWindowState:v8, v11, v6];
    }
  }

  v9 = 0;
LABEL_15:

LABEL_17:
LABEL_18:

  return v4;
}

- (id)_activeTabGroupForWindowState:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if ([a1 isPrivateBrowsingEnabled])
    {
      a1 = [v3 privateTabGroup];
      if (a1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = [v3 activeTabGroupUUID];
      a1 = [a1 tabGroupWithUUID:v4];

      if (a1)
      {
        goto LABEL_7;
      }
    }

    a1 = [v3 localTabGroup];
  }

LABEL_7:

  return a1;
}

- (BOOL)readState
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [(TabController *)self windowState];
  v5 = [(TabController *)self _activeTabGroupForWindowState:v4];
  v6 = [(TabController *)self _focusedTabGroupForWindowState:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  if (![(TabController *)self isTabGroupActive:v9]|| !self->_didReadWindowState)
  {
    if (self->_activeTabGroupUUID)
    {
      v10 = [(TabController *)self tabGroupManager];
      [v10 endParticipantPresenceReportingForTabGroupWithUUID:self->_activeTabGroupUUID];
    }

    v11 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 privacyPreservingDescription];
      *buf = 138543362;
      v36 = v12;
      _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_DEFAULT, "Read active tab group from saved state: %{public}@", buf, 0xCu);
    }

    v13 = [v9 uuid];
    v14 = [v13 copy];
    activeTabGroupUUID = self->_activeTabGroupUUID;
    self->_activeTabGroupUUID = v14;

    v16 = [v9 isPrivateBrowsing];
    [WeakRetained setPrivateBrowsingEnabled:v16];
    if (v16)
    {
      v17 = [v4 localTabGroup];
    }

    else
    {
      v17 = v9;
    }

    v18 = v17;
    v19 = [(TabController *)self _mutableTabsForTabGroup:v17];
    mutableNormalTabs = self->_mutableNormalTabs;
    self->_mutableNormalTabs = v19;

    v21 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(NSMutableArray *)self->_mutableNormalTabs count];
      *buf = 134217984;
      v36 = v22;
      _os_log_impl(&dword_215819000, v21, OS_LOG_TYPE_DEFAULT, "Read %zu normal tabs from saved state", buf, 0xCu);
    }

    if (!self->_didReadWindowState)
    {
      v23 = [v4 privateTabGroup];
      v24 = [(TabController *)self _mutableTabsForTabGroup:v23];
      mutablePrivateTabs = self->_mutablePrivateTabs;
      self->_mutablePrivateTabs = v24;

      v26 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(NSMutableArray *)self->_mutablePrivateTabs count];
        *buf = 134217984;
        v36 = v27;
        _os_log_impl(&dword_215819000, v26, OS_LOG_TYPE_DEFAULT, "Read %zu private tabs from saved state", buf, 0xCu);
      }
    }

    if ([v9 usesGlobalPinnedTabs])
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __39__TabController_Persistence__readState__block_invoke;
      v34[3] = &unk_2781D60B8;
      v34[4] = self;
      [(TabController *)self _performWithFixedTabBarItems:v34];
    }

    v28 = [(TabController *)self _activeTabDocumentForTabGroup:v18];
    [(TabController *)self setNormalActiveTabDocument:v28];

    if (!self->_didReadWindowState)
    {
      v29 = [v4 privateTabGroup];
      v30 = [(TabController *)self _activeTabDocumentForTabGroup:v29];
      [(TabController *)self setPrivateActiveTabDocument:v30];
    }

    [(TabController *)self openInitialBlankTabDocumentIfNeeded];
    v31 = [(TabController *)self tabCollectionViewManager];
    [v31 updateSnapshotIdentifiers];

    [(TabController *)self _didCompleteStateRestoration];
    self->_didReadWindowState = 1;
    if (self->_activeTabGroupUUID)
    {
      v32 = [(TabController *)self tabGroupManager];
      [v32 beginParticipantPresenceReportingForTabGroupWithUUID:self->_activeTabGroupUUID];
    }
  }

  return 1;
}

void __39__TabController_Persistence__readState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pinnedTabsManager];
  [v2 addPinnedTabsObserver:*(a1 + 32)];
}

- (void)persistActiveTabGroupOrTabGroupVisibleInSwitcher
{
  v6 = [(TabController *)self activeTabGroupOrTabGroupVisibleInSwitcher];
  v3 = [(TabController *)self windowState];
  v4 = [v6 uuid];
  [v3 setActiveTabGroupUUID:v4];

  [(WBTabGroupManager *)self->_tabGroupManager saveWindowState:v3 completionHandler:0];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained writePrivateBrowsingEnabled:{objc_msgSend(v6, "isPrivateBrowsing")}];
}

- (void)_closeTabs:(unsigned int)a3 animated:(int)a4 allowAddingToRecentlyClosedTabs:(char)a5 keepWebViewAlive:(char)a6 showAutoCloseTabsAlert:
{
  v124 = *MEMORY[0x277D85DE8];
  v10 = a2;
  if (!a1)
  {
    goto LABEL_68;
  }

  v11 = [MEMORY[0x277D499B8] sharedLogger];
  [v11 reportTabUpdatedWithUpdateType:3];

  [(TabController *)a1 _sendEventsForAutoFillTelemetryForClosingTabs:v10];
  *(a1 + 112) = 1;
  [*(a1 + 272) willBeginUpdates];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v13 = [v10 firstObject];
  v14 = [v13 isPrivateBrowsingEnabled];
  v113 = [MEMORY[0x277CBEB18] array];
  HIDWORD(v105) = v14;
  v110 = [(TabController *)a1 _mutableTabsForPrivateBrowsing:v14];
  v15 = [v13 wbTab];
  v16 = [v15 tabGroupUUID];

  v111 = a1;
  v107 = v13;
  aBlock = a6;
  if (v16 || ![v13 isPrivateBrowsingEnabled])
  {
    if (!*(a1 + 56) || ([a1 currentTabs], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", v13), v18, !v19))
    {
      v103 = v16;
      goto LABEL_10;
    }

    v17 = *(a1 + 56);
  }

  else
  {
    v16 = [*(a1 + 256) privateTabGroup];
    v17 = [v16 uuid];
  }

  v20 = v17;

  v103 = v20;
LABEL_10:
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v101 = v10;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v118 objects:v123 count:16];
  if (v22)
  {
    v24 = v22;
    v25 = *v119;
    do
    {
      v26 = 0;
      do
      {
        if (*v119 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v118 + 1) + 8 * v26);
        if (a4)
        {
          if (([*(*(&v118 + 1) + 8 * v26) isBlank] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v27 hibernate];
            }
          }

          v28 = [WeakRetained configuration];
          v29 = [v28 allowsReopeningClosedTabs];

          if (v29)
          {
            v22 = [v113 addObject:v27];
          }
        }

        if ((a5 & 1) == 0)
        {
          v22 = [v27 setClosed:1];
        }

        ++v26;
      }

      while (v24 != v26);
      v22 = OUTLINED_FUNCTION_93(v22, v23, &v118, v123);
      v24 = v22;
    }

    while (v22);
  }

  if ([v113 count])
  {
    [(TabController *)v111 _addTabsToRecentlyClosed:v113 includeUndo:1];
  }

  v30 = [v111 activeTabDocument];
  if (v30 && ((v31 = [v21 containsObject:v30], !*(v111 + 56)) ? (v32 = v31) : (v32 = 0), v31))
  {
    if (([OUTLINED_FUNCTION_82() containsObject:?] & 1) == 0)
    {
      [OUTLINED_FUNCTION_82() addObject:?];
    }

    v33 = 1;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  HIDWORD(v108) = v33;
  v34 = [v21 safari_filterObjectsUsingBlock:&__block_literal_global_109_1];
  if ((v105 & 0x100000000) != 0)
  {
    [v111 privateUnpinnedTabs];
  }

  else
  {
    [v111 normalUnpinnedTabs];
  }
  v35 = ;
  v36 = [v35 count];

  v100 = v34;
  v37 = [v34 count];
  v38 = [(TabController *)v111 _hasPinnedStartPageExcludingTabs:v21];
  if (v37 < v36)
  {
    v39 = 1;
  }

  else
  {
    v39 = v32;
  }

  [*(v111 + 72) beginFixingTabBarItems];
  [*(v111 + 72) beginFixingTabOverviewItems];
  if ((v39 & 1) == 0 && (v38 & 1) == 0)
  {
    v40 = [v111 currentTabs];
    v41 = [v40 containsObject:v107];

    if (v41)
    {
      if ([v111 isPrivateBrowsingEnabled] && (-[TabController tabThumbnailCollectionView](v111), v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "presentationState"), v63, v64))
      {
        v65 = [[TabDocument alloc] initWithBrowserController:WeakRetained];
        v66 = *(v111 + 32);
        *(v111 + 32) = v65;

        [*(v111 + 32) setIsBlank:1];
        [*(v111 + 32) setScrollPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
        [v111 insertTab:*(v111 + 32) afterTab:0 inBackground:1 animated:0];
        [*(v111 + 32) displayNewTabOverridePageIfNecessary];
      }

      else if (HIDWORD(v105) == [v111 isPrivateBrowsingEnabled])
      {
        v42 = [(TabController *)v111 _openBlankTabDocument];
      }
    }

    else
    {
      v43 = [v111 alternateTabs];
      v44 = [v43 containsObject:v107];

      if (v44)
      {
        OUTLINED_FUNCTION_49();
        v70 = [TabController _insertNewBlankTabDocumentWithPrivateBrowsing:v67 inBackground:v68 animated:v69];
        if (HIDWORD(v105))
        {
          objc_storeStrong((v111 + 280), v70);
          v71 = 32;
        }

        else
        {
          v71 = 288;
        }

        v83 = *(v111 + v71);
        *(v111 + v71) = v70;
      }
    }
  }

  v45 = v30;
  v46 = [*(v111 + 72) tabThumbnailCollectionView];
  v47 = v45;
  if (((v32 | HIDWORD(v108) ^ 1) & 1) == 0)
  {
    v47 = [*(v111 + 304) tabToSelectBeforeClosingTabs:v21];

    if ([v46 presentationState])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = [v47 webView];
        [v48 _hideContentUntilNextUpdate];
      }
    }

    [*(v111 + 72) setSuppressTabBarAnimation:a3 ^ 1];
    [v111 setActiveTab:v47];
    [*(v111 + 72) setSuppressTabBarAnimation:0];
  }

  v104 = v46;
  v116 = 0u;
  v117 = 0u;
  *v114 = 0u;
  v115 = 0u;
  v49 = v21;
  v50 = [v49 countByEnumeratingWithState:v114 objects:v122 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v115;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v115 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(v114[1] + 8 * i);
        if ((a5 & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v54 willClose];
          }
        }

        v55 = [v110 removeObject:v54];
        v57 = *(v111 + 32);
        if (v54 == v57)
        {
          *(v111 + 32) = 0;
        }
      }

      v51 = OUTLINED_FUNCTION_93(v55, v56, v114, v122);
    }

    while (v51);
  }

  v58 = HIDWORD(v108);
  [*(v111 + 272) didCloseTabDocuments:v49 includingActiveTab:HIDWORD(v108)];
  v10 = v101;
  if ((v32 & 1) == 0)
  {
    [*(v111 + 72) setSuppressTabBarAnimation:a3 ^ 1];
    v59 = [(TabController *)v111 _application];
    [v59 updateTabCount];

    [*(v111 + 72) setSuppressTabBarAnimation:0];
    v60 = [v104 itemToActivate];
    if (v60)
    {
      v61 = [v49 valueForKey:@"uuid"];
      [v60 UUID];
      objc_claimAutoreleasedReturnValue();
      v62 = [OUTLINED_FUNCTION_37() containsObject:HIDWORD(v108)];

      v58 = HIDWORD(v108);
      if (v62)
      {
        if (*(v111 + 32) == v47)
        {
          [v104 setItemToActivate:0];
        }

        else
        {
          v72 = [v47 itemForTabCollectionView:v104];
          [OUTLINED_FUNCTION_18() setItemToActivate:?];
        }
      }
    }

    v73 = v111;
    if ((a5 & 1) == 0)
    {
      [*(v111 + 72) updateTabOverviewItems];
    }

    [WeakRetained clearCachedTabCompletionData];
    [*(v111 + 72) endFixingTabBarItems];
    [*(v111 + 72) endFixingTabOverviewItems];
    if (v58)
    {
      v74 = v47;
    }

    else
    {
      v74 = 0;
    }

    [*(v111 + 72) updateTabBarAnimated:a3 keepingTabVisible:v74];
    v75 = [(TabController *)v111 _application];
    v76 = *MEMORY[0x277D76628];
    [MEMORY[0x277D759A0] mainScreen];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_37() removeDefaultImage:v76 forScreen:v58];

    *(v111 + 112) = 0;
    [(TabController *)v111 _sendDidEndDocumentUpdates];
    [(TabController *)v111 didUpdateTabDocumentsInTabGroupWithUUID:v103, v77, v78, v79, v80, v81, v82, v94, aBlock, v100, v101, v103, v104, v105, v107, v108, v110, v111, v113, v114[0], v114[1]];
    if (WeakRetained && HIDWORD(v106) == [v73 isPrivateBrowsingEnabled] && objc_msgSend(v104, "presentationState"))
    {
      if ([v110 count] != 1 || (-[TabController allowsClosingLastTab](v73) & 1) != 0 || *(v73 + 152) || (objc_msgSend(v110, "firstObject"), v92 = objc_claimAutoreleasedReturnValue(), v93 = objc_msgSend(v92, "isBlank"), v92, !v93))
      {
        if (HIDWORD(v106))
        {
          [*(v73 + 72) updateExplanationViewVisibilityAnimated:v99];
        }
      }

      else
      {
        [v104 dismissAnimated:v99];
      }
    }

    if (*aBlocka)
    {
      [v49 count];
      v84 = OUTLINED_FUNCTION_69();
      [(TabController *)v84 _presentAutomaticTabClosingPromptIfNeededForClosedTabCount:v85, v86, v87, v88, v89, v90, v91, v95, aBlocka[0], v100, v102, v103, v104, v106, v107, v109, v110, v112, v113, v114[0], v114[1]];
    }
  }

LABEL_68:
}

- (void)_createVeryRecentlyClosedTabCountInvalidationTimer
{
  if (a1 && !*(a1 + 144))
  {
    v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:a1 target:sel__cancelVeryRecentlyClosedTabCountInvalidationTimer selector:0 userInfo:0 repeats:4.0];
    v3 = *(a1 + 144);
    *(a1 + 144) = v2;
  }
}

- (char)_tabsForPrivateBrowsing:(char *)a1
{
  if (a1)
  {
    v3 = 16;
    if (a2)
    {
      v3 = 24;
    }

    a1 = [*&a1[v3] copy];
    v2 = vars8;
  }

  return a1;
}

- (NSArray)alternateTabs
{
  v3 = ![(TabController *)self isPrivateBrowsingEnabled];

  return [(TabController *)self _tabsForPrivateBrowsing:v3];
}

- (char)_mutableTabsForPrivateBrowsing:(char *)a1
{
  if (a1)
  {
    v3 = 16;
    if (a2)
    {
      v3 = 24;
    }

    a1 = *&a1[v3];
    v2 = vars8;
  }

  return a1;
}

- (char)mutableAlternateTabs
{
  if (a1)
  {
    v2 = a1;
    v3 = [a1 isPrivateBrowsingEnabled];
    v4 = 24;
    if (v3)
    {
      v4 = 16;
    }

    a1 = *&v2[v4];
    v1 = vars8;
  }

  return a1;
}

- (id)oldestTabsWithLimit:(unint64_t)a3 inPrivateBrowsing:(BOOL)a4
{
  v5 = [(TabController *)self _tabsForPrivateBrowsing:a4];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_63];

  v7 = [v6 safari_prefixWithMaxLength:a3];

  return v7;
}

- (void)didUpdateTabDocumentsInTabGroupWithUUID:(int)a3
{
  OUTLINED_FUNCTION_95();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  if (v25 && !*(v25 + 152))
  {
    v28 = [v25 activeTabGroup];
    if (v28)
    {
      v29 = [v25 activeTabGroup];
      v30 = [v29 usesGlobalPinnedTabs];

      if (v30)
      {
        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_16();
        a12 = __57__TabController_didUpdateTabDocumentsInTabGroupWithUUID___block_invoke;
        a13 = &unk_2781D9890;
        a14 = v25;
        v31 = _Block_copy(&aBlock);
        [*(v25 + 264) updatePinnedTabsInContainer:v25 usingBlock:v31];
      }

      if ([v27 safari_isCaseInsensitiveEqualToString:*(v25 + 56)])
      {
        [OUTLINED_FUNCTION_55() persistAllCurrentTabsInBackground:?];
      }

      else
      {
        v32 = [*(v25 + 256) privateTabGroup];
        v33 = [v32 uuid];
        v34 = [v27 safari_isCaseInsensitiveEqualToString:v33];

        v35 = [*(v25 + 48) tabGroupWithUUID:v27];
        if ([v35 usesGlobalPinnedTabs])
        {
          if (v34)
          {
            [v25 privateUnpinnedTabs];
          }

          else
          {
            [v25 normalUnpinnedTabs];
          }

          objc_claimAutoreleasedReturnValue();
        }

        else
        {
          v36 = 16;
          if (v34)
          {
            v36 = 24;
          }

          [*(v25 + v36) copy];
        }

        [OUTLINED_FUNCTION_9() persistTabs:? inTabGroupWithUUID:? inBackground:?];
      }

      [v25 updateLocalTabGroupTitle];
    }
  }

  OUTLINED_FUNCTION_94();
}

- (void)_forceUpdateTabGroupTitleIfNeeded:(id *)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v10 = v4;
    v6 = [v4 hasDynamicTitle];
    v5 = v10;
    if (v6)
    {
      [v10 uuid];
      objc_claimAutoreleasedReturnValue();
      v7 = OUTLINED_FUNCTION_12();
      [(TabController *)v7 _reconfigureLibraryItemViewForTabGroupWithUUID:v8];

      WeakRetained = objc_loadWeakRetained(a1 + 1);
      [WeakRetained reloadSidebarAnimated:0];

      [a1 updateSelectedTabGroupName];
      v5 = v10;
    }
  }
}

- (void)_reconfigureLibraryItemViewForTabGroupWithUUID:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v4 = [WeakRetained libraryController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 reconfigureTabGroupCellWithUUIDString:v5];
    }
  }
}

- (char)_activeTabDocumentForPrivateBrowsing:(char *)a1
{
  if (a1)
  {
    v3 = 288;
    if (a2)
    {
      v3 = 280;
    }

    a1 = *&a1[v3];
    v2 = vars8;
  }

  return a1;
}

- (id)tabThumbnailCollectionView
{
  if (a1)
  {
    a1 = [a1[9] tabThumbnailCollectionView];
    v1 = vars8;
  }

  return a1;
}

- (TabDocument)_unhibernateTabIfNeeded:(TabDocument *)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [v5 isPrivateBrowsingEnabled];
      OUTLINED_FUNCTION_54();
      if (!v7)
      {
        v6 = 24;
      }

      v8 = *(&a1->super.isa + v6);
      [v8 indexOfObject:v5];
      [OUTLINED_FUNCTION_29() willLoseOwnershipOfTab:v5];
      a1 = [[TabDocument alloc] initWithHibernatedTab:v5];
      if (v2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [OUTLINED_FUNCTION_39() replaceObjectAtIndex:? withObject:?];
      }

      v9 = [v5 webExtensionsController];
      [v9 didReplaceTab:v5 newTab:a1];
    }

    else
    {
      a1 = v5;
    }
  }

  return a1;
}

- (void)setActiveTabDocument:(id)a3 animated:(BOOL)a4 deferActivation:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v21 = a3;
  OUTLINED_FUNCTION_24();
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v9 = [(TabController *)&self->super.isa tabThumbnailCollectionView];
  if (-[TabCollectionViewManager hasTabBar](self->_tabCollectionViewManager, "hasTabBar") || ([WeakRetained rootViewController], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "usingLoweredBar"), v11, !v6) || v12 || !v9)
  {
    [(TabCollectionViewManager *)self->_tabCollectionViewManager dismissTabHoverPreview];
    v10 = [v21 libraryType];
    if (v10)
    {
    }

    else
    {
      v5 = [v21 isPrivateBrowsingEnabled];
      if (v5 != [(TabController *)self isPrivateBrowsingEnabled])
      {
        [(TabController *)self _setActiveTabDocument:v21, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29];
        [WeakRetained setPrivateBrowsingEnabled:{objc_msgSend(v21, "isPrivateBrowsingEnabled")}];
        goto LABEL_12;
      }
    }

    [(TabController *)self activeTabDocument];
    objc_claimAutoreleasedReturnValue();
    v19 = OUTLINED_FUNCTION_29();
    [(TabController *)v19 _switchActiveTabDocumentFromTabDocument:v5 toTabDocument:v21];

    OUTLINED_FUNCTION_24();
    kdebug_trace();
    goto LABEL_12;
  }

  if (v5)
  {
    [OUTLINED_FUNCTION_55() setDefersActivation:?];
  }

  [v21 itemForTabCollectionView:v9];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_6_1() setItemToActivate:?];

  [OUTLINED_FUNCTION_55() presentAnimated:?];
LABEL_12:
}

- (void)_prepareToMoveTabDocumentToWindow:(int)a3 createPlaceholderImage:
{
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 webView];
    v9 = [v8 window];

    if (!v9 && [v8 hasBeenInWindow])
    {
      if (!a3 || ([v7 isHibernated] & 1) != 0 || (objc_msgSend(v7, "webView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isLoading"), v10, (v11 & 1) != 0) || (objc_msgSend(v7, "uuid"), objc_claimAutoreleasedReturnValue(), objc_msgSend(OUTLINED_FUNCTION_14(), "cachedContentImageForTabWithUUID:allowScaledImage:"), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
      {
        v19 = [*(a1 + 72) tabThumbnailCollectionView];
        v20 = [v19 presentationState];

        if (v20 == 2)
        {
          v21 = [v7 webView];
          [v21 _doAfterNextPresentationUpdateWithoutWaitingForPainting:&__block_literal_global_173_0];
        }
      }

      else
      {
        [v7 uuid];
        objc_claimAutoreleasedReturnValue();
        v13 = [OUTLINED_FUNCTION_13() cachedSnapshotMetadataForTabWithUUID:?];

        v14 = [v8 scrollView];
        [v14 adjustedContentInset];
        [v14 contentOffset];
        v15 = [v7 appBanner];
        [v15 frame];
        CGRectGetHeight(v23);

        [OUTLINED_FUNCTION_39() setPlaceholderImage:? verticalOffset:? metadata:?];
        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_16();
        v16 = v8;
        OUTLINED_FUNCTION_43();
        [v17 _doAfterNextPresentationUpdateWithoutWaitingForPainting:?];
        v18 = *(a1 + 72);
        [v12 size];
        [v18 updateStartPageSnapshotIfNeededForTabDocument:v7 currentSnapshotSize:?];
      }
    }
  }
}

- (BOOL)canAddNewTabForPrivateBrowsing:(BOOL)a3
{
  v3 = a3;
  v5 = [(TabController *)self activeTabGroup];
  if ([v5 isPrivateBrowsing] != v3)
  {
    if (v3)
    {
      [(WBWindowState *)self->_windowState privateTabGroup];
    }

    else
    {
      [(TabController *)self unnamedTabGroup];
    }
    v6 = ;

    v5 = v6;
  }

  v7 = [(TabController *)self _tabsForPrivateBrowsing:v3];
  v8 = [v7 count];

  v9 = [(TabController *)self canAddNewTabInTabGroup:v5 withTabCount:v8];
  return v9;
}

- (id)_oldestInactiveTabDocumentForPrivateBrowsing:(uint64_t)a3
{
  OUTLINED_FUNCTION_73();
  if (v11)
  {
    v13 = v11;
    if (v12)
    {
      [v11 privateTabDocuments];
    }

    else
    {
      [v11 tabDocuments];
    }

    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_5_0();
    v15 = v14;
    OUTLINED_FUNCTION_20();
    v17 = [v16 countByEnumeratingWithState:? objects:? count:?];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *a11;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          OUTLINED_FUNCTION_35();
          if (v22 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(a10 + 8 * i);
          v24 = [v13 activeTabDocument];

          if (v24 != v23)
          {
            if (v19)
            {
              [v19 lastViewedTime];
              v26 = v25;
              [v23 lastViewedTime];
              if (v27 < v26)
              {
                v28 = v23;

                v19 = v28;
              }
            }

            else
            {
              v19 = v23;
            }
          }
        }

        OUTLINED_FUNCTION_20();
        v18 = OUTLINED_FUNCTION_76(v29, v30, v31, v32);
      }

      while (v18);
    }
  }

  OUTLINED_FUNCTION_72();

  return v33;
}

- (BOOL)_makeRoomForNewTab:(_BYTE *)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = *a2;
  if ([a1 canAddNewTabForPrivateBrowsing:{objc_msgSend(v4, "isPrivateBrowsingEnabled")}] & 1) != 0 || (a1[112])
  {
    v5 = 1;
  }

  else
  {
    v7 = [v4 isPrivateBrowsingEnabled];
    v14 = [(TabController *)a1 _oldestInactiveTabDocumentForPrivateBrowsing:v7, v8, v9, v10, v11, v12, v13, v21, v22, v23];
    v15 = v14;
    v5 = v14 != 0;
    if (v14)
    {
      v16 = [v14 sessionState];
      if (v16)
      {
        v17 = OUTLINED_FUNCTION_34();
        v19 = [(TabController *)v17 _unhibernateTabIfNeeded:v18];
        [v19 restoreSessionState:v16 andNavigate:0];
        v20 = v19;
        *a2 = v19;
      }

      OUTLINED_FUNCTION_45(a1, v15);
    }
  }

  return v5;
}

- (void)performBatchUpdatesWithBlock:(id)a3
{
  v5 = a3;
  if (self)
  {
    [(TabCollectionViewManager *)self->_tabCollectionViewManager beginFixingTabBarItems];
    [(TabCollectionViewManager *)self->_tabCollectionViewManager beginFixingTabOverviewItems];
    [(TabControllerNotificationManager *)self->_notificationManager willBeginUpdates];
  }

  OUTLINED_FUNCTION_85();
  v4();
  [(TabController *)self _didPerformBatchUpdates];
}

- (void)_reuseTabAfterInsertion:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    objc_opt_class();
    OUTLINED_FUNCTION_69();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = +[(WBReusableTabManager *)ReusableTabManager];
      v7 = [v6 isTabSuspended:v5];

      if (v7)
      {
        WeakRetained = objc_loadWeakRetained(a1 + 1);
        +[(WBReusableTabManager *)ReusableTabManager];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_26() uuid];
        objc_claimAutoreleasedReturnValue();
        v9 = [OUTLINED_FUNCTION_13() reuseTabForUUID:?];

        [OUTLINED_FUNCTION_39() setBrowserController:? afterTabGroupReuse:?];
        v10 = [a1 allTabGroups];
        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_16();
        v11 = v5;
        OUTLINED_FUNCTION_43();
        v12 = [v10 safari_firstObjectPassingTest:?];

        if (([OUTLINED_FUNCTION_44() isTabGroupActive:?] & 1) == 0)
        {
          v13 = [v11 tabGroupTab];
          [(TabController *)a1 _removeTab:v13 fromTabGroup:v12, v14, v15, v16, v17, v18, v19, v20, v21, __41__TabController__reuseTabAfterInsertion___block_invoke, &unk_2781D9900, v22];
        }

        [(TabController *)a1 _forceUpdateTabGroupTitleIfNeeded:v12];
      }
    }
  }
}

- (void)_removeTab:(uint64_t)a3 fromTabGroup:(uint64_t)a4
{
  OUTLINED_FUNCTION_95();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v15;
  v21 = v20;
  if (v17)
  {
    v22 = *(v17 + 48);
    v23 = [v20 uuid];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v19;
    OUTLINED_FUNCTION_79();
    [v22 updateTabsInTabGroupWithUUID:v23 persist:1 usingBlock:?];

    ++*(v17 + 152);
    if ([v21 isPrivateBrowsing] && (objc_msgSend(OUTLINED_FUNCTION_17(), "isTabGroupActive:") & 1) == 0)
    {
      v24 = objc_alloc(MEMORY[0x277CCAD78]);
      [OUTLINED_FUNCTION_31() uuid];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_13() initWithUUIDString:?];
      v25 = [OUTLINED_FUNCTION_9() tabWithUUID:?];

      if (v25)
      {
        [(TabController *)v17 _closeTab:v25 animated:0 allowAddingToRecentlyClosedTabs:1 keepWebViewAlive:0 showAutoCloseTabsAlert:1];
      }

      if (v25 == *(v17 + 280))
      {
        [*(v17 + 24) firstObject];
        objc_claimAutoreleasedReturnValue();
        v26 = OUTLINED_FUNCTION_26();
        v27 = [(TabController *)v26 _unhibernateTabIfNeeded:v22];
        v28 = *(v17 + 280);
        *(v17 + 280) = v27;

        [v17 updateActiveTab];
      }

      [(TabController *)v17 _createInitialPrivateTabIfNeeded];
    }

    --*(v17 + 152);
  }

  OUTLINED_FUNCTION_94();
}

- (void)_insertTab:(unint64_t)a3 atIndex:(uint64_t)a4 inBackground:(unsigned int)a5 animated:(char)a6 updateUI:
{
  v49 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = v11;
  if (a1)
  {
    v13 = [v11 isPrivateBrowsingEnabled];
    OUTLINED_FUNCTION_54();
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 24;
    }

    v17 = *(a1 + v16);
    if ([v17 containsObject:v12])
    {
      [v17 removeObject:v12];
      if ([v17 count] < a3)
      {
        a3 = [v17 count];
      }

      [v17 insertObject:v12 atIndex:a3];
      v18 = v12;
    }

    else
    {
      v40 = a5;
      v19 = [MEMORY[0x277D499B8] sharedLogger];
      [v19 reportTabUpdatedWithUpdateType:4];

      [*(a1 + 272) willBeginUpdates];
      v46 = v12;
      v20 = [(TabController *)a1 _makeRoomForNewTab:?];
      v18 = v46;

      if (v20)
      {
        if ([v17 count] <= a3)
        {
          [OUTLINED_FUNCTION_23() addObject:?];
        }

        else
        {
          [OUTLINED_FUNCTION_23() insertObject:? atIndex:?];
        }

        v24 = v40;
        [(TabController *)a1 _reuseTabAfterInsertion:v18];
      }

      else
      {
        v21 = 288;
        if (v13)
        {
          v21 = 280;
        }

        v22 = *(a1 + v21);
        v23 = [*(a1 + v16) copy];
        if ([v23 containsObject:v22])
        {
          [a1 replaceTabDocument:v22 withTabDocument:v18];
          v24 = v40;
        }

        else
        {
          v25 = WBS_LOG_CHANNEL_PREFIXTabs();
          v24 = v40;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            v26 = @"NO";
            if (v13)
            {
              v26 = @"YES";
            }

            v27 = v26;
            *buf = 138543362;
            v48 = v27;
            _os_log_fault_impl(&dword_215819000, v25, OS_LOG_TYPE_FAULT, "Active tab document is not present in the list of tab documents; private browsing enabled: %{public}@", buf, 0xCu);
          }

          [OUTLINED_FUNCTION_23() addObject:?];
          a4 = 0;
        }
      }

      [v18 setHasBeenInserted:1];
      [*(a1 + 272) didInsertTabDocument:v18 inBackground:a4];
      if (([*(a1 + 184) containsObject:v18] & 1) == 0)
      {
        OUTLINED_FUNCTION_1_6();
        v42 = 3221225472;
        v43 = __67__TabController__insertTab_atIndex_inBackground_animated_updateUI___block_invoke;
        v44 = &unk_2781D4D40;
        v45 = v18;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      [a1 didUpdateTabDocuments];
      if (a6)
      {
        [v18 setNeedsNewTabSnapshot];
        v28 = +[Application sharedApplication];
        [v28 updateTabCount];

        [*(a1 + 72) updateTabOverviewItems];
        WeakRetained = objc_loadWeakRetained((a1 + 8));
        [WeakRetained clearCachedTabCompletionData];
        if (!v24 || ([*(a1 + 72) hasTabBar] & 1) != 0 || (objc_msgSend(a1, "activeTabDocument"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isShowingFindOnPage"), v30, (v31 & 1) == 0))
        {
          if (a4)
          {
            [v18 lastViewedTime];
            if (v32 == 0.0)
            {
              [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
              [v18 setLastViewedTime:?];
            }
          }

          else
          {
            [OUTLINED_FUNCTION_17() setActiveTab:? animated:?];
          }

          [*(a1 + 72) updateTabBarAnimated:v24 keepingTabVisible:v18];
          v33 = [WeakRetained configuration];
          v34 = [v33 allowsSearchFeedback];

          if (v34)
          {
            v35 = [WeakRetained rootViewController];
            v36 = [v35 capsuleCollectionViewLayout];
            v37 = [v36 integerValue] != 2;

            v38 = +[UniversalSearchSession sharedSession];
            v39 = [v38 feedbackDispatcher];
            [v39 sendNewTabFeedback:v37];
          }
        }

        [(TabController *)a1 _sendDidEndDocumentUpdates];
      }

      else
      {
        [(TabController *)a1 _sendDidEndDocumentUpdates];
      }
    }

    v12 = v18;
  }
}

- (void)insertTab:(id)a3 afterTab:(id)a4 inBackground:(BOOL)a5 animated:(BOOL)a6
{
  OUTLINED_FUNCTION_77();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v19 = v11;
  v16 = -[TabController _indexForInsertionAfterTab:withPrivateBrowsingEnabled:](v13, v15, [v19 isPrivateBrowsingEnabled]);

  [(TabController *)v13 _insertTab:v19 atIndex:v16 inBackground:v9 animated:v7 updateUI:(*(v13 + 112) & 1) == 0];
  OUTLINED_FUNCTION_74();
}

- (uint64_t)_indexForInsertionAfterTab:(int)a3 withPrivateBrowsingEnabled:
{
  v5 = a2;
  if (a1)
  {
    v6 = 16;
    if (a3)
    {
      v6 = 24;
    }

    v7 = [*(a1 + v6) copy];
    if (v5 && (v8 = [OUTLINED_FUNCTION_18() indexOfObject:?], v8 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = [v7 count];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __60__TabController_insertTabs_beforeTab_inBackground_animated___block_invoke()
{
  OUTLINED_FUNCTION_53();
  v7 = v2;
  v3 = [v7 isPrivateBrowsingEnabled];
  if (v3)
  {
    v5 = v1 + 48;
    v4 = *(v1 + 48);
  }

  else
  {
    v5 = v1 + 56;
    v4 = *(v1 + 56);
  }

  v6 = *(*(v4 + 8) + 24);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(TabController *)*(v1 + 32) _indexForInsertionBeforeTab:v3 withPrivateBrowsingEnabled:?];
    *(*(*v5 + 8) + 24) = v6;
  }

  [(TabController *)*(v1 + 32) _insertTab:v7 atIndex:v6 inBackground:*(v1 + 64) animated:*(v1 + 65) updateUI:v0 == 0];
}

- (id)_insertNewBlankTabDocumentWithPrivateBrowsing:(void *)a1 inBackground:(int)a2 animated:(char)a3
{
  if (a1)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    a1 = [TabController _insertNewBlankTabDocumentWithOptions:a1 inBackground:v4 animated:a3];
    v3 = vars8;
  }

  return a1;
}

- (id)_insertNewBlankTabDocumentWithOptions:(uint64_t)a1 inBackground:(char)a2 animated:(char)a3
{
  if (!a1)
  {
    v8 = 0;
    goto LABEL_30;
  }

  if ((a2 & 3) == 2)
  {
    v6 = 1;
  }

  else if ((a2 & 3) == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [a1 isPrivateBrowsingEnabled];
  }

  v7 = *(a1 + 32);
  if (!v7 || v6 != [v7 isPrivateBrowsingEnabled])
  {
    v10 = [TabDocument alloc];
    v11 = OUTLINED_FUNCTION_29();
    [(TabController *)v11 _controlledByAutomation];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    OUTLINED_FUNCTION_24();
    v8 = [v13 initWithTitle:0 URL:WeakRetained UUID:0 privateBrowsingEnabled:? controlledByAutomation:? hibernated:? bookmark:? browserController:? relatedWebView:?];

    v14 = [a1 activeTabDocument];
    [v8 setNextLoadComesFromSearchPage:{objc_msgSend(v14, "isSearchPage")}];

    [v8 setIsBlank:1];
    [v8 setScrollPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    v15 = [*(a1 + 72) tabThumbnailCollectionView];
    if ([v15 presentationState])
    {
      v16 = [a1 currentTabs];
      v17 = [v16 count];

      if (v17 == 1)
      {
        [*(a1 + 72) setShouldDeferSnapshotRequest:1];
      }
    }

    else
    {
    }

    if (v6 != [a1 isPrivateBrowsingEnabled])
    {
      v18 = 0;
LABEL_29:
      [v8 displayNewTabOverridePageIfNecessary];
      [OUTLINED_FUNCTION_25() insertTab:? afterTab:? inBackground:? animated:?];

      goto LABEL_30;
    }

    v19 = *(a1 + 304);
    if ((a2 & 0xC) == 8)
    {
      v20 = [v19 tabInsertionHintForPosition:0];
    }

    else
    {
      if ((a2 & 0xC) == 4)
      {
        [v19 tabInsertionHintForNewBlankTabInCurrentContext];
      }

      else
      {
        [v19 tabInsertionHintForNewBlankTab];
      }
      v20 = ;
    }

    v21 = v20;
    v18 = [v20 tabToInsertAfter];
    v22 = [v21 relationType];
    if (v22 == 2)
    {
      [a1 activeTabDocument];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_57() updateAncestryToChildOfTopLevelAncestorRelatedTab:v15];
    }

    else
    {
      if (v22 != 1)
      {
LABEL_28:

        goto LABEL_29;
      }

      [a1 activeTabDocument];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_57() updateAncestryWithParentTab:v15];
    }

    goto LABEL_28;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 32);
  *(a1 + 32) = 0;

  if ((a3 & 1) == 0)
  {
    [OUTLINED_FUNCTION_25() setActiveTabDocument:? animated:?];
  }

LABEL_30:

  return v8;
}

- (uint64_t)_controlledByAutomation
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if ([WeakRetained isControlledByAutomation])
  {
    v2 = +[Application sharedApplication];
    v3 = [v2 automationController];
    v4 = [v3 canCreateNewAutomationTabs];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_openBlankTabDocument
{
  if (a1)
  {
    [a1 isPrivateBrowsingEnabled];
    OUTLINED_FUNCTION_49();
    a1 = [TabController _insertNewBlankTabDocumentWithPrivateBrowsing:v2 inBackground:v3 animated:v4];
    v1 = vars8;
  }

  return a1;
}

- (void)_addNewActiveTabOverviewTab
{
  if (!a1)
  {
    return;
  }

  [OUTLINED_FUNCTION_68(a1) setShouldDeferSnapshotRequest:1];
  v2 = *(v1 + 32);
  if (!v2)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v3 = [v2 isPrivateBrowsingEnabled];
  v4 = [v1 isPrivateBrowsingEnabled];
  v5 = *(v1 + 32);
  if (v3 != v4)
  {
LABEL_12:
    *(v1 + 32) = 0;

    [v1 isPrivateBrowsingEnabled];
    OUTLINED_FUNCTION_49();
    v7 = [TabController _insertNewBlankTabDocumentWithOptions:v9 inBackground:v10 animated:v11];
    goto LABEL_5;
  }

  v12 = v5;
  v6 = *(v1 + 32);
  *(v1 + 32) = 0;

  [*(v1 + 72) updateTabOverviewItems];
  v7 = v12;
LABEL_5:
  v13 = v7;
  [v1 setActiveTabDocument:v7];
  v8 = [*(v1 + 72) tabThumbnailCollectionView];
  if (objc_opt_respondsToSelector())
  {
    [v8 dismissWithAddTabAnimation];
  }

  else
  {
    [v8 dismissAnimated:1];
  }
}

- (void)_openBlankTabDocumentInTabBarWithOptions:(uint64_t)a1
{
  if (a1)
  {
    [OUTLINED_FUNCTION_68(a1) beginFixingTabBarItems];
    OUTLINED_FUNCTION_49();
    [TabController _insertNewBlankTabDocumentWithOptions:v4 inBackground:v5 animated:v6];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4() setActiveTabDocument:a2];

    [v2[9] endFixingTabBarItems];
    [v2 activeTabDocument];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_52() updateTabBarAnimated:1 keepingTabVisible:?];
  }
}

- (void)_openLibrary:cloudTabDeviceID:
{
  OUTLINED_FUNCTION_53();
  v17 = v3;
  v4 = v0;
  if (v1)
  {
    v5 = [v1 activeTabDocument];
    v6 = [v5 libraryType];
    if (WBSIsEqual())
    {
      v7 = [v1 activeTabDocument];
      v8 = [v7 cloudTabDeviceID];
      v2 = WBSIsEqual();

      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    v9 = [*(v1 + 72) tabThumbnailCollectionView];
    [v9 dismissAnimated:0];

    if (!*(v1 + 168))
    {
      v10 = [v1 tabGroups];
      v11 = [v10 firstObject];
      [v11 uuid];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_9() setActiveTabGroupUUID:?];
    }

    WeakRetained = objc_loadWeakRetained((v1 + 8));
    v13 = [TabDocument alloc];
    v14 = OUTLINED_FUNCTION_33();
    [(TabController *)v14 _controlledByAutomation];
    OUTLINED_FUNCTION_24();
    v16 = [v15 initWithTitle:0 URL:WeakRetained UUID:0 privateBrowsingEnabled:? controlledByAutomation:? hibernated:? bookmark:? browserController:? relatedWebView:?];
    [v16 setIsBlank:1];
    [v16 setLibraryType:v17];
    [OUTLINED_FUNCTION_48() setCloudTabDeviceID:?];
    [OUTLINED_FUNCTION_39() setActiveTabDocument:?];
    [WeakRetained updateUnifiedBarVisibility];
  }

LABEL_4:
}

- (void)closeTab:(id)a3 animated:(BOOL)a4
{
  if (self)
  {
    OUTLINED_FUNCTION_38(self, a3, a4, 1);
  }
}

- (void)closeTabWithURL:(id)a3 UUID:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [OUTLINED_FUNCTION_86() tabWithUUID:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 url];
    if ([v10 safari_isSameAsURLRemovingFragment:v6])
    {
      v11 = [(TabController *)self currentTabs];
      v12 = [v11 containsObject:v9];

      if (v12)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [OUTLINED_FUNCTION_26() UUIDString];
          *buf = 138543362;
          v42 = v15;
          _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Closing tab with UUID %{public}@", buf, 0xCu);
        }

        if (self)
        {
          OUTLINED_FUNCTION_49();
          [(TabController *)v16 _closeTab:v17 animated:v18 allowAddingToRecentlyClosedTabs:v19 keepWebViewAlive:0 showAutoCloseTabsAlert:1];
        }

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v20 = [(TabController *)self activeTabGroup];
  v21 = [v20 isLocal];

  if ((v21 & 1) == 0)
  {
    v22 = [(TabController *)self windowState];
    v23 = [v22 localTabGroup];

    v24 = [v23 tabs];
    OUTLINED_FUNCTION_4_1();
    v36 = 3221225472;
    v37 = __38__TabController_closeTabWithURL_UUID___block_invoke;
    v38 = &unk_2781D99A0;
    v39 = a4;
    v40 = v6;
    v25 = [v24 safari_filterObjectsUsingBlock:v35];

    v26 = [v25 count];
    if (v26)
    {
      v27 = v26;
      v28 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v42 = v27;
        OUTLINED_FUNCTION_75(&dword_215819000, v29, v30, "Closing %zu tabs in local tab group", buf);
      }

      tabGroupManager = self->_tabGroupManager;
      v32 = [v23 uuid];
      OUTLINED_FUNCTION_0_5();
      v33 = v25;
      OUTLINED_FUNCTION_79();
      [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:v32 persist:1 usingBlock:?];
    }
  }

LABEL_15:
}

- (void)_detachTab:(unsigned int)a3 animated:
{
  v8 = a2;
  if (a1)
  {
    v5 = [a1 currentTabs];
    v6 = [v5 containsObject:v8];

    if (v6)
    {
      [(TabController *)a1 _closeTab:v8 animated:a3 allowAddingToRecentlyClosedTabs:0 keepWebViewAlive:1 showAutoCloseTabsAlert:0];
      [v8 resetTabViewItems];
    }

    else
    {
      v7 = [(TabController *)a1 mutableAlternateTabs];
      [v7 removeObject:v8];
    }
  }
}

- (void)_detachTabs:(id *)a1
{
  v6 = a2;
  if (a1)
  {
    [a1 currentTabs];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_19() firstObject];
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_8_0() containsObject:?];

    if (v7)
    {
      v8 = [(TabController *)a1 mutableCurrentTabs];
      [v8 removeObjectsInArray:v6];

      v9 = [a1 activeTabDocument];
      if (v9)
      {
        v10 = [OUTLINED_FUNCTION_23() containsObject:?];
      }

      else
      {
        v10 = 0;
      }

      [a1[34] didCloseTabDocuments:v6 includingActiveTab:v10];
      OUTLINED_FUNCTION_5_0();
      v12 = v6;
      OUTLINED_FUNCTION_20();
      v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
      if (v14)
      {
        v15 = v14;
        OUTLINED_FUNCTION_81();
        do
        {
          for (i = 0; i != v15; ++i)
          {
            OUTLINED_FUNCTION_35();
            if (v17 != v4)
            {
              objc_enumerationMutation(v12);
            }

            [*(v19 + 8 * i) resetTabViewItems];
          }

          OUTLINED_FUNCTION_20();
          v15 = [v12 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v15);
      }

      v18 = [a1[9] tabThumbnailCollectionView];
      [v18 setItemToActivate:0];

      [a1[9] updateTabBarAnimated:0];
    }

    else
    {
      v11 = [(TabController *)a1 mutableAlternateTabs];
      [v11 removeObjectsInArray:v6];
    }
  }
}

- (void)_sendEventsForAutoFillTelemetryForClosingTabs:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_20();
    v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          OUTLINED_FUNCTION_35();
          if (v8 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(v10 + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 sendEventsForAutoFillTelemetry];
          }

          ++v7;
        }

        while (v5 != v7);
        OUTLINED_FUNCTION_20();
        v5 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v5);
    }
  }
}

- (void)_addTabsToRecentlyClosed:(int)a3 includeUndo:
{
  HIDWORD(v26) = a3;
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v4;
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
          if (([v12 isBlank] & 1) == 0)
          {
            v13 = [v12 tabStateData];
            [v5 addObject:v13];
          }

          v14 = [v12 wbTab];
          [v6 addObject:v14];
        }

        v9 = OUTLINED_FUNCTION_93(v15, v16, &v27, v31);
      }

      while (v9);
    }

    v17 = [MEMORY[0x277D28F00] sharedBrowserSavedState];
    v18 = [a1 activeProfileIdentifier];
    [v17 addRecentlyClosedTabs:v5 inProfileIdentifier:v18];

    if (HIDWORD(v26))
    {
      [(TabController *)a1 _registerUndoActionsForClosedTabs:v6, v19, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43];
    }
  }
}

- (void)_hasPinnedStartPageExcludingTabs:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 activeTabGroup];
    v5 = [v4 usesGlobalPinnedTabs];

    if (v5)
    {
      a1 = 0;
    }

    else
    {
      v6 = [a1 currentTabs];
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_16();
      v7 = v3;
      OUTLINED_FUNCTION_43();
      a1 = [v6 safari_containsObjectPassingTest:?];
    }
  }

  return a1;
}

- (void)allowsClosingLastTab
{
  if (result)
  {
    [result activeTabGroup];
    objc_claimAutoreleasedReturnValue();
    v2 = OUTLINED_FUNCTION_12();
    v4 = [(TabController *)v2 canCloseLastTabInTabGroup:v3];

    return v4;
  }

  return result;
}

- (void)_presentAutomaticTabClosingPromptIfNeededForClosedTabCount:(int)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_95();
    a21 = v22;
    a22 = v23;
    v25 = v24;
    v27 = v26;
    if ([MEMORY[0x277D49E28] userHasPreferenceForAutomaticTabClosingInterval] & 1) != 0 || (objc_msgSend(v27, "isControlledByAutomation"))
    {
LABEL_15:
      OUTLINED_FUNCTION_94();
      return;
    }

    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    a12 = __76__TabController__presentAutomaticTabClosingPromptIfNeededForClosedTabCount___block_invoke;
    a13 = &unk_2781D4D40;
    a14 = v27;
    v28 = _Block_copy(&aBlock);
    v29 = [*(v27 + 72) tabThumbnailCollectionView];
    if ([v29 presentationState] == 1)
    {
    }

    else
    {
      v30 = [v29 presentationState];

      if (v30 != 2)
      {
        v31 = *(v27 + 136);
LABEL_9:
        if (v31 > 9)
        {
          goto LABEL_13;
        }

        v32 = *(v27 + 128);
        if (!v32)
        {
          [(TabController *)v27 _createVeryRecentlyClosedTabCountInvalidationTimer];
          v32 = *(v27 + 128);
        }

        v33 = v32 + v25;
        *(v27 + 128) = v33;
        if (v33 >= 6)
        {
LABEL_13:
          v34 = OUTLINED_FUNCTION_60();
          v35(v34);
        }

        goto LABEL_15;
      }
    }

    v31 = *(v27 + 136) + v25;
    *(v27 + 136) = v31;
    goto LABEL_9;
  }
}

- (void)_registerUndoActionsForClosedTabs:(uint64_t)a3
{
  OUTLINED_FUNCTION_91();
  a45 = v48;
  a46 = v49;
  v51 = v50;
  a34 = *MEMORY[0x277D85DE8];
  v53 = v52;
  v54 = v53;
  if (v51 && [v53 count])
  {
    v55 = *(v51 + 120);
    if (!v55)
    {
LABEL_6:
      v57 = OUTLINED_FUNCTION_34();
      [(TabController *)v57 _registerSingleUndoActionForClosedTabs:v58];
      goto LABEL_15;
    }

    v56 = [v55 type];
    if (v56 == 1)
    {
      OUTLINED_FUNCTION_5_0();
      v59 = v54;
      OUTLINED_FUNCTION_20();
      v61 = [v60 countByEnumeratingWithState:? objects:? count:?];
      if (v61)
      {
        v62 = v61;
        OUTLINED_FUNCTION_81();
        do
        {
          v63 = 0;
          do
          {
            OUTLINED_FUNCTION_35();
            if (v64 != v47)
            {
              objc_enumerationMutation(v59);
            }

            a17 = *(a10 + 8 * v63);
            [MEMORY[0x277CBEA60] arrayWithObjects:&a17 count:1];
            objc_claimAutoreleasedReturnValue();
            v65 = OUTLINED_FUNCTION_26();
            [(TabController *)v65 _registerSingleUndoActionForClosedTabs:v46];

            ++v63;
          }

          while (v62 != v63);
          OUTLINED_FUNCTION_20();
          v62 = [v59 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v62);
      }
    }

    else if (!v56)
    {
      goto LABEL_6;
    }
  }

LABEL_15:

  OUTLINED_FUNCTION_90();
}

- (id)_undoCloseAllTabsActionName
{
  if (a1)
  {
    [a1 numberOfCurrentNonHiddenTabs];
    a1 = _WBSLocalizedString();
    v1 = vars8;
  }

  return a1;
}

- (void)_tabGroupTabDidUpdatePinned:(void *)a3 inTabGroup:
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    if ([v8 usesGlobalPinnedTabs])
    {
      if ([v7 isPinned])
      {
        if ([v7 isSyncable])
        {
          v23[0] = v7;
          [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_33() deleteTabs:v3];

          [*(a1 + 48) flushDeletedTabsInTabGroup:v9];
          v17 = objc_alloc(MEMORY[0x277D7B538]);
          [OUTLINED_FUNCTION_21() uuid];
          objc_claimAutoreleasedReturnValue();
          v18 = [OUTLINED_FUNCTION_37() deviceIdentifier];
          v12 = [OUTLINED_FUNCTION_28() initWithUUID:? deviceIdentifier:?];

          [OUTLINED_FUNCTION_48() adoptAttributesFromTab:?];
        }

        else
        {
          [OUTLINED_FUNCTION_18() removeTab:?];
          v12 = v7;
        }

        v19 = *(a1 + 264);
        v20 = OUTLINED_FUNCTION_66();
        v13 = [(TabController *)v20 _containerForPinnedTabsInTabGroup:v21];
        [v19 appendTab:v12 inContainer:v13];
      }

      else
      {
        if (![v9 isSyncable])
        {
          OUTLINED_FUNCTION_63();
          [v16 moveTab:? toTabGroup:? afterTab:?];
          goto LABEL_11;
        }

        v10 = objc_alloc(MEMORY[0x277D7B538]);
        [OUTLINED_FUNCTION_21() uuid];
        objc_claimAutoreleasedReturnValue();
        v11 = [OUTLINED_FUNCTION_37() deviceIdentifier];
        v12 = [OUTLINED_FUNCTION_28() initWithUUID:? deviceIdentifier:?];

        [OUTLINED_FUNCTION_48() adoptAttributesFromTab:?];
        v13 = *(a1 + 264);
        v14 = [v7 uuid];
        [OUTLINED_FUNCTION_44() removeTabWithUUID:? persist:?];

        v22 = v12;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_1() insertTabs:? afterTab:?];
      }
    }

    else
    {
      v15 = [OUTLINED_FUNCTION_18() lastPinnedTabExcluding:?];
      if ((WBSIsEqual() & 1) == 0)
      {
        [OUTLINED_FUNCTION_18() reorderTab:? afterTab:?];
      }
    }
  }

LABEL_11:
}

- (void)moveTab:(id)a3 overTab:(id)a4
{
  OUTLINED_FUNCTION_77();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v11 = OUTLINED_FUNCTION_4();
  v18 = [(TabController *)v11 mutableCurrentTabs];
  v12 = [v18 indexOfObject:v5];
  v13 = [v18 indexOfObject:v9];

  [v18 removeObjectAtIndex:v12];
  [v18 insertObject:v5 atIndex:v13];
  [v7[9] updateTabOverviewItems];
  [v7[9] updateTabBarAnimated:1 keepingTabVisible:v5];
  [v7[34] didMoveTabDocument:v5 overTabDocument:v5];

  WeakRetained = objc_loadWeakRetained(v7 + 1);
  [WeakRetained clearCachedTabCompletionData];

  [v7 didUpdateTabDocuments];
  v15 = [MEMORY[0x277D499B8] sharedLogger];
  [v15 reportTabUpdatedWithUpdateType:8];

  OUTLINED_FUNCTION_74();
}

- (id)_tabDocumentForWebClip:(uint64_t)a3
{
  OUTLINED_FUNCTION_95();
  v17 = v16;
  v19 = v18;
  v20 = v19;
  if (v17)
  {
    [v19 uuid];
    objc_claimAutoreleasedReturnValue();
    if ([OUTLINED_FUNCTION_19() fullScreen])
    {
      v21 = [(TabDocument *)v17 currentTabs];
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_16();
      v22 = v14;
      OUTLINED_FUNCTION_43();
      v23 = [v21 safari_firstObjectPassingTest:?];
    }

    else
    {
      [v20 pageURL];
      objc_claimAutoreleasedReturnValue();
      v23 = [OUTLINED_FUNCTION_9() tabForURL:?];
    }

    [(TabController *)v17 _unhibernateTabIfNeeded:v23];
    objc_claimAutoreleasedReturnValue();
  }

  OUTLINED_FUNCTION_94();

  return v24;
}

- (uint64_t)_tabShouldBeHiddenFromWebExtensions:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 isPrivate])
  {
    v5 = [a1 privateTabs];
    if ([v5 count] == 1 && objc_msgSend(v4, "isBlank"))
    {
      v6 = [v4 isActive] ^ 1;
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

- (id)tabWithIDForWebExtensions:(double)a3
{
  v5 = [(TabController *)self normalAndPrivateTabs];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_16();
  v12 = __43__TabController_tabWithIDForWebExtensions___block_invoke;
  v13 = &__block_descriptor_40_e29_B16__0___CollectionViewTab__8l;
  v14 = a3;
  v7 = [v6 safari_firstObjectPassingTest:v11];

  if ([(TabController *)self _tabShouldBeHiddenFromWebExtensions:v7])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v8;
}

- (id)_dropWBTab:(void *)a3 fromBrowserController:(unint64_t)a4 atIndex:(int)a5 pinned:(void *)a6 anchorTab:
{
  v79[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v62 = a6;
  if (a1)
  {
    v13 = [v12 tabController];
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    v15 = [OUTLINED_FUNCTION_19() uuid];
    [a3 initWithUUIDString:v15];
    v63 = [OUTLINED_FUNCTION_6_1() tabWithUUID:?];

    v59 = [MEMORY[0x277D75D18] areAnimationsEnabled];
    if (([v11 canSetPinned] & 1) == 0)
    {
      a5 = [v11 isPinned];
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke;
    aBlock[3] = &__block_descriptor_33_e22_v16__0__WBMutableTab_8l;
    v76 = a5;
    v64 = _Block_copy(aBlock);
    [v11 tabGroupUUID];
    objc_claimAutoreleasedReturnValue();
    v16 = OUTLINED_FUNCTION_86();
    v17 = [(TabController *)v16 _foreignLocalTabGroupWithUUID:v13];

    v18 = [a1 activeTabGroup];
    v19 = v18;
    v60 = v18;
    v61 = v12;
    if (a5 && ([v18 usesGlobalPinnedTabs] & 1) != 0)
    {
      v19 = 0;
    }

    v20 = v19;
    v21 = [v17 isEqual:v20];
    v22 = [v17 profileIdentifier];
    v23 = [v20 profileIdentifier];
    v24 = WBSIsEqual();

    if ((v17 != 0) != (v20 != 0))
    {
      if (!v20 && ((a5 ^ 1) & 1) == 0)
      {
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke_2;
        v70[3] = &unk_2781D9B38;
        v70[4] = a1;
        v22 = v11;
        v71 = v22;
        v72 = v63;
        v73 = v64;
        v74 = a4;
        v25 = _Block_copy(v70);
        [a1[33] updatePinnedTabsInContainer:a1 usingBlock:v25];
        v26 = a1[6];
        v27 = [v17 uuid];
        OUTLINED_FUNCTION_4_1();
        v66 = 3221225472;
        v67 = __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke_4;
        v68 = &unk_2781D97D0;
        v69 = v22;
        [v26 updateTabsInTabGroupWithUUID:v27 persist:1 usingBlock:v65];

        v28 = v63;
        v12 = v61;
        v29 = v62;
LABEL_26:
        v42 = objc_alloc(MEMORY[0x277CCAD78]);
        [OUTLINED_FUNCTION_4() uuid];
        objc_claimAutoreleasedReturnValue();
        v43 = [OUTLINED_FUNCTION_6_1() initWithUUIDString:?];

        v44 = [a1[13] objectForKeyedSubscript:v43];
        v45 = v44;
        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = v43;
        }

        v47 = [a1 tabWithUUID:v46];

        goto LABEL_30;
      }

      v12 = v61;
      v29 = v62;
      v28 = v63;
      if (!v20)
      {
        goto LABEL_26;
      }

      v79[0] = v11;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:1];
      v35 = [v62 wbTab];
      [OUTLINED_FUNCTION_17() moveTabs:? toTabGroup:? afterTab:? withoutPersistingTabGroupsWithUUIDStrings:?];

      v22 = [v11 uuid];
      [v20 isSyncable];
      [OUTLINED_FUNCTION_17() removeTabWithUUID:? persist:?];

      v36 = [MEMORY[0x277D499B8] sharedLogger];
      [v36 reportTabUpdatedWithUpdateType:8];

LABEL_22:
      v37 = objc_alloc(MEMORY[0x277CCAD78]);
      v38 = [OUTLINED_FUNCTION_19() uuid];
      [OUTLINED_FUNCTION_44() initWithUUIDString:?];
      v39 = [OUTLINED_FUNCTION_6_1() objectForKeyedSubscript:?];
      v40 = [v39 UUIDString];

      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = [v11 uuid];
      }

      v22 = v41;
      [a1[6] updateTabWithUUID:v41 persist:0 notify:1 usingBlock:v64];

      v28 = v63;
      goto LABEL_26;
    }

    v28 = v63;
    if (v63)
    {
      v30 = v21;
    }

    else
    {
      v30 = 0;
    }

    if ((v30 & 1) == 0)
    {
      if (a4)
      {
        v23 = [a1 currentTabs];
        v54 = [v23 objectAtIndexedSubscript:a4 - 1];
        v22 = [v54 wbTab];

        v28 = v63;
      }

      else
      {
        v22 = 0;
      }

      v29 = v62;
      v78 = v11;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
      objc_claimAutoreleasedReturnValue();
      v55 = OUTLINED_FUNCTION_31();
      [(TabController *)v55 updateLastSelectedTabUUIDForClosingWBTabs:v23];

      if ((v24 & 1) == 0)
      {
        v56 = +[(WBReusableTabManager *)ReusableTabManager];
        v57 = objc_alloc(MEMORY[0x277CCAD78]);
        [OUTLINED_FUNCTION_37() uuid];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13() initWithUUIDString:?];
        [OUTLINED_FUNCTION_9() removeReusableTabWithUUID:?];

        v28 = v63;
      }

      v77 = v11;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_9() moveTabs:? toTabGroup:? afterTab:? withoutPersistingTabGroupsWithUUIDStrings:?];

      v58 = [MEMORY[0x277D499B8] sharedLogger];
      [v58 reportTabUpdatedWithUpdateType:8];

      v12 = v61;
      if (!v20)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    v12 = v61;
    v31 = [v61 tabController];

    if (v31 == a1)
    {
      v22 = [a1 currentTabs];
      v32 = [v22 indexOfObject:v63];

      v33 = a1;
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = [a1 currentTabs];
        [v22 objectAtIndexedSubscript:{((__PAIR128__(a4, v32) - a4) >> 64)}];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_86() moveTab:v63 overTab:v32];

        goto LABEL_18;
      }

      v51 = v63;
      v52 = a4;
      v53 = v59;
    }

    else
    {
      v49 = [v61 tabController];
      v22 = v59;
      [(TabController *)v49 _detachTab:v63 animated:v59];

      WeakRetained = objc_loadWeakRetained(a1 + 1);
      [v63 setBrowserController:WeakRetained];

      v33 = a1;
      v51 = v63;
      v52 = a4;
      v53 = v59;
    }

    [(TabController *)v33 _insertTab:v51 atIndex:v52 inBackground:1 animated:v53 updateUI:1];
LABEL_18:
    v29 = v62;
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v47 = 0;
  v29 = v62;
LABEL_30:

  return v47;
}

void __60__TabController_replaceBlankActiveTabWithTabs_andSelectTab___block_invoke(uint64_t a1)
{
  [*(a1 + 32) insertTabs:*(a1 + 40) beforeTab:0 inBackground:1 animated:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    OUTLINED_FUNCTION_45(v2, *(a1 + 48));
    v2 = *(a1 + 32);
  }

  v3 = [(TabController *)v2 _unhibernateTabIfNeeded:?];
  [*(a1 + 32) setActiveTabDocument:v3];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained updateFavoritesForNewDocument];
}

- (void)replaceTabDocument:(id)a3 withTabDocument:(id)a4 committingSpeculativeLoad:(BOOL)a5
{
  v6 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [OUTLINED_FUNCTION_4() isPrivateBrowsingEnabled];
  if (v6)
  {
    [v9 tabGroupTab];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_33() setTabGroupTab:v5];
  }

  [v9 willClose];
  v12 = [(TabController *)self _mutableTabsForPrivateBrowsing:v11];
  v13 = [v12 indexOfObject:v9];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    [(TabController *)self willLoseOwnershipOfTab:v9];
    if (v6)
    {
      v16 = [v9 uuid];
      [a4 setUuid:v16];
    }

    [v12 replaceObjectAtIndex:v15 withObject:a4];
    [OUTLINED_FUNCTION_18() didReplaceTabDocument:?];
    v17 = [v9 webExtensionsController];
    OUTLINED_FUNCTION_63();
    [v18 didReplaceTab:? newTab:?];

    v19 = [(TabController *)self _activeTabDocumentForPrivateBrowsing:v11];

    OUTLINED_FUNCTION_63();
    [v20 didReplaceTabDocument:? withTabDocument:? replacedActiveTab:?];
    if (v6)
    {
      ++self->_updateTabsSuppressionCount;
    }

    if (v19 == v9)
    {
      if (v11 != [(TabController *)self isPrivateBrowsingEnabled])
      {
        v22 = OUTLINED_FUNCTION_66();
        [(TabController *)v22 _setActiveTabDocument:v23, v24, v25, v26, v27, v28, v29, *v30, *&v30[8], *&v30[16], v31, v32, v33, v34, v35, v36, v37];
        if (!v6)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      [OUTLINED_FUNCTION_40() setActiveTabDocument:?];
    }

    if (!v6)
    {
LABEL_17:
      [(TabController *)self didUpdateTabDocuments];
      [(TabCollectionViewManager *)self->_tabCollectionViewManager updateTabOverviewItems];
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      [WeakRetained clearCachedTabCompletionData];

      goto LABEL_7;
    }

LABEL_16:
    --self->_updateTabsSuppressionCount;
    goto LABEL_17;
  }

  v14 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    *v30 = 138478339;
    *&v30[4] = v9;
    *&v30[12] = 2113;
    *&v30[14] = a4;
    *&v30[22] = 2113;
    v31 = v12;
    _os_log_fault_impl(&dword_215819000, v14, OS_LOG_TYPE_FAULT, "Failed to find old tab document %{private}@ in all tab documents %{private}@ to be replaced with new tab document %{private}@, inserting with default ordering instead", v30, 0x20u);
  }

  [OUTLINED_FUNCTION_40() insertNewTabDocumentWithDefaultOrdering:? inBackground:? animated:?];
LABEL_7:
}

- (void)_replaceTabs:(uint64_t)a3 withTabs:(unsigned int)a4 persist:
{
  OUTLINED_FUNCTION_80();
  v106 = *MEMORY[0x277D85DE8];
  v8 = v7;
  v9 = v4;
  if (v5)
  {
    v10 = objc_alloc_init(MEMORY[0x277D49B60]);
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __47__TabController__replaceTabs_withTabs_persist___block_invoke;
    v100[3] = &unk_2781D58E8;
    v80 = v5;
    v100[4] = v5;
    v11 = v9;
    v101 = v11;
    v12 = v8;
    v102 = v12;
    [v10 setHandler:v100];
    if ([v12 count] || objc_msgSend(v11, "count"))
    {
      v13 = [v5 activeTabDocument];
      v14 = [(TabController *)v5 mutableCurrentTabs];
      if ([v14 count] && (v15 = objc_msgSend(v12, "count"), v15 == objc_msgSend(v14, "count")) && !objc_msgSend(v11, "count"))
      {
        ++*(v80 + 152);
        v59 = [(TabController *)v80 _openBlankTabDocument];
        --*(v80 + 152);
        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      [v14 removeObjectsInArray:v12];
      [OUTLINED_FUNCTION_28() safari_insertObjects:? afterObject:?];
      v17 = [v11 differenceFromArray:v12 withOptions:4];
      if ([v17 hasChanges])
      {
        v71 = __PAIR64__(a4, v16);
        v75 = v8;
        v76 = v14;
        v72 = v13;
        v73 = v10;
        v74 = v9;
        [*(v80 + 272) willBeginUpdates];
        [*(v80 + 72) beginFixingTabBarItems];
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v77 = v17;
        v18 = [v17 insertions];
        v19 = [v18 countByEnumeratingWithState:&v96 objects:v105 count:16];
        if (v19)
        {
          v12 = v19;
          v20 = *v97;
          v21 = MEMORY[0x277D85CD0];
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v97 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v96 + 1) + 8 * i);
              if ([v23 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v24 = [v23 object];
                [v24 setHasBeenInserted:1];
                [v24 setNeedsNewTabSnapshot];
                if (([*(v80 + 184) containsObject:v24] & 1) == 0)
                {
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __47__TabController__replaceTabs_withTabs_persist___block_invoke_2;
                  block[3] = &unk_2781D4D40;
                  v95 = v24;
                  dispatch_async(v21, block);
                }
              }
            }

            v12 = [v18 countByEnumeratingWithState:&v96 objects:v105 count:16];
          }

          while (v12);
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        obj = [v77 removals];
        v25 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
        if (v25)
        {
          v27 = v25;
          v26 = 0;
          v28 = *v91;
          v78 = v87;
          v29 = v80;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v91 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v90 + 1) + 8 * j);
              if ([v12 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v12 object];
                objc_claimAutoreleasedReturnValue();
                [OUTLINED_FUNCTION_62() willLoseOwnershipOfTab:?];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || (+[WBReusableTabManager sharedManager](ReusableTabManager, "sharedManager"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 isTabSuspended:v12], v31, (v32 & 1) == 0))
                {
                  [v12 willClose];
                  [v12 setClosed:1];
                }

                v33 = [v29 activeTabDocument];
                v34 = v12 == v33;

                if ([v12 isClosed])
                {
                  v35 = [v12 webExtensionsController];
                  v36 = [v35 tabIDToTabPositionForTabsInTransit];
                  v37 = MEMORY[0x277CCABB0];
                  [v12 idForWebExtensions];
                  v38 = [v37 numberWithDouble:?];
                  [v36 removeObjectForKey:v38];

                  OUTLINED_FUNCTION_27();
                  v87[0] = __47__TabController__replaceTabs_withTabs_persist___block_invoke_3;
                  v87[1] = &unk_2781D4C88;
                  v88 = v35;
                  v89 = v12;
                  v39 = v35;
                  dispatch_async(MEMORY[0x277D85CD0], v86);

                  v29 = v80;
                }

                v26 |= v34;
              }
            }

            v27 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
          }

          while (v27);
        }

        else
        {
          v26 = 0;
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v40 = [v77 insertions];
        v41 = [v40 countByEnumeratingWithState:&v82 objects:v103 count:16];
        if (v41)
        {
          v12 = v41;
          v42 = 0;
          v43 = *v83;
          v13 = v72;
          do
          {
            for (k = 0; k != v12; k = k + 1)
            {
              if (*v83 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v42 |= [*(*(&v82 + 1) + 8 * k) associatedIndex] != 0x7FFFFFFFFFFFFFFFLL;
            }

            v12 = [v40 countByEnumeratingWithState:&v82 objects:v103 count:16];
          }

          while (v12);
        }

        else
        {
          v42 = 0;
          v13 = v72;
        }

        v14 = v76;
        v45 = [MEMORY[0x277D4A8B0] tabIDToTabPositionDictionaryForTabs:v76];
        if (v42)
        {
          WeakRetained = objc_loadWeakRetained((v80 + 8));
          [WeakRetained browserWindowController];
          objc_claimAutoreleasedReturnValue();
          v47 = OUTLINED_FUNCTION_31();
          v14 = v76;
          v48 = [(TabController *)v47 _application];
          v12 = [v48 browserWindowController];

          if (v40 == v12)
          {
            v49 = [MEMORY[0x277D4A8B0] tabIDToTabPositionDictionaryForTabs:v76];
            v40 = [v76 firstObject];
            v50 = [v40 webExtensionsController];
            [v50 fireOnMovedEventForTabsWithPreviousTabPositions:v45 currentTabsPositions:v49];
          }
        }

        v51 = v80;
        if ((v71 | HIDWORD(v71)) == 1)
        {
          [v80 didUpdateTabDocuments];
        }

        v10 = v73;
        if (v26)
        {
          v52 = objc_alloc(MEMORY[0x277CCAD78]);
          v53 = [OUTLINED_FUNCTION_36() activeTabGroup];
          [v53 lastSelectedTabUUID];
          objc_claimAutoreleasedReturnValue();
          v54 = [OUTLINED_FUNCTION_62() initWithUUIDString:?];
          v40 = [OUTLINED_FUNCTION_18() tabWithUUID:?];

          if (v40 && ([OUTLINED_FUNCTION_28() containsObject:?] & 1) != 0)
          {
            v55 = v80;
          }

          else
          {
            v55 = v80;
            v56 = [(TabController *)v80 _firstUnpinnedTab];
            v57 = v56;
            if (v56)
            {
              v58 = v56;
            }

            else
            {
              v58 = [v14 firstObject];
            }

            v60 = v58;

            v40 = v60;
          }

          v61 = [(TabController *)v55 _unhibernateTabIfNeeded:v40];
          [(TabController *)v80 _setActiveTabDocument:v61, v62, v63, v64, v65, v66, v67, v71, v72, v73, v74, v75, v76, v77, v78, obj, v80];

          v51 = v81;
        }

        v68 = v51;
        v69 = objc_loadWeakRetained(v51 + 1);
        [v69 clearCachedTabCompletionData];
        [v68[34] didChangeCurrentTabDocuments];
        [v68 activeTabDocument];
        objc_claimAutoreleasedReturnValue();
        v70 = OUTLINED_FUNCTION_26();
        [(TabController *)v70 _switchActiveTabDocumentFromTabDocument:v13 toTabDocument:v40];

        [(TabController *)v68 _sendDidEndDocumentUpdates];
        [v68[9] endFixingTabBarItems];

        v9 = v74;
        v8 = v75;
        v17 = v77;
      }
    }
  }
}

- (id)_firstUnpinnedTab
{
  if (a1)
  {
    v1 = [a1 currentTabs];
    v2 = [v1 safari_firstObjectPassingTest:&__block_literal_global_599];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)reloadTabsUsingFilter:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 tabDocuments];
    OUTLINED_FUNCTION_20();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          OUTLINED_FUNCTION_35();
          if (v10 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(v16 + 8 * i);
          if (v3[2](v3, v11))
          {
            if ([v11 isLoading])
            {
              [v11 stopLoading];
            }

            [v11 reload];
          }
        }

        OUTLINED_FUNCTION_20();
        v7 = OUTLINED_FUNCTION_76(v12, v13, v14, v15);
      }

      while (v7);
    }
  }
}

- (void)webContentFilterChanged
{
  if (a1)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_DEFAULT, "Reloading non-hibernated tabs due to web content filter change", v3, 2u);
    }

    [(TabController *)a1 reloadTabsUsingFilter:?];
  }
}

- (void)_restoreEducationTabsIfNecessaryAnimated:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v4 = [WeakRetained configuration];
  if (![v4 allowsRestoringEducationTabs] || (*(a1 + 88) & 1) != 0)
  {
    goto LABEL_11;
  }

  v5 = +[(WBUFeatureManager *)FeatureManager];

  if (v5 == 2)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 safari_dateForKey:@"SafariEducationModeEducationTabsLastSyncDate"];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_33() cloudTabStore];
    v7 = [v6 currentDevice];

    [2 timeIntervalSinceReferenceDate];
    v9 = v8;
    v10 = [v7 lastModified];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;

    if (v9 < v12)
    {
      v13 = [v7 tabs];
      if ([v13 count] || *(a1 + 89) == 1)
      {
        *(a1 + 88) = 1;
        v14 = [WeakRetained browserWindowController];
        [v14 restoreEducationDeviceCloudTabs:v13 animated:a2];

        [a1 updateEducationTabsLastSyncDate];
      }
    }

LABEL_11:
  }
}

- (void)updateLockedBrowsingState
{
  v4 = [(WBWindowState *)self->_windowState privateTabGroup];
  [v4 uuid];
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_19();
  [(TabController *)v5 _reconfigureLibraryItemViewForTabGroupWithUUID:v2];

  v6 = [(TabController *)self privateTabDocuments];
  OUTLINED_FUNCTION_20();
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        OUTLINED_FUNCTION_35();
        if (v12 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [*(v13 + 8 * v11++) updateLockedBrowsingState];
      }

      while (v9 != v11);
      OUTLINED_FUNCTION_20();
      v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }
}

- (uint64_t)_performWithFixedTabBarItems:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = a2;
    [OUTLINED_FUNCTION_22() beginFixingTabBarItems];
    v5 = OUTLINED_FUNCTION_60();
    v6(v5);

    v7 = *(v3 + 72);

    return [v7 endFixingTabBarItems];
  }

  return result;
}

- (void)insertTabDocumentFromTabStateData:(id)a3
{
  v5 = a3;
  v6 = objc_alloc(OUTLINED_FUNCTION_22());
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [OUTLINED_FUNCTION_17() initWithTabStateData:? hibernated:? browserController:?];

  v8 = [(TabController *)self activeTabDocument];
  if ([v8 isBlank])
  {
    [(TabCollectionViewManager *)self->_tabCollectionViewManager beginFixingTabBarItems];
    [(TabController *)self activeTabDocument];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_19() insertTab:v10 afterTab:v3 inBackground:0 animated:1];

    OUTLINED_FUNCTION_45(self, v8);
    [(TabCollectionViewManager *)self->_tabCollectionViewManager endFixingTabBarItems];
    [(TabCollectionViewManager *)self->_tabCollectionViewManager updateTabBarAnimated:0];
  }

  else
  {
    [(TabController *)self insertTab:v10 afterTab:0 inBackground:0 animated:0];
  }

  v9 = [(TabController *)&self->super.isa tabThumbnailCollectionView];
  [v9 dismissAnimated:1];
}

- (id)_openTabForDroppedLinkAtIndex:(uint64_t)a3 pinned:
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v7 = [MEMORY[0x277D75D18] areAnimationsEnabled];
    v8 = v3[4];
    if (v8 && (v9 = [v8 isPrivateBrowsingEnabled], v9 == objc_msgSend(v3, "isPrivateBrowsingEnabled")))
    {
      v10 = v3[4];
      v11 = v3[4];
      v3[4] = 0;

      if ([v10 canSetPinned])
      {
        [v3 setTab:v10 isPinned:a3];
      }
    }

    else
    {
      v12 = [TabDocument alloc];
      objc_loadWeakRetained(v3 + 1);
      v10 = [OUTLINED_FUNCTION_13() initWithBrowserController:?];

      if ([v10 canSetPinned])
      {
        [v10 setPinned:a3];
      }

      [(TabController *)v3 _insertTab:v10 atIndex:v4 inBackground:1 animated:v7 updateUI:1];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_foreignLocalTabGroupWithUUID:(void *)a1
{
  v10 = a2;
  if (a1)
  {
    v11 = [(TabController *)a1 _tabGroupsFromAllWindows:v3];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v12 = v10;
    OUTLINED_FUNCTION_43();
    a1 = [v11 safari_firstObjectPassingTest:?];
  }

  return a1;
}

- (void)updateLastSelectedTabUUIDForClosingWBTabs:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [v3 firstObject];
    v5 = [v4 tabGroupUUID];

    v6 = [*(a1 + 48) tabGroupWithUUID:v5];
    v7 = [[TabGroupTabOrderProvider alloc] initWithTabGroup:v6];
    [*(a1 + 304) setTabOrderProvider:v7];
    v8 = [OUTLINED_FUNCTION_44() orderedTabsForTabs:?];

    v9 = [OUTLINED_FUNCTION_67() tabToSelectBeforeClosingTabs:?];
    v10 = [v9 identifier];

    [*(a1 + 304) setTabOrderProvider:a1];
    if (v10)
    {
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_16();
      v11 = v10;
      OUTLINED_FUNCTION_79();
      [OUTLINED_FUNCTION_48() updateTabGroupWithUUID:? persist:? usingBlock:?];
    }
  }
}

- (void)_hibernateTab:(char *)a1
{
  v4 = a2;
  if (a1)
  {
    v9 = v4;
    [v4 isPrivateBrowsingEnabled];
    OUTLINED_FUNCTION_54();
    if (!v6)
    {
      v5 = 24;
    }

    v7 = *&a1[v5];
    [v7 indexOfObject:v9];
    [OUTLINED_FUNCTION_22() willLoseOwnershipOfTab:v9];
    [v9 willClose];
    if (v2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [[HibernatedTab alloc] initWithTabDocument:v9];
      [OUTLINED_FUNCTION_4() replaceObjectAtIndex:v2 withObject:a1];
      v8 = [v9 webExtensionsController];
      [v8 didReplaceTab:v9 newTab:a1];
    }

    v4 = v9;
  }
}

- (void)_lockedPrivateBrowsingStateDidChange:(id)a3
{
  v7 = [a3 object];
  v4 = [(TabController *)self _application];
  if (v7 == v4)
  {
    v5 = [(TabController *)self isPrivateBrowsingEnabled];

    if (v5)
    {
      tabCollectionViewManager = self->_tabCollectionViewManager;

      [(TabCollectionViewManager *)tabCollectionViewManager updateTabOverviewItems];
    }
  }

  else
  {
  }
}

- (void)_cancelPendingUpdateUserActivityTimer
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      [v2 invalidate];
      v3 = *(a1 + 80);
      *(a1 + 80) = 0;
    }
  }
}

- (void)_updateUserActivityTimerFired
{
  [(TabController *)self _cancelPendingUpdateUserActivityTimer];
  normalActiveTabDocument = self->_normalActiveTabDocument;

  [normalActiveTabDocument updateUserActivity];
}

- (id)_tabGroupsFromAllWindows
{
  OUTLINED_FUNCTION_91();
  v13 = v12;
  if (v12)
  {
    v14 = [MEMORY[0x277CBEB18] array];
    WeakRetained = objc_loadWeakRetained((v13 + 8));
    v16 = [WeakRetained browserWindowController];
    v17 = [v16 browserControllers];

    OUTLINED_FUNCTION_5_0();
    v18 = v17;
    OUTLINED_FUNCTION_20();
    v20 = [v19 countByEnumeratingWithState:? objects:? count:?];
    if (v20)
    {
      v16 = v20;
      v21 = *a11;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          OUTLINED_FUNCTION_35();
          if (v23 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(a10 + 8 * i);
          v25 = [v24 windowState];
          [v25 localTabGroup];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_62() safari_addObjectUnlessNil:?];

          v26 = [v24 windowState];
          v27 = [v26 privateTabGroup];
          [v14 safari_addObjectUnlessNil:v27];
        }

        OUTLINED_FUNCTION_20();
        v16 = [v18 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v16);
    }

    [*(v13 + 48) allSyncedTabGroupsExceptRemoteUnnamedTabGroups];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_11() arrayByAddingObjectsFromArray:?];
    objc_claimAutoreleasedReturnValue();
  }

  OUTLINED_FUNCTION_90();

  return v28;
}

- (id)_createNewTabGroupActionForTabGroupsMenu:
{
  OUTLINED_FUNCTION_95();
  if (v0)
  {
    v1 = +[FeatureManager sharedFeatureManager];
    v2 = [v1 isCustomTabGroupsEnabled];

    if (v2)
    {
      v3 = _WBSLocalizedString();
      v4 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.square.on.square"];
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_88();
      v5 = [OUTLINED_FUNCTION_25() actionWithTitle:? image:? identifier:? handler:?];

      [v5 setAccessibilityIdentifier:@"NewEmptyTabGroupMenuItem"];
    }
  }

  OUTLINED_FUNCTION_94();

  return v6;
}

- (void)_reportTabGroupCreationPrepopulatedWithTabs:(int)a3 fromPotentialAnalyticsSource:(int)a4 TabGroupsMenu:(int)a5
{
  OUTLINED_FUNCTION_77();
  if (!v18)
  {
    goto LABEL_12;
  }

  v22 = v19;
  if (!v21)
  {
    v27 = [MEMORY[0x277D499B8] sharedLogger];
    v28 = 2;
    goto LABEL_6;
  }

  v23 = v20;
  WeakRetained = objc_loadWeakRetained((v18 + 8));
  v25 = [WeakRetained rootViewController];
  v26 = [v25 usingLoweredBar];

  v27 = [MEMORY[0x277D499B8] sharedLogger];
  v31 = v27;
  if (!v26)
  {
    [v27 didCreateTabGroupFromLocation:v23 prepopulatedWithTabs:v22];

    if (v23 == 3)
    {
      [MEMORY[0x277D499B8] sharedLogger];
      [objc_claimAutoreleasedReturnValue() didCreateNewTabGroupFromTheDropDownMenu];
      goto LABEL_7;
    }

LABEL_12:
    OUTLINED_FUNCTION_74();
    return;
  }

  v28 = 5;
LABEL_6:
  [v27 didCreateTabGroupFromLocation:v28 prepopulatedWithTabs:v22];
LABEL_7:
  OUTLINED_FUNCTION_74();
}

- (id)_createFromCurrentTabsActionForTabGroupsMenu:(uint64_t)a1
{
  if (a1 && (+[FeatureManager sharedFeatureManager](FeatureManager, "sharedFeatureManager"), v1 = objc_claimAutoreleasedReturnValue(), v2 = [v1 isCustomTabGroupsEnabled], v1, v2))
  {
    _WBSLocalizedString();
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_33() newTabGroupTabCount];
    v3 = [OUTLINED_FUNCTION_25() localizedStringWithFormat:v7];

    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.square.on.square"];
    OUTLINED_FUNCTION_1_6();
    v5 = [OUTLINED_FUNCTION_59() actionWithTitle:? image:? identifier:? handler:?];

    [v5 setAccessibilityIdentifier:@"NewTabGroupWithCurrentTabsMenuItem"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_representativeHostForTabGroup:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = OUTLINED_FUNCTION_34();
    v6 = [(TabController *)v4 _urlForActiveTabInTabGroup:v5];
    v7 = [v6 safari_userVisibleHostOrExtensionDisplayName];

    if ([v7 length])
    {
      v8 = v7;
    }

    else
    {
      v9 = [v3 representativeURL];
      v8 = [v9 safari_userVisibleHostWithoutWWWSubdomain];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_closeTabGroup:(id *)a1
{
  if (a1)
  {
    v4 = a2;
    v5 = OUTLINED_FUNCTION_12();
    [(TabController *)v5 _selectNewTabGroupIfNecessaryBeforeClosingTabGroup:v6];
    [a1[6] removeTabGroup:v2];

    [a1 updateSelectedTabGroupName];
    WeakRetained = objc_loadWeakRetained(a1 + 1);
    [WeakRetained reloadSidebarAnimated:1];
  }
}

- (uint64_t)_currentTabsAreBlank
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 unpinnedTabs];
  v2 = [v1 safari_containsObjectPassingTest:&__block_literal_global_216] ^ 1;

  return v2;
}

- (id)tabGroupsMenuChildrenProvider
{
  v15 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB18] array];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_36();
  [TabController _createNewTabGroupActionForTabGroupsMenu:];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10() safari_addObjectUnlessNil:?];

  if ([(TabController *)self canCreateTabGroupFromCurrentTabs])
  {
    [TabController _createFromCurrentTabsActionForTabGroupsMenu:?];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10() safari_addObjectUnlessNil:?];
  }

  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v2];
  v7 = OUTLINED_FUNCTION_52();
  v8 = [(TabController *)v7 _switchToTabGroupMenu];
  v14 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [OUTLINED_FUNCTION_65() initWithArray:?];

  v11 = [(TabController *)self submenuForSwitchingProfiles];
  [OUTLINED_FUNCTION_40() safari_addObjectUnlessNil:?];

  return v10;
}

- (id)_switchToTabGroupMenu
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v6 = __38__TabController__switchToTabGroupMenu__block_invoke;
    v7 = &unk_2781D9BD8;
    v8 = v1;
    v2 = [v1 tabGroupsMenuElementsWithOptions:15 newTabGroupName:0 hostTitle:0 descendantCount:0 movingSelectedTabs:0 actionHandler:v5];
    v3 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)tabCollectionViewManager
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (UIMenu)newTabGroupMenu
{
  [MEMORY[0x277CBEB18] array];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_36();
  [TabController _createNewTabGroupActionForTabGroupsMenu:];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10() safari_addObjectUnlessNil:?];

  v5 = [(TabController *)self activeTabGroup];
  if (([v5 isNamed] & 1) == 0)
  {
    v6 = [(TabController *)self activeTabGroup];
    if (([v6 isPrivateBrowsing] & 1) != 0 || -[TabController _currentTabsAreBlank](self))
    {
    }

    else
    {
      v9 = [(TabController *)self activeTabDocument];
      v10 = [v9 libraryType];

      if (v10)
      {
        goto LABEL_5;
      }

      [TabController _createFromCurrentTabsActionForTabGroupsMenu:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_10() safari_addObjectUnlessNil:?];
    }
  }

LABEL_5:
  v7 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 children:v2];

  return v7;
}

- (void)_switchTabGroupLoopByRelativeIndex:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v4 = [v3 tabGroups];
    v12 = [v4 mutableCopy];

    v5 = [v1 activeTabGroup];
    if (([v5 isPrivateBrowsing] & 1) == 0)
    {
      [v12 safari_removeObjectsPassingTest:&__block_literal_global_229_0];
    }

    v6 = [v12 count];
    if (v6)
    {
      v7 = v6;
      v8 = [v12 indexOfObject:v5];
      v9 = (v8 + v2);
      if ((v8 + v2) > 0x7FFFFFFFFFFFFFFELL)
      {
        v9 = v7 - 1;
      }

      if (v9 >= v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      if (v10 != v8)
      {
        v11 = [v12 objectAtIndexedSubscript:?];
        [v11 uuid];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_11() setActiveTabGroupUUID:?];
      }
    }
  }
}

- (uint64_t)_isProfileActive:(uint64_t)result
{
  if (result)
  {
    [a2 identifier];
    objc_claimAutoreleasedReturnValue();
    v3 = [OUTLINED_FUNCTION_4() activeProfileIdentifier];
    v4 = [OUTLINED_FUNCTION_18() isEqualToString:?];

    return v4;
  }

  return result;
}

id __44__TabController_submenuForSwitchingProfiles__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 title];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_33() symbolImage];
  OUTLINED_FUNCTION_1_6();
  v11 = v4;
  v6 = v4;
  v7 = [OUTLINED_FUNCTION_25() actionWithTitle:? image:? identifier:? handler:?];

  v8 = MEMORY[0x277CCACA8];
  v9 = [v6 title];
  [v8 stringWithFormat:@"ProfileSwitcher-%@", v9];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_8_0() setAccessibilityIdentifier:?];

  [v7 setState:{-[TabController _isProfileActive:](*(a1 + 32), v6)}];

  return v7;
}

- (void)_setTabGroupButtonTitle:image:
{
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_53();
  v11 = v3;
  v4 = v0;
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 8));
    v6 = [WeakRetained barManager];

    if (v4)
    {
      v7 = objc_alloc_init(MEMORY[0x277CCAB48]);
      v8 = MEMORY[0x277CCA898];
      [MEMORY[0x277D74270] textAttachmentWithImage:v4];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() attributedStringWithAttachment:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_8_0() appendAttributedString:?];

      [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
      [OUTLINED_FUNCTION_8_0() appendAttributedString:?];

      [objc_alloc(MEMORY[0x277CCA898]) initWithString:v11];
      [OUTLINED_FUNCTION_8_0() appendAttributedString:?];

      [v6 setBarItem:2 attributedTitle:v7];
    }

    else
    {
      [v6 setBarItem:2 title:v11];
    }
  }

  OUTLINED_FUNCTION_74();
}

- (void)_requestContactsAccessIfNeeded
{
  if (a1 && ![MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0])
  {
    v1 = [MEMORY[0x277D49EE0] sharedContactStoreManager];
    [v1 requestAccessForEntityType:0 completionHandler:&__block_literal_global_272];
  }
}

- (void)_markAllTabsInTabGroupAsRead:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 48);
    v3 = [a2 uuid];
    [v2 updateTabsInTabGroupWithUUID:v3 persist:1 usingBlock:&__block_literal_global_263];
  }
}

- (void)_presentShareSheetForTabGroup:(uint64_t)a1 sender:
{
  if (a1)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_84();
    v3 = v2;
    v4 = v1;
    [OUTLINED_FUNCTION_19() shareRecordForActiveTabGroup];
    objc_claimAutoreleasedReturnValue();
    v5 = objc_alloc(MEMORY[0x277D28D78]);
    v6 = [OUTLINED_FUNCTION_21() tabGroupManager];
    v7 = [OUTLINED_FUNCTION_23() iconForSharingTabGroup:?];
    v8 = [OUTLINED_FUNCTION_59() initWithTabGroup:? inTabGroupManager:? existingShare:? icon:?];

    [TabController _presentShareSheetWithTabGroupActivityItemConfiguration:sender:];
    OUTLINED_FUNCTION_74();
  }
}

- (void)_presentShareSheetWithTabGroupActivityItemConfiguration:sender:
{
  OUTLINED_FUNCTION_47();
  v8 = v1;
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_34();
    v4 = [(TabController *)v2 _tabGroupShareSheetWithTabGroupActivityItemConfiguration:v3];
    objc_opt_class();
    if (OUTLINED_FUNCTION_78())
    {
      v5 = [objc_alloc(MEMORY[0x277D28E78]) initWithItem:v8];
    }

    else
    {
      objc_opt_class();
      if (OUTLINED_FUNCTION_78())
      {
        v5 = [v8 safari_popoverSourceInfo];
      }

      else
      {
        objc_opt_class();
        if ((OUTLINED_FUNCTION_78() & 1) == 0)
        {
          v6 = 0;
          goto LABEL_9;
        }

        v5 = [objc_alloc(MEMORY[0x277D28F68]) initWithView:v8];
      }
    }

    v6 = v5;
LABEL_9:
    WeakRetained = objc_loadWeakRetained((v0 + 8));
    [WeakRetained presentModalViewController:v4 fromPopoverSource:v6];
  }
}

- (void)_updateShare:(void *)a3 forActiveTabGroup:
{
  if (a1)
  {
    v4 = a3;
    v5 = a2;
    v6 = [v4 title];
    [OUTLINED_FUNCTION_39() setObject:? forKeyedSubscript:?];

    image = [OUTLINED_FUNCTION_23() iconForSharingTabGroup:?];

    v7 = UIImagePNGRepresentation(image);
    [OUTLINED_FUNCTION_18() setObject:? forKeyedSubscript:?];
  }
}

- (id)_containerForPinnedTabsInTabGroup:(void *)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if ([v4 isPrivateBrowsing])
    {
      v6 = 1;
LABEL_6:
      a1 = [PinnedTabsContainer containerWithPrivateBrowsing:v6];
      goto LABEL_8;
    }

    if ([v5 isInDefaultProfile])
    {
      v6 = 0;
      goto LABEL_6;
    }

    [v5 profileIdentifier];
    objc_claimAutoreleasedReturnValue();
    a1 = [OUTLINED_FUNCTION_6_1() containerWithActiveProfileIdentifier:?];
  }

LABEL_8:

  return a1;
}

- (WBTabGroup)focusedTabGroup
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(TabController *)self _application];
  v3 = [v2 focusedTabGroupUUIDString];

  if (v3)
  {
    v4 = [OUTLINED_FUNCTION_18() tabGroupWithUUID:?];
    if (!v4)
    {
      v5 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543362;
        v9 = v3;
        OUTLINED_FUNCTION_71(&dword_215819000, v5, v6, "Couldn't find FTG %{public}@", &v8);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_presentOpenAlertForFocusProfile:(int)a3 completionHandler:(int)a4
{
  OUTLINED_FUNCTION_73();
  a47 = v52;
  a48 = v53;
  OUTLINED_FUNCTION_80();
  a32 = *MEMORY[0x277D85DE8];
  v55 = v54;
  v56 = v48;
  if (v50)
  {
    v57 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
      v49 = [OUTLINED_FUNCTION_4() identifier];
      v59 = [*(v50 + 256) uuid];
      OUTLINED_FUNCTION_70(v59, 5.8382e-34);
      OUTLINED_FUNCTION_92(&dword_215819000, v60, v61, "Prompting to switch to focus profile %{public}@ on window %{public}@");
    }

    if (v56)
    {
      v62 = v56;
    }

    else
    {
      v62 = &__block_literal_global_319;
    }

    v56 = &_WBSLocalizableStringsBundleOnceToken;
    OUTLINED_FUNCTION_42();
    _WBSLocalizedString();
    objc_claimAutoreleasedReturnValue();
    v78 = [OUTLINED_FUNCTION_19() title];
    [OUTLINED_FUNCTION_17() stringWithFormat:?];
    objc_claimAutoreleasedReturnValue();

    OUTLINED_FUNCTION_42();
    v63 = _WBSLocalizedString();
    OUTLINED_FUNCTION_89();
    v65 = [v64 alertControllerWithTitle:? message:? preferredStyle:?];
    [v65 setRole:1];
    OUTLINED_FUNCTION_42();
    _WBSLocalizedString();
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_30();
    a25 = 3221225472;
    a26 = __68__TabController__presentOpenAlertForFocusProfile_completionHandler___block_invoke_2;
    a27 = &unk_2781D9E10;
    v66 = v62;
    v67 = [OUTLINED_FUNCTION_50() actionWithTitle:? style:? handler:?];

    OUTLINED_FUNCTION_42();
    v68 = _WBSLocalizedString();
    OUTLINED_FUNCTION_3_2();
    a19 = __68__TabController__presentOpenAlertForFocusProfile_completionHandler___block_invoke_3;
    a20 = &unk_2781D9E88;
    a21 = v50;
    a22 = v55;
    v69 = v62;
    v70 = [OUTLINED_FUNCTION_51() actionWithTitle:? style:? handler:?];

    [v65 addAction:v67];
    [OUTLINED_FUNCTION_41() addAction:?];
    [OUTLINED_FUNCTION_41() setPreferredAction:?];
    WeakRetained = objc_loadWeakRetained((v50 + 8));
    v72 = [WeakRetained viewControllerToPresentFrom];

    OUTLINED_FUNCTION_1_6();
    a12 = 3221225472;
    a13 = __68__TabController__presentOpenAlertForFocusProfile_completionHandler___block_invoke_4;
    a14 = &unk_2781D4C88;
    v73 = v72;
    a15 = v73;
    v74 = v65;
    a16 = v74;
    v75 = _Block_copy(&aBlock);
    v76 = [v73 presentedViewController];
    objc_opt_class();
    OUTLINED_FUNCTION_69();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v73 dismissViewControllerAnimated:1 completion:v75];
    }

    else
    {
      v75[2](v75);
    }
  }

  OUTLINED_FUNCTION_72();
}

- (void)_presentOpenAlertForFocusedTabGroup:(int)a3 completionHandler:(int)a4
{
  OUTLINED_FUNCTION_73();
  a47 = v52;
  a48 = v53;
  OUTLINED_FUNCTION_80();
  a32 = *MEMORY[0x277D85DE8];
  v55 = v54;
  v56 = v48;
  if (v50)
  {
    v57 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
      v49 = [OUTLINED_FUNCTION_4() uuid];
      v59 = [*(v50 + 256) uuid];
      OUTLINED_FUNCTION_70(v59, 5.8382e-34);
      OUTLINED_FUNCTION_92(&dword_215819000, v60, v61, "Prompting to open FTG %{public}@ on window %{public}@");
    }

    if (v56)
    {
      v62 = v56;
    }

    else
    {
      v62 = &__block_literal_global_330;
    }

    v56 = &_WBSLocalizableStringsBundleOnceToken;
    OUTLINED_FUNCTION_42();
    _WBSLocalizedString();
    objc_claimAutoreleasedReturnValue();
    v78 = [OUTLINED_FUNCTION_19() displayTitle];
    [OUTLINED_FUNCTION_17() stringWithFormat:?];
    objc_claimAutoreleasedReturnValue();

    OUTLINED_FUNCTION_42();
    v63 = _WBSLocalizedString();
    OUTLINED_FUNCTION_89();
    v65 = [v64 alertControllerWithTitle:? message:? preferredStyle:?];
    [v65 setRole:1];
    OUTLINED_FUNCTION_42();
    _WBSLocalizedString();
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_30();
    a25 = 3221225472;
    a26 = __71__TabController__presentOpenAlertForFocusedTabGroup_completionHandler___block_invoke_2;
    a27 = &unk_2781D9E10;
    v66 = v62;
    v67 = [OUTLINED_FUNCTION_50() actionWithTitle:? style:? handler:?];

    OUTLINED_FUNCTION_42();
    v68 = _WBSLocalizedString();
    OUTLINED_FUNCTION_3_2();
    a19 = __71__TabController__presentOpenAlertForFocusedTabGroup_completionHandler___block_invoke_3;
    a20 = &unk_2781D9E88;
    a21 = v50;
    a22 = v55;
    v69 = v62;
    v70 = [OUTLINED_FUNCTION_51() actionWithTitle:? style:? handler:?];

    [v65 addAction:v67];
    [OUTLINED_FUNCTION_41() addAction:?];
    [OUTLINED_FUNCTION_41() setPreferredAction:?];
    WeakRetained = objc_loadWeakRetained((v50 + 8));
    v72 = [WeakRetained viewControllerToPresentFrom];

    OUTLINED_FUNCTION_1_6();
    a12 = 3221225472;
    a13 = __71__TabController__presentOpenAlertForFocusedTabGroup_completionHandler___block_invoke_4;
    a14 = &unk_2781D4C88;
    v73 = v72;
    a15 = v73;
    v74 = v65;
    a16 = v74;
    v75 = _Block_copy(&aBlock);
    v76 = [v73 presentedViewController];
    objc_opt_class();
    OUTLINED_FUNCTION_69();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v73 dismissViewControllerAnimated:1 completion:v75];
    }

    else
    {
      v75[2](v75);
    }
  }

  OUTLINED_FUNCTION_72();
}

- (id)_tabGroupAlertControllerWithTitle:(uint64_t)a3 message:(void *)a4 okActionTitle:(uint64_t)a5 role:(char)a6 showingSuggestionsIfPossible:(void *)a7 actionHandler:(void *)a8 completionHandler:
{
  v15 = a7;
  v16 = a8;
  if (a1)
  {
    v17 = MEMORY[0x277D4A858];
    v18 = a4;
    v19 = [v17 alertControllerWithTitle:a2 message:a3 preferredStyle:1];
    [v19 setRole:a5];
    [v19 setDelegate:a1];
    OUTLINED_FUNCTION_32();
    v37 = 3221225472;
    v38 = __139__TabController__tabGroupAlertControllerWithTitle_message_okActionTitle_role_showingSuggestionsIfPossible_actionHandler_completionHandler___block_invoke;
    v39 = &unk_2781D9DE8;
    v40 = a1;
    v41 = a6;
    [v19 addTextFieldWithConfigurationHandler:v36];
    v20 = MEMORY[0x277D750F8];
    v21 = _WBSLocalizedString();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __139__TabController__tabGroupAlertControllerWithTitle_message_okActionTitle_role_showingSuggestionsIfPossible_actionHandler_completionHandler___block_invoke_2;
    v34[3] = &unk_2781D9E10;
    v22 = v16;
    v35 = v22;
    v23 = [v20 actionWithTitle:v21 style:1 handler:v34];

    [v19 addAction:v23];
    v24 = MEMORY[0x277D750F8];
    OUTLINED_FUNCTION_2_5();
    v30[1] = 3221225472;
    v30[2] = __139__TabController__tabGroupAlertControllerWithTitle_message_okActionTitle_role_showingSuggestionsIfPossible_actionHandler_completionHandler___block_invoke_3;
    v30[3] = &unk_2781D9E38;
    v25 = v19;
    v31 = v25;
    v32 = v15;
    v33 = v22;
    v26 = [v24 actionWithTitle:v18 style:0 handler:v30];

    [OUTLINED_FUNCTION_67() addAction:?];
    [OUTLINED_FUNCTION_67() setPreferredAction:?];
    v27 = [v25 textFields];
    v28 = [v27 firstObject];
    [v28 setDelegate:a1];

    a1 = v25;
  }

  return a1;
}

- (void)presentAlertToCreateTabGroupFromTabs:(id)a3 withTitle:(id)a4 message:(id)a5 suggestedName:(id)a6 okActionTitle:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v33 = a4;
  v15 = a5;
  v32 = a7;
  v16 = a8;
  v17 = v15;
  v18 = a6;
  v19 = +[Application sharedApplication];
  v20 = [v19 isCloudHistoryEnabled];

  v21 = v17;
  if (v20)
  {
    v22 = _WBSLocalizedString();
    v23 = _WBSLocalizedString();
    v21 = [OUTLINED_FUNCTION_82() stringWithFormat:v17, v23];
  }

  OUTLINED_FUNCTION_32();
  v41 = 3221225472;
  v42 = __118__TabController_presentAlertToCreateTabGroupFromTabs_withTitle_message_suggestedName_okActionTitle_completionHandler___block_invoke;
  v43 = &unk_2781D9E60;
  v44 = self;
  v45 = v14;
  v46 = v16;
  OUTLINED_FUNCTION_4_1();
  v35 = 3221225472;
  v36 = __118__TabController_presentAlertToCreateTabGroupFromTabs_withTitle_message_suggestedName_okActionTitle_completionHandler___block_invoke_2;
  v37 = &unk_2781D54A8;
  v38 = self;
  v39 = v24;
  v31 = v24;
  v25 = v14;
  v26 = [(TabController *)self _tabGroupAlertControllerWithTitle:v33 message:v21 okActionTitle:v32 role:2 showingSuggestionsIfPossible:1 actionHandler:v40 completionHandler:v34];
  v27 = [v26 textFields];
  v28 = [v27 firstObject];
  [v28 setText:v18];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v30 = [WeakRetained viewControllerToPresentFrom];
  [v30 presentViewController:v26 animated:1 completion:0];
}

- (id)_addTabGroup:(void *)a3 fromTabs:
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a1)
  {
    *(a1 + 160) = 1;
    v7 = [*(a1 + 48) insertTabGroup:a2 afterTabGroup:0];
    *(a1 + 160) = 0;
    v24 = [v7 uuid];
    if ([v6 count])
    {
      v22 = v7;
      v23 = v6;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            v14 = [v13 tabGroupUUID];
            v15 = [v13 uuid];
            v16 = [*(a1 + 256) activeTabUUIDForTabGroupWithUUID:v14];
            v3 = [v15 isEqualToString:v16];

            if (v3)
            {
              [*(a1 + 256) removeActiveTabUUIDForTabGroupWithUUID:v14];
              v3 = [*(a1 + 256) activeTabUUIDForTabGroupWithUUID:v24];

              if (!v3)
              {
                v3 = *(a1 + 256);
                v17 = [v13 uuid];
                [v3 setActiveTabUUID:v17 forTabGroupWithUUID:v24];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v10);
      }

      [*(a1 + 72) setSuppressTabBarAnimation:1];
      v7 = v22;
      [*(a1 + 48) moveTabs:v8 toTabGroup:v22 afterTab:0 withoutPersistingTabGroupsWithUUIDStrings:0];
      [*(a1 + 72) setSuppressTabBarAnimation:0];
      v6 = v23;
    }

    [a1 setActiveTabGroupUUID:v24];
    objc_loadWeakRetained((a1 + 8));
    OUTLINED_FUNCTION_87();
    [v18 reloadSidebarAnimated:?];

    v19 = [*(a1 + 72) tabSwitcherViewController];
    [v19 setNeedsScrollToTabGroup:v7];

    v20 = [MEMORY[0x277D499B8] sharedLogger];
    [v20 didCreateNewTabGroup];

    a1 = [*(a1 + 48) tabGroupWithUUID:v24];
  }

  return a1;
}

- (void)_presentRenameAlertForTabGroup:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = _WBSLocalizedString();
    v5 = _WBSLocalizedString();
    v6 = _WBSLocalizedString();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_88();
    v15[2] = __48__TabController__presentRenameAlertForTabGroup___block_invoke;
    v15[3] = &unk_2781D9EB0;
    v15[4] = a1;
    v7 = v3;
    v16 = v7;
    v8 = [(TabController *)a1 _tabGroupAlertControllerWithTitle:v4 message:v5 okActionTitle:v6 role:3 showingSuggestionsIfPossible:0 actionHandler:v15 completionHandler:0];
    v9 = [v8 view];
    [v9 setAccessibilityIdentifier:@"RenameTabGroupAlertSheet"];

    v10 = [v7 displayTitle];
    v11 = [v8 textFields];
    v12 = [v11 firstObject];
    [v12 setText:v10];

    WeakRetained = objc_loadWeakRetained(a1 + 1);
    v14 = [WeakRetained viewControllerToPresentFrom];
    [v14 presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_updateContextKitSuggestionsForTabGroupWithCompletionHandler:(void *)a1
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = a1[25];
    a1[25] = 0;

    v5 = [a1 currentTabDocuments];
    if ([v5 count])
    {
      v22 = a1;
      v23 = v3;
      v6 = dispatch_group_create();
      v7 = [MEMORY[0x277CBEB18] array];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            v14 = [v13 contextController];
            v15 = [v13 URL];
            if (v15 && v14)
            {
              dispatch_group_enter(v6);
              v28[0] = MEMORY[0x277D85DD0];
              v28[1] = 3221225472;
              v28[2] = __78__TabController__updateContextKitSuggestionsForTabGroupWithCompletionHandler___block_invoke;
              v28[3] = &unk_2781D9ED8;
              v29 = v6;
              v30 = v7;
              [v14 cachedResponseForURL:v15 completionHandler:v28];
            }
          }

          v10 = OUTLINED_FUNCTION_93(v16, v17, &v31, v35);
        }

        while (v10);
      }

      v18 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__TabController__updateContextKitSuggestionsForTabGroupWithCompletionHandler___block_invoke_2;
      block[3] = &unk_2781D7E28;
      v25 = v7;
      v3 = v23;
      v26 = v22;
      v27 = v23;
      v19 = v7;
      dispatch_group_notify(v6, v18, block);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_58();
      v21(v20, 0);
    }
  }
}

- (void)_updateTabGroupSuggestions:matchingText:
{
  OUTLINED_FUNCTION_53();
  v20 = v3;
  v4 = v0;
  v5 = v4;
  if (v1)
  {
    if ([v4 length] > 3 || UIKeyboardAlwaysShowCandidateBarForCurrentInputMode() || (objc_msgSend(*(v1 + 200), "resultsMatching:", v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = *(v1 + 192), *(v1 + 192) = v6, v7, !objc_msgSend(*(v1 + 192), "count")))
    {
      [v20 setAutocorrectionType:2];
      v2 = [v20 textInputSuggestionDelegate];
      [v2 setSuggestions:0];
    }

    else
    {
      v8 = [*(v1 + 192) safari_prefixWithMaxLength:3];
      v9 = *(v1 + 192);
      *(v1 + 192) = v8;

      v10 = [*(v1 + 192) safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_350_0];
      [OUTLINED_FUNCTION_56(v10 v11];
      v18 = [v20 textInputSuggestionDelegate];
      [v18 setSuggestions:v2];

      [*(v1 + 200) logResultsShown:objc_msgSend(v2 serverOverride:"count") forInput:{0, v5}];
    }
  }
}

- (uint64_t)isTabInActiveTabGroup:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = [a2 tabGroupUUID];
    v4 = [v3 isEqualToString:*(v2 + 56)];

    return v4;
  }

  return result;
}

- (void)_closeLibraryIfNeeded
{
  if (a1 && a1[21])
  {
    v2 = [a1 activeTabGroup];
    v3 = [v2 isPrivateBrowsing];
    v4 = 36;
    if (v3)
    {
      v4 = 35;
    }

    v5 = a1[v4];

    [a1 setActiveTabDocument:v5];
  }
}

- (void)_updateActiveTabForTabGroup:
{
  OUTLINED_FUNCTION_77();
  v2 = v1;
  v4 = v3;
  if (v2)
  {
    v13 = v4;
    [v4 uuid];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_6_1() activeTabUUIDForTabGroupWithUUID:?];

    if ([v13 isSyncable])
    {
      v0 = [v13 lastSelectedTabUUID];

      if (v0)
      {
        v0 = [v13 lastSelectedTabUUID];

        v5 = v0;
      }
    }

    [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    v6 = [OUTLINED_FUNCTION_10() tabWithUUID:?];
    [v13 isPrivateBrowsing];
    OUTLINED_FUNCTION_54();
    if (!v8)
    {
      v7 = 24;
    }

    v9 = [*&v2[v7] copy];
    if (([v9 containsObject:v6] & 1) == 0)
    {
      v10 = [v9 lastObject];

      v6 = v10;
    }

    [v2 setActiveTab:v6];
  }

  OUTLINED_FUNCTION_74();
}

- (id)_syncedTabGroupsForActiveProfileWithOptions:(void *)a1
{
  if (a1)
  {
    if (a2 == 2)
    {
      v3 = [a1 activeProfileIdentifier];
      v4 = [OUTLINED_FUNCTION_18() namedTabGroupsForProfileWithIdentifier:?];
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      v3 = [a1 activeProfileIdentifier];
      v4 = [OUTLINED_FUNCTION_18() unnamedTabGroupsForProfileWithIdentifier:?];
    }

    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

LABEL_7:

  return v2;
}

- (void)_presentCloseAlertForTabGroup:completionHandler:
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = v0;
  if (v1)
  {
    v5 = [MEMORY[0x277D4A858] deleteConfirmationAlertWithTabGroup:v3 manager:*(v1 + 48) delegate:v1];
    WeakRetained = objc_loadWeakRetained((v1 + 8));
    v7 = [WeakRetained viewControllerToPresentFrom];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v8 = v3;
    v9 = v4;
    [OUTLINED_FUNCTION_65() presentFromViewController:? withResultHandler:?];
  }
}

- (void)_copyLinksActionForTabGroup:forPickerSheet:
{
  OUTLINED_FUNCTION_95();
  v1 = v0;
  v3 = v2;
  v4 = v3;
  if (v1 && [v3 hasTextForPasteboard])
  {
    [v4 tabCountForPasteboard];
    v5 = _WBSLocalizedString();
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"link"];
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_88();
    v8 = v4;
    v7 = [OUTLINED_FUNCTION_59() actionWithTitle:? image:? identifier:? handler:?];

    [v7 setAccessibilityIdentifier:@"CopyTabGroupLinksButton"];
  }

  OUTLINED_FUNCTION_94();
}

- (BOOL)_switchToTab:(void *)a3 orTabUUID:(void *)a4 inTabGroup:
{
  v8 = a2;
  v9 = a3;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_12;
  }

  [a4 uuid];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_8_0() setActiveTabGroupUUID:?];

  WeakRetained = objc_loadWeakRetained(a1 + 1);
  [WeakRetained dismissTransientUIAnimated:1 options:2];
  if (v8)
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    [OUTLINED_FUNCTION_37() uuid];
    objc_claimAutoreleasedReturnValue();
    v12 = [OUTLINED_FUNCTION_13() initWithUUIDString:?];

    if (v12)
    {
LABEL_4:
      v13 = [OUTLINED_FUNCTION_44() tabWithUUID:?];
      v14 = v13 != 0;
      if (v13)
      {
        [a1 setActiveTab:v13];
      }

      if ([a1[9] isShowingTabView])
      {
        [WeakRetained toggleTabView];
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = v9;
    if (v12)
    {
      goto LABEL_4;
    }
  }

  v14 = 0;
LABEL_11:

LABEL_12:
  return v14;
}

void __41__TabController__shareActionForTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 sender];

  [TabController _presentShareSheetForTabGroup:? sender:?];
}

- (BOOL)moveTabWithUUID:(id)a3 fromForeignLocalGroupWithUUIDIntoActiveGroup:(id)a4
{
  v5 = a3;
  v6 = OUTLINED_FUNCTION_66();
  v8 = [(TabController *)v6 _foreignLocalTabGroupWithUUID:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 isPrivateBrowsing];
    v11 = [(TabController *)self activeTabGroup];
    v12 = [v11 isPrivateBrowsing];

    if (v10 != v12)
    {
      if (v10)
      {
        [(TabController *)self selectPrivateTabGroup];
      }

      else
      {
        [(TabController *)self selectLocalTabGroup];
      }
    }

    v14 = [OUTLINED_FUNCTION_18() tabWithUUID:?];
    v13 = v14 != 0;
    if (v14)
    {
      v16 = [v9 uuid];
      [OUTLINED_FUNCTION_44() moveTab:? fromTabGroupWithUUID:? toTabGroupWithUUID:? afterTab:?];

      v17 = [(TabController *)&self->super.isa _tabForWBTab:v14];
      [OUTLINED_FUNCTION_65() insertTab:? afterTab:? inBackground:? animated:?];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_tabForWBTab:(id *)a1
{
  if (a1)
  {
    a1 = [(TabController *)a1 _tabForWBTab:a2 didReuseTabDocument:0];
    v2 = vars8;
  }

  return a1;
}

- (id)_urlForActiveTabInTabGroup:(id)a1
{
  v3 = a1;
  if (a1)
  {
    [a2 uuid];
    objc_claimAutoreleasedReturnValue();
    v4 = [OUTLINED_FUNCTION_10() activeTabUUIDForTabGroupWithUUID:?];

    if (v4)
    {
      [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
      v5 = [OUTLINED_FUNCTION_6_1() tabWithUUID:?];
      v3 = [v5 url];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_selectNewTabGroupIfNecessaryBeforeClosingTabGroup:(void *)a1
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1 && [OUTLINED_FUNCTION_18() isTabGroupActive:?])
  {
    v5 = [a1 tabGroups];
    v6 = [v5 indexOfObject:v4];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = v7;
        v2 = [OUTLINED_FUNCTION_21() privacyPreservingDescription];
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_71(&dword_215819000, v7, v12, "Attempt to delete nonexistent tabGroup: %{public}@", v13);
      }

      v8 = 0;
    }

    else
    {
      v9 = v6;
      v2 = (v6 + 1);
      if (v6 + 1 < [v5 count])
      {
        v8 = v9 + 1;
      }

      else
      {
        v8 = v9 - 1;
      }
    }

    v10 = [v5 objectAtIndexedSubscript:v8];
    if ([v10 isPrivateBrowsing])
    {
      v2 = [a1 unnamedTabGroup];

      v10 = v2;
    }

    [v10 uuid];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9() setActiveTabGroupUUID:?];
  }
}

- (void)_reuseTabIfNecessary:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    objc_opt_class();
    if (OUTLINED_FUNCTION_78())
    {
      v4 = v6;
      v5 = [OUTLINED_FUNCTION_4() sharedManager];
      [v5 addReusableTab:v2];
    }
  }
}

- (void)moveTabGroup:(id)a3 toProfile:(id)a4
{
  OUTLINED_FUNCTION_53();
  v6 = v5;
  v7 = v4;
  v8 = OUTLINED_FUNCTION_34();
  [(TabController *)v8 _selectNewTabGroupIfNecessaryBeforeClosingTabGroup:v9];
  v10 = [v6 identifier];

  [OUTLINED_FUNCTION_18() moveTabGroup:? toProfileWithIdentifier:? afterTabGroup:?];
}

- (void)_tabWasAddedToReusableTabs:(void *)a3 fromWindowWithID:(double)a4 previousTabPositions:
{
  v12 = a2;
  v8 = a3;
  if (a1)
  {
    objc_opt_class();
    if (OUTLINED_FUNCTION_78())
    {
      v9 = v12;
      v10 = MEMORY[0x277CCABB0];
      [v9 idForWebExtensions];
      [v10 numberWithDouble:?];
      objc_claimAutoreleasedReturnValue();
      v11 = [OUTLINED_FUNCTION_11() objectForKeyedSubscript:?];

      if (v11)
      {
        [v9 webExtensionsController];
        objc_claimAutoreleasedReturnValue();
        [v4 didMoveTab:v9 fromWindowWithID:objc_msgSend(OUTLINED_FUNCTION_29() indexInOldWindow:{"index"), a4}];
      }
    }
  }
}

- (void)_tabDocumentsWereReusedWhenActiveTabGroupChanged:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_20();
    v9 = OUTLINED_FUNCTION_76(v5, v6, v7, v8);
    if (v9)
    {
      v10 = v9;
      OUTLINED_FUNCTION_81();
      v11 = *MEMORY[0x277D4A9C8];
      do
      {
        v12 = 0;
        do
        {
          OUTLINED_FUNCTION_35();
          if (v13 != v2)
          {
            objc_enumerationMutation(v4);
          }

          v14 = *(v20 + 8 * v12);
          if (v14 != *(a1 + 32))
          {
            v15 = [*(v20 + 8 * v12) webExtensionsController];
            [v15 didMoveTab:v14 fromWindowWithID:0 indexInOldWindow:v11];
          }

          ++v12;
        }

        while (v10 != v12);
        OUTLINED_FUNCTION_20();
        v10 = OUTLINED_FUNCTION_76(v16, v17, v18, v19);
      }

      while (v10);
    }
  }
}

- (id)_tabForWBTab:(_BYTE *)a3 didReuseTabDocument:
{
  v6 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 1);
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    [OUTLINED_FUNCTION_21() uuid];
    objc_claimAutoreleasedReturnValue();
    v9 = [OUTLINED_FUNCTION_14() initWithUUIDString:?];

    v10 = +[(WBReusableTabManager *)ReusableTabManager];
    v11 = [v10 reuseTabForUUID:v9];

    if (v11)
    {
      [v11 setBrowserController:WeakRetained afterTabGroupReuse:1];
      [OUTLINED_FUNCTION_82() restoreStateFromTab:?];
      if (a3)
      {
        *a3 = 1;
      }

      v12 = v11;
    }

    else
    {
      v12 = [a1 tabWithUUID:v9];
      if (!v12)
      {
        v13 = [MEMORY[0x277D28C70] sharedFeatureManager];
        v14 = [v13 allowsUnlimitedTabs];

        if (v14)
        {
          v15 = [HibernatedTab alloc];
          OUTLINED_FUNCTION_63();
          v17 = [v16 initWithWBTab:? browserController:?];
        }

        else
        {
          if ([v6 isPinned] && !objc_msgSend(v6, "isSyncable"))
          {
            v19 = [a1[33] privatePinnedTabs];
            v18 = [v19 containsObject:v6];
          }

          else
          {
            v18 = [v6 isPrivateBrowsing];
          }

          v17 = [[TabDocument alloc] initWithTabGroupTab:v6 privateBrowsingEnabled:v18 hibernated:1 bookmark:0 browserController:WeakRetained];
        }

        v12 = v17;
        if ([(TabDocument *)v17 isBlank])
        {
          [v12 displayNewTabOverridePageIfNecessary];
        }
      }

      [v12 updateTabIcon];
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_openBookmark:orURL:inTabGroup:
{
  OUTLINED_FUNCTION_77();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v7 = v3;
  v8 = v1;
  if (v5 && v25 | v7)
  {
    if ([OUTLINED_FUNCTION_40() isTabGroupActive:?])
    {
      v9 = [MEMORY[0x277D28F40] builder];
      [v9 setPrefersOpenInNewTab:1];
      if (v25)
      {
        [v9 navigationIntentWithBookmark:?];
      }

      else
      {
        [OUTLINED_FUNCTION_48() navigationIntentWithURL:?];
      }
      v10 = ;
      WeakRetained = objc_loadWeakRetained(v5 + 1);
      [WeakRetained dispatchNavigationIntent:v10];
    }

    else
    {
      [OUTLINED_FUNCTION_40() removeSingleBlankTabFromInactiveTabGroup:?];
      if ([v25 isFolder])
      {
        v14 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
        v15 = [v14 listWithID:{objc_msgSend(v25, "identifier")}];
        v16 = [v15 bookmarkArray];

        if ([v16 count])
        {
          v17 = 0;
          do
          {
            v18 = [OUTLINED_FUNCTION_28() objectAtIndexedSubscript:?];
            [(TabController *)v5 _openSingleBookmark:v18 orURL:0 inTabGroup:v8 setActive:v17 == 0];

            ++v17;
          }

          while (v17 < [v16 count]);
        }
      }

      else
      {
        OUTLINED_FUNCTION_63();
        [(TabController *)v19 _openSingleBookmark:v20 orURL:v21 inTabGroup:v22 setActive:1];
      }

      v23 = OUTLINED_FUNCTION_66();
      [(TabController *)v23 _forceUpdateTabGroupTitleIfNeeded:v24];
    }
  }

  OUTLINED_FUNCTION_74();
}

- (void)_openSingleBookmark:(void *)a3 orURL:(void *)a4 inTabGroup:(int)a5 setActive:
{
  v18 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    if (v18)
    {
      v13 = [v18 title];
      v5 = [v18 address];
      v12 = [OUTLINED_FUNCTION_67() URLWithString:?];
    }

    else
    {
      v12 = v10;
      v13 = &stru_2827BF158;
    }

    v14 = objc_alloc(MEMORY[0x277D7B560]);
    v15 = [OUTLINED_FUNCTION_57() deviceIdentifier];
    v16 = [v5 initWithTitle:v13 url:v12 deviceIdentifier:v15];

    [(TabController *)a1 _appendTab:v16 toTabGroup:v11];
    if (a5)
    {
      [v16 uuid];
      objc_claimAutoreleasedReturnValue();
      v17 = [OUTLINED_FUNCTION_33() uuid];
      [OUTLINED_FUNCTION_25() setActiveTabUUID:? forTabGroupWithUUID:?];
    }
  }
}

- (void)_appendTab:(void *)a3 toTabGroup:
{
  v5 = a2;
  if (a1)
  {
    v6 = [a3 uuid];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v7 = v5;
    OUTLINED_FUNCTION_79();
    [OUTLINED_FUNCTION_40() updateTabsInTabGroupWithUUID:? persist:? usingBlock:?];
  }
}

- (void)tabGroupManagerDidFinishSetup:(id)a3
{
  v5 = [(TabController *)self _application];
  if (![v5 isRunningPPT] || objc_msgSend(v5, "shouldRestoreStateForPPT"))
  {
    self->_didFinishTabGroupSetup = 1;
    [(TabController *)self readState];
    objc_loadWeakRetained(&self->_browserController);
    OUTLINED_FUNCTION_87();
    [v4 reloadSidebarAnimated:?];
  }
}

- (void)tabGroupManager:(id)a3 willPerformBlockUpdatesForTabGroupWithUUID:(id)a4
{
  if (self)
  {
    [OUTLINED_FUNCTION_68(self) beginFixingTabBarItems];
    [*(v4 + 72) beginFixingTabOverviewItems];
    v5 = *(v4 + 272);

    [v5 willBeginUpdates];
  }
}

- (void)tabGroupManager:(id)a3 didUpdateTabGroupWithUUID:(id)a4
{
  v6 = a4;
  if ([v6 isEqualToString:self->_activeTabGroupUUID])
  {
    [(TabController *)self updateSelectedTabGroupName];
  }

  [(TabController *)self _reconfigureLibraryItemViewForTabGroupWithUUID:v6];
  objc_loadWeakRetained(&self->_browserController);
  OUTLINED_FUNCTION_87();
  [v5 reloadSidebarAnimated:?];
}

void __42__TabController_textFieldDidBeginEditing___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addTarget:*(a1 + 40) action:sel_tabGroupNamingTextDidChange_ forControlEvents:0x20000];

  [TabController _updateTabGroupSuggestions:matchingText:];
}

- (void)_registerUndoWithGroup:(void *)a3 actions:
{
  OUTLINED_FUNCTION_84();
  v14 = v4;
  if (v3)
  {
    v8 = *(v3 + 120);
    v7 = (v3 + 120);
    v9 = v8;
    v10 = OUTLINED_FUNCTION_21();
    objc_storeStrong(v10, v4);
    v11 = a3;
    OUTLINED_FUNCTION_85();
    v12();

    v13 = *v7;
    *v7 = v5;
  }
}

- (void)registerUndoWithType:(int64_t)a3 actions:(id)a4
{
  OUTLINED_FUNCTION_53();
  v7 = v6;
  v11 = [objc_alloc(OUTLINED_FUNCTION_29()) initWithType:v4];
  v8 = OUTLINED_FUNCTION_39();
  [(TabController *)v8 _registerUndoWithGroup:v9 actions:v10];
}

- (void)_registerSingleUndoActionForClosedTabs:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 1);
    [a1[41] beginUndoGrouping];
    v5 = objc_alloc_init(MEMORY[0x277D49B60]);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v16 = __56__TabController__registerSingleUndoActionForClosedTabs___block_invoke;
    v17 = &unk_2781D4D40;
    v18 = a1;
    [v6 setHandler:v15];
    v7 = [(TabController *)a1 _undoActionForClosingTabs:v3];
    v8 = [a1[41] prepareWithInvocationTarget:a1];
    [v8 _undoCloseTabs:v7];

    [OUTLINED_FUNCTION_55() setOverridesUndoManagerForClosedTabs:?];
    if (([a1[41] isUndoing] & 1) == 0 && (objc_msgSend(a1[41], "isRedoing") & 1) == 0)
    {
      v9 = [a1[15] name];
      if (![v9 length])
      {
        v10 = [v3 count];
        if (v10 == 1)
        {
          v11 = _WBSLocalizedString();
        }

        else
        {
          v12 = v10;
          v13 = MEMORY[0x277CCACA8];
          v14 = _WBSLocalizedString();
          v11 = [v13 localizedStringWithFormat:v14, v12];

          v9 = v14;
        }

        v9 = v11;
      }

      [a1[41] setActionName:v9];
    }
  }
}

- (id)_undoActionForClosingTabs:(id)a1
{
  v5 = a1;
  if (a1)
  {
    v6 = a2;
    v7 = objc_alloc(OUTLINED_FUNCTION_22());
    v8 = OUTLINED_FUNCTION_4();
    [TabController _orderIndexesForTabs:v8];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_21() activeTabGroup];
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_37();
    v10 = [(TabController *)v9 _containerForPinnedTabsInTabGroup:v4];
    v5 = [OUTLINED_FUNCTION_17() initWithTabs:? tabOrderIndexes:? pinnedTabsContainer:?];
  }

  return v5;
}

- (id)_orderIndexesForTabs:(void *)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_43();
    a1 = [v2 safari_dictionaryByMappingObjectsAsKeysToObjectsUsingBlock:?];
    v1 = vars8;
  }

  return a1;
}

- (id)_reopenTabGroupTabsForUndoAction:(id)a1
{
  v4 = a2;
  if (a1)
  {
    [MEMORY[0x277CBEB18] array];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_19() tabsByTabGroupUUID];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v10 = __50__TabController__reopenTabGroupTabsForUndoAction___block_invoke;
    v11 = &unk_2781DA2A8;
    v12 = a1;
    v13 = v4;
    v6 = v2;
    v14 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];

    v7 = v14;
    a1 = v6;
  }

  return a1;
}

- (id)_reopenGloballyPinnedTabsForUndoAction:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 globallyPinnedTabs];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [v4 pinnedTabsContainer];
      v8 = [a1[33] pinnedTabsInContainer:v7];
      v9 = [MEMORY[0x277CBEB18] array];
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_16();
      v12 = v8;
      v13 = v4;
      v14 = v9;
      v10 = v8;
      [OUTLINED_FUNCTION_40() updatePinnedTabsInContainer:? usingBlock:?];
      a1 = v14;
    }

    else
    {
      a1 = MEMORY[0x277CBEBF8];
    }
  }

  return a1;
}

- (id)globalPinnedTabsForTabGroup:(id)a3
{
  [(TabController *)self _containerForPinnedTabsInTabGroup:a3];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_4() pinnedTabsInContainer:v3];

  return v4;
}

- (BOOL)selectFirstUnpinnedTab
{
  v2 = [(TabController *)self _firstUnpinnedTab];
  if (v2)
  {
    [OUTLINED_FUNCTION_18() setActiveTab:?];
  }

  return v2 != 0;
}

void __33__TabController_setTab_isPinned___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = a2;
  v4 = [*(a1 + 32) uuid];
  v12 = [OUTLINED_FUNCTION_56(v4 v5];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [*(a1 + 32) mutableCopy];
  }

  v15 = v14;

  v16 = [*(a1 + 40) tabUpdateBlock];
  OUTLINED_FUNCTION_85();
  v17();

  [(TabController *)*(a1 + 48) _tabGroupTabDidUpdatePinned:v15 inTabGroup:v20];
}

- (id)_findPinnedTabMatchingURL:(uint64_t)a3
{
  OUTLINED_FUNCTION_91();
  a45 = v46;
  a46 = v49;
  a33 = *MEMORY[0x277D85DE8];
  if (v47)
  {
    v50 = v47;
    v51 = [v48 absoluteString];
    OUTLINED_FUNCTION_61();
    v53 = [v52 safari_simplifiedUserVisibleURLStringWithSimplifications:? forDisplayOnly:? simplifiedStringOffset:?];

    v54 = [v50 pinnedTabs];
    v55 = [v54 countByEnumeratingWithState:&a9 objects:&a17 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *a11;
      while (2)
      {
        for (i = 0; i != v56; ++i)
        {
          OUTLINED_FUNCTION_35();
          if (v59 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v60 = *(a10 + 8 * i);
          v61 = [v60 url];
          v62 = [v61 absoluteString];
          OUTLINED_FUNCTION_61();
          v64 = [v63 safari_simplifiedUserVisibleURLStringWithSimplifications:? forDisplayOnly:? simplifiedStringOffset:?];

          if ([v53 isEqual:v64])
          {
            goto LABEL_14;
          }

          v65 = [v60 committedURL];
          v66 = [v65 absoluteString];
          OUTLINED_FUNCTION_61();
          v68 = [v67 safari_simplifiedUserVisibleURLStringWithSimplifications:? forDisplayOnly:? simplifiedStringOffset:?];

          if ([v53 isEqual:v68])
          {
            v64 = v68;
LABEL_14:
            v60;

            goto LABEL_15;
          }
        }

        v56 = OUTLINED_FUNCTION_76(v69, v70, &a9, &a17);
        if (v56)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  OUTLINED_FUNCTION_90();

  return v71;
}

- (uint64_t)_shouldReloadAfterAutomaticallySwitchingToTab:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a2 webView];
  v3 = [v2 _isPlayingAudio] ^ 1;

  return v3;
}

- (BOOL)_shouldCloseAfterAutomaticallySwitchingFromTab:(_BOOL8)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (([v3 isPinned] & 1) != 0 || !objc_msgSend(v4, "isBlank"))
    {
      a1 = 0;
    }

    else
    {
      v5 = [a1 unpinnedTabs];
      a1 = [v5 count] > 1;
    }
  }

  return a1;
}

- (uint64_t)_wbTabIsShowingStartPageOverriddenByExtension:(uint64_t)a1
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    [v5 uuid];
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_8_0() tabGroupRelatedToTabWithUUID:?];

    v8 = [v7 profileIdentifier];
    if (v8)
    {
      v3 = [v7 profileIdentifier];
      v9 = [OUTLINED_FUNCTION_44() profileWithIdentifier:?];
    }

    else
    {
      v9 = 0;
    }

    +[Application sharedApplication];
    objc_claimAutoreleasedReturnValue();
    v10 = [v3 webExtensionsControllerForTabWithPrivateBrowsingEnabled:objc_msgSend(OUTLINED_FUNCTION_37() profile:{"isPrivateBrowsing"), v9}];

    v11 = [v10 extensionOverriddenStartPageURL];
    if (v11)
    {
      v12 = [v6 url];
      v13 = [OUTLINED_FUNCTION_28() _persistentStateURLForExtensionURL:?];
      v14 = [OUTLINED_FUNCTION_41() isEqual:?];
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

- (uint64_t)_wbTabIsBlank:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 isBlank])
    {
      a1 = 1;
    }

    else
    {
      v6 = OUTLINED_FUNCTION_34();
      a1 = [(TabController *)v6 _wbTabIsShowingStartPageOverriddenByExtension:v7];
    }
  }

  return a1;
}

- (uint64_t)canCloseLastTabInTabGroup:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 isPrivateBrowsing])
    {
      WeakRetained = [*(a1 + 264) privatePinnedTabs];
      v6 = [WeakRetained count] == 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v6 = [WeakRetained isControlledByAutomation];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)closeWBTabs:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D49B60]);
  v53 = MEMORY[0x277D85DD0];
  v54 = 3221225472;
  v55 = &__36__TabController_closeWBTabs_action___block_invoke;
  v56 = &unk_2781D4C88;
  v57 = self;
  v9 = v6;
  v58 = v9;
  [v8 setHandler:&v53];
  self->_isClosingWBTabsWithAction = v7 != 0;
  OUTLINED_FUNCTION_27();
  v50 = __36__TabController_closeWBTabs_action___block_invoke_2;
  v51 = &unk_2781D98D8;
  v52 = self;
  v10 = [v9 safari_filterObjectsUsingBlock:v49];
  v44 = MEMORY[0x277D85DD0];
  v45 = 3221225472;
  v46 = __36__TabController_closeWBTabs_action___block_invoke_3;
  v47 = &unk_2781DA320;
  v48 = self;
  v11 = [v10 safari_mapAndFilterObjectsUsingBlock:&v44];
  v12 = [v11 count];
  if (v12 == [v9 count])
  {
    [(TabController *)self _addTabsToRecentlyClosed:v11 includeUndo:0];
  }

  [(TabController *)self _registerUndoActionsForClosedTabs:v10, v13, v14, v15, v16, v17, v18, v32, v7, v34, v35, v36, v37, v38, v39, v40[0], v40[1], v41, v42, v43, v44, v45, v46, v47, v48, v49[0], v49[1], v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67];
  [MEMORY[0x277CBEAC0] safari_dictionaryWithObjectsInFastEnumerationCollection:v9 groupedUsingBlock:&__block_literal_global_604];
  objc_claimAutoreleasedReturnValue();
  v19 = [OUTLINED_FUNCTION_57() privateTabGroupIfAvailable];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 uuid];
    v22 = [v12 objectForKeyedSubscript:v21];
    v23 = [v22 count];
    v24 = v23 == [(NSMutableArray *)self->_mutablePrivateTabs count];
  }

  else
  {
    v24 = 0;
  }

  v25 = [v9 safari_filterObjectsUsingBlock:&__block_literal_global_606];
  OUTLINED_FUNCTION_3_2();
  v41 = __36__TabController_closeWBTabs_action___block_invoke_6;
  v42 = &unk_2781DA348;
  v43 = self;
  [v12 enumerateKeysAndObjectsUsingBlock:v40];
  if (v24)
  {
    v26 = [(NSMutableArray *)self->_mutablePrivateTabs firstObject];
    v27 = [v26 isBlank];

    if (v27)
    {
      v29 = [(NSMutableArray *)self->_mutablePrivateTabs firstObject];
      v30 = [(TabController *)self _unhibernateTabIfNeeded:v29];
      tabDocumentBeingHiddenFromTabView = self->_tabDocumentBeingHiddenFromTabView;
      self->_tabDocumentBeingHiddenFromTabView = v30;
    }
  }

  if ([v25 count])
  {
    pinnedTabsManager = self->_pinnedTabsManager;
    OUTLINED_FUNCTION_1_6();
    v35 = 3221225472;
    v36 = __36__TabController_closeWBTabs_action___block_invoke_8;
    v37 = &unk_2781D4C88;
    v38 = v25;
    v39 = self;
    [(PinnedTabsManager *)pinnedTabsManager performUpdatesUsingBlock:&v34];
  }
}

void __36__TabController_closeWBTabs_action___block_invoke_6()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *(v1 + 32);
  v5 = v0;
  [(TabController *)v4 updateLastSelectedTabUUIDForClosingWBTabs:v3];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_16();
  v7 = v3;
  v6 = v3;
  [OUTLINED_FUNCTION_18() updateTabsInTabGroupWithUUID:? options:? usingBlock:?];
}

- (void)_movePinnedWBTab:(void *)a3 toTabGroup:
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 uuid];
    v8 = [a1 tabGroupRelatedToTabWithUUID:v7];

    OUTLINED_FUNCTION_66();
    if (WBSIsEqual())
    {
LABEL_3:

      goto LABEL_4;
    }

    v9 = objc_alloc(MEMORY[0x277D7B538]);
    v10 = [OUTLINED_FUNCTION_21() uuid];
    v11 = [a1 deviceIdentifier];
    v12 = [OUTLINED_FUNCTION_28() initWithUUID:? deviceIdentifier:?];

    [OUTLINED_FUNCTION_48() adoptAttributesFromTab:?];
    [v12 setSyncable:{objc_msgSend(v6, "isSyncable")}];
    v13 = [(TabController *)a1 _containerForPinnedTabsInTabGroup:v6];
    if ([v8 usesGlobalPinnedTabs] && objc_msgSend(v6, "usesGlobalPinnedTabs"))
    {
      v14 = [v5 uuid];
      [OUTLINED_FUNCTION_41() removeTabWithUUID:? persist:?];

      [*(a1 + 264) appendTab:v12 inContainer:v13];
    }

    else
    {
      if ([v8 usesGlobalPinnedTabs])
      {
        v15 = [v5 uuid];
        [OUTLINED_FUNCTION_41() removeTabWithUUID:? persist:?];

        v16 = [v6 uuid];
        v24 = v12;
        [OUTLINED_FUNCTION_67() updateTabsInTabGroupWithUUID:? persist:? usingBlock:?];

        v17 = v24;
      }

      else
      {
        v18 = [v6 usesGlobalPinnedTabs];
        v19 = *(a1 + 48);
        if (!v18)
        {
          v25[0] = v5;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
          v22 = [v6 lastPinnedTab];
          [v19 moveTabs:v21 toTabGroup:v6 afterTab:v22 withoutPersistingTabGroupsWithUUIDStrings:0];

          goto LABEL_14;
        }

        v20 = [v8 uuid];
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_88();
        v23 = v5;
        [OUTLINED_FUNCTION_41() updateTabsInTabGroupWithUUID:? persist:? usingBlock:?];

        [*(a1 + 264) appendTab:v12 inContainer:v13];
        v17 = v23;
      }
    }

LABEL_14:

    goto LABEL_3;
  }

LABEL_4:
}

- (void)_updateTabsWithPinnedTabs:(unsigned int)a3 persist:
{
  if (a1)
  {
    v5 = a2;
    v9 = [OUTLINED_FUNCTION_22() pinnedTabs];
    v6 = OUTLINED_FUNCTION_17();
    [(TabController *)v6 _replaceTabs:v7 withTabs:v8 persist:a3];
  }
}

- (void)_updateTabsWithPinnedWBTabs:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_43();
    [v2 safari_mapObjectsUsingBlock:?];
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    [(TabController *)v3 _updateTabsWithPinnedTabs:v4 persist:0];
  }
}

- (void)_selectAcceptedSharedTabGroup:(uint64_t)a1
{
  if (a1)
  {
    v6 = a2;
    v7 = OUTLINED_FUNCTION_12();
    [(TabController *)v7 _markAllTabsInTabGroupAsRead:v8];
    [v2 profileIdentifier];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10() setActiveProfileIdentifier:?];

    [v2 uuid];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10() setActiveTabGroupUUID:?];

    v9 = [a1 currentTabs];
    [v9 firstObject];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_11() setActiveTab:?];

    v10 = [*(a1 + 72) tabSwitcherViewController];
    [v10 setNeedsScrollToTabGroup:v2];

    *(a1 + 224) = 1;
  }
}

- (id)representativeURLForTabGroupConfirmationAlert:(id)a3
{
  [a3 tabGroup];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_12();
  v6 = [(TabController *)v4 _urlForActiveTabInTabGroup:v5];

  return v6;
}

- (void)canCloseOtherTabs
{
  v4 = [(TabController *)a1 tabThumbnailCollectionView];
  v3 = [v4 presentationState] != 1 && objc_msgSend(v4, "presentationState") != 2;
  *a2 = v3;
}

- (void)openLibrary:.cold.1()
{
  OUTLINED_FUNCTION_83();
  v3 = [TabDocument alloc];
  v4 = OUTLINED_FUNCTION_31();
  [(TabController *)v4 _controlledByAutomation];
  OUTLINED_FUNCTION_24();
  v6 = [v5 initWithTitle:0 URL:v2 UUID:0 privateBrowsingEnabled:? controlledByAutomation:? hibernated:? bookmark:? browserController:? relatedWebView:?];
  [v6 setIsBlank:1];
  [v6 setLibraryType:v1];
  [*v0 setObject:v6 forKeyedSubscript:v1];
}

- (id)detachTabWithUUID:(void *)a3 forMoveToBrowserController:(uint64_t)a4 .cold.1(void *a1, void *a2, void *a3, uint64_t a4)
{
  [(TabController *)a1 _detachTab:a2 animated:0];
  v8 = a1[6];
  v9 = a1[7];
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __62__TabController_detachTabWithUUID_forMoveToBrowserController___block_invoke;
  a3[3] = &unk_2781D97D0;
  a3[4] = a1;
  [v8 updateTabsInTabGroupWithUUID:v9 persist:1 usingBlock:a3];
  v10 = [a2 wbTab];
  [v10 duplicatePreservingUUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_11() setWBTab:?];

  [a2 setBrowserController:a4];
  return a2;
}

void __47__TabController__replaceTabs_withTabs_persist___block_invoke_cold_1(void **a1)
{
  v1 = [(TabController *)*a1 _application];
  [v1 updateTabCount];
}

void __37__TabController_moveTabsToNewWindow___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_46(&dword_215819000, v4, v5, "Failed to move tabs to new scene: %{public}@", v6, v7, v8, v9, v10);
}

void __30__TabController_tabExposeMenu__block_invoke_cold_1(uint64_t a1)
{
  [(TabController *)a1 _switchToTabGroupMenu];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() addObject:v1];
}

void __74__TabController__tabGroupShareSheetWithTabGroupActivityItemConfiguration___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_46(&dword_215819000, v4, v5, "Tab group share sheet failed: %{public}@", v6, v7, v8, v9, v10);
}

void __47__TabController__requestContactsAccessIfNeeded__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_46(&dword_215819000, v4, v5, "Failed to obtain contacts access: %{public}@", v6, v7, v8, v9, v10);
}

void __69__TabController_tabSwitcherShareConfigurationForTabGroup_completion___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  [a2 iconForSharingTabGroup:*(a1 + 40)];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_14() updateMetadataIcon:?];

  OUTLINED_FUNCTION_18();

  [TabController _presentShareSheetWithTabGroupActivityItemConfiguration:sender:];
}

- (void)setActiveTabGroupUUID:(void *)a1 .cold.2(void *a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_INFO, "Already in tab group.", v3, 2u);
  }

  [(TabController *)a1 _closeLibraryIfNeeded];
}

void __69__TabController_swipeActionsConfigurationForTabGroup_forPickerSheet___block_invoke_3_cold_1(uint64_t a1, id *a2)
{
  [(TabController *)a2 _presentRenameAlertForTabGroup:?];
  v3 = OUTLINED_FUNCTION_58();
  v4(v3, 1);
  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = [MEMORY[0x277D499B8] sharedLogger];
    [v5 didUseSidebarAction:3];
  }
}

void __57__TabController__renameActionForTabGroup_forPickerSheet___block_invoke_cold_1(uint64_t a1, id *a2)
{
  [(TabController *)a2 _presentRenameAlertForTabGroup:?];
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    [v3 didUseSidebarAction:3];
  }
}

void __57__TabController__deleteActionForTabGroup_forPickerSheet___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  *a2 = MEMORY[0x277D85DD0];
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = __57__TabController__deleteActionForTabGroup_forPickerSheet___block_invoke_2;
  *(a2 + 24) = &__block_descriptor_33_e8_v12__0B8l;
  *(a2 + 32) = *(a1 + 48);
  [TabController _presentCloseAlertForTabGroup:completionHandler:];
}

- (void)tabGroupManager:didUpdateTabsInTabGroupWithUUID:.cold.2()
{
  OUTLINED_FUNCTION_47();
  v2 = [v1 currentTabs];
  v3 = OUTLINED_FUNCTION_58();
  v4(v3);
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_36();
  [(TabController *)v5 _replaceTabs:v2 withTabs:v0 persist:0];
}

- (void)textFieldDidBeginEditing:.cold.1()
{
  OUTLINED_FUNCTION_47();
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__TabController_textFieldDidBeginEditing___block_invoke;
  v2[3] = &unk_2781D76C0;
  v2[4] = v3;
  v1[5] = v4;
  [(TabController *)v0 _updateContextKitSuggestionsForTabGroupWithCompletionHandler:v1];
}

void __38__TabController__orderIndexesForTabs___block_invoke_cold_1(void **a1, void *a2, uint64_t *a3)
{
  [(TabController *)*a1 _containerForPinnedTabsInTabGroup:a2];
  objc_claimAutoreleasedReturnValue();
  *a3 = [OUTLINED_FUNCTION_52() pinnedTabsInContainer:?];
}

- (void)canCloseWBTab:.cold.1()
{
  OUTLINED_FUNCTION_77();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  [OUTLINED_FUNCTION_86() uuid];
  objc_claimAutoreleasedReturnValue();
  v12 = [OUTLINED_FUNCTION_9() initWithUUIDString:?];

  v8 = [v4 tabWithUUID:v12];
  if ([(TabController *)v4 _wbTabIsBlank:v6])
  {
    if ([v8 isLoading])
    {
      v9 = [v8 isLoadingStartPage] ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  *v2 = v9;

  OUTLINED_FUNCTION_74();
}

void __82__TabController_didFetchRecentlyAcceptedSharedTabGroupWithUUID_acceptedShareDate___block_invoke_cold_1(uint64_t *a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138543362;
  v5 = v3;
  OUTLINED_FUNCTION_71(&dword_215819000, a2, a3, "Recently accepted shared Tab Group with UUID %{public}@ was nil after reload.", &v4);
}

- (uint64_t)insertTabWithUUIDForNavigation:.cold.1()
{
  OUTLINED_FUNCTION_47();
  [v1 isPrivateBrowsingEnabled];
  OUTLINED_FUNCTION_49();
  result = [TabController _insertNewBlankTabDocumentWithOptions:v2 inBackground:v3 animated:v4];
  *v0 = result;
  return result;
}

- (void)_focusedTabGroupForWindowState:(uint8_t *)buf .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_impl(&dword_215819000, log, OS_LOG_TYPE_DEFAULT, "Initiate window %{public}@ with FTG %{public}@", buf, 0x16u);
}

@end