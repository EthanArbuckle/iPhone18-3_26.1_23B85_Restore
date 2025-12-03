@interface TabController
- (BOOL)_makeRoomForNewTab:(_BYTE *)tab;
- (BOOL)_shouldCloseAfterAutomaticallySwitchingFromTab:(_BOOL8)tab;
- (BOOL)_switchToTab:(void *)tab orTabUUID:(void *)d inTabGroup:;
- (BOOL)canAddNewTabForCurrentBrowsingMode;
- (BOOL)canAddNewTabForPrivateBrowsing:(BOOL)browsing;
- (BOOL)canAddNewTabInTabGroup:(id)group;
- (BOOL)canAddNewTabInTabGroup:(id)group withTabCount:(unint64_t)count;
- (BOOL)canCloseOtherTabs;
- (BOOL)canCloseTab;
- (BOOL)canCloseTabWithUUID:(id)d;
- (BOOL)canCloseWBTab:(id)tab;
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
- (BOOL)isTabGroupActive:(id)active;
- (BOOL)isTabPinnable:(id)pinnable;
- (BOOL)isTabUUIDActive:(id)active;
- (BOOL)isTabWithUUIDBeingHiddenFromTabView:(id)view;
- (BOOL)moveTabWithUUID:(id)d fromForeignLocalGroupWithUUIDIntoActiveGroup:(id)group;
- (BOOL)readState;
- (BOOL)scrollTabSwitcherToTabGroupIfShowing:(id)showing;
- (BOOL)selectFirstUnpinnedTab;
- (BOOL)switchToTabWithUUID:(id)d inTabGroupWithUUID:(id)iD;
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
- (TabController)initWithBrowserController:(id)controller;
- (TabDocument)_activeTabDocumentForTabGroup:(TabDocument *)group;
- (TabDocument)_unhibernateTabIfNeeded:(TabDocument *)needed;
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
- (char)_activeTabDocumentForPrivateBrowsing:(char *)browsing;
- (char)_mutableTabsForPrivateBrowsing:(char *)browsing;
- (char)_tabsForPrivateBrowsing:(char *)browsing;
- (char)mutableAlternateTabs;
- (char)mutableCurrentTabs;
- (id)_activeTabGroupForWindowState:(void *)state;
- (id)_addTabGroup:(void *)group fromTabs:;
- (id)_allTabGroupsAcrossWindows;
- (id)_application;
- (id)_containerForPinnedTabsInTabGroup:(void *)group;
- (id)_createFromCurrentTabsActionForTabGroupsMenu:(uint64_t)menu;
- (id)_createNewTabGroupActionForTabGroupsMenu:;
- (id)_deleteActionForTabGroup:(char)group forPickerSheet:;
- (id)_dropWBTab:(void *)tab fromBrowserController:(unint64_t)controller atIndex:(int)index pinned:(void *)pinned anchorTab:;
- (id)_findPinnedTabMatchingURL:(uint64_t)l;
- (id)_firstUnpinnedTab;
- (id)_focusedTabGroupForWindowState:(_BYTE *)state;
- (id)_foreignLocalTabGroupWithUUID:(void *)d;
- (id)_imageForTabGroupButton;
- (id)_insertNewBlankTabDocumentWithOptions:(uint64_t)options inBackground:(char)background animated:(char)animated;
- (id)_insertNewBlankTabDocumentWithPrivateBrowsing:(void *)browsing inBackground:(int)background animated:(char)animated;
- (id)_localTabGroupTitleProvider;
- (id)_mutableTabsForTabGroup:(uint64_t)group;
- (id)_oldestInactiveTabDocumentForPrivateBrowsing:(uint64_t)browsing;
- (id)_openBlankTabDocument;
- (id)_openTabForDroppedLinkAtIndex:(uint64_t)index pinned:;
- (id)_orderIndexesForTabs:(void *)tabs;
- (id)_renameActionForTabGroup:(char)group forPickerSheet:;
- (id)_reopenGloballyPinnedTabsForUndoAction:(id *)action;
- (id)_reopenTabGroupTabsForUndoAction:(id)action;
- (id)_representativeHostForTabGroup:(uint64_t)group;
- (id)_shareActionForTabGroup:(void *)group;
- (id)_subMenusForTabGroup:(uint64_t)group variant:;
- (id)_switchToTabGroupMenu;
- (id)_syncedTabGroupsForActiveProfileWithOptions:(void *)options;
- (id)_tabCountForDisplay;
- (id)_tabDocumentForWebClip:(uint64_t)clip;
- (id)_tabForWBTab:(_BYTE *)tab didReuseTabDocument:;
- (id)_tabForWBTab:(id *)tab;
- (id)_tabGroupAlertControllerWithTitle:(uint64_t)title message:(void *)message okActionTitle:(uint64_t)actionTitle role:(char)role showingSuggestionsIfPossible:(void *)possible actionHandler:(void *)handler completionHandler:;
- (id)_tabGroupShareSheetWithTabGroupActivityItemConfiguration:(void *)configuration;
- (id)_tabGroupsFromAllWindows;
- (id)_titleForTabGroupButton;
- (id)_toggleSidebarSectionIsExpandedActionForTabGroup:(id *)group;
- (id)_toggleTabViewActionForTabGroup:(id *)group;
- (id)_undoActionForClosingTabs:(id)tabs;
- (id)_undoCloseAllTabsActionName;
- (id)_urlForActiveTabInTabGroup:(id)group;
- (id)addNewTabGroupWithTitle:(id)title fromExistingTabs:(BOOL)tabs;
- (id)addNewTabGroupWithTitle:(id)title fromTabs:(id)tabs;
- (id)appendWBTabInTabGroupWithUUID:(id)d;
- (id)browserControllerContainingLocalTabGroupUUID:(id)d;
- (id)cachedTabSwitcherShareConfigurationForTabGroup:(id)group;
- (id)contextMenuConfigurationForMultipleTabSelection:(id)selection;
- (id)contextMenuConfigurationForTab:(id)tab inTabGroup:(id)group;
- (id)contextMenuConfigurationForTabGroup:(id)group variant:(int64_t)variant;
- (id)copyBookmark:(id)bookmark toPerTabGroupBookmarkFolderWithID:(int)d;
- (id)defaultTabToSelectInTabGroup:(id)group;
- (id)detachTabWithUUID:(id)d forMoveToBrowserController:(id)controller;
- (id)dragItemForTab:(id)tab tabItem:(id)item;
- (id)dropTabsAtIndex:(unint64_t)index pinned:(BOOL)pinned dropSession:(id)session dragItems:(id)items;
- (id)duplicateTab:(id)tab;
- (id)existingPersistedTitleForTabDocument:(id)document;
- (id)globalPinnedTabsForTabGroup:(id)group;
- (id)iconForSharingTabGroup:(id)group;
- (id)iconForTabUUID:(id)d;
- (id)imageForTabGroup:(id)group;
- (id)menuForTabGroup:(id)group variant:(int64_t)variant;
- (id)moveMenuOnPageMenuWithDismissHandler:(id)handler;
- (id)normalPinnedTabs;
- (id)oldestTabsWithLimit:(unint64_t)limit inPrivateBrowsing:(BOOL)browsing;
- (id)openInTabGroupMenuWithNewTabGroupName:(id)name URL:(id)l descendantCount:(int64_t)count handler:(id)handler;
- (id)originatingTabForTab:(id)tab;
- (id)pinnedWBTabsForTabGroup:(id)group;
- (id)privatePinnedTabs;
- (id)profilesMenuElementsWithOptions:(unint64_t)options movingSelectedTabGroups:(id)groups actionHandler:(id)handler;
- (id)recentlyClosedTabsMenuForTabGroupWithUUID:(id)d;
- (id)representativeURLForTabGroupConfirmationAlert:(id)alert;
- (id)swipeActionsConfigurationForTab:(id)tab inTabGroup:(id)group;
- (id)swipeActionsConfigurationForTabGroup:(id)group forPickerSheet:(BOOL)sheet;
- (id)switchToTabDocumentForWebClip:(id)clip;
- (id)syntheticBookmarkFolderForTabGroup:(id)group withAttribution:(BOOL)attribution;
- (id)syntheticBookmarkFoldersIncludingActiveTabGroup:(BOOL)group;
- (id)tabAtIndex:(unint64_t)index;
- (id)tabDocumentForURL:(id)l forceUnhibernate:(BOOL)unhibernate;
- (id)tabDocumentWithUUID:(id)d;
- (id)tabForURL:(id)l;
- (id)tabGroupRelatedToTabWithUUID:(id)d;
- (id)tabGroupShareSheetForCurrentTabGroup;
- (id)tabGroupsMenuChildrenProvider;
- (id)tabGroupsMenuElementsWithOptions:(unint64_t)options newTabGroupName:(id)name hostTitle:(id)title descendantCount:(int64_t)count movingSelectedTabs:(id)tabs actionHandler:(id)handler dismissHandler:(id)dismissHandler;
- (id)tabGroupsMenuForTabGroupButton:(BOOL)button;
- (id)tabThumbnailCollectionView;
- (id)tabWithIDForWebExtensions:(double)extensions;
- (id)tabsOlderThan:(id)than inPrivateBrowsing:(BOOL)browsing;
- (id)topScopedBookmarkListForActiveTabGroup;
- (id)unnamedTabGroupDisplayTitleProvider;
- (id)wbTabWithUUID:(id)d;
- (uint64_t)_controlledByAutomation;
- (uint64_t)_currentTabsAreBlank;
- (uint64_t)_didCompleteStateRestoration;
- (uint64_t)_indexForInsertionAfterTab:(int)tab withPrivateBrowsingEnabled:;
- (uint64_t)_indexForInsertionBeforeTab:(int)tab withPrivateBrowsingEnabled:;
- (uint64_t)_isProfileActive:(uint64_t)result;
- (uint64_t)_performWithFixedTabBarItems:(uint64_t)result;
- (uint64_t)_shouldReloadAfterAutomaticallySwitchingToTab:(uint64_t)tab;
- (uint64_t)_tabShouldBeHiddenFromWebExtensions:(void *)extensions;
- (uint64_t)_wbTabIsBlank:(uint64_t)blank;
- (uint64_t)_wbTabIsShowingStartPageOverriddenByExtension:(uint64_t)extension;
- (uint64_t)canCloseLastTabInTabGroup:(uint64_t)group;
- (uint64_t)isTabInActiveTabGroup:(uint64_t)result;
- (uint64_t)tabCollectionViewManager;
- (unint64_t)indexForTab:(id)tab;
- (unint64_t)indexOfSelectedTab;
- (unint64_t)newTabGroupTabCount;
- (unint64_t)numberOfCurrentNonHiddenTabs;
- (unint64_t)numberOfTabs;
- (unint64_t)numberOfTabsForCloseAllAction;
- (void)_addNewActiveTabOverviewTab;
- (void)_addTabsToRecentlyClosed:(int)closed includeUndo:;
- (void)_appendTab:(void *)tab toTabGroup:;
- (void)_beganSharingTabGroup:(id)group;
- (void)_cancelPendingUpdateUserActivityTimer;
- (void)_cancelVeryRecentlyClosedTabCountInvalidationTimer;
- (void)_closeLibraryIfNeeded;
- (void)_closeTab:(unsigned int)tab animated:(int)animated allowAddingToRecentlyClosedTabs:(char)tabs keepWebViewAlive:(char)alive showAutoCloseTabsAlert:;
- (void)_closeTabGroup:(id *)group;
- (void)_closeTabs:(unsigned int)tabs animated:(int)animated allowAddingToRecentlyClosedTabs:(char)closedTabs keepWebViewAlive:(char)alive showAutoCloseTabsAlert:;
- (void)_cloudTabsDidUpdate:(id)update;
- (void)_copyLinksActionForTabGroup:forPickerSheet:;
- (void)_createInitialPrivateTabIfNeeded;
- (void)_createVeryRecentlyClosedTabCountInvalidationTimer;
- (void)_detachTab:(unsigned int)tab animated:;
- (void)_detachTabs:(id *)tabs;
- (void)_didPerformBatchUpdates;
- (void)_forceUpdateTabGroupTitleIfNeeded:(id *)needed;
- (void)_hasPinnedStartPageExcludingTabs:(void *)tabs;
- (void)_hibernateTab:(char *)tab;
- (void)_insertTab:(unint64_t)tab atIndex:(uint64_t)index inBackground:(unsigned int)background animated:(char)animated updateUI:;
- (void)_lockedPrivateBrowsingStateDidChange:(id)change;
- (void)_markAllTabsInTabGroupAsRead:(uint64_t)read;
- (void)_movePinnedWBTab:(void *)tab toTabGroup:;
- (void)_openBlankTabDocumentInTabBarWithOptions:(uint64_t)options;
- (void)_openBookmark:orURL:inTabGroup:;
- (void)_openLibrary:cloudTabDeviceID:;
- (void)_openSingleBookmark:(void *)bookmark orURL:(void *)l inTabGroup:(int)group setActive:;
- (void)_prepareToMoveTabDocumentToWindow:(int)window createPlaceholderImage:;
- (void)_presentAutomaticTabClosingPromptIfNeededForClosedTabCount:(int)count;
- (void)_presentCloseAlertForTabGroup:completionHandler:;
- (void)_presentOpenAlertForFocusProfile:(int)profile completionHandler:(int)handler;
- (void)_presentOpenAlertForFocusedTabGroup:(int)group completionHandler:(int)handler;
- (void)_presentRenameAlertForTabGroup:(id *)group;
- (void)_presentShareSheetForTabGroup:(uint64_t)group sender:;
- (void)_presentShareSheetWithTabGroupActivityItemConfiguration:sender:;
- (void)_reconfigureLibraryItemViewForTabGroupWithUUID:(uint64_t)d;
- (void)_redoCloseTabs:(id)tabs;
- (void)_registerSingleUndoActionForClosedTabs:(id *)tabs;
- (void)_registerUndoActionsForClosedTabs:(uint64_t)tabs;
- (void)_registerUndoWithGroup:(void *)group actions:;
- (void)_removeTab:(uint64_t)tab fromTabGroup:(uint64_t)group;
- (void)_replaceTabs:(uint64_t)tabs withTabs:(unsigned int)withTabs persist:;
- (void)_reportTabGroupCreationPrepopulatedWithTabs:(int)tabs fromPotentialAnalyticsSource:(int)source TabGroupsMenu:(int)menu;
- (void)_requestContactsAccessIfNeeded;
- (void)_restoreEducationTabsIfNecessaryAnimated:(uint64_t)animated;
- (void)_reuseTabAfterInsertion:(id *)insertion;
- (void)_reuseTabIfNecessary:(uint64_t)necessary;
- (void)_selectAcceptedSharedTabGroup:(uint64_t)group;
- (void)_selectNewTabGroupIfNecessaryBeforeClosingTabGroup:(void *)group;
- (void)_sendDidEndDocumentUpdates;
- (void)_sendEventsForAutoFillTelemetryForClosingTabs:(uint64_t)tabs;
- (void)_setTabGroupButtonTitle:image:;
- (void)_switchTabGroupLoopByRelativeIndex:(uint64_t)index;
- (void)_tabDocumentsWereReusedWhenActiveTabGroupChanged:(uint64_t)changed;
- (void)_tabGroupTabDidUpdatePinned:(void *)pinned inTabGroup:;
- (void)_tabWasAddedToReusableTabs:(void *)tabs fromWindowWithID:(double)d previousTabPositions:;
- (void)_undoCloseTabs:(id)tabs;
- (void)_updateActiveTabForTabGroup:;
- (void)_updateContextKitSuggestionsForTabGroupWithCompletionHandler:(void *)handler;
- (void)_updateShare:(void *)share forActiveTabGroup:;
- (void)_updateTabGroupSuggestions:matchingText:;
- (void)_updateTabsForTabGroup:(uint64_t)group;
- (void)_updateTabsWithPinnedTabs:(unsigned int)tabs persist:;
- (void)_updateTabsWithPinnedWBTabs:(uint64_t)tabs;
- (void)_updateUserActivityTimerFired;
- (void)addBookmarkFolderForTabs:(id)tabs;
- (void)addDocumentObserver:(id)observer;
- (void)allowsClosingLastTab;
- (void)attemptToSelectTabGroupFromShare:(id)share;
- (void)authenticateToUnlockPrivateBrowsing;
- (void)bacgkroundTaskWillExpireWithTotalBackgroundTime:(double)time;
- (void)canCloseOtherTabs;
- (void)clearBrowserController;
- (void)clearCachedTabSwitcherShareConfigurationForTabGroupWithUUID:(id)d;
- (void)clearHiddenTabForExplanationView;
- (void)closeAllOpenTabsAnimated:(BOOL)animated;
- (void)closeOtherTabs;
- (void)closeSelectedTabs:(id)tabs;
- (void)closeTab;
- (void)closeTab:(id)tab animated:(BOOL)animated;
- (void)closeTabWithURL:(id)l UUID:(id)d;
- (void)closeTabs:(id)tabs inInactiveTabGroup:(id)group;
- (void)closeTabsAutomaticallyIfNecessary;
- (void)closeWBTabs:(id)tabs action:(id)action;
- (void)createTabGroupFromExistingTabs:(BOOL)tabs completionHandler:(id)handler;
- (void)deactivateAllUsageTrackingInformationIfNecessary;
- (void)dealloc;
- (void)didFetchRecentlyAcceptedSharedTabGroupWithUUID:(id)d acceptedShareDate:(id)date;
- (void)didFocusTabGroup:(id)group;
- (void)didGainOwnershipOfTab:(id)tab;
- (void)didSelectProfileWithIdentifier:(id)identifier previousProfileIdentifier:(id)profileIdentifier;
- (void)didUpdateTabDocumentsInTabGroupWithUUID:(int)d;
- (void)dismissOpenTabGroupAlertIfNeeded;
- (void)displayAlreadyAcceptedSharedTabGroupWithUUID:(id)d;
- (void)duplicateWBTabs:(id)tabs;
- (void)evictTabDocument:(id)document;
- (void)insertNewTabDocument:(id)document forcingOrderAfterTabDocument:(id)tabDocument inBackground:(BOOL)background animated:(BOOL)animated;
- (void)insertPerTabGroupBookmark:(id)bookmark inPerTabGroupBookmarkFolderWithID:(int)d;
- (void)insertTab:(id)tab afterTab:(id)afterTab inBackground:(BOOL)background animated:(BOOL)animated;
- (void)insertTabDocumentFromTabStateData:(id)data;
- (void)insertTabWithUUIDForNavigation:(id)navigation;
- (void)insertTabs:(id)tabs beforeTab:(id)tab inBackground:(BOOL)background animated:(BOOL)animated;
- (void)makeActiveTabDocumentActive;
- (void)moveTab:(id)tab fromTabGroupWithUUID:(id)d toTabGroupWithUUID:(id)iD afterTab:(id)afterTab;
- (void)moveTab:(id)tab overTab:(id)overTab;
- (void)moveTab:(id)tab toTabGroupWithUUID:(id)d;
- (void)moveTabGroup:(id)group beforeOrAfterTabGroup:(id)tabGroup;
- (void)moveTabGroup:(id)group toProfile:(id)profile;
- (void)moveTabsToNewWindow:(id)window;
- (void)moveWBTabs:(id)tabs toTabGroup:(id)group;
- (void)openInitialBlankTabDocumentIfNeeded;
- (void)openLibrary:(id)library;
- (void)openNewTabWithOptions:(int64_t)options completionHandler:(id)handler;
- (void)openRecentlyClosedTabWithUUID:(id)d inTabGroupWithUUID:(id)iD;
- (void)openTab:(id)tab navigatedFromLibraryType:(id)type;
- (void)performBatchUpdatesWithBlock:(id)block;
- (void)performSuppressingDataModelUpdates:(id)updates;
- (void)persistActiveTabGroupOrTabGroupVisibleInSwitcher;
- (void)persistAllCurrentTabsInBackground:(BOOL)background;
- (void)persistTab:(id)tab notify:(BOOL)notify;
- (void)persistTabs:(id)tabs inTabGroupWithUUID:(id)d inBackground:(BOOL)background;
- (void)pinnedTabsManager:(id)manager didUpdatePinnedTabs:(id)tabs inProfileWithIdentifier:(id)identifier;
- (void)pinnedTabsManager:(id)manager didUpdatePinnedTabs:(id)tabs isPrivate:(BOOL)private;
- (void)presentAlertToCreateTabGroupFromTabs:(id)tabs withTitle:(id)title message:(id)message suggestedName:(id)name okActionTitle:(id)actionTitle completionHandler:(id)handler;
- (void)registerUndoWithName:(id)name actions:(id)actions;
- (void)registerUndoWithType:(int64_t)type actions:(id)actions;
- (void)reloadTabsUsingFilter:(void *)filter;
- (void)removeDocumentObserver:(id)observer;
- (void)removeSingleBlankTabFromActiveTabGroup;
- (void)removeSingleBlankTabFromInactiveTabGroup:(id)group;
- (void)reorderPinnedTabsIntoPlace;
- (void)replaceBlankActiveTabWithTab:(id)tab;
- (void)replaceBlankActiveTabWithTabs:(id)tabs andSelectTab:(id)tab;
- (void)replaceTabDocument:(id)document withTabDocument:(id)tabDocument committingSpeculativeLoad:(BOOL)load;
- (void)saveStateInBackground:(BOOL)background needsValidate:(BOOL)validate;
- (void)saveTabDocumentUserActivitySoon:(id)soon;
- (void)selectLocalTabGroup;
- (void)selectPrivateTabGroup;
- (void)setActiveProfileIdentifier:(id)identifier;
- (void)setActiveTab:(id)tab animated:(BOOL)animated deferActivation:(BOOL)activation;
- (void)setActiveTabDocument:(id)document animated:(BOOL)animated deferActivation:(BOOL)activation;
- (void)setActiveTabGroupUUID:(id)d;
- (void)setActiveTabUUID:(id)d;
- (void)setPrivateBrowsingMode:(int64_t)mode animated:(BOOL)animated;
- (void)setTab:(id)tab isPinned:(BOOL)pinned;
- (void)setTitle:(id)title forTabGroupWithUUID:(id)d;
- (void)setWBTabs:(id)tabs arePinned:(BOOL)pinned;
- (void)setWindowState:(id)state;
- (void)sortTabsInTabGroupWithUUIDString:(id)string withSortMode:(int64_t)mode;
- (void)sortTabsWithMode:(int64_t)mode;
- (void)switchOutOfSyncedTabGroup;
- (void)switchToTabGroupVisibleInSwitcherIfNeeded;
- (void)tabDocumentDidUpdateUUID:(id)d previousUUID:(id)iD;
- (void)tabGroupConfirmationAlertDidBeginDismissal:(id)dismissal;
- (void)tabGroupManager:(id)manager didRemoveTabGroupWithUUID:(id)d;
- (void)tabGroupManager:(id)manager didUpdateTabGroupWithUUID:(id)d;
- (void)tabGroupManager:(id)manager didUpdateTabWithUUID:(id)d userDriven:(BOOL)driven;
- (void)tabGroupManager:(id)manager didUpdateTabsInTabGroupWithUUID:(id)d;
- (void)tabGroupManager:(id)manager willPerformBlockUpdatesForTabGroupWithUUID:(id)d;
- (void)tabGroupManager:(id)manager willReplaceTabWithUUID:(id)d withTabWithUUID:(id)iD;
- (void)tabGroupManagerDidDeletedAllLocalTabs:(id)tabs;
- (void)tabGroupManagerDidFinishSetup:(id)setup;
- (void)tabGroupManagerDidUpdateTabGroups:(id)groups;
- (void)tabGroupNamingTextDidChange:(id)change;
- (void)tabSwitcherShareConfigurationForTabGroup:(id)group completion:(id)completion;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)togglePinningTab:(id)tab inInactiveTabGroup:(id)group;
- (void)toggleTabGroupUUIDExpanded:(id)expanded;
- (void)updateActiveTab;
- (void)updateEducationTabsLastSyncDate;
- (void)updateFocusProfileEnteringForeground;
- (void)updateFocusedTabGroupEnteringForeground;
- (void)updateHibernatedTabDocumentsSavingState;
- (void)updateLastSelectedTabUUIDForClosingWBTabs:(uint64_t)tabs;
- (void)updateLocalTabGroupTitle;
- (void)updateLockedBrowsingState;
- (void)updateSelectedTabGroupName;
- (void)updateTabCount;
- (void)updateUsageTrackingInformationIfNecessary;
- (void)updateWBTabWithTab:(id)tab notify:(BOOL)notify persist:(BOOL)persist;
- (void)webContentFilterChanged;
- (void)willLoseOwnershipOfTab:(id)tab;
- (void)willSelectProfileWithIdentifier:(id)identifier;
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
    activeNonLibraryTab = activeLibraryTab;
  }

  else
  {
    activeNonLibraryTab = [(TabController *)self activeNonLibraryTab];
  }

  return activeNonLibraryTab;
}

- (TabDocument)activeNonLibraryTab
{
  isPrivateBrowsingEnabled = [(TabController *)self isPrivateBrowsingEnabled];

  return [(TabController *)self _activeTabDocumentForPrivateBrowsing:isPrivateBrowsingEnabled];
}

- (NSString)startPageBackgroundImageIdentifier
{
  v3 = &stru_2827BF158;
  if (![(TabController *)self isPrivateBrowsingEnabled])
  {
    activeTabGroup = [(TabController *)self activeTabGroup];
    if ([activeTabGroup isNamed])
    {
      activeTabGroup2 = [(TabController *)self activeTabGroup];
      uuid = [activeTabGroup2 uuid];
    }

    else
    {
      uuid = [(TabController *)self activeProfileIdentifier];
    }

    if ([(__CFString *)uuid isEqualToString:*MEMORY[0x277D49BD8]])
    {
      v7 = &stru_2827BF158;
    }

    else
    {
      v7 = uuid;
    }

    v3 = v7;
  }

  return v3;
}

- (NSString)activeProfileIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  activeProfileIdentifier = [WeakRetained activeProfileIdentifier];

  return activeProfileIdentifier;
}

- (NSArray)currentTabs
{
  isPrivateBrowsingEnabled = [(TabController *)self isPrivateBrowsingEnabled];

  return [(TabController *)self _tabsForPrivateBrowsing:isPrivateBrowsingEnabled];
}

- (void)_sendDidEndDocumentUpdates
{
  if (self)
  {
    [*(self + 272) didEndUpdates];
    v1 = +[TabDocumentManager sharedManager];
    [v1 reclaimTabsIfNeeded];
  }
}

- (id)normalPinnedTabs
{
  if (self)
  {
    normalTabs = [self normalTabs];
    v2 = [normalTabs safari_filterObjectsUsingBlock:&__block_literal_global_51];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)privatePinnedTabs
{
  if (self)
  {
    privateTabs = [self privateTabs];
    v2 = [privateTabs safari_filterObjectsUsingBlock:&__block_literal_global_53_0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (char)mutableCurrentTabs
{
  if (self)
  {
    selfCopy = self;
    [self isPrivateBrowsingEnabled];
    OUTLINED_FUNCTION_54();
    if (!v4)
    {
      v3 = 24;
    }

    self = *&selfCopy[v3];
    v1 = vars8;
  }

  return self;
}

- (void)_createInitialPrivateTabIfNeeded
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (![self[3] count])
    {
      v2 = [TabDocument alloc];
      uUID = [MEMORY[0x277CCAD78] UUID];
      WeakRetained = objc_loadWeakRetained(self + 1);
      v5 = [(TabDocument *)v2 initWithTitle:0 URL:0 UUID:uUID privateBrowsingEnabled:1 hibernated:1 bookmark:0 browserController:WeakRetained];
      v6 = self[35];
      self[35] = v5;

      [self[35] setIsBlank:1];
      [self[35] displayNewTabOverridePageIfNecessary];
      [self[3] addObject:self[35]];
      privateTabGroup = [self[32] privateTabGroup];
      v9[0] = self[35];
      [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_22() uuid];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_21() persistTabs:uUID inTabGroupWithUUID:WeakRetained inBackground:1];

      uuid = [self[35] uuid];
      [uuid UUIDString];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_33() setLastSelectedTabUUID:WeakRetained];

      [self[35] setHasBeenInserted:1];
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
  if (self)
  {
    [OUTLINED_FUNCTION_68(self) endFixingTabBarItems];
    [v1[9] endFixingTabOverviewItems];
    [v1[9] updateTabOverviewItems];
    activeTabDocument = [v1 activeTabDocument];
    [v1[9] updateTabBarAnimated:objc_msgSend(MEMORY[0x277D75D18] keepingTabVisible:{"areAnimationsEnabled"), activeTabDocument}];
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
  currentTabs = [(TabController *)self currentTabs];
  v3 = [currentTabs safari_filterObjectsUsingBlock:&__block_literal_global_55_0];

  return v3;
}

- (NSArray)privateTabs
{
  v2 = [(NSMutableArray *)self->_mutablePrivateTabs copy];

  return v2;
}

- (id)_application
{
  if (self)
  {
    self = +[Application sharedApplication];
    v1 = vars8;
  }

  return self;
}

- (NSArray)normalAndPrivateTabs
{
  mutableNormalTabs = self->_mutableNormalTabs;
  privateTabs = [(TabController *)self privateTabs];
  v4 = [(NSMutableArray *)mutableNormalTabs arrayByAddingObjectsFromArray:privateTabs];

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
    localTabGroup = [(WBWindowState *)self->_windowState localTabGroup];
    uuid = [localTabGroup uuid];
    activeTabGroupUUID = self->_activeTabGroupUUID;
    self->_activeTabGroupUUID = uuid;
  }

  objc_loadWeakRetained(&self->_browserController);
  [OUTLINED_FUNCTION_4() startPageBackgroundImageIdentifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_6_1() loadBackgroundImageIfNeededForIdentifier:?];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (![(NSMutableArray *)self->_mutableNormalTabs count])
  {
    v9 = [TabDocument alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [(TabDocument *)v9 initWithTitle:0 URL:0 UUID:uUID privateBrowsingEnabled:0 hibernated:1 bookmark:0 browserController:WeakRetained];
    normalActiveTabDocument = self->_normalActiveTabDocument;
    self->_normalActiveTabDocument = v11;

    [self->_normalActiveTabDocument setIsBlank:1];
    [self->_normalActiveTabDocument displayNewTabOverridePageIfNecessary];
    [(NSMutableArray *)self->_mutableNormalTabs addObject:self->_normalActiveTabDocument];
    activeTabGroup = [(TabController *)self activeTabGroup];
    if ([activeTabGroup isPrivateBrowsing])
    {
      localTabGroup2 = [(WBWindowState *)self->_windowState localTabGroup];
    }

    else
    {
      localTabGroup2 = activeTabGroup;
    }

    v15 = localTabGroup2;
    v18[0] = self->_normalActiveTabDocument;
    [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    objc_claimAutoreleasedReturnValue();
    uuid2 = [OUTLINED_FUNCTION_31() uuid];
    [(TabController *)self persistTabs:v4 inTabGroupWithUUID:uuid2 inBackground:1];

    [self->_normalActiveTabDocument setHasBeenInserted:1];
  }

  [(TabController *)&self->super.isa _createInitialPrivateTabIfNeeded];
  _application = [(TabController *)self _application];
  [_application updateTabCount];

  [(TabCollectionViewManager *)self->_tabCollectionViewManager updateTabOverviewItems];
  [WeakRetained clearCachedTabCompletionData];
}

- (id)_allTabGroupsAcrossWindows
{
  if (self)
  {
    allSyncedTabGroupsExceptRemoteUnnamedTabGroups = [*(self + 48) allSyncedTabGroupsExceptRemoteUnnamedTabGroups];
    v4 = [allSyncedTabGroupsExceptRemoteUnnamedTabGroups mutableCopy];

    WeakRetained = objc_loadWeakRetained((self + 8));
    browserWindowController = [WeakRetained browserWindowController];
    browserControllers = [browserWindowController browserControllers];

    OUTLINED_FUNCTION_5_0();
    v8 = browserControllers;
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

          tabController = [*(v21 + 8 * i) tabController];
          windowState = [tabController windowState];

          [windowState localTabGroup];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_11() safari_addObjectUnlessNil:?];

          [windowState privateTabGroup];
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
  isPrivateBrowsingEnabled = [(TabController *)self isPrivateBrowsingEnabled];

  return [(TabController *)self canAddNewTabForPrivateBrowsing:isPrivateBrowsingEnabled];
}

- (BOOL)hasUnreadTab
{
  activeTabGroup = [(TabController *)self activeTabGroup];
  isShared = [activeTabGroup isShared];

  if (!isShared)
  {
    return 0;
  }

  currentTabs = [(TabController *)self currentTabs];
  v6 = [currentTabs safari_containsObjectPassingTest:&__block_literal_global_618];

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
  currentTabs = [(TabController *)self currentTabs];
  if ([currentTabs count])
  {
    tabBarItemsFixed = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabBarItemsFixed];

    if (tabBarItemsFixed)
    {
      return;
    }

    currentTabs = [(TabController *)self activeTabGroup];
    [(TabController *)&self->super.isa _forceUpdateTabGroupTitleIfNeeded:currentTabs];
  }
}

- (void)updateSelectedTabGroupName
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  bannerController = [WeakRetained bannerController];
  tabGroupBanner = [bannerController tabGroupBanner];
  [tabGroupBanner updateTitle];

  _titleForTabGroupButton = [(TabController *)&self->super.isa _titleForTabGroupButton];
  _imageForTabGroupButton = [(TabController *)&self->super.isa _imageForTabGroupButton];
  [TabController _setTabGroupButtonTitle:image:];

  [WeakRetained updateTabGroupButtonsVisibility];
  [WeakRetained updateTabGroupHeading];
  rootViewController = [WeakRetained rootViewController];
  unifiedBar = [rootViewController unifiedBar];
  [unifiedBar setNeedsLayout];

  libraryController = [WeakRetained libraryController];
  [libraryController updateSelection];
}

- (id)_titleForTabGroupButton
{
  selfCopy = self;
  if (self)
  {
    activeTabGroup = [self activeTabGroup];
    WeakRetained = objc_loadWeakRetained(selfCopy + 1);
    if ([WeakRetained canShowProfileInNavigationBar])
    {
      isNamed = [activeTabGroup isNamed];

      if ((isNamed & 1) == 0)
      {
        activeProfile = [selfCopy activeProfile];
        selfCopy = [activeProfile title];

LABEL_7:
        goto LABEL_8;
      }
    }

    else
    {
    }

    selfCopy = [activeTabGroup displayTitle];
    goto LABEL_7;
  }

LABEL_8:

  return selfCopy;
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
  selfCopy = self;
  if (self)
  {
    activeTabGroup = [self activeTabGroup];
    isLocal = [activeTabGroup isLocal];

    if (isLocal)
    {
      currentTabs = [selfCopy currentTabs];
      localTabGroup = [currentTabs safari_filterObjectsUsingBlock:&__block_literal_global_289];

      selfCopy = [localTabGroup count];
    }

    else
    {
      localTabGroup = [selfCopy[32] localTabGroup];
      tabs = [localTabGroup tabs];
      v7 = [tabs count];
      pinnedTabs = [selfCopy[33] pinnedTabs];
      selfCopy = ([pinnedTabs count] + v7);
    }
  }

  return selfCopy;
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
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 1);
    canShowProfileInNavigationBar = [WeakRetained canShowProfileInNavigationBar];

    if (canShowProfileInNavigationBar)
    {
      activeProfile = [selfCopy activeProfile];
      selfCopy = [activeProfile symbolImage];
    }

    else
    {
      activeTabGroup = [selfCopy activeTabGroup];
      isShared = [activeTabGroup isShared];

      if (isShared)
      {
        selfCopy = [MEMORY[0x277D755B8] systemImageNamed:@"person.2.fill"];
      }

      else
      {
        selfCopy = 0;
      }
    }
  }

  return selfCopy;
}

- (WBProfile)activeProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  activeProfile = [WeakRetained activeProfile];

  return activeProfile;
}

- (WBSCloudTabDeviceProvider)profileCloudTabStore
{
  if ([MEMORY[0x277D49A08] isSafariProfilesEnabled] && !-[TabController isInDefaultProfile](self, "isInDefaultProfile"))
  {
    cloudTabStore = self->_tabGroupManager;
  }

  else
  {
    cloudTabStore = [(TabController *)self cloudTabStore];
  }

  return cloudTabStore;
}

- (BOOL)isInDefaultProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  isInDefaultProfile = [WeakRetained isInDefaultProfile];

  return isInDefaultProfile;
}

- (CloudTabStore)cloudTabStore
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  browserWindowController = [WeakRetained browserWindowController];
  cloudTabStore = [browserWindowController cloudTabStore];

  return cloudTabStore;
}

- (void)updateUsageTrackingInformationIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allTabDocuments = [(TabController *)self allTabDocuments];
  v4 = [allTabDocuments countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allTabDocuments);
        }

        [*(*(&v9 + 1) + 8 * v7++) updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:0];
      }

      while (v5 != v7);
      v5 = [allTabDocuments countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  activeTabDocument = [(TabController *)self activeTabDocument];
  [activeTabDocument updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:1];
}

- (NSArray)allTabDocuments
{
  tabDocuments = [(TabController *)self tabDocuments];
  privateTabDocuments = [(TabController *)self privateTabDocuments];
  v5 = [tabDocuments arrayByAddingObjectsFromArray:privateTabDocuments];

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
  _application = [(TabController *)self _application];
  if ([_application needsFocusProfileUpdate] && (objc_msgSend(_application, "needsFocusedTabGroupUpdate") & 1) == 0)
  {
    focusProfile = [_application focusProfile];
    if (!focusProfile || (-[TabController activeProfileIdentifier](self, "activeProfileIdentifier"), objc_claimAutoreleasedReturnValue(), [OUTLINED_FUNCTION_33() identifier], objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(OUTLINED_FUNCTION_14(), "isEqualToString:"), v3, v2, v7))
    {
      if (self->_didFinishTabGroupSetup)
      {
        [_application setNeedsFocusProfileUpdate:0];
      }

      goto LABEL_22;
    }

    if (![_application prefersSingleWindow])
    {
LABEL_22:

      goto LABEL_23;
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];
    presentedViewController = [viewControllerToPresentFrom presentedViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = presentedViewController;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = v12;
    if (v12)
    {
      role = [v12 role];
      v15 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      v16 = v15;
      if (role == 1)
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

    identifier = [focusProfile identifier];
    v18 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = identifier;
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
  _application = [(TabController *)self _application];
  if ([_application needsFocusedTabGroupUpdate] && (objc_msgSend(_application, "needsFocusProfileUpdate") & 1) == 0)
  {
    focusedTabGroup = [(TabController *)self focusedTabGroup];
    if (focusedTabGroup && ![OUTLINED_FUNCTION_40() isTabGroupActive:?])
    {
      if ([_application prefersSingleWindow])
      {
        WeakRetained = objc_loadWeakRetained(&self->_browserController);
        viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];
        presentedViewController = [viewControllerToPresentFrom presentedViewController];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = presentedViewController;
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
          uuid = [focusedTabGroup uuid];
          v13 = WBS_LOG_CHANNEL_PREFIXSiriLink();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138543362;
            v17 = uuid;
            OUTLINED_FUNCTION_75(&dword_215819000, v14, v15, "Opening FTG %{public}@ on entering foreground", &v16);
          }

          [OUTLINED_FUNCTION_65() setActiveTabGroupUUID:?];
        }
      }
    }

    else if (self->_didFinishTabGroupSetup)
    {
      [_application setNeedsFocusedTabGroupUpdate:0];
    }
  }
}

- (WBTabGroup)activeTabGroupOrTabGroupVisibleInSwitcher
{
  if (SFEnhancedTabOverviewEnabled() && [(TabCollectionViewManager *)self->_tabCollectionViewManager isShowingTabView])
  {
    tabSwitcherViewController = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabSwitcherViewController];
    visibleTabGroup = [tabSwitcherViewController visibleTabGroup];
    v5 = visibleTabGroup;
    if (visibleTabGroup)
    {
      activeTabGroup = visibleTabGroup;
    }

    else
    {
      activeTabGroup = [(TabController *)self activeTabGroup];
    }

    activeTabGroup2 = activeTabGroup;
  }

  else
  {
    activeTabGroup2 = [(TabController *)self activeTabGroup];
  }

  return activeTabGroup2;
}

- (BOOL)hasMultipleProfiles
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  hasMultipleProfiles = [WeakRetained hasMultipleProfiles];

  return hasMultipleProfiles;
}

- (NSString)activeLibraryType
{
  activeTabDocument = [(TabController *)self activeTabDocument];
  libraryType = [activeTabDocument libraryType];

  return libraryType;
}

- (NSArray)tabGroups
{
  unnamedTabGroups = [(TabController *)self unnamedTabGroups];
  namedTabGroups = [(TabController *)self namedTabGroups];
  v5 = [unnamedTabGroups arrayByAddingObjectsFromArray:namedTabGroups];

  return v5;
}

- (NSArray)unnamedTabGroups
{
  if (self->_windowState)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    unnamedTabGroup = [WeakRetained unnamedTabGroup];
    [v4 safari_addObjectUnlessNil:unnamedTabGroup];

    if ([WeakRetained isPrivateBrowsingAvailable])
    {
      privateTabGroup = [(WBWindowState *)self->_windowState privateTabGroup];
      [v4 addObject:privateTabGroup];
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
  activeTabDocument = [(TabController *)self activeTabDocument];
  [activeTabDocument setActive:1];
  [(TabControllerNotificationManager *)self->_notificationManager didSwitchFromTabDocument:0 toTabDocument:activeTabDocument];
}

- (NSArray)tabDocumentsForAllTabGroups
{
  currentTabDocuments = [(TabController *)self currentTabDocuments];
  v4 = [currentTabDocuments mutableCopy];

  tabGroups = [(TabController *)self tabGroups];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __44__TabController_tabDocumentsForAllTabGroups__block_invoke;
  v12 = &unk_2781D9840;
  selfCopy = self;
  v14 = v4;
  v6 = v4;
  [tabGroups enumerateObjectsUsingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

- (NSArray)currentTabDocuments
{
  currentTabs = [(TabController *)self currentTabs];
  v3 = [currentTabs safari_filterObjectsUsingBlock:&__block_literal_global_70_1];

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
  activeTabDocument = [(TabController *)self activeTabDocument];
  libraryType = [activeTabDocument libraryType];
  v4 = libraryType != 0;

  return v4;
}

- (WBTabGroup)privateTabGroupIfAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isPrivateBrowsingAvailable])
  {

LABEL_4:
    privateTabGroup = [(WBWindowState *)self->_windowState privateTabGroup];
    goto LABEL_6;
  }

  activeTabGroupUUID = self->_activeTabGroupUUID;
  privateTabGroup2 = [(WBWindowState *)self->_windowState privateTabGroup];
  uuid = [privateTabGroup2 uuid];
  LODWORD(activeTabGroupUUID) = [(NSString *)activeTabGroupUUID isEqual:uuid];

  if (activeTabGroupUUID)
  {
    goto LABEL_4;
  }

  privateTabGroup = 0;
LABEL_6:

  return privateTabGroup;
}

- (WBTabGroup)unnamedTabGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  unnamedTabGroup = [WeakRetained unnamedTabGroup];

  return unnamedTabGroup;
}

- (void)setWindowState:(id)state
{
  stateCopy = state;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_windowState, state);
    _localTabGroupTitleProvider = [(TabController *)self _localTabGroupTitleProvider];
    localTabGroup = [(WBWindowState *)self->_windowState localTabGroup];
    [localTabGroup setDisplayTitleProvider:_localTabGroupTitleProvider];

    privateTabGroup = [(WBWindowState *)self->_windowState privateTabGroup];
    [privateTabGroup setDisplayTitleProvider:&__block_literal_global_54];

    [(WBTabGroupManager *)self->_tabGroupManager registerWindowState:stateCopy];
  }
}

- (void)closeTabsAutomaticallyIfNecessary
{
  automaticTabClosingInterval = [MEMORY[0x277D49E28] automaticTabClosingInterval];
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
    localTabGroup = [(WBWindowState *)self->_windowState localTabGroup];
    tabs = [localTabGroup tabs];
    privateTabGroup = [(WBWindowState *)self->_windowState privateTabGroup];
    tabs2 = [privateTabGroup tabs];
    v9 = [tabs arrayByAddingObjectsFromArray:tabs2];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __50__TabController_closeTabsAutomaticallyIfNecessary__block_invoke;
    v29[3] = &unk_2781D9780;
    v29[4] = self;
    v29[5] = buf;
    v29[6] = automaticTabClosingInterval;
    v10 = [v9 safari_filterObjectsUsingBlock:v29];
    [MEMORY[0x277D49E28] setMostDistantLastViewedTime:*(v31 + 3)];
    if ([v10 count])
    {
      activeTabGroup = [(TabController *)self activeTabGroup];
      isLocal = [activeTabGroup isLocal];

      if (isLocal)
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
        localTabGroup2 = [(WBWindowState *)self->_windowState localTabGroup];
        uuid = [localTabGroup2 uuid];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __50__TabController_closeTabsAutomaticallyIfNecessary__block_invoke_2;
        v26[3] = &unk_2781D97D0;
        v27 = v10;
        [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:uuid persist:1 usingBlock:v26];
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

      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      v22 = [v10 count];
      v23 = WBSAutomaticTabClosingIntervalAnalyticsTitle();
      [mEMORY[0x277D499B8] didCloseTabsAutomaticallyWithCount:v22 tabClosingInterval:v23];
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
  currentTabs = [(TabController *)self currentTabs];
  v3 = [currentTabs safari_filterObjectsUsingBlock:&__block_literal_global_49_1];

  return v3;
}

- (NSArray)normalUnpinnedTabs
{
  normalTabs = [(TabController *)self normalTabs];
  v3 = [normalTabs safari_filterObjectsUsingBlock:&__block_literal_global_57];

  return v3;
}

- (NSArray)privateUnpinnedTabs
{
  privateTabs = [(TabController *)self privateTabs];
  v3 = [privateTabs safari_filterObjectsUsingBlock:&__block_literal_global_59_0];

  return v3;
}

- (id)tabsOlderThan:(id)than inPrivateBrowsing:(BOOL)browsing
{
  v6 = MEMORY[0x277CBEA80];
  thanCopy = than;
  currentCalendar = [v6 currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [currentCalendar dateByAddingComponents:thanCopy toDate:date options:0];

  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  if (browsing)
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
  currentTabs = [(TabController *)self currentTabs];
  tabDocumentBeingHiddenFromTabView = self->_tabDocumentBeingHiddenFromTabView;
  if (tabDocumentBeingHiddenFromTabView && (v5 = -[TabDocument isPrivateBrowsingEnabled](tabDocumentBeingHiddenFromTabView, "isPrivateBrowsingEnabled"), v5 == -[TabController isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")) && [currentTabs containsObject:self->_tabDocumentBeingHiddenFromTabView])
  {
    v6 = [currentTabs count] - 1;
  }

  else
  {
    v6 = [currentTabs count];
  }

  return v6;
}

- (unint64_t)numberOfTabsForCloseAllAction
{
  numberOfCurrentNonHiddenTabs = [(TabController *)self numberOfCurrentNonHiddenTabs];
  pinnedTabs = [(TabController *)self pinnedTabs];
  v5 = numberOfCurrentNonHiddenTabs - [pinnedTabs count];

  return v5;
}

- (NSArray)pinnedTabDocuments
{
  currentTabs = [(TabController *)self currentTabs];
  v3 = [currentTabs safari_filterObjectsUsingBlock:&__block_literal_global_72];

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
  currentTabs = [(TabController *)self currentTabs];
  v3 = [currentTabs safari_filterObjectsUsingBlock:&__block_literal_global_74];

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
  normalTabs = [(TabController *)self normalTabs];
  v3 = [normalTabs safari_filterObjectsUsingBlock:&__block_literal_global_76];

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
  privateTabs = [(TabController *)self privateTabs];
  v3 = [privateTabs safari_filterObjectsUsingBlock:&__block_literal_global_78];

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

- (void)addDocumentObserver:(id)observer
{
  if (observer)
  {
    [(TabControllerNotificationManager *)self->_notificationManager addObserver:?];
  }
}

- (void)removeDocumentObserver:(id)observer
{
  if (observer)
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
  allTabDocuments = [(TabController *)self allTabDocuments];
  [allTabDocuments enumerateObjectsUsingBlock:&__block_literal_global_87];
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
  allTabDocuments = [(TabController *)self allTabDocuments];
  v4 = [allTabDocuments countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allTabDocuments);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_browserController);
        tabDocumentPlayingPIPVideo = [WeakRetained tabDocumentPlayingPIPVideo];

        if (tabDocumentPlayingPIPVideo != v8)
        {
          [v8 updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allTabDocuments countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  allTabDocuments = [(TabController *)self allTabDocuments];
  v3 = [allTabDocuments countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allTabDocuments);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldObscureForDigitalHealth])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allTabDocuments countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  tabBeingActivated = [(TabController *)self tabBeingActivated];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = tabBeingActivated;
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
  tabThumbnailCollectionView = [(TabController *)&self->super.isa tabThumbnailCollectionView];
  itemToActivate = [tabThumbnailCollectionView itemToActivate];

  if (!itemToActivate || ([itemToActivate UUID], v5 = objc_claimAutoreleasedReturnValue(), -[TabController tabWithUUID:](self, "tabWithUUID:", v5), activeTabDocument = objc_claimAutoreleasedReturnValue(), v5, !activeTabDocument))
  {
    activeTabDocument = [(TabController *)self activeTabDocument];
  }

  return activeTabDocument;
}

- (BOOL)canCloseTab
{
  selfCopy = self;
  activeTabDocument = [(TabController *)self activeTabDocument];
  if ([activeTabDocument isBlank] && (objc_msgSend(activeTabDocument, "isPinned") & 1) == 0)
  {
    unpinnedTabs = [(TabController *)selfCopy unpinnedTabs];
    if ([unpinnedTabs count] == 1)
    {
      if (!selfCopy)
      {
LABEL_23:

        goto LABEL_11;
      }

      v5 = [(TabController *)selfCopy _hasPinnedStartPageExcludingTabs:?];

      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_browserController);
  if (([WeakRetained isPrivateBrowsingEnabled] & 1) == 0)
  {

    goto LABEL_13;
  }

  v7 = +[Application sharedApplication];
  isPrivateBrowsingLocked = [v7 isPrivateBrowsingLocked];

  if ((isPrivateBrowsingLocked & 1) == 0)
  {
LABEL_13:
    unpinnedTabs = [(TabController *)&selfCopy->super.isa tabThumbnailCollectionView];
    if ([unpinnedTabs presentationState] == 1 || objc_msgSend(unpinnedTabs, "presentationState") == 2)
    {
      if ([unpinnedTabs defersActivation])
      {
        itemToActivate = [unpinnedTabs itemToActivate];
        v11 = itemToActivate;
        if (itemToActivate && ([itemToActivate isPinned] & 1) == 0)
        {
          uUID = [v11 UUID];
          LOBYTE(selfCopy) = [(TabController *)selfCopy canCloseTabWithUUID:uUID];
        }

        else
        {
          LOBYTE(selfCopy) = 0;
        }
      }

      else
      {
        LOBYTE(selfCopy) = 0;
      }
    }

    else
    {
      LOBYTE(selfCopy) = 1;
    }

    goto LABEL_23;
  }

LABEL_10:
  LOBYTE(selfCopy) = 0;
LABEL_11:

  return selfCopy;
}

- (BOOL)canCloseOtherTabs
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isPrivateBrowsingEnabled])
  {
    v4 = +[Application sharedApplication];
    isPrivateBrowsingLocked = [v4 isPrivateBrowsingLocked];

    if (isPrivateBrowsingLocked)
    {
      return 0;
    }
  }

  else
  {
  }

  currentTabs = [(TabController *)self currentTabs];
  if ([currentTabs count] >= 2)
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

- (void)setActiveTab:(id)tab animated:(BOOL)animated deferActivation:(BOOL)activation
{
  activationCopy = activation;
  animatedCopy = animated;
  v8 = [(TabController *)self _unhibernateTabIfNeeded:tab];
  [(TabController *)self setActiveTabDocument:v8 animated:animatedCopy deferActivation:activationCopy];
}

- (BOOL)canAddNewTabInTabGroup:(id)group
{
  groupCopy = group;
  tabs = [groupCopy tabs];
  v6 = [tabs count];

  if ([groupCopy usesGlobalPinnedTabs])
  {
    v7 = [(TabController *)self pinnedWBTabsForTabGroup:groupCopy];
    v6 += [v7 count];
  }

  v8 = [(TabController *)self canAddNewTabInTabGroup:groupCopy withTabCount:v6];

  return v8;
}

- (BOOL)canAddNewTabInTabGroup:(id)group withTabCount:(unint64_t)count
{
  groupCopy = group;
  mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
  allowsUnlimitedTabs = [mEMORY[0x277D28C70] allowsUnlimitedTabs];

  if (allowsUnlimitedTabs)
  {
    if ([MEMORY[0x277D49E28] automaticTabClosingInterval] || (objc_msgSend(MEMORY[0x277D75128], "sharedApplication"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "supportsMultipleScenes"), v9, (v10 & 1) != 0))
    {
      isNamed = 1;
    }

    else
    {
      isNamed = [groupCopy isNamed];
    }

    _application = [(TabController *)self _application];
    v13 = [_application maximumTabCountAllowingMoreTabs:isNamed] > count;
  }

  else
  {
    _application = [(TabController *)self _application];
    v13 = [_application canAddNewTabForPrivateBrowsing:{objc_msgSend(groupCopy, "isPrivateBrowsing")}];
  }

  return v13;
}

- (void)performSuppressingDataModelUpdates:(id)updates
{
  ++self->_updateTabsSuppressionCount;
  (*(updates + 2))(updates, a2);
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

- (void)insertTabs:(id)tabs beforeTab:(id)tab inBackground:(BOOL)background animated:(BOOL)animated
{
  tabsCopy = tabs;
  tabCopy = tab;
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
  v12 = tabCopy;
  v14 = v12;
  backgroundCopy = background;
  animatedCopy = animated;
  [tabsCopy enumerateObjectsWithOptions:2 usingBlock:v13];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
}

- (uint64_t)_indexForInsertionBeforeTab:(int)tab withPrivateBrowsingEnabled:
{
  v3 = 0;
  if (self && a2)
  {
    v4 = 16;
    if (tab)
    {
      v4 = 24;
    }

    v5 = *(self + v4);
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

- (void)insertNewTabDocument:(id)document forcingOrderAfterTabDocument:(id)tabDocument inBackground:(BOOL)background animated:(BOOL)animated
{
  animatedCopy = animated;
  backgroundCopy = background;
  documentCopy = document;
  tabDocumentCopy = tabDocument;
  v11 = tabDocumentCopy;
  if (tabDocumentCopy)
  {
    v12 = tabDocumentCopy;
  }

  else
  {
    ancestorUUIDs = [documentCopy ancestorUUIDs];
    v14 = [ancestorUUIDs count];

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
  [(TabController *)self insertTab:documentCopy afterTab:v12 inBackground:backgroundCopy animated:animatedCopy];
}

- (CollectionViewTab)blankTabToReuse
{
  activeTabDocument = [(TabController *)self activeTabDocument];
  if ([activeTabDocument isBlank])
  {
    v4 = activeTabDocument;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    currentTabs = [(TabController *)self currentTabs];
    v4 = [currentTabs safari_firstObjectPassingTest:&__block_literal_global_98_1];

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
    currentTabs2 = [(TabController *)self currentTabs];
    lastObject = [currentTabs2 lastObject];
    [(TabController *)self moveTab:v4 overTab:lastObject];
  }

  v8 = v4;
LABEL_10:

  return v8;
}

- (void)openNewTabWithOptions:(int64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = handlerCopy;
  }

  else
  {
    v7 = &__block_literal_global_101;
  }

  if ([(TabController *)self isPrivateBrowsingAndLocked])
  {
    _application = [(TabController *)self _application];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__TabController_openNewTabWithOptions_completionHandler___block_invoke_2;
    v19[3] = &unk_2781D9950;
    v19[4] = self;
    v20 = v7;
    optionsCopy = options;
    [_application authenticateToUnlockPrivateBrowsingWithCompletionHandler:v19];

    WeakRetained = v20;
    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (!self || (options & 3) == 1 || (options & 3) != 2 && ![(TabController *)self isPrivateBrowsingEnabled])
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
    optionsCopy2 = options;
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

- (void)openLibrary:(id)library
{
  libraryCopy = library;
  activeTabDocument = [(TabController *)self activeTabDocument];
  libraryType = [activeTabDocument libraryType];
  v6 = WBSIsEqual();

  if ((v6 & 1) == 0)
  {
    tabThumbnailCollectionView = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabThumbnailCollectionView];
    [tabThumbnailCollectionView dismissAnimated:0];

    p_libraryTabs = &self->_libraryTabs;
    if (!self->_libraryTabs)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v10 = *p_libraryTabs;
      *p_libraryTabs = dictionary;
    }

    if (!self->_activeLibraryTab)
    {
      tabGroups = [(TabController *)self tabGroups];
      firstObject = [tabGroups firstObject];
      uuid = [firstObject uuid];
      [(TabController *)self setActiveTabGroupUUID:uuid];
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v15 = [(NSMutableDictionary *)self->_libraryTabs objectForKeyedSubscript:libraryCopy];

    if (!v15)
    {
      [TabController openLibrary:];
    }

    v16 = [(NSMutableDictionary *)self->_libraryTabs objectForKeyedSubscript:libraryCopy];
    [(TabController *)self setActiveTabDocument:v16];

    [WeakRetained updateUnifiedBarVisibility];
  }
}

- (void)openTab:(id)tab navigatedFromLibraryType:(id)type
{
  typeCopy = type;
  tabCopy = tab;
  [tabCopy setSuppressWebExtensionEvents:0];
  activeLibraryTab = self->_activeLibraryTab;
  self->_activeLibraryTab = 0;

  activeNonLibraryTab = [(TabController *)self activeNonLibraryTab];
  [(TabController *)self insertNewTabDocument:tabCopy forcingOrderAfterTabDocument:activeNonLibraryTab inBackground:0 animated:0];

  [(NSMutableDictionary *)self->_libraryTabs setObject:0 forKeyedSubscript:typeCopy];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained updateUnifiedBarVisibility];
}

- (NSString)deviceIDForActiveCloudTabsLibrary
{
  activeTabDocument = [(TabController *)self activeTabDocument];
  cloudTabDeviceID = [activeTabDocument cloudTabDeviceID];

  return cloudTabDeviceID;
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

- (void)closeTabs:(id)tabs inInactiveTabGroup:(id)group
{
  tabsCopy = tabs;
  groupCopy = group;
  if (![(TabController *)self isTabGroupActive:groupCopy])
  {
    tabGroupManager = self->_tabGroupManager;
    uuid = [groupCopy uuid];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __46__TabController_closeTabs_inInactiveTabGroup___block_invoke;
    v14 = &unk_2781D99C8;
    v15 = tabsCopy;
    selfCopy = self;
    [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:uuid persist:1 usingBlock:&v11];

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

- (void)closeSelectedTabs:(id)tabs
{
  [(TabController *)self closeWBTabs:tabs];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained reloadSidebarAnimated:0];
}

- (void)_closeTab:(unsigned int)tab animated:(int)animated allowAddingToRecentlyClosedTabs:(char)tabs keepWebViewAlive:(char)alive showAutoCloseTabsAlert:
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (a2)
    {
      v14[0] = a2;
      v11 = MEMORY[0x277CBEA60];
      v12 = a2;
      v13 = [v11 arrayWithObjects:v14 count:1];

      [(TabController *)self _closeTabs:v13 animated:tab allowAddingToRecentlyClosedTabs:animated keepWebViewAlive:tabs showAutoCloseTabsAlert:alive];
    }
  }
}

- (id)detachTabWithUUID:(id)d forMoveToBrowserController:(id)controller
{
  dCopy = d;
  controllerCopy = controller;
  v8 = [(TabController *)self tabWithUUID:dCopy];
  if (v8)
  {
    [(TabController *)self detachTabWithUUID:v8 forMoveToBrowserController:v27, controllerCopy];
    v14 = v8;
  }

  else
  {
    tabGroupManager = self->_tabGroupManager;
    uUIDString = [dCopy UUIDString];
    v11 = [(WBTabGroupManager *)tabGroupManager tabWithUUID:uUIDString];

    tabGroupUUID = [v11 tabGroupUUID];
    v13 = tabGroupUUID;
    v14 = 0;
    if (v11 && tabGroupUUID)
    {
      v15 = self->_tabGroupManager;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __62__TabController_detachTabWithUUID_forMoveToBrowserController___block_invoke_2;
      v24[3] = &unk_2781D99C8;
      v16 = v11;
      v25 = v16;
      selfCopy = self;
      [(WBTabGroupManager *)v15 updateTabsInTabGroupWithUUID:v13 persist:1 usingBlock:v24];
      v17 = +[(WBReusableTabManager *)ReusableTabManager];
      v18 = [v17 reuseTabForUUID:dCopy];

      if (v18)
      {
        [v18 setBrowserController:controllerCopy afterTabGroupReuse:1];
        wbTab = [v18 wbTab];
        duplicatePreservingUUID = [wbTab duplicatePreservingUUID];
        [v18 setWBTab:duplicatePreservingUUID];

        v14 = v18;
      }

      else
      {
        v21 = [HibernatedTab alloc];
        duplicatePreservingUUID2 = [v16 duplicatePreservingUUID];
        v14 = [(HibernatedTab *)v21 initWithWBTab:duplicatePreservingUUID2 browserController:controllerCopy];
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
  activeTabDocument = [(TabController *)self activeTabDocument];
  [(TabController *)self closeTab:activeTabDocument animated:1];
}

- (void)closeOtherTabs
{
  currentTabs = [(TabController *)self currentTabs];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__TabController_closeOtherTabs__block_invoke;
  v9[3] = &unk_2781D5BC8;
  v9[4] = self;
  v4 = [currentTabs safari_filterObjectsUsingBlock:v9];

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

- (void)closeAllOpenTabsAnimated:(BOOL)animated
{
  unpinnedTabs = [(TabController *)self unpinnedTabs];
  _undoCloseAllTabsActionName = [(TabController *)self _undoCloseAllTabsActionName];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__TabController_closeAllOpenTabsAnimated___block_invoke;
  v8[3] = &unk_2781D5060;
  v8[4] = self;
  v9 = unpinnedTabs;
  animatedCopy = animated;
  v7 = unpinnedTabs;
  [(TabController *)self registerUndoWithName:_undoCloseAllTabsActionName actions:v8];
}

- (void)togglePinningTab:(id)tab inInactiveTabGroup:(id)group
{
  tabCopy = tab;
  groupCopy = group;
  isPinned = [tabCopy isPinned];
  pinnedTabsManager = self->_pinnedTabsManager;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __53__TabController_togglePinningTab_inInactiveTabGroup___block_invoke;
  v17 = &unk_2781D9A18;
  selfCopy = self;
  v19 = groupCopy;
  v20 = tabCopy;
  v21 = isPinned ^ 1;
  v10 = tabCopy;
  v11 = groupCopy;
  [(PinnedTabsManager *)pinnedTabsManager performUpdatesUsingBlock:&v14];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  libraryController = [WeakRetained libraryController];
  [libraryController reloadSectionControllersIfNeeded];
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

- (BOOL)isTabPinnable:(id)pinnable
{
  pinnableCopy = pinnable;
  if ([pinnableCopy canSetPinned])
  {
    v5 = [pinnableCopy url];

    if (v5)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      tabGroupUUID = [pinnableCopy tabGroupUUID];
      if (tabGroupUUID && ([(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:tabGroupUUID], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
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

- (id)switchToTabDocumentForWebClip:(id)clip
{
  v80 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  uuid = [clipCopy uuid];
  if (uuid)
  {
    [(TabController *)self setActiveProfileIdentifier:*MEMORY[0x277D49BD8]];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];

    if (isPrivateBrowsingEnabled)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v16, OS_LOG_TYPE_DEFAULT, "Will switch to local tab group for web clip.", buf, 2u);
      }

      [(TabController *)self selectLocalTabGroup];
    }

    v17 = [(TabController *)self _tabDocumentForWebClip:clipCopy, v10, v11, v12, v13, v14, v15, v51, v54, v57, v59, v61, v63];
    if (v17)
    {
      [(TabController *)self setActiveTabDocument:v17];
      v6 = v17;
    }

    else
    {
      uUIDString = [uuid UUIDString];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      tabGroups = [(TabController *)self tabGroups];
      v20 = [tabGroups countByEnumeratingWithState:&v73 objects:v79 count:16];
      if (v20)
      {
        v21 = v20;
        v52 = 0;
        v55 = uuid;
        v58 = clipCopy;
        selfCopy = self;
        v66 = 0;
        v67 = 0;
        v22 = *v74;
        v62 = *v74;
        v64 = tabGroups;
        do
        {
          v23 = 0;
          v65 = v21;
          do
          {
            if (*v74 != v22)
            {
              objc_enumerationMutation(tabGroups);
            }

            v24 = *(*(&v73 + 1) + 8 * v23);
            if (([v24 isPrivateBrowsing] & 1) == 0)
            {
              tabs = [v24 tabs];
              if ([v24 isLocal])
              {
                pinnedTabs = [(PinnedTabsManager *)selfCopy->_pinnedTabsManager pinnedTabs];
                if ([pinnedTabs count])
                {
                  v27 = [pinnedTabs arrayByAddingObjectsFromArray:tabs];

                  tabs = v27;
                }
              }

              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v28 = tabs;
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
                    localAttributes = [v33 localAttributes];
                    webClipIDString = [localAttributes webClipIDString];
                    v36 = [webClipIDString isEqualToString:uUIDString];

                    if (v36)
                    {
                      v37 = objc_alloc(MEMORY[0x277CCAD78]);
                      uuid2 = [v68 uuid];
                      v39 = [v37 initWithUUIDString:uuid2];

                      v40 = objc_alloc(MEMORY[0x277CCAD78]);
                      uuidString = [v33 uuidString];
                      v42 = [v40 initWithUUIDString:uuidString];

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
                tabGroups = v64;
                v21 = v65;
              }
            }

            ++v23;
          }

          while (v23 != v21);
          v21 = [tabGroups countByEnumeratingWithState:&v73 objects:v79 count:16];
        }

        while (v21);

        v43 = v67;
        if (v67)
        {
          v44 = v66;
          [(TabController *)selfCopy switchToTabWithUUID:v67 inTabGroupWithUUID:v66];
          clipCopy = v58;
          v6 = [(TabController *)selfCopy _tabDocumentForWebClip:v58, v45, v46, v47, v48, v49, v50, v52, v55, v58, selfCopy, v62, v64];
          v17 = v53;
          uuid = v56;
        }

        else
        {
          v6 = 0;
          uuid = v55;
          clipCopy = v58;
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

- (id)tabDocumentForURL:(id)l forceUnhibernate:(BOOL)unhibernate
{
  unhibernateCopy = unhibernate;
  v6 = [(TabController *)self tabForURL:l];
  if (unhibernateCopy)
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

- (id)tabForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = lCopy;
    v6 = [MEMORY[0x277D75D70] webClipWithURL:lCopy];
    v7 = v6;
    if (v6)
    {
      pageURL = [v6 pageURL];
      _webkit_URLByRemovingFragment = [pageURL _webkit_URLByRemovingFragment];
    }

    else
    {
      _webkit_URLByRemovingFragment = 0;
    }

    _webkit_URLByRemovingFragment2 = [v5 _webkit_URLByRemovingFragment];

    currentTabs = [(TabController *)self currentTabs];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __27__TabController_tabForURL___block_invoke;
    v16[3] = &unk_2781D5200;
    v17 = _webkit_URLByRemovingFragment2;
    v18 = _webkit_URLByRemovingFragment;
    v13 = _webkit_URLByRemovingFragment;
    v14 = _webkit_URLByRemovingFragment2;
    v10 = [currentTabs safari_firstObjectPassingTest:v16];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TabDocument)tabDocumentForSpotlightSearch
{
  currentTabDocuments = [(TabController *)self currentTabDocuments];
  v3 = [currentTabDocuments safari_firstObjectPassingTest:&__block_literal_global_124_0];

  return v3;
}

- (id)duplicateTab:(id)tab
{
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [TabDocument alloc];
  tabStateData = [tabCopy tabStateData];
  v8 = [(TabDocument *)v6 initWithTabStateData:tabStateData hibernated:0 browserController:WeakRetained];

  if (v8)
  {
    if ([tabCopy isBlank])
    {
      [(TabDocument *)v8 setIsBlank:1];
    }

    -[TabController insertTab:afterTab:inBackground:animated:](self, "insertTab:afterTab:inBackground:animated:", v8, tabCopy, -[TabDocument isPrivateBrowsingEnabled](v8, "isPrivateBrowsingEnabled") ^ [WeakRetained isPrivateBrowsingEnabled], 1);
    v9 = v8;
  }

  return v8;
}

- (void)sortTabsWithMode:(int64_t)mode
{
  activeTabGroupUUID = [(TabController *)self activeTabGroupUUID];
  [(TabController *)self sortTabsInTabGroupWithUUIDString:activeTabGroupUUID withSortMode:mode];
}

- (void)sortTabsInTabGroupWithUUIDString:(id)string withSortMode:(int64_t)mode
{
  tabGroupManager = self->_tabGroupManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__TabController_sortTabsInTabGroupWithUUIDString_withSortMode___block_invoke;
  v7[3] = &__block_descriptor_40_e27_v16__0__WBMutableTabGroup_8l;
  v7[4] = mode;
  [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:string persist:1 usingBlock:v7];
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

- (void)replaceBlankActiveTabWithTab:(id)tab
{
  tabCopy = tab;
  activeTabDocument = [(TabController *)self activeTabDocument];
  if (([activeTabDocument isBlank] & 1) != 0 || (-[TabController currentTabs](self, "currentTabs"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7 != 1))
  {
    v8 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__TabController_replaceBlankActiveTabWithTab___block_invoke;
    v9[3] = &unk_2781D58E8;
    v10 = tabCopy;
    selfCopy = self;
    v12 = activeTabDocument;
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

- (void)replaceBlankActiveTabWithTabs:(id)tabs andSelectTab:(id)tab
{
  tabsCopy = tabs;
  tabCopy = tab;
  firstObject = [tabsCopy firstObject];
  isPrivateBrowsingEnabled = [firstObject isPrivateBrowsingEnabled];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained setPrivateBrowsingEnabled:isPrivateBrowsingEnabled];

  activeTabDocument = [(TabController *)self activeTabDocument];
  if ([activeTabDocument isBlank])
  {
    currentTabs = [(TabController *)self currentTabs];
    v13 = [currentTabs count];

    if (v13 == 1)
    {
      v14 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__TabController_replaceBlankActiveTabWithTabs_andSelectTab___block_invoke;
      v15[3] = &unk_2781D5A50;
      v15[4] = self;
      v16 = tabsCopy;
      v17 = activeTabDocument;
      v18 = tabCopy;
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

- (void)updateWBTabWithTab:(id)tab notify:(BOOL)notify persist:(BOOL)persist
{
  persistCopy = persist;
  notifyCopy = notify;
  tabCopy = tab;
  if (self->_activeTabGroupUUID && !self->_updateTabsSuppressionCount)
  {
    v15 = tabCopy;
    if ([tabCopy isPinned] && (-[TabController activeTabGroup](self, "activeTabGroup"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "usesGlobalPinnedTabs"), v9, v10))
    {
      pinnedTabsManager = self->_pinnedTabsManager;
      uuidString = [v15 uuidString];
      tabUpdateBlock = [v15 tabUpdateBlock];
      [(PinnedTabsManager *)pinnedTabsManager updatePinnedTabWithUUID:uuidString inContainer:self usingBlock:tabUpdateBlock];
    }

    else
    {
      tabGroupManager = self->_tabGroupManager;
      uuidString = [v15 uuidString];
      tabUpdateBlock = [v15 tabUpdateBlock];
      [(WBTabGroupManager *)tabGroupManager updateTabWithUUID:uuidString persist:persistCopy notify:notifyCopy usingBlock:tabUpdateBlock];
    }

    if (persistCopy)
    {
      [(TabController *)self persistTab:v15 notify:notifyCopy];
      [(TabController *)self updateActiveTab];
    }

    [(TabController *)self updateLocalTabGroupTitle];
    tabCopy = v15;
  }
}

- (TabController)initWithBrowserController:(id)controller
{
  controllerCopy = controller;
  v39.receiver = self;
  v39.super_class = TabController;
  v5 = [(TabController *)&v39 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserController, controllerCopy);
    uUID = [controllerCopy UUID];
    browserWindowUUID = v6->_browserWindowUUID;
    v6->_browserWindowUUID = uUID;

    v9 = objc_alloc_init(TabCollectionViewManager);
    tabCollectionViewManager = v6->_tabCollectionViewManager;
    v6->_tabCollectionViewManager = v9;

    [(TabCollectionViewManager *)v6->_tabCollectionViewManager setDataSource:v6];
    [(TabCollectionViewManager *)v6->_tabCollectionViewManager setBrowserController:controllerCopy];
    v11 = [[TabControllerNotificationManager alloc] initWithTabController:v6];
    notificationManager = v6->_notificationManager;
    v6->_notificationManager = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableNormalTabs = v6->_mutableNormalTabs;
    v6->_mutableNormalTabs = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutablePrivateTabs = v6->_mutablePrivateTabs;
    v6->_mutablePrivateTabs = v15;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    uuidToTabMap = v6->_uuidToTabMap;
    v6->_uuidToTabMap = strongToWeakObjectsMapTable;

    array = [MEMORY[0x277CBEB18] array];
    expandedTabGroupUUIDs = v6->_expandedTabGroupUUIDs;
    v6->_expandedTabGroupUUIDs = array;

    v21 = objc_alloc_init(MEMORY[0x277D4A090]);
    tabOrderManager = v6->_tabOrderManager;
    v6->_tabOrderManager = v21;

    [(WBSTabOrderManager *)v6->_tabOrderManager setTabOrderProvider:v6];
    windowState = [controllerCopy windowState];
    localTabGroup = [windowState localTabGroup];
    uuid = [localTabGroup uuid];
    v26 = [uuid copy];
    activeTabGroupUUID = v6->_activeTabGroupUUID;
    v6->_activeTabGroupUUID = v26;

    tabGroupManager = [controllerCopy tabGroupManager];
    tabGroupManager = v6->_tabGroupManager;
    v6->_tabGroupManager = tabGroupManager;

    [(WBTabGroupManager *)v6->_tabGroupManager addTabGroupObserver:v6];
    v30 = objc_alloc_init(MEMORY[0x277CCAD90]);
    undoManager = v6->_undoManager;
    v6->_undoManager = v30;

    [(NSUndoManager *)v6->_undoManager setGroupsByEvent:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__cloudTabsDidUpdate_ name:@"CloudTabStoreDidUpdateNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__beganSharingTabGroup_ name:*MEMORY[0x277D29120] object:0];
    mEMORY[0x277D7B588] = [MEMORY[0x277D7B588] sharedProxy];
    [mEMORY[0x277D7B588] addSyncObserver:v6];

    [defaultCenter addObserver:v6 selector:sel__lockedPrivateBrowsingStateDidChange_ name:@"lockedPrivateBrowsingStateDidChangeNotification" object:0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
  normalAndPrivateTabs = [(TabController *)self normalAndPrivateTabs];
  v6 = [normalAndPrivateTabs countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(normalAndPrivateTabs);
        }

        [*(*(&v10 + 1) + 8 * v9++) clearBrowserController];
      }

      while (v7 != v9);
      v7 = [normalAndPrivateTabs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(WBTabGroupManager *)self->_tabGroupManager removeTabGroupObserver:self];
  [(PinnedTabsManager *)self->_pinnedTabsManager removePinnedTabsObserver:self];
}

- (BOOL)isControlledByAutomation
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  isControlledByAutomation = [WeakRetained isControlledByAutomation];

  return isControlledByAutomation;
}

- (void)setPrivateBrowsingMode:(int64_t)mode animated:(BOOL)animated
{
  v32[16] = *MEMORY[0x277D85DE8];
  if (self->_privateBrowsingMode != mode)
  {
    animatedCopy = animated;
    *v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
    currentTabDocuments = [(TabController *)self currentTabDocuments];
    v8 = [currentTabDocuments countByEnumeratingWithState:v27 objects:v32 count:16];
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
            objc_enumerationMutation(currentTabDocuments);
          }

          webView = [*(v27[1] + 8 * v11) webView];
          [webView _stopAllMediaPlayback];

          ++v11;
        }

        while (v9 != v11);
        v9 = [currentTabDocuments countByEnumeratingWithState:v27 objects:v32 count:16];
      }

      while (v9);
    }

    activeTabDocument = [(TabController *)self activeTabDocument];
    self->_privateBrowsingMode = mode;
    tabThumbnailCollectionView = [(TabController *)&self->super.isa tabThumbnailCollectionView];
    presentationState = [tabThumbnailCollectionView presentationState];

    if (presentationState)
    {
      [(TabController *)self _suppressSingleEmptyTabIfAppropriate:v16];
    }

    [(TabCollectionViewManager *)self->_tabCollectionViewManager setPrivateBrowsingEnabled:self->_privateBrowsingMode == 1 animated:animatedCopy];
    [(TabControllerNotificationManager *)self->_notificationManager didChangeCurrentTabDocuments];
    activeTabDocument2 = [(TabController *)self activeTabDocument];
    [(TabController *)self _switchActiveTabDocumentFromTabDocument:activeTabDocument toTabDocument:activeTabDocument2];

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained setNeedsSnapshotUpdateForActiveTabIfTabIsBlank];
    [(TabController *)self updateTabCount];
    configuration = [WeakRetained configuration];
    allowsRestoringEducationTabs = [configuration allowsRestoringEducationTabs];

    if (allowsRestoringEducationTabs)
    {
      [(TabController *)self _restoreEducationTabsIfNecessaryAnimated:?];
    }
  }
}

- (BOOL)isPrivateBrowsingAndLocked
{
  isPrivateBrowsingEnabled = [(TabController *)self isPrivateBrowsingEnabled];
  if (isPrivateBrowsingEnabled)
  {
    _application = [(TabController *)self _application];
    isPrivateBrowsingLocked = [_application isPrivateBrowsingLocked];

    LOBYTE(isPrivateBrowsingEnabled) = isPrivateBrowsingLocked;
  }

  return isPrivateBrowsingEnabled;
}

- (void)_cloudTabsDidUpdate:(id)update
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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    cloudTabStore = [(TabController *)self cloudTabStore];
    currentDevice = [cloudTabStore currentDevice];
    lastModified = [currentDevice lastModified];
    [standardUserDefaults setObject:lastModified forKey:@"SafariEducationModeEducationTabsLastSyncDate"];

    [standardUserDefaults synchronize];
  }
}

- (void)addBookmarkFolderForTabs:(id)tabs
{
  tabsCopy = tabs;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained addBookmarkFolderForTabs:tabsCopy];
}

- (void)moveTabsToNewWindow:(id)window
{
  v12 = [window safari_mapObjectsUsingBlock:&__block_literal_global_158];
  activeTabDocument = [(TabController *)self activeTabDocument];
  uuid = [activeTabDocument uuid];

  if ([v12 containsObject:uuid])
  {
    v6 = uuid;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = MEMORY[0x277CC1EF0];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  uUID = [WeakRetained UUID];
  v11 = [v8 safari_windowCreationActivityWithTabUUIDs:v12 selectedTabUUID:v7 browserControllerUUID:uUID];

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

- (id)dropTabsAtIndex:(unint64_t)index pinned:(BOOL)pinned dropSession:(id)session dragItems:(id)items
{
  sessionCopy = session;
  itemsCopy = items;
  [(TabCollectionViewManager *)self->_tabCollectionViewManager dismissTabHoverPreview];
  v13 = +[TabDocumentManager sharedManager];
  [v13 beginSuppressingTabRecycling];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  originalToReplacementUUIDMap = self->_originalToReplacementUUIDMap;
  self->_originalToReplacementUUIDMap = dictionary;

  array = [MEMORY[0x277CBEB18] array];
  v17 = 0;
  if (index && index != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentTabs = [(TabController *)self currentTabs];
    v17 = [currentTabs objectAtIndexedSubscript:index - 1];
  }

  v18 = v17;
  if (index && index != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __62__TabController_dropTabsAtIndex_pinned_dropSession_dragItems___block_invoke;
  v35[3] = &unk_2781D9AA0;
  v35[4] = self;
  indexCopy = index;
  pinnedCopy = pinned;
  v20 = v18;
  v36 = v20;
  v21 = dictionary2;
  v37 = v21;
  v22 = array;
  v38 = v22;
  [itemsCopy enumerateObjectsWithOptions:2 usingBlock:v35];
  if ([v21 count])
  {
    builder = [MEMORY[0x277D28F40] builder];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __62__TabController_dropTabsAtIndex_pinned_dropSession_dragItems___block_invoke_2;
    v32 = &unk_2781D9AF0;
    v33 = itemsCopy;
    v34 = v21;
    [builder buildNavigationIntentForDropSession:sessionCopy completionHandler:&v29];
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

- (id)tabDocumentWithUUID:(id)d
{
  v3 = [(TabController *)self tabWithUUID:d];
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

- (void)didGainOwnershipOfTab:(id)tab
{
  tabCopy = tab;
  uuidToTabMap = self->_uuidToTabMap;
  uuid = [tabCopy uuid];
  [(NSMapTable *)uuidToTabMap setObject:tabCopy forKey:uuid];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = tabCopy;
  if (isKindOfClass)
  {
    v8 = tabCopy;
    [v8 addRenderingProgressObserver:self->_tabCollectionViewManager];
    libraryType = [v8 libraryType];

    if (!libraryType)
    {
      v10 = +[TabDocumentManager sharedManager];
      [v10 addTab:v8];
    }

    v7 = tabCopy;
  }
}

- (void)willLoseOwnershipOfTab:(id)tab
{
  tabCopy = tab;
  uuidToTabMap = self->_uuidToTabMap;
  uuid = [tabCopy uuid];
  [(NSMapTable *)uuidToTabMap removeObjectForKey:uuid];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tabCollectionViewManager = self->_tabCollectionViewManager;
    v7 = tabCopy;
    [v7 removeRenderingProgressObserver:tabCollectionViewManager];
    v8 = +[TabDocumentManager sharedManager];
    [v8 removeTab:v7];
  }
}

- (void)tabDocumentDidUpdateUUID:(id)d previousUUID:(id)iD
{
  dCopy = d;
  if (iD)
  {
    [(NSMapTable *)self->_uuidToTabMap removeObjectForKey:iD];
  }

  uuid = [dCopy uuid];
  [(NSMapTable *)self->_uuidToTabMap setObject:dCopy forKey:uuid];
  [(TabCollectionViewManager *)self->_tabCollectionViewManager updateSnapshotIdentifiers];
}

- (void)saveTabDocumentUserActivitySoon:(id)soon
{
  soonCopy = soon;
  if (!self->_updateContinuityTimer && self->_normalActiveTabDocument == soonCopy)
  {
    v7 = soonCopy;
    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__updateUserActivityTimerFired selector:0 userInfo:0 repeats:1.0];
    updateContinuityTimer = self->_updateContinuityTimer;
    self->_updateContinuityTimer = v5;

    [(NSTimer *)self->_updateContinuityTimer setTolerance:1.0];
    soonCopy = v7;
  }
}

- (unint64_t)indexOfSelectedTab
{
  activeTabDocument = [(TabController *)self activeTabDocument];
  v4 = [(TabController *)self indexForTab:activeTabDocument];

  return v4;
}

- (id)tabAtIndex:(unint64_t)index
{
  currentTabs = [(TabController *)self currentTabs];
  v5 = [currentTabs objectAtIndexedSubscript:index];

  return v5;
}

- (id)originatingTabForTab:(id)tab
{
  tabCopy = tab;
  if ([tabCopy shouldSelectOriginatingTabWhenClosed])
  {
    ancestorTabIdentifiers = [tabCopy ancestorTabIdentifiers];
    lastObject = [ancestorTabIdentifiers lastObject];

    if (lastObject)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:lastObject];
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
  currentTabs = [(TabController *)self currentTabs];
  v3 = [currentTabs count];

  return v3;
}

- (unint64_t)indexForTab:(id)tab
{
  tabCopy = tab;
  currentTabs = [(TabController *)self currentTabs];
  v6 = [currentTabs indexOfObject:tabCopy];

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
  activeTabGroup = [(TabController *)self activeTabGroup];
  isSyncable = [activeTabGroup isSyncable];

  return isSyncable;
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

- (void)createTabGroupFromExistingTabs:(BOOL)tabs completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = _WBSLocalizedString();
  v7 = _WBSLocalizedString();
  if (!tabs)
  {
    v8 = _WBSLocalizedString();
    [(TabController *)self presentAlertToCreateTabGroupFromTabs:0 withTitle:v6 message:v8 suggestedName:0 okActionTitle:v7 completionHandler:handlerCopy];
    goto LABEL_3;
  }

  unnamedTabGroup = [(TabController *)self unnamedTabGroup];
  v10 = [(TabController *)self _representativeHostForTabGroup:unnamedTabGroup];
  if (!v10)
  {
    [(TabController *)&self->super.isa _closeTabGroup:unnamedTabGroup];
    if (handlerCopy)
    {
      handlerCopy[2]();
    }

    v8 = 0;
    goto LABEL_14;
  }

  tabs = [unnamedTabGroup tabs];
  v12 = [tabs count];

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

  tabs2 = [unnamedTabGroup tabs];
  [(TabController *)self presentAlertToCreateTabGroupFromTabs:tabs2 withTitle:v6 message:v8 suggestedName:0 okActionTitle:v7 completionHandler:handlerCopy];

LABEL_14:
LABEL_3:
}

BOOL __37__TabController__currentTabsAreBlank__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];
  v3 = v2 != 0;

  return v3;
}

- (id)tabGroupsMenuForTabGroupButton:(BOOL)button
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D75710];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__TabController_tabGroupsMenuForTabGroupButton___block_invoke;
  v7[3] = &unk_2781D9BB0;
  objc_copyWeak(&v8, &location);
  buttonCopy = button;
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
  activeTabGroup = [(TabController *)self activeTabGroup];
  if ([activeTabGroup isNamed])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    activeTabGroup2 = [(TabController *)self activeTabGroup];
    if ([activeTabGroup2 isPrivateBrowsing])
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
    activeTabDocument = [(TabController *)self activeTabDocument];
    libraryType = [(TabDocument *)activeTabDocument libraryType];

    if (!libraryType)
    {
      [(TabDocument *)activeTabDocument validateWebClip];
      if (activeTabDocument == self->_tabDocumentBeingHiddenFromTabView)
      {
        uUIDString = 0;
      }

      else
      {
        uuid = [(TabDocument *)activeTabDocument uuid];
        uUIDString = [uuid UUIDString];
      }

      if (!-[TabDocument isPinned](activeTabDocument, "isPinned") || (-[TabController activeTabGroup](self, "activeTabGroup"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 usesGlobalPinnedTabs], v7, (v8 & 1) == 0))
      {
        tabGroupManager = self->_tabGroupManager;
        activeTabGroupUUID = self->_activeTabGroupUUID;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __32__TabController_updateActiveTab__block_invoke;
        v15[3] = &unk_2781D97D0;
        v16 = uUIDString;
        [(WBTabGroupManager *)tabGroupManager updateTabGroupWithUUID:activeTabGroupUUID persist:1 usingBlock:v15];
      }

      tabGroupTab = [(TabDocument *)activeTabDocument tabGroupTab];
      if ([tabGroupTab isShared] && (objc_msgSend(tabGroupTab, "isMarkedAsRead") & 1) == 0)
      {
        v12 = self->_tabGroupManager;
        uuid2 = [tabGroupTab uuid];
        [(WBTabGroupManager *)v12 updateTabWithUUID:uuid2 persist:1 notify:1 usingBlock:&__block_literal_global_231_0];
      }

      v14 = [(WBWindowState *)self->_windowState activeTabUUIDForTabGroupWithUUID:self->_activeTabGroupUUID];
      if ((WBSIsEqual() & 1) == 0)
      {
        [(WBWindowState *)self->_windowState setActiveTabUUID:uUIDString forTabGroupWithUUID:self->_activeTabGroupUUID];
        [(WBTabGroupManager *)self->_tabGroupManager saveWindowState:self->_windowState completionHandler:0];
      }
    }
  }
}

- (UIMenu)menuForSwitchingProfiles
{
  tabGroupManager = [(TabController *)self tabGroupManager];
  profiles = [tabGroupManager profiles];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__TabController_menuForSwitchingProfiles__block_invoke;
  v8[3] = &unk_2781D9C60;
  v8[4] = self;
  v5 = [profiles safari_mapObjectsUsingBlock:v8];

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
  tabGroupManager = [(TabController *)self tabGroupManager];
  profiles = [tabGroupManager profiles];
  v5 = [profiles mutableCopy];

  if ([v5 count] >= 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    activeProfile = [WeakRetained activeProfile];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [standardUserDefaults BOOLForKey:@"EnableQuickProfileSwitcher"];

    if (v10)
    {
      [v5 removeObject:activeProfile];
      [v5 addObject:activeProfile];
    }

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __48__TabController_menuForSwitchingProfilesQuickly__block_invoke;
    v17 = &unk_2781D9C88;
    selfCopy = self;
    v19 = activeProfile;
    v11 = activeProfile;
    v12 = [v5 safari_mapObjectsUsingBlock:&v14];
    v6 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:{v12, v14, v15, v16, v17, selfCopy}];
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
    tabGroupManager = [(TabController *)self tabGroupManager];
    profiles = [tabGroupManager profiles];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__TabController_submenuForSwitchingProfiles__block_invoke;
    v17[3] = &unk_2781D9C60;
    v17[4] = self;
    v5 = [profiles safari_mapObjectsUsingBlock:v17];

    activeProfile = [(TabController *)self activeProfile];
    symbolImage = [activeProfile symbolImage];
    v8 = symbolImage;
    if (symbolImage)
    {
      v9 = symbolImage;
    }

    else
    {
      v9 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.crop.rectangle.stack"];
    }

    v11 = v9;

    v12 = MEMORY[0x277D75710];
    v13 = _WBSLocalizedString();
    v10 = [v12 menuWithTitle:v13 image:v11 identifier:0 options:0 children:v5];

    activeProfile2 = [(TabController *)self activeProfile];
    title = [activeProfile2 title];
    [v10 setSubtitle:title];

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
  activeTabGroup = [(TabController *)self activeTabGroup];
  shareRecordForActiveTabGroup = [(TabController *)self shareRecordForActiveTabGroup];
  v5 = objc_alloc(MEMORY[0x277D28D78]);
  tabGroupManager = [(TabController *)self tabGroupManager];
  iconForSharingActiveTabGroup = [(TabController *)self iconForSharingActiveTabGroup];
  v8 = [v5 initWithTabGroup:activeTabGroup inTabGroupManager:tabGroupManager existingShare:shareRecordForActiveTabGroup icon:iconForSharingActiveTabGroup];

  v9 = [(TabController *)self _tabGroupShareSheetWithTabGroupActivityItemConfiguration:v8];

  return v9;
}

- (id)_tabGroupShareSheetWithTabGroupActivityItemConfiguration:(void *)configuration
{
  v3 = a2;
  if (configuration)
  {
    v4 = [objc_alloc(MEMORY[0x277D546D8]) initWithActivityItemsConfiguration:v3];
    objc_initWeak(&location, configuration);
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

- (void)_beganSharingTabGroup:(id)group
{
  object = [group object];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__TabController__beganSharingTabGroup___block_invoke;
  v6[3] = &unk_2781D4C88;
  v6[4] = self;
  v7 = object;
  v5 = object;
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
  activeTabGroup = [(TabController *)self activeTabGroup];
  v4 = [(TabController *)self iconForSharingTabGroup:activeTabGroup];

  return v4;
}

- (id)iconForSharingTabGroup:(id)group
{
  v3 = MEMORY[0x277D28F58];
  groupCopy = group;
  sharedSiteMetadataManager = [v3 sharedSiteMetadataManager];
  tabGroupIconProvider = [sharedSiteMetadataManager tabGroupIconProvider];
  v7 = [tabGroupIconProvider iconForTabGroup:groupCopy];

  v8 = iconForSharingTabGroup__appIcon;
  if (!(v7 | iconForSharingTabGroup__appIcon))
  {
    v9 = MEMORY[0x277D28CA0];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v12 = [v9 appIconForBundleIdentifier:bundleIdentifier imageSize:{60.0, 60.0}];
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
  activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)self activeTabGroupOrTabGroupVisibleInSwitcher];
  if ([activeTabGroupOrTabGroupVisibleInSwitcher isShared])
  {
    shareRecordForActiveTabGroup = [(TabController *)self shareRecordForActiveTabGroup];
  }

  else
  {
    shareRecordForActiveTabGroup = 0;
  }

  return shareRecordForActiveTabGroup;
}

- (CKShare)shareRecordForActiveTabGroup
{
  activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)self activeTabGroupOrTabGroupVisibleInSwitcher];
  v4 = [(WBTabGroupManager *)self->_tabGroupManager shareRecordForTabGroup:activeTabGroupOrTabGroupVisibleInSwitcher];
  if (v4)
  {
    [(TabController *)self _updateShare:v4 forActiveTabGroup:activeTabGroupOrTabGroupVisibleInSwitcher];
    v6 = v4;
  }

  return v4;
}

- (id)cachedTabSwitcherShareConfigurationForTabGroup:(id)group
{
  cachedShareConfigurationsByTabGroupUUID = self->_cachedShareConfigurationsByTabGroupUUID;
  uuid = [group uuid];
  v5 = [(NSMutableDictionary *)cachedShareConfigurationsByTabGroupUUID objectForKeyedSubscript:uuid];

  return v5;
}

- (void)clearCachedTabSwitcherShareConfigurationForTabGroupWithUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_cachedShareConfigurationsByTabGroupUUID objectForKeyedSubscript:dCopy];

  if (v5)
  {
    [(NSMutableDictionary *)self->_cachedShareConfigurationsByTabGroupUUID setObject:0 forKeyedSubscript:dCopy];
    v6 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:dCopy];
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

- (void)tabSwitcherShareConfigurationForTabGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  if ([groupCopy isNamed] && (+[FeatureManager sharedFeatureManager](FeatureManager, "sharedFeatureManager"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "areSharedTabGroupsEnabled"), v8, (v9 & 1) != 0))
  {
    cachedShareConfigurationsByTabGroupUUID = self->_cachedShareConfigurationsByTabGroupUUID;
    uuid = [groupCopy uuid];
    v12 = [(NSMutableDictionary *)cachedShareConfigurationsByTabGroupUUID objectForKeyedSubscript:uuid];

    if (v12)
    {
      completionCopy[2](completionCopy, v12);
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
      v15 = groupCopy;
      objc_copyWeak(&v17, &location);
      v16 = completionCopy;
      [(WBTabGroupManager *)tabGroupManager shareRecordForTabGroup:v15 completionHandler:v14];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0);
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

- (void)willSelectProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:*MEMORY[0x277D49BD8]] & 1) == 0)
  {
    [(PinnedTabsManager *)self->_pinnedTabsManager willSelectProfileWithIdentifier:identifierCopy];
  }
}

- (void)didSelectProfileWithIdentifier:(id)identifier previousProfileIdentifier:(id)profileIdentifier
{
  profileIdentifierCopy = profileIdentifier;
  if (([profileIdentifierCopy isEqualToString:*MEMORY[0x277D49BD8]] & 1) == 0)
  {
    [(PinnedTabsManager *)self->_pinnedTabsManager didDeselectProfileWithIdentifier:profileIdentifierCopy];
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

- (id)addNewTabGroupWithTitle:(id)title fromExistingTabs:(BOOL)tabs
{
  tabsCopy = tabs;
  titleCopy = title;
  if (tabsCopy)
  {
    unnamedTabGroup = [(TabController *)self unnamedTabGroup];
    tabs = [unnamedTabGroup tabs];
  }

  else
  {
    tabs = 0;
  }

  v9 = [(TabController *)self addNewTabGroupWithTitle:titleCopy fromTabs:tabs];

  return v9;
}

- (id)addNewTabGroupWithTitle:(id)title fromTabs:(id)tabs
{
  titleCopy = title;
  tabsCopy = tabs;
  if ([titleCopy length])
  {
    [(TabController *)self addNewTabGroupWithTitle:titleCopy fromTabs:tabsCopy, &v10];
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
  viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];

  presentedViewController = [viewControllerToPresentFrom presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [presentedViewController role] == 1)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      windowState = self->_windowState;
      v8 = v6;
      uuid = [(WBWindowState *)windowState uuid];
      v10 = 138543362;
      v11 = uuid;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Dismissing open FTG alert on window %{public}@", &v10, 0xCu);
    }

    [viewControllerToPresentFrom dismissViewControllerAnimated:1 completion:0];
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

- (void)tabGroupNamingTextDidChange:(id)change
{
  if (self->_showsTabGroupNameSuggestions)
  {
    changeCopy = change;
    text = [changeCopy text];
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

- (BOOL)isTabGroupActive:(id)active
{
  uuid = [active uuid];
  LOBYTE(self) = [uuid isEqualToString:self->_activeTabGroupUUID];

  return self;
}

- (void)selectLocalTabGroup
{
  unnamedTabGroup = [(TabController *)self unnamedTabGroup];
  uuid = [unnamedTabGroup uuid];
  [(TabController *)self setActiveTabGroupUUID:uuid];
}

- (void)selectPrivateTabGroup
{
  privateTabGroup = [(WBWindowState *)self->_windowState privateTabGroup];
  uuid = [privateTabGroup uuid];
  [(TabController *)self setActiveTabGroupUUID:uuid];
}

- (void)didFocusTabGroup:(id)group
{
  groupCopy = group;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained didFocusTabGroup:groupCopy];
}

- (void)setActiveProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained setActiveProfileIdentifier:identifierCopy];
}

- (void)setActiveTabGroupUUID:(id)d
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  activeTabGroup = [(TabController *)self activeTabGroup];
  v6 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:dCopy];
  tabSwitcherViewController = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabSwitcherViewController];
  [tabSwitcherViewController setNeedsScrollToTabGroup:v6];

  if ([activeTabGroup isIdentical:v6])
  {
    [TabController setActiveTabGroupUUID:?];
  }

  else
  {
    if (self->_activeTabGroupUUID)
    {
      tabGroupManager = [(TabController *)self tabGroupManager];
      [tabGroupManager endParticipantPresenceReportingForTabGroupWithUUID:self->_activeTabGroupUUID];
    }

    v9 = objc_alloc_init(MEMORY[0x277D49B60]);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __39__TabController_setActiveTabGroupUUID___block_invoke;
    v32[3] = &unk_2781D4D40;
    v32[4] = self;
    [v9 setHandler:v32];
    v10 = [dCopy isEqualToString:self->_activeTabGroupUUID];
    if ((v10 & 1) == 0)
    {
      [(TabController *)self persistAllCurrentTabsInBackground:0];
    }

    v11 = [dCopy copy];
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
      if (dCopy)
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

    _application = [(TabController *)self _application];
    focusedTabGroupUUIDString = [_application focusedTabGroupUUIDString];
    v21 = [focusedTabGroupUUIDString isEqualToString:dCopy];

    if (v21)
    {
      [_application setNeedsFocusedTabGroupUpdate:0];
    }

    if (dCopy)
    {
      [(WBWindowState *)self->_windowState setActiveTabGroupUUID:dCopy];
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      [WeakRetained willSelectTabGroupWithUUID:dCopy];

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

      tabs = [v6 tabs];
      v24 = [tabs count];

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

      activeTabDocument = [(TabController *)self activeTabDocument];
      [(TabCollectionViewManager *)self->_tabCollectionViewManager updateTabBarAnimated:0 keepingTabVisible:activeTabDocument];
      v26 = objc_loadWeakRetained(&self->_browserController);
      [v26 updateFavoritesForNewDocument];
      [v26 reloadSidebarAnimated:0];
      startPageBackgroundImageIdentifier = [(TabController *)self startPageBackgroundImageIdentifier];
      [v26 loadBackgroundImageIfNeededForIdentifier:startPageBackgroundImageIdentifier];

      if ((v10 & 1) == 0)
      {
        [(TabController *)self setActiveTabGroupUUID:activeTabGroup];
      }

      if ([v6 isShared])
      {
        [(TabController *)self _requestContactsAccessIfNeeded];
      }

      if ([v6 isSyncable])
      {
        mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
        v29 = objc_alloc(MEMORY[0x277D4A860]);
        tabGroupManager2 = [(TabController *)self tabGroupManager];
        v31 = [v29 initWithTabGroup:v6 tabProvider:tabGroupManager2];
        [mEMORY[0x277D28F58] preloadRequest:v31 withPriority:0 responseHandler:0];
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

- (void)_updateTabsForTabGroup:(uint64_t)group
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (group)
  {
    [*(group + 272) willBeginUpdates];
    v4 = objc_alloc_init(MEMORY[0x277D49B60]);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __40__TabController__updateTabsForTabGroup___block_invoke;
    v47[3] = &unk_2781D4D40;
    v47[4] = group;
    v38 = v4;
    [v4 setHandler:v47];
    v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      privacyPreservingDescription = [v3 privacyPreservingDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = privacyPreservingDescription;
      _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Updating tab documents for %{public}@", &buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((group + 8));
    tabsUUIDSet = [v3 tabsUUIDSet];
    isPrivateBrowsing = [v3 isPrivateBrowsing];
    v11 = 16;
    if (isPrivateBrowsing)
    {
      v11 = 24;
    }

    v12 = [*(group + v11) copy];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __40__TabController__updateTabsForTabGroup___block_invoke_492;
    v44[3] = &unk_2781D5200;
    v37 = tabsUUIDSet;
    v45 = v37;
    groupCopy = group;
    v13 = [v12 safari_filterObjectsUsingBlock:v44];

    activeWebExtensionWindow = [WeakRetained activeWebExtensionWindow];
    [activeWebExtensionWindow idForWebExtensions];
    v16 = v15;
    v17 = MEMORY[0x277D4A8B0];
    webExtensionTabs = [activeWebExtensionWindow webExtensionTabs];
    v19 = [v17 tabIDToTabPositionDictionaryForTabs:webExtensionTabs];

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
          [group willLoseOwnershipOfTab:v24];
          [(TabController *)group _reuseTabIfNecessary:v24];
          [(TabController *)group _tabWasAddedToReusableTabs:v24 fromWindowWithID:v19 previousTabPositions:v16];
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

    [(TabController *)group _detachTabs:v20];
    tabs = [v3 tabs];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__10;
    v54 = __Block_byref_object_dispose__10;
    array = [MEMORY[0x277CBEB18] array];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __40__TabController__updateTabsForTabGroup___block_invoke_493;
    v39[3] = &unk_2781DA140;
    v39[4] = group;
    v39[5] = &buf;
    v29 = [tabs safari_mapAndFilterObjectsUsingBlock:v39];
    if (![tabs count] && (objc_msgSend(v3, "isPrivateBrowsing") & 1) == 0)
    {
      v30 = [[TabDocument alloc] initWithTitle:0 URL:0 UUID:0 privateBrowsingEnabled:0 controlledByAutomation:[(TabController *)group _controlledByAutomation] hibernated:0 bookmark:0 browserController:WeakRetained relatedWebView:0];
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
      v35 = *(group + 184);
      *(group + 184) = v34;

      [group insertTabs:v29 beforeTab:0 inBackground:1 animated:1];
      v36 = *(group + 184);
      *(group + 184) = 0;

      [(TabController *)group _tabDocumentsWereReusedWhenActiveTabGroupChanged:?];
    }

    [TabController _updateActiveTabForTabGroup:];
    [WeakRetained setPrivateBrowsingEnabled:{objc_msgSend(v3, "isPrivateBrowsing")}];

    _Block_object_dispose(&buf, 8);
  }
}

- (BOOL)createTabGroupAlertIsPresented
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];
  presentedViewController = [viewControllerToPresentFrom presentedViewController];

  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [presentedViewController role] == 2;

  return v5;
}

- (NSString)moveLocalTabsToNewGroupTitle
{
  activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)self activeTabGroupOrTabGroupVisibleInSwitcher];
  if ([activeTabGroupOrTabGroupVisibleInSwitcher isNamed] & 1) != 0 || (objc_msgSend(activeTabGroupOrTabGroupVisibleInSwitcher, "isPrivateBrowsing") & 1) != 0 || (-[TabController activeTabDocument](self, "activeTabDocument"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "libraryType"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5) || (objc_msgSend(activeTabGroupOrTabGroupVisibleInSwitcher, "isEmpty"))
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    unnamedTabGroup = [WeakRetained unnamedTabGroup];
    tabs = [unnamedTabGroup tabs];
    v11 = [tabs count];

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
  isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];
  v22 = [MEMORY[0x277CBEB58] set];
  v5 = MEMORY[0x277CBEB58];
  if (isPrivateBrowsingEnabled)
  {
    v6 = [MEMORY[0x277CBEB58] set];
  }

  else
  {
    tabGroupManager = self->_tabGroupManager;
    activeProfileIdentifier = [(TabController *)self activeProfileIdentifier];
    v9 = [(WBTabGroupManager *)tabGroupManager namedTabGroupsForProfileWithIdentifier:activeProfileIdentifier];
    v6 = [v5 setWithArray:v9];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  browserWindowController = [WeakRetained browserWindowController];
  browserControllers = [browserWindowController browserControllers];

  v12 = [browserControllers countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(browserControllers);
        }

        tabController = [*(*(&v23 + 1) + 8 * i) tabController];
        windowState = [tabController windowState];
        activeTabGroup = [tabController activeTabGroup];
        if (activeTabGroup)
        {
          [v22 addObject:activeTabGroup];
        }

        if (isPrivateBrowsingEnabled)
        {
          [windowState privateTabGroup];
        }

        else
        {
          [tabController unnamedTabGroup];
        }
        v19 = ;
        if (v19)
        {
          [v6 addObject:v19];
        }
      }

      v13 = [browserControllers countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  [v6 minusSet:v22];

  return v6;
}

- (id)existingPersistedTitleForTabDocument:(id)document
{
  v21 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  activeTabGroup = [(TabController *)self activeTabGroup];
  tabs = [activeTabGroup tabs];

  title = [tabs countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (title)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != title; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(tabs);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        uuid = [v10 uuid];
        uuid2 = [documentCopy uuid];
        uUIDString = [uuid2 UUIDString];
        v14 = [uuid isEqualToString:uUIDString];

        if (v14)
        {
          title = [v10 title];
          goto LABEL_11;
        }
      }

      title = [tabs countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (title)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return title;
}

- (id)imageForTabGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isNamed])
  {
    isShared = [groupCopy isShared];
    v6 = MEMORY[0x277D755B8];
    if (isShared)
    {
      v7 = @"square.on.square.badge.person.crop";
    }

    else
    {
      v7 = @"square.on.square";
    }

    goto LABEL_10;
  }

  if (([groupCopy isUnnamed] & 1) != 0 || objc_msgSend(groupCopy, "isLocal"))
  {
    if (-[TabController hasMultipleProfiles](self, "hasMultipleProfiles") && ([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
    {
      activeProfile = [(TabController *)self activeProfile];
      symbolImage = [activeProfile symbolImage];
    }

    else
    {
      v8 = MEMORY[0x277D755B8];
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      scene = [WeakRetained scene];
      v11 = [v8 safari_currentDeviceImageNameForOrientation:{objc_msgSend(scene, "interfaceOrientation")}];
      symbolImage = [v8 _systemImageNamed:v11];
    }

    goto LABEL_11;
  }

  if ([groupCopy isPrivateBrowsing])
  {
    v6 = MEMORY[0x277D755B8];
    v7 = @"hand.raised";
LABEL_10:
    symbolImage = [v6 systemImageNamed:v7];
    goto LABEL_11;
  }

  symbolImage = 0;
LABEL_11:

  return symbolImage;
}

- (id)swipeActionsConfigurationForTabGroup:(id)group forPickerSheet:(BOOL)sheet
{
  groupCopy = group;
  if ([groupCopy isNamed])
  {
    array = [MEMORY[0x277CBEB18] array];
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D753C0];
    v9 = _WBSLocalizedString();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__TabController_swipeActionsConfigurationForTabGroup_forPickerSheet___block_invoke;
    v23[3] = &unk_2781D9F68;
    objc_copyWeak(&v25, &location);
    v10 = groupCopy;
    v24 = v10;
    sheetCopy = sheet;
    v11 = [v8 contextualActionWithStyle:1 title:v9 handler:v23];

    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
    [v11 setImage:v12];

    [array addObject:v11];
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
      sheetCopy2 = sheet;
      v15 = [v14 contextualActionWithStyle:0 title:v13 handler:v19];
      v16 = [MEMORY[0x277D755B8] systemImageNamed:@"pencil"];
      [v15 setImage:v16];

      [array addObject:v15];
      objc_destroyWeak(&v21);
    }

    v17 = [MEMORY[0x277D75AD8] configurationWithActions:array];
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

- (id)swipeActionsConfigurationForTab:(id)tab inTabGroup:(id)group
{
  v27[1] = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  groupCopy = group;
  objc_initWeak(&location, self);
  v8 = [tabCopy url];
  if (v8)
  {
  }

  else
  {
    tabs = [groupCopy tabs];
    v10 = [tabs count] < 2;

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
  v23 = groupCopy;
  v24 = tabCopy;
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

- (id)menuForTabGroup:(id)group variant:(int64_t)variant
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D75710];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__TabController_menuForTabGroup_variant___block_invoke;
  v11[3] = &unk_2781D9FB8;
  objc_copyWeak(v13, &location);
  v8 = groupCopy;
  v12 = v8;
  v13[1] = variant;
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

- (id)_subMenusForTabGroup:(uint64_t)group variant:
{
  v67[2] = *MEMORY[0x277D85DE8];
  v49 = a2;
  if (self)
  {
    objc_initWeak(&location, self);
    if ([v49 isPrivateBrowsing])
    {
      v5 = +[Application sharedApplication];
      isPrivateBrowsingLocked = [v5 isPrivateBrowsingLocked];

      if (isPrivateBrowsingLocked)
      {
        array = MEMORY[0x277CBEBF8];
LABEL_27:
        objc_destroyWeak(&location);
        goto LABEL_28;
      }
    }

    v47 = group != 0;
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v7 = [(TabController *)self _shareActionForTabGroup:v49];
    [array2 safari_addObjectUnlessNil:v7];

    [TabController _copyLinksActionForTabGroup:forPickerSheet:];
    v9 = v8;
    [array2 safari_addObjectUnlessNil:v8];

    if ([array2 count])
    {
      v10 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array2];
      [array addObject:v10];
    }

    if ([v49 isNamed])
    {
      array3 = [MEMORY[0x277CBEB18] array];
      v12 = [(TabController *)self _renameActionForTabGroup:v49 forPickerSheet:group != 0];
      [array3 safari_addObjectUnlessNil:v12];

      v13 = [(TabController *)self _deleteActionForTabGroup:v49 forPickerSheet:group != 0];
      [array3 addObject:v13];

      v14 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array3];
      [array addObject:v14];
    }

    if ([MEMORY[0x277D49A08] isSafariProfilesEnabled])
    {
      v15 = [TabMenuProvider moveMenuForTabGroup:v49 dataSource:self];
      [array safari_addObjectUnlessNil:v15];
    }

    if (group == 1)
    {
      array4 = [MEMORY[0x277CBEB18] array];
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      tabs = [v49 tabs];
      v21 = [tabs countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v21)
      {
        v22 = *v62;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v62 != v22)
            {
              objc_enumerationMutation(tabs);
            }

            v24 = *(*(&v61 + 1) + 8 * i);
            v25 = objc_alloc(MEMORY[0x277CCAD78]);
            uuid = [v24 uuid];
            v27 = [v25 initWithUUIDString:uuid];
            v28 = [self iconForTabUUID:v27];

            v29 = MEMORY[0x277D750C8];
            displayTitle = [(WBTab *)v24 displayTitle];
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __46__TabController__subMenusForTabGroup_variant___block_invoke;
            v56[3] = &unk_2781D9FE0;
            objc_copyWeak(&v59, &location);
            v31 = v49;
            v60 = v47;
            v57 = v31;
            v58 = v24;
            v32 = [v29 actionWithTitle:displayTitle image:v28 identifier:0 handler:v56];

            [array4 addObject:v32];
            objc_destroyWeak(&v59);
          }

          v21 = [tabs countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v21);
      }

      v17 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array4];
      [array addObject:v17];
    }

    else
    {
      if (group)
      {
        goto LABEL_23;
      }

      v16 = MEMORY[0x277D75710];
      array4 = [(TabController *)self _toggleTabViewActionForTabGroup:v49];
      v67[0] = array4;
      v17 = [(TabController *)self _toggleSidebarSectionIsExpandedActionForTabGroup:v49];
      v67[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
      v19 = [v16 menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v18];
      [array addObject:v19];
    }

LABEL_23:
    if (SFDebugMenuEnabled() && [v49 isSyncable])
    {
      uuid2 = [v49 uuid];
      array5 = [MEMORY[0x277CBEB18] array];
      v35 = MEMORY[0x277D750C8];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __46__TabController__subMenusForTabGroup_variant___block_invoke_2;
      v53[3] = &unk_2781DA008;
      objc_copyWeak(&v55, &location);
      v36 = uuid2;
      v54 = v36;
      v37 = [v35 actionWithTitle:@"Copy Tab Group Sync Data" image:0 identifier:0 handler:v53];
      [array5 addObject:v37];

      v38 = MEMORY[0x277D750C8];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __46__TabController__subMenusForTabGroup_variant___block_invoke_3;
      v50[3] = &unk_2781DA008;
      objc_copyWeak(&v52, &location);
      v39 = v36;
      v51 = v39;
      v40 = [v38 actionWithTitle:@"Copy Tab Group and Tabs Sync Data" image:0 identifier:0 handler:v50];
      [array5 addObject:v40];

      v41 = MEMORY[0x277D75710];
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Debug UUID %@ (Internal Only)", v39];
      v43 = [v41 menuWithTitle:v42 image:0 identifier:0 options:1 children:array5];
      [array addObject:v43];

      objc_destroyWeak(&v52);
      objc_destroyWeak(&v55);
    }

    goto LABEL_27;
  }

  array = 0;
LABEL_28:

  return array;
}

- (id)_shareActionForTabGroup:(void *)group
{
  v3 = a2;
  v4 = v3;
  if (group && [v3 isNamed] && (+[FeatureManager sharedFeatureManager](FeatureManager, "sharedFeatureManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "areSharedTabGroupsEnabled"), v5, v6))
  {
    objc_initWeak(&location, group);
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

- (id)_renameActionForTabGroup:(char)group forPickerSheet:
{
  v5 = a2;
  v6 = v5;
  if (self && [v5 isNamed])
  {
    v7 = _WBSLocalizedString();
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D750C8];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"pencil"];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __57__TabController__renameActionForTabGroup_forPickerSheet___block_invoke;
    v15 = &unk_2781DA080;
    objc_copyWeak(&v17, &location);
    v16 = v6;
    groupCopy = group;
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

- (id)_deleteActionForTabGroup:(char)group forPickerSheet:
{
  v5 = a2;
  if (self)
  {
    objc_initWeak(&location, self);
    v6 = _WBSLocalizedString();
    v7 = [self[6] shareRecordForTabGroup:v5];
    v8 = v7;
    if (v7)
    {
      currentUserParticipant = [v7 currentUserParticipant];
      role = [currentUserParticipant role];

      if (role != 1)
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
    groupCopy = group;
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

- (id)_toggleTabViewActionForTabGroup:(id *)group
{
  v3 = a2;
  if (group)
  {
    objc_initWeak(&location, group);
    v4 = MEMORY[0x277D750C8];
    if ([group[9] isShowingTabView] && objc_msgSend(group, "isTabGroupActive:", v3))
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

- (id)_toggleSidebarSectionIsExpandedActionForTabGroup:(id *)group
{
  v3 = a2;
  if (group)
  {
    if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
    {
      WeakRetained = objc_loadWeakRetained(group + 1);
      libraryController = [WeakRetained libraryController];

      v6 = [libraryController isTabGroupExpanded:v3];
      v8 = _WBSLocalizedString();
      v9 = MEMORY[0x277D750C8];
      v10 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.grid.1x2"];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __66__TabController__toggleSidebarSectionIsExpandedActionForTabGroup___block_invoke;
      v20[3] = &unk_2781DA0C8;
      v21 = libraryController;
      v23 = v6;
      v22 = v3;
      v11 = libraryController;
      v12 = [v9 actionWithTitle:v8 image:v10 identifier:0 handler:v20];
    }

    else
    {
      uuid = [v3 uuid];
      [group isTabGroupUUIDExpanded:uuid];

      v8 = _WBSLocalizedString();
      objc_initWeak(&location, group);
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

- (id)contextMenuConfigurationForTabGroup:(id)group variant:(int64_t)variant
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D753B0];
  uuid = [groupCopy uuid];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__TabController_contextMenuConfigurationForTabGroup_variant___block_invoke;
  v12[3] = &unk_2781DA030;
  objc_copyWeak(v14, &location);
  v9 = groupCopy;
  v13 = v9;
  v14[1] = variant;
  v10 = [v7 configurationWithIdentifier:uuid previewProvider:0 actionProvider:v12];

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

- (id)contextMenuConfigurationForTab:(id)tab inTabGroup:(id)group
{
  tabCopy = tab;
  groupCopy = group;
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    v8 = 53558;
  }

  else
  {
    v8 = 53622;
  }

  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  uuid = [tabCopy uuid];
  v11 = [v9 initWithUUIDString:uuid];
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
    v14 = [TabMenuProvider actionProviderForTabGroupTab:tabCopy inTabGroup:groupCopy dataSource:self options:v8];
  }

  v15 = v14;
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    libraryController = [WeakRetained libraryController];

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
      v34 = libraryController;
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
    uuid2 = [tabCopy uuid];
    v25 = [v23 configurationWithIdentifier:uuid2 previewProvider:0 actionProvider:v15];
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

- (id)contextMenuConfigurationForMultipleTabSelection:(id)selection
{
  v3 = [TabMenuProvider actionProviderForMultipleTabSelection:selection dataSource:self];
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

- (BOOL)isTabUUIDActive:(id)active
{
  activeCopy = active;
  activeTabDocument = [(TabController *)self activeTabDocument];
  uuid = [activeTabDocument uuid];
  uUIDString = [uuid UUIDString];
  v8 = [uUIDString isEqualToString:activeCopy];

  return v8;
}

- (void)toggleTabGroupUUIDExpanded:(id)expanded
{
  expandedTabGroupUUIDs = self->_expandedTabGroupUUIDs;
  expandedCopy = expanded;
  v6 = [(NSMutableArray *)expandedTabGroupUUIDs containsObject:expandedCopy];
  v7 = self->_expandedTabGroupUUIDs;
  if (v6)
  {
    [(NSMutableArray *)v7 removeObject:expandedCopy];
  }

  else
  {
    [(NSMutableArray *)v7 addObject:expandedCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  libraryController = [WeakRetained libraryController];
  [libraryController setNeedsUpdateSelection];
}

- (id)iconForTabUUID:(id)d
{
  dCopy = d;
  v5 = +[(WBReusableTabManager *)ReusableTabManager];
  v6 = [v5 faviconForUUID:dCopy];

  if (v6)
  {
    icon = v6;
  }

  else
  {
    v8 = [(TabController *)self tabWithUUID:dCopy];
    if (!v8)
    {
      alternateTabs = [(TabController *)self alternateTabs];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __32__TabController_iconForTabUUID___block_invoke;
      v12[3] = &unk_2781D5BC8;
      v13 = dCopy;
      v8 = [alternateTabs safari_firstObjectPassingTest:v12];
    }

    tabCollectionItem = [v8 tabCollectionItem];
    icon = [tabCollectionItem icon];
  }

  return icon;
}

uint64_t __32__TabController_iconForTabUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)dragItemForTab:(id)tab tabItem:(id)item
{
  v6 = MEMORY[0x277D75470];
  itemCopy = item;
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [v6 safari_itemWithTab:tabCopy tabItem:itemCopy browserController:WeakRetained];

  return v10;
}

- (void)moveTab:(id)tab fromTabGroupWithUUID:(id)d toTabGroupWithUUID:(id)iD afterTab:(id)afterTab
{
  v27[1] = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  afterTabCopy = afterTab;
  iDCopy = iD;
  v13 = [(TabController *)self tabGroupWithUUID:d];
  v14 = [(TabController *)self tabGroupWithUUID:iDCopy];

  LODWORD(iDCopy) = [v13 isPrivateBrowsing];
  if (iDCopy == [v14 isPrivateBrowsing])
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    if (WBSIsEqual())
    {
      tabs = [v14 tabs];
      v17 = [tabs indexOfObject:afterTabCopy];
      if (v17 != [tabs indexOfObject:tabCopy])
      {
        tabGroupManager = self->_tabGroupManager;
        uuid = [v14 uuid];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __74__TabController_moveTab_fromTabGroupWithUUID_toTabGroupWithUUID_afterTab___block_invoke;
        v23[3] = &unk_2781D99C8;
        v24 = tabCopy;
        v25 = afterTabCopy;
        [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:uuid persist:1 usingBlock:v23];

        [WeakRetained reloadSidebarAnimated:0];
      }
    }

    else
    {
      v27[0] = tabCopy;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      [(TabController *)self updateLastSelectedTabUUIDForClosingWBTabs:v20];

      v21 = self->_tabGroupManager;
      v26 = tabCopy;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      [(WBTabGroupManager *)v21 moveTabs:v22 toTabGroup:v14 afterTab:afterTabCopy withoutPersistingTabGroupsWithUUIDStrings:0];

      [WeakRetained reloadSidebarAnimated:0];
      tabs = [MEMORY[0x277D499B8] sharedLogger];
      [tabs reportTabUpdatedWithUpdateType:8];
    }
  }
}

- (id)syntheticBookmarkFoldersIncludingActiveTabGroup:(BOOL)group
{
  namedTabGroups = [(TabController *)self namedTabGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__TabController_syntheticBookmarkFoldersIncludingActiveTabGroup___block_invoke;
  v8[3] = &unk_2781DA0F0;
  groupCopy = group;
  v8[4] = self;
  v6 = [namedTabGroups safari_mapObjectsUsingBlock:v8];

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

- (id)syntheticBookmarkFolderForTabGroup:(id)group withAttribution:(BOOL)attribution
{
  groupCopy = group;
  v7 = [(WBTabGroupManager *)self->_tabGroupManager topScopedBookmarkListForTabGroup:groupCopy];
  if (v7)
  {
    displayTitle = [groupCopy displayTitle];
    v9 = displayTitle;
    if (attribution)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = _WBSLocalizedString();
      v12 = [v10 stringWithFormat:v11, v9];
    }

    else
    {
      v12 = displayTitle;
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
  activeTabGroup = [(TabController *)self activeTabGroup];
  v4 = [(WBTabGroupManager *)tabGroupManager topScopedBookmarkListForTabGroup:activeTabGroup];

  return v4;
}

- (void)insertPerTabGroupBookmark:(id)bookmark inPerTabGroupBookmarkFolderWithID:(int)d
{
  v4 = *&d;
  tabGroupManager = self->_tabGroupManager;
  bookmarkCopy = bookmark;
  v12 = [(WBTabGroupManager *)tabGroupManager scopedBookmarkListWithID:v4 filteredUsingString:0];
  v8 = self->_tabGroupManager;
  bookmarkArray = [v12 bookmarkArray];
  lastObject = [bookmarkArray lastObject];
  uUID = [lastObject UUID];
  [(WBTabGroupManager *)v8 insertScopedBookmark:bookmarkCopy inScopedBookmarkFolderWithID:v4 afterBookmarkWithUUID:uUID notify:1];
}

- (id)copyBookmark:(id)bookmark toPerTabGroupBookmarkFolderWithID:(int)d
{
  v4 = *&d;
  v6 = MEMORY[0x277D7B5A0];
  bookmarkCopy = bookmark;
  v8 = [v6 alloc];
  title = [bookmarkCopy title];
  address = [bookmarkCopy address];
  deviceIdentifier = [bookmarkCopy deviceIdentifier];

  v12 = [v8 initWithTitle:title address:address parentID:v4 subtype:1 deviceIdentifier:deviceIdentifier collectionType:1];
  [(TabController *)self insertPerTabGroupBookmark:v12 inPerTabGroupBookmarkFolderWithID:v4];
  return v12;
}

- (BOOL)hasActiveLibrary
{
  activeLibraryType = [(TabController *)self activeLibraryType];
  v3 = activeLibraryType != 0;

  return v3;
}

- (BOOL)hasNamedTabGroups
{
  namedTabGroups = [(TabController *)self namedTabGroups];
  v3 = [namedTabGroups count] != 0;

  return v3;
}

- (id)openInTabGroupMenuWithNewTabGroupName:(id)name URL:(id)l descendantCount:(int64_t)count handler:(id)handler
{
  nameCopy = name;
  lCopy = l;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  if ([(TabController *)self isPrivateBrowsingEnabled])
  {
    v13 = 0;
  }

  else
  {
    safari_userVisibleHostWithoutWWWSubdomain = [lCopy safari_userVisibleHostWithoutWWWSubdomain];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83__TabController_openInTabGroupMenuWithNewTabGroupName_URL_descendantCount_handler___block_invoke;
    v20[3] = &unk_2781DA118;
    objc_copyWeak(&v22, &location);
    v21 = handlerCopy;
    v13 = [(TabController *)self tabGroupsMenuElementsWithOptions:20 newTabGroupName:nameCopy hostTitle:safari_userVisibleHostWithoutWWWSubdomain descendantCount:count movingSelectedTabs:0 actionHandler:v20];

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
  activeTabGroup = [(TabController *)self activeTabGroup];
  isNamed = [activeTabGroup isNamed];

  if (isNamed)
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

- (BOOL)switchToTabWithUUID:(id)d inTabGroupWithUUID:(id)iD
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  tabGroups = [(TabController *)self tabGroups];
  v9 = [tabGroups countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = dCopy;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(tabGroups);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        uuid = [v13 uuid];
        uUIDString = [iDCopy UUIDString];
        v16 = [uuid isEqualToString:uUIDString];

        if (v16)
        {
          dCopy = v19;
          v17 = [(TabController *)&self->super.isa _switchToTab:v19 orTabUUID:v13 inTabGroup:?];
          goto LABEL_12;
        }
      }

      v10 = [tabGroups countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v17 = 0;
    dCopy = v19;
  }

  else
  {
    v17 = 0;
  }

LABEL_12:

  return v17;
}

- (void)evictTabDocument:(id)document
{
  ++self->_updateTabsSuppressionCount;
  documentCopy = document;
  [documentCopy setClosed:1];
  [documentCopy willClose];

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

- (void)moveTab:(id)tab toTabGroupWithUUID:(id)d
{
  v43[1] = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  v7 = [(TabController *)self tabGroupWithUUID:d];
  isPrivate = [tabCopy isPrivate];
  if (isPrivate == [v7 isPrivateBrowsing] && !-[TabController isTabGroupActive:](self, "isTabGroupActive:", v7))
  {
    [(TabController *)self removeSingleBlankTabFromInactiveTabGroup:v7];
    webExtensionWindow = [tabCopy webExtensionWindow];
    webExtensionTabs = [webExtensionWindow webExtensionTabs];
    v11 = [webExtensionTabs indexOfObject:tabCopy];

    [webExtensionWindow idForWebExtensions];
    v13 = v12;
    [(TabController *)self _reuseTabIfNecessary:tabCopy];
    webExtensionsController = [tabCopy webExtensionsController];
    [webExtensionsController didMoveTab:tabCopy fromWindowWithID:v11 indexInOldWindow:v13];

    if ([tabCopy isPinned])
    {
      pinnedTabsManager = self->_pinnedTabsManager;
      uuid = [tabCopy uuid];
      uUIDString = [uuid UUIDString];
      [(PinnedTabsManager *)pinnedTabsManager removeTabWithUUID:uUIDString persist:0];

      wbTab = [tabCopy wbTab];
      if ([v7 usesGlobalPinnedTabs])
      {
        tabGroupManager = self->_tabGroupManager;
        tabGroupUUID = [wbTab tabGroupUUID];
        v37 = MEMORY[0x277D85DD0];
        v38 = 3221225472;
        v39 = __44__TabController_moveTab_toTabGroupWithUUID___block_invoke;
        v40 = &unk_2781D97D0;
        wbTab = wbTab;
        v41 = wbTab;
        [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:tabGroupUUID persist:1 usingBlock:&v37];

        v21 = objc_alloc(MEMORY[0x277D7B538]);
        uuid2 = [tabCopy uuid];
        uUIDString2 = [uuid2 UUIDString];
        deviceIdentifier = [wbTab deviceIdentifier];
        v25 = [v21 initWithUUID:uUIDString2 deviceIdentifier:deviceIdentifier];

        tabUpdateBlock = [tabCopy tabUpdateBlock];
        (tabUpdateBlock)[2](tabUpdateBlock, v25);

        v27 = self->_pinnedTabsManager;
        v28 = [(TabController *)self _containerForPinnedTabsInTabGroup:v7];
        [(PinnedTabsManager *)v27 appendTab:v25 inContainer:v28];

        v29 = v41;
LABEL_10:

        [(TabController *)&self->super.isa _forceUpdateTabGroupTitleIfNeeded:v7];
        mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
        [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:8];

        goto LABEL_3;
      }

      v33 = self->_pinnedTabsManager;
      uuid3 = [wbTab uuid];
      [(PinnedTabsManager *)v33 removeTabWithUUID:uuid3 persist:1];

      v35 = self->_tabGroupManager;
      v43[0] = wbTab;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
      lastPinnedTab = [v7 lastPinnedTab];
      [(WBTabGroupManager *)v35 moveTabs:v29 toTabGroup:v7 afterTab:lastPinnedTab withoutPersistingTabGroupsWithUUIDStrings:0];
    }

    else
    {
      v30 = self->_tabGroupManager;
      wbTab = [tabCopy wbTab];
      v42 = wbTab;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      lastPinnedTab = [v7 tabs];
      lastObject = [lastPinnedTab lastObject];
      [(WBTabGroupManager *)v30 moveTabs:v29 toTabGroup:v7 afterTab:lastObject withoutPersistingTabGroupsWithUUIDStrings:0];
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

- (void)moveTabGroup:(id)group beforeOrAfterTabGroup:(id)tabGroup
{
  groupCopy = group;
  tabGroupCopy = tabGroup;
  tabGroupManager = self->_tabGroupManager;
  activeProfileIdentifier = [(TabController *)self activeProfileIdentifier];
  v9 = [(WBTabGroupManager *)tabGroupManager namedTabGroupsForProfileWithIdentifier:activeProfileIdentifier];

  v10 = tabGroupCopy;
  v11 = [v9 indexOfObject:v10];
  v12 = [v9 indexOfObject:groupCopy];
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
    [(WBTabGroupManager *)self->_tabGroupManager moveTabGroup:groupCopy afterTabGroup:v13];
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

- (id)moveMenuOnPageMenuWithDismissHandler:(id)handler
{
  handlerCopy = handler;
  activeTabDocument = [(TabController *)self activeTabDocument];
  v6 = [TabMenuProvider moveMenuForTab:activeTabDocument dataSource:self showTitle:0 dismissHandler:handlerCopy];

  return v6;
}

- (id)tabGroupsMenuElementsWithOptions:(unint64_t)options newTabGroupName:(id)name hostTitle:(id)title descendantCount:(int64_t)count movingSelectedTabs:(id)tabs actionHandler:(id)handler dismissHandler:(id)dismissHandler
{
  optionsCopy = options;
  v67 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  titleCopy = title;
  tabsCopy = tabs;
  handlerCopy = handler;
  dismissHandlerCopy = dismissHandler;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  if ((optionsCopy & 0x10) != 0)
  {
    v18 = +[FeatureManager sharedFeatureManager];
    isCustomTabGroupsEnabled = [v18 isCustomTabGroupsEnabled];

    if (isCustomTabGroupsEnabled)
    {
      v20 = MEMORY[0x277D750C8];
      v21 = _WBSLocalizedString();
      v22 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.square.on.square"];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __140__TabController_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler___block_invoke;
      v57[3] = &unk_2781DA1B8;
      v62 = dismissHandlerCopy;
      v58 = titleCopy;
      countCopy = count;
      v59 = nameCopy;
      v60 = tabsCopy;
      selfCopy = self;
      v63 = handlerCopy;
      v23 = [v20 actionWithTitle:v21 image:v22 identifier:0 handler:v57];

      [v23 setAccessibilityIdentifier:@"NewTabGroupButton"];
      [array addObject:v23];
    }
  }

  v41 = titleCopy;
  v42 = nameCopy;
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
        if ((!-[TabController isTabGroupActive:](self, "isTabGroupActive:", v28) || ((optionsCopy & 2) != 0 || ([v28 isLocal] & 1) == 0) && ((optionsCopy & 4) != 0 || (objc_msgSend(v28, "isSyncable") & 1) == 0)) && ((optionsCopy & 8) != 0 || (objc_msgSend(v28, "isPrivateBrowsing") & 1) == 0))
        {
          v29 = [(TabController *)self imageForTabGroup:v28];
          v30 = MEMORY[0x277D750C8];
          displayTitle = [v28 displayTitle];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __140__TabController_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler___block_invoke_4;
          v49[3] = &unk_2781DA1E0;
          v51 = dismissHandlerCopy;
          v52 = handlerCopy;
          v49[4] = v28;
          v49[5] = self;
          v50 = tabsCopy;
          v32 = [v30 actionWithTitle:displayTitle image:v29 identifier:0 handler:v49];

          title = [v28 title];
          [v32 setAccessibilityIdentifier:title];

          if (optionsCopy)
          {
            [v32 setState:{-[TabController isTabGroupActive:](self, "isTabGroupActive:", v28)}];
          }

          if ([v28 isNamed])
          {
            v34 = array3;
          }

          else
          {
            v34 = array2;
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
  v36 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array2];
  v65[1] = v36;
  v37 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array3];
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

- (id)profilesMenuElementsWithOptions:(unint64_t)options movingSelectedTabGroups:(id)groups actionHandler:(id)handler
{
  optionsCopy = options;
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
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
        if ((optionsCopy & 2) != 0 || ([(TabController *)selfCopy _isProfileActive:?]& 1) == 0)
        {
          v13 = MEMORY[0x277D750C8];
          title = [v12 title];
          symbolImage = [v12 symbolImage];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __87__TabController_profilesMenuElementsWithOptions_movingSelectedTabGroups_actionHandler___block_invoke;
          v25[3] = &unk_2781D96B0;
          v16 = handlerCopy;
          v25[4] = v12;
          v26 = v16;
          v17 = [v13 actionWithTitle:title image:symbolImage identifier:0 handler:v25];

          [v17 setAccessibilityIdentifier:@"MoveToProfileMenuOption"];
          if (optionsCopy)
          {
            [v17 setState:{-[TabController _isProfileActive:](selfCopy, v12)}];
          }

          [array addObject:v17];
        }

        ++v11;
      }

      while (v9 != v11);
      v18 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      v9 = v18;
    }

    while (v18);
  }

  v19 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array];
  v31 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];

  return v20;
}

- (void)removeSingleBlankTabFromInactiveTabGroup:(id)group
{
  groupCopy = group;
  v4 = [(TabController *)self isTabGroupActive:groupCopy];
  v5 = groupCopy;
  if (!v4)
  {
    tabs = [groupCopy tabs];
    if ([tabs count] <= 1)
    {
      firstObject = [tabs firstObject];
      v8 = firstObject;
      if (firstObject)
      {
        v9 = [firstObject url];

        if (!v9)
        {
          [(TabController *)self _removeTab:v8 fromTabGroup:groupCopy, v10, v11, v12, v13, v14, v15, groupCopy, v17, v18, v19, v20];
        }
      }
    }

    v5 = groupCopy;
  }
}

- (void)removeSingleBlankTabFromActiveTabGroup
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  currentTabs = [(TabController *)self currentTabs];
  v4 = [currentTabs countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(currentTabs);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 url];

        if (!v9)
        {
          [(TabController *)self closeTab:v8 animated:0];
          goto LABEL_11;
        }
      }

      v5 = [currentTabs countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)browserControllerContainingLocalTabGroupUUID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  browserWindowController = [WeakRetained browserWindowController];
  browserControllers = [browserWindowController browserControllers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__TabController_browserControllerContainingLocalTabGroupUUID___block_invoke;
  v11[3] = &unk_2781D4E70;
  v12 = dCopy;
  v8 = dCopy;
  v9 = [browserControllers safari_firstObjectPassingTest:v11];

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

- (BOOL)scrollTabSwitcherToTabGroupIfShowing:(id)showing
{
  showingCopy = showing;
  if (SFEnhancedTabOverviewEnabled() && [(TabCollectionViewManager *)self->_tabCollectionViewManager isShowingTabView])
  {
    tabSwitcherViewController = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabSwitcherViewController];
    [tabSwitcherViewController scrollToTabGroup:showingCopy];

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
  unnamedTabGroup = [(TabController *)self unnamedTabGroup];
  tabs = [unnamedTabGroup tabs];
  v4 = [tabs count];

  return v4;
}

- (void)tabGroupManagerDidUpdateTabGroups:(id)groups
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained reloadSidebarAnimated:!self->_suppressSidebarReloadAnimation];
}

- (void)tabGroupManager:(id)manager didUpdateTabsInTabGroupWithUUID:(id)d
{
  v5 = [manager tabGroupWithUUID:d];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __65__TabController_tabGroupManager_didUpdateTabsInTabGroupWithUUID___block_invoke;
  v25 = &unk_2781DA230;
  v6 = v5;
  v26 = v6;
  selfCopy = self;
  v7 = _Block_copy(&v22);
  if ([(TabController *)self isTabGroupActive:v6, v22, v23, v24, v25])
  {
    [TabController tabGroupManager:didUpdateTabsInTabGroupWithUUID:];
  }

  else if (([v6 isPrivateBrowsing] & 1) != 0 || (objc_msgSend(v6, "profileIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), -[TabController activeProfileIdentifier](self, "activeProfileIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = WBSIsEqual(), v9, v8, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained reloadSidebarAnimated:0];

    tabSwitcherViewController = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabSwitcherViewController];
    [tabSwitcherViewController setNeedsApplyContentAnimated:1];

    privateTabGroup = [(WBWindowState *)self->_windowState privateTabGroup];
    v14 = [v6 isEqual:privateTabGroup];

    if (v14)
    {
      [TabController tabGroupManager:v7 didUpdateTabsInTabGroupWithUUID:?];
    }

    else
    {
      uuid = [v6 uuid];
      firstObject = [(NSMutableArray *)self->_mutableNormalTabs firstObject];
      wbTab = [firstObject wbTab];
      tabGroupUUID = [wbTab tabGroupUUID];
      v19 = [uuid isEqual:tabGroupUUID];

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

- (void)tabGroupManager:(id)manager didUpdateTabWithUUID:(id)d userDriven:(BOOL)driven
{
  drivenCopy = driven;
  v50 = *MEMORY[0x277D85DE8];
  v7 = [manager tabWithUUID:d];
  if (v7)
  {
    if ([(TabController *)self isTabInActiveTabGroup:v7])
    {
      v8 = objc_alloc(MEMORY[0x277CCAD78]);
      uuid = [v7 uuid];
      v10 = [v8 initWithUUIDString:uuid];
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
        selfCopy = self;
        v14 = v7;
        v47 = v14;
        [v12 setHandler:v44];
        title = [v13 title];
        title2 = [v14 title];
        if (WBSIsEqual())
        {
          v17 = v12;
          v18 = [v13 url];
          v19 = [v14 url];
          if (WBSIsEqual())
          {
            isPinned = [v13 isPinned];
            isPinned2 = [v14 isPinned];

            v12 = v17;
            if (isPinned == isPinned2)
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

            expectedOrCurrentURL = [v13 expectedOrCurrentURL];
            if ([expectedOrCurrentURL safari_isSafariWebExtensionURL])
            {
              webExtensionsController = [v13 webExtensionsController];
              [v14 url];
              v26 = v43 = v12;
              [webExtensionsController _extensionURLToLoadFromPersistentStateURL:v26];
              v41 = v13;
              v27 = v14;
              v28 = v23;
              v30 = v29 = expectedOrCurrentURL;
              v31 = WBSIsEqual();

              expectedOrCurrentURL = v29;
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
                v49 = drivenCopy;
                _os_log_impl(&dword_215819000, v32, OS_LOG_TYPE_INFO, "Navigating tab because the URL has changed (user driven: %d)", buf, 8u);
              }

              if (drivenCopy)
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
                title3 = [v14 title];
                [v13 loadURL:v33 title:title3 skipSyncableTabUpdates:1];
              }

              [v13 updateTabIcon];
            }

            isPinned3 = [v13 isPinned];
            if (isPinned3 != [v14 isPinned])
            {
              v36 = WBS_LOG_CHANNEL_PREFIXTabGroup();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_215819000, v36, OS_LOG_TYPE_INFO, "Changing pinned state of tab", buf, 2u);
              }

              [v13 setPinned:{objc_msgSend(v14, "isPinned")}];
              pinnedTitle = [v14 pinnedTitle];
              [v13 setPinnedTitle:pinnedTitle];

              pinnedURL = [v14 pinnedURL];
              [v13 setPinnedURL:pinnedURL];
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

- (void)tabGroupManager:(id)manager didRemoveTabGroupWithUUID:(id)d
{
  v5 = [manager removedTabGroupWithUUID:d];
  if (v5)
  {
    windowState = self->_windowState;
    v11 = v5;
    uuid = [v5 uuid];
    [(WBWindowState *)windowState removeActiveTabUUIDForTabGroupWithUUID:uuid];

    settings = [MEMORY[0x277D28F08] settings];
    isPrivateBrowsing = [v11 isPrivateBrowsing];
    if ([v11 isSyncable])
    {
      uuid2 = [v11 uuid];
      [settings setBlankSnapshotGroupIdentifier:0 forPrivateBrowsing:isPrivateBrowsing syncableTabGroupUUID:uuid2 forWindowWithUUID:self->_browserWindowUUID];
    }

    else
    {
      [settings setBlankSnapshotGroupIdentifier:0 forPrivateBrowsing:isPrivateBrowsing syncableTabGroupUUID:0 forWindowWithUUID:self->_browserWindowUUID];
    }

    v5 = v11;
  }
}

- (void)tabGroupManager:(id)manager willReplaceTabWithUUID:(id)d withTabWithUUID:(id)iD
{
  v7 = MEMORY[0x277CCAD78];
  iDCopy = iD;
  dCopy = d;
  v11 = [[v7 alloc] initWithUUIDString:dCopy];

  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:iDCopy];
  [(NSMutableDictionary *)self->_originalToReplacementUUIDMap setObject:v10 forKeyedSubscript:v11];
}

- (void)tabGroupManagerDidDeletedAllLocalTabs:(id)tabs
{
  tabsCopy = tabs;
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
    scene = [v11 scene];
    keyWindow = [scene keyWindow];
    rootViewController = [keyWindow rootViewController];
    [rootViewController presentViewController:v8 animated:1 completion:0];
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

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  [editingCopy selectAll:0];
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

- (void)textFieldDidEndEditing:(id)editing
{
  if (self->_showsTabGroupNameSuggestions)
  {
    v14 = v3;
    v15 = v4;
    text = [editing text];
    v7 = [text copy];

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

- (void)registerUndoWithName:(id)name actions:(id)actions
{
  actionsCopy = actions;
  nameCopy = name;
  v8 = [[TabCloseUndoGroup alloc] initWithName:nameCopy];

  [(TabController *)self _registerUndoWithGroup:v8 actions:actionsCopy];
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

- (void)_undoCloseTabs:(id)tabs
{
  v4 = MEMORY[0x277CBEB18];
  tabsCopy = tabs;
  array = [v4 array];
  v6 = [(TabController *)self _reopenTabGroupTabsForUndoAction:tabsCopy];
  [array addObjectsFromArray:v6];

  v7 = [(TabController *)&self->super.isa _reopenGloballyPinnedTabsForUndoAction:tabsCopy];

  [array addObjectsFromArray:v7];
  if ([(NSUndoManager *)self->_undoManager isUndoing])
  {
    v8 = [(NSUndoManager *)self->_undoManager prepareWithInvocationTarget:self];
    [v8 closeWBTabs:array];
  }

  if ([array count] == 1)
  {
    v9 = [array objectAtIndexedSubscript:0];
    uuid = [v9 uuid];
    [(TabController *)self setActiveTabUUID:uuid];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  libraryController = [WeakRetained libraryController];
  [libraryController setNeedsReloadSectionControllersAnimated:1];
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

- (void)_redoCloseTabs:(id)tabs
{
  [(TabController *)self closeWBTabs:tabs];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  libraryController = [WeakRetained libraryController];
  [libraryController setNeedsReloadSectionControllersAnimated:1];
}

- (void)setTab:(id)tab isPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  tabCopy = tab;
  if ([tabCopy isPinned] != pinnedCopy)
  {
    [tabCopy setPinned:pinnedCopy];
    wbTab = [tabCopy wbTab];
    tabGroupUUID = [wbTab tabGroupUUID];
    v9 = [(TabController *)self tabGroupWithUUID:tabGroupUUID];

    if (!v9)
    {
      if ([tabCopy isPrivateBrowsingEnabled])
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
    selfCopy = self;
    v20 = v9;
    v21 = wbTab;
    v22 = tabCopy;
    v11 = wbTab;
    v12 = v9;
    [(PinnedTabsManager *)pinnedTabsManager performUpdatesUsingBlock:&v15];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained reloadSidebarAnimated:{1, v15, v16, v17, v18, selfCopy}];
    libraryController = [WeakRetained libraryController];
    [libraryController reloadSectionControllersIfNeeded];
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
  unpinnedTabs = [(TabController *)self unpinnedTabs];
  v4 = [unpinnedTabs count];

  if (v4 == 1)
  {
    unpinnedTabs2 = [(TabController *)self unpinnedTabs];
    lastObject = [unpinnedTabs2 lastObject];

    if ([lastObject isBlank])
    {
      v7 = [(TabController *)self _unhibernateTabIfNeeded:lastObject];
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

- (id)recentlyClosedTabsMenuForTabGroupWithUUID:(id)d
{
  dCopy = d;
  v5 = [(TabController *)self tabGroupWithUUID:dCopy];
  isPrivateBrowsing = [v5 isPrivateBrowsing];

  if (isPrivateBrowsing)
  {
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D75710];
    activeProfile = [(TabController *)self activeProfile];
    hasMultipleProfiles = [(TabController *)self hasMultipleProfiles];
    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];
    v7 = [v8 safari_recentlyClosedTabsMenuForProfile:activeProfile showProfileTitle:hasMultipleProfiles displayInline:1 openInTabGroupWithUUID:v11 image:0];
  }

  return v7;
}

- (void)openRecentlyClosedTabWithUUID:(id)d inTabGroupWithUUID:(id)iD
{
  dCopy = d;
  uUIDString = [iD UUIDString];
  v8 = uUIDString;
  if (uUIDString)
  {
    activeTabGroupUUID = uUIDString;
  }

  else
  {
    activeTabGroupUUID = [(TabController *)self activeTabGroupUUID];
  }

  v14 = activeTabGroupUUID;

  mEMORY[0x277D28F00] = [MEMORY[0x277D28F00] sharedBrowserSavedState];
  v11 = [mEMORY[0x277D28F00] tabStateDataForUUID:dCopy];

  mEMORY[0x277D28F00]2 = [MEMORY[0x277D28F00] sharedBrowserSavedState];
  [mEMORY[0x277D28F00]2 loadSessionStateDataAndRemoveRecentlyClosedTab:v11];

  [(TabController *)self setActiveTabGroupUUID:v14];
  [(TabController *)self insertTabDocumentFromTabStateData:v11];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didOpenNewTabWithURLWithTrigger:4 tabCollectionViewType:{-[TabCollectionViewManager visibleTabCollectionViewType](self->_tabCollectionViewManager, "visibleTabCollectionViewType")}];
}

- (NSString)activeTabUUID
{
  activeTabDocument = [(TabController *)self activeTabDocument];
  uuidString = [activeTabDocument uuidString];

  return uuidString;
}

- (void)setActiveTabUUID:(id)d
{
  dCopy = d;
  v4 = [(TabController *)self tabGroupRelatedToTabWithUUID:?];
  if (([v4 isPrivateBrowsing] & 1) != 0 || (objc_msgSend(v4, "profileIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), -[TabController activeProfileIdentifier](self, "activeProfileIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    activeTabGroupUUID = [(TabController *)self activeTabGroupUUID];
    uuid = [v4 uuid];
    v10 = [activeTabGroupUUID isEqualToString:uuid];

    if ((v10 & 1) == 0)
    {
      uuid2 = [v4 uuid];
      [(TabController *)self setActiveTabGroupUUID:uuid2];
    }

    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];
    v13 = [(TabController *)self tabWithUUID:v12];

    if (v13)
    {
      [(TabController *)self setActiveTab:v13];
    }
  }
}

- (id)appendWBTabInTabGroupWithUUID:(id)d
{
  dCopy = d;
  if (self->_tabDocumentBeingHiddenFromTabView && (-[TabController privateTabGroupIfAvailable](self, "privateTabGroupIfAvailable"), v5 = objc_claimAutoreleasedReturnValue(), [v5 uuid], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", dCopy), v6, v5, v7))
  {
    tabGroupTab = [(TabDocument *)self->_tabDocumentBeingHiddenFromTabView tabGroupTab];
    [(TabController *)self setActiveTabGroupUUID:dCopy];
    tabDocumentBeingHiddenFromTabView = self->_tabDocumentBeingHiddenFromTabView;
    self->_tabDocumentBeingHiddenFromTabView = 0;
  }

  else
  {
    v10 = MEMORY[0x277D7B538];
    deviceIdentifier = [(TabController *)self deviceIdentifier];
    v12 = [v10 startPageTabWithDeviceIdentifier:deviceIdentifier];

    tabGroupManager = self->_tabGroupManager;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__TabController_appendWBTabInTabGroupWithUUID___block_invoke;
    v15[3] = &unk_2781D97D0;
    tabGroupTab = v12;
    v16 = tabGroupTab;
    [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:dCopy persist:1 usingBlock:v15];
    tabDocumentBeingHiddenFromTabView = v16;
  }

  return tabGroupTab;
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

- (BOOL)canCloseWBTab:(id)tab
{
  tabCopy = tab;
  uuid = [tabCopy uuid];
  v6 = [(TabController *)self tabGroupRelatedToTabWithUUID:uuid];

  unpinnedTabs = [v6 unpinnedTabs];
  v8 = [unpinnedTabs count];

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

- (id)defaultTabToSelectInTabGroup:(id)group
{
  groupCopy = group;
  if ([(TabController *)self isTabGroupActive:groupCopy])
  {
    activeTabDocument = [(TabController *)self activeTabDocument];
    wbTab = [activeTabDocument wbTab];
  }

  else
  {
    activeTabDocument = [groupCopy lastSelectedTabUUID];
    v7 = [(TabController *)self wbTabWithUUID:activeTabDocument];
    v8 = v7;
    if (v7)
    {
      wbTab = v7;
    }

    else
    {
      firstUnpinnedTab = [groupCopy firstUnpinnedTab];
      v10 = firstUnpinnedTab;
      if (firstUnpinnedTab)
      {
        wbTab = firstUnpinnedTab;
      }

      else
      {
        tabs = [groupCopy tabs];
        wbTab = [tabs firstObject];
      }
    }
  }

  return wbTab;
}

- (void)duplicateWBTabs:(id)tabs
{
  v32 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  v5 = [MEMORY[0x277CBEAC0] safari_dictionaryWithObjectsInFastEnumerationCollection:tabsCopy groupedUsingBlock:&__block_literal_global_608];
  v6 = [tabsCopy safari_filterObjectsUsingBlock:&__block_literal_global_610];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__TabController_duplicateWBTabs___block_invoke_3;
  aBlock[3] = &unk_2781DA370;
  v19 = tabsCopy;
  v29 = v19;
  selfCopy = self;
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
        uuid = [v13 uuid];
        v15 = [(TabController *)self tabGroupRelatedToTabWithUUID:uuid];
        uuid2 = [v15 uuid];
        (*(v8 + 2))(v8, v13, uuid2);

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v10);
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  libraryController = [WeakRetained libraryController];
  [libraryController reloadSectionControllersIfNeeded];
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

- (BOOL)isTabWithUUIDBeingHiddenFromTabView:(id)view
{
  tabDocumentBeingHiddenFromTabView = self->_tabDocumentBeingHiddenFromTabView;
  viewCopy = view;
  uuidString = [(TabDocument *)tabDocumentBeingHiddenFromTabView uuidString];
  v6 = [viewCopy isEqual:uuidString];

  return v6;
}

- (void)switchToTabGroupVisibleInSwitcherIfNeeded
{
  tabSwitcherViewController = [(TabCollectionViewManager *)self->_tabCollectionViewManager tabSwitcherViewController];
  [tabSwitcherViewController cancelRenamingVisibleTabGroup];

  activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)self activeTabGroupOrTabGroupVisibleInSwitcher];
  activeTabGroupUUID = self->_activeTabGroupUUID;
  uuid = [activeTabGroupOrTabGroupVisibleInSwitcher uuid];
  LOBYTE(activeTabGroupUUID) = [(NSString *)activeTabGroupUUID isEqualToString:uuid];

  if ((activeTabGroupUUID & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_DEFAULT, "Will switch tab group to visible group.", v9, 2u);
    }

    uuid2 = [activeTabGroupOrTabGroupVisibleInSwitcher uuid];
    [(TabController *)self setActiveTabGroupUUID:uuid2];
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

- (void)moveWBTabs:(id)tabs toTabGroup:(id)group
{
  groupCopy = group;
  v7 = [tabs safari_splitArrayUsingCondition:&__block_literal_global_613];
  first = [v7 first];
  second = [v7 second];
  if ([second count])
  {
    tabGroupManager = self->_tabGroupManager;
    tabs = [groupCopy tabs];
    lastObject = [tabs lastObject];
    [(WBTabGroupManager *)tabGroupManager moveTabs:second toTabGroup:groupCopy afterTab:lastObject withoutPersistingTabGroupsWithUUIDStrings:0];
  }

  if ([first count])
  {
    pinnedTabsManager = self->_pinnedTabsManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__TabController_moveWBTabs_toTabGroup___block_invoke_2;
    v14[3] = &unk_2781D58E8;
    v15 = first;
    selfCopy = self;
    v17 = groupCopy;
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

- (id)pinnedWBTabsForTabGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy usesGlobalPinnedTabs])
  {
    pinnedTabsManager = self->_pinnedTabsManager;
    tabs = [(TabController *)self _containerForPinnedTabsInTabGroup:groupCopy];

    [(PinnedTabsManager *)pinnedTabsManager pinnedTabsInContainer:tabs];
  }

  else
  {
    tabs = [groupCopy tabs];

    [tabs safari_filterObjectsUsingBlock:&__block_literal_global_615];
  }
  v6 = ;

  return v6;
}

- (void)setTitle:(id)title forTabGroupWithUUID:(id)d
{
  titleCopy = title;
  tabGroupManager = self->_tabGroupManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__TabController_setTitle_forTabGroupWithUUID___block_invoke;
  v9[3] = &unk_2781D97D0;
  v10 = titleCopy;
  v8 = titleCopy;
  [(WBTabGroupManager *)tabGroupManager updateTabGroupWithUUID:d persist:1 usingBlock:v9];
}

- (void)setWBTabs:(id)tabs arePinned:(BOOL)pinned
{
  tabsCopy = tabs;
  pinnedTabsManager = self->_pinnedTabsManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__TabController_setWBTabs_arePinned___block_invoke;
  v9[3] = &unk_2781D5060;
  pinnedCopy = pinned;
  v10 = tabsCopy;
  selfCopy = self;
  v8 = tabsCopy;
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

- (id)tabGroupRelatedToTabWithUUID:(id)d
{
  dCopy = d;
  v5 = [(WBTabGroupManager *)self->_tabGroupManager tabWithUUID:dCopy];
  tabGroupUUID = [v5 tabGroupUUID];

  if (tabGroupUUID)
  {
    tabGroupManager = self->_tabGroupManager;
    tabGroupUUID2 = [v5 tabGroupUUID];
    v9 = [(WBTabGroupManager *)tabGroupManager tabGroupWithUUID:tabGroupUUID2];
LABEL_3:
    v10 = v9;
    goto LABEL_4;
  }

  tabGroupUUID2 = [(PinnedTabsManager *)self->_pinnedTabsManager containerForTabWithUUID:dCopy];
  if ([tabGroupUUID2 isInDefaultProfile])
  {
    isPrivateBrowsingEnabled = [tabGroupUUID2 isPrivateBrowsingEnabled];
    windowState = self->_windowState;
    if (isPrivateBrowsingEnabled)
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
  activeProfileIdentifier = [tabGroupUUID2 activeProfileIdentifier];
  v10 = [WeakRetained existingUnnamedTabGroupForProfileWithIdentifier:activeProfileIdentifier];

LABEL_4:

  return v10;
}

- (id)wbTabWithUUID:(id)d
{
  dCopy = d;
  v5 = [(WBTabGroupManager *)self->_tabGroupManager tabWithUUID:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(PinnedTabsManager *)self->_pinnedTabsManager tabWithUUID:dCopy];
  }

  v8 = v7;

  return v8;
}

- (void)reorderPinnedTabsIntoPlace
{
  pinnedTabs = [self pinnedTabs];
  [(TabController *)self _updateTabsWithPinnedTabs:pinnedTabs persist:1u];
}

- (void)pinnedTabsManager:(id)manager didUpdatePinnedTabs:(id)tabs isPrivate:(BOOL)private
{
  privateCopy = private;
  tabsCopy = tabs;
  if ([(TabController *)self isPrivateBrowsingEnabled]== privateCopy)
  {
    activeTabGroup = [(TabController *)self activeTabGroup];
    isSyncable = [activeTabGroup isSyncable];

    if ((isSyncable & 1) == 0 && (privateCopy || [(TabController *)self isInDefaultProfile]))
    {
      [TabController _updateTabsWithPinnedWBTabs:?];
    }
  }
}

- (void)pinnedTabsManager:(id)manager didUpdatePinnedTabs:(id)tabs inProfileWithIdentifier:(id)identifier
{
  tabsCopy = tabs;
  identifierCopy = identifier;
  activeProfileIdentifier = [(TabController *)self activeProfileIdentifier];
  v9 = [activeProfileIdentifier isEqual:identifierCopy];

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  activeTabGroup = [(TabController *)self activeTabGroup];
  if (([activeTabGroup usesGlobalPinnedTabs] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  isPrivateBrowsingEnabled = [(TabController *)self isPrivateBrowsingEnabled];

  if (!isPrivateBrowsingEnabled)
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

- (void)attemptToSelectTabGroupFromShare:(id)share
{
  v4 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupMatchingShare:share];
  if (v4)
  {
    v5 = v4;
    [(TabController *)self _selectAcceptedSharedTabGroup:v4];
    v4 = v5;
  }

  self->_didSelectAcceptedSharedTabGroup = v4 != 0;
}

- (void)displayAlreadyAcceptedSharedTabGroupWithUUID:(id)d
{
  v4 = MEMORY[0x277CBEAA8];
  dCopy = d;
  v6 = [v4 now];
  [(TabController *)self didFetchRecentlyAcceptedSharedTabGroupWithUUID:dCopy acceptedShareDate:v6];
}

- (void)didFetchRecentlyAcceptedSharedTabGroupWithUUID:(id)d acceptedShareDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  if (!self->_didSelectAcceptedSharedTabGroup)
  {
    objc_initWeak(&location, self);
    tabGroupManager = self->_tabGroupManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__TabController_didFetchRecentlyAcceptedSharedTabGroupWithUUID_acceptedShareDate___block_invoke;
    v9[3] = &unk_2781D4F30;
    objc_copyWeak(&v11, &location);
    v10 = dCopy;
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

- (void)tabGroupConfirmationAlertDidBeginDismissal:(id)dismissal
{
  if ([dismissal role] == 1)
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

- (BOOL)canCloseTabWithUUID:(id)d
{
  v4 = [(TabController *)self tabWithUUID:d];
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
      unpinnedTabs = [(TabController *)self unpinnedTabs];
      v6 = [unpinnedTabs count] > 1;

      goto LABEL_3;
    }

    goto LABEL_10;
  }

  v6 = 0;
LABEL_3:

  return v6;
}

- (void)insertTabWithUUIDForNavigation:(id)navigation
{
  v4 = [(TabController *)self tabWithUUID:navigation];
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

- (void)bacgkroundTaskWillExpireWithTotalBackgroundTime:(double)time
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXOther();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    timeCopy = time;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Background tasks are about to expire. Total background time: %.2fs", &v5, 0xCu);
  }
}

- (void)saveStateInBackground:(BOOL)background needsValidate:(BOOL)validate
{
  backgroundCopy = background;
  if ([(WBUFeatureManager *)FeatureManager accessLevel:background]== 2)
  {
    [(TabController *)self updateEducationTabsLastSyncDate];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isShowingReader])
  {
    activeTabDocument = [(TabController *)self activeTabDocument];
    [WeakRetained verticalScrollOffsetForReaderViewInTabDocument:activeTabDocument];
    v8 = v7;
    activeTabDocument2 = [(TabController *)self activeTabDocument];
    [activeTabDocument2 setReaderViewTopScrollOffset:v8];
  }

  tabGroupManager = [WeakRetained tabGroupManager];
  windowState = [WeakRetained windowState];
  [tabGroupManager saveWindowState:windowState completionHandler:0];

  [(TabController *)self persistAllCurrentTabsInBackground:backgroundCopy];
}

- (void)persistAllCurrentTabsInBackground:(BOOL)background
{
  backgroundCopy = background;
  activeTabGroup = [(TabController *)self activeTabGroup];
  if ([activeTabGroup usesGlobalPinnedTabs])
  {
    [(TabController *)self unpinnedTabs];
  }

  else
  {
    [(TabController *)self currentTabs];
  }
  v6 = ;

  [(TabController *)self persistTabs:v6 inTabGroupWithUUID:self->_activeTabGroupUUID inBackground:backgroundCopy];
}

- (void)persistTab:(id)tab notify:(BOOL)notify
{
  notifyCopy = notify;
  tabCopy = tab;
  tabGroupManager = self->_tabGroupManager;
  v11 = tabCopy;
  uuid = [tabCopy uuid];
  uUIDString = [uuid UUIDString];
  tabUpdateBlock = [v11 tabUpdateBlock];
  [(WBTabGroupManager *)tabGroupManager updateTabWithUUID:uUIDString persist:1 notify:notifyCopy usingBlock:tabUpdateBlock];
}

- (void)persistTabs:(id)tabs inTabGroupWithUUID:(id)d inBackground:(BOOL)background
{
  tabsCopy = tabs;
  dCopy = d;
  if (dCopy)
  {
    tabGroupManager = self->_tabGroupManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__TabController_Persistence__persistTabs_inTabGroupWithUUID_inBackground___block_invoke;
    v11[3] = &unk_2781D7038;
    v12 = tabsCopy;
    [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:dCopy persist:1 usingBlock:v11];
    if (!background)
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
    tabCollectionViewManager = [(TabController *)result tabCollectionViewManager];
    activeTabDocument = [v1 activeTabDocument];
    [tabCollectionViewManager updateTabBarAnimated:0 keepingTabVisible:activeTabDocument];

    tabCollectionViewManager2 = [(TabController *)v1 tabCollectionViewManager];
    [tabCollectionViewManager2 updateTabOverviewItems];

    return [v1 updateHibernatedTabDocumentsSavingState];
  }

  return result;
}

- (TabDocument)_activeTabDocumentForTabGroup:(TabDocument *)group
{
  v3 = a2;
  if (group)
  {
    windowState = [(TabDocument *)group windowState];
    tabGroupsToActiveTabs = [windowState tabGroupsToActiveTabs];
    uuid = [v3 uuid];
    v7 = [tabGroupsToActiveTabs objectForKeyedSubscript:uuid];

    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
    v9 = [(TabDocument *)group tabWithUUID:v8];
    if (v9)
    {
LABEL_11:
      group = [(TabController *)group _unhibernateTabIfNeeded:v9];

      goto LABEL_12;
    }

    if ([v3 isPrivateBrowsing])
    {
      privateUnpinnedTabs = [(TabDocument *)group privateUnpinnedTabs];
      firstObject = [privateUnpinnedTabs firstObject];
      if (!firstObject)
      {
        privateTabs = [(TabDocument *)group privateTabs];
        firstObject2 = [privateTabs firstObject];
LABEL_9:
        v9 = firstObject2;

        goto LABEL_10;
      }
    }

    else
    {
      privateUnpinnedTabs = [(TabDocument *)group normalUnpinnedTabs];
      firstObject = [privateUnpinnedTabs firstObject];
      if (!firstObject)
      {
        privateTabs = [(TabDocument *)group normalTabs];
        firstObject2 = [privateTabs firstObject];
        goto LABEL_9;
      }
    }

    firstObject = firstObject;
    v9 = firstObject;
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:

  return group;
}

- (id)_mutableTabsForTabGroup:(uint64_t)group
{
  v3 = a2;
  v4 = v3;
  if (group)
  {
    isPrivateBrowsing = [v3 isPrivateBrowsing];
    WeakRetained = objc_loadWeakRetained((group + 8));
    tabs = [v4 tabs];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__TabController_Persistence___mutableTabsForTabGroup___block_invoke;
    v12[3] = &unk_2781DA640;
    v12[4] = group;
    v8 = WeakRetained;
    v13 = v8;
    v14 = isPrivateBrowsing;
    v9 = [tabs safari_mapObjectsUsingBlock:v12];
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

- (id)_focusedTabGroupForWindowState:(_BYTE *)state
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!state || ([state isPrivateBrowsingEnabled] & 1) != 0)
  {
    focusedTabGroup = 0;
    goto LABEL_18;
  }

  v5 = +[Application sharedApplication];
  if (([v5 needsFocusedTabGroupUpdate] & 1) == 0)
  {
    focusedTabGroup = 0;
    goto LABEL_17;
  }

  focusedTabGroup = [state focusedTabGroup];
  if (focusedTabGroup)
  {
    if (state[64] == 1)
    {
      [v5 setNeedsFocusedTabGroupUpdate:0];
    }

    if (([v3 newlyCreated] & 1) == 0 && (objc_msgSend(state, "isTabGroupActive:", focusedTabGroup) & 1) == 0 && !objc_msgSend(v5, "prefersSingleWindow"))
    {
      v9 = focusedTabGroup;
      focusedTabGroup = 0;
      goto LABEL_15;
    }

    v6 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [v3 uuid];
      uuid2 = [focusedTabGroup uuid];
      [(TabController *)uuid _focusedTabGroupForWindowState:uuid2, v11, v6];
    }
  }

  v9 = 0;
LABEL_15:

LABEL_17:
LABEL_18:

  return focusedTabGroup;
}

- (id)_activeTabGroupForWindowState:(void *)state
{
  v3 = a2;
  if (state)
  {
    if ([state isPrivateBrowsingEnabled])
    {
      state = [v3 privateTabGroup];
      if (state)
      {
        goto LABEL_7;
      }
    }

    else
    {
      activeTabGroupUUID = [v3 activeTabGroupUUID];
      state = [state tabGroupWithUUID:activeTabGroupUUID];

      if (state)
      {
        goto LABEL_7;
      }
    }

    state = [v3 localTabGroup];
  }

LABEL_7:

  return state;
}

- (BOOL)readState
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  windowState = [(TabController *)self windowState];
  v5 = [(TabController *)self _activeTabGroupForWindowState:windowState];
  v6 = [(TabController *)self _focusedTabGroupForWindowState:windowState];
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
      tabGroupManager = [(TabController *)self tabGroupManager];
      [tabGroupManager endParticipantPresenceReportingForTabGroupWithUUID:self->_activeTabGroupUUID];
    }

    v11 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      privacyPreservingDescription = [v9 privacyPreservingDescription];
      *buf = 138543362;
      v36 = privacyPreservingDescription;
      _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_DEFAULT, "Read active tab group from saved state: %{public}@", buf, 0xCu);
    }

    uuid = [v9 uuid];
    v14 = [uuid copy];
    activeTabGroupUUID = self->_activeTabGroupUUID;
    self->_activeTabGroupUUID = v14;

    isPrivateBrowsing = [v9 isPrivateBrowsing];
    [WeakRetained setPrivateBrowsingEnabled:isPrivateBrowsing];
    if (isPrivateBrowsing)
    {
      localTabGroup = [windowState localTabGroup];
    }

    else
    {
      localTabGroup = v9;
    }

    v18 = localTabGroup;
    v19 = [(TabController *)self _mutableTabsForTabGroup:localTabGroup];
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
      privateTabGroup = [windowState privateTabGroup];
      v24 = [(TabController *)self _mutableTabsForTabGroup:privateTabGroup];
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
      privateTabGroup2 = [windowState privateTabGroup];
      v30 = [(TabController *)self _activeTabDocumentForTabGroup:privateTabGroup2];
      [(TabController *)self setPrivateActiveTabDocument:v30];
    }

    [(TabController *)self openInitialBlankTabDocumentIfNeeded];
    tabCollectionViewManager = [(TabController *)self tabCollectionViewManager];
    [tabCollectionViewManager updateSnapshotIdentifiers];

    [(TabController *)self _didCompleteStateRestoration];
    self->_didReadWindowState = 1;
    if (self->_activeTabGroupUUID)
    {
      tabGroupManager2 = [(TabController *)self tabGroupManager];
      [tabGroupManager2 beginParticipantPresenceReportingForTabGroupWithUUID:self->_activeTabGroupUUID];
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
  activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)self activeTabGroupOrTabGroupVisibleInSwitcher];
  windowState = [(TabController *)self windowState];
  uuid = [activeTabGroupOrTabGroupVisibleInSwitcher uuid];
  [windowState setActiveTabGroupUUID:uuid];

  [(WBTabGroupManager *)self->_tabGroupManager saveWindowState:windowState completionHandler:0];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained writePrivateBrowsingEnabled:{objc_msgSend(activeTabGroupOrTabGroupVisibleInSwitcher, "isPrivateBrowsing")}];
}

- (void)_closeTabs:(unsigned int)tabs animated:(int)animated allowAddingToRecentlyClosedTabs:(char)closedTabs keepWebViewAlive:(char)alive showAutoCloseTabsAlert:
{
  v124 = *MEMORY[0x277D85DE8];
  v10 = a2;
  if (!self)
  {
    goto LABEL_68;
  }

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:3];

  [(TabController *)self _sendEventsForAutoFillTelemetryForClosingTabs:v10];
  *(self + 112) = 1;
  [*(self + 272) willBeginUpdates];
  WeakRetained = objc_loadWeakRetained((self + 8));
  firstObject = [v10 firstObject];
  isPrivateBrowsingEnabled = [firstObject isPrivateBrowsingEnabled];
  array = [MEMORY[0x277CBEB18] array];
  HIDWORD(v105) = isPrivateBrowsingEnabled;
  v110 = [(TabController *)self _mutableTabsForPrivateBrowsing:isPrivateBrowsingEnabled];
  wbTab = [firstObject wbTab];
  tabGroupUUID = [wbTab tabGroupUUID];

  selfCopy = self;
  v107 = firstObject;
  aBlock = alive;
  if (tabGroupUUID || ![firstObject isPrivateBrowsingEnabled])
  {
    if (!*(self + 56) || ([self currentTabs], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", firstObject), v18, !v19))
    {
      v103 = tabGroupUUID;
      goto LABEL_10;
    }

    uuid = *(self + 56);
  }

  else
  {
    tabGroupUUID = [*(self + 256) privateTabGroup];
    uuid = [tabGroupUUID uuid];
  }

  v20 = uuid;

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
        if (animated)
        {
          if (([*(*(&v118 + 1) + 8 * v26) isBlank] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v27 hibernate];
            }
          }

          configuration = [WeakRetained configuration];
          allowsReopeningClosedTabs = [configuration allowsReopeningClosedTabs];

          if (allowsReopeningClosedTabs)
          {
            v22 = [array addObject:v27];
          }
        }

        if ((closedTabs & 1) == 0)
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

  if ([array count])
  {
    [(TabController *)selfCopy _addTabsToRecentlyClosed:array includeUndo:1];
  }

  activeTabDocument = [selfCopy activeTabDocument];
  if (activeTabDocument && ((v31 = [v21 containsObject:activeTabDocument], !*(selfCopy + 56)) ? (v32 = v31) : (v32 = 0), v31))
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
    [selfCopy privateUnpinnedTabs];
  }

  else
  {
    [selfCopy normalUnpinnedTabs];
  }
  v35 = ;
  v36 = [v35 count];

  v100 = v34;
  v37 = [v34 count];
  v38 = [(TabController *)selfCopy _hasPinnedStartPageExcludingTabs:v21];
  if (v37 < v36)
  {
    v39 = 1;
  }

  else
  {
    v39 = v32;
  }

  [*(selfCopy + 72) beginFixingTabBarItems];
  [*(selfCopy + 72) beginFixingTabOverviewItems];
  if ((v39 & 1) == 0 && (v38 & 1) == 0)
  {
    currentTabs = [selfCopy currentTabs];
    v41 = [currentTabs containsObject:v107];

    if (v41)
    {
      if ([selfCopy isPrivateBrowsingEnabled] && (-[TabController tabThumbnailCollectionView](selfCopy), v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "presentationState"), v63, v64))
      {
        v65 = [[TabDocument alloc] initWithBrowserController:WeakRetained];
        v66 = *(selfCopy + 32);
        *(selfCopy + 32) = v65;

        [*(selfCopy + 32) setIsBlank:1];
        [*(selfCopy + 32) setScrollPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
        [selfCopy insertTab:*(selfCopy + 32) afterTab:0 inBackground:1 animated:0];
        [*(selfCopy + 32) displayNewTabOverridePageIfNecessary];
      }

      else if (HIDWORD(v105) == [selfCopy isPrivateBrowsingEnabled])
      {
        _openBlankTabDocument = [(TabController *)selfCopy _openBlankTabDocument];
      }
    }

    else
    {
      alternateTabs = [selfCopy alternateTabs];
      v44 = [alternateTabs containsObject:v107];

      if (v44)
      {
        OUTLINED_FUNCTION_49();
        v70 = [TabController _insertNewBlankTabDocumentWithPrivateBrowsing:v67 inBackground:v68 animated:v69];
        if (HIDWORD(v105))
        {
          objc_storeStrong((selfCopy + 280), v70);
          v71 = 32;
        }

        else
        {
          v71 = 288;
        }

        v83 = *(selfCopy + v71);
        *(selfCopy + v71) = v70;
      }
    }
  }

  v45 = activeTabDocument;
  tabThumbnailCollectionView = [*(selfCopy + 72) tabThumbnailCollectionView];
  v47 = v45;
  if (((v32 | HIDWORD(v108) ^ 1) & 1) == 0)
  {
    v47 = [*(selfCopy + 304) tabToSelectBeforeClosingTabs:v21];

    if ([tabThumbnailCollectionView presentationState])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        webView = [v47 webView];
        [webView _hideContentUntilNextUpdate];
      }
    }

    [*(selfCopy + 72) setSuppressTabBarAnimation:tabs ^ 1];
    [selfCopy setActiveTab:v47];
    [*(selfCopy + 72) setSuppressTabBarAnimation:0];
  }

  v104 = tabThumbnailCollectionView;
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
        if ((closedTabs & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v54 willClose];
          }
        }

        v55 = [v110 removeObject:v54];
        v57 = *(selfCopy + 32);
        if (v54 == v57)
        {
          *(selfCopy + 32) = 0;
        }
      }

      v51 = OUTLINED_FUNCTION_93(v55, v56, v114, v122);
    }

    while (v51);
  }

  v58 = HIDWORD(v108);
  [*(selfCopy + 272) didCloseTabDocuments:v49 includingActiveTab:HIDWORD(v108)];
  v10 = v101;
  if ((v32 & 1) == 0)
  {
    [*(selfCopy + 72) setSuppressTabBarAnimation:tabs ^ 1];
    _application = [(TabController *)selfCopy _application];
    [_application updateTabCount];

    [*(selfCopy + 72) setSuppressTabBarAnimation:0];
    itemToActivate = [v104 itemToActivate];
    if (itemToActivate)
    {
      v61 = [v49 valueForKey:@"uuid"];
      [itemToActivate UUID];
      objc_claimAutoreleasedReturnValue();
      v62 = [OUTLINED_FUNCTION_37() containsObject:HIDWORD(v108)];

      v58 = HIDWORD(v108);
      if (v62)
      {
        if (*(selfCopy + 32) == v47)
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

    v73 = selfCopy;
    if ((closedTabs & 1) == 0)
    {
      [*(selfCopy + 72) updateTabOverviewItems];
    }

    [WeakRetained clearCachedTabCompletionData];
    [*(selfCopy + 72) endFixingTabBarItems];
    [*(selfCopy + 72) endFixingTabOverviewItems];
    if (v58)
    {
      v74 = v47;
    }

    else
    {
      v74 = 0;
    }

    [*(selfCopy + 72) updateTabBarAnimated:tabs keepingTabVisible:v74];
    _application2 = [(TabController *)selfCopy _application];
    v76 = *MEMORY[0x277D76628];
    [MEMORY[0x277D759A0] mainScreen];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_37() removeDefaultImage:v76 forScreen:v58];

    *(selfCopy + 112) = 0;
    [(TabController *)selfCopy _sendDidEndDocumentUpdates];
    [(TabController *)selfCopy didUpdateTabDocumentsInTabGroupWithUUID:v103, v77, v78, v79, v80, v81, v82, v94, aBlock, v100, v101, v103, v104, v105, v107, v108, v110, selfCopy, array, v114[0], v114[1]];
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
      [(TabController *)v84 _presentAutomaticTabClosingPromptIfNeededForClosedTabCount:v85, v86, v87, v88, v89, v90, v91, v95, aBlocka[0], v100, v102, v103, v104, v106, v107, v109, v110, v112, array, v114[0], v114[1]];
    }
  }

LABEL_68:
}

- (void)_createVeryRecentlyClosedTabCountInvalidationTimer
{
  if (self && !*(self + 144))
  {
    v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__cancelVeryRecentlyClosedTabCountInvalidationTimer selector:0 userInfo:0 repeats:4.0];
    v3 = *(self + 144);
    *(self + 144) = v2;
  }
}

- (char)_tabsForPrivateBrowsing:(char *)browsing
{
  if (browsing)
  {
    v3 = 16;
    if (a2)
    {
      v3 = 24;
    }

    browsing = [*&browsing[v3] copy];
    v2 = vars8;
  }

  return browsing;
}

- (NSArray)alternateTabs
{
  v3 = ![(TabController *)self isPrivateBrowsingEnabled];

  return [(TabController *)self _tabsForPrivateBrowsing:v3];
}

- (char)_mutableTabsForPrivateBrowsing:(char *)browsing
{
  if (browsing)
  {
    v3 = 16;
    if (a2)
    {
      v3 = 24;
    }

    browsing = *&browsing[v3];
    v2 = vars8;
  }

  return browsing;
}

- (char)mutableAlternateTabs
{
  if (self)
  {
    selfCopy = self;
    isPrivateBrowsingEnabled = [self isPrivateBrowsingEnabled];
    v4 = 24;
    if (isPrivateBrowsingEnabled)
    {
      v4 = 16;
    }

    self = *&selfCopy[v4];
    v1 = vars8;
  }

  return self;
}

- (id)oldestTabsWithLimit:(unint64_t)limit inPrivateBrowsing:(BOOL)browsing
{
  v5 = [(TabController *)self _tabsForPrivateBrowsing:browsing];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_63];

  v7 = [v6 safari_prefixWithMaxLength:limit];

  return v7;
}

- (void)didUpdateTabDocumentsInTabGroupWithUUID:(int)d
{
  OUTLINED_FUNCTION_95();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  if (v25 && !*(v25 + 152))
  {
    activeTabGroup = [v25 activeTabGroup];
    if (activeTabGroup)
    {
      activeTabGroup2 = [v25 activeTabGroup];
      usesGlobalPinnedTabs = [activeTabGroup2 usesGlobalPinnedTabs];

      if (usesGlobalPinnedTabs)
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
        privateTabGroup = [*(v25 + 256) privateTabGroup];
        uuid = [privateTabGroup uuid];
        v34 = [v27 safari_isCaseInsensitiveEqualToString:uuid];

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

- (void)_forceUpdateTabGroupTitleIfNeeded:(id *)needed
{
  v4 = a2;
  v5 = v4;
  if (needed)
  {
    v10 = v4;
    hasDynamicTitle = [v4 hasDynamicTitle];
    v5 = v10;
    if (hasDynamicTitle)
    {
      [v10 uuid];
      objc_claimAutoreleasedReturnValue();
      v7 = OUTLINED_FUNCTION_12();
      [(TabController *)v7 _reconfigureLibraryItemViewForTabGroupWithUUID:v8];

      WeakRetained = objc_loadWeakRetained(needed + 1);
      [WeakRetained reloadSidebarAnimated:0];

      [needed updateSelectedTabGroupName];
      v5 = v10;
    }
  }
}

- (void)_reconfigureLibraryItemViewForTabGroupWithUUID:(uint64_t)d
{
  v5 = a2;
  if (d)
  {
    WeakRetained = objc_loadWeakRetained((d + 8));
    libraryController = [WeakRetained libraryController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [libraryController reconfigureTabGroupCellWithUUIDString:v5];
    }
  }
}

- (char)_activeTabDocumentForPrivateBrowsing:(char *)browsing
{
  if (browsing)
  {
    v3 = 288;
    if (a2)
    {
      v3 = 280;
    }

    browsing = *&browsing[v3];
    v2 = vars8;
  }

  return browsing;
}

- (id)tabThumbnailCollectionView
{
  if (self)
  {
    self = [self[9] tabThumbnailCollectionView];
    v1 = vars8;
  }

  return self;
}

- (TabDocument)_unhibernateTabIfNeeded:(TabDocument *)needed
{
  v4 = a2;
  v5 = v4;
  if (needed)
  {
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [v5 isPrivateBrowsingEnabled];
      OUTLINED_FUNCTION_54();
      if (!v7)
      {
        v6 = 24;
      }

      v8 = *(&needed->super.isa + v6);
      [v8 indexOfObject:v5];
      [OUTLINED_FUNCTION_29() willLoseOwnershipOfTab:v5];
      needed = [[TabDocument alloc] initWithHibernatedTab:v5];
      if (v2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [OUTLINED_FUNCTION_39() replaceObjectAtIndex:? withObject:?];
      }

      webExtensionsController = [v5 webExtensionsController];
      [webExtensionsController didReplaceTab:v5 newTab:needed];
    }

    else
    {
      needed = v5;
    }
  }

  return needed;
}

- (void)setActiveTabDocument:(id)document animated:(BOOL)animated deferActivation:(BOOL)activation
{
  activationCopy = activation;
  animatedCopy = animated;
  documentCopy = document;
  OUTLINED_FUNCTION_24();
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabThumbnailCollectionView = [(TabController *)&self->super.isa tabThumbnailCollectionView];
  if (-[TabCollectionViewManager hasTabBar](self->_tabCollectionViewManager, "hasTabBar") || ([WeakRetained rootViewController], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "usingLoweredBar"), v11, !animatedCopy) || v12 || !tabThumbnailCollectionView)
  {
    [(TabCollectionViewManager *)self->_tabCollectionViewManager dismissTabHoverPreview];
    libraryType = [documentCopy libraryType];
    if (libraryType)
    {
    }

    else
    {
      activationCopy = [documentCopy isPrivateBrowsingEnabled];
      if (activationCopy != [(TabController *)self isPrivateBrowsingEnabled])
      {
        [(TabController *)self _setActiveTabDocument:documentCopy, v13, v14, v15, v16, v17, v18, v20, documentCopy, v22, v23, v24, v25, v26, v27, v28, v29];
        [WeakRetained setPrivateBrowsingEnabled:{objc_msgSend(documentCopy, "isPrivateBrowsingEnabled")}];
        goto LABEL_12;
      }
    }

    [(TabController *)self activeTabDocument];
    objc_claimAutoreleasedReturnValue();
    v19 = OUTLINED_FUNCTION_29();
    [(TabController *)v19 _switchActiveTabDocumentFromTabDocument:activationCopy toTabDocument:documentCopy];

    OUTLINED_FUNCTION_24();
    kdebug_trace();
    goto LABEL_12;
  }

  if (activationCopy)
  {
    [OUTLINED_FUNCTION_55() setDefersActivation:?];
  }

  [documentCopy itemForTabCollectionView:tabThumbnailCollectionView];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_6_1() setItemToActivate:?];

  [OUTLINED_FUNCTION_55() presentAnimated:?];
LABEL_12:
}

- (void)_prepareToMoveTabDocumentToWindow:(int)window createPlaceholderImage:
{
  v6 = a2;
  v7 = v6;
  if (self)
  {
    webView = [v6 webView];
    window = [webView window];

    if (!window && [webView hasBeenInWindow])
    {
      if (!window || ([v7 isHibernated] & 1) != 0 || (objc_msgSend(v7, "webView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isLoading"), v10, (v11 & 1) != 0) || (objc_msgSend(v7, "uuid"), objc_claimAutoreleasedReturnValue(), objc_msgSend(OUTLINED_FUNCTION_14(), "cachedContentImageForTabWithUUID:allowScaledImage:"), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
      {
        tabThumbnailCollectionView = [*(self + 72) tabThumbnailCollectionView];
        presentationState = [tabThumbnailCollectionView presentationState];

        if (presentationState == 2)
        {
          webView2 = [v7 webView];
          [webView2 _doAfterNextPresentationUpdateWithoutWaitingForPainting:&__block_literal_global_173_0];
        }
      }

      else
      {
        [v7 uuid];
        objc_claimAutoreleasedReturnValue();
        v13 = [OUTLINED_FUNCTION_13() cachedSnapshotMetadataForTabWithUUID:?];

        scrollView = [webView scrollView];
        [scrollView adjustedContentInset];
        [scrollView contentOffset];
        appBanner = [v7 appBanner];
        [appBanner frame];
        CGRectGetHeight(v23);

        [OUTLINED_FUNCTION_39() setPlaceholderImage:? verticalOffset:? metadata:?];
        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_16();
        v16 = webView;
        OUTLINED_FUNCTION_43();
        [v17 _doAfterNextPresentationUpdateWithoutWaitingForPainting:?];
        v18 = *(self + 72);
        [v12 size];
        [v18 updateStartPageSnapshotIfNeededForTabDocument:v7 currentSnapshotSize:?];
      }
    }
  }
}

- (BOOL)canAddNewTabForPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  activeTabGroup = [(TabController *)self activeTabGroup];
  if ([activeTabGroup isPrivateBrowsing] != browsingCopy)
  {
    if (browsingCopy)
    {
      [(WBWindowState *)self->_windowState privateTabGroup];
    }

    else
    {
      [(TabController *)self unnamedTabGroup];
    }
    v6 = ;

    activeTabGroup = v6;
  }

  v7 = [(TabController *)self _tabsForPrivateBrowsing:browsingCopy];
  v8 = [v7 count];

  v9 = [(TabController *)self canAddNewTabInTabGroup:activeTabGroup withTabCount:v8];
  return v9;
}

- (id)_oldestInactiveTabDocumentForPrivateBrowsing:(uint64_t)browsing
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
          activeTabDocument = [v13 activeTabDocument];

          if (activeTabDocument != v23)
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

- (BOOL)_makeRoomForNewTab:(_BYTE *)tab
{
  if (!tab)
  {
    return 0;
  }

  v4 = *a2;
  if ([tab canAddNewTabForPrivateBrowsing:{objc_msgSend(v4, "isPrivateBrowsingEnabled")}] & 1) != 0 || (tab[112])
  {
    v5 = 1;
  }

  else
  {
    isPrivateBrowsingEnabled = [v4 isPrivateBrowsingEnabled];
    v14 = [(TabController *)tab _oldestInactiveTabDocumentForPrivateBrowsing:isPrivateBrowsingEnabled, v8, v9, v10, v11, v12, v13, v21, v22, v23];
    v15 = v14;
    v5 = v14 != 0;
    if (v14)
    {
      sessionState = [v14 sessionState];
      if (sessionState)
      {
        v17 = OUTLINED_FUNCTION_34();
        v19 = [(TabController *)v17 _unhibernateTabIfNeeded:v18];
        [v19 restoreSessionState:sessionState andNavigate:0];
        v20 = v19;
        *a2 = v19;
      }

      OUTLINED_FUNCTION_45(tab, v15);
    }
  }

  return v5;
}

- (void)performBatchUpdatesWithBlock:(id)block
{
  blockCopy = block;
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

- (void)_reuseTabAfterInsertion:(id *)insertion
{
  v3 = a2;
  v4 = v3;
  if (insertion)
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
        WeakRetained = objc_loadWeakRetained(insertion + 1);
        +[(WBReusableTabManager *)ReusableTabManager];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_26() uuid];
        objc_claimAutoreleasedReturnValue();
        v9 = [OUTLINED_FUNCTION_13() reuseTabForUUID:?];

        [OUTLINED_FUNCTION_39() setBrowserController:? afterTabGroupReuse:?];
        allTabGroups = [insertion allTabGroups];
        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_16();
        v11 = v5;
        OUTLINED_FUNCTION_43();
        v12 = [allTabGroups safari_firstObjectPassingTest:?];

        if (([OUTLINED_FUNCTION_44() isTabGroupActive:?] & 1) == 0)
        {
          tabGroupTab = [v11 tabGroupTab];
          [(TabController *)insertion _removeTab:tabGroupTab fromTabGroup:v12, v14, v15, v16, v17, v18, v19, v20, v21, __41__TabController__reuseTabAfterInsertion___block_invoke, &unk_2781D9900, v22];
        }

        [(TabController *)insertion _forceUpdateTabGroupTitleIfNeeded:v12];
      }
    }
  }
}

- (void)_removeTab:(uint64_t)tab fromTabGroup:(uint64_t)group
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
    uuid = [v20 uuid];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v19;
    OUTLINED_FUNCTION_79();
    [v22 updateTabsInTabGroupWithUUID:uuid persist:1 usingBlock:?];

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

- (void)_insertTab:(unint64_t)tab atIndex:(uint64_t)index inBackground:(unsigned int)background animated:(char)animated updateUI:
{
  v49 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = v11;
  if (self)
  {
    isPrivateBrowsingEnabled = [v11 isPrivateBrowsingEnabled];
    OUTLINED_FUNCTION_54();
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 24;
    }

    v17 = *(self + v16);
    if ([v17 containsObject:v12])
    {
      [v17 removeObject:v12];
      if ([v17 count] < tab)
      {
        tab = [v17 count];
      }

      [v17 insertObject:v12 atIndex:tab];
      v18 = v12;
    }

    else
    {
      backgroundCopy = background;
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:4];

      [*(self + 272) willBeginUpdates];
      v46 = v12;
      v20 = [(TabController *)self _makeRoomForNewTab:?];
      v18 = v46;

      if (v20)
      {
        if ([v17 count] <= tab)
        {
          [OUTLINED_FUNCTION_23() addObject:?];
        }

        else
        {
          [OUTLINED_FUNCTION_23() insertObject:? atIndex:?];
        }

        v24 = backgroundCopy;
        [(TabController *)self _reuseTabAfterInsertion:v18];
      }

      else
      {
        v21 = 288;
        if (isPrivateBrowsingEnabled)
        {
          v21 = 280;
        }

        v22 = *(self + v21);
        v23 = [*(self + v16) copy];
        if ([v23 containsObject:v22])
        {
          [self replaceTabDocument:v22 withTabDocument:v18];
          v24 = backgroundCopy;
        }

        else
        {
          v25 = WBS_LOG_CHANNEL_PREFIXTabs();
          v24 = backgroundCopy;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            v26 = @"NO";
            if (isPrivateBrowsingEnabled)
            {
              v26 = @"YES";
            }

            v27 = v26;
            *buf = 138543362;
            v48 = v27;
            _os_log_fault_impl(&dword_215819000, v25, OS_LOG_TYPE_FAULT, "Active tab document is not present in the list of tab documents; private browsing enabled: %{public}@", buf, 0xCu);
          }

          [OUTLINED_FUNCTION_23() addObject:?];
          index = 0;
        }
      }

      [v18 setHasBeenInserted:1];
      [*(self + 272) didInsertTabDocument:v18 inBackground:index];
      if (([*(self + 184) containsObject:v18] & 1) == 0)
      {
        OUTLINED_FUNCTION_1_6();
        v42 = 3221225472;
        v43 = __67__TabController__insertTab_atIndex_inBackground_animated_updateUI___block_invoke;
        v44 = &unk_2781D4D40;
        v45 = v18;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      [self didUpdateTabDocuments];
      if (animated)
      {
        [v18 setNeedsNewTabSnapshot];
        v28 = +[Application sharedApplication];
        [v28 updateTabCount];

        [*(self + 72) updateTabOverviewItems];
        WeakRetained = objc_loadWeakRetained((self + 8));
        [WeakRetained clearCachedTabCompletionData];
        if (!v24 || ([*(self + 72) hasTabBar] & 1) != 0 || (objc_msgSend(self, "activeTabDocument"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isShowingFindOnPage"), v30, (v31 & 1) == 0))
        {
          if (index)
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

          [*(self + 72) updateTabBarAnimated:v24 keepingTabVisible:v18];
          configuration = [WeakRetained configuration];
          allowsSearchFeedback = [configuration allowsSearchFeedback];

          if (allowsSearchFeedback)
          {
            rootViewController = [WeakRetained rootViewController];
            capsuleCollectionViewLayout = [rootViewController capsuleCollectionViewLayout];
            v37 = [capsuleCollectionViewLayout integerValue] != 2;

            v38 = +[UniversalSearchSession sharedSession];
            feedbackDispatcher = [v38 feedbackDispatcher];
            [feedbackDispatcher sendNewTabFeedback:v37];
          }
        }

        [(TabController *)self _sendDidEndDocumentUpdates];
      }

      else
      {
        [(TabController *)self _sendDidEndDocumentUpdates];
      }
    }

    v12 = v18;
  }
}

- (void)insertTab:(id)tab afterTab:(id)afterTab inBackground:(BOOL)background animated:(BOOL)animated
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

- (uint64_t)_indexForInsertionAfterTab:(int)tab withPrivateBrowsingEnabled:
{
  v5 = a2;
  if (self)
  {
    v6 = 16;
    if (tab)
    {
      v6 = 24;
    }

    v7 = [*(self + v6) copy];
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

- (id)_insertNewBlankTabDocumentWithPrivateBrowsing:(void *)browsing inBackground:(int)background animated:(char)animated
{
  if (browsing)
  {
    if (background)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    browsing = [TabController _insertNewBlankTabDocumentWithOptions:browsing inBackground:v4 animated:animated];
    v3 = vars8;
  }

  return browsing;
}

- (id)_insertNewBlankTabDocumentWithOptions:(uint64_t)options inBackground:(char)background animated:(char)animated
{
  if (!options)
  {
    v8 = 0;
    goto LABEL_30;
  }

  if ((background & 3) == 2)
  {
    isPrivateBrowsingEnabled = 1;
  }

  else if ((background & 3) == 1)
  {
    isPrivateBrowsingEnabled = 0;
  }

  else
  {
    isPrivateBrowsingEnabled = [options isPrivateBrowsingEnabled];
  }

  v7 = *(options + 32);
  if (!v7 || isPrivateBrowsingEnabled != [v7 isPrivateBrowsingEnabled])
  {
    v10 = [TabDocument alloc];
    v11 = OUTLINED_FUNCTION_29();
    [(TabController *)v11 _controlledByAutomation];
    WeakRetained = objc_loadWeakRetained((options + 8));
    OUTLINED_FUNCTION_24();
    v8 = [v13 initWithTitle:0 URL:WeakRetained UUID:0 privateBrowsingEnabled:? controlledByAutomation:? hibernated:? bookmark:? browserController:? relatedWebView:?];

    activeTabDocument = [options activeTabDocument];
    [v8 setNextLoadComesFromSearchPage:{objc_msgSend(activeTabDocument, "isSearchPage")}];

    [v8 setIsBlank:1];
    [v8 setScrollPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    tabThumbnailCollectionView = [*(options + 72) tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState])
    {
      currentTabs = [options currentTabs];
      v17 = [currentTabs count];

      if (v17 == 1)
      {
        [*(options + 72) setShouldDeferSnapshotRequest:1];
      }
    }

    else
    {
    }

    if (isPrivateBrowsingEnabled != [options isPrivateBrowsingEnabled])
    {
      tabToInsertAfter = 0;
LABEL_29:
      [v8 displayNewTabOverridePageIfNecessary];
      [OUTLINED_FUNCTION_25() insertTab:? afterTab:? inBackground:? animated:?];

      goto LABEL_30;
    }

    v19 = *(options + 304);
    if ((background & 0xC) == 8)
    {
      v20 = [v19 tabInsertionHintForPosition:0];
    }

    else
    {
      if ((background & 0xC) == 4)
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
    tabToInsertAfter = [v20 tabToInsertAfter];
    relationType = [v21 relationType];
    if (relationType == 2)
    {
      [options activeTabDocument];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_57() updateAncestryToChildOfTopLevelAncestorRelatedTab:tabThumbnailCollectionView];
    }

    else
    {
      if (relationType != 1)
      {
LABEL_28:

        goto LABEL_29;
      }

      [options activeTabDocument];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_57() updateAncestryWithParentTab:tabThumbnailCollectionView];
    }

    goto LABEL_28;
  }

  v8 = *(options + 32);
  v9 = *(options + 32);
  *(options + 32) = 0;

  if ((animated & 1) == 0)
  {
    [OUTLINED_FUNCTION_25() setActiveTabDocument:? animated:?];
  }

LABEL_30:

  return v8;
}

- (uint64_t)_controlledByAutomation
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 8));
  if ([WeakRetained isControlledByAutomation])
  {
    v2 = +[Application sharedApplication];
    automationController = [v2 automationController];
    canCreateNewAutomationTabs = [automationController canCreateNewAutomationTabs];
  }

  else
  {
    canCreateNewAutomationTabs = 0;
  }

  return canCreateNewAutomationTabs;
}

- (id)_openBlankTabDocument
{
  if (self)
  {
    [self isPrivateBrowsingEnabled];
    OUTLINED_FUNCTION_49();
    self = [TabController _insertNewBlankTabDocumentWithPrivateBrowsing:v2 inBackground:v3 animated:v4];
    v1 = vars8;
  }

  return self;
}

- (void)_addNewActiveTabOverviewTab
{
  if (!self)
  {
    return;
  }

  [OUTLINED_FUNCTION_68(self) setShouldDeferSnapshotRequest:1];
  v2 = *(v1 + 32);
  if (!v2)
  {
    v5 = 0;
    goto LABEL_12;
  }

  isPrivateBrowsingEnabled = [v2 isPrivateBrowsingEnabled];
  isPrivateBrowsingEnabled2 = [v1 isPrivateBrowsingEnabled];
  v5 = *(v1 + 32);
  if (isPrivateBrowsingEnabled != isPrivateBrowsingEnabled2)
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
  tabThumbnailCollectionView = [*(v1 + 72) tabThumbnailCollectionView];
  if (objc_opt_respondsToSelector())
  {
    [tabThumbnailCollectionView dismissWithAddTabAnimation];
  }

  else
  {
    [tabThumbnailCollectionView dismissAnimated:1];
  }
}

- (void)_openBlankTabDocumentInTabBarWithOptions:(uint64_t)options
{
  if (options)
  {
    [OUTLINED_FUNCTION_68(options) beginFixingTabBarItems];
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
    activeTabDocument = [v1 activeTabDocument];
    libraryType = [activeTabDocument libraryType];
    if (WBSIsEqual())
    {
      activeTabDocument2 = [v1 activeTabDocument];
      cloudTabDeviceID = [activeTabDocument2 cloudTabDeviceID];
      v2 = WBSIsEqual();

      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    tabThumbnailCollectionView = [*(v1 + 72) tabThumbnailCollectionView];
    [tabThumbnailCollectionView dismissAnimated:0];

    if (!*(v1 + 168))
    {
      tabGroups = [v1 tabGroups];
      firstObject = [tabGroups firstObject];
      [firstObject uuid];
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

- (void)closeTab:(id)tab animated:(BOOL)animated
{
  if (self)
  {
    OUTLINED_FUNCTION_38(self, tab, animated, 1);
  }
}

- (void)closeTabWithURL:(id)l UUID:(id)d
{
  v43 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  v8 = [OUTLINED_FUNCTION_86() tabWithUUID:d];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 url];
    if ([v10 safari_isSameAsURLRemovingFragment:lCopy])
    {
      currentTabs = [(TabController *)self currentTabs];
      v12 = [currentTabs containsObject:v9];

      if (v12)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          uUIDString = [OUTLINED_FUNCTION_26() UUIDString];
          *buf = 138543362;
          v42 = uUIDString;
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

  activeTabGroup = [(TabController *)self activeTabGroup];
  isLocal = [activeTabGroup isLocal];

  if ((isLocal & 1) == 0)
  {
    windowState = [(TabController *)self windowState];
    localTabGroup = [windowState localTabGroup];

    tabs = [localTabGroup tabs];
    OUTLINED_FUNCTION_4_1();
    v36 = 3221225472;
    v37 = __38__TabController_closeTabWithURL_UUID___block_invoke;
    v38 = &unk_2781D99A0;
    dCopy2 = d;
    v40 = lCopy;
    v25 = [tabs safari_filterObjectsUsingBlock:v35];

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
      uuid = [localTabGroup uuid];
      OUTLINED_FUNCTION_0_5();
      v33 = v25;
      OUTLINED_FUNCTION_79();
      [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:uuid persist:1 usingBlock:?];
    }
  }

LABEL_15:
}

- (void)_detachTab:(unsigned int)tab animated:
{
  v8 = a2;
  if (self)
  {
    currentTabs = [self currentTabs];
    v6 = [currentTabs containsObject:v8];

    if (v6)
    {
      [(TabController *)self _closeTab:v8 animated:tab allowAddingToRecentlyClosedTabs:0 keepWebViewAlive:1 showAutoCloseTabsAlert:0];
      [v8 resetTabViewItems];
    }

    else
    {
      mutableAlternateTabs = [(TabController *)self mutableAlternateTabs];
      [mutableAlternateTabs removeObject:v8];
    }
  }
}

- (void)_detachTabs:(id *)tabs
{
  v6 = a2;
  if (tabs)
  {
    [tabs currentTabs];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_19() firstObject];
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_8_0() containsObject:?];

    if (v7)
    {
      mutableCurrentTabs = [(TabController *)tabs mutableCurrentTabs];
      [mutableCurrentTabs removeObjectsInArray:v6];

      activeTabDocument = [tabs activeTabDocument];
      if (activeTabDocument)
      {
        v10 = [OUTLINED_FUNCTION_23() containsObject:?];
      }

      else
      {
        v10 = 0;
      }

      [tabs[34] didCloseTabDocuments:v6 includingActiveTab:v10];
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

      tabThumbnailCollectionView = [tabs[9] tabThumbnailCollectionView];
      [tabThumbnailCollectionView setItemToActivate:0];

      [tabs[9] updateTabBarAnimated:0];
    }

    else
    {
      mutableAlternateTabs = [(TabController *)tabs mutableAlternateTabs];
      [mutableAlternateTabs removeObjectsInArray:v6];
    }
  }
}

- (void)_sendEventsForAutoFillTelemetryForClosingTabs:(uint64_t)tabs
{
  v3 = a2;
  if (tabs)
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

- (void)_addTabsToRecentlyClosed:(int)closed includeUndo:
{
  HIDWORD(v26) = closed;
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (self)
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
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
            tabStateData = [v12 tabStateData];
            [array addObject:tabStateData];
          }

          wbTab = [v12 wbTab];
          [array2 addObject:wbTab];
        }

        v9 = OUTLINED_FUNCTION_93(v15, v16, &v27, v31);
      }

      while (v9);
    }

    mEMORY[0x277D28F00] = [MEMORY[0x277D28F00] sharedBrowserSavedState];
    activeProfileIdentifier = [self activeProfileIdentifier];
    [mEMORY[0x277D28F00] addRecentlyClosedTabs:array inProfileIdentifier:activeProfileIdentifier];

    if (HIDWORD(v26))
    {
      [(TabController *)self _registerUndoActionsForClosedTabs:array2, v19, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43];
    }
  }
}

- (void)_hasPinnedStartPageExcludingTabs:(void *)tabs
{
  v3 = a2;
  if (tabs)
  {
    activeTabGroup = [tabs activeTabGroup];
    usesGlobalPinnedTabs = [activeTabGroup usesGlobalPinnedTabs];

    if (usesGlobalPinnedTabs)
    {
      tabs = 0;
    }

    else
    {
      currentTabs = [tabs currentTabs];
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_16();
      v7 = v3;
      OUTLINED_FUNCTION_43();
      tabs = [currentTabs safari_containsObjectPassingTest:?];
    }
  }

  return tabs;
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

- (void)_presentAutomaticTabClosingPromptIfNeededForClosedTabCount:(int)count
{
  if (self)
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
    tabThumbnailCollectionView = [*(v27 + 72) tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState] == 1)
    {
    }

    else
    {
      presentationState = [tabThumbnailCollectionView presentationState];

      if (presentationState != 2)
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

- (void)_registerUndoActionsForClosedTabs:(uint64_t)tabs
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

    type = [v55 type];
    if (type == 1)
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

    else if (!type)
    {
      goto LABEL_6;
    }
  }

LABEL_15:

  OUTLINED_FUNCTION_90();
}

- (id)_undoCloseAllTabsActionName
{
  if (self)
  {
    [self numberOfCurrentNonHiddenTabs];
    self = _WBSLocalizedString();
    v1 = vars8;
  }

  return self;
}

- (void)_tabGroupTabDidUpdatePinned:(void *)pinned inTabGroup:
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  pinnedCopy = pinned;
  v9 = pinnedCopy;
  if (self)
  {
    if ([pinnedCopy usesGlobalPinnedTabs])
    {
      if ([v7 isPinned])
      {
        if ([v7 isSyncable])
        {
          v23[0] = v7;
          [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_33() deleteTabs:v3];

          [*(self + 48) flushDeletedTabsInTabGroup:v9];
          v17 = objc_alloc(MEMORY[0x277D7B538]);
          [OUTLINED_FUNCTION_21() uuid];
          objc_claimAutoreleasedReturnValue();
          deviceIdentifier = [OUTLINED_FUNCTION_37() deviceIdentifier];
          v12 = [OUTLINED_FUNCTION_28() initWithUUID:? deviceIdentifier:?];

          [OUTLINED_FUNCTION_48() adoptAttributesFromTab:?];
        }

        else
        {
          [OUTLINED_FUNCTION_18() removeTab:?];
          v12 = v7;
        }

        v19 = *(self + 264);
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
        deviceIdentifier2 = [OUTLINED_FUNCTION_37() deviceIdentifier];
        v12 = [OUTLINED_FUNCTION_28() initWithUUID:? deviceIdentifier:?];

        [OUTLINED_FUNCTION_48() adoptAttributesFromTab:?];
        v13 = *(self + 264);
        uuid = [v7 uuid];
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

- (void)moveTab:(id)tab overTab:(id)overTab
{
  OUTLINED_FUNCTION_77();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v11 = OUTLINED_FUNCTION_4();
  mutableCurrentTabs = [(TabController *)v11 mutableCurrentTabs];
  v12 = [mutableCurrentTabs indexOfObject:v5];
  v13 = [mutableCurrentTabs indexOfObject:v9];

  [mutableCurrentTabs removeObjectAtIndex:v12];
  [mutableCurrentTabs insertObject:v5 atIndex:v13];
  [v7[9] updateTabOverviewItems];
  [v7[9] updateTabBarAnimated:1 keepingTabVisible:v5];
  [v7[34] didMoveTabDocument:v5 overTabDocument:v5];

  WeakRetained = objc_loadWeakRetained(v7 + 1);
  [WeakRetained clearCachedTabCompletionData];

  [v7 didUpdateTabDocuments];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:8];

  OUTLINED_FUNCTION_74();
}

- (id)_tabDocumentForWebClip:(uint64_t)clip
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
      currentTabs = [(TabDocument *)v17 currentTabs];
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_16();
      v22 = v14;
      OUTLINED_FUNCTION_43();
      v23 = [currentTabs safari_firstObjectPassingTest:?];
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

- (uint64_t)_tabShouldBeHiddenFromWebExtensions:(void *)extensions
{
  v3 = a2;
  v4 = v3;
  if (extensions && [v3 isPrivate])
  {
    privateTabs = [extensions privateTabs];
    if ([privateTabs count] == 1 && objc_msgSend(v4, "isBlank"))
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

- (id)tabWithIDForWebExtensions:(double)extensions
{
  normalAndPrivateTabs = [(TabController *)self normalAndPrivateTabs];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_16();
  v12 = __43__TabController_tabWithIDForWebExtensions___block_invoke;
  v13 = &__block_descriptor_40_e29_B16__0___CollectionViewTab__8l;
  extensionsCopy = extensions;
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

- (id)_dropWBTab:(void *)tab fromBrowserController:(unint64_t)controller atIndex:(int)index pinned:(void *)pinned anchorTab:
{
  v79[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  tabCopy = tab;
  pinnedCopy = pinned;
  if (self)
  {
    tabController = [tabCopy tabController];
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    uuid = [OUTLINED_FUNCTION_19() uuid];
    [tab initWithUUIDString:uuid];
    v63 = [OUTLINED_FUNCTION_6_1() tabWithUUID:?];

    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
    if (([v11 canSetPinned] & 1) == 0)
    {
      index = [v11 isPinned];
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke;
    aBlock[3] = &__block_descriptor_33_e22_v16__0__WBMutableTab_8l;
    indexCopy = index;
    v64 = _Block_copy(aBlock);
    [v11 tabGroupUUID];
    objc_claimAutoreleasedReturnValue();
    v16 = OUTLINED_FUNCTION_86();
    v17 = [(TabController *)v16 _foreignLocalTabGroupWithUUID:tabController];

    activeTabGroup = [self activeTabGroup];
    v19 = activeTabGroup;
    v60 = activeTabGroup;
    v61 = tabCopy;
    if (index && ([activeTabGroup usesGlobalPinnedTabs] & 1) != 0)
    {
      v19 = 0;
    }

    v20 = v19;
    v21 = [v17 isEqual:v20];
    profileIdentifier = [v17 profileIdentifier];
    profileIdentifier2 = [v20 profileIdentifier];
    v24 = WBSIsEqual();

    if ((v17 != 0) != (v20 != 0))
    {
      if (!v20 && ((index ^ 1) & 1) == 0)
      {
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke_2;
        v70[3] = &unk_2781D9B38;
        v70[4] = self;
        profileIdentifier = v11;
        v71 = profileIdentifier;
        v72 = v63;
        v73 = v64;
        controllerCopy = controller;
        v25 = _Block_copy(v70);
        [self[33] updatePinnedTabsInContainer:self usingBlock:v25];
        v26 = self[6];
        uuid2 = [v17 uuid];
        OUTLINED_FUNCTION_4_1();
        v66 = 3221225472;
        v67 = __75__TabController__dropWBTab_fromBrowserController_atIndex_pinned_anchorTab___block_invoke_4;
        v68 = &unk_2781D97D0;
        v69 = profileIdentifier;
        [v26 updateTabsInTabGroupWithUUID:uuid2 persist:1 usingBlock:v65];

        v28 = v63;
        tabCopy = v61;
        v29 = pinnedCopy;
LABEL_26:
        v42 = objc_alloc(MEMORY[0x277CCAD78]);
        [OUTLINED_FUNCTION_4() uuid];
        objc_claimAutoreleasedReturnValue();
        v43 = [OUTLINED_FUNCTION_6_1() initWithUUIDString:?];

        v44 = [self[13] objectForKeyedSubscript:v43];
        v45 = v44;
        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = v43;
        }

        v47 = [self tabWithUUID:v46];

        goto LABEL_30;
      }

      tabCopy = v61;
      v29 = pinnedCopy;
      v28 = v63;
      if (!v20)
      {
        goto LABEL_26;
      }

      v79[0] = v11;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:1];
      wbTab = [pinnedCopy wbTab];
      [OUTLINED_FUNCTION_17() moveTabs:? toTabGroup:? afterTab:? withoutPersistingTabGroupsWithUUIDStrings:?];

      profileIdentifier = [v11 uuid];
      [v20 isSyncable];
      [OUTLINED_FUNCTION_17() removeTabWithUUID:? persist:?];

      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:8];

LABEL_22:
      v37 = objc_alloc(MEMORY[0x277CCAD78]);
      uuid3 = [OUTLINED_FUNCTION_19() uuid];
      [OUTLINED_FUNCTION_44() initWithUUIDString:?];
      v39 = [OUTLINED_FUNCTION_6_1() objectForKeyedSubscript:?];
      uUIDString = [v39 UUIDString];

      if (uUIDString)
      {
        uuid4 = uUIDString;
      }

      else
      {
        uuid4 = [v11 uuid];
      }

      profileIdentifier = uuid4;
      [self[6] updateTabWithUUID:uuid4 persist:0 notify:1 usingBlock:v64];

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
      if (controller)
      {
        profileIdentifier2 = [self currentTabs];
        v54 = [profileIdentifier2 objectAtIndexedSubscript:controller - 1];
        profileIdentifier = [v54 wbTab];

        v28 = v63;
      }

      else
      {
        profileIdentifier = 0;
      }

      v29 = pinnedCopy;
      v78 = v11;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
      objc_claimAutoreleasedReturnValue();
      v55 = OUTLINED_FUNCTION_31();
      [(TabController *)v55 updateLastSelectedTabUUIDForClosingWBTabs:profileIdentifier2];

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

      mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8]2 reportTabUpdatedWithUpdateType:8];

      tabCopy = v61;
      if (!v20)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    tabCopy = v61;
    tabController2 = [v61 tabController];

    if (tabController2 == self)
    {
      profileIdentifier = [self currentTabs];
      v32 = [profileIdentifier indexOfObject:v63];

      selfCopy2 = self;
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        profileIdentifier = [self currentTabs];
        [profileIdentifier objectAtIndexedSubscript:{((__PAIR128__(controller, v32) - controller) >> 64)}];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_86() moveTab:v63 overTab:v32];

        goto LABEL_18;
      }

      v51 = v63;
      controllerCopy3 = controller;
      v53 = areAnimationsEnabled;
    }

    else
    {
      tabController3 = [v61 tabController];
      profileIdentifier = areAnimationsEnabled;
      [(TabController *)tabController3 _detachTab:v63 animated:areAnimationsEnabled];

      WeakRetained = objc_loadWeakRetained(self + 1);
      [v63 setBrowserController:WeakRetained];

      selfCopy2 = self;
      v51 = v63;
      controllerCopy3 = controller;
      v53 = areAnimationsEnabled;
    }

    [(TabController *)selfCopy2 _insertTab:v51 atIndex:controllerCopy3 inBackground:1 animated:v53 updateUI:1];
LABEL_18:
    v29 = pinnedCopy;
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v47 = 0;
  v29 = pinnedCopy;
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

- (void)replaceTabDocument:(id)document withTabDocument:(id)tabDocument committingSpeculativeLoad:(BOOL)load
{
  loadCopy = load;
  v33 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  tabDocumentCopy = tabDocument;
  isPrivateBrowsingEnabled = [OUTLINED_FUNCTION_4() isPrivateBrowsingEnabled];
  if (loadCopy)
  {
    [documentCopy tabGroupTab];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_33() setTabGroupTab:v5];
  }

  [documentCopy willClose];
  v12 = [(TabController *)self _mutableTabsForPrivateBrowsing:isPrivateBrowsingEnabled];
  v13 = [v12 indexOfObject:documentCopy];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    [(TabController *)self willLoseOwnershipOfTab:documentCopy];
    if (loadCopy)
    {
      uuid = [documentCopy uuid];
      [tabDocument setUuid:uuid];
    }

    [v12 replaceObjectAtIndex:v15 withObject:tabDocument];
    [OUTLINED_FUNCTION_18() didReplaceTabDocument:?];
    webExtensionsController = [documentCopy webExtensionsController];
    OUTLINED_FUNCTION_63();
    [v18 didReplaceTab:? newTab:?];

    v19 = [(TabController *)self _activeTabDocumentForPrivateBrowsing:isPrivateBrowsingEnabled];

    OUTLINED_FUNCTION_63();
    [v20 didReplaceTabDocument:? withTabDocument:? replacedActiveTab:?];
    if (loadCopy)
    {
      ++self->_updateTabsSuppressionCount;
    }

    if (v19 == documentCopy)
    {
      if (isPrivateBrowsingEnabled != [(TabController *)self isPrivateBrowsingEnabled])
      {
        v22 = OUTLINED_FUNCTION_66();
        [(TabController *)v22 _setActiveTabDocument:v23, v24, v25, v26, v27, v28, v29, *v30, *&v30[8], *&v30[16], v31, v32, v33, v34, v35, v36, v37];
        if (!loadCopy)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      [OUTLINED_FUNCTION_40() setActiveTabDocument:?];
    }

    if (!loadCopy)
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
    *&v30[4] = documentCopy;
    *&v30[12] = 2113;
    *&v30[14] = tabDocument;
    *&v30[22] = 2113;
    v31 = v12;
    _os_log_fault_impl(&dword_215819000, v14, OS_LOG_TYPE_FAULT, "Failed to find old tab document %{private}@ in all tab documents %{private}@ to be replaced with new tab document %{private}@, inserting with default ordering instead", v30, 0x20u);
  }

  [OUTLINED_FUNCTION_40() insertNewTabDocumentWithDefaultOrdering:? inBackground:? animated:?];
LABEL_7:
}

- (void)_replaceTabs:(uint64_t)tabs withTabs:(unsigned int)withTabs persist:
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
    browserWindowController = v8;
    v102 = browserWindowController;
    [v10 setHandler:v100];
    if ([browserWindowController count] || objc_msgSend(v11, "count"))
    {
      activeTabDocument = [v5 activeTabDocument];
      mutableCurrentTabs = [(TabController *)v5 mutableCurrentTabs];
      if ([mutableCurrentTabs count] && (v15 = objc_msgSend(browserWindowController, "count"), v15 == objc_msgSend(mutableCurrentTabs, "count")) && !objc_msgSend(v11, "count"))
      {
        ++*(v80 + 152);
        _openBlankTabDocument = [(TabController *)v80 _openBlankTabDocument];
        --*(v80 + 152);
        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      [mutableCurrentTabs removeObjectsInArray:browserWindowController];
      [OUTLINED_FUNCTION_28() safari_insertObjects:? afterObject:?];
      v17 = [v11 differenceFromArray:browserWindowController withOptions:4];
      if ([v17 hasChanges])
      {
        v71 = __PAIR64__(withTabs, v16);
        v75 = v8;
        v76 = mutableCurrentTabs;
        v72 = activeTabDocument;
        v73 = v10;
        v74 = v9;
        [*(v80 + 272) willBeginUpdates];
        [*(v80 + 72) beginFixingTabBarItems];
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v77 = v17;
        insertions = [v17 insertions];
        v19 = [insertions countByEnumeratingWithState:&v96 objects:v105 count:16];
        if (v19)
        {
          browserWindowController = v19;
          v20 = *v97;
          v21 = MEMORY[0x277D85CD0];
          do
          {
            for (i = 0; i != browserWindowController; i = i + 1)
            {
              if (*v97 != v20)
              {
                objc_enumerationMutation(insertions);
              }

              v23 = *(*(&v96 + 1) + 8 * i);
              if ([v23 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                object = [v23 object];
                [object setHasBeenInserted:1];
                [object setNeedsNewTabSnapshot];
                if (([*(v80 + 184) containsObject:object] & 1) == 0)
                {
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __47__TabController__replaceTabs_withTabs_persist___block_invoke_2;
                  block[3] = &unk_2781D4D40;
                  v95 = object;
                  dispatch_async(v21, block);
                }
              }
            }

            browserWindowController = [insertions countByEnumeratingWithState:&v96 objects:v105 count:16];
          }

          while (browserWindowController);
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

              browserWindowController = *(*(&v90 + 1) + 8 * j);
              if ([browserWindowController associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [browserWindowController object];
                objc_claimAutoreleasedReturnValue();
                [OUTLINED_FUNCTION_62() willLoseOwnershipOfTab:?];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || (+[WBReusableTabManager sharedManager](ReusableTabManager, "sharedManager"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 isTabSuspended:browserWindowController], v31, (v32 & 1) == 0))
                {
                  [browserWindowController willClose];
                  [browserWindowController setClosed:1];
                }

                activeTabDocument2 = [v29 activeTabDocument];
                v34 = browserWindowController == activeTabDocument2;

                if ([browserWindowController isClosed])
                {
                  webExtensionsController = [browserWindowController webExtensionsController];
                  tabIDToTabPositionForTabsInTransit = [webExtensionsController tabIDToTabPositionForTabsInTransit];
                  v37 = MEMORY[0x277CCABB0];
                  [browserWindowController idForWebExtensions];
                  v38 = [v37 numberWithDouble:?];
                  [tabIDToTabPositionForTabsInTransit removeObjectForKey:v38];

                  OUTLINED_FUNCTION_27();
                  v87[0] = __47__TabController__replaceTabs_withTabs_persist___block_invoke_3;
                  v87[1] = &unk_2781D4C88;
                  v88 = webExtensionsController;
                  v89 = browserWindowController;
                  v39 = webExtensionsController;
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
        insertions2 = [v77 insertions];
        v41 = [insertions2 countByEnumeratingWithState:&v82 objects:v103 count:16];
        if (v41)
        {
          browserWindowController = v41;
          v42 = 0;
          v43 = *v83;
          activeTabDocument = v72;
          do
          {
            for (k = 0; k != browserWindowController; k = k + 1)
            {
              if (*v83 != v43)
              {
                objc_enumerationMutation(insertions2);
              }

              v42 |= [*(*(&v82 + 1) + 8 * k) associatedIndex] != 0x7FFFFFFFFFFFFFFFLL;
            }

            browserWindowController = [insertions2 countByEnumeratingWithState:&v82 objects:v103 count:16];
          }

          while (browserWindowController);
        }

        else
        {
          v42 = 0;
          activeTabDocument = v72;
        }

        mutableCurrentTabs = v76;
        v45 = [MEMORY[0x277D4A8B0] tabIDToTabPositionDictionaryForTabs:v76];
        if (v42)
        {
          WeakRetained = objc_loadWeakRetained((v80 + 8));
          [WeakRetained browserWindowController];
          objc_claimAutoreleasedReturnValue();
          v47 = OUTLINED_FUNCTION_31();
          mutableCurrentTabs = v76;
          _application = [(TabController *)v47 _application];
          browserWindowController = [_application browserWindowController];

          if (insertions2 == browserWindowController)
          {
            v49 = [MEMORY[0x277D4A8B0] tabIDToTabPositionDictionaryForTabs:v76];
            insertions2 = [v76 firstObject];
            webExtensionsController2 = [insertions2 webExtensionsController];
            [webExtensionsController2 fireOnMovedEventForTabsWithPreviousTabPositions:v45 currentTabsPositions:v49];
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
          activeTabGroup = [OUTLINED_FUNCTION_36() activeTabGroup];
          [activeTabGroup lastSelectedTabUUID];
          objc_claimAutoreleasedReturnValue();
          v54 = [OUTLINED_FUNCTION_62() initWithUUIDString:?];
          insertions2 = [OUTLINED_FUNCTION_18() tabWithUUID:?];

          if (insertions2 && ([OUTLINED_FUNCTION_28() containsObject:?] & 1) != 0)
          {
            v55 = v80;
          }

          else
          {
            v55 = v80;
            _firstUnpinnedTab = [(TabController *)v80 _firstUnpinnedTab];
            v57 = _firstUnpinnedTab;
            if (_firstUnpinnedTab)
            {
              firstObject = _firstUnpinnedTab;
            }

            else
            {
              firstObject = [mutableCurrentTabs firstObject];
            }

            v60 = firstObject;

            insertions2 = v60;
          }

          v61 = [(TabController *)v55 _unhibernateTabIfNeeded:insertions2];
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
        [(TabController *)v70 _switchActiveTabDocumentFromTabDocument:activeTabDocument toTabDocument:insertions2];

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
  if (self)
  {
    currentTabs = [self currentTabs];
    v2 = [currentTabs safari_firstObjectPassingTest:&__block_literal_global_599];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)reloadTabsUsingFilter:(void *)filter
{
  v3 = a2;
  if (filter)
  {
    tabDocuments = [filter tabDocuments];
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
            objc_enumerationMutation(tabDocuments);
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
  if (self)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_DEFAULT, "Reloading non-hibernated tabs due to web content filter change", v3, 2u);
    }

    [(TabController *)self reloadTabsUsingFilter:?];
  }
}

- (void)_restoreEducationTabsIfNecessaryAnimated:(uint64_t)animated
{
  if (!animated)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((animated + 8));
  configuration = [WeakRetained configuration];
  if (![configuration allowsRestoringEducationTabs] || (*(animated + 88) & 1) != 0)
  {
    goto LABEL_11;
  }

  v5 = +[(WBUFeatureManager *)FeatureManager];

  if (v5 == 2)
  {
    configuration = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [configuration safari_dateForKey:@"SafariEducationModeEducationTabsLastSyncDate"];
    objc_claimAutoreleasedReturnValue();
    cloudTabStore = [OUTLINED_FUNCTION_33() cloudTabStore];
    currentDevice = [cloudTabStore currentDevice];

    [2 timeIntervalSinceReferenceDate];
    v9 = v8;
    lastModified = [currentDevice lastModified];
    [lastModified timeIntervalSinceReferenceDate];
    v12 = v11;

    if (v9 < v12)
    {
      tabs = [currentDevice tabs];
      if ([tabs count] || *(animated + 89) == 1)
      {
        *(animated + 88) = 1;
        browserWindowController = [WeakRetained browserWindowController];
        [browserWindowController restoreEducationDeviceCloudTabs:tabs animated:a2];

        [animated updateEducationTabsLastSyncDate];
      }
    }

LABEL_11:
  }
}

- (void)updateLockedBrowsingState
{
  privateTabGroup = [(WBWindowState *)self->_windowState privateTabGroup];
  [privateTabGroup uuid];
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_19();
  [(TabController *)v5 _reconfigureLibraryItemViewForTabGroupWithUUID:v2];

  privateTabDocuments = [(TabController *)self privateTabDocuments];
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
          objc_enumerationMutation(privateTabDocuments);
        }

        [*(v13 + 8 * v11++) updateLockedBrowsingState];
      }

      while (v9 != v11);
      OUTLINED_FUNCTION_20();
      v9 = [privateTabDocuments countByEnumeratingWithState:? objects:? count:?];
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

- (void)insertTabDocumentFromTabStateData:(id)data
{
  dataCopy = data;
  v6 = objc_alloc(OUTLINED_FUNCTION_22());
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [OUTLINED_FUNCTION_17() initWithTabStateData:? hibernated:? browserController:?];

  activeTabDocument = [(TabController *)self activeTabDocument];
  if ([activeTabDocument isBlank])
  {
    [(TabCollectionViewManager *)self->_tabCollectionViewManager beginFixingTabBarItems];
    [(TabController *)self activeTabDocument];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_19() insertTab:v10 afterTab:v3 inBackground:0 animated:1];

    OUTLINED_FUNCTION_45(self, activeTabDocument);
    [(TabCollectionViewManager *)self->_tabCollectionViewManager endFixingTabBarItems];
    [(TabCollectionViewManager *)self->_tabCollectionViewManager updateTabBarAnimated:0];
  }

  else
  {
    [(TabController *)self insertTab:v10 afterTab:0 inBackground:0 animated:0];
  }

  tabThumbnailCollectionView = [(TabController *)&self->super.isa tabThumbnailCollectionView];
  [tabThumbnailCollectionView dismissAnimated:1];
}

- (id)_openTabForDroppedLinkAtIndex:(uint64_t)index pinned:
{
  if (self)
  {
    OUTLINED_FUNCTION_84();
    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
    v8 = v3[4];
    if (v8 && (v9 = [v8 isPrivateBrowsingEnabled], v9 == objc_msgSend(v3, "isPrivateBrowsingEnabled")))
    {
      v10 = v3[4];
      v11 = v3[4];
      v3[4] = 0;

      if ([v10 canSetPinned])
      {
        [v3 setTab:v10 isPinned:index];
      }
    }

    else
    {
      v12 = [TabDocument alloc];
      objc_loadWeakRetained(v3 + 1);
      v10 = [OUTLINED_FUNCTION_13() initWithBrowserController:?];

      if ([v10 canSetPinned])
      {
        [v10 setPinned:index];
      }

      [(TabController *)v3 _insertTab:v10 atIndex:v4 inBackground:1 animated:areAnimationsEnabled updateUI:1];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_foreignLocalTabGroupWithUUID:(void *)d
{
  v10 = a2;
  if (d)
  {
    v11 = [(TabController *)d _tabGroupsFromAllWindows:v3];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v12 = v10;
    OUTLINED_FUNCTION_43();
    d = [v11 safari_firstObjectPassingTest:?];
  }

  return d;
}

- (void)updateLastSelectedTabUUIDForClosingWBTabs:(uint64_t)tabs
{
  if (tabs)
  {
    v3 = a2;
    firstObject = [v3 firstObject];
    tabGroupUUID = [firstObject tabGroupUUID];

    v6 = [*(tabs + 48) tabGroupWithUUID:tabGroupUUID];
    v7 = [[TabGroupTabOrderProvider alloc] initWithTabGroup:v6];
    [*(tabs + 304) setTabOrderProvider:v7];
    v8 = [OUTLINED_FUNCTION_44() orderedTabsForTabs:?];

    v9 = [OUTLINED_FUNCTION_67() tabToSelectBeforeClosingTabs:?];
    identifier = [v9 identifier];

    [*(tabs + 304) setTabOrderProvider:tabs];
    if (identifier)
    {
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_16();
      v11 = identifier;
      OUTLINED_FUNCTION_79();
      [OUTLINED_FUNCTION_48() updateTabGroupWithUUID:? persist:? usingBlock:?];
    }
  }
}

- (void)_hibernateTab:(char *)tab
{
  v4 = a2;
  if (tab)
  {
    v9 = v4;
    [v4 isPrivateBrowsingEnabled];
    OUTLINED_FUNCTION_54();
    if (!v6)
    {
      v5 = 24;
    }

    v7 = *&tab[v5];
    [v7 indexOfObject:v9];
    [OUTLINED_FUNCTION_22() willLoseOwnershipOfTab:v9];
    [v9 willClose];
    if (v2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [[HibernatedTab alloc] initWithTabDocument:v9];
      [OUTLINED_FUNCTION_4() replaceObjectAtIndex:v2 withObject:tab];
      webExtensionsController = [v9 webExtensionsController];
      [webExtensionsController didReplaceTab:v9 newTab:tab];
    }

    v4 = v9;
  }
}

- (void)_lockedPrivateBrowsingStateDidChange:(id)change
{
  object = [change object];
  _application = [(TabController *)self _application];
  if (object == _application)
  {
    isPrivateBrowsingEnabled = [(TabController *)self isPrivateBrowsingEnabled];

    if (isPrivateBrowsingEnabled)
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
  if (self)
  {
    v2 = *(self + 80);
    if (v2)
    {
      [v2 invalidate];
      v3 = *(self + 80);
      *(self + 80) = 0;
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
    array = [MEMORY[0x277CBEB18] array];
    WeakRetained = objc_loadWeakRetained((v13 + 8));
    browserWindowController = [WeakRetained browserWindowController];
    browserControllers = [browserWindowController browserControllers];

    OUTLINED_FUNCTION_5_0();
    v18 = browserControllers;
    OUTLINED_FUNCTION_20();
    v20 = [v19 countByEnumeratingWithState:? objects:? count:?];
    if (v20)
    {
      browserWindowController = v20;
      v21 = *a11;
      do
      {
        for (i = 0; i != browserWindowController; i = i + 1)
        {
          OUTLINED_FUNCTION_35();
          if (v23 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(a10 + 8 * i);
          windowState = [v24 windowState];
          [windowState localTabGroup];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_62() safari_addObjectUnlessNil:?];

          windowState2 = [v24 windowState];
          privateTabGroup = [windowState2 privateTabGroup];
          [array safari_addObjectUnlessNil:privateTabGroup];
        }

        OUTLINED_FUNCTION_20();
        browserWindowController = [v18 countByEnumeratingWithState:? objects:? count:?];
      }

      while (browserWindowController);
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
    isCustomTabGroupsEnabled = [v1 isCustomTabGroupsEnabled];

    if (isCustomTabGroupsEnabled)
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

- (void)_reportTabGroupCreationPrepopulatedWithTabs:(int)tabs fromPotentialAnalyticsSource:(int)source TabGroupsMenu:(int)menu
{
  OUTLINED_FUNCTION_77();
  if (!v18)
  {
    goto LABEL_12;
  }

  v22 = v19;
  if (!v21)
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    v28 = 2;
    goto LABEL_6;
  }

  v23 = v20;
  WeakRetained = objc_loadWeakRetained((v18 + 8));
  rootViewController = [WeakRetained rootViewController];
  usingLoweredBar = [rootViewController usingLoweredBar];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  v31 = mEMORY[0x277D499B8];
  if (!usingLoweredBar)
  {
    [mEMORY[0x277D499B8] didCreateTabGroupFromLocation:v23 prepopulatedWithTabs:v22];

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
  [mEMORY[0x277D499B8] didCreateTabGroupFromLocation:v28 prepopulatedWithTabs:v22];
LABEL_7:
  OUTLINED_FUNCTION_74();
}

- (id)_createFromCurrentTabsActionForTabGroupsMenu:(uint64_t)menu
{
  if (menu && (+[FeatureManager sharedFeatureManager](FeatureManager, "sharedFeatureManager"), v1 = objc_claimAutoreleasedReturnValue(), v2 = [v1 isCustomTabGroupsEnabled], v1, v2))
  {
    _WBSLocalizedString();
    objc_claimAutoreleasedReturnValue();
    newTabGroupTabCount = [OUTLINED_FUNCTION_33() newTabGroupTabCount];
    v3 = [OUTLINED_FUNCTION_25() localizedStringWithFormat:newTabGroupTabCount];

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

- (id)_representativeHostForTabGroup:(uint64_t)group
{
  v3 = a2;
  if (group)
  {
    v4 = OUTLINED_FUNCTION_34();
    v6 = [(TabController *)v4 _urlForActiveTabInTabGroup:v5];
    safari_userVisibleHostOrExtensionDisplayName = [v6 safari_userVisibleHostOrExtensionDisplayName];

    if ([safari_userVisibleHostOrExtensionDisplayName length])
    {
      safari_userVisibleHostWithoutWWWSubdomain = safari_userVisibleHostOrExtensionDisplayName;
    }

    else
    {
      representativeURL = [v3 representativeURL];
      safari_userVisibleHostWithoutWWWSubdomain = [representativeURL safari_userVisibleHostWithoutWWWSubdomain];
    }
  }

  else
  {
    safari_userVisibleHostWithoutWWWSubdomain = 0;
  }

  return safari_userVisibleHostWithoutWWWSubdomain;
}

- (void)_closeTabGroup:(id *)group
{
  if (group)
  {
    v4 = a2;
    v5 = OUTLINED_FUNCTION_12();
    [(TabController *)v5 _selectNewTabGroupIfNecessaryBeforeClosingTabGroup:v6];
    [group[6] removeTabGroup:v2];

    [group updateSelectedTabGroupName];
    WeakRetained = objc_loadWeakRetained(group + 1);
    [WeakRetained reloadSidebarAnimated:1];
  }
}

- (uint64_t)_currentTabsAreBlank
{
  if (!self)
  {
    return 0;
  }

  unpinnedTabs = [self unpinnedTabs];
  v2 = [unpinnedTabs safari_containsObjectPassingTest:&__block_literal_global_216] ^ 1;

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
  _switchToTabGroupMenu = [(TabController *)v7 _switchToTabGroupMenu];
  v14 = _switchToTabGroupMenu;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [OUTLINED_FUNCTION_65() initWithArray:?];

  submenuForSwitchingProfiles = [(TabController *)self submenuForSwitchingProfiles];
  [OUTLINED_FUNCTION_40() safari_addObjectUnlessNil:?];

  return v10;
}

- (id)_switchToTabGroupMenu
{
  if (self)
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

  activeTabGroup = [(TabController *)self activeTabGroup];
  if (([activeTabGroup isNamed] & 1) == 0)
  {
    activeTabGroup2 = [(TabController *)self activeTabGroup];
    if (([activeTabGroup2 isPrivateBrowsing] & 1) != 0 || -[TabController _currentTabsAreBlank](self))
    {
    }

    else
    {
      activeTabDocument = [(TabController *)self activeTabDocument];
      libraryType = [activeTabDocument libraryType];

      if (libraryType)
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

- (void)_switchTabGroupLoopByRelativeIndex:(uint64_t)index
{
  if (index)
  {
    OUTLINED_FUNCTION_84();
    tabGroups = [v3 tabGroups];
    v12 = [tabGroups mutableCopy];

    activeTabGroup = [v1 activeTabGroup];
    if (([activeTabGroup isPrivateBrowsing] & 1) == 0)
    {
      [v12 safari_removeObjectsPassingTest:&__block_literal_global_229_0];
    }

    v6 = [v12 count];
    if (v6)
    {
      v7 = v6;
      v8 = [v12 indexOfObject:activeTabGroup];
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
    activeProfileIdentifier = [OUTLINED_FUNCTION_4() activeProfileIdentifier];
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
    barManager = [WeakRetained barManager];

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

      [barManager setBarItem:2 attributedTitle:v7];
    }

    else
    {
      [barManager setBarItem:2 title:v11];
    }
  }

  OUTLINED_FUNCTION_74();
}

- (void)_requestContactsAccessIfNeeded
{
  if (self && ![MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0])
  {
    mEMORY[0x277D49EE0] = [MEMORY[0x277D49EE0] sharedContactStoreManager];
    [mEMORY[0x277D49EE0] requestAccessForEntityType:0 completionHandler:&__block_literal_global_272];
  }
}

- (void)_markAllTabsInTabGroupAsRead:(uint64_t)read
{
  if (read)
  {
    v2 = *(read + 48);
    uuid = [a2 uuid];
    [v2 updateTabsInTabGroupWithUUID:uuid persist:1 usingBlock:&__block_literal_global_263];
  }
}

- (void)_presentShareSheetForTabGroup:(uint64_t)group sender:
{
  if (group)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_84();
    v3 = v2;
    v4 = v1;
    [OUTLINED_FUNCTION_19() shareRecordForActiveTabGroup];
    objc_claimAutoreleasedReturnValue();
    v5 = objc_alloc(MEMORY[0x277D28D78]);
    tabGroupManager = [OUTLINED_FUNCTION_21() tabGroupManager];
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
      safari_popoverSourceInfo = [objc_alloc(MEMORY[0x277D28E78]) initWithItem:v8];
    }

    else
    {
      objc_opt_class();
      if (OUTLINED_FUNCTION_78())
      {
        safari_popoverSourceInfo = [v8 safari_popoverSourceInfo];
      }

      else
      {
        objc_opt_class();
        if ((OUTLINED_FUNCTION_78() & 1) == 0)
        {
          v6 = 0;
          goto LABEL_9;
        }

        safari_popoverSourceInfo = [objc_alloc(MEMORY[0x277D28F68]) initWithView:v8];
      }
    }

    v6 = safari_popoverSourceInfo;
LABEL_9:
    WeakRetained = objc_loadWeakRetained((v0 + 8));
    [WeakRetained presentModalViewController:v4 fromPopoverSource:v6];
  }
}

- (void)_updateShare:(void *)share forActiveTabGroup:
{
  if (self)
  {
    shareCopy = share;
    v5 = a2;
    title = [shareCopy title];
    [OUTLINED_FUNCTION_39() setObject:? forKeyedSubscript:?];

    image = [OUTLINED_FUNCTION_23() iconForSharingTabGroup:?];

    v7 = UIImagePNGRepresentation(image);
    [OUTLINED_FUNCTION_18() setObject:? forKeyedSubscript:?];
  }
}

- (id)_containerForPinnedTabsInTabGroup:(void *)group
{
  v4 = a2;
  v5 = v4;
  if (group)
  {
    if ([v4 isPrivateBrowsing])
    {
      v6 = 1;
LABEL_6:
      group = [PinnedTabsContainer containerWithPrivateBrowsing:v6];
      goto LABEL_8;
    }

    if ([v5 isInDefaultProfile])
    {
      v6 = 0;
      goto LABEL_6;
    }

    [v5 profileIdentifier];
    objc_claimAutoreleasedReturnValue();
    group = [OUTLINED_FUNCTION_6_1() containerWithActiveProfileIdentifier:?];
  }

LABEL_8:

  return group;
}

- (WBTabGroup)focusedTabGroup
{
  v10 = *MEMORY[0x277D85DE8];
  _application = [(TabController *)self _application];
  focusedTabGroupUUIDString = [_application focusedTabGroupUUIDString];

  if (focusedTabGroupUUIDString)
  {
    v4 = [OUTLINED_FUNCTION_18() tabGroupWithUUID:?];
    if (!v4)
    {
      v5 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543362;
        v9 = focusedTabGroupUUIDString;
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

- (void)_presentOpenAlertForFocusProfile:(int)profile completionHandler:(int)handler
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
      identifier = [OUTLINED_FUNCTION_4() identifier];
      uuid = [*(v50 + 256) uuid];
      OUTLINED_FUNCTION_70(uuid, 5.8382e-34);
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
    title = [OUTLINED_FUNCTION_19() title];
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
    viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];

    OUTLINED_FUNCTION_1_6();
    a12 = 3221225472;
    a13 = __68__TabController__presentOpenAlertForFocusProfile_completionHandler___block_invoke_4;
    a14 = &unk_2781D4C88;
    v73 = viewControllerToPresentFrom;
    a15 = v73;
    v74 = v65;
    a16 = v74;
    v75 = _Block_copy(&aBlock);
    presentedViewController = [v73 presentedViewController];
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

- (void)_presentOpenAlertForFocusedTabGroup:(int)group completionHandler:(int)handler
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
      uuid = [OUTLINED_FUNCTION_4() uuid];
      uuid2 = [*(v50 + 256) uuid];
      OUTLINED_FUNCTION_70(uuid2, 5.8382e-34);
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
    displayTitle = [OUTLINED_FUNCTION_19() displayTitle];
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
    viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];

    OUTLINED_FUNCTION_1_6();
    a12 = 3221225472;
    a13 = __71__TabController__presentOpenAlertForFocusedTabGroup_completionHandler___block_invoke_4;
    a14 = &unk_2781D4C88;
    v73 = viewControllerToPresentFrom;
    a15 = v73;
    v74 = v65;
    a16 = v74;
    v75 = _Block_copy(&aBlock);
    presentedViewController = [v73 presentedViewController];
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

- (id)_tabGroupAlertControllerWithTitle:(uint64_t)title message:(void *)message okActionTitle:(uint64_t)actionTitle role:(char)role showingSuggestionsIfPossible:(void *)possible actionHandler:(void *)handler completionHandler:
{
  possibleCopy = possible;
  handlerCopy = handler;
  if (self)
  {
    v17 = MEMORY[0x277D4A858];
    messageCopy = message;
    v19 = [v17 alertControllerWithTitle:a2 message:title preferredStyle:1];
    [v19 setRole:actionTitle];
    [v19 setDelegate:self];
    OUTLINED_FUNCTION_32();
    v37 = 3221225472;
    v38 = __139__TabController__tabGroupAlertControllerWithTitle_message_okActionTitle_role_showingSuggestionsIfPossible_actionHandler_completionHandler___block_invoke;
    v39 = &unk_2781D9DE8;
    selfCopy = self;
    roleCopy = role;
    [v19 addTextFieldWithConfigurationHandler:v36];
    v20 = MEMORY[0x277D750F8];
    v21 = _WBSLocalizedString();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __139__TabController__tabGroupAlertControllerWithTitle_message_okActionTitle_role_showingSuggestionsIfPossible_actionHandler_completionHandler___block_invoke_2;
    v34[3] = &unk_2781D9E10;
    v22 = handlerCopy;
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
    v32 = possibleCopy;
    v33 = v22;
    v26 = [v24 actionWithTitle:messageCopy style:0 handler:v30];

    [OUTLINED_FUNCTION_67() addAction:?];
    [OUTLINED_FUNCTION_67() setPreferredAction:?];
    textFields = [v25 textFields];
    firstObject = [textFields firstObject];
    [firstObject setDelegate:self];

    self = v25;
  }

  return self;
}

- (void)presentAlertToCreateTabGroupFromTabs:(id)tabs withTitle:(id)title message:(id)message suggestedName:(id)name okActionTitle:(id)actionTitle completionHandler:(id)handler
{
  tabsCopy = tabs;
  titleCopy = title;
  messageCopy = message;
  actionTitleCopy = actionTitle;
  handlerCopy = handler;
  v17 = messageCopy;
  nameCopy = name;
  v19 = +[Application sharedApplication];
  isCloudHistoryEnabled = [v19 isCloudHistoryEnabled];

  v21 = v17;
  if (isCloudHistoryEnabled)
  {
    v22 = _WBSLocalizedString();
    v23 = _WBSLocalizedString();
    v21 = [OUTLINED_FUNCTION_82() stringWithFormat:v17, v23];
  }

  OUTLINED_FUNCTION_32();
  v41 = 3221225472;
  v42 = __118__TabController_presentAlertToCreateTabGroupFromTabs_withTitle_message_suggestedName_okActionTitle_completionHandler___block_invoke;
  v43 = &unk_2781D9E60;
  selfCopy = self;
  v45 = tabsCopy;
  v46 = handlerCopy;
  OUTLINED_FUNCTION_4_1();
  v35 = 3221225472;
  v36 = __118__TabController_presentAlertToCreateTabGroupFromTabs_withTitle_message_suggestedName_okActionTitle_completionHandler___block_invoke_2;
  v37 = &unk_2781D54A8;
  selfCopy2 = self;
  v39 = v24;
  v31 = v24;
  v25 = tabsCopy;
  v26 = [(TabController *)self _tabGroupAlertControllerWithTitle:titleCopy message:v21 okActionTitle:actionTitleCopy role:2 showingSuggestionsIfPossible:1 actionHandler:v40 completionHandler:v34];
  textFields = [v26 textFields];
  firstObject = [textFields firstObject];
  [firstObject setText:nameCopy];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];
  [viewControllerToPresentFrom presentViewController:v26 animated:1 completion:0];
}

- (id)_addTabGroup:(void *)group fromTabs:
{
  v30 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (self)
  {
    *(self + 160) = 1;
    v7 = [*(self + 48) insertTabGroup:a2 afterTabGroup:0];
    *(self + 160) = 0;
    uuid = [v7 uuid];
    if ([groupCopy count])
    {
      v22 = v7;
      v23 = groupCopy;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = groupCopy;
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
            tabGroupUUID = [v13 tabGroupUUID];
            uuid2 = [v13 uuid];
            v16 = [*(self + 256) activeTabUUIDForTabGroupWithUUID:tabGroupUUID];
            v3 = [uuid2 isEqualToString:v16];

            if (v3)
            {
              [*(self + 256) removeActiveTabUUIDForTabGroupWithUUID:tabGroupUUID];
              v3 = [*(self + 256) activeTabUUIDForTabGroupWithUUID:uuid];

              if (!v3)
              {
                v3 = *(self + 256);
                uuid3 = [v13 uuid];
                [v3 setActiveTabUUID:uuid3 forTabGroupWithUUID:uuid];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v10);
      }

      [*(self + 72) setSuppressTabBarAnimation:1];
      v7 = v22;
      [*(self + 48) moveTabs:v8 toTabGroup:v22 afterTab:0 withoutPersistingTabGroupsWithUUIDStrings:0];
      [*(self + 72) setSuppressTabBarAnimation:0];
      groupCopy = v23;
    }

    [self setActiveTabGroupUUID:uuid];
    objc_loadWeakRetained((self + 8));
    OUTLINED_FUNCTION_87();
    [v18 reloadSidebarAnimated:?];

    tabSwitcherViewController = [*(self + 72) tabSwitcherViewController];
    [tabSwitcherViewController setNeedsScrollToTabGroup:v7];

    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didCreateNewTabGroup];

    self = [*(self + 48) tabGroupWithUUID:uuid];
  }

  return self;
}

- (void)_presentRenameAlertForTabGroup:(id *)group
{
  v3 = a2;
  if (group)
  {
    v4 = _WBSLocalizedString();
    v5 = _WBSLocalizedString();
    v6 = _WBSLocalizedString();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_88();
    v15[2] = __48__TabController__presentRenameAlertForTabGroup___block_invoke;
    v15[3] = &unk_2781D9EB0;
    v15[4] = group;
    v7 = v3;
    v16 = v7;
    v8 = [(TabController *)group _tabGroupAlertControllerWithTitle:v4 message:v5 okActionTitle:v6 role:3 showingSuggestionsIfPossible:0 actionHandler:v15 completionHandler:0];
    view = [v8 view];
    [view setAccessibilityIdentifier:@"RenameTabGroupAlertSheet"];

    displayTitle = [v7 displayTitle];
    textFields = [v8 textFields];
    firstObject = [textFields firstObject];
    [firstObject setText:displayTitle];

    WeakRetained = objc_loadWeakRetained(group + 1);
    viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];
    [viewControllerToPresentFrom presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_updateContextKitSuggestionsForTabGroupWithCompletionHandler:(void *)handler
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (handler)
  {
    v4 = handler[25];
    handler[25] = 0;

    currentTabDocuments = [handler currentTabDocuments];
    if ([currentTabDocuments count])
    {
      handlerCopy = handler;
      v23 = v3;
      v6 = dispatch_group_create();
      array = [MEMORY[0x277CBEB18] array];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = currentTabDocuments;
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
            contextController = [v13 contextController];
            v15 = [v13 URL];
            if (v15 && contextController)
            {
              dispatch_group_enter(v6);
              v28[0] = MEMORY[0x277D85DD0];
              v28[1] = 3221225472;
              v28[2] = __78__TabController__updateContextKitSuggestionsForTabGroupWithCompletionHandler___block_invoke;
              v28[3] = &unk_2781D9ED8;
              v29 = v6;
              v30 = array;
              [contextController cachedResponseForURL:v15 completionHandler:v28];
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
      v25 = array;
      v3 = v23;
      v26 = handlerCopy;
      v27 = v23;
      v19 = array;
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
      textInputSuggestionDelegate = [v20 textInputSuggestionDelegate];
      [textInputSuggestionDelegate setSuggestions:0];
    }

    else
    {
      v8 = [*(v1 + 192) safari_prefixWithMaxLength:3];
      v9 = *(v1 + 192);
      *(v1 + 192) = v8;

      v10 = [*(v1 + 192) safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_350_0];
      [OUTLINED_FUNCTION_56(v10 v11];
      textInputSuggestionDelegate2 = [v20 textInputSuggestionDelegate];
      [textInputSuggestionDelegate2 setSuggestions:textInputSuggestionDelegate];

      [*(v1 + 200) logResultsShown:objc_msgSend(textInputSuggestionDelegate serverOverride:"count") forInput:{0, v5}];
    }
  }
}

- (uint64_t)isTabInActiveTabGroup:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    tabGroupUUID = [a2 tabGroupUUID];
    v4 = [tabGroupUUID isEqualToString:*(v2 + 56)];

    return v4;
  }

  return result;
}

- (void)_closeLibraryIfNeeded
{
  if (self && self[21])
  {
    activeTabGroup = [self activeTabGroup];
    isPrivateBrowsing = [activeTabGroup isPrivateBrowsing];
    v4 = 36;
    if (isPrivateBrowsing)
    {
      v4 = 35;
    }

    v5 = self[v4];

    [self setActiveTabDocument:v5];
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
      lastSelectedTabUUID = [v13 lastSelectedTabUUID];

      if (lastSelectedTabUUID)
      {
        lastSelectedTabUUID = [v13 lastSelectedTabUUID];

        v5 = lastSelectedTabUUID;
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
      lastObject = [v9 lastObject];

      v6 = lastObject;
    }

    [v2 setActiveTab:v6];
  }

  OUTLINED_FUNCTION_74();
}

- (id)_syncedTabGroupsForActiveProfileWithOptions:(void *)options
{
  if (options)
  {
    if (a2 == 2)
    {
      activeProfileIdentifier = [options activeProfileIdentifier];
      v4 = [OUTLINED_FUNCTION_18() namedTabGroupsForProfileWithIdentifier:?];
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      activeProfileIdentifier = [options activeProfileIdentifier];
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
    viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];
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

- (BOOL)_switchToTab:(void *)tab orTabUUID:(void *)d inTabGroup:
{
  v8 = a2;
  tabCopy = tab;
  if (!self)
  {
    v14 = 0;
    goto LABEL_12;
  }

  [d uuid];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_8_0() setActiveTabGroupUUID:?];

  WeakRetained = objc_loadWeakRetained(self + 1);
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
        [self setActiveTab:v13];
      }

      if ([self[9] isShowingTabView])
      {
        [WeakRetained toggleTabView];
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = tabCopy;
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

- (BOOL)moveTabWithUUID:(id)d fromForeignLocalGroupWithUUIDIntoActiveGroup:(id)group
{
  dCopy = d;
  v6 = OUTLINED_FUNCTION_66();
  v8 = [(TabController *)v6 _foreignLocalTabGroupWithUUID:v7];
  v9 = v8;
  if (v8)
  {
    isPrivateBrowsing = [v8 isPrivateBrowsing];
    activeTabGroup = [(TabController *)self activeTabGroup];
    isPrivateBrowsing2 = [activeTabGroup isPrivateBrowsing];

    if (isPrivateBrowsing != isPrivateBrowsing2)
    {
      if (isPrivateBrowsing)
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
      uuid = [v9 uuid];
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

- (id)_tabForWBTab:(id *)tab
{
  if (tab)
  {
    tab = [(TabController *)tab _tabForWBTab:a2 didReuseTabDocument:0];
    v2 = vars8;
  }

  return tab;
}

- (id)_urlForActiveTabInTabGroup:(id)group
{
  groupCopy = group;
  if (group)
  {
    [a2 uuid];
    objc_claimAutoreleasedReturnValue();
    v4 = [OUTLINED_FUNCTION_10() activeTabUUIDForTabGroupWithUUID:?];

    if (v4)
    {
      [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
      v5 = [OUTLINED_FUNCTION_6_1() tabWithUUID:?];
      groupCopy = [v5 url];
    }

    else
    {
      groupCopy = 0;
    }
  }

  return groupCopy;
}

- (void)_selectNewTabGroupIfNecessaryBeforeClosingTabGroup:(void *)group
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (group && [OUTLINED_FUNCTION_18() isTabGroupActive:?])
  {
    tabGroups = [group tabGroups];
    v6 = [tabGroups indexOfObject:v4];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = v7;
        privacyPreservingDescription = [OUTLINED_FUNCTION_21() privacyPreservingDescription];
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_71(&dword_215819000, v7, v12, "Attempt to delete nonexistent tabGroup: %{public}@", v13);
      }

      v8 = 0;
    }

    else
    {
      v9 = v6;
      privacyPreservingDescription = (v6 + 1);
      if (v6 + 1 < [tabGroups count])
      {
        v8 = v9 + 1;
      }

      else
      {
        v8 = v9 - 1;
      }
    }

    v10 = [tabGroups objectAtIndexedSubscript:v8];
    if ([v10 isPrivateBrowsing])
    {
      privacyPreservingDescription = [group unnamedTabGroup];

      v10 = privacyPreservingDescription;
    }

    [v10 uuid];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9() setActiveTabGroupUUID:?];
  }
}

- (void)_reuseTabIfNecessary:(uint64_t)necessary
{
  v6 = a2;
  if (necessary)
  {
    objc_opt_class();
    if (OUTLINED_FUNCTION_78())
    {
      v4 = v6;
      oUTLINED_FUNCTION_4() = [OUTLINED_FUNCTION_4() sharedManager];
      [oUTLINED_FUNCTION_4() addReusableTab:v2];
    }
  }
}

- (void)moveTabGroup:(id)group toProfile:(id)profile
{
  OUTLINED_FUNCTION_53();
  v6 = v5;
  v7 = v4;
  v8 = OUTLINED_FUNCTION_34();
  [(TabController *)v8 _selectNewTabGroupIfNecessaryBeforeClosingTabGroup:v9];
  identifier = [v6 identifier];

  [OUTLINED_FUNCTION_18() moveTabGroup:? toProfileWithIdentifier:? afterTabGroup:?];
}

- (void)_tabWasAddedToReusableTabs:(void *)tabs fromWindowWithID:(double)d previousTabPositions:
{
  v12 = a2;
  tabsCopy = tabs;
  if (self)
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
        [v4 didMoveTab:v9 fromWindowWithID:objc_msgSend(OUTLINED_FUNCTION_29() indexInOldWindow:{"index"), d}];
      }
    }
  }
}

- (void)_tabDocumentsWereReusedWhenActiveTabGroupChanged:(uint64_t)changed
{
  v4 = a2;
  if (changed)
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
          if (v14 != *(changed + 32))
          {
            webExtensionsController = [*(v20 + 8 * v12) webExtensionsController];
            [webExtensionsController didMoveTab:v14 fromWindowWithID:0 indexInOldWindow:v11];
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

- (id)_tabForWBTab:(_BYTE *)tab didReuseTabDocument:
{
  v6 = a2;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 1);
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
      if (tab)
      {
        *tab = 1;
      }

      v12 = v11;
    }

    else
    {
      v12 = [self tabWithUUID:v9];
      if (!v12)
      {
        mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
        allowsUnlimitedTabs = [mEMORY[0x277D28C70] allowsUnlimitedTabs];

        if (allowsUnlimitedTabs)
        {
          v15 = [HibernatedTab alloc];
          OUTLINED_FUNCTION_63();
          v17 = [v16 initWithWBTab:? browserController:?];
        }

        else
        {
          if ([v6 isPinned] && !objc_msgSend(v6, "isSyncable"))
          {
            privatePinnedTabs = [self[33] privatePinnedTabs];
            isPrivateBrowsing = [privatePinnedTabs containsObject:v6];
          }

          else
          {
            isPrivateBrowsing = [v6 isPrivateBrowsing];
          }

          v17 = [[TabDocument alloc] initWithTabGroupTab:v6 privateBrowsingEnabled:isPrivateBrowsing hibernated:1 bookmark:0 browserController:WeakRetained];
        }

        v12 = v17;
        if ([(TabDocument *)v17 isBlank])
        {
          [v12 displayNewTabOverridePageIfNecessary];
        }
      }

      [v12 updateTabIcon];
      if (tab)
      {
        *tab = 0;
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
      builder = [MEMORY[0x277D28F40] builder];
      [builder setPrefersOpenInNewTab:1];
      if (v25)
      {
        [builder navigationIntentWithBookmark:?];
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
        mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
        v15 = [mainBookmarkCollection listWithID:{objc_msgSend(v25, "identifier")}];
        bookmarkArray = [v15 bookmarkArray];

        if ([bookmarkArray count])
        {
          v17 = 0;
          do
          {
            v18 = [OUTLINED_FUNCTION_28() objectAtIndexedSubscript:?];
            [(TabController *)v5 _openSingleBookmark:v18 orURL:0 inTabGroup:v8 setActive:v17 == 0];

            ++v17;
          }

          while (v17 < [bookmarkArray count]);
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

- (void)_openSingleBookmark:(void *)bookmark orURL:(void *)l inTabGroup:(int)group setActive:
{
  v18 = a2;
  bookmarkCopy = bookmark;
  lCopy = l;
  if (self)
  {
    if (v18)
    {
      title = [v18 title];
      address = [v18 address];
      v12 = [OUTLINED_FUNCTION_67() URLWithString:?];
    }

    else
    {
      v12 = bookmarkCopy;
      title = &stru_2827BF158;
    }

    v14 = objc_alloc(MEMORY[0x277D7B560]);
    deviceIdentifier = [OUTLINED_FUNCTION_57() deviceIdentifier];
    v16 = [address initWithTitle:title url:v12 deviceIdentifier:deviceIdentifier];

    [(TabController *)self _appendTab:v16 toTabGroup:lCopy];
    if (group)
    {
      [v16 uuid];
      objc_claimAutoreleasedReturnValue();
      uuid = [OUTLINED_FUNCTION_33() uuid];
      [OUTLINED_FUNCTION_25() setActiveTabUUID:? forTabGroupWithUUID:?];
    }
  }
}

- (void)_appendTab:(void *)tab toTabGroup:
{
  v5 = a2;
  if (self)
  {
    uuid = [tab uuid];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v7 = v5;
    OUTLINED_FUNCTION_79();
    [OUTLINED_FUNCTION_40() updateTabsInTabGroupWithUUID:? persist:? usingBlock:?];
  }
}

- (void)tabGroupManagerDidFinishSetup:(id)setup
{
  _application = [(TabController *)self _application];
  if (![_application isRunningPPT] || objc_msgSend(_application, "shouldRestoreStateForPPT"))
  {
    self->_didFinishTabGroupSetup = 1;
    [(TabController *)self readState];
    objc_loadWeakRetained(&self->_browserController);
    OUTLINED_FUNCTION_87();
    [v4 reloadSidebarAnimated:?];
  }
}

- (void)tabGroupManager:(id)manager willPerformBlockUpdatesForTabGroupWithUUID:(id)d
{
  if (self)
  {
    [OUTLINED_FUNCTION_68(self) beginFixingTabBarItems];
    [*(v4 + 72) beginFixingTabOverviewItems];
    v5 = *(v4 + 272);

    [v5 willBeginUpdates];
  }
}

- (void)tabGroupManager:(id)manager didUpdateTabGroupWithUUID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:self->_activeTabGroupUUID])
  {
    [(TabController *)self updateSelectedTabGroupName];
  }

  [(TabController *)self _reconfigureLibraryItemViewForTabGroupWithUUID:dCopy];
  objc_loadWeakRetained(&self->_browserController);
  OUTLINED_FUNCTION_87();
  [v5 reloadSidebarAnimated:?];
}

void __42__TabController_textFieldDidBeginEditing___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addTarget:*(a1 + 40) action:sel_tabGroupNamingTextDidChange_ forControlEvents:0x20000];

  [TabController _updateTabGroupSuggestions:matchingText:];
}

- (void)_registerUndoWithGroup:(void *)group actions:
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
    groupCopy = group;
    OUTLINED_FUNCTION_85();
    v12();

    v13 = *v7;
    *v7 = v5;
  }
}

- (void)registerUndoWithType:(int64_t)type actions:(id)actions
{
  OUTLINED_FUNCTION_53();
  v7 = v6;
  v11 = [objc_alloc(OUTLINED_FUNCTION_29()) initWithType:v4];
  v8 = OUTLINED_FUNCTION_39();
  [(TabController *)v8 _registerUndoWithGroup:v9 actions:v10];
}

- (void)_registerSingleUndoActionForClosedTabs:(id *)tabs
{
  v3 = a2;
  if (tabs)
  {
    WeakRetained = objc_loadWeakRetained(tabs + 1);
    [tabs[41] beginUndoGrouping];
    v5 = objc_alloc_init(MEMORY[0x277D49B60]);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v16 = __56__TabController__registerSingleUndoActionForClosedTabs___block_invoke;
    v17 = &unk_2781D4D40;
    tabsCopy = tabs;
    [v6 setHandler:v15];
    v7 = [(TabController *)tabs _undoActionForClosingTabs:v3];
    v8 = [tabs[41] prepareWithInvocationTarget:tabs];
    [v8 _undoCloseTabs:v7];

    [OUTLINED_FUNCTION_55() setOverridesUndoManagerForClosedTabs:?];
    if (([tabs[41] isUndoing] & 1) == 0 && (objc_msgSend(tabs[41], "isRedoing") & 1) == 0)
    {
      name = [tabs[15] name];
      if (![name length])
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

          name = v14;
        }

        name = v11;
      }

      [tabs[41] setActionName:name];
    }
  }
}

- (id)_undoActionForClosingTabs:(id)tabs
{
  tabsCopy = tabs;
  if (tabs)
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
    tabsCopy = [OUTLINED_FUNCTION_17() initWithTabs:? tabOrderIndexes:? pinnedTabsContainer:?];
  }

  return tabsCopy;
}

- (id)_orderIndexesForTabs:(void *)tabs
{
  if (tabs)
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_43();
    tabs = [v2 safari_dictionaryByMappingObjectsAsKeysToObjectsUsingBlock:?];
    v1 = vars8;
  }

  return tabs;
}

- (id)_reopenTabGroupTabsForUndoAction:(id)action
{
  v4 = a2;
  if (action)
  {
    [MEMORY[0x277CBEB18] array];
    objc_claimAutoreleasedReturnValue();
    tabsByTabGroupUUID = [OUTLINED_FUNCTION_19() tabsByTabGroupUUID];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16();
    v10 = __50__TabController__reopenTabGroupTabsForUndoAction___block_invoke;
    v11 = &unk_2781DA2A8;
    actionCopy = action;
    v13 = v4;
    v6 = v2;
    v14 = v6;
    [tabsByTabGroupUUID enumerateKeysAndObjectsUsingBlock:v9];

    v7 = v14;
    action = v6;
  }

  return action;
}

- (id)_reopenGloballyPinnedTabsForUndoAction:(id *)action
{
  v3 = a2;
  v4 = v3;
  if (action)
  {
    globallyPinnedTabs = [v3 globallyPinnedTabs];
    v6 = [globallyPinnedTabs count];

    if (v6)
    {
      pinnedTabsContainer = [v4 pinnedTabsContainer];
      v8 = [action[33] pinnedTabsInContainer:pinnedTabsContainer];
      array = [MEMORY[0x277CBEB18] array];
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_16();
      v12 = v8;
      v13 = v4;
      v14 = array;
      v10 = v8;
      [OUTLINED_FUNCTION_40() updatePinnedTabsInContainer:? usingBlock:?];
      action = v14;
    }

    else
    {
      action = MEMORY[0x277CBEBF8];
    }
  }

  return action;
}

- (id)globalPinnedTabsForTabGroup:(id)group
{
  [(TabController *)self _containerForPinnedTabsInTabGroup:group];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_4() pinnedTabsInContainer:v3];

  return v4;
}

- (BOOL)selectFirstUnpinnedTab
{
  _firstUnpinnedTab = [(TabController *)self _firstUnpinnedTab];
  if (_firstUnpinnedTab)
  {
    [OUTLINED_FUNCTION_18() setActiveTab:?];
  }

  return _firstUnpinnedTab != 0;
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

- (id)_findPinnedTabMatchingURL:(uint64_t)l
{
  OUTLINED_FUNCTION_91();
  a45 = v46;
  a46 = v49;
  a33 = *MEMORY[0x277D85DE8];
  if (v47)
  {
    v50 = v47;
    absoluteString = [v48 absoluteString];
    OUTLINED_FUNCTION_61();
    v53 = [v52 safari_simplifiedUserVisibleURLStringWithSimplifications:? forDisplayOnly:? simplifiedStringOffset:?];

    pinnedTabs = [v50 pinnedTabs];
    v55 = [pinnedTabs countByEnumeratingWithState:&a9 objects:&a17 count:16];
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
            objc_enumerationMutation(pinnedTabs);
          }

          v60 = *(a10 + 8 * i);
          v61 = [v60 url];
          absoluteString2 = [v61 absoluteString];
          OUTLINED_FUNCTION_61();
          v64 = [v63 safari_simplifiedUserVisibleURLStringWithSimplifications:? forDisplayOnly:? simplifiedStringOffset:?];

          if ([v53 isEqual:v64])
          {
            goto LABEL_14;
          }

          committedURL = [v60 committedURL];
          absoluteString3 = [committedURL absoluteString];
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

- (uint64_t)_shouldReloadAfterAutomaticallySwitchingToTab:(uint64_t)tab
{
  if (!tab)
  {
    return 0;
  }

  webView = [a2 webView];
  v3 = [webView _isPlayingAudio] ^ 1;

  return v3;
}

- (BOOL)_shouldCloseAfterAutomaticallySwitchingFromTab:(_BOOL8)tab
{
  v3 = a2;
  v4 = v3;
  if (tab)
  {
    if (([v3 isPinned] & 1) != 0 || !objc_msgSend(v4, "isBlank"))
    {
      tab = 0;
    }

    else
    {
      unpinnedTabs = [tab unpinnedTabs];
      tab = [unpinnedTabs count] > 1;
    }
  }

  return tab;
}

- (uint64_t)_wbTabIsShowingStartPageOverriddenByExtension:(uint64_t)extension
{
  v5 = a2;
  v6 = v5;
  if (extension)
  {
    [v5 uuid];
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_8_0() tabGroupRelatedToTabWithUUID:?];

    profileIdentifier = [v7 profileIdentifier];
    if (profileIdentifier)
    {
      profileIdentifier2 = [v7 profileIdentifier];
      v9 = [OUTLINED_FUNCTION_44() profileWithIdentifier:?];
    }

    else
    {
      v9 = 0;
    }

    +[Application sharedApplication];
    objc_claimAutoreleasedReturnValue();
    v10 = [profileIdentifier2 webExtensionsControllerForTabWithPrivateBrowsingEnabled:objc_msgSend(OUTLINED_FUNCTION_37() profile:{"isPrivateBrowsing"), v9}];

    extensionOverriddenStartPageURL = [v10 extensionOverriddenStartPageURL];
    if (extensionOverriddenStartPageURL)
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

- (uint64_t)_wbTabIsBlank:(uint64_t)blank
{
  v3 = a2;
  v4 = v3;
  if (blank)
  {
    if ([v3 isBlank])
    {
      blank = 1;
    }

    else
    {
      v6 = OUTLINED_FUNCTION_34();
      blank = [(TabController *)v6 _wbTabIsShowingStartPageOverriddenByExtension:v7];
    }
  }

  return blank;
}

- (uint64_t)canCloseLastTabInTabGroup:(uint64_t)group
{
  v3 = a2;
  v4 = v3;
  if (group)
  {
    if ([v3 isPrivateBrowsing])
    {
      WeakRetained = [*(group + 264) privatePinnedTabs];
      isControlledByAutomation = [WeakRetained count] == 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((group + 8));
      isControlledByAutomation = [WeakRetained isControlledByAutomation];
    }
  }

  else
  {
    isControlledByAutomation = 0;
  }

  return isControlledByAutomation;
}

- (void)closeWBTabs:(id)tabs action:(id)action
{
  tabsCopy = tabs;
  actionCopy = action;
  v8 = objc_alloc_init(MEMORY[0x277D49B60]);
  v53 = MEMORY[0x277D85DD0];
  v54 = 3221225472;
  v55 = &__36__TabController_closeWBTabs_action___block_invoke;
  v56 = &unk_2781D4C88;
  selfCopy = self;
  v9 = tabsCopy;
  v58 = v9;
  [v8 setHandler:&v53];
  self->_isClosingWBTabsWithAction = actionCopy != 0;
  OUTLINED_FUNCTION_27();
  v50 = __36__TabController_closeWBTabs_action___block_invoke_2;
  v51 = &unk_2781D98D8;
  selfCopy2 = self;
  v10 = [v9 safari_filterObjectsUsingBlock:v49];
  v44 = MEMORY[0x277D85DD0];
  v45 = 3221225472;
  v46 = __36__TabController_closeWBTabs_action___block_invoke_3;
  v47 = &unk_2781DA320;
  selfCopy3 = self;
  v11 = [v10 safari_mapAndFilterObjectsUsingBlock:&v44];
  v12 = [v11 count];
  if (v12 == [v9 count])
  {
    [(TabController *)self _addTabsToRecentlyClosed:v11 includeUndo:0];
  }

  [(TabController *)self _registerUndoActionsForClosedTabs:v10, v13, v14, v15, v16, v17, v18, v32, actionCopy, v34, v35, v36, v37, v38, selfCopy5, v40[0], v40[1], v41, v42, selfCopy4, v44, v45, v46, v47, selfCopy3, v49[0], v49[1], v50, v51, selfCopy2, v53, v54, v55, v56, selfCopy, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67];
  [MEMORY[0x277CBEAC0] safari_dictionaryWithObjectsInFastEnumerationCollection:v9 groupedUsingBlock:&__block_literal_global_604];
  objc_claimAutoreleasedReturnValue();
  privateTabGroupIfAvailable = [OUTLINED_FUNCTION_57() privateTabGroupIfAvailable];
  v20 = privateTabGroupIfAvailable;
  if (privateTabGroupIfAvailable)
  {
    uuid = [privateTabGroupIfAvailable uuid];
    v22 = [v12 objectForKeyedSubscript:uuid];
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
  selfCopy4 = self;
  [v12 enumerateKeysAndObjectsUsingBlock:v40];
  if (v24)
  {
    firstObject = [(NSMutableArray *)self->_mutablePrivateTabs firstObject];
    isBlank = [firstObject isBlank];

    if (isBlank)
    {
      firstObject2 = [(NSMutableArray *)self->_mutablePrivateTabs firstObject];
      v30 = [(TabController *)self _unhibernateTabIfNeeded:firstObject2];
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
    selfCopy5 = self;
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

- (void)_movePinnedWBTab:(void *)tab toTabGroup:
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  tabCopy = tab;
  if (self)
  {
    uuid = [v5 uuid];
    v8 = [self tabGroupRelatedToTabWithUUID:uuid];

    OUTLINED_FUNCTION_66();
    if (WBSIsEqual())
    {
LABEL_3:

      goto LABEL_4;
    }

    v9 = objc_alloc(MEMORY[0x277D7B538]);
    uuid2 = [OUTLINED_FUNCTION_21() uuid];
    deviceIdentifier = [self deviceIdentifier];
    v12 = [OUTLINED_FUNCTION_28() initWithUUID:? deviceIdentifier:?];

    [OUTLINED_FUNCTION_48() adoptAttributesFromTab:?];
    [v12 setSyncable:{objc_msgSend(tabCopy, "isSyncable")}];
    v13 = [(TabController *)self _containerForPinnedTabsInTabGroup:tabCopy];
    if ([v8 usesGlobalPinnedTabs] && objc_msgSend(tabCopy, "usesGlobalPinnedTabs"))
    {
      uuid3 = [v5 uuid];
      [OUTLINED_FUNCTION_41() removeTabWithUUID:? persist:?];

      [*(self + 264) appendTab:v12 inContainer:v13];
    }

    else
    {
      if ([v8 usesGlobalPinnedTabs])
      {
        uuid4 = [v5 uuid];
        [OUTLINED_FUNCTION_41() removeTabWithUUID:? persist:?];

        uuid5 = [tabCopy uuid];
        v24 = v12;
        [OUTLINED_FUNCTION_67() updateTabsInTabGroupWithUUID:? persist:? usingBlock:?];

        v17 = v24;
      }

      else
      {
        usesGlobalPinnedTabs = [tabCopy usesGlobalPinnedTabs];
        v19 = *(self + 48);
        if (!usesGlobalPinnedTabs)
        {
          v25[0] = v5;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
          lastPinnedTab = [tabCopy lastPinnedTab];
          [v19 moveTabs:v21 toTabGroup:tabCopy afterTab:lastPinnedTab withoutPersistingTabGroupsWithUUIDStrings:0];

          goto LABEL_14;
        }

        uuid6 = [v8 uuid];
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_88();
        v23 = v5;
        [OUTLINED_FUNCTION_41() updateTabsInTabGroupWithUUID:? persist:? usingBlock:?];

        [*(self + 264) appendTab:v12 inContainer:v13];
        v17 = v23;
      }
    }

LABEL_14:

    goto LABEL_3;
  }

LABEL_4:
}

- (void)_updateTabsWithPinnedTabs:(unsigned int)tabs persist:
{
  if (self)
  {
    v5 = a2;
    pinnedTabs = [OUTLINED_FUNCTION_22() pinnedTabs];
    v6 = OUTLINED_FUNCTION_17();
    [(TabController *)v6 _replaceTabs:v7 withTabs:v8 persist:tabs];
  }
}

- (void)_updateTabsWithPinnedWBTabs:(uint64_t)tabs
{
  if (tabs)
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

- (void)_selectAcceptedSharedTabGroup:(uint64_t)group
{
  if (group)
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

    currentTabs = [group currentTabs];
    [currentTabs firstObject];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_11() setActiveTab:?];

    tabSwitcherViewController = [*(group + 72) tabSwitcherViewController];
    [tabSwitcherViewController setNeedsScrollToTabGroup:v2];

    *(group + 224) = 1;
  }
}

- (id)representativeURLForTabGroupConfirmationAlert:(id)alert
{
  [alert tabGroup];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_12();
  v6 = [(TabController *)v4 _urlForActiveTabInTabGroup:v5];

  return v6;
}

- (void)canCloseOtherTabs
{
  tabThumbnailCollectionView = [(TabController *)self tabThumbnailCollectionView];
  v3 = [tabThumbnailCollectionView presentationState] != 1 && objc_msgSend(tabThumbnailCollectionView, "presentationState") != 2;
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